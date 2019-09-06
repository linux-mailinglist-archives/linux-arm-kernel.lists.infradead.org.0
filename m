Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 830CEABFA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 20:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXXSKZL8i2Zy6BnVOOmhe1uKtN9KaSB1NSXWF3LweTk=; b=sVN0lSRFDebQso
	Lt9PGgB5foH+0rQ1+88t8FhZzcSXLBPxJ/48o/HvusG37nl5BSMGpJkPQRUVAznC8m8ihXbQEFLL8
	MHnH184SF8E/iDUZC79Vx/OGx7mCAm4dISZ13qfV1jLJWdbirZLc79I8M0omyT1VkRj3eCAX3dxlD
	BQZg+9g4LtkzexARZTMIsri6+80Vm6IBslHdAl/gnCOcXVLqBR+D8HBbh/Vp1Vfxta07oJ5RrzEPe
	iuz6FMeJo38ADItVcdM5hGZf9JbcKF9UhpUmEshFTs9TsjZlksIje0eCpwWXb15vqMYSpD8ED67oB
	9oP3D9gs7cZZMH68FDxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JFf-0005Hp-V1; Fri, 06 Sep 2019 18:46:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JFF-00055J-JQ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 18:46:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id k2so7494780wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 11:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UVVsUJ3cqxC7B0N9mD/oVG/ysz/2hMqLEdaltl6/SKo=;
 b=VliEAdMqXCZEuavCqjEh6OTr7ebBnxrMGNbDl2ershs4s/Nu3eg5EQbTh3IHq1RrYU
 6sjfvjcrb8dH+OW8JTbCr0hZ4zVdMvWooEFD5JQBPoi3B5+8FyIkdGspxnf2/Y34eaJe
 wnT6Qj4WdcFJN1CKgrGjZQBghzuxkv/M5kPlNttWstId/gDVxTWjGtCwY2Pqjyi0fro4
 1BtmmF4req7lbyPrLe/cjkdWNBaqTNUl/rTZZPIOX0vx/ssFR7CtsDgbN42TRjuKCqXH
 Msieu8Zh8UulkL+6NTZhiqPzAyauh7tIEkHGb4EeOOH2pw/3hIxzEjH823o38S/Psu4M
 jd8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UVVsUJ3cqxC7B0N9mD/oVG/ysz/2hMqLEdaltl6/SKo=;
 b=Lmi9b7fWMRy+xc/ZwsqDMu4zcr2K8Cv7NfddKl0XDNB5dx/rSGjP3LHFjFGZXXNZzi
 kKbOntVcBlKteklgSuK4s0AU30MDorTUpdz/72hptcpavpr5WsEBa9sfeshEU9GnjNHm
 tRKm+2ued6tzr9aLdbvNbvT6DAGmfyo8QHmX3C/K38EM7AXUkRp9AA/ZdPnm1Ms4A0vk
 w9Vymw+RMNXN/DQlPuupLP/uR3Aq63pSejHw7lmr0vIRfuMAepop1/S2fbrceAuiThaq
 uZMptQj0brJir7FE4o5bsilDkc/ZPwC9p8JRUKB4ghvTbAAoPtUlYidgfyJxUo6uQD4A
 DPcw==
X-Gm-Message-State: APjAAAUZBgBQbgJkjXqp9nYgttzHsShJK3OkWQIimrcor1L/BBOu95DW
 c/IGeDLossmAyxQLpsO7Qv8=
X-Google-Smtp-Source: APXvYqyjrzRBxxj7tYzXaXaxio1nphXp3XWOYZgyMvwziBQzHIPj2h/NUODsCwcJ/4g0/R25PDbU+Q==
X-Received: by 2002:a1c:9a46:: with SMTP id c67mr8434773wme.115.1567795564198; 
 Fri, 06 Sep 2019 11:46:04 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id j1sm8677577wrg.24.2019.09.06.11.46.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:46:03 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, linux@armlinux.org.uk,
 mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 1/9] crypto: Add allwinner subdirectory
Date: Fri,  6 Sep 2019 20:45:43 +0200
Message-Id: <20190906184551.17858-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_114605_637165_A30085FD 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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
index ee4e873c0f9a..d62ddf8ff262 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -681,6 +681,12 @@ L:	linux-crypto@vger.kernel.org
 S:	Maintained
 F:	drivers/crypto/sunxi-ss/
 
+ALLWINNER CRYPTO ENGINE
+M:	Corentin Labbe <clabbe.montjoie@gmail.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	drivers/crypto/allwinner/
+
 ALLWINNER VPU DRIVER
 M:	Maxime Ripard <mripard@kernel.org>
 M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 83271d944a96..fe90dd74797c 100644
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
