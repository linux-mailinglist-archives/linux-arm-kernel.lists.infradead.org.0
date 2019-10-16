Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4C4D8A7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 10:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tLEwhmj1ynEN1BmvqKl10+EPTR4S1Bwbi+jfKCbQOlU=; b=pzcSFZxSQNoRh0vBlHYwavksp
	J8lN3HHvVr7AxSttvQOM9FOOpSCMiX1mdxR1GVNR8qVvOTkKnrP30f5MZ3u0vS/LJIU+Bld0IWS+2
	K5Ay52Zn2FK7MkGC+4NM0PMm4U0ck73yYSvgwbL90HBrvMiDbcznmmfyuRktlPfzJwlEwuoo7AeJl
	i5qVaCj+9WuJE6RhkEAevMEnJ8D391EMiwW+LpFwFsq6nXkaAri92Fa9KlDWwJdu/Y0WprUAA7Xoc
	Bhuw/23OxTiF0jECva0QO+WLWu+bs3qAiA8sfN1UMZlYcxIgTNxlEPBCzZWw6LYMupBQoLv6IbbY8
	rRMUlb7Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKeKn-00014e-1Q; Wed, 16 Oct 2019 08:07:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKeKe-00014J-FP
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 08:06:57 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2ACC2168B;
 Wed, 16 Oct 2019 08:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571213216;
 bh=xmK/fcgmX84/0Ee+b2avihtOo5xXFs3Rgwm4HoHFFVk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2sCOTIwXhDaoFNm4jG9AqcNOAL5y/DtHUL3wIpBu1vOqVsQv3z5Ng4WSchaVw5fYs
 LRj55cn5IftSfuwc6z3vXQADJOUeQLaEUUZdnE4VX53nAVbIJUr1wgn8+HXfZgMfnk
 35aElQtFqu8ybkI0+QOldoez7AnXNX6/TkcAQm8o=
Date: Wed, 16 Oct 2019 10:06:53 +0200
From: Maxime Ripard <mripard@kernel.org>
To: codekipper@gmail.com
Subject: Re: [PATCH v6 2/7] ASoC: sun4i-i2s: Add functions for RX and TX
 channel offsets
Message-ID: <20191016080653.3seixioa2xiaobd7@gilmour>
References: <20191016070740.121435-1-codekipper@gmail.com>
 <20191016070740.121435-3-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191016070740.121435-3-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_010656_536954_3EE3DE09 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5371282728197108737=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5371282728197108737==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eqduu55cdk37tzbj"
Content-Disposition: inline


--eqduu55cdk37tzbj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Oct 16, 2019 at 09:07:35AM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> Newer SoCs like the H6 have the channel offset bits in a different
> position to what is on the H3. As we will eventually add multi-
> channel support then create function calls as opposed to regmap
> fields to add support for different devices.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 31 +++++++++++++++++++++++++------
>  1 file changed, 25 insertions(+), 6 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index f1a80973c450..875567881f30 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -157,6 +157,8 @@ struct sun4i_i2s_quirks {
>  	int	(*set_chan_cfg)(const struct sun4i_i2s *,
>  				const struct snd_pcm_hw_params *);
>  	int	(*set_fmt)(struct sun4i_i2s *, unsigned int);
> +	void	(*set_txchanoffset)(const struct sun4i_i2s *, int);
> +	void	(*set_rxchanoffset)(const struct sun4i_i2s *);

The point of removing the regmap_field was that because having a
one-size-fits-all function with regmap_field sort of making the
abstraction was becoming more and more of a burden to maintain.

Having functions for each and every register access is exactly the
same as using regmap_field here, and the issue we adressed is not with
regmap_fields in itself.

If the H6 has a different register layout, then so be it, create a new
set_chan_cfg or set_fmt function for the H6.

Maxime

--eqduu55cdk37tzbj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXabPnQAKCRDj7w1vZxhR
xVgGAQC+c07u++gTF9sgMgydEJb6ZU4fnFFVj0WW2BXaQIv3MAD/fN+TY5xe5CTb
lMZpAVYl2AoGZu9oSTUSKXAUP4bzPwU=
=Qi0K
-----END PGP SIGNATURE-----

--eqduu55cdk37tzbj--


--===============5371282728197108737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5371282728197108737==--

