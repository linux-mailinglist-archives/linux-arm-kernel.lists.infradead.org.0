Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BD41B2015
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 09:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ci2/0lZZKJgn0xib3Qoj0pn80uQYEkJp9UyhHFnKH2s=; b=NklFy1CJk3womb
	QlLFLAyuA4F2NV6n55hhmP2uY22pOYQEChjqXPc4y4yOj7AzxdAmGFrJG0ks6xP1MX+2+igAfQOgT
	c9pWSSxuEUr4gHGEhNnKDxvSzhB1/bo4U2Iy0A6QD5fvXaHMse+BgIH534eudlxMKVD3s6qG7qnvj
	f6oB61HVAOFG8Ufc5/+Rsbi1oaPkfQ1DW8iFcrOhv4wdeeXCOw1K/UGcv9xvbrzW8a8DRGe0tNGIt
	SXMaaveO4tvChGA3sW4ILaPac7FxJAyeKcd3iLcVL5FRCqfCWNlOLiageS/AmnFKVqB/6TSsiOjuY
	gWYkUsm3wXpV5dox2bEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnWx-0001hN-Qt; Tue, 21 Apr 2020 07:41:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnWm-0001gA-7v
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 07:41:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 765932084D;
 Tue, 21 Apr 2020 07:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587454867;
 bh=Nbpcjvf4OfQ6/2rbNcF4XSAXJpyKzoe6+kQqdiYXyL8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ux6xM77N6e3zjcMhKqKkdPDzL8BNNWgNngXIeQat43yqC0nlQLUhfbDvC0IRskK4a
 lzXX4ZT/0h9u4DpM21iqQivITIIy8PZvfZnm9XI2slLBPWpJY6DkcnyZ0ZnL+Yq49u
 drScS8rGC++743FnPenRISkU6YuS2/Gft9+GbSfU=
Date: Tue, 21 Apr 2020 08:41:02 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [EXT] Re: [PATCH v3 03/13] task_isolation: add instruction
 synchronization memory barrier
Message-ID: <20200421074101.GA15021@willie-the-truck>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
 <d995795c731d6ecceb36bdf1c1df3d72fefd023d.camel@marvell.com>
 <20200415124427.GB28304@C02TD0UTHF1T.local>
 <e4d2cda6f011e80a0d8e482b85bca1c57665fcfd.camel@marvell.com>
 <20200420122350.GB12889@willie-the-truck>
 <20200420123628.GB69441@C02TD0UTHF1T.local>
 <20200420135523.GA18711@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420135523.GA18711@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_004108_330782_723616D9 
X-CRM114-Status: GOOD (  21.02  )
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Alex Belits <abelits@marvell.com>, "frederic@kernel.org" <frederic@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 Prasun Kapoor <pkapoor@marvell.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 02:55:23PM +0100, Will Deacon wrote:
> On Mon, Apr 20, 2020 at 01:36:28PM +0100, Mark Rutland wrote:
> > On Mon, Apr 20, 2020 at 01:23:51PM +0100, Will Deacon wrote:
> > > IIUC, we don't need to do anything on arm64 because taking an exception acts
> > > as a context synchronization event, so I don't think you should try to
> > > expose this as a new barrier macro. Instead, just make it a pre-requisite
> > > that architectures need to ensure this behaviour when entering the kernel
> > > from userspace if they are to select HAVE_ARCH_TASK_ISOLATION.
> > 
> > The CSE from the exception isn't sufficient here, because it needs to
> > occur after the CPU has re-registered to receive IPIs for
> > kick_all_cpus_sync(). Otherwise there's a window between taking the
> > exception and re-registering where a necessary context synchronization
> > event can be missed. e.g.
> > 
> > CPU A				CPU B
> > [ Modifies some code ]		
> > 				[ enters exception ]
> > [ D cache maintenance ]
> > [ I cache maintenance ]
> > [ IPI ]				// IPI not taken
> >   ...				[ register for IPI ] 
> > [ IPI completes ] 
> > 				[ execute stale code here ]
> 
> Thanks.
> 
> > However, I think 'IMB' is far too generic, and we should have an arch
> > hook specific to task isolation, as it's far less likely to be abused as
> > IMB will.
> 
> What guarantees we don't run any unsynchronised module code between
> exception entry and registering for the IPI? It seems like we'd want that
> code to run as early as possible, e.g. as part of
> task_isolation_user_exit() but that doesn't seem to be what's happening.

Sorry, I guess that's more a question for Alex.

Alex -- do you think we could move the "register for IPI" step earlier
so that it's easier to reason about the code that runs in the dead zone
during exception entry?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
