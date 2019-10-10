Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D70BBD302C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:24:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+62lo+TFxNrRZh++w0wUFqM8o6YyTQK09W2II5GSw4=; b=VX4tLUVNoXkGG4
	Qt6KNDflyNMdxrJv+ipQ/x6MI/DTS+XFIdugVlaIkMKgnsp2ePYCvSJNDnd/6YugChxrTvkGsf/uz
	uwbs7Wg/rJS3+PM9bv9nmSVWfFj0CaIBacir3AP/ozcDM+ueReMy7a2w3GngiyPPNVT0t8hme6DBF
	fQmRmM+w88HEfmQsKknkaPJmqv7g5ZLnyFZLQxRhEXRQdcP7Y0JH0o5cBmcRjnFxIq1kdgmDLdFwo
	sUGPSUKxH6aX9KyTidQHL/vlXyKtG+Ui57lBQM9SmUvo5NWk9hJ9mo1x6XNIrkLigFeCHjZdffe2o
	yMTQ6kjLkbyrr8EiSZmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iId6t-0002kB-P6; Thu, 10 Oct 2019 18:24:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iId6P-0002XP-RZ
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:23:55 +0000
Received: by mail-wr1-x442.google.com with SMTP id z9so9054385wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 11:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GGIlOspffn6DYc5D1hGtXBrmMg1/47bL/Jvx1qS0/LI=;
 b=cX0wvVg7iddLcMKnmeNRuL8Dv2aRALY6WoGD5F+qjh8+HTZFWLpl0fDQGK3dq1Dkss
 KfXeEpEDxaQ6ejOCnGfn2f99Tlk6an1DUO0uGHlVlFPGhuDWPjVhWx1AUl/REZ9pk6PZ
 m5QpmnRPWHjfJ1wpb0O/TExYvO+Si8DdqSrANARi/Bi/oKRE9ziFxfr7CZ6MNLyePxi3
 YXAuxDhgcp6hr2xxBe6K6ZCwcFmHBjO4PhfBUoLnlksYS8bZSnmcUVypeFxfKXYKacf0
 TSRUI+O/UOsEWR8K5pvD8L+1PlYF2IqnLrW5B8MHXp1W93f0N56ozfQkqjPfLs4jccW/
 ld0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GGIlOspffn6DYc5D1hGtXBrmMg1/47bL/Jvx1qS0/LI=;
 b=saw6n5zQKi6fsvxgR7PUsa/o1rKNuXPC33dNg2Tfx76Ju6NSFq8nHUiylm9F+QGlWZ
 5XfsGoBdQTQlhZaX2dZP6Odfqr8bBJdwOOP0kRdHaI1y1uIa0OhXBK8XU4e+UlRjRoSt
 iVI967wZsoKLro1wzaMcrszS4LBHTzxF6pT2fBpGMjDznYqb8EYY4t56bxgYqaidbi6z
 MMtUuQygrPEjLC7DuCkc5oEXfWCASsC++uqeER+Zt38OdSXdS0HcbDE1rCaxeXnglhfv
 HW8JdRrDO5NhYZ0YJaAK/1nP8/PWQebnG6pm4yu/9brdmtGXxEpiz/+1/L0v0NY+U//p
 GJ6A==
X-Gm-Message-State: APjAAAVnywgO81UwDc5iJ8s23qpJPaFyet3KnF7LdSKCRnXHZ9IcyS//
 wVZIKUM6IxOZgpzKLC+aO/s=
X-Google-Smtp-Source: APXvYqztZtmuRZwSa+qPLALhGbYA1g6wtJ74NxHoTswi30NlV4r2umdq7d9e9GDubqv4VNRW0OoUkQ==
X-Received: by 2002:a5d:65c1:: with SMTP id e1mr8292879wrw.364.1570731832362; 
 Thu, 10 Oct 2019 11:23:52 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 y186sm11367664wmb.41.2019.10.10.11.23.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 11:23:51 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v3 01/11] crypto: Add allwinner subdirectory
Date: Thu, 10 Oct 2019 20:23:18 +0200
Message-Id: <20191010182328.15826-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_112353_888762_98391B32 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index c717b08934f6..ded0cb868b66 100644
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
