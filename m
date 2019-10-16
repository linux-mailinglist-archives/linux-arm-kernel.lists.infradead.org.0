Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8378CD9617
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFEMeVEILJN9to4x9Ub0Zd2Nj1VtpLW8kaifChu8Q4w=; b=KSm8pKcrA2Z0bc
	JLCuaJifhmRRbMI7WZTHfT0s4+A9eypohGYSeE1fX7fPnqQlKyHIQvFMXF2IaLG4hNBxcLBvJ18fe
	LIl1I6U+wtGvD2V7fz+BReDtDmTrIemOoONvphj86Fsi87hB6YutXuDVRxow4AELhWOWAbHDd7dMW
	Ni+VEickh6sIVa9WcaVHCraB0xvbNyGktyzTprclAyC8X2YkULOkPeAliT16IYUNh1bMHXTbfGRRX
	ph5TObGWXdPSMlbkfwLNVB+y8InuuSDwr5bMpm+0pEdKybE2YIcPouXk7G8eIb5kslkxR+4mBMkFP
	aPMAQq9UL4Two6V12YnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlgj-00037p-DG; Wed, 16 Oct 2019 15:58:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlgX-00036V-8A
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:58:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F057218DE;
 Wed, 16 Oct 2019 15:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571241480;
 bh=2KDajtmsOQ9ZhrPnF3/qJNfmmEQl/1oJJZzBoIjepVU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rs1DTGANbNwfeu+WkDheyuVUuRSOeNj596MtHf333HaZ7jaBpjdgWs3mSyts0uan6
 smRfaFQHUJeKpOOp2kX74kBFq0oGkmG9aXvGlWbCrdjcJBO3KCYL279Dk3CIt6Go74
 +ej6nrjg4tNFI8ahBHveBFOt6ltZpFtOa7qeeKAQ=
Date: Wed, 16 Oct 2019 16:57:56 +0100
From: Will Deacon <will@kernel.org>
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
Subject: Re: [RFC PATCH 0/6 v2] Queued spinlocks/RW-locks for ARM
Message-ID: <20191016155755.66ges3ybn3awx45l@willie-the-truck>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191013221310.30748-1-sebastian@breakpoint.cc>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_085801_304512_8231BE42 
X-CRM114-Status: GOOD (  15.57  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Waiman Long <longman@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sebastian,

On Mon, Oct 14, 2019 at 12:13:04AM +0200, Sebastian Andrzej Siewior wrote:
> I added support for queued-RW and -spinlocks for ARM. I followed Arnd's
> suggestion and added support for xchg() on 8bit and 16bit variables (V6
> CPUs) via the SH implementation. This makes it possible to remove the
> current ticket based locking implementation. 
> 
> The numbers should be the same as in v1 posted here:
>    http://lkml.kernel.org/r/20191007214439.27891-1-sebastian@breakpoint.cc
> 
> The only thing changed is that patch #1-#3 wire up the missing xchg and
> the patches #4 and #5 additionally remove the old implementation while
> adding the missing bits for the queued implementation.

To be honest with you, I'm surprised that qspinlock is worth it for 32-bit
Arm. qrwlock makes sense because of fairness and starvation issues, but in
my benchmarks on arm64 tickets tended to perform at least as well for small
core counts, and I think that's largely going to be true for systems
running a 32-bit kernel.

I've uploaded my (crude, was never meant to be shared!) benchmark harness
here:

  https://mirrors.edge.kernel.org/pub/linux/kernel/people/will/spinbench

which I used to generate graphs like:

  https://mirrors.edge.kernel.org/pub/linux/kernel/people/will/slides/arm64-spinlocks.pdf

Maybe you could port it to 32-bit and see what the numbers look like? The
qspinlock code probably needs re-syncing with mainline too, but see how you
go. If it ends up being useful maybe I'll host it in a git tree.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
