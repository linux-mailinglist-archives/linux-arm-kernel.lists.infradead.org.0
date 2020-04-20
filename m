Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1B21B0947
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IWsknLQvWEjhLneat7V9YlED2AGFq6wS9PYzGu5uXOY=; b=q1sQ3EgnzkRbpA
	BAhG7q0C2r9waWnOtC3SnDXuG1lSTGu/MWuZc2vhYmonj15Yb94VV1CsDb6/mAKnXfTTED1jU+4x5
	Dt5sTdhYezUYX10THU3KMS9PB472BmFHACBroBuBqkzQIAQa4rCITCM7A0OmOLUULyrOhoYQ/2M76
	/UyT4WRWFQiLIuI0UWsSMGn/HuTkEGaPWM92S/wUhwgnRrkvLlkMCtOSke5NgGonuhxKBr4D94cGN
	v+NMVlKtCADVGJuOR5m8cVerBEJqyy9w1YhXtBG8Af8MC1xmWI4WGLe/s0YAropBi9t/DlSSd6MLJ
	cxKpWwKtRZiDs+sHXTtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVT7-0001ch-3F; Mon, 20 Apr 2020 12:24:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVSv-0001bf-HQ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:23:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 782D1206D9;
 Mon, 20 Apr 2020 12:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587385436;
 bh=K0zF/6nWgKkJ9hIQ4iSVP9ZRM8xUkP5IdaMj7W1UFrI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HPQmN/+YKH1/wEe3gwWA7rpA+Y+IvG3pqAtV5ovFIioQl/PCiUQGoUBOWufyvRjQv
 TVS6z6yxpmQby3PWmCB7mVyUjeVNCWHfpulmfJbAvceidSEFWLj8288ZMT+i7Tr+A6
 oZ/IH5PpYiWKPNePjRsrpyDhLSbTA6B2yvybyNPs=
Date: Mon, 20 Apr 2020 13:23:51 +0100
From: Will Deacon <will@kernel.org>
To: Alex Belits <abelits@marvell.com>
Subject: Re: [EXT] Re: [PATCH v3 03/13] task_isolation: add instruction
 synchronization memory barrier
Message-ID: <20200420122350.GB12889@willie-the-truck>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
 <d995795c731d6ecceb36bdf1c1df3d72fefd023d.camel@marvell.com>
 <20200415124427.GB28304@C02TD0UTHF1T.local>
 <e4d2cda6f011e80a0d8e482b85bca1c57665fcfd.camel@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e4d2cda6f011e80a0d8e482b85bca1c57665fcfd.camel@marvell.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_052357_614725_5823D8B5 
X-CRM114-Status: GOOD (  25.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Prasun Kapoor <pkapoor@marvell.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 05:02:01AM +0000, Alex Belits wrote:
> On Wed, 2020-04-15 at 13:44 +0100, Mark Rutland wrote:
> > On Thu, Apr 09, 2020 at 03:17:40PM +0000, Alex Belits wrote:
> > > Some architectures implement memory synchronization instructions
> > > for
> > > instruction cache. Make a separate kind of barrier that calls them.
> > 
> > Modifying the instruction caches requries more than an ISB, and the
> > 'IMB' naming implies you're trying to order against memory accesses,
> > which isn't what ISB (generally) does.
> > 
> > What exactly do you want to use this for?
> 
> I guess, there should be different explanation and naming.
> 
> The intention is to have a separate barrier that causes cache
> synchronization event, for use in architecture-independent code. I am
> not sure, what exactly it should do to be implemented in architecture-
> independent manner, so it probably only makes sense along with a
> regular memory barrier.
> 
> The particular place where I had to use is the code that has to run
> after isolated task returns to the kernel. In the model that I propose
> for task isolation, remote context synchronization is skipped while
> task is in isolated in userspace (it doesn't run kernel, and kernel
> does not modify its userspace code, so it's harmless until entering the
> kernel).

> So it will skip the results of kick_all_cpus_sync() that was
> that was called from flush_icache_range() and other similar places.
> This means that once it's out of userspace, it should only run
> some "safe" kernel entry code, and then synchronize in some manner that
> avoids race conditions with possible IPIs intended for context
> synchronization that may happen at the same time. My next patch in the
> series uses it in that one place.
> 
> Synchronization will have to be implemented without a mandatory
> interrupt because it may be triggered locally, on the same CPU. On ARM,
> ISB is definitely necessary there, however I am not sure, how this
> should look like on x86 and other architectures. On ARM this probably
> still should be combined with a real memory barrier and cache
> synchronization, however I am not entirely sure about details. Would
> it make more sense to run DMB, IC and ISB? 

IIUC, we don't need to do anything on arm64 because taking an exception acts
as a context synchronization event, so I don't think you should try to
expose this as a new barrier macro. Instead, just make it a pre-requisite
that architectures need to ensure this behaviour when entering the kernel
from userspace if they are to select HAVE_ARCH_TASK_ISOLATION.

That way, it's /very/ similar to what we do for MEMBARRIER_SYNC_CORE, the
only real different being that that is concerned with return-to-user rather
than entry-from-user.

See Documentation/features/sched/membarrier-sync-core/arch-support.txt

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
