Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F73DF3329
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:32:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n9i6/MIOycOP8LFhliM8+EvX+p12ykENq6Vy0E7ZtgY=; b=hmfpiyhGre0V8yu89B8dtr1UO
	K/uO+2ATjCpA9ozy+Wox5v5kdmvgTGQb2ci5CAQzivdjNUyWzejFYycJYKkWtvvhassNwUDjc1zy9
	ql+dJLBQrfociD62EbETLihRmABD0KfMfUY6SLsROa4g6lzoVzbfffVagVdyhGhL5Me3RJDucnU4L
	Z9kmNTJSckuOxEROU0tbUgNrhatReR/qh8JTs937szVNwkzk1MKouzavdmUoHF3u/zn31oeNvKz16
	T6r5fiQFdqKak/5jnKtOuN1JZzCuqbr3/q7Vj80VztGlcD2hRua2vxs9sqFJfhIUCW6CCH3hx1drY
	0Ur1YaQhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjls-0000rF-Sd; Thu, 07 Nov 2019 15:32:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjla-0000Yb-44
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 15:32:11 +0000
Received: by mail-wr1-x444.google.com with SMTP id a15so3484787wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 07:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LRg2OEXoLutAH0yTEEukfH1gE4lX5xzkGQW8LwubYNQ=;
 b=hiz4lTCjDXpREZyzsGTn5fWVHaYRv3jY+UEOJnFor/iCX6JkvS35D1iZ1FPNcqlRJU
 OA+IFMtCmszdRtI+0njeimNlpm8JD7kH4apCKQq9oOYRQRY5n3jmSgZcNHk/vgjXcGr3
 Hn5dQvmfaOkssGtvT8OPuP57H/ixg/9mtBwx9s/X99mQ0RANo+jxMhiXIf91RjLFBwIk
 HEK0s70RrxpgsxCxjUZeAZb13tismjHptghVpsl2s7Gqku7tlQ8d6nthEndD9x+mbO+l
 GFY3Ujf5F+DQ4uNq1cy2kSNRpCqEL+gwFfz7NNdaoLjhD8sTt/m7ciudf+eek75mqBrT
 xyjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LRg2OEXoLutAH0yTEEukfH1gE4lX5xzkGQW8LwubYNQ=;
 b=uMHMz6tfjzTokyNbJYIRRs/BeLa/Modamyw+o32RxCpM8S3ycFeurABpgPAE73b0wh
 GNiRhxWnnQWcjgyrnqx3OQWenL/Fd966L2T9sbhe5Uk8+u+Ry7dvtG4wqSTiQOL+mTKx
 foF1LrjgDHN6aowmV897YB6iPdZnKZKdo6RGRX3fDXYaJS3isCDpmnHfeVG7pneyRkCN
 4UX+kZFbtN9N4yoHfrTnlp830GcjCwVnSrxRZCncyy+V9KpzqE5rWbtVN3z/PJU5Kw1B
 S8sWczT7TL2yd1lJnzb00tIKU3KMlhFa7RsL+1t4OEYvFjI8zDQUTQOfCJv2+onqpiID
 ukLg==
X-Gm-Message-State: APjAAAUHFw3+G40IU6TvC7C4PhDzZVlbi/fV3S4TmjvdD8Y33a7KsgKK
 vdW52QWt0+1HsUQP4nfJV7P7cAwj
X-Google-Smtp-Source: APXvYqy5LvaeWNVVU8SjBkPfphL3xj2YRRc0KZe65iRf30uQ0MiwXDW/XNaxdhSfnDmwPd/pqJCPlA==
X-Received: by 2002:adf:f343:: with SMTP id e3mr1305509wrp.315.1573140727820; 
 Thu, 07 Nov 2019 07:32:07 -0800 (PST)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id v184sm3295899wme.31.2019.11.07.07.32.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 07:32:06 -0800 (PST)
Date: Thu, 7 Nov 2019 16:32:05 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [GIT PULL 3/8] memory: tegra: Changes for v5.5-rc1
Message-ID: <20191107153205.GB2580600@ulmo>
References: <20191102144521.3863321-1-thierry.reding@gmail.com>
 <20191102144521.3863321-3-thierry.reding@gmail.com>
 <2f1c8899-ffda-51f0-64f4-48aa23dc1823@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2f1c8899-ffda-51f0-64f4-48aa23dc1823@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_073210_165694_FFA27995 
X-CRM114-Status: GOOD (  25.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: multipart/mixed; boundary="===============5275285449980417708=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5275285449980417708==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NMuMz9nt05w80d4+"
Content-Disposition: inline


--NMuMz9nt05w80d4+
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 04, 2019 at 06:34:47PM +0300, Dmitry Osipenko wrote:
> 02.11.2019 17:45, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > Hi ARM SoC maintainers,
> >=20
> > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df6=
3c5c:
> >=20
> >   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> >=20
> > are available in the Git repository at:
> >=20
> >   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/te=
gra-for-5.5-memory
> >=20
> > for you to fetch changes up to 8b04225c4464422f185e62c2cedfb9e234423814:
> >=20
> >   memory: tegra: Consolidate registers definition into common header (2=
019-11-01 10:57:37 +0100)
> >=20
> > Thanks,
> > Thierry
> >=20
> > ----------------------------------------------------------------
> > memory: tegra: Changes for v5.5-rc1
> >=20
> > This contains a couple of fixes and adds support for EMC frequency
> > scaling on Tegra30.
> >=20
> > ----------------------------------------------------------------
> > Dmitry Osipenko (11):
> >       clk: tegra: Add Tegra20/30 EMC clock implementation
> >       memory: tegra: Don't set EMC rate to maximum on probe for Tegra20
> >       memory: tegra: Adapt for Tegra20 clock driver changes
> >       memory: tegra: Include io.h instead of iopoll.h
> >       memory: tegra: Pre-configure debug register on Tegra20
> >       memory: tegra: Print a brief info message about EMC timings
> >       memory: tegra: Increase handshake timeout on Tegra20
> >       memory: tegra: Do not handle error from wait_for_completion_timeo=
ut()
> >       memory: tegra: Introduce Tegra30 EMC driver
> >       memory: tegra: Ensure timing control debug features are disabled
> >       memory: tegra: Consolidate registers definition into common header
> >=20
> > Sowjanya Komatineni (1):
> >       clk: Add API to get index of the clock parent
>=20
> Hello Thierry,
>=20
> I want to point out that it looks like this patch from Sowjanya
> shouldn't belong to this pull request because it is unrelated to the
> memory patches.

Indeed, this wasn't meant to be in here. It looks like I messed up the
merge order when I was reconstructing the branches.

> Also, this patch haven't got an ack from the clk maintainers yet and I
> assume that it needs an ack.

Yeah... I thought Stephen had Acked this, but I can no longer find the
mail for that. He did ack some of the other patches, so I probably got
confused.

Anyway, it looks like he's having second thought about that core patch
now (not sure why this didn't come up before, since the patches with
this particular implementation had been on the list since August.

So I think I'll go and reorder the merges to make sure only the
depending patches (basically the clock suspend/resume) pull this one
in.


> I'm just wanting to get yours attention in a case if this patch was
> added by mistake. If it was intentional, then perhaps it should be okay.

Thanks for pointing this out.

Thierry

>=20
> > Thierry Reding (3):
> >       Merge branch 'for-5.5/clk'
> >       memory: tegra: Set DMA mask based on supported address bits
> >       memory: tegra: Add gr2d and gr3d to DRM IOMMU group
> >=20
> >  drivers/clk/clk.c                   |   17 +
> >  drivers/clk/tegra/Makefile          |    2 +
> >  drivers/clk/tegra/clk-tegra20-emc.c |  293 +++++++++
> >  drivers/clk/tegra/clk-tegra20.c     |   55 +-
> >  drivers/clk/tegra/clk-tegra30.c     |   38 +-
> >  drivers/clk/tegra/clk.h             |    3 +
> >  drivers/memory/tegra/Kconfig        |   10 +
> >  drivers/memory/tegra/Makefile       |    1 +
> >  drivers/memory/tegra/mc.c           |   52 +-
> >  drivers/memory/tegra/mc.h           |   74 ++-
> >  drivers/memory/tegra/tegra114.c     |   10 +-
> >  drivers/memory/tegra/tegra124.c     |   30 +-
> >  drivers/memory/tegra/tegra20-emc.c  |  134 ++--
> >  drivers/memory/tegra/tegra30-emc.c  | 1232 +++++++++++++++++++++++++++=
++++++++
> >  drivers/memory/tegra/tegra30.c      |   34 +-
> >  include/linux/clk-provider.h        |    1 +
> >  include/linux/clk/tegra.h           |   11 +
> >  include/soc/tegra/mc.h              |    2 +-
> >  18 files changed, 1797 insertions(+), 202 deletions(-)
> >  create mode 100644 drivers/clk/tegra/clk-tegra20-emc.c
> >  create mode 100644 drivers/memory/tegra/tegra30-emc.c
> >=20
>=20

--NMuMz9nt05w80d4+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl3EOPIACgkQ3SOs138+
s6Hb4BAApDFf5WUv3aD+fEF4YgUV0NkAJ+WRDjwL+FEZZZhZkZvY7XFIdKaNVCfH
uJSUG4tNuK9kutGgqOmRxFo6AyQ+0YrO3kI/G6Hi3cZdWLSH4/GdFcdd2OXPcJj8
Iv4vM+96eaIfV5A8ON9PZZBJ21Klm0bXjnjBUii3WegzgR8ZxLjCMgyeafqJyyTQ
1Wk08Rvujlc4a0+BCiULSrMdtXd/wsoIxq8ro9v2KIxvuFHeauL8r00wx3dfuw1c
bSCfa/S2ajtKmoSW63lqHNoxfCiIy5c00vFXq5vMopL3ZqKuTUg0VTQEvi1jDk+X
A4jt/o0F8aQPZiaQWv5mRElYUoD2NSkT37GiM44hGwAb477+0b9uwp4G+Wlg8GGq
XL1nonjA1PF6P8khBW04wtDxDRHc0710R8Jzz/cGDFwQbFhCDq74OWv4qgR5sSiX
bs6R1T+fAuUXJ/AKq15phJ63VRtVttwnfQJxZHuTOQK2zoUEunWswbZ1cT71IR4o
/zYsE0kxj4p+4skJVmsuO5LyljF7sMWtn3QX2k1H4TdOOlElVZGzG/chBOE+V6GQ
H8xFGvKlKyTHAVKbqKer8ZkQfLOeBGsTGX6joJKLJjYfI+LET+Yib1LxXtKweVId
SM9kmsRELZkh1mgo46Y6fnwFgcXZdZJ9w1uXcBp4WKybe3rfkTY=
=ZcsK
-----END PGP SIGNATURE-----

--NMuMz9nt05w80d4+--


--===============5275285449980417708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5275285449980417708==--

