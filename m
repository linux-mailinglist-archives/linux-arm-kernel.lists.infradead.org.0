Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB501EBC28
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 14:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahHJSDVl4/JL6iQY00bczuO3GwYhg8mxdCN3IZ+zRjY=; b=Dg+/nB3+K01uG5
	RW3w0CULUhpDvmZEAwUolWwOqeevYJC29APE/z5IW9tAf8zEAmO3/LHV1b3L6FNq+7TxekRV7N8UD
	mfoLjs36v/sS2ySnvZQQQAscTyC5fldMD6gs7+ej/ze7v1LzrGqkxVoZ8gJYdonLiWEURs+444P33
	iF5VNQDg43WiVusxmLjVaIfxBSESzJtsqsM7jvnw9d7DP91PINdOodVcDBW0VWLLum9kM+Qp5LirL
	s8HxcjvXAgcKxixY6P610f74tEIZGm9K/KvKHIEeFUK7hpEGtSwPx1FASOzvvTvutyskkZVZF3ZDY
	oqFPBAP46+GLzeU4zOQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6Sp-0006ni-OT; Tue, 02 Jun 2020 12:56:19 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6Sj-0006nK-Bc
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 12:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WJIHrlG83yZ1LliixKtWw3EazzhNjHW8dy5OXWOCz0k=; b=B/lEYVX04CkPgJWSPvzq857Z3
 C7dOU1V2SShSpXtuln4JaAtsuyvd1OwLy6WKSd6Hrvj81rlhAIIZj0c6E73pmYPEtSbCEy7tr4LPl
 FFDSZ2WCMuBgFYU7XzxDi00FrbxFAJLi0eDrCLecOoDkpz2UU8cHHMlpkwSfkJ2Quqkro9UWvyE+q
 juynkUnzOOiA5hKxgYjZ609GzzOGgW/jcm4ddOeJXwBHoCMUHXhxCD+hLpvV+4iN0TAeT5/BvcxjD
 9L8nUZLhGMsw+PcokMCLdIlp4hicNYUXnfeeeo+hDTHqRyihxuKb5ieG2mPGXy++7lFRgsa/omfSC
 qV0zNWFNw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:37940)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jg6SZ-0002pb-2E; Tue, 02 Jun 2020 13:56:03 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jg6SW-0004P5-PH; Tue, 02 Jun 2020 13:56:00 +0100
Date: Tue, 2 Jun 2020 13:56:00 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 0/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200602125600.GW1551@shell.armlinux.org.uk>
References: <20200521081825.1348844-1-rppt@linux.ibm.com>
 <20200521120308.GR1551@shell.armlinux.org.uk>
 <20200521123327.GQ1059226@linux.ibm.com>
 <20200521140745.GS1059226@linux.ibm.com>
 <20200521145020.GS1551@shell.armlinux.org.uk>
 <CAMuHMdViAcnaPzeD6cS8U-uzjZARGyf0dqaiehevn+DwCNid5Q@mail.gmail.com>
 <20200602122247.GV1551@shell.armlinux.org.uk>
 <CAMuHMdUxdPML=eS59M_KRvpbAiKmLptf3ngfhhiKRyNYgpKt2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUxdPML=eS59M_KRvpbAiKmLptf3ngfhhiKRyNYgpKt2Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_055613_415158_BBE8795B 
X-CRM114-Status: GOOD (  24.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
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

On Tue, Jun 02, 2020 at 02:37:45PM +0200, Geert Uytterhoeven wrote:
> Hi Russell,
> 
> On Tue, Jun 2, 2020 at 2:22 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > On Tue, Jun 02, 2020 at 02:18:48PM +0200, Geert Uytterhoeven wrote:
> > > On Thu, May 21, 2020 at 4:50 PM Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > > On Thu, May 21, 2020 at 05:07:45PM +0300, Mike Rapoport wrote:
> > > > > Ah, when either of these patforms will become a part of the
> > > > > multiplatform build, the only option for multiplatform build will be
> > > > > sparsemem.
> > > > > So it would be nice if somebody could check the cost of using sparsemem
> > > > > vs flatmem, espessially on low end machines.
> > > >
> > > > Do you think they will become part of multiplatform?
> > > >
> > > > If they're low-end machines, then adding:
> > > >
> > > > (a) the additional memory overhead of a multiplatform kernel
> > > > (b) the additional runtime overhead of the complexities of multiplatform
> > > >     kernels
> > > >
> > > > is surely an odd thing to do, especially when few really care about
> > > > these platforms becoming part of a multiplatform kernel, except those
> > > > who like the idea of multiplat.
> > >
> > > The fallacy of "multi-platform", again?
> > >
> > > Isn't it a requirement for any new ARM v7-A platforms to be part of
> > > ARCH_MULTI_V7, even if it's a low-end machine?
> >
> > What does ARMv7 have to do with this thread, that is discussing the
> > older ARMv4 platforms? I find your comments above irrelevent to
> > this discussion, and seems to be worded to provoke a reaction.
> 
> Sorry, I used ARMv7 as an example, as it's rare for any new ARMv4
> platforms to show up.  But the recently introduced sam9x60 (ARMv5) is
> part of ARCH_MULTI_V5, and I expect it will be used with less than the
> 256 MiB provided on the dev board.
> 
> Nevertheless, there's a movement to convert everything to ARCH_MULTI_V*
> where possible. So it matters for all variants.

First, please understand that I have nothing against multiplatform.

What I do have problems with is the "lets move everything to
multiplatform" without fully reasoning it out, especially when it
comes to older platforms that have limited attraction for the whole
motivation behind multiplatform, which is the convenience of
distributions.

multiplatform is the current fad-de-jour, and everyone is in a "you
MUST convert EVERYTHING to it, because it's the best thing since
sliced bread".

multiplatform comes with it a load of forced-enabled options that
are force-enabled.  Should RiscPC be forced to have the common clock
support built into the kernel, when it doesn't' have _any_ controllable
clocks, when it's likely that the machines have limited memory
available?  Yes, I have recently booted the RiscPC with a 5.x kernel,
and no, it didn't need very much fixing, the code is quite *stable*
(oh, I blaspheme, we can't have stable code in Linux, we must change
it every five minutes.)

I think, maybe, you should leave these decisions to people who actually
have the platforms, know them inside out, and can assess whether
conversion really makes sense or not, rather than blindly joining the
zombie march repeating "multiplatform is great, everything must be
multiplatform".

What is patently obvious is that in Linux, there is no tolerance of
someone who has a differing view, and they end up receiving reaction
provoking comments designed to inflame the situation.  Difference of
opinion must be suppressed at all costs!

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
