Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06617F742D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 13:40:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3fmN3XiUVF1LmzQLvg9hRrrIDvXTxLO15A87j6WW9/A=; b=oa+oJLcuWPf9kmvw6fp8x+H74
	n551Pk6eGrnJA+efPZHtjlF+V9cXMd2QMLlmcdeM6U0bIgykHhceSAbUjuqBsCXuHekZIwY/7vDKP
	m/kqhhIITEK7meRl3Q9P3LvJPA37GezZOLckoRHSui37iMriqG4Ii6HJF5y+vbgDIO0bItiHvRHn8
	EpjSiy5V6lPj1wHgApTuIkcIL3ao5UuDE3EYRcLETjpa1kMPE9Agfa4Advp5Pklbr1fHQnRPrnydJ
	IOBwLDI41Ly91gSutZSL8VDCooh3dzjHPeDC6BUX66ESiV/IMh+BgyB2aZU9puzt0W2ltxaUA2RrD
	bGtyBSLdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU8z5-0005ev-CB; Mon, 11 Nov 2019 12:39:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU8yw-0005dv-6m
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 12:39:47 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B251521872;
 Mon, 11 Nov 2019 12:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573475981;
 bh=IyPu+oU78BR99iNVtTf6kR7ZsoJaWH9p3+6ksQHASkw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TnIbfoNKGvJkLIgpG3sXWjgaRKucqqZWB2ugitr1Fd3BilhdyC9e9/RL2Wr7/TGqj
 TlE/qvUT0gADFASPLDFKNfgaHXB5jRplHmDCujie4eq3wLdfDEnw2dHKjQ5TfIcTE2
 8qLxK4kv+F7CQms5Pz74C8XZwNNifNtfbE817jY4=
Date: Mon, 11 Nov 2019 13:39:36 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Tian Yunhao <t123yh@outlook.com>
Subject: Re: [PATCH] clk: sunxi-ng: v3s: Fix incorrect number of hw_clks.
Message-ID: <20191111123936.GM4345@gilmour.lan>
References: <BN8PR08MB57792366D78997180A698AF8897A0@BN8PR08MB5779.namprd08.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <BN8PR08MB57792366D78997180A698AF8897A0@BN8PR08MB5779.namprd08.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_043946_278137_B0534FD3 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============0862152574405685978=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0862152574405685978==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Y+Z5jE7Arku/2GrR"
Content-Disposition: inline


--Y+Z5jE7Arku/2GrR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Thanks for your patch

On Sat, Nov 09, 2019 at 03:19:09PM +0000, Tian Yunhao wrote:
> The hws field of sun8i_v3s_hw_clks has only 74
> members. However, the number specified by CLK_NUMBER
> is 77 (= CLK_I2S0 + 1). This leads to runtime segmentation
> fault that is not always reproducible.
>
> This patch adds a protective field [CLK_NUMBER] which ensures
> ARRAY_SIZE(.hws) is always greater than .num, thus eliminates
> this error.
>
> Signed-off-by: Yunhao Tian <t123yh@outlook.com>
> ---
>  drivers/clk/sunxi-ng/ccu-sun8i-v3s.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> index 5c779eec454b..de7fce7f32e6 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> @@ -617,6 +617,7 @@ static struct clk_hw_onecell_data sun8i_v3s_hw_clks = {
>  		[CLK_AVS]		= &avs_clk.common.hw,
>  		[CLK_MBUS]		= &mbus_clk.common.hw,
>  		[CLK_MIPI_CSI]		= &mipi_csi_clk.common.hw,
> +		[CLK_NUMBER]    = NULL,
>  	},
>  	.num	= CLK_NUMBER,
>  };
> @@ -699,6 +700,7 @@ static struct clk_hw_onecell_data sun8i_v3_hw_clks = {
>  		[CLK_AVS]		= &avs_clk.common.hw,
>  		[CLK_MBUS]		= &mbus_clk.common.hw,
>  		[CLK_MIPI_CSI]		= &mipi_csi_clk.common.hw,
> +		[CLK_NUMBER]    = NULL,
>  	},
>  	.num	= CLK_NUMBER,

I'd rather have the number of clocks (.num) being properly set.

Maxime

--Y+Z5jE7Arku/2GrR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXclWiAAKCRDj7w1vZxhR
xXUPAQDUEnwEjsRX6RINO7bgy2jstA7NJOwLIIXxn0KYXmQhjgEAoyQC8Pu7fer1
8+PaAcBRjjJdzHQrqqYV/PYvjI9dkQE=
=QKWO
-----END PGP SIGNATURE-----

--Y+Z5jE7Arku/2GrR--


--===============0862152574405685978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0862152574405685978==--

