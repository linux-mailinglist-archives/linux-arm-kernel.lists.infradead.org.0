Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2630A177384
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 11:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AuQ3rmDSGwJGrYuohKesu8lMqBDWc4IiAlOCnZjhcZs=; b=F/HCaY2Qa0QzASR+8FLT5kB5c
	5cYd0nRneeMlpv3Ue8NljaJNi/8WAZ2JPUqUnjsqG3QIQq4SKTb+Nbzh/olEH6zJWkAtJOJbRqFuF
	1tPTdtJK0pmfbhgJpF0H9PXcyaZAua5imrbx95y/atHrUhHqzLH2I5e3bI+jqo/JJ0LpeoflPuWpY
	Mx/XWF+aokMcAw2BaXhSZvyGDsAlkNeHwx+ksVN1Rj9tCwJAJ8Nl1idefnB3bodiSeJCDLwBFPL3S
	s00jWO5QCRS+KWe29zGNXPle1gnSMXDQNvmQxgnnDm5kdY8I2hJ+/gisNrW9lKIieobC5zfpP4dpE
	P3psqA+gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j94Vj-0001bQ-6W; Tue, 03 Mar 2020 10:10:47 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j94VY-0001Zu-7R; Tue, 03 Mar 2020 10:10:37 +0000
Received: by mail-lf1-x142.google.com with SMTP id c20so2254257lfb.0;
 Tue, 03 Mar 2020 02:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=2lBH94o2PcHIglkC8tdFIZftFpVYeorWUf+G12zJQW4=;
 b=DUixScdOTtavztb6NXfZUx6eofx4PGD5zfvUfbjB4CXGeLO7Ur0s8TwPkEOUgEXvPu
 Ts8rCS9f1rGO1mjaIpUl347NhBjVlbjwofGVA4Nm2NuY6YuUA9XZOXWcAJ/8LyaJDwD6
 o3tqXXJHeLh2zJQTfdGqYj6bYRPkfN7/yjk8bwym/+yQ2bBrjbOaWAomDYXHa5KS4LVE
 XyC4IUhWqzizPlK75qgJKhZquU6yLZkoasT6vhchjnbSCjcVupK5pNqwM6yI43/05uMB
 vDmwbIqhdDtSXyWvSPmEnBkBtQlQiRc9YU7QZ+Rc2g5WeMqpuDNZlS0ZZ3HowXz/pVlv
 n7rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=2lBH94o2PcHIglkC8tdFIZftFpVYeorWUf+G12zJQW4=;
 b=G/KHqQ5rNgUBOk4P+1jLWaTYFYkXDuqrD7NHK04005KzOzY2FohkzxeEXlwPWEIp7J
 eqZ/223Dyqa2VAyvTrOUbOwQ25MWoODJe9bg0rZJ6UGP2qBeareKUIXg6Qlz2y4u+uJs
 NfTaoa3X1+c4gfCVATNDviwBja+Cdpxa3MJlZNypo0mCwflYt7uL5t9KRzLHLwqLe0jf
 8Py2Te4dcgwLPBth+4OctU7HAa+0QapE4JI/bmwEX8hwgNKfJjfq19xmc/1XZr0ntEg8
 wMtCmo6y9ziQdBolqEridh8oaJbGFcJDINU9bQTyuchTtB0KaHO+JXaT1IMBCh/i3D0F
 hyLg==
X-Gm-Message-State: ANhLgQ2fVFYncuAAXvLOHBBV3lhsX0xc+OhxUsbSxTezDdjIR3K7ndew
 FkUzXKB/AYY6cFkGPvIp+eA=
X-Google-Smtp-Source: ADFU+vvCK/dhrA0HP90FSZ4H2gM/ZTfYDVGZI2QL86FFvhSRqOivBshJgAGF9V7MeYb1cB5n62gWKQ==
X-Received: by 2002:ac2:48b6:: with SMTP id u22mr2319457lfg.18.1583230233683; 
 Tue, 03 Mar 2020 02:10:33 -0800 (PST)
Received: from eldfell.localdomain ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id z1sm123878ljh.17.2020.03.03.02.10.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 02:10:33 -0800 (PST)
Date: Tue, 3 Mar 2020 12:10:29 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/4] drm/fourcc: Add modifier definitions for describing
 Amlogic Video Framebuffer Compression
Message-ID: <20200303121029.5532669d@eldfell.localdomain>
In-Reply-To: <20200221090845.7397-2-narmstrong@baylibre.com>
References: <20200221090845.7397-1-narmstrong@baylibre.com>
 <20200221090845.7397-2-narmstrong@baylibre.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_021036_295774_CD0B35E1 
X-CRM114-Status: GOOD (  28.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ppaalanen[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6284670874950246892=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6284670874950246892==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/rszd0x.FOSs6mcQm0ZPJOpS"; protocol="application/pgp-signature"

--Sig_/rszd0x.FOSs6mcQm0ZPJOpS
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 21 Feb 2020 10:08:42 +0100
Neil Armstrong <narmstrong@baylibre.com> wrote:

> Amlogic uses a proprietary lossless image compression protocol and format
> for their hardware video codec accelerators, either video decoders or
> video input encoders.
>=20
> It considerably reduces memory bandwidth while writing and reading
> frames in memory.
>=20
> The underlying storage is considered to be 3 components, 8bit or 10-bit
> per component, YCbCr 420, single plane :
> - DRM_FORMAT_YUV420_8BIT
> - DRM_FORMAT_YUV420_10BIT
>=20
> This modifier will be notably added to DMA-BUF frames imported from the V=
4L2
> Amlogic VDEC decoder.
>=20
> At least two options are supported :
> - Scatter mode: the buffer is filled with a IOMMU scatter table referring
>   to the encoder current memory layout. This mode if more efficient in te=
rms
>   of memory allocation but frames are not dumpable and only valid during =
until
>   the buffer is freed and back in control of the encoder
> - Memory saving: when the pixel bpp is 8b, the size of the superblock can
>   be reduced, thus saving memory.
>=20
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  include/uapi/drm/drm_fourcc.h | 56 +++++++++++++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
>=20
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index 8bc0b31597d8..8a6e87bacadb 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -309,6 +309,7 @@ extern "C" {
>  #define DRM_FORMAT_MOD_VENDOR_BROADCOM 0x07
>  #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
>  #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
> +#define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
> =20
>  /* add more to the end as needed */
> =20
> @@ -804,6 +805,61 @@ extern "C" {
>   */
>  #define DRM_FORMAT_MOD_ALLWINNER_TILED fourcc_mod_code(ALLWINNER, 1)
> =20
> +/*
> + * Amlogic Video Framebuffer Compression modifiers
> + *
> + * Amlogic uses a proprietary lossless image compression protocol and fo=
rmat
> + * for their hardware video codec accelerators, either video decoders or
> + * video input encoders.
> + *
> + * It considerably reduces memory bandwidth while writing and reading
> + * frames in memory.
> + * Implementation details may be platform and SoC specific, and shared
> + * between the producer and the decoder on the same platform.

Hi,

after a lengthy IRC discussion on #dri-devel, this "may be platform and
SoC specific" is a problem.

It can be an issue in two ways:

- If something in the data acts like a sub-modifier, then advertising
  support for one modifier does not really tell if the data layout is
  supported or not.

- If you need to know the platform and/or SoC to be able to interpret
  the data, it means the modifier is ill-defined and cannot be used in
  inter-machine communication (e.g. Pipewire).

Neil mentioned the data contains a "header" that further specifies
things, but there is no specification about the header itself.
Therefore I don't think we can even know if the header contains
something that acts like a sub-modifier or not.

All this sounds like the modifier definitions here are not enough to
fully interpret the data. At the very least I would expect a reference
to a document explaining the "header", or even better, a kernel ReST
doc.

I wonder if this is at all suitable as a DRM format modifier as is. I
have been assuming that a modifier together with all the usual FB
parameters should be enough to interpret the stored data, but in this
case I have doubt it actually is.

I have no problem with proprietary data layouts as long as they are
fully specified.

I do feel like I would not be able to write a software decoder for this
set of modifiers given the details below.


Thanks,
pq

> + *
> + * The underlying storage is considered to be 3 components, 8bit or 10-b=
it
> + * per component YCbCr 420, single plane :
> + * - DRM_FORMAT_YUV420_8BIT
> + * - DRM_FORMAT_YUV420_10BIT
> + *
> + * The classic memory storage is composed of:
> + * - a body content organized in 64x32 superblocks with 4096 bytes per
> + *   superblock in default mode.
> + * - a 32 bytes per 128x64 header block
> + */
> +#define DRM_FORMAT_MOD_AMLOGIC_FBC_DEFAULT fourcc_mod_code(AMLOGIC, 0)
> +
> +/*
> + * Amlogic Video Framebuffer Compression Options
> + *
> + * Two optional features are available which may not supported/used on e=
very
> + * SoCs and Compressed Framebuffer producers.
> + */
> +#define DRM_FORMAT_MOD_AMLOGIC_FBC(__modes) fourcc_mod_code(AMLOGIC, __m=
odes)
> +
> +/*
> + * Amlogic FBC Scatter Memory layout
> + *
> + * Indicates the header contains IOMMU references to the compressed
> + * frames content to optimize memory access and layout.
> + * In this mode, only the header memory address is needed, thus the
> + * content memory organization is tied to the current producer
> + * execution and cannot be saved/dumped.
> + */
> +#define DRM_FORMAT_MOD_AMLOGIC_FBC_SCATTER	(1ULL << 0)
> +
> +/*
> + * Amlogic FBC Memory Saving mode
> + *
> + * Indicates the storage is packed when pixel size is multiple of word
> + * boudaries, i.e. 8bit should be stored in this mode to save allocation
> + * memory.
> + *
> + * This mode reduces body layout to 3072 bytes per 64x32 superblock and
> + * 3200 bytes per 64x32 superblock combined with scatter mode.
> + */
> +#define DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING	(1ULL << 1)
> +
>  #if defined(__cplusplus)
>  }
>  #endif


--Sig_/rszd0x.FOSs6mcQm0ZPJOpS
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAl5eLRUACgkQI1/ltBGq
qqdL8xAAjMPK1D1qmrv9Tqdi/ZSw69SGwq6aCR6pDThCLT+q4CVDMg3fbMdA+Evy
4owhcCrMY+SsDWV8wksuyfJSanusmFQjnRz0eiU6gP/Nnp/AhoMw5R0mqePmRen2
XUN0CkTmbNQfaZtYnv3LkLG8/Azz/YPwx2V6iQ2LEbPScnxfsSEd4dvv0pdqynNw
czBQEKLEKDOtLWfS/W3xB8Etc1i+HgBS97vLllbQ1UtEt1L5Q5CU7ZrxdwM3+7XH
IM+uaBh9ud9sZJgyejAAU1e6FiD2KDkpI3A6VKMyhhBqMw8n+8Vo5kL878VvqfZO
ufAwE056wNelfhWuSCpu5zi5cKBs3z7BvS55jdDi+whyorgZAOflPxk3XllWhPby
YK/o5b8yPuL6WvZtYLjJNGx8skJrNpGfRDvpJqIS5803RofPRdYofB7JL45GjsNo
vxD6zDfb8k8jK2rbaWzlSfzklwj422Nw1wkz9qs6qIbzih1n5lOzcqqSJGyQW/mG
0liMnUqg2HvXFCFtvh1tNtO7eD6nI/pjSKaDatji/QPAHEkdYPVUlnWz1bWaweOV
Xd944KvyOIpfMo/RLlgGOKXKF2ego9QG6PeE/lPoxLvznKLui4s4YIwC4cGcqAGb
GZ9ZCw8A/wKOwOlRJwYmnT3eB9GPksMJPTsR/hVMCaNGmvVducM=
=CoFq
-----END PGP SIGNATURE-----

--Sig_/rszd0x.FOSs6mcQm0ZPJOpS--


--===============6284670874950246892==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6284670874950246892==--

