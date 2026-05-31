import 'package:flutter/material.dart';
import 'package:equiibrium/core/constants/app_text_style.dart';
import 'package:equiibrium/core/constants/app_color.dart';
import 'package:equiibrium/core/constants/app_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Stack(
        children: [
          // Background Glows (Optimized with RadialGradient)
          Positioned(
            top: -100,
            right: -100,
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColor.primary.withValues(alpha: 0.15),
                    AppColor.primary.withValues(alpha: 0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -100,
            left: -100,
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColor.secondary.withValues(alpha: 0.15),
                    AppColor.secondary.withValues(alpha: 0),
                  ],
                ),
              ),
            ),
          ),

          SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        // Header
                        Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.insights,
                                color: AppColor.primary,
                                size: 30,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Equilibrium',
                                style: AppTextStyle.headlineMd.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.onSurface,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),

                        // Login Card
                        Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(maxWidth: 420),
                          padding: const EdgeInsets.all(32),
                          decoration: BoxDecoration(
                            color: AppColor.surfaceContainer,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: AppColor.outlineVariant),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Header Section
                              Center(
                                child: Column(
                                  children: [
                                    Text(
                                      'Welcome Back',
                                      style: AppTextStyle.displayLgMobile
                                          .copyWith(color: AppColor.onSurface),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Enter your credentials to access your terminal',
                                      style: AppTextStyle.bodySm.copyWith(
                                        color: AppColor.onSurfaceVariant,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 32),

                              // Email Field
                              Text(
                                'EMAIL ADDRESS',
                                style: AppTextStyle.labelCaps.copyWith(
                                  color: AppColor.onSurfaceVariant,
                                  fontSize: 10,
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'name@example.com',
                                  prefixIcon: const Icon(
                                    Icons.mail_outline,
                                    size: 20,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16,
                                  ),
                                ),
                                style: AppTextStyle.bodyLg,
                              ),
                              const SizedBox(height: 24),

                              // Password Field
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'PASSWORD',
                                    style: AppTextStyle.labelCaps.copyWith(
                                      color: AppColor.onSurfaceVariant,
                                      fontSize: 10,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      minimumSize: Size.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                    ),
                                    child: Text(
                                      'Forgot Password?',
                                      style: AppTextStyle.labelCaps.copyWith(
                                        color: AppColor.primary,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                obscureText: !_isPasswordVisible,
                                decoration: InputDecoration(
                                  hintText: '••••••••',
                                  prefixIcon: const Icon(
                                    Icons.lock_outline,
                                    size: 20,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isPasswordVisible
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      size: 20,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isPasswordVisible =
                                            !_isPasswordVisible;
                                      });
                                    },
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16,
                                  ),
                                ),
                                style: AppTextStyle.bodyLg,
                              ),
                              const SizedBox(height: 32),

                              // Sign In Button
                              SizedBox(
                                width: double.infinity,
                                height: 52,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColor.onBackground,
                                    foregroundColor: AppColor.surface,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    elevation: 0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Sign In',
                                        style: AppTextStyle.headlineMd.copyWith(
                                          color: AppColor.surface,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Icon(Icons.arrow_forward, size: 20),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 32),

                              // Divider
                              Row(
                                children: [
                                  const Expanded(
                                    child: Divider(
                                      color: AppColor.outlineVariant,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: Text(
                                      'OR CONTINUE WITH',
                                      style: AppTextStyle.labelCaps.copyWith(
                                        color: AppColor.outline,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Divider(
                                      color: AppColor.outlineVariant,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 32),

                              // Social Login Grid
                              Row(
                                children: [
                                  Expanded(
                                    child: OutlinedButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.g_mobiledata,
                                        size: 30,
                                      ),
                                      label: Text(
                                        'Google',
                                        style: AppTextStyle.bodySm.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 12,
                                        ),
                                        side: const BorderSide(
                                          color: AppColor.outlineVariant,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: OutlinedButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(Icons.apple, size: 24),
                                      label: Text(
                                        'Apple',
                                        style: AppTextStyle.bodySm.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 12,
                                        ),
                                        side: const BorderSide(
                                          color: AppColor.outlineVariant,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 32),

                              // Footer Link
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'New to Equilibrium? ',
                                      style: AppTextStyle.bodySm.copyWith(
                                        color: AppColor.onSurfaceVariant,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          AppRoutes.register,
                                        );
                                      },
                                      child: Text(
                                        'Create an account',
                                        style: AppTextStyle.bodySm.copyWith(
                                          color: AppColor.primary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        const Spacer(),
                        const SizedBox(height: 20),
                        // Security Note
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.verified_user,
                              size: 14,
                              color: AppColor.onSurface.withValues(alpha: 0.4),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'AES-256 BIT ENCRYPTION SECURED',
                              style: AppTextStyle.labelCaps.copyWith(
                                color: AppColor.onSurface.withValues(
                                  alpha: 0.4,
                                ),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
