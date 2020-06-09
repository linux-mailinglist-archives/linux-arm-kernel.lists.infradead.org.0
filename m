Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 726E31F3CBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F6GQ3oknfbFIj/hDddREA9XuDRH127r5GFW1tKDnhzA=; b=jLGmjFKV9K1S0tBGzKVKmBK86
	h3zacXd9m5gN4jbTj9K67pfNLbsyw1YbMliQ/+fBmohvwtvXbuioINbOR77yvCcZSIyM7eORq7GJi
	+fC3jI9xnbB0873QsyRJaz0iT9nYG6juJ7V+GHu/YzDwPCBWZ4yxPL3lCoMOJZ65hN0wT9C8bqecS
	sxiPadaRrMfIuEygolmKjwH4AqcdGlhEO/ue5/CggWvS3HhIwNlLcKMJPszreF9PeFDZV/3x6kuOS
	F+a31fOvMqzrma6bUAfoQuLFjfcHYo2JqerhgeLAOGvwDP9VH5m8cGfbxK9v2MRJQ0LOUsMnfosHn
	QCNpS/rdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieQg-0003fP-Tn; Tue, 09 Jun 2020 13:36:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieQY-0003ez-4i
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:36:31 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 302F220760;
 Tue,  9 Jun 2020 13:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591709789;
 bh=Li2Zv/6mZ+A+7R/O4fGGBVAxKZqiekxdMlcIJEyMsuw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wvyrDCX2Kyt8XdCcriT/loGbIqItmnhi6dxs74zoVk3ao9QrbLlBuUdzAO7csHcG8
 8J9cfDv4FK0Oazwhr1o1bqrJ4gQgjb60Rw+jFyneV0En2dSvoJSxNOc/LXZ2e7b8hU
 pyoTKOiQHj5Q/qf8HCS3CKeh3ZntT4ycRcBMu3ww=
Date: Tue, 9 Jun 2020 14:36:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v9 RESEND 01/13] spi: imx: add dma_sync_sg_for_device
 after fallback from dma
Message-ID: <20200609133627.GG4583@sirena.org.uk>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
 <1591485677-20533-2-git-send-email-yibin.gong@nxp.com>
 <20200608143458.GH4593@sirena.org.uk>
 <VE1PR04MB66388F89015F774EE3FFF69D89850@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200608153139.GI4593@sirena.org.uk>
 <59ce3620-00b9-bac1-30e1-011a29583642@arm.com>
 <VE1PR04MB6638B1EC49D295C64292B7BD89820@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <bcfc3637-65af-577a-ddbd-890b6c83a6e6@arm.com>
MIME-Version: 1.0
In-Reply-To: <bcfc3637-65af-577a-ddbd-890b6c83a6e6@arm.com>
X-Cookie: Be careful!  Is it classified?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_063630_219889_627AB4FB 
X-CRM114-Status: GOOD (  13.46  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "matthias.schiffer@ew.tq-group.com" <matthias.schiffer@ew.tq-group.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 Robin Gong <yibin.gong@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2129825207542271098=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2129825207542271098==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9/eUdp+dLtKXvemk"
Content-Disposition: inline


--9/eUdp+dLtKXvemk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 09, 2020 at 11:00:33AM +0100, Robin Murphy wrote:

> Ah, I think I understand what's going on now. That's... really ugly :(

> Looking at the SPI core code, I think a better way to handle this would be
> to have your fallback path call spi_unmap_buf() directly (or perform the
> same actions, if exporting that to drivers is unacceptable), then make su=
re
> ->can_dma() returns false after that such that spi_unmap_msg() won't try =
to
> unmap it again. That's a lot more reasonable than trying to fake up a
> DMA_TO_DEVICE transfer in the middle of a DMA_FROM_DEVICE operation on the
> same buffer.

Ideally the driver would be checking in can_dma() if the DMA controller
is able to perform transactions rather than letting things run as far as=20
trying to actually do the transfer, that's a whole lot cleaner and more
manageable than running into an error doing the transfer.  I'm surprised
that there's no DMA API way to figure this out TBH.

We'll also need some handling for this changing at runtime, we're not
expecting this to be dynamic at all - we're expecting it to be a static
property of the controller/transfer combination, we didn't contemplate
this varying randomly at runtime.  Instead of rechecking can_dma() we
ought to have a flag saying if we did the mapping (which the bodge Robin
suggests above could clear).

--9/eUdp+dLtKXvemk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7fkFoACgkQJNaLcl1U
h9DtGQgAg3cybc1xp7BBF/QRvws6J4hPoAwnctYQTcfaBVM70lGt4MoQdY+j0ymD
YB6menlav/89t8bYFq7D5gtHajROU0WHsoMpV0MqojMtTOJG+Bo7uALWKblPRuTH
kFOBCkPPZXT/yJGw47VaNlQuvjI/Zh8SlLBzjqMAmkDF9OjNN8ZAp8c2KBihDg8O
YeQZEPlcgtdR/rJlia6YucfA52ZDivjbKaCQIg6hQhiuFU86nxRFqaohBUqxRb5a
SacvLkra2J+oUkr6z/P76+DkFlZ6cQ3hWGuKWIyr89Ie1/4cvuKvahvYfrpgR2ph
rY445Tv19HnK2Aaz0RUu6zumFOa3pA==
=2yHW
-----END PGP SIGNATURE-----

--9/eUdp+dLtKXvemk--


--===============2129825207542271098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2129825207542271098==--

