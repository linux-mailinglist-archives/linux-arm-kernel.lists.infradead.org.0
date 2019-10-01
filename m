Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC00C400F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:42:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wq3ursdGPHR+2+VX7qR4acMLa8eMjAOIDHJ/NwJxBHo=; b=IB0Bjoq1Z6d1W5
	bkFIfF1HO9GF5JHY2jMu8QhZhKNjo9aWFtkOY3naiajBXqZDJqTWsNq2YAYrxIBcTXKh4IFr9Z6vq
	O+rMcjiKN8+Sgr1qyjkORoJu9VH57wUU9tZH7v7UjySjaAvl8XY12k8Thsufejf9PYnsUz/Gvqj8S
	FgT42haGb9a+NlE5w57KsmBfKNyzk8fhlXflig8pSgBlcZzz/OsFgum6wd/w9OQfM7SIz5iGc0+j3
	JAXfjVGRR5y/koIYmd27bdQfWrOu90ntLh3dTpEwQHYH/dmbLjwXQXLanulCpApDUzKEvRlUS/vYR
	BZfC3EIAC91fVVhgE4nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFN6I-0006FY-Ti; Tue, 01 Oct 2019 18:42:18 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFN5q-00060Q-3K
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:41:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id f22so4353958wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r8xpuMhi21iVWONxJYeHpdefSztrX4ydrJ/PhCWl0DE=;
 b=owxqV1/0ykA4HmzaUn70Wgdw5WXMv+V9vcknKjJi+JeUc7lT7Z740VTNnxZBq9XyKc
 MKq2ZCQhZFErC8TDKCJMMcmLOz+vr3zdcWL4TnzCPtFybpg0wbDlBSGY3UdN5H2zRjnD
 6ewHXATaeIs87g7SV6QCMrel+7KeJE6r2IKQsLh4KcmkrN3ppQzYD2svnasZ4wlibJgf
 j8YCPsmf7rOSpiG3O7/7qlLBe/YHp4JBcwGREqt1BiAdViFyqOSgheWSvgi+B4pbtLt8
 Rb4NHjW4H2Ac//4TNpZAdfbXPSGgbWNqB3nXIwhknQ81r58c7KAd6H63dHylsYe+YDHg
 K2+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r8xpuMhi21iVWONxJYeHpdefSztrX4ydrJ/PhCWl0DE=;
 b=XQzg+GqFUBOY5XDLiZlLFWfrxDZRQsyl/c5+eeUM0AbjCOweku9+523TkT6f4R83qL
 xVr+SutBJWAXrMKxT9/ivymfbjH2v941ik4riKQQy5wXvnVaiUW/L2QZgtMgpGMKo/mu
 1OPvnMcPFYVh95nvcrBGNxk0/J2ghHlRcIAss71IDvMI8wuo1BpGtUVnVDmqSXb6t4LF
 EsW4hfp23UT7dCqte/AQDhiemmAhQHOzToKWV6sDnjT4X/wNMdpZDitNA9sRstjy2rAg
 wdiYmCFC+gdXAo/SGhITjonD5A9c63Tv8JNzkSBeIYy0k1o7ZWb+JnmRzpyYLNVt2gxV
 R6cQ==
X-Gm-Message-State: APjAAAWHbxOX471rvI6E8pwgwRLJ0usjExvNeI6oLC/Dmr+UMaIqIAU7
 BS99KgbI3YT6CVfIdtp1TEt7bgjK
X-Google-Smtp-Source: APXvYqywxyc9UUlGYOPnrBYHs3aZoIRbuKn1osBpPjhuIiV/Diqwnaal9RDjo7CgPu1+SBj2cvqUUw==
X-Received: by 2002:a05:600c:2049:: with SMTP id
 p9mr4889336wmg.30.1569955308715; 
 Tue, 01 Oct 2019 11:41:48 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n8sm6788987wma.7.2019.10.01.11.41.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 11:41:47 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v2 01/11] crypto: Add allwinner subdirectory
Date: Tue,  1 Oct 2019 20:41:31 +0200
Message-Id: <20191001184141.27956-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_114150_146426_9A45526F 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
index 3b3766cccd90..db4fd4124ce8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -688,6 +688,12 @@ L:	linux-crypto@vger.kernel.org
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
index 571de87935e5..a1d0c69fb837 100644
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
