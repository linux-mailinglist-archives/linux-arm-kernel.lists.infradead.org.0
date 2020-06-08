Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984491F1B1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D2ojNVOLxkFKb6hG898R7s3FFg/6CpVp36zj8HaF1ZE=; b=oHkcrB2uk3v6O1sJUJyMSO56J
	TMsX/P1U90n7ObmIbVI3QgF1gfpi12kEbGOjbfBdg9QYTxT5T2s3REcuoAWhFcvt30NDiWbiqxuGA
	7HPqv7qYNVHZXWNznlrwZhlj72Ofudffvw75x1Qa2pDcrW9OVaRt+y0qYH7fNRobp4a1OjTY5ExNP
	pkNBGqkk3PzoJYz0rKFZ5jMRcVCgTaHHn3+k98Wh7f5wLKGWTpKFKLcBGkXltqMpUnlwlBKpiecP9
	uh0ORYh9KvjU6Q4YL67d7A6ZoRLbatHQIV8mznmlVIAtRX7RlcwqLWfBBFrkjqTs/K+Djlpi5eGbp
	V8TTYojaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIrs-0005sr-Lu; Mon, 08 Jun 2020 14:35:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIrd-0005Du-Pi
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:35:03 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A42492053B;
 Mon,  8 Jun 2020 14:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591626901;
 bh=se07oWpX9Vc9YGWIWXRJxx09yVt7wFgerxA1Los/EJE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q7mbEcSg+/zhqjXLAyy2REvz73FjXmyY1tuwYpyG0jPt2Up6kIWVbYfu324qSUOx8
 mvtayzWIg2FUQiMANalVpYJNrft4AeJhJb7M2QBEn6Mt7YWWrgsw4GlJ1rbHWXBriy
 Nd25PVMOlWx1aygpW8+3b8YRF88v+H8x2LrVoRZU=
Date: Mon, 8 Jun 2020 15:34:58 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v9 RESEND 01/13] spi: imx: add dma_sync_sg_for_device
 after fallback from dma
Message-ID: <20200608143458.GH4593@sirena.org.uk>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
 <1591485677-20533-2-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1591485677-20533-2-git-send-email-yibin.gong@nxp.com>
X-Cookie: I'm rated PG-34!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_073501_885790_344CE4E3 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 matthias.schiffer@ew.tq-group.com, martin.fuzzey@flowbird.group,
 catalin.marinas@arm.com, s.hauer@pengutronix.de, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, vkoul@kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, festevam@gmail.com,
 u.kleine-koenig@pengutronix.de, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, shawnguo@kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0464129016444120403=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0464129016444120403==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VkqCAaSJIySsbD6j"
Content-Disposition: inline


--VkqCAaSJIySsbD6j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 07, 2020 at 07:21:05AM +0800, Robin Gong wrote:
> In case dma transfer failed and fallback to pio, tx_buf/rx_buf need to be
> taken care cache since they have already been maintained by spi.c

Is this needed as part of this series?  This looks like an independent
fix and it seems better to get this in independently.=20

> Fixes: bcd8e7761ec9("spi: imx: fallback to PIO if dma setup failure")
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> Reported-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> Link: https://lore.kernel.org/linux-arm-kernel/5d246dd81607bb6e5cb9af86ad=
4e53f7a7a99c50.camel@ew.tq-group.com/

The Link is usually to the patch on the list.

> --- a/drivers/spi/spi-imx.c
> +++ b/drivers/spi/spi-imx.c
> @@ -1456,6 +1456,13 @@ static int spi_imx_pio_transfer(struct spi_device =
*spi,
>  		return -ETIMEDOUT;
>  	}
> =20
> +	if (transfer->rx_sg.sgl) {
> +		struct device *rx_dev =3D spi->controller->dma_rx->device->dev;
> +
> +		dma_sync_sg_for_device(rx_dev, transfer->rx_sg.sgl,
> +				       transfer->rx_sg.nents, DMA_TO_DEVICE);
> +	}
> +
>  	return transfer->len;
>  }

This is confusing - why are we DMA mapping to the device after doing a
PIO transfer?

--VkqCAaSJIySsbD6j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7eTJIACgkQJNaLcl1U
h9AmVQgAgF2rPJqmixW0OscJdAzTqAWK/RzhC/aIQ0M2AWtflewynWvGc7rEB0gU
edNL29WS+Daa76JCcvlaMpJkmrRbylXM8sVNWcnIHwyXvp8sizcvcqcyNl5jE8ls
vfCYPQjBxCwE6vBYG7zaLTooQ/tgT6KDQtijCN7Vg+cqsTba5YU6cQS8LIYxBL0L
c6lvNJBB/eY2dYwWRlNPURlD+8Ur9bwZ464iui3Ivk3Zx3j59QfTYc4/AOGXYRkE
ZdhxXYE7TH9f7eeDWHDZwOc9W+LEp7+6Yj7ON7gPgHndlK/dGrTYNEFa6Q4dPHGp
ng06qs5xaleX4+/qjTTPf+UIkpv6/g==
=0xWQ
-----END PGP SIGNATURE-----

--VkqCAaSJIySsbD6j--


--===============0464129016444120403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0464129016444120403==--

