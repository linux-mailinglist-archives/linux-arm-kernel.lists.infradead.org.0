Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4DD8BE4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=imD5PTRby9Isw/4lBQnCp7DnYk9jLYsC5Uca9B8jPfc=; b=fXPw+KKbyAZYbHGYdfhx3ncIEy
	kT+5LamYxWnFPhyW1+eI+h7OZxxdz91XP1KNgr3UBAx/xfNcyb6NUFHmaiZXjlQk+wkjOx64egZ0E
	O9YKTlu/fM+2mV5D5ASX9DXoub+/Fx8cz2wmk1J8LjROm9qRWwX7L6FbwaQLMrW0X6Y73NIhUYtir
	VEwFXC8q4RPEfcpAqWywqDvbGGUgyarA7A8HRgCMIrFYXkaglK3cTuqLrhqzmnsFnbmToGTTU85sp
	K0vxtUhHMeYO9eyAxLVP0vyM0akX40baH7fYAUOKnBZOeczOTQFOhHNxxqlK+0vFFMcL9g+ZfmIjI
	44GSOogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZY4-0008Qc-Cf; Tue, 13 Aug 2019 16:21:24 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZXm-0008Mo-Sj; Tue, 13 Aug 2019 16:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565713259;
 bh=qdXQg2OrSZffMMctJ7ip3unY7gSBHUJWbQ4Efr9U4Y4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=dRVVd8zELT+O1B8rSCWCttDBQSp1Jzz3zyc/oYw5Cdi8BY3Ja+rAZwUfX1Xx66eQg
 i++eex9wfShxCj151QyJmcSUANEFOSHa5SdXP3FcDZPicmBriu7gcGzMRNj9mOGHwX
 8UfNlEITUxcRx5MP0AlD2eaKUa0payx9/AaKBcrY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MmDEg-1ifOji3rBw-00iEJ2; Tue, 13 Aug 2019 18:20:59 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V2 05/13] clk: bcm2835: Add BCM2711_CLOCK_EMMC2 support
Date: Tue, 13 Aug 2019 18:20:40 +0200
Message-Id: <1565713248-4906-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:MII+w+qvfSnz565NJxLI9YRp5kw2GvzGA3+V7tAejkOxHaFHLS1
 r9siGlg27T4lOQWi2UbC7um1wV0luJe09kx+DT2+kxru+v2Yv7/DXnw5SWBBQHPjonMO0u0
 QxM6+DpAzLISgA8yUjyZOX4IR6yo9p9Wu04vd9s41ln+Br9TBpL/kn9YQBYIwV5CiLnHPn9
 EbaKX25HUVXoVYbkbs6jw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8TJ2pPE3k6U=:ZDBYvhifcnxmeFUCKJMmND
 Sh+4KcsBGw5l2MokxZqJ4KibK7ewcnW6cSAGjgHN0D/A/JovI1KULRB+HkWfhjDW7T2XyWN/X
 n8CIueOphIo6RrPD/MJA+ldEIvCrTur7waaJR/b22QYBO3rSgSNAflyld23QqdKNMGlXwby3g
 A3pVlBlBsIkdFsfCxsg/C3cYfgX9W+7rjqk4KNzd+N+Br22GKeT1RZlecRBb3+7aIDCp/fFiM
 rZvTRwdlbkcBoq7k/D91tllV+OvsxI5SoNQ0lmngA+fy5yyL/9dxK1Aw6KZhb7ckxaG7FojH3
 uFPI+//bkD3S2XkheBpM4E1C4+plft8TlV2NncpLqd/pu30+p+PSGxSZapRQGPklN46V9NRuT
 zBdEDBMtKG2HNdWHF9LbbyMotv3AMlx5YLvbAJeq7ksyub/8Xr//Ce0zl1Xzvsqwgqyu9tput
 WkyWDBu5t/c0yN/BFnTquRThqSUoMu/MGWfyXVrU/ikplnU9k7dIudwuOP9F5UvoySlzn2Wpu
 2NkJinaNuwo27dv1qMWPK1Qd9xaNIRgs5xNMPdOHkMx4vtG3Mhh9omCkXXHZZKAwbtZ0RnTCW
 nQ3HlYHfgTN+2h0GCxBFOingPXyCNItYWWtzod0sWsV3/KNEIXjUSFl1YFjkCLx2O/Av9hdKA
 2ipQBQgpUQc6ahbybsb8NGBX4TqON3j5rJMjs7ZRSlODviT9uUqOA0Q5xtl5+ZuRWRO/ScqJF
 ziAdv3IAzCMwJ0mBMotDjbMwjFb7mVSb9s7RF2Rxf5FHGOBbjZpJRQZJEg/Q25JYsEEaLCRnq
 kIiOq7qfP5oBXjseq2vIEUCebasVAJ4XRzfjLc8OcUBrNH0AkURKCJJTmDCb8dMDFEEI7nBBO
 xItNR6ZSmVY00LRQ+lXTZ/qiAs0DS1keKqvP8QLje1himsRJ8R9AP87PvTzhkKHgkEQ/ed011
 af97O7sBgs9zLkgoL7ldarBAkhYS2aSC0J1nPL7ZguVmjtqrmTXj0m09iFSFKSGg1WZ5PcWJq
 EtBNmXYgFu0vOI17ZzaWwrytQWm69pVNAI4j1LoG2eFsVpsUl2+cIfzhxmIzTMpVnFPemUJyG
 +d2uHbAVhM6HW1/awnRbVfqKzJtc/x6/aIKo3JZOzipNRGViYaRXcP4ww==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092107_231525_ED21A2C7 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new BCM2711 supports an additional clock for the emmc2 block.
So add a new compatible and register this clock only for BCM2711.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Matthias Brugger <mbrugger@suse.com>
Acked-by: Eric Anholt <eric@anholt.net>
---
 drivers/clk/bcm/clk-bcm2835.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 21cd952..fdf672a 100644
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
@@ -2003,6 +2006,16 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
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
@@ -2238,8 +2251,13 @@ static const struct cprman_plat_data cprman_bcm2835_plat_data = {
 	.soc = SOC_BCM2835,
 };

+static const struct cprman_plat_data cprman_bcm2711_plat_data = {
+	.soc = SOC_BCM2711,
+};
+
 static const struct of_device_id bcm2835_clk_of_match[] = {
 	{ .compatible = "brcm,bcm2835-cprman", .data = &cprman_bcm2835_plat_data },
+	{ .compatible = "brcm,bcm2711-cprman", .data = &cprman_bcm2711_plat_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, bcm2835_clk_of_match);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
