Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 426861A3D87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 02:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gp9ukt4hZonV5WMofN2X20c+pVyoSVfRLRUvlePcA4E=; b=O96YfD9ayPA/Zd
	CvV484NKKLNTIc7GvLieyRxQBncYrW2000rRJAcztQ4QU93IShS0qdCv0Jb/qTZvgWUplCVkE6hAh
	iTyVydKqqUC5JYG7/q8qLrjML1W7sgwL6eJy5tNeUdBpFI5FT/3L2U2ybeAbZavMRKU0RNQn0Sy4C
	JYELohoAukVK7Kazopq2vWqhJiR8LvNzcNyNkzbfYGi4p6YemGJJFlnUblGICsqxa3CiCUyTAX6Kx
	gdm7CPrJ021vQ50CAfAdzFyXnjgOuQ811+GIBzJ/7m+5IJbjPfIL+uBTh07LKq/FxW0xWa/wn/8FA
	iL8pJaSyT/9+Kf3BxgOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMhqp-0003An-78; Fri, 10 Apr 2020 00:48:55 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMhpq-0002RV-QZ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 00:47:56 +0000
Received: by mail-ed1-x544.google.com with SMTP id e5so557206edq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 17:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BZSQSUlLJFkzUgf1NTHH5zpRsFkN3TikFBBnNLe5wGw=;
 b=NP1VPhz21BJ2RjboM81BtD5W0D5gGBZBCm+q7FPqOrKDHZqBmqJzCnXkCX5XinTmXu
 dksMqSUAbWADIl4wmV5wKtfqQd+azgiOqIGDi1Jag52UOKgEfdUvtD+wmiKvU0vlwFBI
 Rz6VmdU88kNS7oAi4ou7Bvh5A7+yeoCUvt04vm0ToapQxV9Cq0HT46abbl0O+Z/L1Pdc
 y7HXy5JIOmhNLF9MWCRqCKWEFZMfB7Ctz9ujAJU5mH1ht7XNJ3I4ctrzrdQzkyd1QFLf
 QUeBQoZ6kdUqkJvP4scZfPfsijmyv/DD/7bDXsWksrx2cIOvuKQskrEJl+RYqAi0Q1FS
 oxlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BZSQSUlLJFkzUgf1NTHH5zpRsFkN3TikFBBnNLe5wGw=;
 b=Dp1/n1N+thmAzjnRl6YJxk0gFCy5CM0xFxrnd0KOtGojb0kfUmG9EuJ7r6j9bkOueB
 lmS6rNsX7CFecd2kiBANQ23MrLj5c2bZoUK/brCvFn9E2wSv2ddZzxSTYkPIAhVBCBIl
 lIk++DU1G+IknzM5C00x91R/YzaaYPNIJaa4bz//tH/hxA2VUKW3AkXGFwm1IWrKMdO6
 6yMM5WAnV36Pi/keX2qDloCu3cGVGmYZ4P1OdtgaXpehpB9wbmlfZ0ugbJt8ewr2bXbd
 0b7KlUEUQBnCoIeajrCoclhJcbXz1eXoRrirZ4dqdJ5bu5YZSNyotI4+z2GOZLgxmbXx
 jczQ==
X-Gm-Message-State: AGi0Pubq3gYK14F2DME5g7KoyiqdN++kqqr98llItqgv0YZN04uqSn8P
 cPrXXgsQ5h0/KRwW7VHgxCM=
X-Google-Smtp-Source: APiQypKMU1IIRbXXOX7ZyvwbWFJXHKcSefqZALP0aOt7baR6EvEdcg5UT0zqWOvkir+IkPg5Rc6TiA==
X-Received: by 2002:a05:6402:3076:: with SMTP id
 bs22mr2747689edb.24.1586479673383; 
 Thu, 09 Apr 2020 17:47:53 -0700 (PDT)
Received: from Ansuel-XPS.localdomain
 (host117-205-dynamic.180-80-r.retail.telecomitalia.it. [80.180.205.117])
 by smtp.googlemail.com with ESMTPSA id z16sm30523edm.52.2020.04.09.17.47.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 17:47:52 -0700 (PDT)
From: Ansuel Smith <ansuelsmth@gmail.com>
To: devicetree@vger.kernel.org
Subject: [PATCH 3/4] arm: dts: imx6: update pci binding to generic name
Date: Fri, 10 Apr 2020 02:47:37 +0200
Message-Id: <20200410004738.19668-4-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200410004738.19668-1-ansuelsmth@gmail.com>
References: <20200410004738.19668-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_174754_869786_C65583C0 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>, Shawn Guo <shawnguo@kernel.org>,
 Ansuel Smith <ansuelsmth@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename specific pcie property to generic name.

Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
---
 arch/arm/boot/dts/imx6q-ba16.dtsi       | 4 ++--
 arch/arm/boot/dts/imx6qdl-var-dart.dtsi | 4 ++--
 arch/arm/boot/dts/imx7d.dtsi            | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/imx6q-ba16.dtsi b/arch/arm/boot/dts/imx6q-ba16.dtsi
index 37c63402157b..55bf77fdd65b 100644
--- a/arch/arm/boot/dts/imx6q-ba16.dtsi
+++ b/arch/arm/boot/dts/imx6q-ba16.dtsi
@@ -328,8 +328,8 @@ &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
 	reset-gpio = <&gpio7 12 GPIO_ACTIVE_LOW>;
-	fsl,tx-swing-full = <103>;
-	fsl,tx-swing-low = <103>;
+	tx-swing-full = <103>;
+	tx-swing-low = <103>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/imx6qdl-var-dart.dtsi b/arch/arm/boot/dts/imx6qdl-var-dart.dtsi
index c41cac502bac..45c7edea94da 100644
--- a/arch/arm/boot/dts/imx6qdl-var-dart.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-var-dart.dtsi
@@ -392,8 +392,8 @@ MX6QDL_PAD_SD3_DAT3__SD3_DATA3	0x17059
 };
 
 &pcie {
-	fsl,tx-swing-full = <103>;
-	fsl,tx-swing-low = <103>;
+	tx-swing-full = <103>;
+	tx-swing-low = <103>;
 	reset-gpio = <&gpio4 11 GPIO_ACTIVE_LOW>;
 	status = "disabled";
 };
diff --git a/arch/arm/boot/dts/imx7d.dtsi b/arch/arm/boot/dts/imx7d.dtsi
index 4c22828df55f..0ab55f66ea79 100644
--- a/arch/arm/boot/dts/imx7d.dtsi
+++ b/arch/arm/boot/dts/imx7d.dtsi
@@ -190,7 +190,7 @@ pcie: pcie@33800000 {
 		assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_250M_CLK>,
 					 <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
 
-		fsl,max-link-speed = <2>;
+		max-link-speed = <2>;
 		power-domains = <&pgc_pcie_phy>;
 		resets = <&src IMX7_RESET_PCIEPHY>,
 			 <&src IMX7_RESET_PCIE_CTRL_APPS_EN>,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
