Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82E85BA82
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 13:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLkMZewYHHGDEY3rwj9SN1Ag/JEgaqSzOv0D/OBFpVM=; b=JmAu1SkRx6x87n
	BHK9bt0P3hVjxjwI/kL7Lqpu2Zm1vxh5YhppEuD4fu2a+IermcbmavlMYhNCNj0JMoSuqsj6I9FR6
	l+n2C4fIaZwpcHA1NDJ4/Xb9oi3piw27TEG6fDEDPyQvfju+KTlgb63yfVIODqEp+jNHPFAcJDpa1
	+vKcwSsl/u7f5f+kd3G4PTIXHo0bakMnwT+EqacIHe/PrTo+Mr9kM/jNybTLl96fL8qpcguYCs6dp
	zHxl6kN+3nbASh5/ZDBtdHETfvumq6MjnN8vdtz8NeJVi2pcJutFl73qfVx0ODCk/x1ZvBBwqMQao
	58nDMGp2q/c0be/Ng9Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhuOf-0004Xu-FW; Mon, 01 Jul 2019 11:22:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhuOX-0004XQ-AC
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 11:22:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 902AA344;
 Mon,  1 Jul 2019 04:22:47 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5FC13F246;
 Mon,  1 Jul 2019 04:22:46 -0700 (PDT)
Date: Mon, 1 Jul 2019 12:22:44 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 3/3] arm64: stacktrace: better handle corrupted stacks
Message-ID: <20190701112244.GD10975@lakrids.cambridge.arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
 <20190606125402.10229-4-mark.rutland@arm.com>
 <0ae84e0e-426a-2cea-a665-39e56f03a9f6@arm.com>
 <20190628111501.GK2790@e103592.cambridge.arm.com>
 <20190628130255.GJ36437@lakrids.cambridge.arm.com>
 <20190701104819.GL2790@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701104819.GL2790@e103592.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_042249_395310_5685ED2D 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: will.deacon@arm.com, catalin.marinas@arm.com, tengfeif@codeaurora.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 11:48:21AM +0100, Dave Martin wrote:
> On Fri, Jun 28, 2019 at 02:02:55PM +0100, Mark Rutland wrote:
> > The problem is that we unwind one frame, then check the fp of that
> > frame.
> > 
> > Say we have three stack frames, A->B->C, where A and B are on the IRQ
> > stack, and C is on the task stack.
> > 
> > At entry to unwind_frame(), frame describes A, and frame->fp points at
> > B. Thus frame->stack_current == info.type, and changed_stack == false.
> > 
> > Then we sample B:
> > 
> > 	frame->fp = READ_ONCE(fp); // points at C on the task tasck
> > 
> > Then we do:
> > 
> > 	if (!changed_stack && frame->fp <= fp)
> > 
> > ... where changed_stack describes the A->B transition (false), but
> > frame->fp <= fp is the B->C transition, and B and C are on different
> > stacks!
> 
> OK, if I've understood that right, it looks like frame->stack_current
> describes where the contents of frame were fetched from, not the frame
> at frame->fp.
> 
> This is actually pretty confusing: the frame stack_current refers to is
> already history: we have no pointer to it any more anyway.
> 
> I wonder whether this can be refactored so that stack_current doesn't
> lag behind: say, call it fp_stack (the stack frame->fp points at).
> 
> That's just one option though.  I'll take a look at the repost.

For v2 I added prev_fp, and renamed stack_current to prev_type.

We need the prev_fp so that we can do the intra-stack monotonicity
check. We can derive prev_type from prev_fp, but it was simpler to store
prev_type than to recalculate it.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
