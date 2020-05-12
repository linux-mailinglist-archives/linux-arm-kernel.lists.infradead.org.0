Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AB01CEFD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 10:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApkhVFaKFlbf5kUcTrZRH0itsG/cpLalZ67Fk0g8KkQ=; b=BN0qPJqFENZPWL
	GU0UZlZPfeOIOiqpiP+fk0svxUej45Ku+rDvTfJJ5NPcjCfBRIF0Fh4b8qrpuTqW2FH2IezgSEtVA
	Jyr/RP2a4QVZ+Zp6/0sSqZRgaT3frt8H2ZVAYG5a+NfubInvyhZ3FGYae8bzHpkSEFEEBd3yw5J68
	6T0WcZqlPn3j6bfQfm+MUnHcy/d7a6Kbuv29r1PNfek1QnxctzMu0VSZocqE4idA4zVjAsAVa1oOP
	WzdpBgHwE/vPtLCs2U4ybIzacJqxn4sY0JVklRJJFfsbn+RPS1hv7yLk8Bphr8o6vfNLiYehzeGJd
	ELHIgIP/2OgKX37VYxTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQjg-0006lh-T0; Tue, 12 May 2020 08:58:00 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQjQ-0006jg-6A; Tue, 12 May 2020 08:57:44 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id A91C4305EEF;
 Tue, 12 May 2020 10:57:41 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 929A3286BFA73; Tue, 12 May 2020 10:57:41 +0200 (CEST)
Date: Tue, 12 May 2020 10:57:41 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 0/3] arm64: perf_event: Fix time offset prior to epoch
Message-ID: <20200512085741.GG2978@hirez.programming.kicks-ass.net>
References: <20200505135544.6003-1-leo.yan@linaro.org>
 <20200511092200.GF2957@hirez.programming.kicks-ass.net>
 <20200511092519.GA3001@hirez.programming.kicks-ass.net>
 <20200512063812.GA20352@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512063812.GA20352@leoy-ThinkPad-X240s>
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, Enrico Weigelt <info@metux.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Paul Cercueil <paul@crapouillou.net>,
 Alexios Zavras <alexios.zavras@intel.com>,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 02:38:12PM +0800, Leo Yan wrote:

> I have verified this change, it works as expected on my Arm64 board.
> Also paste the updated code which makes building success with minor
> fixing.

W00t !

> I am not sure how to proceed, will you merge this?  Or you want me to
> send out formal patches (or only for the Arm64 part)?

I suppose I can write a Changelog for the thing, Will asked for another
change as well.

> P.s. it's shame I still missed you guys suggestion in prvious thread
> even though you have provide enough ifno, and thank you for the helping!

All good.


> ---8<---

> -	/*
> -	 * time_shift is not expected to be greater than 31 due to
> -	 * the original published conversion algorithm shifting a
> -	 * 32-bit value (now specifies a 64-bit value) - refer
> -	 * perf_event_mmap_page documentation in perf_event.h.
> -	 */
> -	if (shift == 32) {
> -		shift = 31;
> -		userpg->time_mult >>= 1;
> -	}

Is there a reason you completely lost that? IIRC I preserved that.
Although I don't know if it is still relevant.

I'll keep it for now, and removal can be a separate patch with proper
justification, ok?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
