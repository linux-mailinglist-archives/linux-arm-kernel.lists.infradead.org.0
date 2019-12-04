Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A573112E7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 16:31:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NyF3rm64a00+5hl/GE2Pm6MzjZqyrKLSBM50YpdBq4A=; b=Nt1NvPA55X199m
	syKAMF3uWURVZrM56FNducv+7Hc7zA5sbeTSsoeigET2KI1E87Xrvf0DsO9YwCz0xs0nOV6qn1cPX
	l2MQiwk/f8leNDuRJM6QwoGnqV3ASxCxo+kc6ZeP1mJ24rKM6GFN90KAaVMUFAz3le+nv/o//5g4P
	NvCIS6qwcntTfijJs3cME1YROmtMloAYoVsOZT1IxANRcS8YzP+qRS3FOBsnG2xMAzCM73mRfRlmc
	qkOsJ+e6pgJty2Rp2aFvGKy7Lin+MPgo9t4+ARcp+cJxtYgg6KHxQY57vjX7Uk1hnWYQZ3+R8ksDt
	phpcdwta8H0dkqyqNKgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWcy-0003xI-Rc; Wed, 04 Dec 2019 15:31:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWcr-0003wU-9k
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:31:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id f129so173990wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:31:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=ijoLCBnJ3pPexA/GR1FIE4d3lIT82dN/vPnRiftiEjE=;
 b=E3DsFqNYYoNk3wJ8krQcMebT9+rMBTieirdWX7fi/YE5D0FA1P8YnZ4k8ZZNAJObnb
 fwLjJ+H6rCS2tv9FYx6CjYeL8ThmCGHLTgz1oQ2HYmorHjwTAm/xeNKu04RpHTjQgQSG
 AGMUyh6S3BMEQ2BLImO5bJKMED3wiqljPM4VykXcD+mEnl571jShECGkL0tKNNGvDoji
 nfb8k2Z2q5tf+39Edjv03J1+IuyiwI+cL3VIBnhH/7Rb68MAKPpO7r9CJBczn9CI13DP
 V6MxlO0bM2m5y3GEm0o639CBJoTN6oHCbL6mrpT1tHVhxqbw3lA4dmRFoeoT9dGPwlCV
 RyAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=ijoLCBnJ3pPexA/GR1FIE4d3lIT82dN/vPnRiftiEjE=;
 b=eOfrq3IPT/yCv5atAC6brUoT7mOm+SgcXuBxe0bFX6mU7hUrM911iPfoVwnJgO0x4q
 d15yDkpXBQQ5Zp5YvC1mQaMI688CxT7YT3sBayeM+yxo9jvJ3oY7MJ+WOJwukq1wDFRm
 9RWgbVsqMtYjkfbGkiRjV2X0juk1YoLbEpphX43O1WXrQ82FA2YPY5viPyr5LekrQ3VK
 kzG3UVohcBEzA3uC9C7aHqE2g3/3O6NiWStfICDbViReTOrNuEctTaIsrFtqvb5ug1MT
 OvHo+Z2LfROmXIme6Pl7eS9ygQ+dpQCnkquKG8eOA7jyuOv+NGInk95S1GU5H5uz/PLK
 iZ0A==
X-Gm-Message-State: APjAAAU6Yx/1wh7qCN8Jo6BQVKNsWTtbH2RBcNRX+LR6O7LtKM6YJJJe
 BYjSH9yBx5irpvTwwJojwo5riQ==
X-Google-Smtp-Source: APXvYqxbr+RDuWTYR72YaOoOSelg81h69keK+nXeReh9jM343ocfrIvOsVlWJnN/+vq+YcyK7XaPRw==
X-Received: by 2002:a1c:a906:: with SMTP id s6mr133439wme.125.1575473494478;
 Wed, 04 Dec 2019 07:31:34 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id u10sm6971432wmd.1.2019.12.04.07.31.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:31:33 -0800 (PST)
Message-ID: <5de7d155.1c69fb81.c06f8.3583@mx.google.com>
Date: Wed, 04 Dec 2019 07:31:33 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Kernel: v5.4-9340-g16839329da69
X-Kernelci-Tree: ardb
X-Kernelci-Branch: for-kernelci
X-Kernelci-Lab-Name: lab-collabora
Subject: ardb/for-kernelci bisection: boot on rk3288-rock2-square
To: Ard Biesheuvel <ardb@kernel.org>, mgalka@collabora.com,
 guillaume.tucker@collabora.com, broonie@kernel.org,
 enric.balletbo@collabora.com, tomeu.vizoso@collabora.com, khilman@baylibre.com
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_073137_342965_479FEB8E 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
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
  Details:    https://kernelci.org/boot/id/5de79104990bc03e5a960f0b
  Plain log:  https://storage.kernelci.org//ardb/for-kernelci/v5.4-9340-g16839329da69/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-rock2-square.txt
  HTML log:   https://storage.kernelci.org//ardb/for-kernelci/v5.4-9340-g16839329da69/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-rock2-square.html
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
  Config:     multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y
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
