Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85095100238
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 11:18:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IBLUee+Armbh08UeypvFSJL5SLlIIOj5exPWRzXlTT0=; b=d82IKCZ5JPdSecTr0xVEchWqE
	hU7z58fkDLC2fHObC9k8EE8QGwuBnqFCPkfsn24A0bAaiQQ0HJkBporahK+B6RMa1ZenXQyQTdTt4
	rYxQ+ECAFsW+EPJbbwJusc6sJoacIpAKpjPiPQAjr4NLJMPDQErpDT/RB9v6hWf2Hkvie2vAXG/kv
	0GsGX0p3p0xwqUyZqMf1MBPjvKvplaN3I7dW+S4MC9onZYU11RWHrcx8lDplK4iQQH435XTg9Pa0u
	f6PiK4Hhph9sC8QK17m3h3749PC2o7aO8XVn/7jzEd4Mro1fiJj1lSiEm/a3I9k+N5HstBMWREVtQ
	HtGIALTjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWe78-0006Bb-Cy; Mon, 18 Nov 2019 10:18:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWe6y-0006BG-8W
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 10:18:25 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 598B220727;
 Mon, 18 Nov 2019 10:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574072303;
 bh=kKOMigJg/s6w5TnRT2XmC14ecX+48iqWRHWFRAU2aSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sIDKgm9hhuZtzd+Vv1GQpYXd/CMqag0FgT1WIybFKRnx3I7X+vqNp6JyIzXESvYbW
 aeJWsH/clVRt9o1kQtDsq5rDzjnCAenvqkmTB7+n+sS7i4m0vA/aRsw/S66u5782Da
 s1hSjyIHpn0Zlwomi4OzVdM61tQLDngwxcm6UMHA=
Date: Mon, 18 Nov 2019 11:18:21 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Tian Yunhao <t123yh@outlook.com>
Subject: Re: [PATCH, v2] clk: sunxi-ng: v3s: Fix incorrect number of hw_clks.
Message-ID: <20191118101821.GD4345@gilmour.lan>
References: <MN2PR08MB579006CB67AC63A93C8B0D5E89760@MN2PR08MB5790.namprd08.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <MN2PR08MB579006CB67AC63A93C8B0D5E89760@MN2PR08MB5790.namprd08.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_021824_329158_2EB03871 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============1376479810236285168=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1376479810236285168==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OsjXUGRLsfCucSoX"
Content-Disposition: inline


--OsjXUGRLsfCucSoX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Nov 13, 2019 at 09:23:59AM +0000, Tian Yunhao wrote:
> The hws field of sun8i_v3s_hw_clks has only 74
> members. However, the number specified by CLK_NUMBER
> is 77 (= CLK_I2S0 + 1). This leads to runtime segmentation
> fault that is not always reproducible.
>
> This patch corrects this behavior by separating clock
> numbers for V3 and V3S.
>
> Signed-off-by: Yunhao Tian <t123yh@outlook.com>

Even though they are similar, the Signed-off-by doesn't match the
authorship.

> ---
>  drivers/clk/sunxi-ng/ccu-sun8i-v3s.c | 4 ++--
>  drivers/clk/sunxi-ng/ccu-sun8i-v3s.h | 3 ++-
>  2 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> index 5c779eec454b..72a87dd0c0d8 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> @@ -618,7 +618,7 @@ static struct clk_hw_onecell_data sun8i_v3s_hw_clks = {
>  		[CLK_MBUS]		= &mbus_clk.common.hw,
>  		[CLK_MIPI_CSI]		= &mipi_csi_clk.common.hw,
>  	},
> -	.num	= CLK_NUMBER,
> +	.num	= CLK_NUMBER_V3S,
>  };
>
>  static struct clk_hw_onecell_data sun8i_v3_hw_clks = {
> @@ -700,7 +700,7 @@ static struct clk_hw_onecell_data sun8i_v3_hw_clks = {
>  		[CLK_MBUS]		= &mbus_clk.common.hw,
>  		[CLK_MIPI_CSI]		= &mipi_csi_clk.common.hw,
>  	},
> -	.num	= CLK_NUMBER,
> +	.num	= CLK_NUMBER_V3,

There's not much point in having a defined CLK_NUMBER here, just use
the value you've defined it to (so CLK_I2S0 + 1  and CLK_PLL_DDR1 + 1)

Maxime

--OsjXUGRLsfCucSoX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXdJv7QAKCRDj7w1vZxhR
xVauAP0a9Re23tvnPYMA7Ub1qIg6UIRCLhMLGd36GhgtgPhUiwEAiFCX1AxrLVL2
8JoMUkjm4pyZkQ/hVE+edtx46zPZ/Ag=
=A6na
-----END PGP SIGNATURE-----

--OsjXUGRLsfCucSoX--


--===============1376479810236285168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1376479810236285168==--

