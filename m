Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BFCE2193
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNtLTr8Ouz2aSNH9MK5jOvjK4lfDiPIjOpom0qleT/o=; b=KucD8gOARl9VNc
	PJMWEuX8374lqoOvISQiYu/PJBJUGuAoPYEKZrVTorp6Nmsa73zW91tdnxzPt9t0JFa6if+sILuyr
	0U6AwmUJoKmZ+t4dqI0ug1B8jd/UTLfs09Qw+c4Vw6j1q4GCYKiB3nHcZC+kMFud41OWAL/lL6Kzc
	q1N/tHFUzb4ozqifTS6TeqjlKys6VlGsOsPbP1nlO4WJdaDaPlTiO16jcMoeGAnnTZ9enu29vZzNG
	v3l5oLrGUvOFJHN1mL3/YQjoG0GcL6cTHK0CyMbQaDsSBLJA2zCs4etHwvVlwvebmi1qy3OKIK/67
	MpldZD6igW+cjIX18z2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNKFF-0004Lm-IO; Wed, 23 Oct 2019 17:16:25 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNKF5-0004LT-Ki
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 17:16:17 +0000
Received: by mail-io1-xd43.google.com with SMTP id y12so8312973ioa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 10:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nnZkOrifmY3QSGpGG9HazqDbG3j1Z5f8ynVpiKqB+Lg=;
 b=R4LIC2/6W1xlf3ojpOp83l1cpV9gTLZQgFgb1NHBczWQWzTeEbafOG2TV+oTVDQxyP
 iQsGZ8v9ZOg88kVtITLf12j3m7TeeO4ogdbl6hf3mggvfJjcwFxs+WxbXCakId2U5JVn
 GROgjXfcV6P8gKloCi6ZW6CL1N3jMBC56pHwAD0m1cfeowVGZsUjCu1Ucv1rBNLc091d
 Orp2UGMLZMu2D/abpu+X6N9+AqyUPek2sa/iwSb2BRxAYg8QDZJVKJ0aXdrf1D6Y9z9b
 yju9u+LtBjfjyztPFC1YH9mYQYyPmxncyfFHIBQTQ+DDi89fH30blGpbWIEFdZN5yhdo
 iGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nnZkOrifmY3QSGpGG9HazqDbG3j1Z5f8ynVpiKqB+Lg=;
 b=RmuEW/f+1tToMWfnieIeYpqa8s7Bm2iFzvHZdAkpQj26oy/PnKeHM4FWZfwnnsXQYD
 pHegluwEgdLjN3EmIxR9Dx2tpD/icEfm6Z5HQdEwVTe0HzMX3tkH4vJ2TLf/Mg7ggrC2
 dCpNuUhsDnJQ9cY0ux9GeHy3BdLDWWWLnoIRYijiLon/sUu3dgDF2al2RPowW9XSU84U
 q7DaADooW6m/9iJtstvtDZrsSeqgkm4PYENANITrzF6ca6Vt+w53QBP3E3PZzk7Z75vW
 FYB5apy5BhRwCNWnOU8F+ZFkGNZPxCTQFpNCgeueKcyUyeiaj6qc79Thzn24nQEERmH3
 nQTQ==
X-Gm-Message-State: APjAAAU4fyJ4KYXfMYJz65Znv6XMU2bxnnADAdAmnkAR13NoUOyyyLE+
 MviR6v/QEoPjO5XXKXBLSuI0Cz6Cg9XID+1vaBIIlQ==
X-Google-Smtp-Source: APXvYqxji5tarsfJy/OMu56Y3CXUkqu9nBSrOWg8+0h6Xx2UdGPdn7Z5Dy+jFnmkcAJ993Kl08Zxz28xv2damOh0f3k=
X-Received: by 2002:a05:6602:197:: with SMTP id
 m23mr4123180ioo.277.1571850973905; 
 Wed, 23 Oct 2019 10:16:13 -0700 (PDT)
MIME-Version: 1.0
References: <80085a57-c40f-4bed-a9c3-19858d87564e.lettre@localhost>
 <20191023153452.3nmtq2pbo6ohriv6@localhost>
 <20191023171224.ncndh2w6rn75twmp@gilmour>
In-Reply-To: <20191023171224.ncndh2w6rn75twmp@gilmour>
From: Olof Johansson <olof@lixom.net>
Date: Wed, 23 Oct 2019 10:16:02 -0700
Message-ID: <CAOesGMgi=mMEgGnNCoeKkdqTVRC2ur5iZGn4o653oi5_tAdVjQ@mail.gmail.com>
Subject: Re: [GIT PULL] Allwinner Fixes for 5.4
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_101615_821615_BCED4484 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
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
Cc: SoC Team <soc@kernel.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 10:12 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Wed, Oct 23, 2019 at 08:34:52AM -0700, Olof Johansson wrote:
> > On Wed, Oct 23, 2019 at 08:51:06AM +0200, Maxime Ripard wrote:
> > > Hi,
> > >
> > > Please pull the following changes for the current release.
> > >
> > > Thanks!
> > > Maxime
> > >
> > > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> > >
> > >   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> > >
> > > are available in the Git repository at:
> > >
> > >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-fixes-for-5.4-1
> > >
> > > for you to fetch changes up to cf03c691eb959f438c16d58ffd11f150b1a95b1e:
> > >
> > >   ARM: dts: sun7i: Drop the module clock from the device tree (2019-10-07 14:12:09 +0200)
> > >
> > > ----------------------------------------------------------------
> > > A number of fixes for this release, but mostly:
> > >   - A fixup for the A10 CSI DT binding merged during the 5.4-rc1 window
> > >   - A fix for a dt-binding error
> > >   - Addition of phy regulator delays
> > >   - The PMU on the A64 was found to be non-functional, so we've dropped it for now
> > > -----BEGIN PGP SIGNATURE-----
> > >
> > > iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXa/4RQAKCRDj7w1vZxhR
> > > xU3XAQDYuCixpCCftKIhjcz+oultXqAJysDEE44dATwT1YfINgD/eBSwBw1l/Ni7
> > > yOumUvRZ1fJC3NO8e7vh9cYN9yy5tgw=
> > > =3/ru
> > > -----END PGP SIGNATURE-----
> >
> > Your script seems to insert the PGP signature in a weird spot. It's not there
> > in the tag, so I'm guessing it's part of the email generation.
>
> This would be the email signature.
>
> The tag itself should be signed though. It isn't?

Yeah, it was. It just seems that your email signature got added in the
middle of the email instead of at the end.

>
> > (Branch merged, thanks!)
>
> Thanks! The new notification system is nice :)

Yeah, I like it from our end as well. Having it come from someone else
than people doing the merge means it's easier to catch up what the
others are doing -- if we have comments we'll reply otherwise the bot
will handle the notification.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
