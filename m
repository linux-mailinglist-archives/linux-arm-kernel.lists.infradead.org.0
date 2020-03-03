Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D137177A82
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:34:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tl7CHs5VbLckhCt5N6Vv0TR0LK+lQyH/HTxLrLY7aJs=; b=c/0HQOO+rf0VYamxiSowuM0nd
	bICE3Nsnz9yWaj4LlOq0gqWHdlTHlyCckOQxb2f5DK2C7wswXMugMCRvAjjrJKz1G6M8j5nL4B8Dx
	/7gSJLJz8GZ0r/KckVhcFJUnjVl5C6HbpAV3f3qxw+DVADIG5LBmkSziB0maGBnrpPqpVwqCMr6aE
	ao6aVRewZsAtZ2MhmpZ6xhMwSIyyGvsdQ3+r/KXlFb+M6Di+NEbf1m8/vbH31pI9nGhgr8kgQ8+uL
	RBVdYoqcYXbxdH9cyznyAM/3KV+fHUhtcKniKjeIfSGBWe1R2wOOVb29YO2JAG5xKJr8pSEwIXy90
	1h/U4X/BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99YS-00009C-KU; Tue, 03 Mar 2020 15:33:56 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j99YJ-00007P-3h; Tue, 03 Mar 2020 15:33:48 +0000
Received: by mail-lf1-x141.google.com with SMTP id p5so3121912lfc.7;
 Tue, 03 Mar 2020 07:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=XytWu3r+dyU0/pBn+bsdKdNhWgIQTzaFhBsjgsKZH6w=;
 b=OM4XifN+M6+A2PZ9MzioR4F2cYY82qVtoiwI5RXGtYAs5NkggLnfT1CPA2bm/3wRLM
 mlMrIdcFk8AWRZHTqqjk7UNTGQtDsEvkn/OP/zeMw6l6qz+dddPOrc+qyI8KE9KkESFP
 qqGnqXabEjyd1UmBfvDjivPTWTfGshIsxo/8uq0iJY9bWAYW2t1rxUJDuDtXq7HDQ7hb
 3ngv5LeBAZyA4pSL+EsIc2qgeoTRXtiFNzyZJXK02trUK52/klNOBWUM1/kFeAsRnWph
 bpynirb4f009m0s1GWjQMz+d20R1GyxrovTlOtGnUwc9GD5ExCE3KwOGaFnWKqPK0RKQ
 xEzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=XytWu3r+dyU0/pBn+bsdKdNhWgIQTzaFhBsjgsKZH6w=;
 b=Gp1LWQeBxCUw6DvgKND/uM4oz5IlIT3k9Z+7DSKsVfdZUbwGOHzTRwSIss6ZjObp6G
 8NawiruqUibd+g4Jqwy/nhlqms4Ru3FUgWx20ryQDPqm4nHNiAZ1HHjj8fzV0dSYJFTX
 2lKOBl6Za0b7eGkTXZjHLdfLpg5NpWLTbAP9dvfZK1N1yaqXRFg6X27vPkWCAFPddBns
 dMZLguWTIdSzDh5ZqzbobsQivC5iMnm6Mc7F102zkAHrTkuG5YDv7pgWsjZhuQEux9u3
 3TThiiNpGqwAVqTerKD8byqohImsy3Pah/vOMQ0ykiqhUzX6lMSW6ELxCQd3lJh6k79v
 GIGg==
X-Gm-Message-State: ANhLgQ0D9iSZiSPHotbwM+qkvachrCBwgMhoSyyOhZz+mxy68mseK/3Q
 TtbkunFykH4z2m3tlQsN9lw=
X-Google-Smtp-Source: ADFU+vslCx/lECf3x2KeBaVe02BXfwEXpJUB9Z6hR0mPse2M4runJ7vPXLJpkcx8fGxX1wGryt40OA==
X-Received: by 2002:ac2:58ee:: with SMTP id v14mr1297311lfo.62.1583249625234; 
 Tue, 03 Mar 2020 07:33:45 -0800 (PST)
Received: from eldfell.localdomain ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id 19sm12036899lfp.86.2020.03.03.07.33.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 07:33:44 -0800 (PST)
Date: Tue, 3 Mar 2020 17:33:32 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 1/4] drm/fourcc: Add modifier definitions for describing
 Amlogic Video Framebuffer Compression
Message-ID: <20200303173332.1c6daa09@eldfell.localdomain>
In-Reply-To: <20200303152541.68ab6f3d@eldfell.localdomain>
References: <20200221090845.7397-1-narmstrong@baylibre.com>
 <20200221090845.7397-2-narmstrong@baylibre.com>
 <20200303121029.5532669d@eldfell.localdomain>
 <20200303105325.bn4sob6yrdf5mwrh@DESKTOP-E1NTVVP.localdomain>
 <CAKMK7uFgQGrnEkXyac15Wz8Opg43RTa=5cX0nN5=E_omb8oY8Q@mail.gmail.com>
 <20200303152541.68ab6f3d@eldfell.localdomain>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_073347_156972_AB38CF39 
X-CRM114-Status: GOOD (  30.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-amlogic@lists.infradead.org,
 nd <nd@arm.com>, Brian Starkey <brian.starkey@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3338137268440934820=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3338137268440934820==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/20t=Q+C95R6JGDJv5djFJCC"; protocol="application/pgp-signature"

--Sig_/20t=Q+C95R6JGDJv5djFJCC
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 3 Mar 2020 15:25:41 +0200
Pekka Paalanen <ppaalanen@gmail.com> wrote:

> On Tue, 3 Mar 2020 12:37:16 +0100
> Daniel Vetter <daniel@ffwll.ch> wrote:
>=20
> > On Tue, Mar 3, 2020 at 11:53 AM Brian Starkey <brian.starkey@arm.com> w=
rote: =20
> > >
> > > Hi,
> > >
> > > On Tue, Mar 03, 2020 at 12:10:29PM +0200, Pekka Paalanen wrote:   =20
> > > > On Fri, 21 Feb 2020 10:08:42 +0100
> > > > Neil Armstrong <narmstrong@baylibre.com> wrote:
> > > >   =20
...
> > > > > +/*
> > > > > + * Amlogic Video Framebuffer Compression modifiers
> > > > > + *
> > > > > + * Amlogic uses a proprietary lossless image compression protoco=
l and format
> > > > > + * for their hardware video codec accelerators, either video dec=
oders or
> > > > > + * video input encoders.
> > > > > + *
> > > > > + * It considerably reduces memory bandwidth while writing and re=
ading
> > > > > + * frames in memory.
> > > > > + * Implementation details may be platform and SoC specific, and =
shared
> > > > > + * between the producer and the decoder on the same platform.   =
=20
> > > >
> > > > Hi,
> > > >
> > > > after a lengthy IRC discussion on #dri-devel, this "may be platform=
 and
> > > > SoC specific" is a problem.
> > > >
> > > > It can be an issue in two ways:
> > > >
> > > > - If something in the data acts like a sub-modifier, then advertisi=
ng
> > > >   support for one modifier does not really tell if the data layout =
is
> > > >   supported or not.
> > > >
> > > > - If you need to know the platform and/or SoC to be able to interpr=
et
> > > >   the data, it means the modifier is ill-defined and cannot be used=
 in
> > > >   inter-machine communication (e.g. Pipewire).
> > > >   =20
> > >
> > > Playing devil's advocate, the comment sounds similar to
> > > I915_FORMAT_MOD_{X,Y}_TILED:
> > >
> > >  * This format is highly platforms specific and not useful for cross-=
driver
> > >  * sharing. It exists since on a given platform it does uniquely iden=
tify the
> > >  * layout in a simple way for i915-specific userspace.   =20
> >=20
> > Yeah which we regret now. We need to now roll out a new set of
> > modifiers for at least some of the differences in these on the
> > modern-ish chips (the old crap is pretty much lost cause anyway).
> >=20
> > This was kinda a nasty hack to smooth things over since we have epic
> > amounts of userspace, but it's really not a great idea (and no one
> > else really has epic amounts of existing userspace that uses tiling
> > flags everywhere, this is all new code).
> > -Daniel
> >  =20
> > > Isn't the statement that this for sharing between producer and decoder
> > > _on the same platform_ a similar clause with the same effect?
> > >
> > > What advantage is there to exposing the gory details? For Arm AFBC
> > > it's necessary because IP on the SoC can be (likely to be) from
> > > different vendors with different capabilities.
> > >
> > > If this is only for talking between Amlogic IP on the same SoC, and
> > > those devices support all the same "flavours", I don't see what is
> > > gained by making userspace care about internals.   =20
> >=20
> > The trouble is if you mix&match IP cores, and one of them supports
> > flavours A, B, C and the other C, D, E. But all you have is a single
> > magic modifier for "whatever the flavour is that soc prefers". So
> > someone gets to stuff this in DT.
> >=20
> > Also eventually, maybe, perhaps ARM does grow up into the
> > client/server space with add-on pcie graphics, and at least for client
> > you very often end up with integrated + add-in pcie gpu. At that point
> > you really can't have magic per-soc modifiers anymore. =20
>=20
> Hi,
>=20
> I also heard that Pipewire will copy buffers and modifiers verbatim
> from one machine to another when streaming across network, assuming
> that the same modifier means the same thing on all machines.[Citation nee=
ded]
>=20
> If that is something that must not be done with DRM modifiers, then
> please contact them and document that.

Sorry, it's waypipe, not pipewire:
https://gitlab.freedesktop.org/mstoeckl/waypipe/


Thanks,
pq

--Sig_/20t=Q+C95R6JGDJv5djFJCC
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAl5eeMwACgkQI1/ltBGq
qqf/Fg//cGf3Jl24cG2786dCZ6HUCq1M9Y8RBH9FF1vf3OKM+cc+1L4WTQSeMyBl
mrIx/SCALVu00WoTKDL3raIX50dBnhx5jXp02bEQYpPVSvS4a9YD1DmgoqogGU6R
2mq9M//HkRSUkM6bqSoHPUvyuhGnPSj99mEJ4nl/yaiUMLsgF/HLtwLB4i9lGtMo
Ecdjd47ds/uMOFT6kBwwWvDDmSNbSGDtXFLbd5bGGZ4IAwue2BtHcEkZpwEIYB0w
0Ckd0Cbx7Fw8Pz4/trYm8gmRrQRJg0d7uQK073O+gle8oqam/2Sldy4UQv7SuSLC
sFW7dZWQ/M1B5s0hlnsXn17Vg/PAfu/iDbVwnIEtjEeCX3N26Kmh7yqeeuJnxaci
+ULCDxDjXUVcoWKzP8hj/savLLgPWsHNg6M27CRwp3rcWW2I7hAzYK8cqc7ym5bW
fEBdAJ2l81ciF/q7mLcch1zjVtmBtOwGWdVlBxZwsx7P+mwLOIOIa8jByYKvHh5R
ObIQlo9fjg+001No3rIXwUHjYqLuXsKMM3qIZ9wNzFPRYf3y6nAaJFFLGMMcIVX7
oeyppX/R7Shaj4x2O3b7ryEc7YKHxWMw1FneHYYP7tuWkz76e2OyLRB+x5XmEDe7
qCcQN8MD/yaWaZDsns6GmmpV1k20V8iLqgKNXTyoSHYv8bNgrlg=
=N4Y2
-----END PGP SIGNATURE-----

--Sig_/20t=Q+C95R6JGDJv5djFJCC--


--===============3338137268440934820==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3338137268440934820==--

