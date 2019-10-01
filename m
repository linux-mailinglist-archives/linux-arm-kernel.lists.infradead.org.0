Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC72C4050
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnUIchIzjYRSNXaHDcz0SFSDhctTpRuRi0cJyEg81zE=; b=kp1dU1UJa+xZ/F
	k5TcE9XIzxcqKZtn1tK8GOdN3rzF2eWaS3hlg8LDLavnpj5tKMFyqOUmOoW63OCbqhPmdjyb+DsIT
	YARCcW+WGoaPhyBRgIHGOfs8AoYUzJIKq8HAgdBRLtuohWFZjGf7dt8qzVQBdqXML7RbebW8FWele
	LhSN9oinjYGJ9EgV0YWcWln7TdLXY6hZEe0LNbciL6H/sxkJm1CUuuyaMLuyDYXpO8df9I11jHvcI
	mMrsIVg1fRmkpZdFDrKXscytn92mgRktkJj4THKWnDUmCzotTOpv40XRF8Yx3Xab+mJ6gUTsRG5du
	EcBL2ZywgIWnbp09o8dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFN98-0000SW-5O; Tue, 01 Oct 2019 18:45:14 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFN67-0006II-FE
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:42:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id i1so16771514wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T+T+k2b9YAthahZx5QMC+UunjhqJySyJ2D3nhD6A1rc=;
 b=JpFwmr6fOz89wySbSdT2T5EmidqUJ0taIHwtyClIkLbSxdV6CmpooqJPglAv1QQ/hT
 90Y97dX5NHhCxvvrvjkD5yrkhMrBsWAUm41bzQwddKETMAGQZPCKZN6HAsmAta879+Kw
 qxVs47GyIIXFixKAB1IZ3dyEPW/Bfog65mp84YuCCVOY89Rnje0pCIBNtgI5CB00PzoN
 DfNzBUo7tQKYan9RiQiEqfW+O55I6tnsLzZKF85TpbKdEhUKByvP5qFUYtBwwYe7AmqL
 +9fb59mZ7HJ9wz0hTpZpP5IbzTupolBieaoin5AxKaJQ6fot+ATClGlysXBtXJSs+mvq
 +cTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T+T+k2b9YAthahZx5QMC+UunjhqJySyJ2D3nhD6A1rc=;
 b=SCTk7x6WqS1DVsTEifMnAl/UH6LGfzdXoIAO1c44bufe1Fri7cMU4vufo2I9zomuVE
 +UdjPV0xAwQdEzQlqTz36Bj+VODm9dQCbOxLusgLyKKlKNLis15KdKk6w09Wi0x/XBGu
 wNv3sCGqpcwDhW/CNAVmWH/QLqy7pWdKmLEKnbOxM72G1J04HQtW6FRH7+pDeqZ9WkKO
 PL4hMOvHD58zvJbv+Y/iHaHfEbpNFsvXIi8M+1pZzNapr6NB5oWLL/vS8DHh3jwAxhqL
 p52qSqcPkZtpkrtgun8d/qiipZvXiIR8P++WqzisFTcJOLOXXeCAHvIu7qL4CBRj+Is1
 QI8w==
X-Gm-Message-State: APjAAAUwKM2ifyQXTE0CqXtW9pHE2X+Gcjixw1hhzY6fl+tk1qVFar3x
 vVohNc9zqFfGIJq07WgdzDs=
X-Google-Smtp-Source: APXvYqy6KpMJ5lU7upxSxsQV2giIgiFqc8KhQWhPhaATRVC2MMMapE/Jn0W7mMbZB53lGr/0mz/egQ==
X-Received: by 2002:a5d:49c3:: with SMTP id t3mr18315997wrs.151.1569955325849; 
 Tue, 01 Oct 2019 11:42:05 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n8sm6788987wma.7.2019.10.01.11.42.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 11:42:04 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v2 11/11] crypto: sun4i-ss: Move to Allwinner directory
Date: Tue,  1 Oct 2019 20:41:41 +0200
Message-Id: <20191001184141.27956-12-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_114207_612727_4C70A36B 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since we have a dedicated Allwinner directory for crypto driver, move
the sun4i-ss driver in it.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 MAINTAINERS                                   |  6 -----
 drivers/crypto/Kconfig                        | 26 ------------------
 drivers/crypto/Makefile                       |  1 -
 drivers/crypto/allwinner/Kconfig              | 27 +++++++++++++++++++
 drivers/crypto/allwinner/Makefile             |  1 +
 .../{sunxi-ss => allwinner/sun4i-ss}/Makefile |  0
 .../sun4i-ss}/sun4i-ss-cipher.c               |  0
 .../sun4i-ss}/sun4i-ss-core.c                 |  0
 .../sun4i-ss}/sun4i-ss-hash.c                 |  0
 .../sun4i-ss}/sun4i-ss-prng.c                 |  0
 .../sun4i-ss}/sun4i-ss.h                      |  0
 11 files changed, 28 insertions(+), 33 deletions(-)
 rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/Makefile (100%)
 rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-cipher.c (100%)
 rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-core.c (100%)
 rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-hash.c (100%)
 rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-prng.c (100%)
 rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss.h (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index db4fd4124ce8..042320996197 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -682,12 +682,6 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt
 F:	drivers/cpufreq/sun50i-cpufreq-nvmem.c
 
-ALLWINNER SECURITY SYSTEM
-M:	Corentin Labbe <clabbe.montjoie@gmail.com>
-L:	linux-crypto@vger.kernel.org
-S:	Maintained
-F:	drivers/crypto/sunxi-ss/
-
 ALLWINNER CRYPTO DRIVERS
 M:	Corentin Labbe <clabbe.montjoie@gmail.com>
 L:	linux-crypto@vger.kernel.org
diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index a1d0c69fb837..ff213b3ea2ca 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -659,32 +659,6 @@ config CRYPTO_DEV_IMGTEC_HASH
 	  hardware hash accelerator. Supporting MD5/SHA1/SHA224/SHA256
 	  hashing algorithms.
 
-config CRYPTO_DEV_SUN4I_SS
-	tristate "Support for Allwinner Security System cryptographic accelerator"
-	depends on ARCH_SUNXI && !64BIT
-	depends on PM
-	select CRYPTO_MD5
-	select CRYPTO_SHA1
-	select CRYPTO_AES
-	select CRYPTO_LIB_DES
-	select CRYPTO_BLKCIPHER
-	help
-	  Some Allwinner SoC have a crypto accelerator named
-	  Security System. Select this if you want to use it.
-	  The Security System handle AES/DES/3DES ciphers in CBC mode
-	  and SHA1 and MD5 hash algorithms.
-
-	  To compile this driver as a module, choose M here: the module
-	  will be called sun4i-ss.
-
-config CRYPTO_DEV_SUN4I_SS_PRNG
-	bool "Support for Allwinner Security System PRNG"
-	depends on CRYPTO_DEV_SUN4I_SS
-	select CRYPTO_RNG
-	help
-	  Select this option if you want to provide kernel-side support for
-	  the Pseudo-Random Number Generator found in the Security System.
-
 config CRYPTO_DEV_ROCKCHIP
 	tristate "Rockchip's Cryptographic Engine driver"
 	depends on OF && ARCH_ROCKCHIP
diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
index 90d60eff5ecc..79e2da4a51e4 100644
--- a/drivers/crypto/Makefile
+++ b/drivers/crypto/Makefile
@@ -40,7 +40,6 @@ obj-$(CONFIG_CRYPTO_DEV_ROCKCHIP) += rockchip/
 obj-$(CONFIG_CRYPTO_DEV_S5P) += s5p-sss.o
 obj-$(CONFIG_CRYPTO_DEV_SAHARA) += sahara.o
 obj-$(CONFIG_ARCH_STM32) += stm32/
-obj-$(CONFIG_CRYPTO_DEV_SUN4I_SS) += sunxi-ss/
 obj-$(CONFIG_CRYPTO_DEV_TALITOS) += talitos.o
 obj-$(CONFIG_CRYPTO_DEV_UX500) += ux500/
 obj-$(CONFIG_CRYPTO_DEV_VIRTIO) += virtio/
diff --git a/drivers/crypto/allwinner/Kconfig b/drivers/crypto/allwinner/Kconfig
index 2d901d5d995a..1cd42f13a58a 100644
--- a/drivers/crypto/allwinner/Kconfig
+++ b/drivers/crypto/allwinner/Kconfig
@@ -5,6 +5,33 @@ config CRYPTO_DEV_ALLWINNER
 	help
 	  Say Y here to get to see options for Allwinner hardware crypto devices
 
+config CRYPTO_DEV_SUN4I_SS
+	tristate "Support for Allwinner Security System cryptographic accelerator"
+	depends on ARCH_SUNXI && !64BIT
+	depends on PM
+	depends on CRYPTO_DEV_ALLWINNER
+	select CRYPTO_MD5
+	select CRYPTO_SHA1
+	select CRYPTO_AES
+	select CRYPTO_LIB_DES
+	select CRYPTO_BLKCIPHER
+	help
+	  Some Allwinner SoC have a crypto accelerator named
+	  Security System. Select this if you want to use it.
+	  The Security System handle AES/DES/3DES ciphers in CBC mode
+	  and SHA1 and MD5 hash algorithms.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called sun4i-ss.
+
+config CRYPTO_DEV_SUN4I_SS_PRNG
+	bool "Support for Allwinner Security System PRNG"
+	depends on CRYPTO_DEV_SUN4I_SS
+	select CRYPTO_RNG
+	help
+	  Select this option if you want to provide kernel-side support for
+	  the Pseudo-Random Number Generator found in the Security System.
+
 config CRYPTO_DEV_SUN8I_CE
 	tristate "Support for Allwinner Crypto Engine cryptographic offloader"
 	select CRYPTO_BLKCIPHER
diff --git a/drivers/crypto/allwinner/Makefile b/drivers/crypto/allwinner/Makefile
index 11f02db9ee06..fdb720c5bcc7 100644
--- a/drivers/crypto/allwinner/Makefile
+++ b/drivers/crypto/allwinner/Makefile
@@ -1 +1,2 @@
+obj-$(CONFIG_CRYPTO_DEV_SUN4I_SS) += sun4i-ss/
 obj-$(CONFIG_CRYPTO_DEV_SUN8I_CE) += sun8i-ce/
diff --git a/drivers/crypto/sunxi-ss/Makefile b/drivers/crypto/allwinner/sun4i-ss/Makefile
similarity index 100%
rename from drivers/crypto/sunxi-ss/Makefile
rename to drivers/crypto/allwinner/sun4i-ss/Makefile
diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c
similarity index 100%
rename from drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
rename to drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c
diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-core.c b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c
similarity index 100%
rename from drivers/crypto/sunxi-ss/sun4i-ss-core.c
rename to drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c
diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-hash.c b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
similarity index 100%
rename from drivers/crypto/sunxi-ss/sun4i-ss-hash.c
rename to drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-prng.c b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-prng.c
similarity index 100%
rename from drivers/crypto/sunxi-ss/sun4i-ss-prng.c
rename to drivers/crypto/allwinner/sun4i-ss/sun4i-ss-prng.c
diff --git a/drivers/crypto/sunxi-ss/sun4i-ss.h b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss.h
similarity index 100%
rename from drivers/crypto/sunxi-ss/sun4i-ss.h
rename to drivers/crypto/allwinner/sun4i-ss/sun4i-ss.h
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
