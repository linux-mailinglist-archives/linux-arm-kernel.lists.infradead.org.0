Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B00171EE582
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UTeCpgCYZQVyPzQ15vXIzCufOFcmA4ovSZaU75gqUQo=; b=thgYQw2kDMuxiHXS/+Dq/B6+/
	VOTg4ozCWoreVY0fZUWhXXEGcOIDEtRtli14Y2rbN3F+8M6rJykFRUZpHk1aQvuynmT9W94xAJrFI
	IlUowRvvIeOG7KqzCg48ArP6Xy8An4YS0h+7ssIE5GPv9o6j+9L3HTdRZZWgEIIRSKzTZIISbRLyv
	JKEX9dZr9+RGCFIV01LgnO9MQ4ZBxirGvO6ExGfZbj1s8/uJVX8t7SiPD8QAtERIE/hCgTu9MQEaG
	zrEKqWbaKmnZK/yC/vXEZ++wZlmqF3SE9OA02lC3Z+D+VW2oBg+VlbMeQF/j2yhMieLYl8PyW+bkh
	4VMHbYzBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgq66-0004ZF-U1; Thu, 04 Jun 2020 13:39:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgq5y-0004Yl-Od; Thu, 04 Jun 2020 13:39:48 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2D0B206E6;
 Thu,  4 Jun 2020 13:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591277986;
 bh=a8wHNkwWkFqf5+XQaD/hLiY3eO+xKNajms4eYM3X5Kg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zwdC6HrVD8bGrwrQZZr5uLGot92oYLSbeHZrBiWEVTv3OpEUSA94yK6rIRMaK31xh
 YDTq6srJeMsUYylPDg27kY820ipoxkJ9+mcY8OSvZIi5E322iSR+zv9unnBeE3MMs3
 GcFuchpIvNQXNVI7neT42ZSFZWTcZh5dvMK74Xwg=
Date: Thu, 4 Jun 2020 14:39:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH] regulator: mt6360: Add support for MT6360 regulator
Message-ID: <20200604133943.GE6644@sirena.org.uk>
References: <1591254387-10304-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1591254387-10304-1-git-send-email-gene.chen.richtek@gmail.com>
X-Cookie: VMS version 2.0 ==>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_063946_836433_2F5288FB 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: gene_chen@richtek.com, lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 cy_huang@richtek.com, benjamin.chao@mediatek.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: multipart/mixed; boundary="===============5884349621322005311=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5884349621322005311==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WK3l2KTTmXPVedZ6"
Content-Disposition: inline


--WK3l2KTTmXPVedZ6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 04, 2020 at 03:06:27PM +0800, Gene Chen wrote:

This looks nice and simple, a few fairly small comments below but high
level it's basically fine.

> --- /dev/null
> +++ b/drivers/regulator/mt6360-regulator.c
> @@ -0,0 +1,571 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2020 MediaTek Inc.

Please make the entire comment a C++ one so things look more
intentional.

> +	for (i = 0; i < devdata->num_irq_descs; i++) {
> +		irq_desc = devdata->irq_descs + i;
> +		if (unlikely(!irq_desc->name))
> +			continue;

Do we really need an unlikely here?  This shouldn't be a hot path.

> +static int mt6360_regulator_set_mode(
> +				  struct regulator_dev *rdev, unsigned int mode)
> +{

> +	switch (1 << (ffs(mode) - 1)) {
> +	case REGULATOR_MODE_NORMAL:

I don't understand why this isn't just a straight switch on mode?

> +static unsigned int mt6360_regulator_get_mode(struct regulator_dev *rdev)
> +{
> +	const struct mt6360_regulator_desc *desc =
> +			       (const struct mt6360_regulator_desc *)rdev->desc;
> +	int shift = ffs(desc->mode_get_mask) - 1, ret;
> +	unsigned int val = 0;
> +
> +	default:
> +		ret = 0;
> +	}

If we can't parse a valid value from the hardware then that's an error.

> +static int mt6360_regulator_reg_write(void *context,
> +				      unsigned int reg, unsigned int val)
> +{
> +	struct mt6360_regulator_data *mrd = context;
> +	u8 chunk[4] = {0};
> +
> +	/* chunk 0 ->i2c addr, 1 -> reg_addr, 2 -> reg_val 3-> crc8 */
> +	chunk[0] = (mrd->i2c->addr & 0x7f) << 1;
> +	chunk[1] = reg & 0x3f;
> +	chunk[2] = (u8)val;
> +	chunk[3] = crc8(mrd->crc8_table, chunk, 3, 0);
> +	/* also dummy one byte */
> +	return i2c_smbus_write_i2c_block_data(mrd->i2c, chunk[1], 3, chunk + 2);
> +}

Oh, wow - that's a fun I/O interface!

> +static const struct of_device_id __maybe_unused mt6360_regulator_of_id[] = {
> +	{
> +		.compatible = "mediatek,mt6360_pmic",
> +		.data = (void *)&mt6360_pmic_devdata,
> +	},
> +	{
> +		.compatible = "mediatek,mt6360_ldo",
> +		.data = (void *)&mt6360_ldo_devdata,
> +	},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, mt6360_regulator_of_id);

I don't see any DT bindings documentation for this, documentation is
required for all new bindings.

> +	mrd->regmap = devm_regmap_init(&(mrd->i2c->dev),
> +				       NULL, mrd, devdata->regmap_config);
> +	if (IS_ERR(mrd->regmap)) {
> +		dev_err(&pdev->dev, "Failed to register regmap\n");
> +		return PTR_ERR(mrd->regmap);
> +	}

This looks like a MFD so it's surprising to see us defining a regmap at
this level.  Why are we doing this?

--WK3l2KTTmXPVedZ6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7Y+Z8ACgkQJNaLcl1U
h9DRUgf/Q07BCU3NVKHL/ESM60sLn9muFqxQNcAmFlGBR5bDLKsDToWTKNlTLQuv
W2REKAvgWpj9dLzCIWOnMEJob8jsw3SSx5fzUNDq+WJLlzhf4MPQkG+/B5kOs7A8
aCE35WQGvrfMs8zbQmA9VJxUVOHqnyoaUK86E73iUPAWShBSxH2AaVsi1WUqN53g
LPnVfJ2MvnJLE3z6nmcMof9PXxdA48vrM2Wes0XL3rVUQkuxz9xPKThmtGUUqDoe
Rx7F5rOP4r8Rq1lT1ac/U1X3AvqMyTK+9jniD9efE6zlLzlquzOjHyMxul1Z6Ok1
MusCOVNvor+RxHuCDiY2mnZXflShXQ==
=4cA0
-----END PGP SIGNATURE-----

--WK3l2KTTmXPVedZ6--


--===============5884349621322005311==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5884349621322005311==--

