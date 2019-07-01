Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF662FB24
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 13:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Agu+i9qWdby5XylX3M//CjsoFYPWw5pz2qbqYmHIBL8=; b=GFtalbPwm1VkQg
	I8Mtfk416bkDWlm6edrPq/bnh05gU1XDt5JJBxS1I37Q5Z42m/3ght0YBUGnOM9J20TEu1KSYO2yx
	K4wALH6628u46gJWQn8DeU/XAWE5SCdofFCf6FBRe5UzWZjxeIAiGoI8k6iCupsKZvA8yc0mDXRFn
	nReQCSAG6nioUOZwRwcpKeaasGM/JyUNpEMqsulEQXci+2VpZpyl78ew/X3E6zv7n+Fe14LGo1Zy3
	JsvuMMcOJibgdCZhN3CgScnL2eOMheyRKtgkEpsVb+tavSrLEhz3BGcF0sIYTRKwS1YtpSHxHvKme
	8QIx/6eTKTewDDHcy87A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWJad-0005lQ-IW; Thu, 30 May 2019 11:51:23 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWJaX-0005kQ-Jo; Thu, 30 May 2019 11:51:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E85B9374;
 Thu, 30 May 2019 04:51:13 -0700 (PDT)
Received: from e105550-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A814B3F5AF;
 Thu, 30 May 2019 04:51:09 -0700 (PDT)
Date: Thu, 30 May 2019 12:51:03 +0100
From: Morten Rasmussen <morten.rasmussen@arm.com>
To: "Andrew F. Davis" <afd@ti.com>
Subject: Re: [PATCH v6 1/7] Documentation: DT: arm: add support for sockets
 defining package boundaries
Message-ID: <20190530115103.GA10919@e105550-lin.cambridge.arm.com>
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <20190529211340.17087-2-atish.patra@wdc.com>
 <49f41e62-5354-a674-d95f-5f63851a0ca6@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49f41e62-5354-a674-d95f-5f63851a0ca6@ti.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_045117_656703_D116953D 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Rob Herring <robh@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 07:39:17PM -0400, Andrew F. Davis wrote:
> On 5/29/19 5:13 PM, Atish Patra wrote:
> >From: Sudeep Holla <sudeep.holla@arm.com>
> >
> >The current ARM DT topology description provides the operating system
> >with a topological view of the system that is based on leaf nodes
> >representing either cores or threads (in an SMT system) and a
> >hierarchical set of cluster nodes that creates a hierarchical topology
> >view of how those cores and threads are grouped.
> >
> >However this hierarchical representation of clusters does not allow to
> >describe what topology level actually represents the physical package or
> >the socket boundary, which is a key piece of information to be used by
> >an operating system to optimize resource allocation and scheduling.
> >
> 
> Are physical package descriptions really needed? What does "socket" imply
> that a higher layer "cluster" node grouping does not? It doesn't imply a
> different NUMA distance and the definition of "socket" is already not well
> defined, is a dual chiplet processor not just a fancy dual "socket" or are
> dual "sockets" on a server board "slotket" card, will we need new names for
> those too..

Socket (or package) just implies what you suggest, a grouping of CPUs
based on the physical socket (or package). Some resources might be
associated with packages and more importantly socket information is
exposed to user-space. At the moment clusters are being exposed to
user-space as sockets which is less than ideal for some topologies.

At the moment user-space is only told about hw threads, cores, and
sockets. In the very near future it is going to be told about dies too
(look for Len Brown's multi-die patch set).

I don't see how we can provide correct information to user-space based
on the current information in DT. I'm not convinced it was a good idea
to expose this information to user-space to begin with but that is
another discussion.

Morten

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
