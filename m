Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614B81D2C95
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 12:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D0M3LDgOOBvmH60ukqhFON/+ASCjXiYGaAtK//pmg4Y=; b=NLXPbLYhj8pwcVz7SyronmOzx
	HP90GH8WudhEuX9xqHrnrFETWfJFpAq1uPgxbi9fNze9L62BOUy9hqFmqkyKgiAiqK83vs3RVIyYD
	8friRzJDpObJ+PZq9a+WL7yKMgXR4D3nVcZvxgoQoquN/Z8Y5bxzoj1KGHRMuepT6q6HaOpoVFk6n
	7QrGQKrYLLcGVRFIU1a4BcHF7M7FOPVQsdO6mAS8BmvaxTZVQZH3L/gMl3AwZXx1Z05v7F+zWEb3W
	ex09ipRZl9Y6VJyIb90CYV+M3+7PMMHAq9LB9hV1qIvGalei4GwuHP6HXYSoYRY29amEUQHOoeuXE
	h6iBvy7rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZB3Q-0007M7-Dw; Thu, 14 May 2020 10:25:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZB3H-0007L6-Mw
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 10:25:20 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD9CE206A5;
 Thu, 14 May 2020 10:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589451919;
 bh=5nwmS+KTbr3sSObZfnbM+iwQhP3voPRrqRowGVTGoCg=;
 h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
 b=QmjHinNgj6gY9z1qjHeBghNERl7zN6UbfUjokiOvSPJS8KViIGLEY88TcmmdSGoRH
 FCQcqIUOj8gmee82Ibs8+4so7LsNhvI6/IZkCxCaJh5HEzNU9otRDJO5Mn2j36nbNU
 gSTVsaj3U4GizjvJFh4h2aggsLHrSQMEoWnPI/Kw=
Date: Thu, 14 May 2020 11:25:16 +0100
From: Mark Brown <broonie@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 07/10] spi: spi-dw-mchp: Add Sparx5 support
Message-ID: <20200514102516.GD5127@sirena.org.uk>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-8-lars.povlsen@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200513140031.25633-8-lars.povlsen@microchip.com>
X-Cookie: I think we're in trouble.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_032519_773219_D8788B11 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 SoC Team <soc@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2804382108406206793=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2804382108406206793==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WChQLJJJfbwij+9x"
Content-Disposition: inline


--WChQLJJJfbwij+9x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 13, 2020 at 04:00:28PM +0200, Lars Povlsen wrote:

> +static void dw_spi_mchp_set_cs_owner(struct dw_spi_mchp *dwsmchp,
> +				     const struct dw_spi_mchp_props *props,
> +				     u8 cs, u8 owner)
>  {
> +	u8 dummy = (owner == MSCC_IF_SI_OWNER_SIBM ?
> +		    MSCC_IF_SI_OWNER_SIMC : MSCC_IF_SI_OWNER_SIBM);

Please write normal conditional statements to improve legibility.

> +static void dw_spi_mchp_set_cs(struct spi_device *spi, bool nEnable)
> +{
> +	bool enable = !nEnable;	/* This keeps changing in the API... */

No, it doesn't.  The API has not changed for more than a decade.

> +	} else if (props->ss_force_ena_off) {
> +		if (enable) {
> +			/* Ensure CS toggles, so start off all disabled */
> +			regmap_write(dwsmchp->syscon, props->ss_force_val_off,
> +				     ~0);

What's all this force_ena_off stuff about?  The controller should not be
making decisions about management of the chip select, this will break
users.

> +	if (pdev->dev.of_node) {
> +		int i;
> +
> +		for (i = 0; i < dws->num_cs; i++) {
> +			int cs_gpio = of_get_named_gpio(pdev->dev.of_node,
> +					"cs-gpios", i);
> +
> +			if (cs_gpio == -EPROBE_DEFER) {
> +				ret = cs_gpio;
> +				goto out;
> +			}
> +
> +			if (gpio_is_valid(cs_gpio)) {
> +				ret = devm_gpio_request(&pdev->dev, cs_gpio,
> +						dev_name(&pdev->dev));
> +				if (ret)
> +					goto out;

Set use_gpio_descriptors and let the core manage the GPIO.

--WChQLJJJfbwij+9x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl69HIsACgkQJNaLcl1U
h9Aw9Af8DHFCOUCYIqBXZKPsZmTsKPTCHD++MbKsFPg1h25hnM7mZkbXpXWbVvvO
FGaPEjHqVXh7XOs/oKcQxxYqqmLQ0Xz8IvRbKlu40uhPsiMNLXN7PUdjn6Nr8m4B
Q0BtnJeYnxTi7EopeR7ikkqqFRB8TjpHDluMeFaHJiB4zCeUKD0/tHwhK1MegIUy
wgkeoe1oZG31GUhvqFz/WfPnZs1O3dDeduVv8XrUkDG3XqkHwN9y/wwXK3KcxN2Q
Mly4vcbofus2CoGU1kN/poPnnQ61Ddb17ybFLhTO7bZ6BuEC+p+vdjkhVLvIvljT
qv6UDWYjXH32KDg+2vhur23u9WDP+w==
=JCbC
-----END PGP SIGNATURE-----

--WChQLJJJfbwij+9x--


--===============2804382108406206793==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2804382108406206793==--

