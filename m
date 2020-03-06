Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA0917C2C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 17:18:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YENa/oqiqw7M0Met7XrWZ06WdCQzV1EK6L23/llpCeE=; b=HVS4UBJjS7dM0ofZuEEtWWiKb
	Z4fb8DPQRN9sJ6Tc/UjK8GBUDa3WjsyE7n5rPBuemm2xbVKe3Q1r+Xskv5OVP+FD1M8RO75ohb3SH
	QxWHxSLW5ZyzpiPxS/nIVeROXctiFK4sGjIq0F8wbFPM6tyu0NyjJRPSoMmolQQedaQi9oRyli9kc
	VJuFTIsoJCIn4ENDbd0SFyv88nA4/4E0z5OV6BtM4jK3vG2G/W/DsV0WktaybjOn4D9V80UQdb/zk
	eBXGh0aGWJMP83JHrOK6UPzFpSD+q6LMNfho8Tnw4ej52N+w7aZTae+T2TA1Ks0nzcdOJ+Un/d4Ci
	E0/ySSFSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAFfx-0000If-2v; Fri, 06 Mar 2020 16:18:13 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAFfk-0000HB-VK; Fri, 06 Mar 2020 16:18:02 +0000
Received: by mail-lf1-x143.google.com with SMTP id j15so2361410lfk.6;
 Fri, 06 Mar 2020 08:18:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=Z+TJMGEeVoGtC49ptXlQFv7le4nU8temgCblUT4vbVU=;
 b=mTpAGJks0WsFlELSXp3Du/jidQlD93dWjc024/xOuNY30kBjARicDYFfvmosqSZXyq
 IDx7jqBxS5J0xYtZe5jG8pEPuKBu/z6SNrj52+Bz9YmP0+nWu9kP60a57/4W4TqkLv+9
 yvCmE6DDVl5vEy36xyI0gv68OW3yDlcKJ00hDSQNEBUqBoQhAYfllOVlQ62fQtad5Hhn
 WIqGlIDQSbO7Nvp9Q2aGjkRGlxGxV1nVe4Xs4JXRuJEDT0Smb65gC5Bb8tSz1aX+73io
 b/Cdxdkkqg9u1B0i5fYuaRtR+7NTH6brln6Zg0pnSQql7QdNlM6ktmv/0s6X0QFmCg2d
 XKgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=Z+TJMGEeVoGtC49ptXlQFv7le4nU8temgCblUT4vbVU=;
 b=p7hHwCucLhQ2vSlHTxFL3PgXQBn3nMiidaicKZBlcQPmWIuSymvUroDFJYYctiNEi9
 DjhAb2vEcY+Nz2iTQfccml7WpqzoFIXMgsccuwwhoBR169E7x9sP3rlE0r3WcYdtqhWB
 yEuoZx5CjZBvQ7fOdRidoHe+4wTYGE9jcrxQfmo7UlqoUWUwdHagi9bP3ONEh86bnU0K
 udOsX8haO9Ovz8j3VwKo03mW3fgOwhx5jiSEFz6ap+tOCVqTA74o9OoKWLDybKpxvGQV
 4sVePe254RU7oKUTAvuygrrNQ5x6jB0NlkH2VPfEMBZ29Y+fUPEyFgaeX3rcf0Sfa/Ap
 Q2TA==
X-Gm-Message-State: ANhLgQ1fU/9WmAFRdVxkgch7rirA/UUB0tx2Wul03Z0OCXxTVsGgZX5k
 YLSXCSjYD5bU5aPt3Ijk+ww=
X-Google-Smtp-Source: ADFU+vuwI6V8yMCkBVEfEewYfNim0qzEgKl4clXc2U7TnaM4A3YLgo87+3yB8AqQvMGoDHbSLJ1YPA==
X-Received: by 2002:a05:6512:108a:: with SMTP id
 j10mr2458169lfg.35.1583511478908; 
 Fri, 06 Mar 2020 08:17:58 -0800 (PST)
Received: from eldfell.localdomain ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id j26sm17383971lfm.3.2020.03.06.08.17.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 08:17:58 -0800 (PST)
Date: Fri, 6 Mar 2020 18:17:47 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/4] drm/fourcc: Add modifier definitions for describing
 Amlogic Video Framebuffer Compression
Message-ID: <20200306181747.5dbda69d@eldfell.localdomain>
In-Reply-To: <27d09559-055a-7bf3-0f23-9948da0e1f76@baylibre.com>
References: <20200221090845.7397-1-narmstrong@baylibre.com>
 <20200221090845.7397-2-narmstrong@baylibre.com>
 <20200303121029.5532669d@eldfell.localdomain>
 <20200303105325.bn4sob6yrdf5mwrh@DESKTOP-E1NTVVP.localdomain>
 <CAKMK7uFgQGrnEkXyac15Wz8Opg43RTa=5cX0nN5=E_omb8oY8Q@mail.gmail.com>
 <20200303152541.68ab6f3d@eldfell.localdomain>
 <20200303173332.1c6daa09@eldfell.localdomain>
 <20200306101328.GR2363188@phenom.ffwll.local>
 <27d09559-055a-7bf3-0f23-9948da0e1f76@baylibre.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_081801_034184_0CD40AA5 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ppaalanen[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amlogic@lists.infradead.org, nd <nd@arm.com>,
 Brian Starkey <brian.starkey@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5811346750860439042=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5811346750860439042==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/QRgxWOW3=LdfxDd168gPaIX"; protocol="application/pgp-signature"

--Sig_/QRgxWOW3=LdfxDd168gPaIX
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 6 Mar 2020 15:40:01 +0100
Neil Armstrong <narmstrong@baylibre.com> wrote:

> Hi Pekka, Brian, Daniel,
>=20
> On 06/03/2020 11:13, Daniel Vetter wrote:
> > On Tue, Mar 03, 2020 at 05:33:32PM +0200, Pekka Paalanen wrote: =20

...

> >> Sorry, it's waypipe, not pipewire:
> >> https://gitlab.freedesktop.org/mstoeckl/waypipe/ =20
> >=20
> > I do think this is very much something we want to make possible. They
> > might pick a silly modifier (compression modifiers only compress bw, by
> > necessity the lossless ones have to increase storage space so kinda dumb
> > thing to push over the network if you don't add .xz or whatever on top)=
. =20
>=20
> The AFBC, and Amlogic FBC are not size optimized compressions, but really
> layout and memory access optimized compressions, without a proper network
> size compression, transferring plain NV12 would be the same.

FWIW, waypipe is not intended to be the most efficient network
streaming protocol, but it is intended to be a direct Wayland protocol
proxy (X11 forwarding, anyone?), which means that it needs to be able to
transmit also dmabuf buffers as is. It does not want to understand
modifiers but just send opaque data.

It may or may not do lossless compression of the data it sends over the
wire, but it will replicate the dmabuf on the remote end.

Or so I'm told.


Thanks,
pq

--Sig_/QRgxWOW3=LdfxDd168gPaIX
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAl5id6sACgkQI1/ltBGq
qqd8PhAArj8wtOHDFlSHaRYFMSEtCurAGSLkUTpmQWl6J1kvS7Stv5XI9jgfSCws
IITQFVQc/DxIvzf4KO9zECMi+oIrhw3vyrvJEIErhE6LuZdqgR2MNP3ATNBKU8WR
OTEawk87ZvZQENGUYPiV9R3uF0+yr2Qlz2FqmizM8lD6fmWXV1QBBKr8AgkZ+/qK
E4e6GRAn+3mBZLS4dxEeU/pATGoZNnOoMpmp/z27AIaibtN88Qpzxy+WtyYUREGm
oTjidQaSOgwEt8nDdhdTFCfZcN4HwH8n5p5JleSvKVziTQlTy5IQZasa5ViuX0wB
eC+x6OmdrxZ0wBuDfZBp26jKmWP3QDxfwaL+QCRnor+9Ao7Tty9MoGVAbPuy1mwc
SzJpjIYsY0OGIjp6OL/Isi5wPZbawkeifutoPVdo9o9PdRIzhR3PJtoOZPN8Ywva
yFP28GivCkapKxSlM3NDDjzA5dT+rUFEeBGurXuZqPZe9rKocN2CmXQ96wsmYJ/a
WMsJNg7EiswQoUf/JadWfm5dpSK42wyGGs9M1i6yRpTo+QGGzQVkmT5Kx7uLAd+p
vuYVc+bNjwNeELU4UhEBXZVWM3n7l7OIcL38NshrnBhdOs0Zy/ElXnSmHkgpccbv
sfZp+i8Id5jdyzKGwzbFsG8OQ/zlUyM9B7yhHhejzP7Q482a3gA=
=KY6f
-----END PGP SIGNATURE-----

--Sig_/QRgxWOW3=LdfxDd168gPaIX--


--===============5811346750860439042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5811346750860439042==--

