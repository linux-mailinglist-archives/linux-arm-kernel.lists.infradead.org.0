Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FA05B8E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:20:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ub44UtZ0GS20fTGfZGyus3imQ92h0WLFUIfpr8VndIs=; b=PuVvt+C1vJYXtq
	r7LVsT9rHeFrkid6CkWDaPKsUDrY61m0tze2ZUzYpphFTffkGcMk5l4Wphmt4j3Th4uSWQYdRgHiL
	NfkkHz+UpgxzJKbKMpDOliPMQWfviHajaDyMYR4N+SAb5vwWCisfyZwT8IqoOd9mYqt/JEFCfTdq0
	6O8DwjnDI1KEAm6iXQ91Rp4NI6oV7asSy8TbmLjbgVFcEg6UigXHHVZWikfsv0xdbrWesOTpQCBDU
	sel3CggtH1nh5+Neujx5IlxYkAEASaANomiBO5riGPhE6lXkb7DKMskpC5A/oabfF8BGiIvvZNKd/
	gATyPeSSKFd/aM62JUOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtQX-0005F2-ET; Mon, 01 Jul 2019 10:20:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtQM-0005EK-Vi
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:20:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E12B344;
 Mon,  1 Jul 2019 03:20:36 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 997E83F703;
 Mon,  1 Jul 2019 03:20:35 -0700 (PDT)
Date: Mon, 1 Jul 2019 11:20:33 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCHv2 0/3] arm64: stacktrace: improve robustness
Message-ID: <20190701102033.GC10975@lakrids.cambridge.arm.com>
References: <20190628154639.5308-1-mark.rutland@arm.com>
 <20190701082940.dkzuvxkmwhevxekr@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701082940.dkzuvxkmwhevxekr@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_032039_067723_EE3CFD08 
X-CRM114-Status: GOOD (  19.79  )
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
Cc: tengfeif@codeaurora.org, catalin.marinas@arm.com, will.deacon@arm.com,
 james.morse@arm.com, dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 09:29:41AM +0100, Will Deacon wrote:
> On Fri, Jun 28, 2019 at 04:46:36PM +0100, Mark Rutland wrote:
> > The arm64 stacktrace code is careful to only access valid stack
> > locations, but in the presence of a corrupted stack where frame records
> > form a loop, it will never terminate.
> > 
> > This series updates the stacktrace code to terminate in finite time even
> > when a stack is corrupted. A stacktrace will be terminated if the next
> > record is at a lower (or equal) address on the current stack, or when
> > the next record is on a stack we've already completed unwinding.
> > 
> > The first couple of patches come from Dave's prior attempt to fix this
> > [1], with the final patch relying on infrastructure which has been
> > introduced in the mean time.
> > 
> > I've given this a quick spin with magic-sysrq L in a KVM guest, and
> > things look fine, but further testing would be appreciated.
> > 
> > This series (based on v5.2-rc1) can also be found in my
> > arm64/robust-stracktrace branch on kernel.org [2].
> > 
> > Since v1 [3]:
> > * Use start_backtrace() consistently
> > * Don't use tsk in start_backtrace()
> > * Track the previous FP and type explicitly
> 
> Given that you had to draw a diagram to figure this out, please could you
> include something along those lines in the code as well? I worry that this
> will just regress otherwise.

I'll see what I can do, though I may just use words rather than ASCII
art -- the key point is that we should only account one transition, from
the stackframe we're passed to the stackframe it points to.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
