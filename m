Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F53D0250
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 22:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KmSVepNZvShC14Ol2FoL7G+TB1ivXTkotZcKrfdb+40=; b=gkUNt4U7OTPVWbOXmFyaixZQK
	ACT8l3kSDABHvuGZJA4KDaHqWlwDp5uCioHgg3RSQJfVbhQcIz6TaabFalbWAEmRr3vGwG00NAftn
	zD6C5NQvbsbEKS84INn5TBguFzY1eyO1MXl8lod/IpSkiyo4M6MwVyg+mcAVu6yODHGYyK/W7kj2P
	BspBegnFkIY981oFtnF47QABcvbNdd7EcY8ofVYiThZ3X7oKHixe3VBgcil0BiqdRaf66sZ0zn5Yr
	6ZVq+vyU+P5Vw9n3qsLTobRQLvKcDB5U6GdHP8A4ZZTGQ2o19ibm1fzmzv5T6thMydINbbXao8+R5
	if3D1FMjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHwLJ-0004KF-Qi; Tue, 08 Oct 2019 20:44:25 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHwL9-0004IO-21
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 20:44:18 +0000
Received: by mail-qt1-x844.google.com with SMTP id v52so158040qtb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 13:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=gaSoXzP9YpVS07L7l+TGBo1DI3FJrTctFt9VTp8/9RQ=;
 b=CiTK27MNHNzIytn/yaEZ/vmuWy9kPP4YU2pTEDjQcZ5T8d9h4AZEuxPOrjt2ffWArx
 SE7vMpxzFDRs8ahFDcaZ30jBF6u/Cd8hy1bLAPpyV+wIWTQFpJnQ0tg/VPigJNFTzGru
 l4k1HBgWBwj9lbUPC67hcevULaStaFnaahlLEUsYKUlvStdTusxJ6e4KaXNkGoA2TVvX
 tKpb/bZSVhIHQcs+n7WGL2AiVtkmn5ce86rwQoid8oTuFZutBcjqLuT8g3R+0p4OG9cG
 X6rdWfSpzc1MAbf0BGsQyGMSHcwAH8KQMEneNK2uBadipMS06dbAQkVnYkgd451vn+h0
 T4lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=gaSoXzP9YpVS07L7l+TGBo1DI3FJrTctFt9VTp8/9RQ=;
 b=J2wtnyK9a0sU0slcPvWiEv+CtUj+EIcCp7pNN7TEr2dzXSmEj5mIW4k1ozccLWhdV+
 2APXabRvKxRRAWz09m74AnuaCe7dC4uq5/xi6mEqpfSHHEcq/xlUofmM3z9znV8Iuf+3
 cuWqd9v51zDGgE9O1ij9GxUC0mZEdi0d0/763iSdWuN5ATTi//v0NwVKoVb/HHxLYRKA
 K3TdPUhjWXaUqlAkFxo0BFYmUBnZJiMgOsqaKf6W+NlN/gWlEKFFolvciaU8RGSP1KjW
 lhi4EzUVdTRiz3cxlgIYKbJbljvArkp3/0lLejwCnzWv6MVqN4zyZgHdTmhGW6CsNOpR
 KhXQ==
X-Gm-Message-State: APjAAAUX0f/NZ1spXcqOKm0z+uMNfE6SF4Q44im/jG2QP1EQriM77lYW
 f5nGRlxM4qILLCCOC/CF6eWVBQ==
X-Google-Smtp-Source: APXvYqz/IVD/rSTGmiMI9ahoZjG4kAgzK797A2crTVm3QXK7vBJ0gkNayR2dPDgf/avJMGOYEkaX8g==
X-Received: by 2002:ac8:3f68:: with SMTP id w37mr13496487qtk.351.1570567453871; 
 Tue, 08 Oct 2019 13:44:13 -0700 (PDT)
Received: from tpx230-nicolas (modemcable154.55-37-24.static.videotron.ca.
 [24.37.55.154])
 by smtp.gmail.com with ESMTPSA id 60sm10644308qta.77.2019.10.08.13.44.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 13:44:12 -0700 (PDT)
Message-ID: <0cd4cc5b8aea989d0cd44cad81ebb01cbdd6fc22.camel@ndufresne.ca>
Subject: Re: [PATCH 2/2] media: meson: vdec: add H.264 decoding support
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Maxime Jourdan <mjourdan@baylibre.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>
Date: Tue, 08 Oct 2019 16:44:11 -0400
In-Reply-To: <912dfabbaafc6eb4dce343ad43914ae54fc99343.camel@ndufresne.ca>
References: <20191007145909.29979-1-mjourdan@baylibre.com>
 <20191007145909.29979-3-mjourdan@baylibre.com>
 <912dfabbaafc6eb4dce343ad43914ae54fc99343.camel@ndufresne.ca>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_134415_129295_4BEECD31 
X-CRM114-Status: GOOD (  27.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4096224418905895034=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4096224418905895034==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-mYXBIi7695WbzFykMfid"


--=-mYXBIi7695WbzFykMfid
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 08 octobre 2019 =C3=A0 16:27 -0400, Nicolas Dufresne a =C3=A9crit =
:
> Le lundi 07 octobre 2019 =C3=A0 16:59 +0200, Maxime Jourdan a =C3=A9crit =
:
> > Add support for the H264 compressed format (V4L2_PIX_FMT_H264).
> >=20
> > Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
> > ---
> >  drivers/staging/media/meson/vdec/Makefile     |   2 +-
> >  drivers/staging/media/meson/vdec/codec_h264.c | 482 ++++++++++++++++++
> >  drivers/staging/media/meson/vdec/codec_h264.h |  14 +
> >  .../staging/media/meson/vdec/vdec_platform.c  |  37 ++
> >  4 files changed, 534 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/staging/media/meson/vdec/codec_h264.c
> >  create mode 100644 drivers/staging/media/meson/vdec/codec_h264.h
> >=20
> > diff --git a/drivers/staging/media/meson/vdec/Makefile b/drivers/stagin=
g/media/meson/vdec/Makefile
> > index 6bea129084b7..711d990c760e 100644
> > --- a/drivers/staging/media/meson/vdec/Makefile
> > +++ b/drivers/staging/media/meson/vdec/Makefile
> > @@ -3,6 +3,6 @@
> > =20
> >  meson-vdec-objs =3D esparser.o vdec.o vdec_helpers.o vdec_platform.o
> >  meson-vdec-objs +=3D vdec_1.o
> > -meson-vdec-objs +=3D codec_mpeg12.o
> > +meson-vdec-objs +=3D codec_mpeg12.o codec_h264.o
> > =20
> >  obj-$(CONFIG_VIDEO_MESON_VDEC) +=3D meson-vdec.o
> > diff --git a/drivers/staging/media/meson/vdec/codec_h264.c b/drivers/st=
aging/media/meson/vdec/codec_h264.c
> > new file mode 100644
> > index 000000000000..4528a6a01c3d
> > --- /dev/null
> > +++ b/drivers/staging/media/meson/vdec/codec_h264.c
> > @@ -0,0 +1,482 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright (C) 2019 BayLibre, SAS
> > + * Author: Maxime Jourdan <mjourdan@baylibre.com>
> > + */
> > +
> > +#include <media/v4l2-mem2mem.h>
> > +#include <media/videobuf2-dma-contig.h>
> > +
> > +#include "vdec_helpers.h"
> > +#include "dos_regs.h"
> > +
> > +#define SIZE_EXT_FW	(20 * SZ_1K)
> > +#define SIZE_WORKSPACE	0x1ee000
> > +#define SIZE_SEI	(8 * SZ_1K)
> > +
> > +/*
> > + * Offset added by the firmware which must be substracted
> > + * from the workspace phyaddr
> > + */
> > +#define WORKSPACE_BUF_OFFSET	0x1000000
> > +
> > +/* ISR status */
> > +#define CMD_MASK		GENMASK(7, 0)
> > +#define CMD_SRC_CHANGE		1
> > +#define CMD_FRAMES_READY	2
> > +#define CMD_FATAL_ERROR		6
> > +#define CMD_BAD_WIDTH		7
> > +#define CMD_BAD_HEIGHT		8
> > +
> > +#define SEI_DATA_READY	BIT(15)
> > +
> > +/* Picture type */
> > +#define PIC_TOP_BOT	5
> > +#define PIC_BOT_TOP	6
> > +
> > +/* Size of Motion Vector per macroblock */
> > +#define MB_MV_SIZE	96
> > +
> > +/* Frame status data */
> > +#define PIC_STRUCT_BIT	5
> > +#define PIC_STRUCT_MASK	GENMASK(2, 0)
> > +#define BUF_IDX_MASK	GENMASK(4, 0)
> > +#define ERROR_FLAG	BIT(9)
> > +#define OFFSET_BIT	16
> > +#define OFFSET_MASK	GENMASK(15, 0)
> > +
> > +/* Bitstream parsed data */
> > +#define MB_TOTAL_BIT	8
> > +#define MB_TOTAL_MASK	GENMASK(15, 0)
> > +#define MB_WIDTH_MASK	GENMASK(7, 0)
> > +#define MAX_REF_BIT	24
> > +#define MAX_REF_MASK	GENMASK(6, 0)
> > +#define AR_IDC_BIT	16
> > +#define AR_IDC_MASK	GENMASK(7, 0)
> > +#define AR_PRESENT_FLAG	BIT(0)
> > +#define AR_EXTEND	0xff
> > +
> > +/*
> > + * Buffer to send to the ESPARSER to signal End Of Stream for H.264.
> > + * This is a 16x16 encoded picture that will trigger drain firmware-si=
de.
> > + * There is no known alternative.
> > + */
> > +static const u8 eos_sequence[SZ_4K] =3D {
> > +	0x00, 0x00, 0x00, 0x01, 0x06, 0x05, 0xff, 0xe4, 0xdc, 0x45, 0xe9, 0xb=
d,
> > +	0xe6, 0xd9, 0x48, 0xb7,	0x96, 0x2c, 0xd8, 0x20, 0xd9, 0x23, 0xee, 0xe=
f,
> > +	0x78, 0x32, 0x36, 0x34, 0x20, 0x2d, 0x20, 0x63,	0x6f, 0x72, 0x65, 0x2=
0,
> > +	0x36, 0x37, 0x20, 0x72, 0x31, 0x31, 0x33, 0x30, 0x20, 0x38, 0x34, 0x3=
7,
> > +	0x35, 0x39, 0x37, 0x37, 0x20, 0x2d, 0x20, 0x48, 0x2e, 0x32, 0x36, 0x3=
4,
> > +	0x2f, 0x4d, 0x50, 0x45,	0x47, 0x2d, 0x34, 0x20, 0x41, 0x56, 0x43, 0x2=
0,
> > +	0x63, 0x6f, 0x64, 0x65, 0x63, 0x20, 0x2d, 0x20,	0x43, 0x6f, 0x70, 0x7=
9,
> > +	0x6c, 0x65, 0x66, 0x74, 0x20, 0x32, 0x30, 0x30, 0x33, 0x2d, 0x32, 0x3=
0,
> > +	0x30, 0x39, 0x20, 0x2d, 0x20, 0x68, 0x74, 0x74, 0x70, 0x3a, 0x2f, 0x2=
f,
> > +	0x77, 0x77, 0x77, 0x2e,	0x76, 0x69, 0x64, 0x65, 0x6f, 0x6c, 0x61, 0x6=
e,
> > +	0x2e, 0x6f, 0x72, 0x67, 0x2f, 0x78, 0x32, 0x36,	0x34, 0x2e, 0x68, 0x7=
4,
> > +	0x6d, 0x6c, 0x20, 0x2d, 0x20, 0x6f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x7=
3,
> > +	0x3a, 0x20, 0x63, 0x61, 0x62, 0x61, 0x63, 0x3d, 0x31, 0x20, 0x72, 0x6=
5,
> > +	0x66, 0x3d, 0x31, 0x20,	0x64, 0x65, 0x62, 0x6c, 0x6f, 0x63, 0x6b, 0x3=
d,
> > +	0x31, 0x3a, 0x30, 0x3a, 0x30, 0x20, 0x61, 0x6e,	0x61, 0x6c, 0x79, 0x7=
3,
> > +	0x65, 0x3d, 0x30, 0x78, 0x31, 0x3a, 0x30, 0x78, 0x31, 0x31, 0x31, 0x2=
0,
> > +	0x6d, 0x65, 0x3d, 0x68, 0x65, 0x78, 0x20, 0x73, 0x75, 0x62, 0x6d, 0x6=
5,
> > +	0x3d, 0x36, 0x20, 0x70,	0x73, 0x79, 0x5f, 0x72, 0x64, 0x3d, 0x31, 0x2=
e,
> > +	0x30, 0x3a, 0x30, 0x2e, 0x30, 0x20, 0x6d, 0x69,	0x78, 0x65, 0x64, 0x5=
f,
> > +	0x72, 0x65, 0x66, 0x3d, 0x30, 0x20, 0x6d, 0x65, 0x5f, 0x72, 0x61, 0x6=
e,
> > +	0x67, 0x65, 0x3d, 0x31, 0x36, 0x20, 0x63, 0x68, 0x72, 0x6f, 0x6d, 0x6=
1,
> > +	0x5f, 0x6d, 0x65, 0x3d,	0x31, 0x20, 0x74, 0x72, 0x65, 0x6c, 0x6c, 0x6=
9,
> > +	0x73, 0x3d, 0x30, 0x20, 0x38, 0x78, 0x38, 0x64,	0x63, 0x74, 0x3d, 0x3=
0,
> > +	0x20, 0x63, 0x71, 0x6d, 0x3d, 0x30, 0x20, 0x64, 0x65, 0x61, 0x64, 0x7=
a,
> > +	0x6f, 0x6e, 0x65, 0x3d, 0x32, 0x31, 0x2c, 0x31, 0x31, 0x20, 0x63, 0x6=
8,
> > +	0x72, 0x6f, 0x6d, 0x61,	0x5f, 0x71, 0x70, 0x5f, 0x6f, 0x66, 0x66, 0x7=
3,
> > +	0x65, 0x74, 0x3d, 0x2d, 0x32, 0x20, 0x74, 0x68,	0x72, 0x65, 0x61, 0x6=
4,
> > +	0x73, 0x3d, 0x31, 0x20, 0x6e, 0x72, 0x3d, 0x30, 0x20, 0x64, 0x65, 0x6=
3,
> > +	0x69, 0x6d, 0x61, 0x74, 0x65, 0x3d, 0x31, 0x20, 0x6d, 0x62, 0x61, 0x6=
6,
> > +	0x66, 0x3d, 0x30, 0x20,	0x62, 0x66, 0x72, 0x61, 0x6d, 0x65, 0x73, 0x3=
d,
> > +	0x30, 0x20, 0x6b, 0x65, 0x79, 0x69, 0x6e, 0x74,	0x3d, 0x32, 0x35, 0x3=
0,
> > +	0x20, 0x6b, 0x65, 0x79, 0x69, 0x6e, 0x74, 0x5f, 0x6d, 0x69, 0x6e, 0x3=
d,
> > +	0x32, 0x35, 0x20, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x63, 0x75, 0x74, 0x3=
d,
> > +	0x34, 0x30, 0x20, 0x72,	0x63, 0x3d, 0x61, 0x62, 0x72, 0x20, 0x62, 0x6=
9,
> > +	0x74, 0x72, 0x61, 0x74, 0x65, 0x3d, 0x31, 0x30,	0x20, 0x72, 0x61, 0x7=
4,
> > +	0x65, 0x74, 0x6f, 0x6c, 0x3d, 0x31, 0x2e, 0x30, 0x20, 0x71, 0x63, 0x6=
f,
> > +	0x6d, 0x70, 0x3d, 0x30, 0x2e, 0x36, 0x30, 0x20, 0x71, 0x70, 0x6d, 0x6=
9,
> > +	0x6e, 0x3d, 0x31, 0x30,	0x20, 0x71, 0x70, 0x6d, 0x61, 0x78, 0x3d, 0x3=
5,
> > +	0x31, 0x20, 0x71, 0x70, 0x73, 0x74, 0x65, 0x70,	0x3d, 0x34, 0x20, 0x6=
9,
> > +	0x70, 0x5f, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x3d, 0x31, 0x2e, 0x34, 0x3=
0,
> > +	0x20, 0x61, 0x71, 0x3d, 0x31, 0x3a, 0x31, 0x2e, 0x30, 0x30, 0x00, 0x8=
0,
> > +	0x00, 0x00, 0x00, 0x01,	0x67, 0x4d, 0x40, 0x0a, 0x9a, 0x74, 0xf4, 0x2=
0,
> > +	0x00, 0x00, 0x03, 0x00, 0x20, 0x00, 0x00, 0x06,	0x51, 0xe2, 0x44, 0xd=
4,
> > +	0x00, 0x00, 0x00, 0x01, 0x68, 0xee, 0x32, 0xc8, 0x00, 0x00, 0x00, 0x0=
1,
> > +	0x65, 0x88, 0x80, 0x20, 0x00, 0x08, 0x7f, 0xea, 0x6a, 0xe2, 0x99, 0xb=
6,
> > +	0x57, 0xae, 0x49, 0x30,	0xf5, 0xfe, 0x5e, 0x46, 0x0b, 0x72, 0x44, 0xc=
4,
> > +	0xe1, 0xfc, 0x62, 0xda, 0xf1, 0xfb, 0xa2, 0xdb,	0xd6, 0xbe, 0x5c, 0xd=
7,
> > +	0x24, 0xa3, 0xf5, 0xb9, 0x2f, 0x57, 0x16, 0x49, 0x75, 0x47, 0x77, 0x0=
9,
> > +	0x5c, 0xa1, 0xb4, 0xc3, 0x4f, 0x60, 0x2b, 0xb0, 0x0c, 0xc8, 0xd6, 0x6=
6,
> > +	0xba, 0x9b, 0x82, 0x29,	0x33, 0x92, 0x26, 0x99, 0x31, 0x1c, 0x7f, 0x9=
b,
> > +	0x00, 0x00, 0x01, 0x0ff,
> > +};
>=20
> I can read that this contains a pretty large SEI, SPS, PPS, IDR and
> finally this unspecified Nal 15 with no size, but I don't expect every
> can. Maybe you could format this into nals, and document whatever you
> know about this blob ? If you need info, I may suggest you do put that
> into a file and use YUView software to parse it.

While parsing the SEI was interesting, I think you can drop it
entirely. It's a blob of user data the x264 adds so that you can get
all the parameters that was passed to it. This even includes the URI=20
http://www.videolan.org/x264.html and the SVN revision number of thex264 bu=
ild.=20

For the SPS bit, only thing that came out is that this is Main profile,
do all supported generation of H264 decoder on Amlogic supports main ?
To be conservative, it might be nice to encode a constrained-baseline
one. You could also make it smaller by dropping the VUI parameters.
Remember that the SEI and PPS are both bigger then the black slice
being encoded.

About "unspecified" NAL at the end, not sure if it's really needed, I'd
try to drop it.

>=20
> > +
> > +static const u8 *codec_h264_eos_sequence(u32 *len)
> > +{
> > +	*len =3D ARRAY_SIZE(eos_sequence);
> > +	return eos_sequence;
> > +}
> > +
> > +struct codec_h264 {
> > +	/* H.264 decoder requires an extended firmware */
> > +	void      *ext_fw_vaddr;
> > +	dma_addr_t ext_fw_paddr;
> > +
> > +	/* Buffer for the H.264 Workspace */
> > +	void      *workspace_vaddr;
> > +	dma_addr_t workspace_paddr;
> > +
> > +	/* Buffer for the H.264 references MV */
> > +	void      *ref_vaddr;
> > +	dma_addr_t ref_paddr;
> > +	u32	   ref_size;
> > +
> > +	/* Buffer for parsed SEI data */
> > +	void      *sei_vaddr;
> > +	dma_addr_t sei_paddr;
> > +
> > +	u32 mb_width;
> > +	u32 mb_height;
> > +	u32 max_refs;
> > +};
> > +
> > +static int codec_h264_can_recycle(struct amvdec_core *core)
> > +{
> > +	return !amvdec_read_dos(core, AV_SCRATCH_7) ||
> > +	       !amvdec_read_dos(core, AV_SCRATCH_8);
> > +}
> > +
> > +static void codec_h264_recycle(struct amvdec_core *core, u32 buf_idx)
> > +{
> > +	/*
> > +	 * Tell the firmware it can recycle this buffer.
> > +	 * AV_SCRATCH_8 serves the same purpose.
> > +	 */
> > +	if (!amvdec_read_dos(core, AV_SCRATCH_7))
> > +		amvdec_write_dos(core, AV_SCRATCH_7, buf_idx + 1);
> > +	else
> > +		amvdec_write_dos(core, AV_SCRATCH_8, buf_idx + 1);
> > +}
> > +
> > +static int codec_h264_start(struct amvdec_session *sess)
> > +{
> > +	u32 workspace_offset;
> > +	struct amvdec_core *core =3D sess->core;
> > +	struct codec_h264 *h264 =3D sess->priv;
> > +
> > +	/* Allocate some memory for the H.264 decoder's state */
> > +	h264->workspace_vaddr =3D
> > +		dma_alloc_coherent(core->dev, SIZE_WORKSPACE,
> > +				   &h264->workspace_paddr, GFP_KERNEL);
> > +	if (!h264->workspace_vaddr)
> > +		return -ENOMEM;
> > +
> > +	/* Allocate some memory for the H.264 SEI dump */
> > +	h264->sei_vaddr =3D dma_alloc_coherent(core->dev, SIZE_SEI,
> > +					     &h264->sei_paddr, GFP_KERNEL);
> > +	if (!h264->sei_vaddr)
> > +		return -ENOMEM;
> > +
> > +	amvdec_write_dos_bits(core, POWER_CTL_VLD, BIT(9) | BIT(6));
> > +
> > +	workspace_offset =3D h264->workspace_paddr - WORKSPACE_BUF_OFFSET;
> > +	amvdec_write_dos(core, AV_SCRATCH_1, workspace_offset);
> > +	amvdec_write_dos(core, AV_SCRATCH_G, h264->ext_fw_paddr);
> > +	amvdec_write_dos(core, AV_SCRATCH_I, h264->sei_paddr -
> > +					     workspace_offset);
> > +
> > +	/* Enable "error correction" */
> > +	amvdec_write_dos(core, AV_SCRATCH_F,
> > +			 (amvdec_read_dos(core, AV_SCRATCH_F) & 0xffffffc3) |
> > +			 BIT(4) | BIT(7));
> > +
> > +	amvdec_write_dos(core, MDEC_PIC_DC_THRESH, 0x404038aa);
> > +
> > +	return 0;
> > +}
> > +
> > +static int codec_h264_stop(struct amvdec_session *sess)
> > +{
> > +	struct codec_h264 *h264 =3D sess->priv;
> > +	struct amvdec_core *core =3D sess->core;
> > +
> > +	if (h264->ext_fw_vaddr)
> > +		dma_free_coherent(core->dev, SIZE_EXT_FW,
> > +				  h264->ext_fw_vaddr, h264->ext_fw_paddr);
> > +
> > +	if (h264->workspace_vaddr)
> > +		dma_free_coherent(core->dev, SIZE_WORKSPACE,
> > +				 h264->workspace_vaddr, h264->workspace_paddr);
> > +
> > +	if (h264->ref_vaddr)
> > +		dma_free_coherent(core->dev, h264->ref_size,
> > +				  h264->ref_vaddr, h264->ref_paddr);
> > +
> > +	if (h264->sei_vaddr)
> > +		dma_free_coherent(core->dev, SIZE_SEI,
> > +				  h264->sei_vaddr, h264->sei_paddr);
> > +
> > +	return 0;
> > +}
> > +
> > +static int codec_h264_load_extended_firmware(struct amvdec_session *se=
ss,
> > +					     const u8 *data, u32 len)
> > +{
> > +	struct codec_h264 *h264;
> > +	struct amvdec_core *core =3D sess->core;
> > +
> > +	if (len < SIZE_EXT_FW)
> > +		return -EINVAL;
> > +
> > +	h264 =3D kzalloc(sizeof(*h264), GFP_KERNEL);
> > +	if (!h264)
> > +		return -ENOMEM;
> > +
> > +	h264->ext_fw_vaddr =3D dma_alloc_coherent(core->dev, SIZE_EXT_FW,
> > +					      &h264->ext_fw_paddr, GFP_KERNEL);
> > +	if (!h264->ext_fw_vaddr) {
> > +		kfree(h264);
> > +		return -ENOMEM;
> > +	}
> > +
> > +	memcpy(h264->ext_fw_vaddr, data, SIZE_EXT_FW);
> > +	sess->priv =3D h264;
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct v4l2_fract par_table[] =3D {
> > +	{ 1, 1 },   { 1, 1 },    { 12, 11 }, { 10, 11 },
> > +	{ 16, 11 }, { 40, 33 },  { 24, 11 }, { 20, 11 },
> > +	{ 32, 11 }, { 80, 33 },  { 18, 11 }, { 15, 11 },
> > +	{ 64, 33 }, { 160, 99 }, { 4, 3 },   { 3, 2 },
> > +	{ 2, 1 }
> > +};
> > +
> > +static void codec_h264_set_par(struct amvdec_session *sess)
> > +{
> > +	struct amvdec_core *core =3D sess->core;
> > +	u32 seq_info =3D amvdec_read_dos(core, AV_SCRATCH_2);
> > +	u32 ar_idc =3D (seq_info >> AR_IDC_BIT) & AR_IDC_MASK;
> > +
> > +	if (!(seq_info & AR_PRESENT_FLAG))
> > +		return;
> > +
> > +	if (ar_idc =3D=3D AR_EXTEND) {
> > +		u32 ar_info =3D amvdec_read_dos(core, AV_SCRATCH_3);
> > +
> > +		sess->pixelaspect.numerator =3D ar_info & 0xffff;
> > +		sess->pixelaspect.denominator =3D (ar_info >> 16) & 0xffff;
> > +		return;
> > +	}
> > +
> > +	if (ar_idc >=3D ARRAY_SIZE(par_table))
> > +		return;
> > +
> > +	sess->pixelaspect =3D par_table[ar_idc];
> > +}
> > +
> > +static void codec_h264_resume(struct amvdec_session *sess)
> > +{
> > +	struct amvdec_core *core =3D sess->core;
> > +	struct codec_h264 *h264 =3D sess->priv;
> > +	u32 mb_width, mb_height, mb_total;
> > +
> > +	amvdec_set_canvases(sess, (u32[]){ ANC0_CANVAS_ADDR, 0 },
> > +				  (u32[]){ 24, 0 });
> > +
> > +	dev_dbg(core->dev, "max_refs =3D %u; actual_dpb_size =3D %u\n",
> > +		h264->max_refs, sess->num_dst_bufs);
> > +
> > +	/* Align to a multiple of 4 macroblocks */
> > +	mb_width =3D ALIGN(h264->mb_width, 4);
> > +	mb_height =3D ALIGN(h264->mb_height, 4);
> > +	mb_total =3D mb_width * mb_height;
> > +
> > +	h264->ref_size =3D mb_total * MB_MV_SIZE * h264->max_refs;
> > +	h264->ref_vaddr =3D dma_alloc_coherent(core->dev, h264->ref_size,
> > +					     &h264->ref_paddr, GFP_KERNEL);
> > +	if (!h264->ref_vaddr) {
> > +		amvdec_abort(sess);
> > +		return;
> > +	}
> > +
> > +	/* Address to store the references' MVs */
> > +	amvdec_write_dos(core, AV_SCRATCH_1, h264->ref_paddr);
> > +	/* End of ref MV */
> > +	amvdec_write_dos(core, AV_SCRATCH_4, h264->ref_paddr + h264->ref_size=
);
> > +
> > +	amvdec_write_dos(core, AV_SCRATCH_0, (h264->max_refs << 24) |
> > +					     (sess->num_dst_bufs << 16) |
> > +					     ((h264->max_refs - 1) << 8));
> > +}
> > +
> > +/**
> > + * Configure the H.264 decoder when the parser detected a parameter se=
t change
> > + */
> > +static void codec_h264_src_change(struct amvdec_session *sess)
> > +{
> > +	struct amvdec_core *core =3D sess->core;
> > +	struct codec_h264 *h264 =3D sess->priv;
> > +	u32 parsed_info, mb_total;
> > +	u32 crop_infor, crop_bottom, crop_right;
> > +	u32 frame_width, frame_height;
> > +
> > +	sess->keyframe_found =3D 1;
> > +
> > +	parsed_info =3D amvdec_read_dos(core, AV_SCRATCH_1);
> > +
> > +	/* Total number of 16x16 macroblocks */
> > +	mb_total =3D (parsed_info >> MB_TOTAL_BIT) & MB_TOTAL_MASK;
> > +	/* Number of macroblocks per line */
> > +	h264->mb_width =3D parsed_info & MB_WIDTH_MASK;
> > +	/* Number of macroblock lines */
> > +	h264->mb_height =3D mb_total / h264->mb_width;
> > +
> > +	h264->max_refs =3D ((parsed_info >> MAX_REF_BIT) & MAX_REF_MASK) + 1;
> > +
> > +	crop_infor =3D amvdec_read_dos(core, AV_SCRATCH_6);
> > +	crop_bottom =3D (crop_infor & 0xff);
> > +	crop_right =3D (crop_infor >> 16) & 0xff;
> > +
> > +	frame_width =3D h264->mb_width * 16 - crop_right;
> > +	frame_height =3D h264->mb_height * 16 - crop_bottom;
> > +
> > +	dev_dbg(core->dev, "frame: %ux%u; crop: %u %u\n",
> > +		frame_width, frame_height, crop_right, crop_bottom);
> > +
> > +	codec_h264_set_par(sess);
> > +	amvdec_src_change(sess, frame_width, frame_height, h264->max_refs + 5=
);
> > +}
> > +
> > +/**
> > + * The bitstream offset is split in half in 2 different registers.
> > + * Fetch its MSB here, which location depends on the frame number.
> > + */
> > +static u32 get_offset_msb(struct amvdec_core *core, int frame_num)
> > +{
> > +	int take_msb =3D frame_num % 2;
> > +	int reg_offset =3D (frame_num / 2) * 4;
> > +	u32 offset_msb =3D amvdec_read_dos(core, AV_SCRATCH_A + reg_offset);
> > +
> > +	if (take_msb)
> > +		return offset_msb & 0xffff0000;
> > +
> > +	return (offset_msb & 0x0000ffff) << 16;
> > +}
> > +
> > +static void codec_h264_frames_ready(struct amvdec_session *sess, u32 s=
tatus)
> > +{
> > +	struct amvdec_core *core =3D sess->core;
> > +	int error_count;
> > +	int num_frames;
> > +	int i;
> > +
> > +	error_count =3D amvdec_read_dos(core, AV_SCRATCH_D);
> > +	num_frames =3D (status >> 8) & 0xff;
> > +	if (error_count) {
> > +		dev_warn(core->dev,
> > +			 "decoder error(s) happened, count %d\n", error_count);
> > +		amvdec_write_dos(core, AV_SCRATCH_D, 0);
> > +	}
> > +
> > +	for (i =3D 0; i < num_frames; i++) {
> > +		u32 frame_status =3D amvdec_read_dos(core, AV_SCRATCH_1 + i * 4);
> > +		u32 buffer_index =3D frame_status & BUF_IDX_MASK;
> > +		u32 pic_struct =3D (frame_status >> PIC_STRUCT_BIT) &
> > +				 PIC_STRUCT_MASK;
> > +		u32 offset =3D (frame_status >> OFFSET_BIT) & OFFSET_MASK;
> > +		u32 field =3D V4L2_FIELD_NONE;
> > +
> > +		/*
> > +		 * A buffer decode error means it was decoded,
> > +		 * but part of the picture will have artifacts.
> > +		 * Typical reason is a temporarily corrupted bitstream
> > +		 */
> > +		if (frame_status & ERROR_FLAG)
> > +			dev_dbg(core->dev, "Buffer %d decode error\n",
> > +				buffer_index);
> > +
> > +		if (pic_struct =3D=3D PIC_TOP_BOT)
> > +			field =3D V4L2_FIELD_INTERLACED_TB;
> > +		else if (pic_struct =3D=3D PIC_BOT_TOP)
> > +			field =3D V4L2_FIELD_INTERLACED_BT;
> > +
> > +		offset |=3D get_offset_msb(core, i);
> > +		amvdec_dst_buf_done_idx(sess, buffer_index, offset, field);
> > +	}
> > +}
> > +
> > +static irqreturn_t codec_h264_threaded_isr(struct amvdec_session *sess=
)
> > +{
> > +	struct amvdec_core *core =3D sess->core;
> > +	u32 status;
> > +	u32 size;
> > +	u8 cmd;
> > +
> > +	status =3D amvdec_read_dos(core, AV_SCRATCH_0);
> > +	cmd =3D status & CMD_MASK;
> > +
> > +	switch (cmd) {
> > +	case CMD_SRC_CHANGE:
> > +		codec_h264_src_change(sess);
> > +		break;
> > +	case CMD_FRAMES_READY:
> > +		codec_h264_frames_ready(sess, status);
> > +		break;
> > +	case CMD_FATAL_ERROR:
> > +		dev_err(core->dev, "H.264 decoder fatal error\n");
> > +		goto abort;
> > +	case CMD_BAD_WIDTH:
> > +		size =3D (amvdec_read_dos(core, AV_SCRATCH_1) + 1) * 16;
> > +		dev_err(core->dev, "Unsupported video width: %u\n", size);
> > +		goto abort;
> > +	case CMD_BAD_HEIGHT:
> > +		size =3D (amvdec_read_dos(core, AV_SCRATCH_1) + 1) * 16;
> > +		dev_err(core->dev, "Unsupported video height: %u\n", size);
> > +		goto abort;
> > +	case 0: /* Unused but not worth printing for */
> > +	case 9:
> > +		break;
> > +	default:
> > +		dev_info(core->dev, "Unexpected H264 ISR: %08X\n", cmd);
> > +		break;
> > +	}
> > +
> > +	if (cmd && cmd !=3D CMD_SRC_CHANGE)
> > +		amvdec_write_dos(core, AV_SCRATCH_0, 0);
> > +
> > +	/* Decoder has some SEI data for us ; ignore */
> > +	if (amvdec_read_dos(core, AV_SCRATCH_J) & SEI_DATA_READY)
> > +		amvdec_write_dos(core, AV_SCRATCH_J, 0);
> > +
> > +	return IRQ_HANDLED;
> > +abort:
> > +	amvdec_abort(sess);
> > +	return IRQ_HANDLED;
> > +}
> > +
> > +static irqreturn_t codec_h264_isr(struct amvdec_session *sess)
> > +{
> > +	struct amvdec_core *core =3D sess->core;
> > +
> > +	amvdec_write_dos(core, ASSIST_MBOX1_CLR_REG, 1);
> > +
> > +	return IRQ_WAKE_THREAD;
> > +}
> > +
> > +struct amvdec_codec_ops codec_h264_ops =3D {
> > +	.start =3D codec_h264_start,
> > +	.stop =3D codec_h264_stop,
> > +	.load_extended_firmware =3D codec_h264_load_extended_firmware,
> > +	.isr =3D codec_h264_isr,
> > +	.threaded_isr =3D codec_h264_threaded_isr,
> > +	.can_recycle =3D codec_h264_can_recycle,
> > +	.recycle =3D codec_h264_recycle,
> > +	.eos_sequence =3D codec_h264_eos_sequence,
> > +	.resume =3D codec_h264_resume,
> > +};
> > diff --git a/drivers/staging/media/meson/vdec/codec_h264.h b/drivers/st=
aging/media/meson/vdec/codec_h264.h
> > new file mode 100644
> > index 000000000000..7cb4fb86ff36
> > --- /dev/null
> > +++ b/drivers/staging/media/meson/vdec/codec_h264.h
> > @@ -0,0 +1,14 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * Copyright (C) 2019 BayLibre, SAS
> > + * Author: Maxime Jourdan <mjourdan@baylibre.com>
> > + */
> > +
> > +#ifndef __MESON_VDEC_CODEC_H264_H_
> > +#define __MESON_VDEC_CODEC_H264_H_
> > +
> > +#include "vdec.h"
> > +
> > +extern struct amvdec_codec_ops codec_h264_ops;
> > +
> > +#endif
> > diff --git a/drivers/staging/media/meson/vdec/vdec_platform.c b/drivers=
/staging/media/meson/vdec/vdec_platform.c
> > index accad8f8929a..025371ff8fae 100644
> > --- a/drivers/staging/media/meson/vdec/vdec_platform.c
> > +++ b/drivers/staging/media/meson/vdec/vdec_platform.c
> > @@ -9,9 +9,22 @@
> > =20
> >  #include "vdec_1.h"
> >  #include "codec_mpeg12.h"
> > +#include "codec_h264.h"
> > =20
> >  static const struct amvdec_format vdec_formats_gxbb[] =3D {
> >  	{
> > +		.pixfmt =3D V4L2_PIX_FMT_H264,
> > +		.min_buffers =3D 2,
> > +		.max_buffers =3D 24,
> > +		.max_width =3D 1920,
> > +		.max_height =3D 1080,
> > +		.vdec_ops =3D &vdec_1_ops,
> > +		.codec_ops =3D &codec_h264_ops,
> > +		.firmware_path =3D "meson/vdec/gxbb_h264.bin",
> > +		.pixfmts_cap =3D { V4L2_PIX_FMT_NV12M, 0 },
> > +		.flags =3D V4L2_FMT_FLAG_COMPRESSED |
> > +			 V4L2_FMT_FLAG_DYN_RESOLUTION,
> > +	}, {
> >  		.pixfmt =3D V4L2_PIX_FMT_MPEG1,
> >  		.min_buffers =3D 8,
> >  		.max_buffers =3D 8,
> > @@ -38,6 +51,18 @@ static const struct amvdec_format vdec_formats_gxbb[=
] =3D {
> > =20
> >  static const struct amvdec_format vdec_formats_gxl[] =3D {
> >  	{
> > +		.pixfmt =3D V4L2_PIX_FMT_H264,
> > +		.min_buffers =3D 2,
> > +		.max_buffers =3D 24,
> > +		.max_width =3D 3840,
> > +		.max_height =3D 2160,
> > +		.vdec_ops =3D &vdec_1_ops,
> > +		.codec_ops =3D &codec_h264_ops,
> > +		.firmware_path =3D "meson/vdec/gxl_h264.bin",
> > +		.pixfmts_cap =3D { V4L2_PIX_FMT_NV12M, 0 },
> > +		.flags =3D V4L2_FMT_FLAG_COMPRESSED |
> > +			 V4L2_FMT_FLAG_DYN_RESOLUTION,
> > +	}, {
> >  		.pixfmt =3D V4L2_PIX_FMT_MPEG1,
> >  		.min_buffers =3D 8,
> >  		.max_buffers =3D 8,
> > @@ -64,6 +89,18 @@ static const struct amvdec_format vdec_formats_gxl[]=
 =3D {
> > =20
> >  static const struct amvdec_format vdec_formats_gxm[] =3D {
> >  	{
> > +		.pixfmt =3D V4L2_PIX_FMT_H264,
> > +		.min_buffers =3D 2,
> > +		.max_buffers =3D 24,
> > +		.max_width =3D 3840,
> > +		.max_height =3D 2160,
> > +		.vdec_ops =3D &vdec_1_ops,
> > +		.codec_ops =3D &codec_h264_ops,
> > +		.firmware_path =3D "meson/vdec/gxm_h264.bin",
> > +		.pixfmts_cap =3D { V4L2_PIX_FMT_NV12M, 0 },
> > +		.flags =3D V4L2_FMT_FLAG_COMPRESSED |
> > +			 V4L2_FMT_FLAG_DYN_RESOLUTION,
> > +	}, {
> >  		.pixfmt =3D V4L2_PIX_FMT_MPEG1,
> >  		.min_buffers =3D 8,
> >  		.max_buffers =3D 8,

--=-mYXBIi7695WbzFykMfid
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXZz1GwAKCRBxUwItrAao
HGe/AKDEYVr4q06EuIV79IKpI2JfvsSC/wCdHVk18nqV+yL4D3HqmI08dCo2BWY=
=sUK8
-----END PGP SIGNATURE-----

--=-mYXBIi7695WbzFykMfid--



--===============4096224418905895034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4096224418905895034==--


