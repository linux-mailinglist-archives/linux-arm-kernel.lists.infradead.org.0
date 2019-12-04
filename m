Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DDA112E5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 16:28:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DYkB7clsPXFBo1qOPpEGywDoAW02+lEJJ30FDO+j/YI=; b=fV1QY753D3eyfu
	oSGHTwf3mCI+StldCr7AnKodpl8jhqycG3HTw41P6owKpCYnIyQQclMnhvcyqcrXnp0OVsMokTSV/
	S4twTWm8VSOxxi0eRQn8mJQ+cIasaikRCR9ViqmCRHcygPkxy6GrrMj0PKIJVRrKRe4MA12us8wFB
	VQexeTKMjP9BLO7PMvFaK6FZ78WufkHoUd0MSxbtvKQdt+HwTWyg53q+zmi/YdUfSvaC5pVC3hp6m
	V8mZ8yGA9lNXmeN4k1dqFoTirsI4MxeOkihTnthCnkgRKjJKAjQsHJ1JWoiuqWGYMK8pb7zdqpzA9
	LvSlvjHNyCP5aoz+fWLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWZe-0002Di-4e; Wed, 04 Dec 2019 15:28:18 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWZT-0002Cx-JP
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:28:09 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so9137683wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=n0PMYgXBxpTJTwUFndMR8j8g1X+3mghMk/wqd/jqgb4=;
 b=cPNuQoPsK/IaM6bjnT9f9fznnLZV6W3amrqNwE5KT0g0fAzb0IB/r7CZzMMmqG5ooF
 bH1J5zqnHViwUlMvEZUMnhKSdwt5CVERjPLQwXJJ59xzXl4TkPThLLFguRiCuTZqZLgh
 p8o9z51+Io63YGZ1D9Y3mBoy3VbQcM+CbjGLvPNMOhaoW6Hz6VFWLzT4xI3Xe6Ft6jSG
 SWNl6f5cKTA5UVJI9eL/iWIM3Xqav0Ge9KFr1dzDqT+TaR4jNStC23Z+6MfNvMlDZFg5
 vHOUT9n0pWZu63JbNZUgt5Wr8SRaNB8EYuYCYVvGYsz6+agsYFdQQOU/RNfLOp2vMOnS
 7XbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=n0PMYgXBxpTJTwUFndMR8j8g1X+3mghMk/wqd/jqgb4=;
 b=mdsVaZHroNLvU3sO6Lhs2ol+isOc595x27tiBcoU9BPxfTIz9QCFwFOpoSjVRYYX0W
 iiIJZvlMTbQe6tUQbjzkn0ItbuJqxOpFLpeM6N5iUwWxd0QxyvXGcvK4kgRVPb7qNC7p
 t1HpAfuPjH/34quhN/bWYDBIy/W6KoLPqw60tbbZErI+TnwXEwT1Pm7nC08FKaVkDKbu
 0IaVJKYpkzOxkj194vPXFz+n8XLvH/0/8SU31PfqWK8zZypUXDcI2GNUhjA2uYWcP6t3
 yDvIWQmuvf54TRrNGPWpClULmr4lX7+mqFRQdZhO0ITmmrGm+GB0ACk9+Z0UoLSLSzo5
 y+EA==
X-Gm-Message-State: APjAAAUKarcWmhwRTOXLWLzsTwNW1nE14vXq0W4ISZ99An8QET52T3ku
 N1bWnLTb4GUC8MRbYQyiHOW1KA==
X-Google-Smtp-Source: APXvYqzg1TyHqcrLbHlAbi08TX3/2GpmskSRV7ZVEsEDmRuvJ1eZlWpKFOWi870svMg0kU8UUNR6OA==
X-Received: by 2002:adf:eb46:: with SMTP id u6mr4788809wrn.239.1575473284403; 
 Wed, 04 Dec 2019 07:28:04 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id b2sm8607869wrr.76.2019.12.04.07.28.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:28:03 -0800 (PST)
Message-ID: <5de7d083.1c69fb81.82fe2.b0da@mx.google.com>
Date: Wed, 04 Dec 2019 07:28:03 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Kernel: v5.4-9340-g16839329da69
X-Kernelci-Tree: ardb
X-Kernelci-Branch: for-kernelci
X-Kernelci-Lab-Name: lab-collabora
Subject: ardb/for-kernelci bisection: boot on rk3288-rock2-square
To: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 enric.balletbo@collabora.com, khilman@baylibre.com, mgalka@collabora.com,
 Ard Biesheuvel <ardb@kernel.org>, broonie@kernel.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_072807_780626_23B79D71 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-crypto@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* This automated bisection report was sent to you on the basis  *
* that you may be involved with the breaking commit it has      *
* found.  No manual investigation has been done to verify it,   *
* and the root cause of the problem may be somewhere else.      *
*                                                               *
* If you do send a fix, please include this trailer:            *
*   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
*                                                               *
* Hope this helps!                                              *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

ardb/for-kernelci bisection: boot on rk3288-rock2-square

Summary:
  Start:      16839329da69 enable extra tests by default
  Details:    https://kernelci.org/boot/id/5de791acd6451dc5be960f08
  Plain log:  https://storage.kernelci.org//ardb/for-kernelci/v5.4-9340-g16839329da69/arm/multi_v7_defconfig+CONFIG_SMP=n/gcc-8/lab-collabora/boot-rk3288-rock2-square.txt
  HTML log:   https://storage.kernelci.org//ardb/for-kernelci/v5.4-9340-g16839329da69/arm/multi_v7_defconfig+CONFIG_SMP=n/gcc-8/lab-collabora/boot-rk3288-rock2-square.html
  Result:     16839329da69 enable extra tests by default

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       ardb
  URL:        git://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git
  Branch:     for-kernelci
  Target:     rk3288-rock2-square
  CPU arch:   arm
  Lab:        lab-collabora
  Compiler:   gcc-8
  Config:     multi_v7_defconfig+CONFIG_SMP=n
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit 16839329da69263e7360f3819bae01bcf4b220ec
Author: Ard Biesheuvel <ardb@kernel.org>
Date:   Tue Dec 3 12:29:31 2019 +0000

    enable extra tests by default

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 5575d48473bd..36af840aa820 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -140,7 +140,6 @@ if CRYPTO_MANAGER2
 
 config CRYPTO_MANAGER_DISABLE_TESTS
 	bool "Disable run-time self tests"
-	default y
 	help
 	  Disable run-time self tests that normally take place at
 	  algorithm registration.
@@ -148,6 +147,7 @@ config CRYPTO_MANAGER_DISABLE_TESTS
 config CRYPTO_MANAGER_EXTRA_TESTS
 	bool "Enable extra run-time crypto self tests"
 	depends on DEBUG_KERNEL && !CRYPTO_MANAGER_DISABLE_TESTS
+	default y
 	help
 	  Enable extra run-time self tests of registered crypto algorithms,
 	  including randomized fuzz tests.
diff --git a/crypto/testmgr.c b/crypto/testmgr.c
index 88f33c0efb23..5df87bcf6c4d 100644
--- a/crypto/testmgr.c
+++ b/crypto/testmgr.c
@@ -40,7 +40,7 @@ static bool notests;
 module_param(notests, bool, 0644);
 MODULE_PARM_DESC(notests, "disable crypto self-tests");
 
-static bool panic_on_fail;
+static bool panic_on_fail = true;
 module_param(panic_on_fail, bool, 0444);
 
 #ifdef CONFIG_CRYPTO_MANAGER_EXTRA_TESTS
-------------------------------------------------------------------------------


Git bisection log:

-------------------------------------------------------------------------------
git bisect start
# good: [b94ae8ad9fe79da61231999f347f79645b909bda] Merge tag 'seccomp-v5.5-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux
git bisect good b94ae8ad9fe79da61231999f347f79645b909bda
# bad: [16839329da69263e7360f3819bae01bcf4b220ec] enable extra tests by default
git bisect bad 16839329da69263e7360f3819bae01bcf4b220ec
# good: [25cbf24a7eec7c3dee4113b2e98b572e128009b7] crypto: aead - move crypto_aead_maxauthsize() to <crypto/aead.h>
git bisect good 25cbf24a7eec7c3dee4113b2e98b572e128009b7
# good: [7b19c7a82950ed034645fa92adce29cd6163ed3e] crypto: testmgr - check skcipher min_keysize
git bisect good 7b19c7a82950ed034645fa92adce29cd6163ed3e
# good: [062752a354aaf03b46b86cba5fdaa2fd5c932860] crypto: testmgr - create struct aead_extra_tests_ctx
git bisect good 062752a354aaf03b46b86cba5fdaa2fd5c932860
# good: [2cd56a00fff8584e342164c65e6b55da61f79c4a] crypto: testmgr - generate inauthentic AEAD test vectors
git bisect good 2cd56a00fff8584e342164c65e6b55da61f79c4a
# first bad commit: [16839329da69263e7360f3819bae01bcf4b220ec] enable extra tests by default
-------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
