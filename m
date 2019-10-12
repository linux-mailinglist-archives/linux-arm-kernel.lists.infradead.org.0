Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED8ED51D6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 20:50:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQ7m5mf3IVRQABhETW0mSThLZMvzsIyo92tNTX8+i5A=; b=T4nypyGeu7h4hZ
	9QI6S+PurxedUUuXfHu8MI/A0P7kk+tJ5Sh2iSHaR65m8zP6T1Nw8APzWbMNXW3M92pmE3HYpncAQ
	ulDfBXudnv9XcNV8mv0YkItIXvKQqR0DmkJAutJ9MI/Zl1CYigJX8Rx8Pc7CeZrnhQEZMOww7Cc8F
	6ivaHdAG+sbI65+OtgJlyJs49CKYTeugRU9dSHJbIC0wZj6Z7J4Nk6SQzdA1D+JzlzyGonDrTXDG5
	4IDa/Fggkmxw3iC+qcfm0Pbrw5fDm+pM6wlEvbgaHOli+xBpXyZ8JyZYkdeoJn+PwfCOA/H2kjKa9
	2k+Lfc4SbrMW0hu+fy/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJMSw-0003s1-7d; Sat, 12 Oct 2019 18:50:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJMRr-00037d-2Z
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 18:49:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id y21so13043346wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 11:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sB0Ndx4jYFX7LXfHmgIgjA6IVb29KxMOBWd5xPd93L4=;
 b=ai4h+lWG11c7vxSxMfkuS4qmoLueicww398ddr4aH0fMp8TcMvDH3PEBesbwv5Air2
 VunOBxb13WA2HdtTec0UP5rjcPiOfvcanMydHu53ZJzw9v1G1UvaNmEnDWKgVbj2c6vu
 ZJBMxc2TiwXy4SOHECTCNlw+sEb13xXax56xn2Q4nWF3Kgdb8mUQdaHn7dYHGcEQ8YWD
 cHRvD6vQN+4VEk0wnXe3VZ4k+Uc4v5qZfQ1rAKlNU0irhRE32fqviPKBkshpKVjw8zoF
 N6KhXKB2Kj4HF4SRezZ+G++N++u4pDNTtySqov4hgu6PDe2L2wYUbs9cqxuNqmWeybgB
 brew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sB0Ndx4jYFX7LXfHmgIgjA6IVb29KxMOBWd5xPd93L4=;
 b=aEI9Ha/4CHRKz2ktBWTTY9zVhImoCfezdP9OARhQlJlO5qHI2lcuYCfhChho2uhEFO
 O4slNz85ygwOw8sdXZSIiPclI1WcbhqfOiqoPD2mVl32kE8SCua3BOZsP3nNZuLP7uo/
 nX2C2A+9YMVWqUQ/lxwzVNslWO5oC4ixSXXODfoZFu8Fbmh1JjEKhDy3lOKh+ma6sbVK
 BEJIEejhhduVvRNTABjqoG6TxvCghnq13SYSllfqmVeZp565Q57JZEHNfG/M/k4KsmtW
 h+n30KmVhGryiycZBusU+bZIyp8zQw/Mr+VcYvDZNI9wK8NQ3VJw5eJfXQhWQLMYaxIi
 zjGQ==
X-Gm-Message-State: APjAAAX4XChWN6tg+/ysNKttUuV/yJqZH6zOa4ivifaXtQIJpHQsi1+a
 vEcuC0CRr3joe1FSWHTwQz8=
X-Google-Smtp-Source: APXvYqzqFg5v+H5w4CQbJP2InxUgGscus7OJ/bRqm3MXIrgpOwTSlGMbK6bRDDwV1Og++X6hwotY9A==
X-Received: by 2002:a7b:c924:: with SMTP id h4mr8384649wml.46.1570906138007;
 Sat, 12 Oct 2019 11:48:58 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a13sm33670580wrf.73.2019.10.12.11.48.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:48:57 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v4 01/11] crypto: Add allwinner subdirectory
Date: Sat, 12 Oct 2019 20:48:42 +0200
Message-Id: <20191012184852.28329-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
References: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_114903_115765_C3B0473E 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Since a second Allwinner crypto driver will be added, it is better to
create a dedicated subdirectory.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 MAINTAINERS                      | 6 ++++++
 drivers/crypto/Kconfig           | 2 ++
 drivers/crypto/Makefile          | 1 +
 drivers/crypto/allwinner/Kconfig | 6 ++++++
 4 files changed, 15 insertions(+)
 create mode 100644 drivers/crypto/allwinner/Kconfig

diff --git a/MAINTAINERS b/MAINTAINERS
index 3d09efe69508..78bc109aba98 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -690,6 +690,12 @@ L:	linux-crypto@vger.kernel.org
 S:	Maintained
 F:	drivers/crypto/sunxi-ss/
 
+ALLWINNER CRYPTO DRIVERS
+M:	Corentin Labbe <clabbe.montjoie@gmail.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	drivers/crypto/allwinner/
+
 ALLWINNER VPU DRIVER
 M:	Maxime Ripard <mripard@kernel.org>
 M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 3e51bae191ec..610bb52d77d6 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -11,6 +11,8 @@ menuconfig CRYPTO_HW
 
 if CRYPTO_HW
 
+source "drivers/crypto/allwinner/Kconfig"
+
 config CRYPTO_DEV_PADLOCK
 	tristate "Support for VIA PadLock ACE"
 	depends on X86 && !UML
diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
index afc4753b5d28..90d60eff5ecc 100644
--- a/drivers/crypto/Makefile
+++ b/drivers/crypto/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_CRYPTO_DEV_ALLWINNER) += allwinner/
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_AES) += atmel-aes.o
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_SHA) += atmel-sha.o
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_TDES) += atmel-tdes.o
diff --git a/drivers/crypto/allwinner/Kconfig b/drivers/crypto/allwinner/Kconfig
new file mode 100644
index 000000000000..0c8a99f7959d
--- /dev/null
+++ b/drivers/crypto/allwinner/Kconfig
@@ -0,0 +1,6 @@
+config CRYPTO_DEV_ALLWINNER
+	bool "Support for Allwinner cryptographic offloader"
+	depends on ARCH_SUNXI || COMPILE_TEST
+	default y if ARCH_SUNXI
+	help
+	  Say Y here to get to see options for Allwinner hardware crypto devices
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
