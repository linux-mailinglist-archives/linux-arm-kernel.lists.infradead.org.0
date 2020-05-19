Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5B81D9B56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJIDIMkUG/8u+bA6aeuMOOWQ6Cb4crcVbWhKRVUgihY=; b=IRFuOvIvIlhAfo
	CGVVpLDgYGIMNLsr/pr0Y9o/N5LrJq/sGw9oJbXr/34PAobX/uGeO18ilcvGYTTPv9zDYn/duGf8W
	uIBgg9tLmMjSu8qtV/0ubx0OjBNOAFaa0L+vWviY6pfIWrA51XBOUBlgiV1WdP60jOLfIJSRJBool
	OdPmiVL0TsuNzb2Qv42e2BgNYE87FjmpswK7FOOQ/L0Ckj4a2AHTrUbv62gIPklegKk2n0LxsKZM4
	8gLY889qpx/sWWPhRTdFps7Xx4bwbyxpr3hIL8xb/2pwG31V/ArXdYfO1daiApgBP2ZlIHZsE2P5e
	Q21Dm8SHTb0xPEkDCU+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4FC-0006AL-PN; Tue, 19 May 2020 15:33:26 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4F3-0006A0-1o
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 15:33:18 +0000
Received: from mail-qt1-f179.google.com ([209.85.160.179]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MOm9H-1jQFPy1oVT-00QDtW for <linux-arm-kernel@lists.infradead.org>; Tue,
 19 May 2020 17:33:13 +0200
Received: by mail-qt1-f179.google.com with SMTP id a23so5760487qto.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 08:33:12 -0700 (PDT)
X-Gm-Message-State: AOAM531RwuQuG8gUnPq0Vc+TJBT+ToExPgDmXO/wJfow+aK74U8N6S1D
 rGFbbB648orrHBycQStasf9Sax7RQaASmTHRic0=
X-Google-Smtp-Source: ABdhPJwd77C88+APMI2Cil4tCv+tzs4ZFiOtcuaUsv9c0GSfJnEVfQvYeCPvX/Rf25GYWHJMPrz6sf2PKSnK9/80D1s=
X-Received: by 2002:ac8:2bce:: with SMTP id n14mr316740qtn.18.1589902391196;
 Tue, 19 May 2020 08:33:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-3-f.fainelli@gmail.com>
 <20200507072711.GB683243@linux.ibm.com>
 <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
 <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
 <20200518194533.GD1059226@linux.ibm.com>
 <CAK8P3a1hd2uKsncgd=eyY1VHBbB8fPBDCWsyHpHT7q9eJp-URw@mail.gmail.com>
 <20200519144306.GE1059226@linux.ibm.com>
 <20200519150452.GH1551@shell.armlinux.org.uk>
 <20200519152714.GF1059226@linux.ibm.com>
In-Reply-To: <20200519152714.GF1059226@linux.ibm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 19 May 2020 17:32:52 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2iZNm310x8g2Zv0TjGJ=Px7hu14i3Ka7GQBZwyKPUesA@mail.gmail.com>
Message-ID: <CAK8P3a2iZNm310x8g2Zv0TjGJ=Px7hu14i3Ka7GQBZwyKPUesA@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
To: Mike Rapoport <rppt@linux.ibm.com>
X-Provags-ID: V03:K1:+oqoYWCN/gT/SE9bupsh3dGhnI6btYIeVm/0tSOxaLIr5B9wXf2
 bWDqdnupjp/9aQfj9FTuD1GqoKQB4j3X2LYrpQYBJQ9mayoyd+TERy8JrLjiAK03PRFdAAX
 z+zcL3Xgg+aNZN8JTGLlK1uO/fbr9fEel9ifcHaoIZ/22P8wx4oiR8i9Ubi33fjrBP5VKJ/
 s+H530YpG5WPLaYZe3g/g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XPzdYNrybX4=:uI/gjIIIZ12uOWvGF6pdyj
 j/Uc4TT6nGwMhq/um0CgLH1ru5G2CSmnEXUnOtACSe3o5BxYBbXgWRda0/sQpMMUDDHB+1Og7
 M1oQwSgM520cXefDC6YbJrpubsNrllbUWyQPEeXP7K7WrO4on7ss+7Or3EBIln+R3BewePHXO
 wysXLw+pzlaq+3WL2j6CtBaVDgRDv17F+euHfCq4zZAj4xsQQmCWsG8AdgiRXY6tHIGsjPosO
 MbqyJo2SzJoLuAI/BJv5b4usyPZ1G/Q+qUFI2YK1yUFvl10W7KjBBditrEGWqwpDpyAo0EtdD
 AAr1MTIfMYnA+BjdBBFxL8DGwzmkS73gSLe4jx+sFxma0h8+XSlHPGb6MJ/mEk1xpFktnsaIs
 AZ7xyPBwPl0QKo3MnqIWh2+xp4CsIwqzRtws4lPF9N/+8/YxGLFuSWmcF7PlOW5Kxd/wPfLyr
 fQNRwcJ26saHqOsRB2PbFQ3RNQmXJGQiOag2SpSgMNHCam0jfmRlvs6FI5jPdI9gphd64oPfh
 x14M85S5EK+z9PdpXRMQvuPGLvaMNfi4HnqBFufqF0nMnm9jIfBJOMUwvn10DXyOtacC72tym
 dXDhjvXVs7YwcQScy+GPsY4RhFfq1nhm1Z5v+doKFJwNcZ/MO7cSNM9RJ6hYoUse1o1xILMqM
 uLMScb5c36Fgqkzog4H1v960WZXJYy79Rkd6OZmQtKIdDiUHSDmSgxswfF/6qbjszaicKWptZ
 GnYrOvWAfTIYp7on9xfw2pcwR3CYTXSSXXqz0BpEDG8p4+MIVIKkwKs4GhJZXy+Y9p0sxyBoB
 bWTe/DNNXzSQO1Hs77UeyWxgn8szoc7MrbAMGkYz8gQxvJYIWc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_083317_385201_9BABE66C 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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
Cc: Doug Berger <opendmb@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Cernekee <cernekee@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Florian Fainelli <f.fainelli@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 5:27 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> On Tue, May 19, 2020 at 04:04:52PM +0100, Russell King - ARM Linux admin wrote:
> > There are cases where the reason to use sparsemem is not an optional
> > one but is out of necessity - they require the page array to be split
> > up in order to boot successfully.
> >
> > With that in mind, flatmem becomes an "optimisation" over sparsemem.
>
> At the moment, there are three platforms that enable SPARSEMEM: ARCH_EP93XX,
> ARCH_RPC and ARCH_SA1100. All the rest have FLATMEM implcitly selected.
>
> I do not intend to change that, I am only going add an ability to select
> the memory model for ARCH_MULTIPLATFORM.
>
> I'll respin the series on the list before adding the patches to the
> patch system.

I think we'll make EP93xx part of multiplatform at some point, IIRC
only the missing clock driver is stopping us at the moment, and I already
discussed with Linus Walleij how that can be done.

My guess is that ep93xx is one platform on which sparsemem is
just an optimization to reduce the initial memory consumption, but
we should verify that when we get there.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
