Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 350495286A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1T/5PPf95EbmSmEw6pvkXlSF0Rl7VLtBbbLmwdpz92w=; b=n6yrzspNTSZyaI
	4IRqwOX3R8mR0wco3MU7XpS7JWZhRHvBpviGZ5cb0BPOW+35Yx2PrxJ48x7qzUloOYg4qf2KRe6ge
	JQXzV5JecA35SuZM19U86hSmWXGBMQQ8Bkj368h/kVirHxgjBLAa/J06yxNNXKMQI3VQG4Uxo6R4L
	M2fQSMvNy3ir8VPL1WA96x51w/hevElKv3RtKDAdx1JnNwW8/OxKvXyVPM3MF6lfssY2b1PgCD+Zu
	zinfmPLi92ZLjCs8YCmgoh+VyjJWjR8ZmP00v0/2xz2mVMDG+KPsXZpAkaJf3QZ8jouRwAaSEWg6i
	XecAwGLZFmDsf4FQl5Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfi0O-0000Eq-Ia; Tue, 25 Jun 2019 09:44:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhxb-00078r-CY
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:41:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 93167360;
 Tue, 25 Jun 2019 02:41:54 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 538973F71E;
 Tue, 25 Jun 2019 02:41:53 -0700 (PDT)
Date: Tue, 25 Jun 2019 10:41:51 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [RFC PATCH v2 7/8] arm64/sve: Don't disable SVE on syscalls return
Message-ID: <20190625094150.GY2790@e103592.cambridge.arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-8-julien.grall@arm.com>
 <20190621153316.GC2790@e103592.cambridge.arm.com>
 <54e5e484-0268-0593-e5e7-16d7451cc849@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54e5e484-0268-0593-e5e7-16d7451cc849@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_024155_926391_1D070998 
X-CRM114-Status: GOOD (  16.24  )
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 05:44:53PM +0100, Julien Grall wrote:
> Hi Dave,
> 
> I will answer the rest of the e-mail separately.
> 
> On 6/21/19 4:33 PM, Dave Martin wrote:
> >On Thu, Jun 13, 2019 at 05:16:55PM +0100, Julien Grall wrote:
> >>+	 * state on context switch. The bit will be set again while
> >>+	 * restoring/zeroing the registers.
> >>  	 */
> >>-	sve_user_disable();
> >>+	if (test_and_clear_thread_flag(TIF_SVE))
> >>+		set_thread_flag(TIF_SVE_NEEDS_FLUSH);
> >
> >Do we need to do this under local_bh_disable()?  Does it matter?
> >
> >It looks to me like this is called when we still have interrupts
> >disabled, which is probably worth fixing.  This may actually be a bug:
> >if kzalloc() causes us to sleep, we have the potential to trigger
> >sleeping-while-atomic splats.
> 
> I am not sure to understand this. Which kzalloc do you refer to? Is it the
> one in sve_alloc?
> 
> >
> >If you agree that's a bug, try to come up with a preliminary patch
> >that's suitable for stable.
> >
> >(I may have just misunderstood / misremembered something here.)
> 
> Cheers,

It looks like I completely confused myself here.

For some reason I though this was part of the do_sve_acc() path, which
is nonsense.  So please ignore that comment!

do_sve_acc() is indeed called with interrupts enabled.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
