Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1791A7092A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4b0bu/A0QHe1RmvAT0rggkUb7J45UOI+WoADRXYxMO0=; b=QJu3Wb94WkUp3s
	eszVXNmpyKXQGkmPFGKMeJYNn0Xu5/9yZ/ioLKSoorK3rYFa/Nq6gSt+6aVGzYWSRefT+zWQwUM87
	2KF5IfIBZ/a5NL9IwlqjEojEmMvhRRl9c57iFPE+wLlfG6WV0sOy3h4EGNTBEEgQX8IMBssITtQPX
	ZRH4PYNXZfDy7ZiSKuazq1+X+mp8gnAks8c1MfVnIkvs0C9iLnsnH2pTRK2TNG4kB4DSX6+W6k4Px
	P17i108NjsE2R3VZQIcZDR7eIYebSZvMyC7E1MpU3xy5K73u2ZXAINunj1riLxz7rYwwoAdfG0Xig
	gRjx6QSejPprnSGE6R/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdZ1-0008KH-CK; Mon, 22 Jul 2019 19:01:35 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdXQ-0006IM-Hj
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:59:58 +0000
Received: by mail-pf1-x433.google.com with SMTP id u14so17832559pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 11:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RTpdlQyeL6bUmfZxFwZVri3i7nbPBO/dWR0GM1UFauc=;
 b=Uie7vKzMH8rhSaqDU+aMcGpqyxjCAEwwYHOs8Zz8U3B2wZObu/hBnRQpJYvhmIGgDw
 IHk/K6jpfG6wXsMB1qUT1sh/ChhrsYn3LxIcUCmrK6vZRbrVceM3II59gJ3kh+MlrX2x
 1DuHiX4OOmXS/GL5pG5qPgTuSdp7IAnFiZQTc6QW4YS1+Bjmh9K4aQZf6t0rqhuNHfuw
 QTYoUNyzdiW3NvWNC+WPdBiUeQGJU4eWLZBmKDyTCJLNj8TNHpSgKm/m3oO5L/BOzi6X
 OiJd4btOFqQz+abdaTlUTE83JA2iCBDkjFgg1DkkEOhNW/Odd8tjV65+H+egp+j8fJWA
 9F3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RTpdlQyeL6bUmfZxFwZVri3i7nbPBO/dWR0GM1UFauc=;
 b=otFpObWFk4pUfypQwMNgtISDJAfXed/dQvXyZFGac6GNZmHtkbkSHhgj4FDwN29QKP
 2j1dBCA01+k6DO+XWyVj3Qqu9zK78HJX8YngLSqZA+uu0dChHDMk3WP7iBCFV1J7sbYi
 IibbgC1F9A7DyUHjLGSCaaEYO6huPuQIab/yylipVuEOQGWhFitpfbDmeNXR4P0ETOjO
 MBljiF6iE/VYkZEin3uIEeWabZEYUq36u2/cPK6f/K+jmg9HbGwgXIqmwK0LMQIt7NMw
 3Z62EZGkwqLLHVHVTQL1xJhHvcGCByq4Nqqu2XzBgqCtgbBZ6emMJa/DoodL9IDJquV2
 X4eQ==
X-Gm-Message-State: APjAAAXCrIciw9ZfDWVElRDLJHKvi1oisAPZM3r7xfAEozg38PERbWiR
 RSLyp0FkJCqahx19Pta9ReI=
X-Google-Smtp-Source: APXvYqztAcyiJIByeuZ9Vv/e8q5WaFPy7KjT+3hxXXN1zGRIHD3y1yeHD3EkCpYt7gjV3RCQsz+iPQ==
X-Received: by 2002:a63:c750:: with SMTP id v16mr56466432pgg.320.1563821995654; 
 Mon, 22 Jul 2019 11:59:55 -0700 (PDT)
Received: from localhost.localdomain ([103.51.73.174])
 by smtp.gmail.com with ESMTPSA id h1sm30777675pgv.93.2019.07.22.11.59.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 11:59:55 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [RFC/RFT 3/5] phy: exynos5-usbdrd: UTMI tune signal
Date: Tue, 23 Jul 2019 00:29:36 +0530
Message-Id: <20190722185938.9043-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722185938.9043-1-linux.amoon@gmail.com>
References: <20190722185938.9043-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_115956_643363_09A3BED6 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tune USB2.0 (UTMI+) TX signal for high speed data transfer.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 42 +++++++++++++++++++++---
 1 file changed, 37 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 135114d51bc1..54a513ca15e4 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -33,6 +33,8 @@
 #define EXYNOS5_FSEL_24MHZ		0x5
 #define EXYNOS5_FSEL_50MHZ		0x7
 
+#define __set(v, a, b)  (((v) << (b)) & GENMASK(a, b))
+
 /* EXYNOS5: USB 3.0 DRD PHY registers */
 #define EXYNOS5_DRD_LINKSYSTEM			0x04
 
@@ -108,8 +110,17 @@
 #define EXYNOS5_DRD_PHYPARAM0			0x1c
 
 #define PHYPARAM0_REF_USE_PAD			BIT(31)
-#define PHYPARAM0_REF_LOSLEVEL_MASK		(0x1f << 26)
-#define PHYPARAM0_REF_LOSLEVEL			(0x9 << 26)
+#define PHYPARAM0_REF_LOSLEVEL(x)		__set(x, 30, 26)
+#define PHYPARAM0_TXVREFTUNE(x)			__set(x, 25, 22)
+#define PHYPARAM0_TXISETUNE(x)			__set(x, 21, 20)
+#define PHYPARAM0_TXRESTUNE(x)			__set(x, 19, 18)
+#define PHYPARAM0_TXPREEMPPULSETUNE		BIT(17)
+#define PHYPARAM0_TXPREEMPAMPTUNE(x)		__set(x, 16, 15)
+#define PHYPARAM0_TXHSXVTUNE(x)			__set(x, 14, 13)
+#define PHYPARAM0_TXFSLSTUNE(x)			__set(x, 12, 9)
+#define PHYPARAM0_SQRXTUNE(x)			__set(x, 8, 6)
+#define PHYPARAM0_OTGTUNE(x)			__set(x, 5, 3)
+#define PHYPARAM0_COMPDISTUNE(x)		__set(x, 2, 0)
 
 #define EXYNOS5_DRD_PHYPARAM1			0x20
 
@@ -365,9 +376,30 @@ static void exynos5_usbdrd_utmi_init(struct exynos5_usbdrd_phy *phy_drd)
 	u32 reg;
 
 	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM0);
-	/* Set Loss-of-Signal Detector sensitivity */
-	reg &= ~PHYPARAM0_REF_LOSLEVEL_MASK;
-	reg |=	PHYPARAM0_REF_LOSLEVEL;
+		/* Set Loss-of-Signal Detector sensitivity */
+	reg |= (PHYPARAM0_REF_USE_PAD |
+		/* Sets the sensitivity level for the Loss-of-Signal detector */
+		PHYPARAM0_REF_LOSLEVEL(0x9) |
+		/* Adjusts the high-speed DC level voltage */
+		PHYPARAM0_TXVREFTUNE(0x3) |
+		/* Adjust the rise/fal timie of the high-speed waveform */
+		PHYPARAM0_TXISETUNE(0x1) |
+		/* Adjusts the driver source impedance */
+		PHYPARAM0_TXRESTUNE(0x1) |
+		/* HS Transmitter Pre-Emphasis Duration Control */
+		PHYPARAM0_TXPREEMPPULSETUNE |
+		/* HS Transmitter Pre-Emphasis Current Control */
+		PHYPARAM0_TXPREEMPAMPTUNE(0x0) |
+		/* Transmitter High-Speed Crossover Adjustment */
+		PHYPARAM0_TXHSXVTUNE(0x3) |
+		/* FS/LS Source Impedance Adjustment */
+		PHYPARAM0_TXFSLSTUNE(0x3) |
+		/* Squelch Threshold Adjustment */
+		PHYPARAM0_SQRXTUNE(0x3) |
+		/* VBUS Valid Threshold Adjustment */
+		PHYPARAM0_OTGTUNE(0x6) |
+		/* Disconnect Threshold Adjustment */
+		PHYPARAM0_COMPDISTUNE(0x6));
 	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM0);
 
 	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
