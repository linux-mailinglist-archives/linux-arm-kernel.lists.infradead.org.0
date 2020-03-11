Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9724B18175E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:04:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HPvqfAqVP1VRQfcWtcIBWar5g2kWtQf7NxfXFEeB/fs=; b=Gd0XrLele+/vMH
	LoIOPhA3tBckN3hSHpFfeYFwriYs5Z65oO+8YTHqgMU+RVLKY8qy6YY+IR5L3QSphSeChKTXIZcP9
	mK2B0WfU8rYFF+lbbctmh/mr6yGiMeKoCg6eGodcmFogGcd5xZRjlXYRMDL9A+5NuyRx+rQl9GxL4
	HD2JtZq+oG1zG98o6yf6PgecGoeaXoxHitEZFazujwqWjtn6ZaVZVSf9w1KybFdU/oZIJEpgH5BsL
	Ee4f01JU+Uw7C911oZS66SVIlZ+nhhHO+S7mTborNU/SLGolixPe462QMiUmF16o9Iags2VohRASq
	aJvcQp5Am/xzMBq8WB6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC05q-0006it-9T; Wed, 11 Mar 2020 12:04:10 +0000
Received: from mail.sensor-technik.de ([80.150.181.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC05g-0006hy-7Q
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:04:02 +0000
IronPort-SDR: up1hK43aKgIFlCWJoNezrRXn/Csu6PbgBuMFFGfCHJbPQ6XlaKWoCy4yQgO54+58nCpnrXYIr9
 uMP7kgKwBvw7V8tfd4UpR9MYlAQCdkpHaxAo0te/rKkePCHeaaSvquHNtdB/LSyM9no33jJLGe
 qvJNdEySmeFQytGFS552hhRRFaAuNYISxt3OFIYWRK8rYaTqkBHoYvusI/Ux22MVQPHy0FQL0a
 ryCQjtsiQEdspvJJrsXM/KJQikmjKOldkrYDVVqJ8XLRjiheuObFd4xv4J84dzIpCrkN/QNiDm
 ouI=
Received: from stwz1.stww2k.local (HELO stwz1.sensor-technik.de)
 ([172.25.209.3])
 by mail.sensor-technik.de with ESMTP; 11 Mar 2020 13:03:45 +0100
Received: from stwz1.stww2k.local (localhost [127.0.0.1])
 by stwz1.sensor-technik.de (Postfix) with ESMTP id 1E251B5ABC;
 Wed, 11 Mar 2020 13:03:45 +0100 (CET)
Received: from mail.sensor-technik.de (stwex1.stww2k.local [172.25.2.103])
 by stwz1.sensor-technik.de (Postfix) with ESMTP id 1849CB5AAC;
 Wed, 11 Mar 2020 13:03:41 +0100 (CET)
Received: from STWEX1.stww2k.local (172.25.2.106) by STWEX1.stww2k.local
 (172.25.2.106) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 11 Mar
 2020 13:03:40 +0100
Received: from STWEX1.stww2k.local ([172.25.5.24]) by STWEX1.stww2k.local
 ([172.25.5.24]) with mapi id 15.00.1497.000; Wed, 11 Mar 2020 13:03:40 +0100
From: Waibel Georg <Georg.Waibel@wiedemann-group.com>
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] clk: imx: imx6ul: change flexcan clock to support CiA bitrates
Thread-Topic: [PATCH] clk: imx: imx6ul: change flexcan clock to support CiA
 bitrates
Thread-Index: AQHV95ST0bOTF69F/U2rBLbNCOYKZw==
Date: Wed, 11 Mar 2020 12:03:40 +0000
Message-ID: <1583928220724.65021@wiedemann-group.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.30.230.19]
x-c2processedorg: 71f8fb5e-29e9-40bb-a2d4-613e155b19df
MIME-Version: 1.0
X-TBoneOriginalFrom: Waibel Georg <Georg.Waibel@wiedemann-group.com>
X-TBoneOriginalTo: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-TBoneOriginalCC: Appelt Andreas <Andreas.Appelt@wiedemann-group.com>,
 Michel Alex <Alex.Michel@wiedemann-group.com>
X-TBoneDomainSigned: false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_050400_580959_B101B8BA 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.150.181.156 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Michel Alex <Alex.Michel@wiedemann-group.com>,
 Appelt Andreas <Andreas.Appelt@wiedemann-group.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setting a CAN bitrate of 800kbit/s fails with a bitrate error of 1.3% if the
flexcan module is clocked at 30MHz (CAN_CLK_ROOT). This patch changes the clock
frequency from 30MHz to 40MHz which allows to support all bitrates recommended
by CiA.

Background:
CAN in Automation document 102 (CiA102) recommends the CAN bitrates 10, 20, 50,
125, 250, 500, 800 and 1000kbit/s.

With the flexcan serial clock at 30MHz (original value) setting some common
bitrates ("ip link set canX type can bitrate <bitrate>") gives the following
results:
requested value / actually set value
5000: bitrate 5000 sample-point 0.708
10000: bitrate 10000 sample-point 0.866
20000: bitrate 20000 sample-point 0.866
40000: bitrate 40000 sample-point 0.866
50000: bitrate 50000 sample-point 0.866
80000: bitrate 80000 sample-point 0.866
100000: bitrate 100000 sample-point 0.866
125000: bitrate 125000 sample-point 0.875
250000: bitrate 250000 sample-point 0.866
400000: bitrate 400000 sample-point 0.866
500000: bitrate 500000 sample-point 0.866
666666: bitrate 666666 sample-point 0.800
800000: bitrate 789473 sample-point 0.789 !!!bitrate error 1.3%
1000000: bitrate 1000000 sample-point 0.733

With the flexcan serial clock at 40MHz (new value) we get this:
5000: no more possible
10000: bitrate 10000 sample-point 0.875
20000: bitrate 20000 sample-point 0.875
40000: bitrate 40000 sample-point 0.850
50000: bitrate 50000 sample-point 0.875
80000: bitrate 80000 sample-point 0.850
100000: bitrate 100000 sample-point 0.875
125000: bitrate 125000 sample-point 0.875
250000: bitrate 250000 sample-point 0.875
400000: bitrate 400000 sample-point 0.850
500000: bitrate 500000 sample-point 0.875
666666: bitrate 666666 sample-point 0.800
800000: bitrate 800000 sample-point 0.800
1000000: bitrate 1000000 sample-point 0.750

A drawback of the modification is that 5kbit/s is no more supported.

Setting the flexcan serial clock to 60MHz or 80MHz would produce similar
results but with losing even more bitrates at the lower end.

Changing the flexcan serial clock to 40MHz might apply for other SoCs
using the flaxcan module as well (e.g. imx6q/d/s..). But since I don't
have such hardware to test I did not add this to the patch.

Signed-off-by: Georg Waibel <georg.waibel@wiedemann-group.de>
---
 drivers/clk/imx/clk-imx6ul.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index dafc8806b03e..5dbb6a937732 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -503,7 +503,7 @@ static void __init imx6ul_clocks_init(struct device_node *ccm_node)
 		clk_prepare_enable(hws[IMX6UL_CLK_USBPHY2_GATE]->clk);
 	}
 
-	clk_set_parent(hws[IMX6UL_CLK_CAN_SEL]->clk, hws[IMX6UL_CLK_PLL3_60M]->clk);
+	clk_set_parent(hws[IMX6UL_CLK_CAN_SEL]->clk, hws[IMX6UL_CLK_PLL3_80M]->clk);
 	if (clk_on_imx6ul())
 		clk_set_parent(hws[IMX6UL_CLK_SIM_PRE_SEL]->clk, hws[IMX6UL_CLK_PLL3_USB_OTG]->clk);
 	else if (clk_on_imx6ull())
-- 
2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
