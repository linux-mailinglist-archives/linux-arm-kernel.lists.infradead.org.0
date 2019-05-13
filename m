Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FDC1B497
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CS5PdSH8g28rdIsmF9hq68xr+Y/Pf/yM3Bgdj4482Ao=; b=RUopwkK3E59i6Y
	8761ZJvmFXRpCgfh7g/znzhrS2svDp7gf53UGFKnyqD75Jl+1PxTAWKx3YC8zbHtXaKruOQzHr0fJ
	VelQP4B5I7a8rsgrh7aT7AMa0YTxOFB3WAAAhxjjpZrSt00LHR1qqOYnM9mDPuIB9DHFsw5vkDLBk
	w2WsQx87P5oZkgg5lNjRmBQIQj/kz9kTQ3ShlPYWhve9VjpzwkmGDYBueggiD9Bi1g90ajOlNQGTV
	rAVjWggiZ4LNSt9eTa7HYeIXG03dKv0kTA6pMFRRZzypG6Sdd6wYW19A9AD01UaldMKzQmGxceXM1
	SBMbx7Q6TNtGoOgwCWzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8um-0008JD-3t; Mon, 13 May 2019 11:14:40 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8ue-0008IQ-H7
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:14:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6CFA374;
 Mon, 13 May 2019 04:14:31 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 92C9B3F703;
 Mon, 13 May 2019 04:14:29 -0700 (PDT)
Date: Mon, 13 May 2019 12:14:27 +0100
From: Will Deacon <will.deacon@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2] perf vendor events arm64: Add Cortex-A57 and
 Cortex-A72 events
Message-ID: <20190513111427.GC6711@fuggles.cambridge.arm.com>
References: <20190502234704.7663-1-f.fainelli@gmail.com>
 <5c04ebac-3e3c-fa53-d287-3a602a350091@huawei.com>
 <a8a3c429-307c-40fc-12b4-d62374bfda1d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8a3c429-307c-40fc-12b4-d62374bfda1d@gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_041432_574579_AFB3A486 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 "moderated list:ARM PMU PROFILING AND DEBUGGING"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 12:49:55PM -0700, Florian Fainelli wrote:
> On 5/6/19 12:25 AM, John Garry wrote:
> > On 03/05/2019 00:47, Florian Fainelli wrote:
> >> The Cortex-A57 and Cortex-A72 both support all ARMv8 recommended events
> >> up to the RC_ST_SPEC (0x91) event with the exception of:
> >>
> >> - L1D_CACHE_REFILL_INNER (0x44)
> >> - L1D_CACHE_REFILL_OUTER (0x45)
> >> - L1D_TLB_RD (0x4E)
> >> - L1D_TLB_WR (0x4F)
> >> - L2D_TLB_REFILL_RD (0x5C)
> >> - L2D_TLB_REFILL_WR (0x5D)
> >> - L2D_TLB_RD (0x5E)
> >> - L2D_TLB_WR (0x5F)
> >> - STREX_SPEC (0x6F)
> >>
> >> Create an appropriate JSON file for mapping those events and update the
> >> mapfile.csv for matching the Cortex-A57 and Cortex-A72 MIDR to that
> >> file.
> > 
> > I suppose you could have also created separate a72 and a57 folders, and
> > used a symbolic link for the json. That would have kept the folder
> > structure consistent and neat.
> 
> Will, Mark, any preference on that? Either way works fine.

I'd personally avoid committing symbolic links if possible, so I'm fine
with your patch as-is.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
