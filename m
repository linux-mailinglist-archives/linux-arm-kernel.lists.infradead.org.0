Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E331E1EBBD2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 14:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ocxWIJwohBOhT7ibrOKHTbLNYSEPaHj5gb2FUllpYpQ=; b=PIwALuVjrjqPNH
	IO4QQzVnnSA4sSXGYDoGmgDDlPzyjgeu9xdBw8aIyMZZjxWnjMO/NLsQYJtz/kJwTd9dWmSjRDZDG
	JMdWafneE60dSCod3Td6A/Uxt0+16xrOd4qMS6fLqNmZfzz+lAu6ROkVStB+X+wz2nIAqwazpCXIT
	0Na+1pqE1RnwBgcU5Dn6FV5PIglZi4LwDhJrYo84445moJinHxYlbzPk/pShW788/KzjfT/21rUAi
	reU6w2JVcd1iHBf1ngfnMTV8s5oeL/IOSPqD1h6Mm9WecwYuXt0OUoF5EL9WF9Bbpb/uz+vdpgWhB
	hfz2HitRoRVcLX+AAesw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6BA-0001tC-Vp; Tue, 02 Jun 2020 12:38:04 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6B4-0001rf-AD
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 12:38:00 +0000
Received: by mail-oi1-f193.google.com with SMTP id p70so7189832oic.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 05:37:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y6K68nx5Eb0T2fp6Rbj0UdK8sGXF0DYTabhkDP6ia2I=;
 b=dKp72rsEJWPFl1CloHblwIHNw0yz58O26yDRl7Oi3HwadgnMed6bHZXZg+g7BhQog6
 OC6+oYfL4GBk+M6PhPc0FZ9yctIVijZaQUX7ZkqeP1m+qYetgMJwmbjBLxA02txRJftO
 mB3GZrMH7J/9Rc+AL+Pi6Eq33AYI3z3Be6ROQAzepGL6PnrorVfkalBeJ88xUNYJ6jKA
 72eu4yrH+Ow9FAXX3mT9fEcRBYXnLIDKV2D1VBOTNQ6qLD+7UBC862+0tS6uGexEgVUW
 dDcX0gWYvnxP2EsMgTdP6oqtZ70YX4QIPd+iZ13uw9wR/neWiSTmXVKxatYy3znJy0RF
 s+KQ==
X-Gm-Message-State: AOAM532pUvvOmn2TI8eM7BrvzVFjTZ+j65NJ5BzYqhh/8TY7+NGOHoDS
 6vbXAANvpTsz6MMG/Dh4LV9jyu/aGoy3HZ1v75OIYSoG
X-Google-Smtp-Source: ABdhPJzwruLbSLauEDEUNCXxZfNkTF/3pvjj0OSg9d/GJEX1nYq2I6dR9BcSY4+w01kx4gWnSm02Wd/uwTfnw9EMaDs=
X-Received: by 2002:aca:644:: with SMTP id 65mr2703936oig.148.1591101476847;
 Tue, 02 Jun 2020 05:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200521081825.1348844-1-rppt@linux.ibm.com>
 <20200521120308.GR1551@shell.armlinux.org.uk>
 <20200521123327.GQ1059226@linux.ibm.com>
 <20200521140745.GS1059226@linux.ibm.com>
 <20200521145020.GS1551@shell.armlinux.org.uk>
 <CAMuHMdViAcnaPzeD6cS8U-uzjZARGyf0dqaiehevn+DwCNid5Q@mail.gmail.com>
 <20200602122247.GV1551@shell.armlinux.org.uk>
In-Reply-To: <20200602122247.GV1551@shell.armlinux.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 2 Jun 2020 14:37:45 +0200
Message-ID: <CAMuHMdUxdPML=eS59M_KRvpbAiKmLptf3ngfhhiKRyNYgpKt2Q@mail.gmail.com>
Subject: Re: [PATCH 0/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_053758_354021_107E67AC 
X-CRM114-Status: GOOD (  20.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Stephen Boyd <sboyd@kernel.org>, Kevin Cernekee <cernekee@gmail.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Doug Berger <opendmb@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Tue, Jun 2, 2020 at 2:22 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Tue, Jun 02, 2020 at 02:18:48PM +0200, Geert Uytterhoeven wrote:
> > On Thu, May 21, 2020 at 4:50 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > > On Thu, May 21, 2020 at 05:07:45PM +0300, Mike Rapoport wrote:
> > > > Ah, when either of these patforms will become a part of the
> > > > multiplatform build, the only option for multiplatform build will be
> > > > sparsemem.
> > > > So it would be nice if somebody could check the cost of using sparsemem
> > > > vs flatmem, espessially on low end machines.
> > >
> > > Do you think they will become part of multiplatform?
> > >
> > > If they're low-end machines, then adding:
> > >
> > > (a) the additional memory overhead of a multiplatform kernel
> > > (b) the additional runtime overhead of the complexities of multiplatform
> > >     kernels
> > >
> > > is surely an odd thing to do, especially when few really care about
> > > these platforms becoming part of a multiplatform kernel, except those
> > > who like the idea of multiplat.
> >
> > The fallacy of "multi-platform", again?
> >
> > Isn't it a requirement for any new ARM v7-A platforms to be part of
> > ARCH_MULTI_V7, even if it's a low-end machine?
>
> What does ARMv7 have to do with this thread, that is discussing the
> older ARMv4 platforms? I find your comments above irrelevent to
> this discussion, and seems to be worded to provoke a reaction.

Sorry, I used ARMv7 as an example, as it's rare for any new ARMv4
platforms to show up.  But the recently introduced sam9x60 (ARMv5) is
part of ARCH_MULTI_V5, and I expect it will be used with less than the
256 MiB provided on the dev board.

Nevertheless, there's a movement to convert everything to ARCH_MULTI_V*
where possible. So it matters for all variants.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
