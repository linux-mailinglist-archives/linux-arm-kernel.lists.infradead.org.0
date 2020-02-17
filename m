Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75CE160D7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6iV5ZpZvAzrOe02rUUi/om1TV5Z46CdQSuQ15EeA2g=; b=mVKxhSeCsJEnUf
	7QPD9o/OFxMgjKfHHgwFIJC+/MOmUtA8DG2Jq1b1ZNerQRpW2VuOlx3SyILosXcfkyivIM+8pqwxI
	w9czFf2hfe7pveempeBCUKBSBpLHoqheOaYRPdlF6hIKFlSoFY9aoRAoiZC8T2Gd4ZghVBuHBc1JF
	VUjx8fYhutu9ju9S/IgQSY0jLHY843gRMkMn3FxFfmKFObwkP+kHgNOWMrQCVb3xhV0+WHdYIs9ZF
	lSszLixO0QPjCdV/H2QdEHB2Fr52Rhg8FKTxWq3cZLO5QFFwIL5bg6hJh4DFFaHE6VQWJfwHCQgm+
	L0/qnz+chSKjcTekEK4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bsE-00083d-KD; Mon, 17 Feb 2020 08:35:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bs4-00083A-Uh
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 08:35:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j3bs0-0006DS-TK; Mon, 17 Feb 2020 09:35:12 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j3bs0-0007Sr-6V; Mon, 17 Feb 2020 09:35:12 +0100
Date: Mon, 17 Feb 2020 09:35:12 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 3/7] ARM: dts: imx6sx-nitrogen6sx: Use new pin names
 with DCE/DTE for UART pins
Message-ID: <20200217083512.iiydfrdg2v5npte6@pengutronix.de>
References: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
 <1581743758-4475-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581743758-4475-4-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_003516_985552_33A6199E 
X-CRM114-Status: GOOD (  14.46  )
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

On Sat, Feb 15, 2020 at 01:15:54PM +0800, Anson Huang wrote:
> Use new pin names containing DCE/DTE for UART RX/TX/RTS/CTS pins, this
> is to distinguish the DCE/DTE functions.
> =

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm/boot/dts/imx6sx-nitrogen6sx.dts | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> =

> diff --git a/arch/arm/boot/dts/imx6sx-nitrogen6sx.dts b/arch/arm/boot/dts=
/imx6sx-nitrogen6sx.dts
> index 832b5c5..d84ea69 100644
> --- a/arch/arm/boot/dts/imx6sx-nitrogen6sx.dts
> +++ b/arch/arm/boot/dts/imx6sx-nitrogen6sx.dts
> @@ -484,31 +484,31 @@
>  =

>  	pinctrl_uart1: uart1grp {
>  		fsl,pins =3D <
> -			MX6SX_PAD_GPIO1_IO04__UART1_TX		0x1b0b1
> -			MX6SX_PAD_GPIO1_IO05__UART1_RX		0x1b0b1
> +			MX6SX_PAD_GPIO1_IO04__UART1_DCE_TX		0x1b0b1
> +			MX6SX_PAD_GPIO1_IO05__UART1_DCE_RX		0x1b0b1
>  		>;
>  	};
>  =

>  	pinctrl_uart2: uart2grp {
>  		fsl,pins =3D <
> -			MX6SX_PAD_GPIO1_IO06__UART2_TX		0x1b0b1
> -			MX6SX_PAD_GPIO1_IO07__UART2_RX		0x1b0b1
> +			MX6SX_PAD_GPIO1_IO06__UART2_DCE_TX		0x1b0b1
> +			MX6SX_PAD_GPIO1_IO07__UART2_DCE_RX		0x1b0b1
>  		>;
>  	};
>  =

>  	pinctrl_uart3: uart3grp {
>  		fsl,pins =3D <
> -			MX6SX_PAD_QSPI1B_SS0_B__UART3_TX	0x1b0b1
> -			MX6SX_PAD_QSPI1B_SCLK__UART3_RX		0x1b0b1
> +			MX6SX_PAD_QSPI1B_SS0_B__UART3_DCE_TX		0x1b0b1
> +			MX6SX_PAD_QSPI1B_SCLK__UART3_DCE_RX		0x1b0b1

While reviewing this patch I noticed that the user of this pinctrl group
has the property uart-has-rtscts which seems wrong.

>  		>;
>  	};
>  =

>  	pinctrl_uart5: uart5grp {
>  		fsl,pins =3D <
> -			MX6SX_PAD_KEY_COL3__UART5_TX		0x1b0b1
> -			MX6SX_PAD_KEY_ROW3__UART5_RX		0x1b0b1
> -			MX6SX_PAD_SD3_DATA6__UART3_RTS_B	0x1b0b1
> -			MX6SX_PAD_SD3_DATA7__UART3_CTS_B	0x1b0b1
> +			MX6SX_PAD_KEY_COL3__UART5_DCE_TX		0x1b0b1
> +			MX6SX_PAD_KEY_ROW3__UART5_DCE_RX		0x1b0b1
> +			MX6SX_PAD_SD3_DATA6__UART3_DCE_RTS		0x1b0b1
> +			MX6SX_PAD_SD3_DATA7__UART3_DCE_CTS		0x1b0b1

While the property is missing in &uart5.

But the patch is fine, so:

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
