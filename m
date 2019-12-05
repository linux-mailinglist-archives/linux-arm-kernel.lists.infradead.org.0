Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F59D11474A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 19:46:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PDNQifcDwCmCXrriBx454RUwFKMaH1msJ2LRKw1y79s=; b=VlE1R/vlcQWZHv8w1LsK1cEG/
	vX2GW672JzzCnBiLPKLIhGZMbxLuW+AIqrZXnGwMPHCJMnC4w0OMjH+Wj+V2ABJ4crFtIMuE0xKQy
	FXjSkcnkhy/RHOAYWRy7m9kUVB4drKw5DpMlqZzAmt+McUjlOJSPKz7hs/T18QCo59EblsWe4frYr
	3rAjiSrxp5kX+NZK26oj2LjOUoJQStdoRuNU+Kk0MEBQmvxDXzgu1+5RBYt3XKyKW2CzLZblZH1gv
	QnGTw+iq2k7p1wOO0SmEvNei1e4oamV9oeGQwsETd2g0c+mJpn0Mn/HSdIHGgoRO2zzzGO0ApVmvi
	dJYaSnQFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icw99-0003rj-Fn; Thu, 05 Dec 2019 18:46:39 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icw8z-0003pt-Gu
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 18:46:31 +0000
Received: by mail-qv1-xf43.google.com with SMTP id d17so1694399qvs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 10:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=DBLlVwl81NMlb0aP3FcIvdKEYbuLkV1CdHBSyJ493Pw=;
 b=hkc1cVscoLuLFyRuJErYLgh2SIH7MyXImjnoQDMRzfucBAKAVnTXQMUWrqGv9VK8wE
 IncdntU0YY6F5Xi0Lq2zh6FFMhobPj5YBQgisevqR5dBAZcAgH4SVe5vBvhmq9C4EGto
 Sz75EXzlcJ0Budgg2nGd0HvZNXbzYp9gAjdSUUqiw7/lQNgD8fVcfR5ZgTJZhnqEB57i
 ATlcn8nS3D6fFiQL7G5rNkmLCOZdUMek2HBVXiOdSA/0+n198gVjRA14a1ntGg9N5O2Q
 TteljOneIVYmbkJNhVESHKQONSl/hBvrUn2Ed6GNJZYuxHd1ZzHCr1k+ghOLJbDSSGTr
 wRJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=DBLlVwl81NMlb0aP3FcIvdKEYbuLkV1CdHBSyJ493Pw=;
 b=i/S+XzMiA6gDQ5pRRdArWY3430tKhGuzPuVlGZoVpWVX6EP4r5POZlLBuy6HyQ7IAf
 Ueuh2NHjrKtKhMpJ0r1JDfwUW07Xzxb+iVzQxjlTbWudyp1EzkBp5BmsdvpTT7Q/BnBr
 ltKfx9I6d9hyZybVZqD+8+D0k97HWZX5kH2/KgnmqE1rFOZ5q5tX7YUfKVxGLPC6Hn98
 hGEA/xu52yGvFVLxj9vvGGRS1genIuGjmTHP3YLetsWjjiH+z12yj/KkppogGHpPUzUc
 nkFmtFh2NTzfbDH0e+sxBe3r/1ItcmgYeS3keljUC7bpG7bQm6BSdGNfRxPUaO4v1I5e
 mnDw==
X-Gm-Message-State: APjAAAW5ICvx/IPJ/DM0zIMVD/1kuYWy6Fg6/MgGOH1lPZcaaH3WJBlV
 IxqOuWe2huiqXw1hFuHZBZW2rg==
X-Google-Smtp-Source: APXvYqwZslsme8mZXtgHQTtywY/xfig2cTceccoRrNNrD7+BocXaGcGC6VS7isSrJm0ks1yPw/t9nQ==
X-Received: by 2002:a0c:ff01:: with SMTP id w1mr8801425qvt.171.1575571586995; 
 Thu, 05 Dec 2019 10:46:26 -0800 (PST)
Received: from tpx230-nicolas ([2610:98:8005::650])
 by smtp.gmail.com with ESMTPSA id p35sm5349897qtd.12.2019.12.05.10.46.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 10:46:26 -0800 (PST)
Message-ID: <1a570c6e07fcd0d0ddc401a3640dfca07f22304d.camel@ndufresne.ca>
Subject: Re: [PATCH 0/5] media: meson: vdec: Add VP9 decoding support
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Neil Armstrong <narmstrong@baylibre.com>, mchehab@kernel.org, 
 hans.verkuil@cisco.com
Date: Thu, 05 Dec 2019 13:46:24 -0500
In-Reply-To: <60fa8f55-de40-13fa-b584-ad9f020cde12@baylibre.com>
References: <20191205092454.26075-1-narmstrong@baylibre.com>
 <4ee20fdf5182b7bfe338e9ae044424b6125fed15.camel@ndufresne.ca>
 <60fa8f55-de40-13fa-b584-ad9f020cde12@baylibre.com>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_104629_568829_A01C0522 
X-CRM114-Status: GOOD (  24.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7807764593397365987=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7807764593397365987==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-5ge5SRuKOXA9YMq6LNHq"


--=-5ge5SRuKOXA9YMq6LNHq
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 05 d=C3=A9cembre 2019 =C3=A0 16:49 +0100, Neil Armstrong a =C3=A9c=
rit :
> On 05/12/2019 16:42, Nicolas Dufresne wrote:
> > Hi Neil,
> >=20
> > Le jeudi 05 d=C3=A9cembre 2019 =C3=A0 10:24 +0100, Neil Armstrong a =C3=
=A9crit :
> > > Hello,
> > >=20
> > > This patchset aims to bring VP9 decoding support to Amlogic GXL, G12A=
 & SM1
> > > platforms for the amlogic stateful video decoder driver.
> > >=20
> > > With this, it passes v4l2-compliance with streaming on Amlogic G12A a=
nd
> > > Amlogic SM1 SoCs successfully using the stream at [1] with a fixed
> > > pyv4l2compliance script for VP9 at [2].
> > >=20
> > > The original script kept the IVF headers in the stream, confusing the
> > > decoder. The fixed script only extracts the payload from the IVF cont=
ainer.
> > >=20
> > > The decoder has been tested using the Google CTS TestVectorsIttiam VP=
9 yuv420
> > > samples, passing 82 resolutions test streams, with 13 fails by pixel
> > > differences and 3 timeouts.
> >=20
> > How do you handle resolution changes on delta frames ? It's a bit of a
> > challenge since the reference frames are not at the same resolution as
> > the frames to be decoded. This breaks the assumption for the resolution
> > changes mechanism as described in the spec.
>=20
> I don't have a lot of experience on the subject, but in the vendor implem=
entation,
> they store the resolution along the reference frames and when loading all=
 the
> reference frames to the HW, the original resolution is also loaded.
> But we don't handle it.
>=20
> > On stateless side, Boris is introducing DESTROY_BUFS, so we can free
> > the references when they are not used anymore. But the reference are
> > managed by userspace and are not queued. While on stateful side so far,
> > it was assumed that references are queued, and the semantic of S_FMT is
> > that it must apply to the entire set of queued buffer.
>=20
> yes
>=20
> > I think most streams will work and won't use this feature, but I'm
> > worried that writing a compliant VP9 decoder is currently not possible.
>=20
> Indeed, but I don't have a clear enough view on the subject, and it doesn=
't seem
> I have any test stream with such feature.

https://www.webmproject.org/vp9/levels/

I believe in the performance suite, the FRM_RESIZE sample is what
should exercise this.

>=20
> Neil
>=20
> > > This patchset depends on :
> > > - G12A enablement at [3]
> > > - SM1 enablement at [4]
> > > - H.264 and compliance at [5]
> > >=20
> > > [1] https://github.com/superna9999/pyv4l2compliance/raw/tests/output/=
Jellyfish_1080_10s_5MB.vp9.hdr
> > > [2] https://github.com/superna9999/pyv4l2compliance
> > > [3] https://lore.kernel.org/linux-media/20191120111430.29552-1-narmst=
rong@baylibre.com
> > > [4] https://lore.kernel.org/linux-media/20191121101429.23831-1-narmst=
rong@baylibre.com
> > > [5] https://lore.kernel.org/linux-media/20191126093733.32404-1-narmst=
rong@baylibre.com
> > >=20
> > > The compliance log is:
> > > # v4l2-compliance --stream-from-hdr Jellyfish_1080_10s_5MB.vp9.hdr -s=
 200
> > > v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 64 bit=
s
> > >=20
> > > Compliance test for meson-vdec device /dev/video0:
> > >=20
> > > Driver Info:
> > > 	Driver name      : meson-vdec
> > > 	Card type        : Amlogic Video Decoder
> > > 	Bus info         : platform:meson-vdec
> > > 	Driver version   : 5.4.0
> > > 	Capabilities     : 0x84204000
> > > 		Video Memory-to-Memory Multiplanar
> > > 		Streaming
> > > 		Extended Pix Format
> > > 		Device Capabilities
> > > 	Device Caps      : 0x04204000
> > > 		Video Memory-to-Memory Multiplanar
> > > 		Streaming
> > > 		Extended Pix Format
> > > 	Detected Stateful Decoder
> > >=20
> > > Required ioctls:
> > > 	test VIDIOC_QUERYCAP: OK
> > >=20
> > > Allow for multiple opens:
> > > 	test second /dev/video0 open: OK
> > > 	test VIDIOC_QUERYCAP: OK
> > > 	test VIDIOC_G/S_PRIORITY: OK
> > > 	test for unlimited opens: OK
> > >=20
> > > Debug ioctls:
> > > 	test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
> > > 	test VIDIOC_LOG_STATUS: OK (Not Supported)
> > >=20
> > > Input ioctls:
> > > 	test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
> > > 	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
> > > 	test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
> > > 	test VIDIOC_ENUMAUDIO: OK (Not Supported)
> > > 	test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
> > > 	test VIDIOC_G/S_AUDIO: OK (Not Supported)
> > > 	Inputs: 0 Audio Inputs: 0 Tuners: 0
> > >=20
> > > Output ioctls:
> > > 	test VIDIOC_G/S_MODULATOR: OK (Not Supported)
> > > 	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
> > > 	test VIDIOC_ENUMAUDOUT: OK (Not Supported)
> > > 	test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
> > > 	test VIDIOC_G/S_AUDOUT: OK (Not Supported)
> > > 	Outputs: 0 Audio Outputs: 0 Modulators: 0
> > >=20
> > > Input/Output configuration ioctls:
> > > 	test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
> > > 	test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
> > > 	test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
> > > 	test VIDIOC_G/S_EDID: OK (Not Supported)
> > >=20
> > > Control ioctls:
> > > 	test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
> > > 	test VIDIOC_QUERYCTRL: OK
> > > 	test VIDIOC_G/S_CTRL: OK
> > > 	test VIDIOC_G/S/TRY_EXT_CTRLS: OK
> > > 	test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
> > > 	test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
> > > 	Standard Controls: 2 Private Controls: 0
> > >=20
> > > Format ioctls:
> > > 	test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
> > > 	test VIDIOC_G/S_PARM: OK (Not Supported)
> > > 	test VIDIOC_G_FBUF: OK (Not Supported)
> > > 	test VIDIOC_G_FMT: OK
> > > 	test VIDIOC_TRY_FMT: OK
> > > 	test VIDIOC_S_FMT: OK
> > > 	test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
> > > 	test Cropping: OK (Not Supported)
> > > 	test Composing: OK (Not Supported)
> > > 	test Scaling: OK (Not Supported)
> > >=20
> > > Codec ioctls:
> > > 	test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
> > > 	test VIDIOC_G_ENC_INDEX: OK (Not Supported)
> > > 	test VIDIOC_(TRY_)DECODER_CMD: OK
> > >=20
> > > Buffer ioctls:
> > > 	test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
> > > 	test VIDIOC_EXPBUF: OK
> > > 	test Requests: OK (Not Supported)
> > >=20
> > > Test input 0:
> > >=20
> > > Streaming ioctls:
> > > 	test read/write: OK (Not Supported)
> > > 	test blocking wait: OK
> > > 	Video Capture Multiplanar: Captured 200 buffers  =20
> > > 	test MMAP (select): OK
> > > 	Video Capture Multiplanar: Captured 200 buffers  =20
> > > 	test MMAP (epoll): OK
> > > 	test USERPTR (select): OK (Not Supported)
> > > 	test DMABUF: Cannot test, specify --expbuf-device
> > >=20
> > > Total for meson-vdec device /dev/video0: 49, Succeeded: 49, Failed: 0=
, Warnings: 0
> > >=20
> > > Maxime Jourdan (4):
> > >   media: meson: vdec: add helpers for lossless framebuffer compressio=
n
> > >     buffers
> > >   media: meson: vdec: add common HEVC decoder support
> > >   media: meson: vdec: add VP9 input support
> > >   media: meson: vdec: add VP9 decoder support
> > >=20
> > > Neil Armstrong (1):
> > >   media: meson: vdec: align stride on 32 bytes
> > >=20
> > >  drivers/staging/media/meson/vdec/Makefile     |    4 +-
> > >  .../media/meson/vdec/codec_hevc_common.c      |  285 ++++
> > >  .../media/meson/vdec/codec_hevc_common.h      |   77 ++
> > >  drivers/staging/media/meson/vdec/codec_vp9.c  | 1192 +++++++++++++++=
++
> > >  drivers/staging/media/meson/vdec/codec_vp9.h  |   13 +
> > >  drivers/staging/media/meson/vdec/esparser.c   |  142 +-
> > >  drivers/staging/media/meson/vdec/hevc_regs.h  |  218 +++
> > >  drivers/staging/media/meson/vdec/vdec.c       |   10 +-
> > >  .../staging/media/meson/vdec/vdec_helpers.c   |   31 +-
> > >  .../staging/media/meson/vdec/vdec_helpers.h   |    4 +
> > >  drivers/staging/media/meson/vdec/vdec_hevc.c  |  231 ++++
> > >  drivers/staging/media/meson/vdec/vdec_hevc.h  |   13 +
> > >  .../staging/media/meson/vdec/vdec_platform.c  |   38 +
> > >  13 files changed, 2245 insertions(+), 13 deletions(-)
> > >  create mode 100644 drivers/staging/media/meson/vdec/codec_hevc_commo=
n.c
> > >  create mode 100644 drivers/staging/media/meson/vdec/codec_hevc_commo=
n.h
> > >  create mode 100644 drivers/staging/media/meson/vdec/codec_vp9.c
> > >  create mode 100644 drivers/staging/media/meson/vdec/codec_vp9.h
> > >  create mode 100644 drivers/staging/media/meson/vdec/hevc_regs.h
> > >  create mode 100644 drivers/staging/media/meson/vdec/vdec_hevc.c
> > >  create mode 100644 drivers/staging/media/meson/vdec/vdec_hevc.h
> > >=20
>=20
>=20

--=-5ge5SRuKOXA9YMq6LNHq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXelQgAAKCRBxUwItrAao
HBE7AKC1P8n2zO5GHM2HzTAgV2d83aMdCQCg1EYqRJk2Y+jJgBaVu5kEZaVYF8U=
=SRoR
-----END PGP SIGNATURE-----

--=-5ge5SRuKOXA9YMq6LNHq--



--===============7807764593397365987==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7807764593397365987==--


