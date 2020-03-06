Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9216C17B6FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 07:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sX/ts+S0lABbxFVinpsQs7ORM7ejJ49walqk/xqoGWY=; b=hUhm5/1qH8Gzw6
	P4KefUjlZ/pjcb5aqFwCtjpmrXU3nGru5b7Ecu5Tl8G5cWa6MHL5Y11kBhKyyqoxfUuL6AN3CvbpL
	XSrCBmYsHCwluIkCoBBR2FAGSH6WDOAqLO2Do3nepoRhPxaJ/2KBnxB67JdxQbB3hKmYFTgb5pTNL
	Cd6mbijVeXx54QF5xkJhtzSCld4N/9Z9wIlNVABUI17ldkhMyvgxT+bb8yEtfiOQzJZVuX6yiqC+0
	6fkJ0ZVppaM6dPJmXQAKEAfVOkKc1zK1rsbp4/jjdYZkygeH5SfY9HE4kqJvYDc2Pb9Xc5AyoRR8O
	nnDmfhDLf0/NRhu/U8qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6lh-0004GW-Ss; Fri, 06 Mar 2020 06:47:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6la-0004Fr-Q7
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 06:47:28 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jA6lW-0003vq-Eu; Fri, 06 Mar 2020 07:47:22 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jA6lV-0001nm-0S; Fri, 06 Mar 2020 07:47:21 +0100
Date: Fri, 6 Mar 2020 07:47:20 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Martin Kaiser <martin@kaiser.cx>
Subject: Re: [PATCH] ARM: dts: imx25-pinfunc: add config for kpp rows 4 to 7
Message-ID: <20200306064720.i2ekoorkwf7y57x4@pengutronix.de>
References: <20200305212623.5601-1-martin@kaiser.cx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305212623.5601-1-martin@kaiser.cx>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_224726_848401_330E1E55 
X-CRM114-Status: GOOD (  13.89  )
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
Cc: linux-arm-kernel@lists.infradead.org, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 10:26:24PM +0100, Martin Kaiser wrote:
> i.MX25's Keypad Port (KPP) can be used with a key pad matrix of up to
> 8 x 8 keys. Add pin configurations for rows 4 to 7.
> =

> The new defines have been tested on an out-of-tree board.
> =

> Signed-off-by: Martin Kaiser <martin@kaiser.cx>
> ---
>  arch/arm/boot/dts/imx25-pinfunc.h | 4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/imx25-pinfunc.h b/arch/arm/boot/dts/imx25-=
pinfunc.h
> index b5a12412440e..111bfdcbe552 100644
> --- a/arch/arm/boot/dts/imx25-pinfunc.h
> +++ b/arch/arm/boot/dts/imx25-pinfunc.h
> @@ -255,10 +255,12 @@
>  =

>  #define MX25_PAD_LD12__LD12			0x0f8 0x2f0 0x000 0x00 0x000
>  #define MX25_PAD_LD12__CSPI2_MOSI		0x0f8 0x2f0 0x4a0 0x02 0x000
> +#define MX25_PAD_LD12__KPP_ROW6			0x0f8 0x2f0 0x544 0x04 0x000
>  #define MX25_PAD_LD12__FEC_RDATA3		0x0f8 0x2f0 0x510 0x05 0x001
>  =

>  #define MX25_PAD_LD13__LD13			0x0fc 0x2f4 0x000 0x00 0x000
>  #define MX25_PAD_LD13__CSPI2_MISO		0x0fc 0x2f4 0x49c 0x02 0x000
> +#define MX25_PAD_LD13__KPP_ROW7			0x0fc 0x2f4 0x548 0x04 0x000
>  #define MX25_PAD_LD13__FEC_TDATA2		0x0fc 0x2f4 0x000 0x05 0x000

>  #define MX25_PAD_LD14__LD14			0x100 0x2f8 0x000 0x00 0x000
> @@ -516,9 +518,11 @@
>  =

>  #define MX25_PAD_FEC_TX_EN__FEC_TX_EN		0x1d8 0x3d0 0x000 0x00 0x000
>  #define MX25_PAD_FEC_TX_EN__GPIO_3_9		0x1d8 0x3d0 0x000 0x05 0x000
> +#define MX25_PAD_FEC_TX_EN__KPP_ROW4		0x1d8 0x3d0 0x53c 0x06 0x000
>  =

>  #define MX25_PAD_FEC_RDATA0__FEC_RDATA0		0x1dc 0x3d4 0x000 0x00 0x000
>  #define MX25_PAD_FEC_RDATA0__GPIO_3_10		0x1dc 0x3d4 0x000 0x05 0x000
> +#define MX25_PAD_FEC_RDATA0__KPP_ROW5 		0x1dc 0x3d4 0x540 0x06 0x000
>  =

>  #define MX25_PAD_FEC_RDATA1__FEC_RDATA1		0x1e0 0x3d8 0x000 0x00 0x000

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
