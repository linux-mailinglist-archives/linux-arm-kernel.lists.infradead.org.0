Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7074631CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=//W3p+KICSkHjwsdPCOvunRtTSsXwGr9BndPQnZqQQw=; b=le84CWR2o8WqmQI1fgQEN2cxv1
	ylA+d4vpKg9s3MNdmbUKV5+TgkriI7sQVXkLFl8RQ0GBNWnOhyaQtysOdf1eW1lJ+RfSGzWnEEwji
	vbIvczY8WZ1ak99fhRIvRjzH3+5FtD2/kCkYuHZPDu63wlo1yY0aA/ptrLLaLYp5SobKV/5DkNUKm
	mjLm+pfsGF5hqEUNem+US5ACySrCIajh5FPmsbaNOxOF3C6nc+BAIbTtRYCbaWMsTq42SecSIDDca
	x1zFdoIXiFiMiROqQ0lHIroCxkpOt9LrBds0C8+PjoUfitcnvGGey18mKiFekJyoIw/VWbokZRRHY
	+ACRUMJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkR4-0001Iw-B3; Tue, 09 Jul 2019 07:21:10 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkPV-0007T2-1I
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1562656768; x=1565248768;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gHD7ubzNG2RKZFBDvA+A4Pf1yRHu2u+2z8XxFtTJI1M=;
 b=VLEeK/E5E3T/sjGXL8NsyAyoQq+t76dKKlbz8NwZcVzBchBu/aeugtdWl7JSMY8V
 +V8D4g0RCLM3alDMZ5vd6/m6hlO+iSnl7CRFCeseVZGKjA6qK5riLHS8XUH0BwHZ
 jBGwa2BgSgHIdtG1z+LQLi3FDd2eSetvFhQvBadG/Q4=;
X-AuditID: c39127d2-193ff70000001aee-02-5d2440001c90
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 59.B0.06894.000442D5;
 Tue,  9 Jul 2019 09:19:28 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019070909192802-309706 ;
 Tue, 9 Jul 2019 09:19:28 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 03/10] ARM: dts: imx6ul: segin: Reduce eth drive strength
Date: Tue, 9 Jul 2019 09:19:20 +0200
Message-Id: <1562656767-273566-4-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
References: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 09.07.2019 09:19:28,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 09.07.2019 09:19:28, Serialize complete at 09.07.2019 09:19:28
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPLMWRmVeSWpSXmKPExsWyRoCBS5fBQSXWoHOPhMX8I+dYLR5e9bdY
 NXUni8Wmx9dYLbp+rWS2uLxrDpvF0usXmSweXOxisWjde4Td4u/2TSwWL7aIO3B7rJm3htFj
 x90ljB47Z91l99i0qpPNY/OSeo+N73YwefT/NfD4vEkugCOKyyYlNSezLLVI3y6BK2Nl2zy2
 gjvCFec7PjE1MHYKdjFyckgImEhc/72KqYuRi0NIYAejxM8VXxhBEkICFxgldvYWg9hsAkYS
 C6Y1MoHYIgKREu+2/2YHaWAW2MMoMe36dbAGYQFPictbprGC2CwCKhJbP71jBrF5BTwknvW8
 ZofYJidx81wnWJwTqP7oxV/MEMs8JC4vmMYCMlRCoJFJYvGj04wQDUISpxefZZ7AyLeAkWEV
 o1BuZnJ2alFmtl5BRmVJarJeSuomRmCgHp6ofmkHY98cj0OMTByMhxglOJiVRHj3uSvHCvGm
 JFZWpRblxxeV5qQWH2KU5mBREufdwFsSJiSQnliSmp2aWpBaBJNl4uCUamC0WlGhnFw3X0lZ
 54zTRcXvKxomGU932ay7bPX+rnn2v1Nn75lp2r/lPXfaoi07lXWuC/w/eGDOnzNZqd9WpnUc
 Panm4S+u9J+vSlGOi/0Fo6GYqMnhnX67WqO5Ox+ah4c2C7od2ZA17+KzM0VbnNQqDIwfiG0N
 iDgy8UjUG82guO0z55vUPdusxFKckWioxVxUnAgA5DZ+2kICAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001933_243386_648039C0 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: devicetree@vger.kernel.org, martyn.welch@collabora.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reduce the drive strength for the MDC, MDIO and TX pins of FEC1 and FEC2
on the phyBOARD-Segin to improve signal quality and EMC. Also disable
internal pull-ups on the MDC and MDIO pins.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi | 12 ++++++------
 arch/arm/boot/dts/imx6ul-phytec-segin.dtsi       |  8 ++++----
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
index bff13d0eb064..1b745582911c 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
@@ -93,16 +93,16 @@
 &iomuxc {
 	pinctrl_enet1: enet1grp {
 		fsl,pins = <
-			MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
-			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
+			MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x10010
+			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x10010
 			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
 			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
 			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
 			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
-			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
-			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
-			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
-			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
+			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b010
+			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b010
+			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b010
+			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b010
 			MX6UL_PAD_GPIO1_IO02__GPIO1_IO02	0x17059
 		>;
 	};
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
index 78425c3290a1..28ba3a4c4c74 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
@@ -230,10 +230,10 @@
 			MX6UL_PAD_ENET2_RX_ER__ENET2_RX_ER	0x1b0b0
 			MX6UL_PAD_ENET2_RX_DATA0__ENET2_RDATA00	0x1b0b0
 			MX6UL_PAD_ENET2_RX_DATA1__ENET2_RDATA01	0x1b0b0
-			MX6UL_PAD_ENET2_TX_EN__ENET2_TX_EN	0x1b0b0
-			MX6UL_PAD_ENET2_TX_DATA0__ENET2_TDATA00	0x1b0b0
-			MX6UL_PAD_ENET2_TX_DATA1__ENET2_TDATA01	0x1b0b0
-			MX6UL_PAD_ENET2_TX_CLK__ENET2_REF_CLK2	0x4001b031
+			MX6UL_PAD_ENET2_TX_EN__ENET2_TX_EN	0x1b010
+			MX6UL_PAD_ENET2_TX_DATA0__ENET2_TDATA00	0x1b010
+			MX6UL_PAD_ENET2_TX_DATA1__ENET2_TDATA01	0x1b010
+			MX6UL_PAD_ENET2_TX_CLK__ENET2_REF_CLK2	0x4001b010
 		>;
 	};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
