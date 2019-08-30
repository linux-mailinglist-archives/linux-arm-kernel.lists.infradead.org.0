Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8226EA36EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4X414Z8pInuX1giWeHm2iDkak81wUsu7pOODc1sYpw=; b=FQ6S+BEP18fUDx
	Y67Us/qkc2atFzYZAV0Zzd0ayh5z5emTZB0G0kz7tinXVt2wT7Cx9lADNZQYbul40/9uAH+yT68Fu
	P4y/sGJQGmtmrnEbmoJ14n90gyczGJ/aJepbxuSoCFJ1OQWwpmbqUaGxaN384lTpcwfT1JK9wLLGu
	FuKZhccMwtN55OK3QP3lUMQlHBHN4n+19TsNzEK3SIoWJAWZCEUR94q3/Es1AYvEQe94fBhOPV+/3
	rq+13c/Dsr87Jp8nDomqRCEyCrnNhzl8Y8NFgaATJMm5KteMuKs1TaTzHNmK0DrexCPJf+z8zdLwC
	OTVcXkMCW4ZP4h/a9+xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gD3-0000xH-90; Fri, 30 Aug 2019 12:40:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gCM-0000w0-2Z
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:40:16 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB08C21721;
 Fri, 30 Aug 2019 12:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567168812;
 bh=lLptPwKn0tTJaFJErmpbfjiivzsXJmC7RMXED4vz13Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nagIpY953/BMv+Q4pPCwalOrZwg2N0AQz1dWVippIw+R6rAQ2eDXJXYq4V049z/HZ
 jTGBofj789Sr56WgH2FP0VG5ViBN2dF52aabX3N/QGIMc6aQkuPWnRck2V9F6kJJeI
 IzerRXSCcK8thqGz3M6ltuOef57hyxM8wGgeV1dU=
Date: Fri, 30 Aug 2019 13:40:07 +0100
From: Will Deacon <will@kernel.org>
To: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 0/6] Fix TLB invalidation on arm64
Message-ID: <20190830124007.z6f2qjujzluntrwb@willie-the-truck>
References: <20190827131818.14724-1-will@kernel.org>
 <1566947104.2uma6s0pl1.astroid@bobo.none>
 <20190828161256.uevoohval4sko24m@willie-the-truck>
 <1567085427.12jzc6eq6j.astroid@bobo.none>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567085427.12jzc6eq6j.astroid@bobo.none>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_054015_203995_81C46835 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 12:08:52AM +1000, Nicholas Piggin wrote:
> Will Deacon's on August 29, 2019 2:12 am:
> > On Wed, Aug 28, 2019 at 10:35:24AM +1000, Nicholas Piggin wrote:
> >> From the other side of the fabric you have no such problem. The table
> >> walker is cache coherent apart from the local stores, so we don't need a 
> >> special barrier on the other side. That's why ptesync doesn't broadcast.
> > 
> > Curious: but do you need to do anything extra to take into account
> > instruction fetch on remote CPUs if you're mapping an executable page?
> > We added an IPI to flush_icache_range() in 3b8c9f1cdfc5 to handle this,
> > because our broadcast I-cache maintenance doesn't force a pipeline flush
> > for remote CPUs (and may even execute as a NOP on recent cores).
> 
> Ah, I think the tlbie does not force re-fetch indeed. We may need
> something like that as well.
> 
> What do you do on the user side? Require threads to ISB themselves?

I think they'd probably have to use sys_membarrier() with
MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE, yes.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
