Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3FB137829
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 21:56:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F68rjmU5kIkWP7vkRHr6Li5UqEpQUlvMZ610yMvpZdc=; b=a3CJ98asfnYfrA
	KD+vZfCLppf+/5YVTD7agX8G+9ujBm3XOvsmN7s81LFrH/D1o95S/lbRd6amtAZXAGlSQilZ/UHU3
	tvx6FHD/xGFtZulZsjQVmvyKDa8ySLDXYebLrq41ANymxx86qZK6OX7aVt8MLYlwktBFlac7ZoHNq
	wNSzDxiGYpvPkt2zKUyyPxYhFMJjlxHU8CIDUSX+VvDb0W6c74N0BeZQrcmlUv3JBZmp6dALwW7TR
	Qi8w/X1pFtIeRXk2R0FTVGsvD2XOltAykM/fyNWGnwHU+ZCWc0WGcorPrAQcHDuhaENu/PIVCQDJI
	JGP3YChRLSpuD33fhvMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq1Ke-0007TQ-02; Fri, 10 Jan 2020 20:56:36 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq1KS-0007RQ-Ha
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 20:56:26 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iq1KD-0004bR-TU; Fri, 10 Jan 2020 21:56:10 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 400F9105BDB; Fri, 10 Jan 2020 21:56:09 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@kernel.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [RFC PATCH v2 01/10] lib: vdso: ensure all arches have 32bit
 fallback
In-Reply-To: <CALCETrULuV5iAU3kSjMdcpV6DFGEw1z2so0DfDca6hoLB4X4cA@mail.gmail.com>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <47701b5fb73cf536db074031db8e6e3fa3695168.1577111365.git.christophe.leroy@c-s.fr>
 <CALCETrULuV5iAU3kSjMdcpV6DFGEw1z2so0DfDca6hoLB4X4cA@mail.gmail.com>
Date: Fri, 10 Jan 2020 21:56:09 +0100
Message-ID: <87sgknrpxy.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_125624_725635_F5C1605E 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Andy Lutomirski <luto@kernel.org> writes:

> On Mon, Dec 23, 2019 at 6:31 AM Christophe Leroy
> <christophe.leroy@c-s.fr> wrote:
>>
>> In order to simplify next step which moves fallback call at arch
>> level, ensure all arches have a 32bit fallback instead of handling
>> the lack of 32bit fallback in the common code based
>> on VDSO_HAS_32BIT_FALLBACK
>
> I don't like this.  You've implemented what appear to be nonsensical
> fallbacks (the 32-bit fallback for a 64-bit vDSO build?  There's no
> such thing).
>
> How exactly does this simplify patch 2?

There is a patchset from Vincenzo which fell through the cracks which
addresses the VDS_HAS_32BIT_FALLBACK issue properly. I'm about to pick
it up. See:

 https://lore.kernel.org/lkml/20190830135902.20861-1-vincenzo.frascino@arm.com/

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
