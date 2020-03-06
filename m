Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CECDE17BCC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:31:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qanVXLyqhPcp75SC08/BSkmV+oQpEIt44uYs4ujxXu8=; b=k4m/NnpiPw4ZOMYgxTas3SKqi
	Xh1R09UYj0Emi0cZ47ayQSNqBo38BY/Mbcy+WLQ/yB8HXxMTcAnyXAq1WPZXn/A7vmtI/QnSgBNQ0
	TOV2Ae60tg1hiYnTWhHckHe8qFD1S9iXC0/x+NbRihlT0rL+4EvZXwWuvWwvgCL71dFMxGLilURMr
	EeiSFyu6Ra4YVlMaqNtrOjVKFrL5QB5q9vq+c807WVhJZSmmihG9Dew3agq8HrD8KyqzmzJt00L26
	kuTd+MMh8nhuiBdOJGZLVoLMt8GrzWVpCwX9i/Y0HNiLg6Ext66ue6K6rxAuCONUHS5aBkyVCzIU3
	hUcfcoBjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAC8Q-0000de-DM; Fri, 06 Mar 2020 12:31:22 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAC8E-0000bd-8r; Fri, 06 Mar 2020 12:31:12 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so2036546ljh.5;
 Fri, 06 Mar 2020 04:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=to7bU+MtbuWq2zSmrshAa2RS+7lmc+xLVoJxUf+INQ0=;
 b=l0EQ6qPcS14s2kGTIH/cVFg+M+r1om0oVHrp2ziFTs3W5dZo7pIDCpOuV3oEpxwQKI
 FEaAttqwy0EDA2gpyd6VO4XVaFUXSJ2Piiwn0K/lkpbfgJfIfdFrNxwqpGGlsqKnjuE1
 brEh3Lcq4oQ+ApN96M2bp4SkOCiW0hElG2AJUIyA4cKIjPFvyOiz2ox1AucBB3FDunAI
 Q4TZ1fR8oyRRaOAyvrf7JmCEdx7t0SdR1dtQEjJYHnOJxhoHdiYybr/KZfusEKlnnq/i
 zgGlREj08Ql/Pi+N6uAseYkxvj+szMrdMSWnKhZCfjfrzpHzEFTL1tMAjUFlIPGVqaz7
 ldWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=to7bU+MtbuWq2zSmrshAa2RS+7lmc+xLVoJxUf+INQ0=;
 b=Sf0fhpol1nhn4D5DEXhBPGbW5W7zzbZ5A7KF46zGiirxJzu015x4sYxa8FYdGfaoRr
 bH9H/qgTqTK2UAFFvb6kXVdwXH2IlejWe7Edr3VFNKt+LXqULms8WhCpzzlmNQMh6Aa+
 mx+mjT6tqAX5oZLCajmZeTKjvfTRCa18ABFMgQuPTjckGFzs0A/m8N//xQ+HZ6nO4myC
 ny4GJbsIv43PjBkr2nlqxRKyhnMX0wLCzxvBinYjIj81BcznIMRwoK5r21HlbRodAQ3K
 PeIrig5PSuown8/BbyJApfKRD5MUHE4bIRHvISFTWyVIVeBUuD0vWYZeoSutrBZDI0xx
 7NIw==
X-Gm-Message-State: ANhLgQ0Ox8/Q33N1hWax0cgNO+LW1MwRISI2ZDkAmwK7kgw5lW9satzt
 1EN2w8y3c4HWCVl3kJydwLE=
X-Google-Smtp-Source: ADFU+vt4dBzbnq/Y0wVdLf39g1+fsGA0GgRTLzQx8tXoVUYdyq9dw+lDMisETRdewWX4xZ+IbYqubw==
X-Received: by 2002:a2e:9008:: with SMTP id h8mr1902762ljg.217.1583497867526; 
 Fri, 06 Mar 2020 04:31:07 -0800 (PST)
Received: from eldfell.localdomain ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id u4sm2691157lfo.79.2020.03.06.04.31.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 04:31:07 -0800 (PST)
Date: Fri, 6 Mar 2020 14:30:57 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 1/4] drm/fourcc: Add modifier definitions for describing
 Amlogic Video Framebuffer Compression
Message-ID: <20200306143057.1506cac3@eldfell.localdomain>
In-Reply-To: <20200306101328.GR2363188@phenom.ffwll.local>
References: <20200221090845.7397-1-narmstrong@baylibre.com>
 <20200221090845.7397-2-narmstrong@baylibre.com>
 <20200303121029.5532669d@eldfell.localdomain>
 <20200303105325.bn4sob6yrdf5mwrh@DESKTOP-E1NTVVP.localdomain>
 <CAKMK7uFgQGrnEkXyac15Wz8Opg43RTa=5cX0nN5=E_omb8oY8Q@mail.gmail.com>
 <20200303152541.68ab6f3d@eldfell.localdomain>
 <20200303173332.1c6daa09@eldfell.localdomain>
 <20200306101328.GR2363188@phenom.ffwll.local>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_043110_314745_49F2F3E7 
X-CRM114-Status: GOOD (  36.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-amlogic@lists.infradead.org,
 nd <nd@arm.com>, Brian Starkey <brian.starkey@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7592435538798515455=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7592435538798515455==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/r_fP+nfVOoASHK7UVgVRJ0U"; protocol="application/pgp-signature"

--Sig_/r_fP+nfVOoASHK7UVgVRJ0U
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 6 Mar 2020 11:13:28 +0100
Daniel Vetter <daniel@ffwll.ch> wrote:

> On Tue, Mar 03, 2020 at 05:33:32PM +0200, Pekka Paalanen wrote:
> > On Tue, 3 Mar 2020 15:25:41 +0200
> > Pekka Paalanen <ppaalanen@gmail.com> wrote:
> >  =20
> > > On Tue, 3 Mar 2020 12:37:16 +0100
> > > Daniel Vetter <daniel@ffwll.ch> wrote:
> > >  =20
> > > > On Tue, Mar 3, 2020 at 11:53 AM Brian Starkey <brian.starkey@arm.co=
m> wrote:   =20
> > > > >
> > > > > Hi,
> > > > >
> > > > > On Tue, Mar 03, 2020 at 12:10:29PM +0200, Pekka Paalanen wrote:  =
   =20
> > > > > > On Fri, 21 Feb 2020 10:08:42 +0100
> > > > > > Neil Armstrong <narmstrong@baylibre.com> wrote:
> > > > > >     =20
> > ... =20
> > > > > > > +/*
> > > > > > > + * Amlogic Video Framebuffer Compression modifiers
> > > > > > > + *
> > > > > > > + * Amlogic uses a proprietary lossless image compression pro=
tocol and format
> > > > > > > + * for their hardware video codec accelerators, either video=
 decoders or
> > > > > > > + * video input encoders.
> > > > > > > + *
> > > > > > > + * It considerably reduces memory bandwidth while writing an=
d reading
> > > > > > > + * frames in memory.
> > > > > > > + * Implementation details may be platform and SoC specific, =
and shared
> > > > > > > + * between the producer and the decoder on the same platform=
.     =20
> > > > > >
> > > > > > Hi,
> > > > > >
> > > > > > after a lengthy IRC discussion on #dri-devel, this "may be plat=
form and
> > > > > > SoC specific" is a problem.
> > > > > >
> > > > > > It can be an issue in two ways:
> > > > > >
> > > > > > - If something in the data acts like a sub-modifier, then adver=
tising
> > > > > >   support for one modifier does not really tell if the data lay=
out is
> > > > > >   supported or not.
> > > > > >
> > > > > > - If you need to know the platform and/or SoC to be able to int=
erpret
> > > > > >   the data, it means the modifier is ill-defined and cannot be =
used in
> > > > > >   inter-machine communication (e.g. Pipewire).
> > > > > >     =20
> > > > >
> > > > > Playing devil's advocate, the comment sounds similar to
> > > > > I915_FORMAT_MOD_{X,Y}_TILED:
> > > > >
> > > > >  * This format is highly platforms specific and not useful for cr=
oss-driver
> > > > >  * sharing. It exists since on a given platform it does uniquely =
identify the
> > > > >  * layout in a simple way for i915-specific userspace.     =20
> > > >=20
> > > > Yeah which we regret now. We need to now roll out a new set of
> > > > modifiers for at least some of the differences in these on the
> > > > modern-ish chips (the old crap is pretty much lost cause anyway).
> > > >=20
> > > > This was kinda a nasty hack to smooth things over since we have epic
> > > > amounts of userspace, but it's really not a great idea (and no one
> > > > else really has epic amounts of existing userspace that uses tiling
> > > > flags everywhere, this is all new code).
> > > > -Daniel
> > > >    =20
> > > > > Isn't the statement that this for sharing between producer and de=
coder
> > > > > _on the same platform_ a similar clause with the same effect?
> > > > >
> > > > > What advantage is there to exposing the gory details? For Arm AFBC
> > > > > it's necessary because IP on the SoC can be (likely to be) from
> > > > > different vendors with different capabilities.
> > > > >
> > > > > If this is only for talking between Amlogic IP on the same SoC, a=
nd
> > > > > those devices support all the same "flavours", I don't see what is
> > > > > gained by making userspace care about internals.     =20
> > > >=20
> > > > The trouble is if you mix&match IP cores, and one of them supports
> > > > flavours A, B, C and the other C, D, E. But all you have is a single
> > > > magic modifier for "whatever the flavour is that soc prefers". So
> > > > someone gets to stuff this in DT.
> > > >=20
> > > > Also eventually, maybe, perhaps ARM does grow up into the
> > > > client/server space with add-on pcie graphics, and at least for cli=
ent
> > > > you very often end up with integrated + add-in pcie gpu. At that po=
int
> > > > you really can't have magic per-soc modifiers anymore.   =20
> > >=20
> > > Hi,
> > >=20
> > > I also heard that Pipewire will copy buffers and modifiers verbatim
> > > from one machine to another when streaming across network, assuming
> > > that the same modifier means the same thing on all machines.[Citation=
 needed]
> > >=20
> > > If that is something that must not be done with DRM modifiers, then
> > > please contact them and document that. =20
> >=20
> > Sorry, it's waypipe, not pipewire:
> > https://gitlab.freedesktop.org/mstoeckl/waypipe/ =20
>=20
> I do think this is very much something we want to make possible. They
> might pick a silly modifier (compression modifiers only compress bw, by
> necessity the lossless ones have to increase storage space so kinda dumb
> thing to push over the network if you don't add .xz or whatever on top).
>=20
> I'm also hoping that intel's modifiers are definitely the one and only
> that we ever screwed up, and we should be getting those fixed in the near
> future too.
>=20
> So maybe what we should do instead is add a comment to the modifier docs
> that this stuff _is_ supposed to be transferrable over networks and work.

Personally I was not sure if it was so. Good to hear it is. Writing it
down would be much appreciated.

While at it, could you also write down something about the requirements
of memory layout documentation? What I mean is, is it required that the
memory layout is publicly specified *somewhere* if not in the modifier
doc itself?

It's not necessary for anyone to actually know the memory layout when
the use cases only involve hardware access, but if there is no public
spec I fear it would be easy to adapt an incompatible layout somewhere
and never be able to notice until some rare case of interoperability
mysteriously produces garbage.


Thanks,
pq

--Sig_/r_fP+nfVOoASHK7UVgVRJ0U
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAl5iQoEACgkQI1/ltBGq
qqfCGxAAox4nO+w/VXB7GvaaUnfq9XR88+4sxGBKVIkfOVSsxxnE7oA+DAPrzq3C
FqWKzbVYJhYTD84jea8tM029FeGPAlQbxZAph4YRM1kfCKqduxoPwoLOqR5k3W9X
vkLo0T0m6oKslV2Gico/FFIRwCMZjHPh++ye8Ka9e/b+cNTTsYFH03gyAmyfiHa5
wmt91K/ubByRZTmY9QoihQto4M1W7t5V76hl2yjVRDkU6BVM1K8DB0K1VhPBTDfZ
ratG+r1scmAM2bsbsFWwxaTiv1zF9Z1zvUZcSSKFkWbbsU+AF+rmdYBs+M9/Wnny
INwPZIMg7GqzwV4z6J++E4TajjFLeku/pqmZSX2ITGu7f4WtOV64m5+aQDdohNuh
kUepGl2CCFtWaAOLUwdpwfGw8SFA74g4ac1xTyBGgNECewmt44fkP785imtmtYAn
BiTchituR4jNrOTEo9WiZ4+bDC5dgjhp9dfZdWSEe7l0r3HgDOdFYcNbaCap3tKt
5PE6MqyXXOD6yxqwfgpuFp/hja0T73RfzutNi6s84Bdx7M00lAg0owl3JrHx2Zou
buqgRbNYYUYD7qmoYMUvpYlEsTCXClURVawf9G+Gh5Uc3bW5lGIR/DdzAw3tdPwW
9TkR0C7rUWVWIotYUxwUujYoq4FXWv1mD4C2t/F2FXD8WAiVBqs=
=eeJ1
-----END PGP SIGNATURE-----

--Sig_/r_fP+nfVOoASHK7UVgVRJ0U--


--===============7592435538798515455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7592435538798515455==--

