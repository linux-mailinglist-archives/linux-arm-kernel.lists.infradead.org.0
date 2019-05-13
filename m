Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEA91BDAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0su+j00gWxBrx80/i9Uq15/O3dbNL4kHVbExDbPtlQ=; b=tRSEF/M9ySZ+Wr
	Ppvp69v0JCUZX5PdJKWq7GdIpSfbzuoUxpH+akOnNzjtDOSa28yfG9xffBDopAMMXk8CAj8wVsLQJ
	n6LXSUqa1Q/jT4QPsDcwpnQewB1dpCy8ioT0ilfnXzmEVpYI3DzJHOIfm35N1kR9Svrom91N6uzku
	CBEKpQYQoFXmy2SPL1ob4Q0kLmatPZKfuysZCAF7+j6FAqVkqhFQmI402jQUcyLvOlYDJMz4ZaYwP
	6s6ABB1YR4LgUfBywfdm2kEYn1v3W4aIbo6Z+5KzOOE0KdKCbSmRLze4xMsRrrauK1hElSpzhWYuh
	3Nzn08uS/BqOdekabZrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGWw-0000a0-2Y; Mon, 13 May 2019 19:22:34 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGWq-0000Zt-Fd
 for linux-arm-kernel@bombadil.infradead.org; Mon, 13 May 2019 19:22:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IDW+SWgrzfGK/r1Yzo1GqZUV1GP7IXHMx2pAT0TmT2A=; b=qofL8PaOKVEg0XXfHMvYhqL0F
 +AAVd6VMrWJB5RhmYaEHrsi3L+Q3BEFHheUmy2TviBeIqoDIc1Y6dIAaxcdUK1BrPIYdWeX/Ehyke
 SAFE5h5RwPUnCnm1rXtgI8CE57S8TL4hSNu84DLHNHB5BRIXdy+RB0x+CdY9Fq1VyCcS7hZ+6/Q4g
 JqpgvaqIBT4CIhh4XmtTLr3wzDuxXZXLwIJFYKy+81HnIbMSxKoGJ1aAeh2DKmm4sAc6scllOjmTU
 2gXLKD+r+kWoIoDhQlnAK0tewn2uAICl3dzOHD59fFtbmFmHVZZUlW8tP1kfKtpv/unjvro7+hQAg
 bgP9ApaKg==;
Received: from [190.15.121.82] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGWo-0000zp-8L; Mon, 13 May 2019 19:22:26 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 5BC31403AD; Mon, 13 May 2019 16:22:24 -0300 (-03)
Date: Mon, 13 May 2019 16:22:24 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] perf vendor events arm64: Map Brahma-B53 CPUID to
 cortex-a53 events
Message-ID: <20190513192224.GA2470@kernel.org>
References: <20190405165047.15847-1-f.fainelli@gmail.com>
 <20190408162607.GB7872@fuggles.cambridge.arm.com>
 <46ac3066-fa55-9fb8-dd54-32fb702030cb@gmail.com>
 <20190502235725.GB22982@kernel.org>
 <60f367b4-1c5b-0778-eaa6-1a78d58f33a1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <60f367b4-1c5b-0778-eaa6-1a78d58f33a1@gmail.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, bcm-kernel-feedback-list@broadcom.com,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 "moderated list:ARM PMU PROFILING AND DEBUGGING"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, May 13, 2019 at 11:04:49AM -0700, Florian Fainelli escreveu:
> On 5/2/19 4:57 PM, Arnaldo Carvalho de Melo wrote:
> > Em Thu, May 02, 2019 at 02:28:02PM -0700, Florian Fainelli escreveu:
> >> On 4/8/19 9:26 AM, Will Deacon wrote:
> >>> Acked-by: Will Deacon <will.deacon@arm.com>

> >> Thanks! Can this be picked up?

> > Thanks, applied to perf/core.

> Thanks, I don't seem to be able to find it being pushed out to that tree
> or in linux-next.

What tree? acme/perf/core? That is the one I referred to, have you
looked instead at tip/perf/core? That one still doesn't have it, as I
was in LSFMM/BPF and then vacation and haven't pushed that to Ingo yet,
look at:

https://git.kernel.org/pub/scm/linux/kernel/git/acme/linux.git/commit/?h=perf/core&id=c0c410e9c4f36972c393a4cc61368d92feb23d67

I can remove it and wait for your resubmit addressing the issues
discussed in that other message, ok?

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
