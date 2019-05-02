Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB89117B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 12:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+2+c9UVRaKNfmF5/QKiqS/EHA3iTdvH/GSDmQwNCdCM=; b=UJxTwbd04+iNwBTXVOzAPeo0N
	Oflyq0A7bEe/TJOLcnSVztJO2AbYpR5Gaa/NFIv6YeeSMe/quvb+aHNWj4ERXE1qAqn1EGwod0OaT
	ZqTCG09kLraJpPe0c9CJ195zKgtnxzRT9erkfWy0pN5zFEH3g+KuZ05NBqFhGSG8PyK5W5o4L/wBp
	c5bvsUTdoLIjLMRF2Gr0RkImoyI0wW7MIHIPAitS3i7FX61n7aVNSTzdcBIBIvhvQs3xq+U9Dy+hb
	gKdvehCnGxZAb++II1taPa5DitltuZeoeXzkR794TTsM37eZEDP7+KhjuFNZgxlLNwRBlc5AsaSox
	JX1hDlZmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9Qz-0007aj-TM; Thu, 02 May 2019 10:59:25 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9Qs-0007aH-J5
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 10:59:20 +0000
Received: by mail-wm1-x342.google.com with SMTP id y2so1844520wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 03:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KGELeGDhg4kIgluviUF7MPFCMmkcepzNp8HvCTDY4YE=;
 b=QZhezHOi/QOyTXV1ULNouTgyYB+dZU64PYjj7xwuWuM3G9bYMIsMxVo8UzAH9MQzbI
 NmbMHTRim5a+cvYSfAEMAxtyh6TwZzJft8zfR13WFO1TuRKQN7Yb3RWHk97iFNJmv0Ef
 jE1mM59RNyWEg2rKkW43j0ttEC4CejPyqP+ApGOhmna4sHLKdT1Zj5B00tYXwEwThDDx
 p2zR7GmYF/2RFj9q5pcRGaC53lAuFxYCU0sCKbloMXslsEO5qD5U7LIVYo6J4dh7Vwzl
 ZxRZhd54b6nXbN3grIuRjD+kRBaH5T6wOGCU9AaC4bPjYcw0RY0nTx4xaTbCWKe6Gqsv
 SvFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KGELeGDhg4kIgluviUF7MPFCMmkcepzNp8HvCTDY4YE=;
 b=TneJEhR/i+YnvKF6SZHaFM5rMaAWMSpeMXz7yTckhPQPsah2n963YJUFjsJwdTtEa0
 XapI4PKMAPx+3S0FBh0xIheSZ++sqTY/oTqs9bYOmBcv77N7L/Hop+pD3Lx22ZLDXaVJ
 CTYX8HV5poaTmeo60VdmoBmO9tAFl4GtaZS80r1DtxCnKOXP0BeSz94SRBo9A30veKQS
 qWqKMHpoImSRyhQk1oUTOYR6SHqVUsiZMkVfePdZ8G45bAiL6unhBwpFjXvKHEYicqhS
 PznM9o2OjzXUvncF8IwDpYd5jEftY1DXUO/BOA7suMMRqnaQsnPcslzarmvAUj4L/fL3
 EdhQ==
X-Gm-Message-State: APjAAAUI+Zfv+JPbbIPD2KZmtgqu0UC57EVvNmXcR0I9Miz3qE6Ws/r0
 JeZB2hRARQ4wzRC+Clifewc=
X-Google-Smtp-Source: APXvYqymlwinJi/fKznjkTYac2IZpVUAUugTz9BXiKPh7gg7IbF0OdoiYYjRTpmxu139UR1Ek5rbVg==
X-Received: by 2002:a1c:e90f:: with SMTP id q15mr1974469wmc.1.1556794754631;
 Thu, 02 May 2019 03:59:14 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id y7sm2021200wrg.45.2019.05.02.03.59.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 03:59:13 -0700 (PDT)
Date: Thu, 2 May 2019 12:59:12 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Will Deacon <will.deacon@arm.com>, Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
Message-ID: <20190502105912.GA943@ulmo>
References: <20190301192017.39770-1-dianders@chromium.org>
 <20190404145957.GA25912@fuggles.cambridge.arm.com>
 <4754bcf1-6423-f1fe-64d4-da4a35b164ad@free.fr>
 <20190424115231.GA14829@fuggles.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20190424115231.GA14829@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_035918_656492_35AAC16B 
X-CRM114-Status: GOOD (  25.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, Jon Hunter <jonathanh@nvidia.com>,
 Douglas Anderson <dianders@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>
Content-Type: multipart/mixed; boundary="===============4118126348106361725=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4118126348106361725==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tKW2IUtsqtDRztdT"
Content-Disposition: inline


--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2019 at 12:52:31PM +0100, Will Deacon wrote:
> On Wed, Apr 24, 2019 at 01:36:58PM +0200, Marc Gonzalez wrote:
> > On 04/04/2019 17:00, Will Deacon wrote:
> >=20
> > > On Fri, Mar 01, 2019 at 11:20:17AM -0800, Douglas Anderson wrote:
> > >
> > >> If you're bisecting why your peripherals stopped working, it's
> > >> probably this CL.  Specifically if you see this in your dmesg:
> > >>   Unexpected global fault, this could be serious
> > >> ...then it's almost certainly this CL.
> > >>
> > >> Running your IOMMU-enabled peripherals with the IOMMU in bypass mode
> > >> is insecure and effectively disables the protection they provide.
> > >> There are few reasons to allow unmatched stream bypass, and even few=
er
> > >> good ones.
> > >>
> > >> This patch starts the transition over to make it much harder to run
> > >> your system insecurely.  Expected steps:
> > >>
> > >> 1. By default disable bypass (so anyone insecure will notice) but ma=
ke
> > >>    it easy for someone to re-enable bypass with just a KConfig chang=
e.
> > >>    That's this patch.
> > >>
> > >> 2. After people have had a little time to come to grips with the fact
> > >>    that they need to set their IOMMUs properly and have had time to
> > >>    dig into how to do this, the KConfig will be eliminated and bypass
> > >>    will simply be disabled.  Folks who are truly upset and still
> > >>    haven't fixed their system can either figure out how to add
> > >>    'arm-smmu.disable_bypass=3Dn' to their command line or revert the
> > >>    patch in their own private kernel.  Of course these folks will be
> > >>    less secure.
> > >>
> > >> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> > >> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > >> ---
> > >>
> > >> Changes in v2:
> > >> - Flipped default to 'yes' and changed comments a lot.
> > >>
> > >>  drivers/iommu/Kconfig    | 25 +++++++++++++++++++++++++
> > >>  drivers/iommu/arm-smmu.c |  3 ++-
> > >>  2 files changed, 27 insertions(+), 1 deletion(-)
> > >=20
> > > Cheers, I'll pick this one up for 5.2.
> >=20
> > Hello Will,
> >=20
> > You haven't pushed this patch out to linux-next AFAICT.
> >=20
> > Is that expected?
>=20
> It's on my branch for Joerg:
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=3Df=
or-joerg/arm-smmu/updates
>=20
> which I'll send to him today. My SMMU stuff doesn't go directly into -nex=
t.

This made it to linux-next yesterday (less than a week before the merge
window opens) and deliberately breaks existing configurations. That's a
little rude.

At least give people a fair heads-up and a chance to fix things before
you start break things.

Thierry

--tKW2IUtsqtDRztdT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzKzXwACgkQ3SOs138+
s6FEuBAAi+xh5QKIWrVhomLbLNaWj3YIE8H1D7aTJIFFkif/lInhOMFC1x/6Quvp
jhtADzVX/1aAV426KGTnOFJzeMCCogGkQwBLDN8WDHU7qmyFFB+5IN7dwMe7MrKA
W5BYqRkduz7s9pOxdbnjoDA17C3dApCXo9sI+jG11TBZggdB3lKEG/Ho/OUyOR3W
hV7+LKY2Z2lufNDvQ5gtP28TTb3tJe6SLk0BtKSIsf4nBiUnWRXa6PI3x8cOhCG+
A8XlSDzSj+2jFFTNZ41OYPb51Urdqia9TQjb0CfTBpejUP4ZCcE9ixSfHVDhKyAF
vmBHOXk8lyU1OqQktejjoL6Zt9P0fletJ73tQpAmDked416OLQbeJo67q6E/WRdy
Tfq5W7pPnPkeyZzC2YJfwjrh/BG9CP0YTuvGiStNJ5zg/tDbPUGlneV0IqEAO049
113Ud9MYmP5v8numPj8ZfoIe0TgT1/oe99zefDCFtFHc3NGt/HRLyBFD01BrHWGP
qGkwwj/F/Ka8F11HMMZdnGZFdCRODC8pmi+djX0aIBapOhaZbxoDikZnAk/b9W/o
TZ/R75tuj9i9H8ZvWqFXP1gcCkHpeLIGQwNOfV5UKspw9+AyPWuB7O4BPGORWL4W
9PXpAPnwze9DTOQ4IxxLb0cVB9GECg2YkXamCMmexQ4HtGDB5uQ=
=XADm
-----END PGP SIGNATURE-----

--tKW2IUtsqtDRztdT--


--===============4118126348106361725==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4118126348106361725==--

