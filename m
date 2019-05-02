Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0908811946
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 14:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fea79iDoAyzhU5ez0J5mrIBNzylNsGhnjngzVsEfZfc=; b=hPAheF2Ss3GhKlLs5XEDX3pwL
	4+rcf62YOIjwl5CDz1g9qta9a3rQkqZYWgqN7QnCCVvfp3/Kh0PDPljisBs8veqIKNowJ+PHrk02Z
	nQWfJkJro1pRR+fN2md94NW4t6POc7DD2UulDFFq2qF8SZhHoy0x7iJtZ2hWKq3IOfpNlqEih+VOj
	bSScmV00c/tmuXCrwenOyuDDJT3YES/HHAGx7oKF9xXSJ05B7eMfQR/VFkek1yC45Qeqm6KXy9AsV
	K8Tz5SMvhKZdtKziYCf1SthhV9AqX7S8kofsoI5bR9LZasSM7ZReJ1qZ5Orilc594MnYxbZlvBsYh
	eJIzFkmEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMB5l-0007sS-7E; Thu, 02 May 2019 12:45:37 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMB5d-0007s6-Ts
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 12:45:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id y2so2307227wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 05:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UVRUQJTa79+UZRYkQ2bMgCY647lqXofB7azwW65Z9JY=;
 b=VuZeWsF/fIIhG43pj9nB0SH141HLblHTDk0zDv7z217dQo5YlZNQqjXTVQK1f4tsfT
 ReG00oDLlbwkkx7VutlUhMLIJrGoTolDSQUS/SBNu1op7k0f5PtQhm6Cj8WflYPHoXYS
 K1vm+9o8uuiDHlKc1WJ3R7RqteKWq5i14nLIDqbo4/Et+nDi6xtgz4QR/sFGFqqdJzWK
 6m1Xct+9t2Nmw+1emLyRO7hwC/XldDWq/PPKB9FOZBA9Dt8Mm5hc1GKSt9+rBJfJJF6A
 WXFfZ/hRyuk8TaQGTrLFa6MpFMKWZkdrwPSH5GY6l3T8M9PKkO21wLl+Lxt5raPfF+Dq
 jG+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UVRUQJTa79+UZRYkQ2bMgCY647lqXofB7azwW65Z9JY=;
 b=PXqgQ66Q5tSx1DZR+rG0zQmvf5LJZ9dCX+723LldGsjiPfNPvBAxKakv9XFHTxlSTE
 +qj+5VoQ9cPN3qJcwJQn4VS04zegf3DbQQsrbJj0EiYEZGxcSAxGVMPCK1NGnBBk3PzG
 vXLUkQPzFKMrelrn9KrCcIahy65V308uofts7UlKtzkqkv2AxBMlSIrB9pOWeGPG3M44
 91hESh6yjkKR2MUVorX+SFVbvGD3RteKVEww89Fn8i5bYgvi3ZX72DGyf5w+unxbSlP3
 /YQHPmC79WLGVu9pVxaXIsqTCbbYgXGsbxEnUP9n990a9yjMIeU1a0HWpmAQTOIWCa9f
 b5qA==
X-Gm-Message-State: APjAAAVhPvE7dgH1X4EfOsloJqyCAT7h21/owmTMJvFgqLtEl+6DLrhy
 /F+gDVQOF6ZM2FX+1Tus3tg=
X-Google-Smtp-Source: APXvYqyVdD5hgS2m77Jiea1Dzzl/npDe56/+PZyk8HRYQA/AspT++aAHx3yrNOs9gUv2Wwyik8d/nA==
X-Received: by 2002:a7b:c390:: with SMTP id s16mr2195256wmj.111.1556801127898; 
 Thu, 02 May 2019 05:45:27 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id r2sm21188246wrr.65.2019.05.02.05.45.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 05:45:26 -0700 (PDT)
Date: Thu, 2 May 2019 14:45:25 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
Message-ID: <20190502124525.GA3579@ulmo>
References: <20190301192017.39770-1-dianders@chromium.org>
 <20190404145957.GA25912@fuggles.cambridge.arm.com>
 <4754bcf1-6423-f1fe-64d4-da4a35b164ad@free.fr>
 <20190424115231.GA14829@fuggles.cambridge.arm.com>
 <20190502105912.GA943@ulmo>
 <20190502110821.GD30966@fuggles.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20190502110821.GD30966@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_054529_987990_8134FDAD 
X-CRM114-Status: GOOD (  33.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>, Joerg Roedel <joro@8bytes.org>,
 Douglas Anderson <dianders@chromium.org>, Jon Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4341793161477368990=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4341793161477368990==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="AqsLC8rIMeq19msA"
Content-Disposition: inline


--AqsLC8rIMeq19msA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 02, 2019 at 12:08:21PM +0100, Will Deacon wrote:
> On Thu, May 02, 2019 at 12:59:12PM +0200, Thierry Reding wrote:
> > On Wed, Apr 24, 2019 at 12:52:31PM +0100, Will Deacon wrote:
> > > On Wed, Apr 24, 2019 at 01:36:58PM +0200, Marc Gonzalez wrote:
> > > > On 04/04/2019 17:00, Will Deacon wrote:
> > > >=20
> > > > > On Fri, Mar 01, 2019 at 11:20:17AM -0800, Douglas Anderson wrote:
> > > > >
> > > > >> If you're bisecting why your peripherals stopped working, it's
> > > > >> probably this CL.  Specifically if you see this in your dmesg:
> > > > >>   Unexpected global fault, this could be serious
> > > > >> ...then it's almost certainly this CL.
> > > > >>
> > > > >> Running your IOMMU-enabled peripherals with the IOMMU in bypass =
mode
> > > > >> is insecure and effectively disables the protection they provide.
> > > > >> There are few reasons to allow unmatched stream bypass, and even=
 fewer
> > > > >> good ones.
> > > > >>
> > > > >> This patch starts the transition over to make it much harder to =
run
> > > > >> your system insecurely.  Expected steps:
> > > > >>
> > > > >> 1. By default disable bypass (so anyone insecure will notice) bu=
t make
> > > > >>    it easy for someone to re-enable bypass with just a KConfig c=
hange.
> > > > >>    That's this patch.
> > > > >>
> > > > >> 2. After people have had a little time to come to grips with the=
 fact
> > > > >>    that they need to set their IOMMUs properly and have had time=
 to
> > > > >>    dig into how to do this, the KConfig will be eliminated and b=
ypass
> > > > >>    will simply be disabled.  Folks who are truly upset and still
> > > > >>    haven't fixed their system can either figure out how to add
> > > > >>    'arm-smmu.disable_bypass=3Dn' to their command line or revert=
 the
> > > > >>    patch in their own private kernel.  Of course these folks wil=
l be
> > > > >>    less secure.
> > > > >>
> > > > >> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> > > > >> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > > >> ---
> > > > >>
> > > > >> Changes in v2:
> > > > >> - Flipped default to 'yes' and changed comments a lot.
> > > > >>
> > > > >>  drivers/iommu/Kconfig    | 25 +++++++++++++++++++++++++
> > > > >>  drivers/iommu/arm-smmu.c |  3 ++-
> > > > >>  2 files changed, 27 insertions(+), 1 deletion(-)
> > > > >=20
> > > > > Cheers, I'll pick this one up for 5.2.
> > > >=20
> > > > Hello Will,
> > > >=20
> > > > You haven't pushed this patch out to linux-next AFAICT.
> > > >=20
> > > > Is that expected?
> > >=20
> > > It's on my branch for Joerg:
> > >=20
> > > https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=
=3Dfor-joerg/arm-smmu/updates
> > >=20
> > > which I'll send to him today. My SMMU stuff doesn't go directly into =
-next.
> >=20
> > This made it to linux-next yesterday (less than a week before the merge
> > window opens) and deliberately breaks existing configurations. That's a
> > little rude.
> >=20
> > At least give people a fair heads-up and a chance to fix things before
> > you start break things.
>=20
> Sorry about the inconvenience here.
>=20
> This patch has been floating around for a while (albeit not in -next, sin=
ce
> I send my stuff via Joerg)

You can't expect people to test random patches from the list if they're
not on Cc. I don't think it's safe to claim that patches have been well
tested until they've been in linux-next for at least a couple of days.

>                            and is heading for 5.3, so you have ages to fix
> up your config!

Last I checked, Joerg applied this for 5.2 because you sent it as part
of your "Updates for 5.2" pull request.

>                 It would, of course, be better to configure the IOMMU to
> provide mappings for your DMA peripherals, but the trivial config change
> will be enough to keep things working. We won't remove that as long as
> people are relying on it.

I don't think the Kconfig option is really useful. People nowadays want
to run standard distribution kernels on their devices, and distribution
maintainers will often rely on kernel developers' guidance on what good
defaults are. This patch suggests that the default should be to disable
bypass, so if this hits 5.2 final and distributions create their kernel
packages, they're likely going to go with this default and potentially
break things for many of their users.

Luckily this seems like it's fairly easy to fix, but given that we're
past v5.1-rc6, fixes for this now need to get special treatment. That
would've been okay if this was a pressing issues, but this is changing
something that's worked this way for ages, so it's hardly urgent.

> I don't expect most people to run into problems with this change (the new
> behaviour matches what SMMUv3 does already).

I see the ARM SMMU v2 used in quite a few DTS files. Not all of these
may be problematic, but I'd be somewhat surprised if Tegra was the only
one impacted.

Thierry

--AqsLC8rIMeq19msA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzK5mIACgkQ3SOs138+
s6HzUw/9Ho3gx6dnIoGJ+5uU7d1SAgAKBBPOWQvaPjm0w91NvvEkkcLuL9YpKLif
O3rxBvCTDshxmb4sjOtqF9KSmVHA2FDp3KGJbi6UXkr+mPSijk3sqsx3qU+dzXl8
8BEzHkVYO4ja/DUODp6lJIzilZSAcBt8h5aoKugDUm953ahF82wLlpXb44VblX0z
lVE0qBYEjkKcENfOhcwvqqsjtYoEp7jEFwoC51XlQSG9Eq07Tg+iyS8+3Sf8Zm1U
vq8ohSIFn9i2uDbLfrVkiLtHV/mAVPH14KQZ92r2HFso7pP2xdJm5gVeVznK2QLj
lmNiCPV+1n4nRfFZQX+9BcweIyUKIZH1xk98fRNuL1AFdsnurdoJwa0sNd9keBXN
TIv5aKm/vu7TYCu7f6IOQyYMhWXCkobL3a1skYoBDzBSzlChIPKu7r5bbvWhZSxh
xrsbihEFdyvVLYikJK7qW372O9NM+GhDlGf4FlR5zMjun0C9+OQ/vOJen0sItmA+
lE1xMvTt6YvtMiYig8z2ne221mYdDU45dSioE8Bv1SI+9eEia5szTucUfAtz0cep
8IW/tygT6hrRFWWCyfVsh9tOJpiIews7FVeYTgEKqVSTIJrUrTwJOArj1iYHsAiH
U0be0Tk+I695rWFeTQu2rLNVETq4RmRHxvU6Ke4QBo3/ycP1aAc=
=BAzO
-----END PGP SIGNATURE-----

--AqsLC8rIMeq19msA--


--===============4341793161477368990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4341793161477368990==--

