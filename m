Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF16C2327
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=08mIAkasnBrOgZTaKGEMKHv5ePNgDbbF85nrGadY9fo=; b=mithbCyPpwNv4u2saeeeTlUld
	IKrW3B9XkDYzjlOF8Dv9xRusgIg1KbxdhDXWO8PBFQGKYISNDv2VBZmFj0FeCySk2hSv1G4S64XCF
	+5cE2SURZJNSrPPD1XYeetJiStVrWlth4eEfRu6cnX14U9KLXZ5Nkd0WB4tRih6D7Oo5E18A7TNmf
	0qKmKpEJj9hsKR9RX44zOPTnzLrijvyAP3Igl2KmouYv0OQuxjg7lUi7hLup496JII643aRs1Ti+4
	K48yOCuVpo4W8DYYjt8a23t3iPAWSUeaijtOJ+N2aGbZHaj6B8Od5W+bWkbqDMmo6QDxaKK/oPsQh
	MT5XRNzaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwcQ-00033d-Sl; Mon, 30 Sep 2019 14:25:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwcI-00032r-44
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:25:35 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D396021855;
 Mon, 30 Sep 2019 14:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569853532;
 bh=nKQBhQTptd/B3mSn4I5e5Hi5ft8M5gemc3t2or8uZso=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UYcLWTFA2NaG2Uhhas4KGvVVdWrCplM3xapCYc6VkFSABZwZXA/uiO6xwEvx2Qclj
 Gjc+S6OZ+yInphg0Oce/5e5kDc31quJQOUEpAgstzCVkhx3+gJfsHCQb6ThHEqTTaa
 A6YblXrsc/Kap+nSkR0kEIVK9Lumxg9pExOjxUw0=
Date: Mon, 30 Sep 2019 16:25:29 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 0/6] media: Introduce Allwinner H3 deinterlace driver
Message-ID: <20190930142529.7b2x3bmu6723dctm@gilmour>
References: <20190929161653.160158-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190929161653.160158-1-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_072534_246980_28A576E0 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============8489425791928524566=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8489425791928524566==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="boflox5qes4r6omb"
Content-Disposition: inline


--boflox5qes4r6omb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sun, Sep 29, 2019 at 06:16:47PM +0200, Jernej Skrabec wrote:
> Starting with H3, Allwinner began to include standalone deinterlace
> core in multimedia oriented SoCs. This patch series introduces support
> for it. Note that new SoCs, like H6, have radically different (updated)
> deinterlace core, which will need a new driver.
>
> v4l2-compliance report:
> v4l2-compliance SHA: dece02f862f38d8f866230ca9f1015cb93ddfac4, 32 bits
>
> Compliance test for sun8i-di device /dev/video0:
>
> Driver Info:
>         Driver name      : sun8i-di
>         Card type        : sun8i-di
>         Bus info         : platform:sun8i-di
>         Driver version   : 5.3.0
>         Capabilities     : 0x84208000
>                 Video Memory-to-Memory
>                 Streaming
>                 Extended Pix Format
>                 Device Capabilities
>         Device Caps      : 0x04208000
>                 Video Memory-to-Memory
>                 Streaming
>                 Extended Pix Format
>
> Required ioctls:
>         test VIDIOC_QUERYCAP: OK
>
> Allow for multiple opens:
>         test second /dev/video0 open: OK
>         test VIDIOC_QUERYCAP: OK
>         test VIDIOC_G/S_PRIORITY: OK
>         test for unlimited opens: OK
>
> Debug ioctls:
>         test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
>         test VIDIOC_LOG_STATUS: OK (Not Supported)
>
> Input ioctls:
>         test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>         test VIDIOC_ENUMAUDIO: OK (Not Supported)
>         test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
>         test VIDIOC_G/S_AUDIO: OK (Not Supported)
>         Inputs: 0 Audio Inputs: 0 Tuners: 0
>
> Output ioctls:
>         test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>         test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>         test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>         Outputs: 0 Audio Outputs: 0 Modulators: 0
>
> Input/Output configuration ioctls:
>         test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>         test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
>         test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
>         test VIDIOC_G/S_EDID: OK (Not Supported)
>
> Control ioctls:
>         test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK (Not Supported)
>         test VIDIOC_QUERYCTRL: OK (Not Supported)
>         test VIDIOC_G/S_CTRL: OK (Not Supported)
>         test VIDIOC_G/S/TRY_EXT_CTRLS: OK (Not Supported)
>         test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK (Not Supported)
>         test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>         Standard Controls: 0 Private Controls: 0
>
> Format ioctls:
>         test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>         test VIDIOC_G/S_PARM: OK (Not Supported)
>         test VIDIOC_G_FBUF: OK (Not Supported)
>         test VIDIOC_G_FMT: OK
>         test VIDIOC_TRY_FMT: OK
>         test VIDIOC_S_FMT: OK
>         test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>         test Cropping: OK (Not Supported)
>         test Composing: OK (Not Supported)
>         test Scaling: OK
>
> Codec ioctls:
>         test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>         test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>         test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
>
> Buffer ioctls:
>         test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
>         test VIDIOC_EXPBUF: OK
>         test Requests: OK (Not Supported)
>
> Total for sun8i-di device /dev/video0: 44, Succeeded: 44, Failed: 0, Warnings: 0
>
> Please take a look.
>
> Best regards,
> Jernej
>
> Changes from v1:
> - updated Maxime's e-mail in DT binding
> - removed "items" for single item in DT binding
> - implemented power management
> - replaced regmap with direct io access
> - set exclusive clock rate
> - renamed DEINTERLACE_FRM_CTRL_COEF_CTRL to DEINTERLACE_FRM_CTRL_COEF_ACCESS
>
> Jernej Skrabec (6):
>   dt-bindings: bus: sunxi: Add H3 MBUS compatible
>   clk: sunxi-ng: h3: Export MBUS clock
>   ARM: dts: sunxi: h3/h5: Add MBUS controller node
>   dt-bindings: media: Add Allwinner H3 Deinterlace binding
>   media: sun4i: Add H3 deinterlace driver
>   dts: arm: sun8i: h3: Enable deinterlace unit

I'm fine with all the dt-bindings / dt patches, so you can add my
Acked-by on those.

Maxime

--boflox5qes4r6omb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZIQWQAKCRDj7w1vZxhR
xVrrAP95BvBjx5D+oV3oe3nrrkwjKQeFkYqSNUiiKAZDSGDZnAEAnW5FCkLRnxuA
5+5trRlcF70qySyqsWs0534ctqwJ0wQ=
=AK5h
-----END PGP SIGNATURE-----

--boflox5qes4r6omb--


--===============8489425791928524566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8489425791928524566==--

