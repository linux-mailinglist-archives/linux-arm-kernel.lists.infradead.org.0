Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5D245D7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8ddRjrDGuO73h5riAesvQdaDly8asl9UQhFqDYAoRE=; b=hzJGN/Niz6kQ96
	Mp7Q4m1pTgdz+54MHAs+9fYRr1xGGW36LF+DJkZ8YMCnrsXO8BpSrNPjNiB6si3jNGLTITr+Bjvu9
	g51xMmt/GKs6/9v5snUQ/Ft/WpI/sbwYbF9C230YyDvCZphsYZQMwWCbNBn6/Kp5Q5T8Ru4v9SWl/
	pBfc3g5UiXRsSgzhqIivBZI+Ojh2ZFpd83FBUdC6BNaeXoHYflp0SVry98b1+MCpXHs1xFAD7rk+c
	fgskVNAVZUwJx1aKcIudYoYWC5NG0ZEXuQAyO6/AVYFBPJAlBLRgvk/s8eGOYH9zsOhb5w8DEqbIh
	5gDrerEmr2zxPUqsWyZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblvj-0001nV-HY; Fri, 14 Jun 2019 13:07:43 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hblvV-0001n6-6j
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:07:30 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hblvS-0004Pz-5b; Fri, 14 Jun 2019 15:07:26 +0200
Date: Fri, 14 Jun 2019 15:07:25 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v6 03/19] kernel: Unify update_vsyscall implementation
In-Reply-To: <9371eabc-ed74-3db8-794c-44c37ada2163@arm.com>
Message-ID: <alpine.DEB.2.21.1906141506500.1722@nanos.tec.linutronix.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-4-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906141307430.1722@nanos.tec.linutronix.de>
 <a69e48a2-575d-255c-2653-d3e99b7ba760@arm.com>
 <alpine.DEB.2.21.1906141416100.1722@nanos.tec.linutronix.de>
 <9371eabc-ed74-3db8-794c-44c37ada2163@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_060729_396461_F012B2F7 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 linux-kselftest@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019, Vincenzo Frascino wrote:
> On 6/14/19 1:19 PM, Thomas Gleixner wrote:
> > On Fri, 14 Jun 2019, Vincenzo Frascino wrote:
> >> On 6/14/19 12:10 PM, Thomas Gleixner wrote:
> >>> On Thu, 30 May 2019, Vincenzo Frascino wrote:
> >>>> +
> >>>> +	if (__arch_use_vsyscall(vdata)) {
> >>>> +		vdata[CS_HRES_COARSE].cycle_last	=
> >>>> +						tk->tkr_mono.cycle_last;
> >>>> +		vdata[CS_HRES_COARSE].mask		=
> >>>> +						tk->tkr_mono.mask;
> >>>> +		vdata[CS_HRES_COARSE].mult		=
> >>>> +						tk->tkr_mono.mult;
> >>>
> >>> These line breaks make it really hard to read. Can you fold in the patch
> >>> below please?
> >>>
> >>
> >> Thanks for this. I will do it in v7.
> > 
> > Talking about v7. I'd like to get this into 5.3. That means you'd have to
> > rebase it on
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/hyperv/linux.git hyperv-next
> > 
> > to avoid the hyperv conflict. I'll sort this out with the hyperv folks how
> > I can get these bits as a base for a tip branch which holds all the vdso
> > pieces.
> >
> 
> Ok, I will rebase and test the patches against the hyperv-next branch. Could you
> please let me know when all the bits are sorted?

Don't worry. Just post it against that branch and I'll sort out the
logistics independently.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
