Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF7A17F564
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:52:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yj3co/bqpT+jkXxngOmDWkLnWeeVsOsz5b1vbqlt2xA=; b=KZKDsFNP5cXjR4
	7Yvmo+c6R6XFI3x6YtSym2rWFEW9jDoVRoDAFVLRbhxDDTEhFvaic1NUrh4CRzVq5z4SMXFMJgCMn
	w46rkckpyTWn5TkZnF7bNsuUQkEzjkC7h/VxS5XIx59dA/yyu+GYwqAyMjsi7j851lhG51GUqCYo9
	Ilntj9aU834cS2GHHyhQplEtkAW9df2hJ2TL0b/PbhMvx70dfvRpSXoszp7MSLRFOQ5ECpeBpePX+
	NxL8klPNd5en9s6m6BEgg3x7Fk94ZqitO3BtFj3lKzAbmkhoQ3s8Aa4OvOl+ucmN77fQ9Pjdtmn4s
	0lYjKFheZm+d5olT93wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBcUX-0004zI-Td; Tue, 10 Mar 2020 10:52:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBcUP-0004ys-W1
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 10:51:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8E9430E;
 Tue, 10 Mar 2020 03:51:54 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 14D213F67D;
 Tue, 10 Mar 2020 03:51:53 -0700 (PDT)
Date: Tue, 10 Mar 2020 10:51:52 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: James Morse <james.morse@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: entry: unmask IRQ in el0_sp()
Message-ID: <20200310105151.GB48640@lakrids.cambridge.arm.com>
References: <20200228145942.10675-1-mark.rutland@arm.com>
 <2680f3b0-a457-ba9f-322c-2c6e9f079e87@arm.com>
 <20200228160809.GK36089@lakrids.cambridge.arm.com>
 <20200305203021.GA29446@willie-the-truck>
 <2147529b-ff22-3b63-ae9c-6a97754dd7eb@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2147529b-ff22-3b63-ae9c-6a97754dd7eb@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_035158_075127_31D3A0E5 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 04:04:58PM +0000, James Morse wrote:
> Hi Mark, Will,
> 
> On 05/03/2020 20:30, Will Deacon wrote:
> > On Fri, Feb 28, 2020 at 04:08:09PM +0000, Mark Rutland wrote:
> >> On Fri, Feb 28, 2020 at 03:37:46PM +0000, James Morse wrote:
> >>> On 28/02/2020 14:59, Mark Rutland wrote:
> >>>> Let's do so now, and make it interruptible as with most other
> >>>> synchronous exception handlers.
> >>>
> >>> I think you want:
> >>> Fixes: bfe298745afc9548 ("arm64: entry-common: don't touch daif before bp-hardening")
> >>>
> >>> on this as, bfe298745afc9548 changed the behaviour: local_daif_restore(DAIF_PROCCTX) was
> >>> called before arm64_notify_die(), now its not.
> >>>
> >>> With that,
> >>> Reviewed-by: James Morse <james.morse@arm.com>
> >>
> >> Ah; I missed that subtlety.
> >>
> >> I assume that Catalin can fold those in when applying. Otherwise I'll
> >> add them for a v2.
> > 
> > If you want v2 to go in as a fix, please can you explain why this is a
> > problem (beyond disabling interrupts for longer than necessary) in the
> > commit message?
> 
> Good news, its not broken. I wrongly-assumed calling arm64_notify_die() and then
> force_sig_fault() with both IRQ-unmasked and IRQ-masked would lead to problems, but the
> guts of force_sig_fault() is all wrapped in spin_lock_irqsave().

Thanks for delving into that.

Catalin, are you happy to queue the patch for v5.7 with James' R-b (but
not the Fixes tag), and/or would you like me to send a v2 with that?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
