Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E39F1DA2FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 22:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qufY87Gt+PogcDUShUAY1YZxHMA1u0r+AiCylMc67CE=; b=N+Qpq0T7l2yLfX
	Gbrzg9G1qZTkpk96pwsfx2GgVpN44Uh9t7Qftb39cDsmfUScFNmCSzqstl3bh+LKBZrg8Mnjaxu18
	mEdkReENMapHiLFNYOIupt4f/TWyRRBNQiVDdWsst8QEVtZTIy/VgSUk1z6swwIZpHHjfsG2d7z7L
	9qjVa1CwQBhz/OpJfztv18U8IC5nLJ2u1pktVWasnNhePriVPyMdrBmsSPTQzrKo+siyTsz07da7z
	+QYWtWi2zPijTJtLpVVAOruJ13Qdz43bwFmGeQ5NPxNR1pIW51V1psa6Uqp5RzMDYcQ862Lzqcfm7
	1JUD50T2DuxudH8TBxMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb94X-0000Hm-NH; Tue, 19 May 2020 20:42:45 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb948-0000Ac-Lk
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 20:42:22 +0000
Received: from mail-qk1-f173.google.com ([209.85.222.173]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MZCSn-1jX0LT0sEr-00V4Wr for <linux-arm-kernel@lists.infradead.org>; Tue,
 19 May 2020 22:42:18 +0200
Received: by mail-qk1-f173.google.com with SMTP id 142so1216865qkl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 13:42:18 -0700 (PDT)
X-Gm-Message-State: AOAM531iVrbt9IU+fp9NIs5EBk7ZDuL+Jx+/W3/btaNasORkWd/CUgZ0
 PbqNslXD36ReVN+QaOjg8rsZSDWcSps0jxiGE6M=
X-Google-Smtp-Source: ABdhPJzleuc2vndu6nrmPcMcfdzlz7zSr28Pgq5AAUdUE8l8U7hgjDGllIa94DD91pdEJnVWVypvE3pzL76FznxGqTg=
X-Received: by 2002:a37:aa82:: with SMTP id t124mr1249821qke.3.1589920937035; 
 Tue, 19 May 2020 13:42:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200506235009.25023-3-f.fainelli@gmail.com>
 <20200507072711.GB683243@linux.ibm.com>
 <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
 <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
 <20200518194533.GD1059226@linux.ibm.com>
 <CAK8P3a1hd2uKsncgd=eyY1VHBbB8fPBDCWsyHpHT7q9eJp-URw@mail.gmail.com>
 <20200519144306.GE1059226@linux.ibm.com>
 <20200519150452.GH1551@shell.armlinux.org.uk>
 <20200519152714.GF1059226@linux.ibm.com>
 <CAK8P3a2iZNm310x8g2Zv0TjGJ=Px7hu14i3Ka7GQBZwyKPUesA@mail.gmail.com>
 <20200519165445.GI1551@shell.armlinux.org.uk>
In-Reply-To: <20200519165445.GI1551@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 19 May 2020 22:42:00 +0200
X-Gmail-Original-Message-ID: <CAK8P3a32gDzqLBeBs8CtT9fhRncQNsJ0nrN=2Ws4DAWe3nOCZA@mail.gmail.com>
Message-ID: <CAK8P3a32gDzqLBeBs8CtT9fhRncQNsJ0nrN=2Ws4DAWe3nOCZA@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:nNv0joqix2PssrkAF9pzaGUtzeguhcvrxnbYnH9E77lxXO38LeW
 AEjCrbuM/noHuZHYrxV+B03j+ioY/lLVyp9+tl/Nc0qEjuXunHDXu/OlMxYyueicMa0KjfU
 GEmLAs8e+8izTEhNlzebhKH2hQ7weiL3aLa/iFg7szDxajR6uGyBpRHGTupyYVjfUCAraCl
 CtgMZXVNSP6yRzY89+htA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CQrNmumllso=:HuKL7fGum4F2YOnVGkuEWN
 FT0uvPBb6bOsM2uWGTY0ZIzx7W1pKZc+bnBV8IHYzkaEhEUK0LwYk4A32QSqAChZTPOSA94BP
 WP59XeKSe5ubmdxI7KxQCs9lu/j8HtONpBaKkabrt5cVj1WONr7Yhx8mrAnSEpqhm7lNt0JPP
 VC6jNwAsw6zycfzLhbAuYfIW2HPVGnayW66rHB01HptPcjk4keP0W2zVWdGWGnf0wqPfsyWhJ
 9XntRRb3huLeSJxhJ6up5bzKQ+OJFIJYpANtH3DLPn6QAroW2R9fu1ixZQp/67qo24uvBNKZo
 uJBx5FMEQuND6CuKpqdqi3t0jyhhBtppl8f92k1042Z2zrBDlV4e9q4O32otjmTZGHTPA08tG
 dyyFZFi1Ownsjk4ioLfDBLyRfDeHKe0qjQlfBZ0OC91HPLDYdR8t+spnpczs8wZD6gycADnYt
 sXLBSpwfG7jdGlh3cHophvk2CXjkkx7uty7s5/f1RAgFMooEI/Vzm2HBCw8DMeIzi+T1Xqp19
 QPa0meEb2t8quYPJtxzbNEfeJaGoJncd/8blBoH3inh7Tluj/A03Nv6CRQmYTDx6Wb2t39pj9
 XnyrSzEbKtOyUMee7N7kYM+BN/JUi8tm9cEzU6iQowfGzNLGQv1nMdYNKj6B1ckAtRdq2ApIR
 6JC7bfWnTORpNotQHPJYtrORj7Tqe0F3O1x61PTpy1fKWCHCiplsfbmmHLVSaX/8albYhA0GZ
 8yPQzTvK9TCWsB7V+9zVo1wv8tSBA+v4pRgiuBm8N01JNeon2+DspLgerzOHY98q48Bajz0j1
 7e0h1pXSeH5/l1paxrtzxC1/C3HUecG/VLQlIopq3MNq+Z+BV8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_134221_019508_DDAE4D75 
X-CRM114-Status: GOOD (  23.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Kevin Cernekee <cernekee@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 6:54 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Tue, May 19, 2020 at 05:32:52PM +0200, Arnd Bergmann wrote:
> > On Tue, May 19, 2020 at 5:27 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > > On Tue, May 19, 2020 at 04:04:52PM +0100, Russell King - ARM Linux admin wrote:
> > > > There are cases where the reason to use sparsemem is not an optional
> > > > one but is out of necessity - they require the page array to be split
> > > > up in order to boot successfully.
> > > >
> > > > With that in mind, flatmem becomes an "optimisation" over sparsemem.
> > >
> > > At the moment, there are three platforms that enable SPARSEMEM: ARCH_EP93XX,
> > > ARCH_RPC and ARCH_SA1100. All the rest have FLATMEM implcitly selected.
> > >
> > > I do not intend to change that, I am only going add an ability to select
> > > the memory model for ARCH_MULTIPLATFORM.
> > >
> > > I'll respin the series on the list before adding the patches to the
> > > patch system.
> >
> > I think we'll make EP93xx part of multiplatform at some point, IIRC
> > only the missing clock driver is stopping us at the moment, and I already
> > discussed with Linus Walleij how that can be done.
> >
> > My guess is that ep93xx is one platform on which sparsemem is
> > just an optimization to reduce the initial memory consumption, but
> > we should verify that when we get there.
>
> When you have a platform where the memory is segmented into separate
> blocks widely spaced, sparsemem is not an optimisation.  For example,
> If you have four blocks spaced across 1GB, that requires about
> 256Ki struct page's.  Assuming 32 byte struct page, that requires 8MiB
> of contiguous memory.

I checked the datasheet: ep93xx has four chip-selects, each of them
with their own 256MB memory area. Most boards we support use only
the last chipselect, but those that have more than one would waste
up to 2MB per additional memory chip, which is not nice but doesn't
make it a hard requirement as long as the kernel can fit into the first one.

However, the chips has a second problem: depending on the
specific memory configuration, only every other 2/4/8MB within
that range may actually be used, so the mem_map[] array would
double its size in practice and (worse) the kernel would likely
not fit into the first section without sparsemem.

This means we should indeed treat it as a requirement for ep93xx.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
