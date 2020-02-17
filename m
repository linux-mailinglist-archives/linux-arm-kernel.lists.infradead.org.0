Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B26160D27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:24:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEpAmkWkHdTiPpjn4hXqyk4TaCZqtW7feL6tmJNe97E=; b=LhQYo382nIb9nP
	iQOo6c+7Qf00/kxhjNEFf95ZLk67rwnXjqAdTvAS2oMklRzaD2rDrr4gsVq787896g6UzBBSKiVGS
	yx3jnOFL6pfauKDJlH6ktA9LCtlA+3LKwK4i5p9PC/QpbsAGLnNtwXkCAr71SPIt+1AKmWw003TLJ
	nW1fvNtSVX5M/+tTYL5uwYLb3M+oE4gWA06G7XxXYa0nBi61hu7yYtpkbNWB5sL3A3Zx3M8+oyVtu
	gWoqJznTspJWAR/YBfhbhdme6dJ7+BPqcK3L9tM4nuNlqy3XHhgH0ss4VCDW4kKFfg87f5gTNsPvO
	2ZxcFWaDrJz1yULZPFtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bhL-00018U-78; Mon, 17 Feb 2020 08:24:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bh6-00010N-BA
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 08:23:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j3bh0-0004ma-Ne; Mon, 17 Feb 2020 09:23:50 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j3bh0-000772-9G; Mon, 17 Feb 2020 09:23:50 +0100
Date: Mon, 17 Feb 2020 09:23:50 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/7] ARM: dts: imx6sx: Improve UART pins macro defines
Message-ID: <20200217082350.o4jjnoslptv74fh6@pengutronix.de>
References: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
 <1581743758-4475-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581743758-4475-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_002356_406962_94612D26 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Anson,

On Sat, Feb 15, 2020 at 01:15:52PM +0800, Anson Huang wrote:
> Add DCE/DTE to UART pins macro defines to distinguish the
> DCE and DTE functions, keep old defines at the end of file
> for some time to make it backward compatible.
> =

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Please squash the following diff into your patch:


diff --git a/arch/arm/boot/dts/imx6sx-pinfunc.h b/arch/arm/boot/dts/imx6sx-=
pinfunc.h
index 738a0000f212..9814db090487 100644
--- a/arch/arm/boot/dts/imx6sx-pinfunc.h
+++ b/arch/arm/boot/dts/imx6sx-pinfunc.h
@@ -1016,8 +1016,8 @@
 #define MX6SX_PAD_QSPI1B_SCLK__WEIM_DATA_8                        0x01B4 0=
x04FC 0x0000 0x6 0x0
 #define MX6SX_PAD_QSPI1B_SCLK__SIM_M_HADDR_11                     0x01B4 0=
x04FC 0x0000 0x7 0x0
 #define MX6SX_PAD_QSPI1B_SS0_B__QSPI1_B_SS0_B                     0x01B8 0=
x0500 0x0000 0x0 0x0
-#define MX6SX_PAD_QSPI1B_SS0_B__UART3_DTE_RX                      0x01B8 0=
x0500 0x0840 0x1 0x5
 #define MX6SX_PAD_QSPI1B_SS0_B__UART3_DCE_TX                      0x01B8 0=
x0500 0x0000 0x1 0x0
+#define MX6SX_PAD_QSPI1B_SS0_B__UART3_DTE_RX                      0x01B8 0=
x0500 0x0840 0x1 0x5
 #define MX6SX_PAD_QSPI1B_SS0_B__ECSPI3_SS0                        0x01B8 0=
x0500 0x073C 0x2 0x1
 #define MX6SX_PAD_QSPI1B_SS0_B__ESAI_TX_HF_CLK                    0x01B8 0=
x0500 0x0784 0x3 0x3
 #define MX6SX_PAD_QSPI1B_SS0_B__CSI1_DATA_17                      0x01B8 0=
x0500 0x06E0 0x4 0x1
@@ -1334,8 +1334,8 @@
 #define MX6SX_PAD_SD3_CLK__TPSMP_HDATA_29                         0x0250 0=
x0598 0x0000 0x7 0x0
 #define MX6SX_PAD_SD3_CLK__SDMA_DEBUG_EVENT_CHANNEL_5             0x0250 0=
x0598 0x0000 0x9 0x0
 #define MX6SX_PAD_SD3_CMD__USDHC3_CMD                             0x0254 0=
x059C 0x0000 0x0 0x0
-#define MX6SX_PAD_SD3_CMD__UART4_DTE_RX                           0x0254 0=
x059C 0x0848 0x1 0x0
 #define MX6SX_PAD_SD3_CMD__UART4_DCE_TX                           0x0254 0=
x059C 0x0000 0x1 0x0
+#define MX6SX_PAD_SD3_CMD__UART4_DTE_RX                           0x0254 0=
x059C 0x0848 0x1 0x0
 #define MX6SX_PAD_SD3_CMD__ECSPI4_MOSI                            0x0254 0=
x059C 0x0748 0x2 0x0
 #define MX6SX_PAD_SD3_CMD__AUDMUX_AUD6_RXC                        0x0254 0=
x059C 0x067C 0x3 0x0
 #define MX6SX_PAD_SD3_CMD__LCDIF2_HSYNC                           0x0254 0=
x059C 0x07E4 0x4 0x1
@@ -1621,11 +1621,11 @@
 #define MX6SX_PAD_SD2_DATA3__UART6_RX		MX6SX_PAD_SD2_DATA3__UART6_DTE_RX
 #define MX6SX_PAD_SD2_DATA3__UART6_TX		MX6SX_PAD_SD2_DATA3__UART6_DCE_TX
 #define MX6SX_PAD_SD3_CLK__UART4_CTS_B		MX6SX_PAD_SD3_CLK__UART4_DCE_CTS
+#define MX6SX_PAD_SD3_CMD__UART4_RX		MX6SX_PAD_SD3_CMD__UART4_DTE_RX
+#define MX6SX_PAD_SD3_CMD__UART4_TX		MX6SX_PAD_SD3_CMD__UART4_DCE_TX
 #define MX6SX_PAD_SD3_DATA2__UART4_RTS_B	MX6SX_PAD_SD3_DATA2__UART4_DCE_RTS
 #define MX6SX_PAD_SD3_DATA3__UART4_RX		MX6SX_PAD_SD3_DATA3__UART4_DCE_RX
 #define MX6SX_PAD_SD3_DATA3__UART4_TX		MX6SX_PAD_SD3_DATA3__UART4_DTE_TX
-#define MX6SX_PAD_SD3_CMD__UART4_RX		MX6SX_PAD_SD3_CMD__UART4_DTE_RX
-#define MX6SX_PAD_SD3_CMD__UART4_TX		MX6SX_PAD_SD3_CMD__UART4_DCE_TX
 #define MX6SX_PAD_SD3_DATA4__UART3_RX		MX6SX_PAD_SD3_DATA4__UART3_DCE_RX
 #define MX6SX_PAD_SD3_DATA4__UART3_TX		MX6SX_PAD_SD3_DATA4__UART3_DTE_TX
 #define MX6SX_PAD_SD3_DATA5__UART3_RX		MX6SX_PAD_SD3_DATA5__UART3_DTE_RX
@@ -1636,7 +1636,7 @@
 #define MX6SX_PAD_SD4_DATA4__UART5_TX		MX6SX_PAD_SD4_DATA4__UART5_DTE_TX
 #define MX6SX_PAD_SD4_DATA5__UART5_RX		MX6SX_PAD_SD4_DATA5__UART5_DTE_RX
 #define MX6SX_PAD_SD4_DATA5__UART5_TX		MX6SX_PAD_SD4_DATA5__UART5_DCE_TX
-#define MX6SX_PAD_SD4_DATA7__UART5_CTS_B	MX6SX_PAD_SD4_DATA7__UART5_DCE_CTS
 #define MX6SX_PAD_SD4_DATA6__UART5_RTS_B	MX6SX_PAD_SD4_DATA6__UART5_DCE_RTS
+#define MX6SX_PAD_SD4_DATA7__UART5_CTS_B	MX6SX_PAD_SD4_DATA7__UART5_DCE_CTS
 =

-#endif /*		__DTS_IMX6SX_PINFUNC_H */
+#endif /* __DTS_IMX6SX_PINFUNC_H */

Apart from the last change it is just about ordering. i.e. always list
the DCE function first consistently and have the compat defines in the
same order than the old definition.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
