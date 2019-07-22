Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C64E70929
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vbKsoT+7tbr1VmNgw8QVTUYC9yyEdJmxw6AnTsKzweg=; b=MhytEsz00IOcNn
	EHVvyUr0GexZpncffuFZZ+dHIiQXtrT2gU32Z5ZwbN8cs0X9b+FXXiNDQbxjGiWVKOm83X16rUxs2
	Eaw7eALllBsQTgaIgwXEap/8wfB5QGggTdY72tbhfCq62uoD+vhjmIQK9b6D6p3AHoPgtSTNSWJ46
	lhML/3mdlYv6x3D/Vf21Uf4xYI5cxe7OsIVYzx9FAvZKs5tQNRz6ssyqPr2XDMI+9UBnNGVpy0qmG
	YPVb+f32cQ4N8aHMA0bTIMcu4Q8OIte4dniRK8nYxvs1C3DiXo0fIOXQTehLkiBrFiNrL5car9CKD
	7DLhKkxuwXy/zOwJfbLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdYe-00081z-OI; Mon, 22 Jul 2019 19:01:12 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdXN-0006G9-CW
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:59:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id i189so17817046pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 11:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/gER2LLimplLra53LgK/rnRcfXZIC+CQ7D3TqLh+KSw=;
 b=pJjV5yjMe02NhQ3bEXBOGJ6gbi/w396J1CJqb/pC8BkzUjSnxK0ShHcCjRDGUnMGwD
 zJuAwDy++CHBprRUYbUjeZFMvsBpV++VRfjlvTbihaoWDqxGBWT9ah8WfraLzFa/X+H5
 y75ii/JdnvxE7UY4/FCUrPJqfPyRW/JIzE0IFx/lhjGforNYO9T3JQTCroJD4n6MlqOC
 hZV4nmFTHdaBmM2cHRMm6yr2Gcl/6KmPw92h7BNdI649e8AowRhsrzh/akHYkdQy1kwa
 Hliwuq9C5dOx1EoV2MfFPt65vvxU9tTlYLQXQ+E7bSN8IxfO5bxLtPfDh00Ww+fDcHba
 9NkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/gER2LLimplLra53LgK/rnRcfXZIC+CQ7D3TqLh+KSw=;
 b=K+hk9JNqcgsGek5p683iwWMwXz7ueKrQv+Y/702JQZFFkqnq4Xh1wshrX2sM2/wcnC
 iOJIHHCf0Ok08RHnWD+3TWwKAJnSgOW6h94BjAs6ZiBD4xQTQHPd6ikGQYum5pZgJTeY
 qGd/xw7XY2PcU8qRS10cMLTdGlbqWW3nOsVB9E0cN0jusicu//bPckXBvLtVqshr39xJ
 Ghg24SIT3faiSltOg+HUvcBhBKtOXiPiN9q47tYmoZ2a/qEdSOAnCiP28MBYgQ/fXb7n
 /zmVNUjxbHIA6IYgUP8+W4HfIp7awisvsVFmLXRzN/Wj1C8Y8xr39gHPljouSMhNFANY
 VbSg==
X-Gm-Message-State: APjAAAUYZUXkutvsxb1TLMMPtJRj0cDPlyrfJOPG9jBDhjTvo03dv3Ht
 8m8x2TIp8NgJqmHLyL8DcIM=
X-Google-Smtp-Source: APXvYqz+z95RCeo9mRoNfWnHGolQodU0RqnIuj6kGs1oNVW/IeXDDkxoMFwG1vGy/N2WBXyK9jW2ww==
X-Received: by 2002:a63:7a06:: with SMTP id v6mr73572823pgc.115.1563821992488; 
 Mon, 22 Jul 2019 11:59:52 -0700 (PDT)
Received: from localhost.localdomain ([103.51.73.174])
 by smtp.gmail.com with ESMTPSA id h1sm30777675pgv.93.2019.07.22.11.59.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 11:59:52 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [RFC/RFT 2/5] phy: exynos5-usbdrd: add missing tuning of the phyutmi
 signal
Date: Tue, 23 Jul 2019 00:29:35 +0530
Message-Id: <20190722185938.9043-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722185938.9043-1-linux.amoon@gmail.com>
References: <20190722185938.9043-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_115953_501025_528AEF56 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Add missing tuning of phyutmi controls to enter suspend and
resume state.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 32 ++++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 3c14bf7718c1..135114d51bc1 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -42,7 +42,13 @@
 
 #define EXYNOS5_DRD_PHYUTMI			0x08
 
+#define PHYUTMI_TXBITSTUFFENH			BIT(8)
+#define PHYUTMI_TXBITSTUFFEN			BIT(7)
 #define PHYUTMI_OTGDISABLE			BIT(6)
+#define PHYUTMI_IDPULLUP			BIT(5)
+#define PHYUTMI_DRVVBUS				BIT(4)
+#define PHYUTMI_DPPULLDOWN                      BIT(3)
+#define PHYUTMI_DMPULLDOWN                      BIT(2)
 #define PHYUTMI_FORCESUSPEND			BIT(1)
 #define PHYUTMI_FORCESLEEP			BIT(0)
 
@@ -402,6 +408,23 @@ static int exynos5_usbdrd_phy_init(struct phy *phy)
 		LINKSYSTEM_FLADJ(0x20);
 	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_LINKSYSTEM);
 
+	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYUTMI);
+	/* High-Byte Transmit Bit-Stuffing Enable */
+	reg |= PHYUTMI_TXBITSTUFFENH;
+	/* Low-Byte Transmit Bit-Stuffing Enable */
+	reg |= PHYUTMI_TXBITSTUFFEN;
+	/* release force_sleep & force_suspend */
+	reg &= ~(PHYUTMI_FORCESLEEP | PHYUTMI_FORCESUSPEND);
+	/* DP/DM Pull Down Disable */
+	reg &= ~(PHYUTMI_DMPULLDOWN | PHYUTMI_DPPULLDOWN);
+	/* drvvbus controller signal controls the VBUS valid comparator */
+	reg &= ~PHYUTMI_OTGDISABLE;
+	/* controller signal controls the VBUS Valid comparator */
+	reg |= PHYUTMI_DRVVBUS;
+	/* Enable ID Sampling */
+	reg |= PHYUTMI_IDPULLUP;
+	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYUTMI);
+
 	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM0);
 	/* Select PHY CLK source */
 	reg &= ~PHYPARAM0_REF_USE_PAD;
@@ -452,9 +475,14 @@ static int exynos5_usbdrd_phy_exit(struct phy *phy)
 	if (ret)
 		return ret;
 
-	reg =	PHYUTMI_OTGDISABLE |
+	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYUTMI);
+	reg |=	PHYUTMI_OTGDISABLE |
 		PHYUTMI_FORCESUSPEND |
-		PHYUTMI_FORCESLEEP;
+		PHYUTMI_FORCESLEEP |
+		PHYUTMI_DMPULLDOWN |
+		PHYUTMI_DPPULLDOWN;
+	reg &= ~(PHYUTMI_DRVVBUS | PHYUTMI_IDPULLUP |
+		PHYUTMI_TXBITSTUFFENH | PHYUTMI_TXBITSTUFFEN);
 	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYUTMI);
 
 	/* Resetting the PHYCLKRST enable bits to reduce leakage current */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
