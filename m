Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE711F9FA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 20:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WE34LIoa8wh9orgsTp0pmWu04UOnxfB6jRmIGgFGRDA=; b=d2f9xZ7L0cU5Bc
	/nlvhuB1kaidxsuqafUHl8WblQvbdzPheWPV7n3xFHjFPfH/mAy4MLg+v755Uay/mBw/H1OOU3yqO
	PnvOdNMgzxSkMbiNUKgtzk/FCrZIjl8AkjpC1cci0FN2bel2e40InjVRSBdoKRpovz+mLhnoUpYfy
	dFtl1PstZaOv4Sa4d5ZoYDz35djWQLYeVBN0E4823PGixqmNIRZbfhDcmP7xcdwZRpzTSNX6j+fhc
	RbIDy9P/Zl1V6P+OjuMu1jwsmfl2XS7ltFZYonw10hoYAsnOt7Sy0xanj5NCdsKyL/ZBMwruk+4dK
	xnLhbAfmM4SW3/g/rntQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jku8p-0006II-2e; Mon, 15 Jun 2020 18:47:31 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jku8h-0006HY-20
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 18:47:24 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MiIhU-1jEL4L2qik-00fPsP for <linux-arm-kernel@lists.infradead.org>; Mon,
 15 Jun 2020 20:47:19 +0200
Received: by mail-qk1-f175.google.com with SMTP id 205so16776992qkg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 11:47:19 -0700 (PDT)
X-Gm-Message-State: AOAM530RvSC7Wy7qjbeRWxShCWT/KxBeoXTNt1bgcMjp7CPb4+iLlWTf
 WFka5GptYQW2SYncxHbQDV3jOYnMrqBIlwjC50c=
X-Google-Smtp-Source: ABdhPJzcQbK0Gh43Vbjt9NhNlEHEP8lArPvLwYPZGPIYALBqTjBUF1iUc73zpucajmn7+xgOQVN3+L0nF4AR+SfsCY0=
X-Received: by 2002:ae9:c10d:: with SMTP id z13mr15874842qki.3.1592246838316; 
 Mon, 15 Jun 2020 11:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200615130032.931285-1-hch@lst.de>
 <20200615130032.931285-3-hch@lst.de>
 <CAK8P3a0bRD3RzE_X6Tjzu9Tj+OhHhP+S=k6+VYODBGko8oQhew@mail.gmail.com>
 <20200615141239.GA12951@lst.de>
 <CAMzpN2heSzZzg16ws3yQkd7YZwmPPx_4RFCpb9JYfFWJ9gfPhA@mail.gmail.com>
In-Reply-To: <CAMzpN2heSzZzg16ws3yQkd7YZwmPPx_4RFCpb9JYfFWJ9gfPhA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 15 Jun 2020 20:47:02 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3q-hC7kZwLPbc+E5VYcqthQS4J4Rqo+rKkBRU2n071XA@mail.gmail.com>
Message-ID: <CAK8P3a3q-hC7kZwLPbc+E5VYcqthQS4J4Rqo+rKkBRU2n071XA@mail.gmail.com>
Subject: Re: [PATCH 2/6] exec: simplify the compat syscall handling
To: Brian Gerst <brgerst@gmail.com>
X-Provags-ID: V03:K1:4RguZygpWGlPI9VDAYS41xtc4uDy54M8dNcVKjv+2TUMFu/HyUp
 l98SQMFVF4BI3U/hylvLBBnOYuqSTHILCdKdery8fBayUMDSvmbP1HChHriqE0UsGK3iIDz
 zdY16paNE49tVyflBro0WDhLG7BzZmk8o7qu/5T4PYHL73wmYucLszbQuk7/I082wJrmPSB
 /PCvnXfHKJZURkl4P5Awg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ma9Mf0dCgU4=:hPrTxyzq80iWe8yTIfDX6f
 /mNLhiDNkQPfOUn8x2CSii+PhBb7Ney7H2VhkMeA5xyxuSahX1frsBigZgmDoGfIZfBX3HIRC
 Crb7tjd26O4IwDEiCD9QBW0SfzktrOMR4xAwH4ehrCqqryaTGrapeVWPtaSPZC8/P/8gSWD9a
 vO5SS6BYGKaemVkPkaO8rIiWpEDqnbvqRs3R0ZfERmDO/IpZxAKU60lxH09CHrjmBiEEfV6oZ
 Hm8cJ0TSNUNzcn1QojR2cfHJPzOaTW9sS6jNySAt1bow7I2a8wMOYlWx7uUWuy/3qtHLVHX0y
 vFyR/a4VDq+6e2XLHmDkmuMPaJ+DGxFNGN4uIXdTlaE5nn4sVnoBsQ+YD0DWJaXeKLDx9KuzD
 8NqhN1dhi2mHnxi+X4xtdc1OhNmxXis8KcOsKTGjeYLcDpuL0fJveIcgnQvS8E5MqvKMZgvQ+
 mE6OTgxe6WHG6PYkTe30ICmgTFCNa2Vkk7/xutG+5X/pUsq4RMGJGCzwx4J8z1mNZ9+xSYXAE
 Cdskc34C5z/pP3WF6Naen57z/2dgMLqseajOe9e7tVJbucyidD8aatmcUu00bTBWQ+puIkCn6
 C9WvB+nwqTxMcGadouhqNN5VSNVaVjjfPzBp7LM7Fn15A06qngveAgrgFCXIb1XHEIyxbXI84
 h1/PnJKVgvz4pK0Gs5b12V8cmbCaENFEGEXHkPdQVfhDYAGVq0mXKCdNc6qUPBNfXLlN+KE+J
 Rj1mkZdlAswHFeROGdn7BsPq7cHPg53IzoQFgICCe0jkQd9gjpgKeR4GmX2aljVziV8cH7Ey3
 d9D6jkmkKdxPGlOZHE77mfB53gtGdy+AlgfMMyuQQp+EYf/oko=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_114723_402493_DE0632AC 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Parisc List <linux-parisc@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 sparclinux <sparclinux@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 4:48 PM Brian Gerst <brgerst@gmail.com> wrote:
> On Mon, Jun 15, 2020 at 10:13 AM Christoph Hellwig <hch@lst.de> wrote:
> > On Mon, Jun 15, 2020 at 03:31:35PM +0200, Arnd Bergmann wrote:

> >
> > I'd rather keep it in common code as that allows all the low-level
> > exec stuff to be marked static, and avoid us growing new pointless
> > compat variants through copy and paste.
> > smart compiler to d
> >
> > > I don't really understand
> > > the comment, why can't this just use this?
> >
> > That errors out with:
> >
> > ld: arch/x86/entry/syscall_x32.o:(.rodata+0x1040): undefined reference to
> > `__x32_sys_execve'
> > ld: arch/x86/entry/syscall_x32.o:(.rodata+0x1108): undefined reference to
> > `__x32_sys_execveat'
> > make: *** [Makefile:1139: vmlinux] Error 1
>
> I think I have a fix for this, by modifying the syscall wrappers to
> add an alias for the __x32 variant to the native __x64_sys_foo().
> I'll get back to you with a patch.

Do we actually need the __x32 prefix any more, or could we just
change all x32 specific calls to use __x64_compat_sys_foo()?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
