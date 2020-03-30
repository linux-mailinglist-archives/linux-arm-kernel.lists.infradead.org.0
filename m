Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45238197EAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 16:41:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hp3AfY6DHQdn9rObFn9qqTfDBgMru4Ea50UQaR+l4wI=; b=LBFh/jtAUh23j/Jp9KbKqvQxL
	90YxOXS8USPMdjb4KOuSkaZ2057y3/KF0qF41cpmKh6zpAexaRnlNnYJ2vHJioKb1uLlTLEvf8ksd
	FsunoazTTfBJ9SKtquBNLmB+5V47O7quJi/dNMdCEeUpHLCg27t3wlI6hRYUiSzp44cn7M1WRM87x
	HhVs0vFOhGcs0YmxEBzxG/DYb5otftiou3T8MP8IQPxLoIa5mOXsaWrUqTscFgQJCt0r17+xaFTcR
	YZJt/auG78Tjja/eM9JIR0MOwVLuExThMXuYwTiGF7Qw0NL+pGm0pY9GitGeOdhYRkeic43TIisQB
	74JNrLo3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvba-0002Nv-Pn; Mon, 30 Mar 2020 14:41:34 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvbH-0002ME-MX; Mon, 30 Mar 2020 14:41:17 +0000
Received: by mail-lj1-x241.google.com with SMTP id g12so18391470ljj.3;
 Mon, 30 Mar 2020 07:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=epGP9PMNlJZHcB9SQeovMPld4EXmyON6fdMXbQw6ctk=;
 b=Tr4b75/53N7F3lQKDm58ZgR+5CQ3k0XrSfsIMtvAWDVV6wllqmffHDckG7Qk7wBKkX
 dBNwb5XODKTDyKMpjQ2Cpe2aEmn511P5hhH5R3hMrnJItHhetRGirn4i5LwA/Br+N6iS
 MtFqGPztQxlXTi6/I6WNowVLZ4YAwsePq4PUVda6gjJsCXgi3klBW3aFvY0bna7SxOcG
 EJfhSt0c1dUgzu0kr9lajPsAxOFntDlPD9Nslh0rKC2Idobe2tQ4mqn+nTpAtglKM5vy
 DsehBJacXDi1PcOJf6AVs/2IUyFzeuWoR8IhHgnr6BHwlHJQcnCpvTpbe1zW7lzPHAJ1
 FAVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=epGP9PMNlJZHcB9SQeovMPld4EXmyON6fdMXbQw6ctk=;
 b=aNiltvjhs1PB7gdjiSKhSG2uunRMHpaiFaoFwPvnWcIFvx3Usf0FSc4cpb2pj3cbcr
 9h8ZlCPoJJET7vz9rIney0pkAVH5oQDC+uqIJmZMsUC26NUYIGL2BSrL+6gVAPpbw0yx
 YddePRNdKoYi2gv7ZCq5HGxMpRGbgmGqACFDM5C2DvUwiFr81kjtCeHvR02G/iM0UmnO
 rYR3XTi5rgsjdJih5KZkXgXNzFi1lBbzQQdYraM2kgjFUGSnBSEWV9W0XOM5/23/7L+V
 qqxgULkxKLpRGHJ9P07hsQljYYxmmiXACie68F8o5vw4rVPG7h7e0jZqNyvVwxnHracc
 MB0w==
X-Gm-Message-State: AGi0PuaFUNLzq3jIj3YfDXBVJpDUrpqibUKVTv34eLA3+V+tE5JoEQVF
 /Q1UOHvVdiVur9gRUOvY+P0=
X-Google-Smtp-Source: APiQypLij2junLsRYlGcxvO72I0+NagELD7M2Fum/IVNxmdF+fFujP753SxY5sHW00RrGQbR982wYw==
X-Received: by 2002:a2e:9798:: with SMTP id y24mr3364372lji.267.1585579273383; 
 Mon, 30 Mar 2020 07:41:13 -0700 (PDT)
Received: from eldfell.localdomain ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id d27sm4486557lfq.73.2020.03.30.07.41.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 07:41:12 -0700 (PDT)
Date: Mon, 30 Mar 2020 17:41:03 +0300
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Neil Armstrong <narmstrong@baylibre.com>, code@mstoeckl.com
Subject: Re: [PATCH v4 7/8] drm/fourcc: amlogic: Add modifier definitions
 for the Scatter layout
Message-ID: <20200330174103.10cf2f37@eldfell.localdomain>
In-Reply-To: <7acc751d-161f-af9c-d896-b4e43fb9b0ac@baylibre.com>
References: <20200325085025.30631-1-narmstrong@baylibre.com>
 <20200325085025.30631-8-narmstrong@baylibre.com>
 <JgBZ7eZYMgXRNu_-E4ItS1bud9mEe15xptZEX_XhsM_h8_iIZTOmPokEVxPJYwX0wP0pmb5p-ymubyyZP3kVbcfuDNdmM0__L8wBR5IykfE=@emersion.fr>
 <b1386ef5-c3e3-c07b-5982-e3f02441b431@baylibre.com>
 <20200325154921.2a87930c@eldfell.localdomain>
 <a385e2f6-52fa-e195-15e0-2132befc9f35@baylibre.com>
 <20200326113632.6585cf7b@eldfell.localdomain>
 <7acc751d-161f-af9c-d896-b4e43fb9b0ac@baylibre.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_074115_765028_45B4CC59 
X-CRM114-Status: GOOD (  29.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ppaalanen[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mjourdan@baylibre.com" <mjourdan@baylibre.com>,
 Simon Ser <contact@emersion.fr>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Kevin Hilman <khilman@baylibre.com>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7025587155171996418=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7025587155171996418==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/dvN3iCsthpEZCSKTeqjvfgH"; protocol="application/pgp-signature"

--Sig_/dvN3iCsthpEZCSKTeqjvfgH
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 27 Mar 2020 15:14:46 +0100
Neil Armstrong <narmstrong@baylibre.com> wrote:

> Hi,
>=20
> On 26/03/2020 10:36, Pekka Paalanen wrote:
> > On Wed, 25 Mar 2020 17:18:15 +0100
> > Neil Armstrong <narmstrong@baylibre.com> wrote:
> >  =20
> >> Hi,
> >>
> >> On 25/03/2020 14:49, Pekka Paalanen wrote: =20
> >>> On Wed, 25 Mar 2020 11:24:15 +0100
> >>> Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>>    =20
> >>>> Hi,
> >>>>
> >>>> On 25/03/2020 10:04, Simon Ser wrote:   =20
> >>>>> On Wednesday, March 25, 2020 9:50 AM, Neil Armstrong <narmstrong@ba=
ylibre.com> wrote:
> >>>>>      =20
> >>>>>> Amlogic uses a proprietary lossless image compression protocol and=
 format
> >>>>>> for their hardware video codec accelerators, either video decoders=
 or
> >>>>>> video input encoders.
> >>>>>>
> >>>>>> This introduces the Scatter Memory layout, means the header contai=
ns IOMMU
> >>>>>> references to the compressed frames content to optimize memory acc=
ess
> >>>>>> and layout.
> >>>>>>
> >>>>>> In this mode, only the header memory address is needed, thus the c=
ontent
> >>>>>> memory organization is tied to the current producer execution and =
cannot
> >>>>>> be saved/dumped neither transferrable between Amlogic SoCs support=
ing this
> >>>>>> modifier.     =20
> >>>>>
> >>>>> I don't think this is suitable for modifiers. User-space relies on
> >>>>> being able to copy a buffer from one machine to another over the
> >>>>> network. It would be pretty annoying for user-space to have a black=
list
> >>>>> of modifiers that don't work this way.
> >>>>>
> >>>>> Example of such user-space:
> >>>>> https://gitlab.freedesktop.org/mstoeckl/waypipe/
> >>>>>      =20
> >>>>
> >>>> I really understand your point, but this is one of the use-cases we =
need solve.
> >>>> This is why I split the fourcc patch and added an explicit comment.
> >>>>
> >>>> Please point me a way to display such buffer, the HW exists, works l=
ike that and
> >>>> it's a fact and can't change.
> >>>>
> >>>> It will be the same for secure zero-copy buffers we can't map from u=
serspace, but
> >>>> only the HW decoder can read/write and HW display can read.   =20
> >>>
> >>> The comparison to secure buffers is a good one.
> >>>
> >>> Are buffers with the DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_SCATTER modifi=
er
> >>> meaningfully mmappable to CPU always / sometimes / never /
> >>> varies-and-cannot-know?   =20
> >>
> >> mmappable, yes in our WIP V4L2 driver in non-secure path, meaningful, =
absolutely never.
> >>
> >> So yeah, these should not be mmappable since not meaningful. =20
> >=20
> > Ok. So we have a modifier that means there is no point in even trying to
> > mmap the buffer.
> >=20
> > Not being able to mmap automatically makes things like waypipe not be
> > able to work on the buffer, so the buffer cannot be replicated over a
> > network, hence there is no compatibility issue. However, it still
> > leaves the problem that, since waypipe is "just" a message relay that
> > does not participate in the protocol really, the two end points might
> > still negotiate to use a modifier that waypipe cannot handle. =20
>=20
> Not mmapable won't be limited to this kind of buffer, or secure, any DMA-=
BUF
> provider can decide to disable mmaping, so waypipe should work with this
> whatever this discussion goes to.
>=20
> >=20
> > Secure buffers have the same problem: by definition, one must not be
> > able to replicate the buffer elsewhere.
> >=20
> > To me it seems there needs to be a way to identify buffers that cannot
> > be mmapped. mmap() failing is obvious, but in waypipe's case it is too
> > late - the end points have already negotiated the formats and modifiers
> > and they cannot handle failures afterwards. =20
>=20
> The AFAIK last open question was on this thread:
> https://lore.kernel.org/dri-devel/d6f8092d-9f90-d5ff-2ab3-b1867f8f5700@ti=
.com/
> But it was more like, how the consumer driver knows the buffer is secure.
>=20
> Daniel, is there something new ?
>=20
> >  =20
> >>>
> >>> Maybe this type should be handled similar to secure buffers, with the
> >>> exception that they are not actually secured but only mostly
> >>> inaccessible. Then again, I haven't looked at any of the secure buffer
> >>> proposals.   =20
> >>
> >> Actually, the Amlogic platforms offers secure video path using these e=
xact
> >> modifiers, AFAIK it doesn't support the NV12 dual-write output in secu=
re.
> >>
> >> AFAIK last submission is from AMD, and it doesn't talk at all about mm=
apability
> >> of the secure BOs. =20
> >=20
> > To me, a secure buffer concept automatically implies that there cannot
> > be CPU access to it. The CPU is not trusted, right? Not even the kernel.
> > I would assume secure implies no mmap. So I wonder, how does the secure
> > buffers proposal manage userspace like waypipe? =20
>=20
> None, as I said, waypipe whould handle non mmapable buffers, by asking
> for a different modifier set, or sending a gray buffer with a llama
> instead.

Hi,

the only thing waypipe can do, is not forward some of the modifiers
during negotiation, before any buffers are created. That is, assuming
Waypipe actually understands the protocol it shovels through
(libwayland does not understand Wayland, in comparison).

Or disconnect when mmap() fails.

I'm having second thoughts here on the feasibility of the waypipe use
case. It seems to be simply mutually exclusive with secure buffers and
this modifier here.

Manuel, could you check through this thread and let us know what you
think? Maybe I have misassumed something.


Thanks,
pq

--Sig_/dvN3iCsthpEZCSKTeqjvfgH
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAl6CBP8ACgkQI1/ltBGq
qqf5Ng//YdfYRUp3D7YF759IzfAmSRCoRKEnGOqTdIOdQCYj7OA7y0WpRepfhto8
DuJmANCTL2HVKjWNOiTaPbFkwnvuLT99VWH+4iSKRH4k76UqqwHYxF0aILT0jfX+
9EE+iokzNQNui9kSrXPOxnT1ZWF1v8ivaA9fwWFTMXFsPLyapUPfJjojMZR+chme
fQrt/XhMlDhS+9dCZEW8eQcPsZ1uSMQsz4wvJ7hGSSH8/FkRotyVhcC3wHEajNkr
AIlQXRe+jXWVnXrhYdHL8ozigTpU0NOO1IhafnTWKIj99r9vV04GMJKIo1wWtsZ7
o3s6P2nUPEK4FhiLEYPJAQYLrNRbV5yPQTw9voIurs/Cz7fhjQ1QMpHS114s/KAW
KsY8lr7aUTjk/legfKN/HNG05KPf0Qm0vak+XA4TceinTHm4tbgnEIzXvHLvTp/q
9iYrE/jm2fEfFy4x6PukNMB0KlgfQOQfB12E4nqkAACoA3vjuv62qrcbW/OBvCeY
gRLxw9Fi20S1cWLFrZraf7eYIxne4LPK7b8cgiE6v9hY81KR5gMu9M3PUkWHFQKC
hQfRXPhc669DBXrxJvHx+9z1ZI8TmGLWo6AnmxgKCxOx4pblbMieL5q//wDdvWJ/
Tu8K/TIEZYxYq5aJciAfJ2cr7DXkBLBsZ9rUFI8gm1En9h53o3o=
=FYDj
-----END PGP SIGNATURE-----

--Sig_/dvN3iCsthpEZCSKTeqjvfgH--


--===============7025587155171996418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7025587155171996418==--

