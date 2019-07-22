Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE5870935
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uFWVsCK4UInUOV8eJzShcO+CdPiIEeXn4MPNBTqkKw=; b=llw2wE5erQcf7j
	Cu/BTSiWP1wxPY5F11M48cmHQau0s8HcJ8ElN8FR/y0uKsoMM3UG/7ysUBGSFlGBVJqHSBP+DVpBd
	xHspTv5pixvApWiG+bCA3VBmzvyctskTVJD/7FfYiVBRy524x7i88PSR3l84/yVqFujcpa5Q6Yc+A
	QcSwey8eyqTjHwq2WWkmsXK7vJayr6xWl33XsnpimgsqWWtQu4dYK7mVvaVmuABhoyuo+ELmeW9UY
	FJcYZjz1iWHktz1ONw6cM5N+zebHP9QULz6L/I2b7WJRmdBmKizTm1rV+aVtZNYCako/r8o/PTx7j
	DFpIcyjdRL7WZR/5fg7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdZL-00009T-TU; Mon, 22 Jul 2019 19:01:56 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdXT-0006L0-FZ
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:00:00 +0000
Received: by mail-pl1-x62f.google.com with SMTP id az7so19551870plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 11:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zz5vAjKnwObHWdgiR69vnrMUFdCw0YpjqKvOUe5J6MQ=;
 b=d6MMjgcgq7A5Ok7sC1mvq8Y7Wf/C/AbAtJI0wx9bGY4LJJDTTd0vQVHuitO2plMEyq
 s651WhX3usFjBAenymrYvEPR3lbhKenTx0jmJU6miKE7/atUIiKfrBoNG2ef4g9tLLVE
 LheTn+WTo/fecBYSmVujWJvETdofqQuuS9X6FH2EzkWgzBV5HCJ7zylD6lSW8IO5VgUr
 nha9fg8eP8GlVrc3Fw6sjREvttunn9yPpGeTarp9+jV48N58mLUDgtUXRvotX5TGYvOS
 vSXYtNoIDim5DoM834ci3JXYBNtu0sOWTuYlom0yBD34s/1T3PNVEIu+63qEV0ddOA+j
 Khew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zz5vAjKnwObHWdgiR69vnrMUFdCw0YpjqKvOUe5J6MQ=;
 b=HHUUUFtbY/Lu9IgPJ6Ttc9vQqV9jgs8Cvt4EXkiSBugOiB0smDDXHs5KqGRTCoC2yS
 Tdz8U/c9SGHneBNQE65w5D4mg0XQTtDm9hIlQoykQ4M54zsyTz5gkhhO4xX3dywa/S5D
 nXKuWwsJN8W5qvudq5H33xJ0hsbEmOcLgpJEhb6kCMjegE/ld5lIuuRZf8nER86wp3hD
 2wLzx3rjHRancV7sbzIhEebvo62ncCQPShl0xnmH7M9RH8wMi+acvLm7/q4fuVV56kam
 lEivMqAzWFwHNmsflIGbavlUJ5LspgT1kEvGUGHcaOWYCh0/780G1C6oOLeygw3paqDp
 hvNg==
X-Gm-Message-State: APjAAAWlVchR0Nn5w3jWr3kJVT7t1/0ojPlqLk684pJBdeWxV3aMyFpf
 0Jc+LgaJrk3cyIEPN9Pe/ik=
X-Google-Smtp-Source: APXvYqzWw+Rq9/ABGsPQPWP/BkeiCKWfr3/1wKZdxsrMxEEqcLGp5JqqrkgZS13L+ODsPeeJYwBo9w==
X-Received: by 2002:a17:902:2865:: with SMTP id
 e92mr37369159plb.264.1563821998707; 
 Mon, 22 Jul 2019 11:59:58 -0700 (PDT)
Received: from localhost.localdomain ([103.51.73.174])
 by smtp.gmail.com with ESMTPSA id h1sm30777675pgv.93.2019.07.22.11.59.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 11:59:58 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [RFC/RFT 4/5] phy: exynos5-usbdrd: PIPE3 tune signal
Date: Tue, 23 Jul 2019 00:29:37 +0530
Message-Id: <20190722185938.9043-5-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722185938.9043-1-linux.amoon@gmail.com>
References: <20190722185938.9043-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_115959_565908_0779F930 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62f listed in]
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

Tune USB3.0 (PIPE3) PHY TX signal for high and supper
speed data transfer.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 54a513ca15e4..4f16c4f82ae5 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -124,8 +124,10 @@
 
 #define EXYNOS5_DRD_PHYPARAM1			0x20
 
-#define PHYPARAM1_PCS_TXDEEMPH_MASK		(0x1f << 0)
-#define PHYPARAM1_PCS_TXDEEMPH			(0x1c)
+#define PHYPARAM1_TX0_TERM_OFFSET(x)		__set(x, 30, 26)
+#define PHYPARAM1_TX_SWING_FULL(x)		__set(x, 18, 12)
+#define PHYPRAAM1_PCS_TX_DEEMPH_6DB(x)		__set(x, 11, 6)
+#define PHYPRAAM1_PCS_TX_DEEMPH_3P5DB(x)	__set(x, 5, 0)
 
 #define EXYNOS5_DRD_PHYTERM			0x24
 
@@ -360,10 +362,16 @@ static void exynos5_usbdrd_pipe3_init(struct exynos5_usbdrd_phy *phy_drd)
 {
 	u32 reg;
 
-	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);
 	/* Set Tx De-Emphasis level */
-	reg &= ~PHYPARAM1_PCS_TXDEEMPH_MASK;
-	reg |=	PHYPARAM1_PCS_TXDEEMPH;
+	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);
+		/* Transmitter Termination Offset */
+	reg |=  PHYPARAM1_TX0_TERM_OFFSET(0x5) |
+		/* Tx Amplitude (Full Swing mode) */
+		PHYPARAM1_TX_SWING_FULL(0x3F) |
+		/* Tx De-Emphasis at 6 dB */
+		PHYPRAAM1_PCS_TX_DEEMPH_6DB(0x20) |
+		/* Tx De-Emphasis at 3.5 dB */
+		PHYPRAAM1_PCS_TX_DEEMPH_3P5DB(0x15);
 	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);
 
 	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYTEST);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
