Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FEE99632
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E2mPebbEk8qqRIq7jA+yignmSB/VXCrok6/5xcruSjk=; b=o1mCmGbVCK9UPJq3iHoLFJi8L
	zOnWE3jgEpF0YAZdT2VcGlLAAUaZjA/HujiRdzDeeb8b1r+zX7YpV81cOFYyfc5JCml45HDn8H8rh
	RScIvq7DK2OcOWbuWMUd7KCgB3tCbudOTOMQSlSTqZj09Q1uylgUYumHhzbjg39YbZ8jYjqxC5X4m
	S8tdxHvI37m3dzT8fFinlqM6ySOJZaGMgsEPlrnH18WvN6IrSRatJRvOf6KXFzCwxWIKN6cvXe1C2
	gi0w5lo0HuiHsqDXncZUiZp2gVy56RCeXgGUs5FhXHjtF6A8hagiOs5s6iJ53AHaLPemJ/g0+7Tlb
	CCD4dOSPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0nvE-0007OL-Qm; Thu, 22 Aug 2019 14:18:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0nv3-0007O0-30
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:18:30 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3513421743;
 Thu, 22 Aug 2019 14:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566483508;
 bh=gmxMQJV4pqxZQO3wcgdhCDUc992RIMAHvgrcXbGDS7Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CPBQBdB5hA6kDZZpQjWgtb5+2+cbcqWt3sKnBOG+g5UPJbkk+JN7aswR0V0k/sMAJ
 1AhgX5ZA7VkTf7URGjG6bqR5uz4tjLsWWiWLhBF3VeH8UvPYRIHqtmtKNcSkMj8S0t
 qrnCyIk3UgRRSD/5njrMoABJZqyw5QNTAno6Vlow=
Date: Thu, 22 Aug 2019 16:18:26 +0200
From: Maxime Ripard <mripard@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] ASoC: sun4i-i2s: Use PTR_ERR_OR_ZERO in
 sun4i_i2s_init_regmap_fields()
Message-ID: <20190822141826.is6nizjpdgvhd7ra@flea>
References: <20190822065252.74028-1-yuehaibing@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20190822065252.74028-1-yuehaibing@huawei.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_071829_147504_C0F1C3E3 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Marcus Cooper <codekipper@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6877879286093634979=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6877879286093634979==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="63ssjdwokv3xdxzu"
Content-Disposition: inline


--63ssjdwokv3xdxzu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Aug 22, 2019 at 06:52:52AM +0000, YueHaibing wrote:
> Use PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) + PTR_ERR
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index 9e691baee1e8..2071c54265f3 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -1095,10 +1095,7 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
>  	i2s->field_fmt_sr =
>  			devm_regmap_field_alloc(dev, i2s->regmap,
>  						i2s->variant->field_fmt_sr);
> -	if (IS_ERR(i2s->field_fmt_sr))
> -		return PTR_ERR(i2s->field_fmt_sr);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(i2s->field_fmt_sr);

I'm not really convinced that this more readable or more maintainable
though. Is there a reason for this other than we can do it?

Maxie

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--63ssjdwokv3xdxzu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV6kMgAKCRDj7w1vZxhR
xYfCAQCzZc0NwL/KfHnmN5cCqmspt4rw9g7yY9ueTUdm/d4SMAD/U5pvKe6kNk6f
0GRxtaBnisn3CWTssq3fqkAzCBywhgk=
=VH9U
-----END PGP SIGNATURE-----

--63ssjdwokv3xdxzu--


--===============6877879286093634979==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6877879286093634979==--

