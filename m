Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FABA2C5EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DepTpJdidyf97kPVZoRdBVFU+Whf74Hh5CnsjsIDaU=; b=lz1O7wVJMCX/mC
	Y7ErP4KzQv15PtVq6Vh0RszqX2WydG6KyMYUDiGb21n/UlPAIXYyhWMH4EEF246mqLLcUJFUrWqho
	H1G6fmF2sqshxj3lK3h21pHsGFXHXAF7wJ0rDdGEMxl0yW1G2a/s98QbP/sCFbtO4IymLsiJlNPk4
	EoVyHvJzSkWe6WCruNKwEIq86wcbxCx2r6GzMa/bteqsc+eSYsJFunBTh9IA4B09A9fqwehY//HGC
	cO3BcKWLmrSXfm2POJy77Gw4Xx9YyUl/Z/bIBtfn09c3bcWXsDoWhj9fHIVa/83HsfkQBq27TPNWU
	M3OhIQuJg8YyVE/HDUuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVahj-0006zZ-JC; Tue, 28 May 2019 11:55:43 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVaha-0005Jx-U1
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:55:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ubWHDxcBAW+GgYsjr8WokjpnNSm+Hpnm8uCfm3SCbUI=; b=s+bKGd3cqvnl3IG3V6gGQoyGD
 f3VTYB7YP4kUL0CJN9sB+dw6VaMPkxDoXA8VgROcMzPe16asM3t0MLdspiSjTlRBfHg8EKS33yPtj
 GtP7h93fdm5xmlgI+G0Br6Cdhi5OoNn7aFmSJ5z9KeQm3aIsmBw3W5g3N3lfsn/Bj1T9fuyqXRHJR
 OeJmqH/eoWab+SEHJl5koL9CIz7YWMxEYfG8vtNVp6UPfcJ3FoP0HUiJ2XY5rqJJZ/6KQOIla9GDW
 E/nefabFxxMvipegG3pbStT8/r9vuHICako130cmRzUDn0BKyzyStIMOjFYw30dSVllduLW3gpxdY
 fGHXc5IAA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:56028)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hVafR-0005Xm-B8; Tue, 28 May 2019 12:53:21 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hVafQ-0003ap-AP; Tue, 28 May 2019 12:53:20 +0100
Date: Tue, 28 May 2019 12:53:20 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: Linker error `.exit.text' referenced in section `.alt.smp.init'
Message-ID: <20190528115320.unaqrtw3w44cl5w3@shell.armlinux.org.uk>
References: <2072571511d5c77bb9ac53168e44e90b@agner.ch>
 <CAK8P3a1rBt8JLjaDqL-0FnFhUR=f5nsqF8tJhYzOjHyTf18+dg@mail.gmail.com>
 <a0f867e5f3f553ebdb8dc35157450495@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a0f867e5f3f553ebdb8dc35157450495@agner.ch>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_045534_968827_3143041D 
X-CRM114-Status: GOOD (  23.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 01:41:47PM +0200, Stefan Agner wrote:
> On 28.05.2019 09:32, Arnd Bergmann wrote:
> > On Tue, May 28, 2019 at 9:12 AM Stefan Agner <stefan@agner.ch> wrote:
> >>
> >> Hi,
> >>
> >> Cross compiling Linux v5.2-rc2 with CONFIG_DNS_RESOLVER=y using gcc 8.2
> >> I noticed the following build error:
> >>
> >> ...
> >>   GEN     .version
> >>   CHK     include/generated/compile.h
> >>   UPD     include/generated/compile.h
> >>   CC      init/version.o
> >>   AR      init/built-in.a
> >>   LD      vmlinux.o
> >>   MODPOST vmlinux.o
> >>   MODINFO modules.builtin.modinfo
> >> `.exit.text' referenced in section `.alt.smp.init' of
> >> net/dns_resolver/dns_key.o: defined in discarded section `.exit.text' of
> >> net/dns_resolver/dns_key.o
> >>
> >> make: *** [Makefile:1052: vmlinux] Error 1
> >>
> >> It seems that Masami noticed this a while back:
> >> https://lore.kernel.org/lkml/20180911231012.fdc45840f3d91860daa2e180@kernel.org/T/#u
> >>
> >> Anybody else seen this?
> >>
> >> When I remove put_cred in exit_dns_resolver the kernel links fine...
> > 
> > I've seen two or thre of these in total. This only happens on 32-bit ARM
> > when a function that needs SMP patching gets inlined into an __exit
> > function. In this case, it's the atomic_dec_and_test().
> > 
> > The last one I fixed was https://lkml.org/lkml/2019/4/15/625
> > I think I've seen the one in the dns_resolver before but couldn't
> > reproduce it recently.
> > 
> > I used to have a patch that completely avoided dropping .exit when
> > SMP patching was active, but I think we can fix them up as they happen,
> > as I have built thousands of randconfig kernels without hitting this.
> 
> Yeah dropping .exit seems rather harsh.
> 
> > 
> > The easiestwork around here  would be to drop the __exit annotation
> > and add a comment. We could also move put_cred out-of-line and
> > make it non-__exit, or add an extern wrapper for it.
> 
> Hm, both seem not very appealing to me. I think I'd rather prefer an
> extern wrapper.
> 
> Is this an actual problem? As far as I understand that fixup happens
> very early and only once during boot, so by the time the kernel drops
> those .exit.text fixup has been done long time ago...
> 
> Is this maybe a case for __ref (defined in include/linux/init.h)?
> 
> Or could we have the section marked init/exit such that this does not
> trigger the error?

Moving the SMP alternatives section doesn't change anything: the problem
is that the SMP alternatives are part of the image the linker creates,
but an entry in there refers to a section that we've told the linker
to discard.  The linker has no way to provide a value for that entry,
and so errors out.

I wonder if there's a way to tell the linker that it's a weak reference,
and modify the SMP fixup code to skip it.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
