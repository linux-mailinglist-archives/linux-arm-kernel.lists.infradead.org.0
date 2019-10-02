Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D96C4783
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 08:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tOqChkjki61QXZVWaA/hoaqX9g3Pa/+83BeyjTY+iq4=; b=tbhi/tDfrzEyLtHDl2t+Wzy2P
	8e9k5aQnXMfMXwjFYTO3K+poB+TlZaaALAdOLrReVd0HC+eiX2EcStB73LgTJ4FDDH9+TtKi6EX0j
	v90ptlM3SrHqLfn/J4uHhk8CbEm2qfJXcTfp4h3qb9fQ7ztomwzr7KWzUCi7tr0OrMxJ2g7DIjQlz
	F+ANfUAHZDq+u6iuMnVMRHoxf+BVaqDogJcDey6rWvM7ClJPxTXl+SmZEI3OtNMdHEd/KQIQuu5Jr
	UdHr+hPwsu+KkRWFYIDutq1a2hhR6xcU4wDdcJ5DRiT+pdJnHIQHriCVxrg/V7VKSNgi9eWbs/ud5
	60vC13l0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFXmj-0006NI-L6; Wed, 02 Oct 2019 06:06:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFXmQ-0006IB-Ev
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 06:06:34 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D285A215EA;
 Wed,  2 Oct 2019 06:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569996389;
 bh=mrR8xebiuz9rTlfAOEfd7Sbt87fGTQ7Pn9IgS0HFSyY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lFv7h78FZn9gJtdttxlXUBjMRibrhHSjJTUoCcx5i5lnY6MujyHv60z8JWd2Ipyge
 LtDT7l64DdHrmIJIBMjbDrEodTxOgzKERcvSRicmE0PdFlNVlHxbvpW0/P0e2hBSwM
 iXBac1sHKS53V4ln39KE9rT2lkVn7dugShF1I43Q=
Date: Wed, 2 Oct 2019 08:06:26 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH] clk: sunxi-ng: h6: Allow GPU to change parent rate
Message-ID: <20191002060626.kd37juvhu3jlbxrp@gilmour>
References: <20191001200656.730198-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191001200656.730198-1-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_230630_671401_AFD186A6 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 wens@csie.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2901185796368007060=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2901185796368007060==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="koys76tdgwpzy4oy"
Content-Disposition: inline


--koys76tdgwpzy4oy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Oct 01, 2019 at 10:06:56PM +0200, Jernej Skrabec wrote:
> GPU PLL was designed with dynamic frequency switching in mind so driver
> can adjust rate based on the GPU load.
>
> Allow GPU clock to change parent rate (GPU PLL is the only possible
> parent of GPU clock).
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/clk/sunxi-ng/ccu-sun50i-h6.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
> index d89353a3cdec..e254c06c8621 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
> @@ -290,7 +290,7 @@ static SUNXI_CCU_M_WITH_MUX_GATE(gpu_clk, "gpu", gpu_parents, 0x670,
>  				       0, 3,	/* M */
>  				       24, 1,	/* mux */
>  				       BIT(31),	/* gate */
> -				       0);
> +				       CLK_SET_RATE_PARENT);
>
>  static SUNXI_CCU_GATE(bus_gpu_clk, "bus-gpu", "psi-ahb1-ahb2",
>  		      0x67c, BIT(0), 0);

Applied, thanks!
Maxime

--koys76tdgwpzy4oy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZQ+YgAKCRDj7w1vZxhR
xWXAAQCx7lXrCQV8wI7Ez5oXy+i4MIWGIqE/gik3AIuhe8Yy6gEAjojC/6WxQno2
IjkWiZ4VGFrkyIK8BuYE1IuDsPHSpQ8=
=k/gb
-----END PGP SIGNATURE-----

--koys76tdgwpzy4oy--


--===============2901185796368007060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2901185796368007060==--

