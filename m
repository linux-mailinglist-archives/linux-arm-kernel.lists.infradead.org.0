Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC996DA849
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WuPEscaG4IoqkDw2253pkR9/ebaGBWWYo+mUzpQA1Vc=; b=ZgQQ5A2UWyFW20w0JdC1leZ4a
	WhaC/yvDQnzFKgVWCvtwsEoJ/vMWYkiaAf/Y7J1a9RB0eEbgQnlaR95cUQ4NvP9qJKfDpX1XVDTlN
	LORJLwzD3rbeGGaGpOaySh1AxgTTYrrjNeDvvZcUW+yifidBuqJvqlD/DjOmx7A4My0vAju2NdnAJ
	I/KdjaUungVFAPjiYqhnUZI7Anj4UZIeADK+AkjwUCinASOSTN6oKMGt8rayjmMzIzPepoa9I16aS
	SlzoL97jxISq1b7oDhlzzoY81DYzFsq7rPyYVigGES5jQImzvOYSOZm7Sq/rex2O7aRdX46Lj6TDo
	0NoN4L8Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL24s-0002QW-0P; Thu, 17 Oct 2019 09:28:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL24i-0002Pw-E4
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:28:05 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2D3720869;
 Thu, 17 Oct 2019 09:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571304483;
 bh=71Gn97Vrnruwg/w4kqqAAh7f+VgYiYJZubzV77QaMxQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OQhpwzDFsBquCNw5d+S8kTpjuEPeg71p5ObVgjp4ZxTk+OSLm0rVlLn/Zo0I4scSc
 rQauaiEk11f7VlIB0wkdhwDP/qmceaXDUnpUyh9eGx+HkzJ5geqZt3VNhxAb9/6piK
 tXkh5UN3NfoSm4NL/vX5E6uW36F5cY7AegKTljxM=
Date: Thu, 17 Oct 2019 11:28:00 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v3 5/6] media: sun4i: Add H3 deinterlace driver
Message-ID: <20191017092800.old6jcyeoq3ruawv@gilmour>
References: <20191016192807.1278987-1-jernej.skrabec@siol.net>
 <20191016192807.1278987-6-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191016192807.1278987-6-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_022804_497141_FD7C64DC 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0504307886341300300=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0504307886341300300==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="amvhyb5qqkqgtzi2"
Content-Disposition: inline


--amvhyb5qqkqgtzi2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I have a small comment that can definitely be addressed in a subsequent patch

On Wed, Oct 16, 2019 at 09:28:06PM +0200, Jernej Skrabec wrote:
> +	dev->bus_clk = devm_clk_get(dev->dev, "bus");
> +	if (IS_ERR(dev->bus_clk)) {
> +		dev_err(dev->dev, "Failed to get bus clock\n");
> +
> +		return PTR_ERR(dev->bus_clk);
> +	}
> +
> +	dev->mod_clk = devm_clk_get(dev->dev, "mod");
> +	if (IS_ERR(dev->mod_clk)) {
> +		dev_err(dev->dev, "Failed to get mod clock\n");
> +
> +		return PTR_ERR(dev->mod_clk);
> +	}
> +
> +	dev->ram_clk = devm_clk_get(dev->dev, "ram");
> +	if (IS_ERR(dev->ram_clk)) {
> +		dev_err(dev->dev, "Failed to get ram clock\n");
> +
> +		return PTR_ERR(dev->ram_clk);
> +	}
> +
> +	dev->rstc = devm_reset_control_get(dev->dev, NULL);
> +	if (IS_ERR(dev->rstc)) {
> +		dev_err(dev->dev, "Failed to get reset control\n");
> +
> +		return PTR_ERR(dev->rstc);
> +	}
> +
> +	clk_set_rate_exclusive(dev->mod_clk, 300000000);

clk_set_rate_exclusive puts a pretty big constraint on the clock tree,
and we shouldn't really enforce it if the device is unused.

I guess we should move it to the runtime_pm resume hook (with the
put_exclusive call in suspend).

Otherwise, that patch is
Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--amvhyb5qqkqgtzi2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXag0IAAKCRDj7w1vZxhR
xaZsAP4ktQAK6tje3Cb2Qjis6/lKTHrygep8ppy1RAYh+5gmFgD/cmwwWzyQ42I7
oxbLIVKna9bDTyghs0A+0vE3KpGYPgA=
=4k1j
-----END PGP SIGNATURE-----

--amvhyb5qqkqgtzi2--


--===============0504307886341300300==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0504307886341300300==--

