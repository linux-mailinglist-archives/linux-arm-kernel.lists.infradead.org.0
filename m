Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3D2E23D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fN70caW3hF12bonY8qTo22o4w0Fo6+rQqI0m71vRUlQ=; b=T5TgTBv2wHRgYf
	BS3hgqQkFYV64ufbAUPFg0fzRDU2AW6tEgGZsTUWmGtm53CA6jYTpiZr8rwNnt3PoYzwavWV0ZWZj
	8d4bIJ39T2ZRcOnML6xtRBWhRj/Kd1Io6599iSZcrqdPZQsbNHoTb6EaxhSlb9Mr2KUH45rBxeATs
	vMwt/tdFOjThMRhiYPbrl8Zo2mxXyPLdcgaDu0wgKBj6/ipOj0D0PpwlcCCNnO1STr7WoqXOJK2jG
	79f3xZHcotaLjnwdjrlBs+COF2Ej4lQCFbozfIBXBdKRc9T/3CJVbgtnbJdOsDs6M2lzFLCUZbfwI
	paVRdTE7fSMUIfsHUrFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMtO-0001Jd-9N; Wed, 23 Oct 2019 20:06:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMsj-00011t-6y
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:05:22 +0000
Received: by mail-wm1-x344.google.com with SMTP id 3so226774wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VpdEp2zf81VBM+LhkWglZ2eMDIpA3da8iXPWPqvvAdE=;
 b=iQu7jlUIO+uRonAxUB1Yx/zCvI7R9gqlIv6hs5hMa10GoZ9yMocX6c8lzjgiiROvGC
 5IgEt+kBt6COaVuTTZTGS/F4QmaItAyvKlgheV1AGOe1K0uS7j7wPdMIKk1bRxbm2kdP
 jLbpQ0ksy4rlQTR6QtsKKR/s9X09TZL+1JY4+Kz/nuZgA/Qlsbdlrqsu21/WVXGwSmvM
 45M+z+SV3g2kYXAL69simQkHrA+ZpIbn6bZDcFbzPGtDBO4AprqSQKJ3Y2+GpQHhgQni
 B5QPBz93lpzs25cyEmZ6LVuUTUrT65vJll93p1oXZB7Hasuvcqqv3fQHFiQ5nayK+Icn
 h2hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VpdEp2zf81VBM+LhkWglZ2eMDIpA3da8iXPWPqvvAdE=;
 b=U6rjjvGKyqcMMvkbCQtAh2xQ0ky73AWxGYMoW4b+o8VQln+4iR15Ah8vL33XxMJxSt
 5CrSUbjaJoXuGIQjz/+ySkgHBTymiygDEgSfG7+VuEsBtnaPgg3xz7OKIhhpd5N5zihH
 Fdp7uVfyFyOpULE6wSSSd6+9MGgnxRWuAGDjAV7XLO1xJud382vbXLQpj4Ne0bE3FWx2
 NDinQoSkMvqWByo4yYrapXL6HrkT1RIc+f874CqlGc2MIo/gZITJpQQZR2sQkysMLhSU
 uu9NfF9PcuUPQbCuC9vJcEyKmcx/fxuu+/ULoQ8ar8rlzpLQE/aWAw6FeltgJlikpAGh
 Qe6w==
X-Gm-Message-State: APjAAAW/5uQXIRkcAipz2qcAH7uVrXbj6jS845twrauOCRizY2nZVWAW
 vt2I/wuSXA3LS282c6IXBzQ=
X-Google-Smtp-Source: APXvYqxxeKv8ZV8kF3ro0l6Hkz0Ty5HtJhHnoM3Ces69iywJZZQaO+/q3FvG/DVd/Ct8Lc2VMML6wQ==
X-Received: by 2002:a1c:9dd3:: with SMTP id g202mr1532122wme.43.1571861119604; 
 Wed, 23 Oct 2019 13:05:19 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id b5sm177555wmj.18.2019.10.23.13.05.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:05:19 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v6 01/11] crypto: Add allwinner subdirectory
Date: Wed, 23 Oct 2019 22:05:03 +0200
Message-Id: <20191023200513.22630-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
References: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_130521_251953_A25CAFE3 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since a second Allwinner crypto driver will be added, it is better to
create a dedicated subdirectory.

Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 MAINTAINERS                      | 6 ++++++
 drivers/crypto/Kconfig           | 2 ++
 drivers/crypto/Makefile          | 1 +
 drivers/crypto/allwinner/Kconfig | 6 ++++++
 4 files changed, 15 insertions(+)
 create mode 100644 drivers/crypto/allwinner/Kconfig

diff --git a/MAINTAINERS b/MAINTAINERS
index c7b48525822a..9153c02e1f63 100644
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
