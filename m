Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3E61532F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:31:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JON6fmyc6mI1LXt8irbZ+iE94r0hbt0ypP8lJtmuTWA=; b=G+bFbTI/a6IXYlmAiW4xbh8QFt
	uulCjRkup4w2zyBfWl1MfjchGhfk2J2jns2e3I8AzaYDLatOT9v8IqBr7bswG4dBVQpTYyyFsXbGM
	xgZXH7vlF8k/uzolaXdmx3z3Nk6s5ELYST689+BIS0QXK8RWq6NHYm53nP2zJt2KTjRpuLQetCrpL
	7Qb5cRKtnLub74gCupLa+uFuRIm2nnvMZt/s0bNbOWWH85LnWVSjF7Sn6t21ZTCxOW/GlLszB9bi9
	J5M1TQkSToHlwLCfDb+S1LLWbS76+mXs4g21J1+vaT83U4VtoENIcd4h3jMBPHIymYZWFqYYFvF+M
	ozKOi3TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLiP-0008Kl-FC; Wed, 05 Feb 2020 14:31:41 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLhx-000842-0l
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:31:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 7653CE0304;
 Wed,  5 Feb 2020 06:31:12 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dw3NlkAExb7l; Wed,  5 Feb 2020 06:31:11 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com
Subject: [PATCH v1 07/12] arm64: dts: librem5-devkit: add the regulators for
 DVFS
Date: Wed,  5 Feb 2020 15:29:58 +0100
Message-Id: <20200205143003.28408-8-martin.kepplinger@puri.sm>
In-Reply-To: <20200205143003.28408-1-martin.kepplinger@puri.sm>
References: <20200205143003.28408-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_063113_276785_DA67D81B 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.203.221.185 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

Specify which regulator is used for cpufreq DVFS.

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
---
 .../dts/freescale/imx8mq-librem5-devkit.dts   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index ac0145839a69..6a8f6cee96cf 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -223,6 +223,26 @@
 	};
 };
 
+&A53_0 {
+	operating-points-v2 = <&a53_opp_table>;
+	cpu-supply = <&buck2_reg>;
+};
+
+&A53_1 {
+	operating-points-v2 = <&a53_opp_table>;
+	cpu-supply = <&buck2_reg>;
+};
+
+&A53_2 {
+	operating-points-v2 = <&a53_opp_table>;
+	cpu-supply = <&buck2_reg>;
+};
+
+&A53_3 {
+	operating-points-v2 = <&a53_opp_table>;
+	cpu-supply = <&buck2_reg>;
+};
+
 &clk {
 	assigned-clocks = <&clk IMX8MQ_AUDIO_PLL1>, <&clk IMX8MQ_AUDIO_PLL2>;
 	assigned-clock-rates = <786432000>, <722534400>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
