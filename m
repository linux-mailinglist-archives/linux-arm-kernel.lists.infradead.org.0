Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE1E1343B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:23:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xUW6YeQFGJ/82jly0DseQhORkFhqo4JzXH46IQlmchE=; b=gIN4D8w8w/TPpoEZ0in596CLR
	9KxWbJ+PCfXllVZibT3bKpjybuYMasA6qxfT+/xmxTseMPHE8xp4MVJSrbtLTEGIHDYaJ/Pr9e0b6
	PlUTEyI/F071TdCbU5oIQmjbHiEtEPhXolbsjx/WAKAOg3Au61/Z4Tmi7yp+c8TBUWLDYYEXqYPcv
	PJMyXGeOlwBN/bZFVClQUHNC1B6IrRFz4mwJbfU3DnzU9EOeJqQnDXPqYAXSSvkY11u+9PfsBnMul
	6HlsbMPoDAtvEIyqJ3TDUq32KC/28ybxSfkUw6AyrDq0HDWrgL9vRUEGt78qqe8ZAmaJ6w1KDtFLB
	O8U9ULJfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipBIm-0005U4-SA; Wed, 08 Jan 2020 13:23:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipBIf-0005TA-WC; Wed, 08 Jan 2020 13:23:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A8B431B;
 Wed,  8 Jan 2020 05:23:04 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 99F2B3F703;
 Wed,  8 Jan 2020 05:23:03 -0800 (PST)
Date: Wed, 8 Jan 2020 13:23:02 +0000
From: Mark Brown <broonie@kernel.org>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH v2 4/7] drm/panfrost: Add support for a second regulator
 for the GPU
Message-ID: <20200108132302.GA3817@sirena.org.uk>
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-5-drinkcat@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20200108052337.65916-5-drinkcat@chromium.org>
X-Cookie: Trouble always comes at the wrong time.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_052306_078226_FE6AB295 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4396707966912148552=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4396707966912148552==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 08, 2020 at 01:23:34PM +0800, Nicolas Boichat wrote:

> Some GPUs, namely, the bifrost/g72 part on MT8183, have a second
> regulator for their SRAM, let's add support for that.

> +	pfdev->regulator_sram = devm_regulator_get_optional(pfdev->dev, "sram");
> +	if (IS_ERR(pfdev->regulator_sram)) {

This supply is required for the devices that need it so I'd therefore
expect the driver to request the supply non-optionally based on the
compatible string rather than just hoping that a missing regulator isn't
important.  Though I do have to wonder given the lack of any active
management of the supply if this is *really* part of the GPU or if it's
more of a SoC thing, it's not clear what exactly adding this code is
achieving.

--KsGdsel6WgEHnImy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4V17MACgkQJNaLcl1U
h9B1Tgf9F6myo+YZUDZcDAsE1tQHONaZ147hS3g2NDCgQf79b/fWyNVelAPRvxg+
wz+J0q2LmDX9K0ldimkt+BEitrL5aVQsPjw/WOXbOk/n4FBP11uDMxk9i586GGfO
EXHDmfUQh8D+wEjZBKck8+yaa0NYCFoHdlxc3rPILim9fGRiJKa18EdbPRfb7lNm
86k2Nkicmd8gkBfk7GlJ8MgGabr1ezpiza+F/vhTkEm+WHCcDwy+BadJG5whNnC0
GmKn0ieyraLxmVUjC4BpkJbeG/ye5VPCOcLn4ZjGrRU209STb45MyFAlAaYFNzX0
0wWQAm/aPa23vn2QhxYUW1RALdueLQ==
=UhEZ
-----END PGP SIGNATURE-----

--KsGdsel6WgEHnImy--


--===============4396707966912148552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4396707966912148552==--

