Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B976F933
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=REzAfMMQfQW7PmIrSAhS3nASa/EdKKX26V83xPq82Gg=; b=Sghs0W/hdcux75XCk7DoODKijO
	Wun813i+qa0v2hrOtnmHqrwkbZRqhfO7dglWpKofpPBr0qobq175EdwGpowkUreg21HtecLoxBf1y
	T/ojHovZVGVDFK3O3nTub6xtYm2oOaLKT8kzpv3AM671hmXi8CCYmG5Ma6bTDzUP4Xx4XvoAfOo6h
	ki+cvoWqmDJfwbhZU52go/iHEYwmAAd2Fj/RVJrL0Kj7tJ4+YO3vO7Fe4JoLdQPWk7+BQzLGCv5S7
	Z0w4IbR6WnedxA3jCI7QPfgHH0syHARZwA3eLhqGxh2yuBdGd2fnRjfa80R+0x7IkGVyS6Q+TXY41
	hFxXdYig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRKR-0006Yw-KW; Mon, 22 Jul 2019 05:57:43 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRIj-0005GY-Hl; Mon, 22 Jul 2019 05:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563774941;
 bh=Mfs0KFxfuAdl7r1+zeKQYCRtJqTlchom4wahS0rVa9E=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LAI7HzhkHmg0EPk8R4lCkHHwMYmBL/H+4RGITe1XCKHXI8kDAlC4Kwr62UM3Z4ub/
 9w4invLuc3itgf0SJaJhZjT28rmBIHGhWfIeHS9YGvm73Eu9WF6VolxM+Lc2TMT1ST
 F7DTv1lnEgq1rrlWG66rNGsFjQJbk99tnZSXHn04=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.98]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0M96Jd-1hhU9J4AwP-00CPJs; Mon, 22
 Jul 2019 07:55:41 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 08/18] clk: bcm2835: Add BCM2711_CLOCK_EMMC2 support
Date: Mon, 22 Jul 2019 07:54:39 +0200
Message-Id: <1563774880-8061-9-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:jOIrka6HlPmHspKjerxs8OHrw+5PSYK7EHf98yzfquXNqTlzaXl
 wqkK02jPXet29eNpvVl6ZCzFT2lDri2YewY5qZYpxPQUlkZaWrqUIjd2H/Vys6vakrEUTLX
 ER5H5A3MWuLkIC9HB/NE+VPVgtGmoN2CRUXq/cpr8hxEVlgMOMmaiLIdiXKGJ9kSRPHWW8y
 11kSozk9voAcY7UBmqx4g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RvlB6W0jnFk=:zEnFQRGi6xEmsCsXqgqK6v
 Z86h5PRUbMVuiSbhbpJaaA+iOunXMXODXGIhNbqsxjooEG7RNNMv0+70im+kVOX6Bmm1TkwgE
 Em3rqLuS967zU3WntcmqEp7th1aXZZBTdf06hvQbFoANkn7t2s9jJNAQp3HmJ1vTBEA1joeH8
 jxZjy9+7G7cN4qSuFNmX/U+kDlsOKC9BncLZMg45zW1PY05lnbxn3g9uBofAnjndVXK1Phaho
 SRQMyDsqL/MySpzJTgU3A9FFIG2OGmy/H4H98nhiJRLx6CMORL2RIc8eUPkrEcJkNi0z0dhzb
 wCIbvHgTHy/BwmQRXeseoiYbgbLu933IUGWrvR15B6n02rCOiZkqbvAVJj+HCt1dXTke5joEJ
 maxoaSzapET7qQaWKl7sxNd/cjBc3r703ZwDIG98se1g/65xpMtWPM5+7kNYxtNWFwU/yKx2m
 VC6O7+cS27lkSeYnwtcZqU8PeayjfbZY18DPPMwpOD3W+1zfARWiOII4Gg9qt2graoY6zZlWp
 D0tw0dfpYW+0sdPZ9Sym7PRz/KYzWwpE0nECgY1J5wamm7GbVFGtRAa9+cYDlQ+oF5eCT+ckh
 QvUoTYvbeRLE3q4kU8oj7POGXjqTHwGzssZPr4PFRELygCXDKiYA4j8NWoMvdXbOsHlYpzLTh
 EWvVHOSFECNsbaohLPj3XnmkmvcIonmfwfMEb/kJO+i50UOKJwXKZzMh+/ZeA4unqaH2bcIZt
 Sr8F905f6YHd/hzrU12tybLG17Gcml10oJmZ88+U51G0utiuKuZswgpH2C8QT0AQoFp5Fob9E
 Nzmcca6I73fVKPlrKQO3DSwCjg91EcbCqn3GX9exalRSBeQaPF4L65jJA4DiDjch8K3Cy/Lyr
 qiyMVd/2c0xICvUGEvYy3PofHZRUPVVQ8MY7aVNltDsL2V/+zcU7BqGTZs2ePmSFw+XApi8nG
 PEqsqTpLAgNN6UNVuDpg5T/aNfzwv0+uFvOsCRS4QnMyCarQnnZ6ak/sAeH80Ikys643uNeBh
 TDkyWiXi0VkNeNyp3JhdiLJWfY+iyirulvSxs//lmMc2fvcCQ+U8IoVN+EaN5yDhM9Z76Hq5u
 PlzqoEv/O6BHVo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225557_900241_2C7E36A3 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new BCM2711 supports an additional clock for the emmc2 block.
So add a new compatible and register this clock only for BCM2711.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/clk/bcm/clk-bcm2835.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 3231b76..fbdc4e1 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -114,6 +114,8 @@
 #define CM_AVEODIV		0x1bc
 #define CM_EMMCCTL		0x1c0
 #define CM_EMMCDIV		0x1c4
+#define CM_EMMC2CTL		0x1d0
+#define CM_EMMC2DIV		0x1d4

 /* General bits for the CM_*CTL regs */
 # define CM_ENABLE			BIT(4)
@@ -290,7 +292,8 @@
 #define BCM2835_MAX_FB_RATE	1750000000u

 #define SOC_BCM2835		BIT(0)
-#define SOC_ALL			(SOC_BCM2835)
+#define SOC_BCM2711		BIT(1)
+#define SOC_ALL			(SOC_BCM2835 | SOC_BCM2711)

 /*
  * Names of clocks used within the driver that need to be replaced
@@ -1999,6 +2002,16 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 39),

+	/* EMMC2 clock (only available for BCM2711) */
+	[BCM2711_CLOCK_EMMC2]	= REGISTER_PER_CLK(
+		SOC_BCM2711,
+		.name = "emmc2",
+		.ctl_reg = CM_EMMC2CTL,
+		.div_reg = CM_EMMC2DIV,
+		.int_bits = 4,
+		.frac_bits = 8,
+		.tcnt_mux = 42),
+
 	/* General purpose (GPIO) clocks */
 	[BCM2835_CLOCK_GP0]	= REGISTER_PER_CLK(
 		SOC_ALL,
@@ -2230,6 +2243,7 @@ static int bcm2835_clk_probe(struct platform_device *pdev)

 static const struct of_device_id bcm2835_clk_of_match[] = {
 	{ .compatible = "brcm,bcm2835-cprman", .data = (void *)SOC_BCM2835 },
+	{ .compatible = "brcm,bcm2711-cprman", .data = (void *)SOC_BCM2711 },
 	{}
 };
 MODULE_DEVICE_TABLE(of, bcm2835_clk_of_match);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
