Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD5FEE190
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fx9nlO4AG6QMg6Bal/bx9vmPiatykYVDKJP+/xCEnok=; b=inBk+/WOaCZFZm
	H5gFPqfdgYpvftZeD9ztuKyVXGR0u9/WNgx9N8abIq+NnB091U7tS0YBsheDNBC6uUK6WuaRvun4n
	WgY5LwMdX8/Wg6ks4ZejbK67cobIpKH15FjvG3Jr2yr5m95NQSsLD9bKCBN+AWXHMSjSOyFpLoCAw
	SdHtBWqe6kLuqM42h/R9bRxMga2fdTzZ0qFNS3cVMNc9xwS+nTb4WGBRJCyqzPniRwGnkUabWiAmp
	IZ8QKOqON4EHPhDm8Mo/9MKN8dgz1UXmGCC1YncTiv5vK72A+JdQAqLXQ9Rgqz/GnRMoXldFJIzub
	L6xjjG77S6dsA72Eq/yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcmA-0001GC-22; Mon, 04 Nov 2019 13:52:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcm3-0001FH-9g
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:52:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C5F171FB;
 Mon,  4 Nov 2019 05:52:00 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 739A93F6C4;
 Mon,  4 Nov 2019 05:51:58 -0800 (PST)
Date: Mon, 4 Nov 2019 13:51:56 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCHv2 7/8] arm64: implement ftrace with regs
Message-ID: <20191104135155.GG45140@lakrids.cambridge.arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-8-mark.rutland@arm.com>
 <8132dc13-9fbd-24e2-8a5e-28b005043c3e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8132dc13-9fbd-24e2-8a5e-28b005043c3e@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_055203_379621_F3D7EB6B 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 Torsten Duwe <duwe@lst.de>, svens@stackframe.org, duwe@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 02, 2019 at 05:51:46PM +0530, Amit Daniel Kachhap wrote:
> On 10/29/19 10:28 PM, Mark Rutland wrote:
> > +/*
> > + * Due to -fpatchable-function-entry=2, the compiler has placed two NOPs before
> > + * the regular function prologue. For an enabled callsite, ftrace_init_nop() and
> > + * ftrace_make_call() have patched those NOPs to:
> > + *
> > + * 	MOV	X9, LR
> > + * 	BL	<entry>
> > + *
> > + * ... where <entry> is either ftrace_caller or ftrace_regs_caller.
> > + *
> > + * Each instrumented function follows the AAPCS, so here x0-x8 and x19-x30 are
> > + * live, and x9-x18 are safe to clobber.
> > + *
> > + * We save the callsite's context into a pt_regs before invoking and ftrace

> s/invoking and ftrace callbacks/invoking the ftrace callbacks

Whoops, that was meant to be 'any'. I've fixed that up locally.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
