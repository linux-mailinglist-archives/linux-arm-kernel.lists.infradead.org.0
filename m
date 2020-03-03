Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E5F177661
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 13:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ji+KUAZ2oEcwoCyU49BP+2cgbi+nMCZPeyuOwze5o+w=; b=QW5Q4i6pLzLUxr07uViCIN5gY
	NzmVZGy9lTrIU4mrI3qsTUKf6NW5RhgLZiO77JHn3DdfIOqZlQp1Yv3SAG2MRn02ra3j2/iiH9dLa
	aCE/0lH1FXOWOz9HC81/31yf9FFNomaS6yuQOLTY9xALJeokbNbiRTjYci3gA54RyJe4rQ0zi2jIP
	z4g+hMSPtrcxCIkHjoQwAqZyp4w4+Fp/vMRjRFcg2cRu1tltWrYXGoU6bGRDkahA4/C30v0pRPvt/
	LFjrgPWK5+bUQtGS9sSfCa+PsdE61hclprOhNDDpMbR2Tfn6UkKrqTdT+qnxCurL8IaVxOEHcwssC
	RJvoTqNrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j96xj-00028u-FS; Tue, 03 Mar 2020 12:47:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j96xZ-00028U-HH
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 12:47:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EBA03FEC;
 Tue,  3 Mar 2020 04:47:40 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6FB513F534;
 Tue,  3 Mar 2020 04:47:40 -0800 (PST)
Date: Tue, 3 Mar 2020 12:47:39 +0000
From: Mark Brown <broonie@kernel.org>
To: Shengjiu Wang <shengjiu.wang@gmail.com>
Subject: Re: [PATCH v4 1/8] ASoC: dt-bindings: fsl_asrc: Change asrc-width to
 asrc-format
Message-ID: <20200303124739.GE3866@sirena.org.uk>
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
 <872c2e1082de6348318e14ccd31884d62355c282.1583039752.git.shengjiu.wang@nxp.com>
 <20200303014133.GA24596@bogus>
 <CAA+D8ANgECaz=tRtRwNP=jMXBD0XciAE0HUYROH8uuo03iDejg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA+D8ANgECaz=tRtRwNP=jMXBD0XciAE0HUYROH8uuo03iDejg@mail.gmail.com>
X-Cookie: Drilling for oil is boring.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_044741_610799_3CC54661 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Timur Tabi <timur@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, shawnguo@kernel.org,
 Shengjiu Wang <shengjiu.wang@nxp.com>, Xiubo Li <Xiubo.Lee@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Nicolin Chen <nicoleotsuka@gmail.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linuxppc-dev@lists.ozlabs.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0778856875926851176=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0778856875926851176==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XuV1QlJbYrcVoo+x"
Content-Disposition: inline


--XuV1QlJbYrcVoo+x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 03, 2020 at 11:59:30AM +0800, Shengjiu Wang wrote:
> On Tue, Mar 3, 2020 at 9:43 AM Rob Herring <robh@kernel.org> wrote:

> > > -   - fsl,asrc-width  : Defines a mutual sample width used by DPCM Back Ends.
> > > +   - fsl,asrc-format : Defines a mutual sample format used by DPCM Back
> > > +                       Ends. The value is one of SNDRV_PCM_FORMAT_XX in
> > > +                       "include/uapi/sound/asound.h"

> > You can't just change properties. They are an ABI.

> I have updated all the things related with this ABI in this patch series.
> What else should I do?

Like Nicolin says you should continue to support the old stuff.  The
kernel should work with people's out of tree DTs too so simply updating
everything in the tree isn't enough.

--XuV1QlJbYrcVoo+x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5eUeoACgkQJNaLcl1U
h9AJywf/bSiQfVDbeUAktcdvjHCRmCvZQ5r/DETvXQh3jrq8ZMfLbfd8mIoxnaPL
QCqx6aL0X4owNuPMZ8fq3jStJL1uCFJudtfA9a+H/n57opep5mhmsAw0VTUSRKxV
3YPmdTKQtoGd3GnxrcUo9Z62ssQY3K0bCy5wGjcCxOW8alaFlJqj2st0dMbC6UNb
UbxOrZp2jWpVH3U+/0qh5i5QiV9h+ctw/f1BmEPzZYb32S4Ie9Q2ldINFhbMbnMQ
gwAeyISGShAYVLuWzbVCe8e09slQqGYmKprtmCn4xgokE2+UvnQNCIuxyx+TLeXY
6xJH0vBb6D/26k+09f8BENOxCCBv4w==
=EdGJ
-----END PGP SIGNATURE-----

--XuV1QlJbYrcVoo+x--


--===============0778856875926851176==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0778856875926851176==--

