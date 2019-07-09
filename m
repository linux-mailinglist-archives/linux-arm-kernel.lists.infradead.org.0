Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D352E632A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 10:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+koN7sLCaDm2xkGy8ItFWdWu39ivwyGn0Rd9A4qWDjU=; b=YRCILT8wGvNxbY
	tFHq701ENcbKFApgfDXyzhaN90r2Zs1b3RinBOAIX1CYgZ/5q1tM4GcAuOhnLsjN+PS6J5EPMHGKf
	hgmRCbnVyBdTJYO2zSz1fdZMqCpySuaexoUOrgQHNzp+aFmgjrdUjqsh5ihbDXPaYAdfAZvsQ53lc
	OywjZhkQywQr7zQAZXbiULI6SRzYvl/96xUwRoQgU3pqFtw1UTcjyDkByMfwZ+i7+byXK7xasbVyH
	fmNnCUNSgNauPvFLL3I2/6vnjIr2zJnXCaIhth/CrjloByvmE5rf8UIY803CZGQ0q7TFDxuo9+9ps
	MlAaZTo+M2a1FE4ebSzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hklAb-0007ts-As; Tue, 09 Jul 2019 08:08:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hklAK-0007tY-W1
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 08:07:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 112E2216C4;
 Tue,  9 Jul 2019 08:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562659676;
 bh=DNUvEwIMLQXTZD5Y7EQdCgb2qw8MYQFBfgOVVb6NjT4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kmtOfnghaj1Mzr2LXNuXxUfNoz7LaSROB2zmH2/0rPSZJ+qpyVmBml/XTgtME+Be4
 GdxemR2q0+/UmrpTxDujV99zKURn6bqU4KtxogUGYqiTZSWeQqUBo4eZ/lsTgEqeeA
 xOFDCGIQhnPJ6T8PyjOShW6TYGHDLJIZtMOWS720=
Date: Tue, 9 Jul 2019 09:07:52 +0100
From: Will Deacon <will@kernel.org>
To: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>
Subject: Re: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Message-ID: <20190709080751.3nm2llg64g44hmwn@willie-the-truck>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
 <20190617170328.GJ30800@fuggles.cambridge.arm.com>
 <e8fe8faa-72ef-8185-1a9d-dc1bbe0ae15d@jp.fujitsu.com>
 <20190627102724.vif6zh6zfqktpmjx@willie-the-truck>
 <5999ed84-72d0-9d42-bf7d-b8d56eaa4d4a@jp.fujitsu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5999ed84-72d0-9d42-bf7d-b8d56eaa4d4a@jp.fujitsu.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_010757_070124_7D75BCBA 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "indou.takao@fujitsu.com" <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 02:45:43AM +0000, qi.fuli@fujitsu.com wrote:
> We used FWQ [1] to do an experiment on 1 node of our HPC environment,
> we expected it would be tens of microseconds of maximum OS jitter, but 
> it was
> hundreds of microseconds, which didn't meet our requirement. We tried to 
> find
> out the cause by using ftrace, but we cannot find any processes which would
> cause noise and only knew the extension of processing time. Then we 
> confirmed
> the CPU instruction count through CPU PMU, we also didn't find any changes.
> However, we found that with the increase of that the TLB flash was called,
> the noise was also increasing. Here we understood that the cause of this 
> issue
> is the implementation of Linux's TLB flush for arm64, especially use of 
> TLBI-is
> instruction which is a broadcast to all processor core on the system. 
> Therefore,
> we made this patch set to fix this issue. After testing for several 
> times, the
> noise was reduced and our original goal was achieved, so we do think 
> this patch
> makes sense.
> 
> As I mentioned, the OS jitter is a vital issue for large-scale HPC 
> environment.
> We tried a lot of things to reduce the OS jitter. One of them is task 
> separation
> between the CPUs which are used for computing and the CPUs which are 
> used for
> maintenance. All of the daemon processes and I/O interrupts are bounden 
> to the
> maintenance CPUs. Further more, we used nohz_full to avoid the noise 
> caused by
> computing CPU interruption, but all of the CPUs were affected by TLBI-is
> instruction, the task separation of CPUs didn't work. Therefore, we 
> would like
> to implement that TLB flush is done on minimal CPUs to reducing the OS 
> jitter
> by using this patch set.

So have you confirmed that this is due to TLBI traffic and not, for example,
stores sitting in remote store buffers that get flushed by the IPI or
something else like that? It feels like you're inferring things about the
underlying behaviour, whereas you should be in a position to simulate this
if nothing else.

If it *is* because of TLBI, then where are they coming from? Is FWQ calling
munmap/mprotect all the time? Why?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
