Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51209128337
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 21:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLh0ekNKVKJG+NgjSGR8J1TZslb+C6vP9f9LRYbPsMY=; b=NHmh4fgqE+rsHi
	0mLUi5qKcjFEq+g90Hd35k5t31MiULm7O0ATutW0lBh/YXxYfDP5OZ6zK9wa/03xvM87LlAZfa4If
	w8PI1HCbzw3Hd7voWDmCWsZc86f3wNvG7VjJShH21qYxwkphbsKNx9Yg6bsPDs3Jw0jY/L/jzqwGX
	p6kOJzCnbgWInEbsIA/dAFK/bIXhpVjH8frG8Lp5fjG1P3gyjOP7ToorW4BSy2bvN7bsUm2xIO3XP
	aUK6rCKTLVlW9qlLumFmC65relcMBhdJhJrh5P5CpNiA7tMaUNJPlKe14eQDi+Ig9d2YdlhIrtw+d
	SG9UWtokXu0irGhgEV8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiOoW-0006Zd-0O; Fri, 20 Dec 2019 20:23:56 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiOoO-0006ZS-Cg; Fri, 20 Dec 2019 20:23:48 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id F2FA33007F2;
 Fri, 20 Dec 2019 21:22:21 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 12A0C2024479A; Fri, 20 Dec 2019 21:23:46 +0100 (CET)
Date: Fri, 20 Dec 2019 21:23:46 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Message-ID: <20191220202346.GT2827@hirez.programming.kicks-ass.net>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
 <20191220140655.GN2827@hirez.programming.kicks-ass.net>
 <9be1d523-e92c-836b-b79d-37e880d092a0@arm.com>
 <CY4PR1201MB012011E554FC69F7B074B7E2A12D0@CY4PR1201MB0120.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CY4PR1201MB012011E554FC69F7B074B7E2A12D0@CY4PR1201MB0120.namprd12.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Will Deacon <will@kernel.org>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Tejun Heo <tj@kernel.org>, arcml <linux-snps-arc@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 07:32:16PM +0000, Alexey Brodkin wrote:

> Well it somehow used to work for quite some time now with the data-buffer
> being allocated with 4 words offset (which is 16 bytes for 32-bit platform

3 words, devres_node is 3 words.

Which is exactly why we had to change it, the odd alignment caused ARC
to explode.

> and 32 for 64-bit which is still much less than mentioned 128 bytes).
> Or we just never managed to identify those rare cases when data corruption
> really happened?

The races are rather rare methinks, you'd have to get a list-op
concurrently with a DMA.

If you get the list corrupted, I'm thinking the crash is fairly likely,
albeit really difficuly to debug.

> > No matter which way round you allocate devres and data, by necessity
> > they're always going to consume the same total amount of memory.
> 
> So then the next option I guess is to separate meta-data from data buffers
> completely. Are there any reasons to not do that

Dunno, should work just fine I think.

> other than the hack we're
> discussing here (meta-data in the beginning of the buffer) used to work OK-ish?

If meta-data at the beginngin used to work, I don't see why meta-data at
the end wouldn't work equally well. They'd be equally broken.

But I'm still flabbergasted at the fact that they're doing non-coherent
DMA to kmalloc memory, I thought we had a DMA api for that, with a
special allocator and everything (but what do I know, I've never used
that).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
