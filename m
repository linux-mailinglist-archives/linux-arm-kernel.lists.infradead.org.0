Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E50A6130FF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boF/0tTnLEE3f2KwpvgY2S9ffIbBaMgbct3YxNpHZ3A=; b=Hw3esmZNBMRLgG
	cIZUmNMiSf22MaT74j6aP/XUoR0R55H7VUcKPRHUdVTy/ZumIMSHrUPxffc2BVGDAQ3vvG15BinZH
	HXU6pmOnFpZ/yPKi9IJelOMBtuX7aKaEBe9LDuunTbEF0btM29iuAQTGOavy7RvAcGFmNnfbLtUqR
	PCTrPtlmFm1RTQahZ/cw7nEsIwkNIWB7Ysjnmq0MW6ajrjiNBjUSeGz8rHahuLyk4UIzW09D9zNE7
	bwtVNk5O+eDhais+Q+QWqfznzJNP+V98uR9oQDCofnCGOIDx9/9SDVIVt2IuRml8oj3tlftx0gIJM
	+OuT/WrB3RoHzZPCr9/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPG7-0007NA-Pn; Mon, 06 Jan 2020 10:05:15 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPFw-00071l-Qd; Mon, 06 Jan 2020 10:05:04 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id F19B5306368;
 Mon,  6 Jan 2020 11:03:29 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id DAF302B627477; Mon,  6 Jan 2020 11:05:01 +0100 (CET)
Date: Mon, 6 Jan 2020 11:05:01 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Message-ID: <20200106100501.GM2844@hirez.programming.kicks-ass.net>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
 <20191220140655.GN2827@hirez.programming.kicks-ass.net>
 <9be1d523-e92c-836b-b79d-37e880d092a0@arm.com>
 <20191220171359.GP2827@hirez.programming.kicks-ass.net>
 <b2e0e322-a4e7-af26-d64a-1ba226e48476@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2e0e322-a4e7-af26-d64a-1ba226e48476@arm.com>
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
Cc: Alexey Brodkin <alexey.brodkin@synopsys.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Tejun Heo <tj@kernel.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 10:02:13PM +0000, Robin Murphy wrote:
> There is also the streaming API for one-off transfers
> of data already existing at a given kernel address (think network packets,
> USB URBs, etc), which on non-coherent architectures is achieved with
> explicit cache maintenance plus an API contract that buffers must not be
> explicitly accessed by CPUs for the duration of the mapping. Addresses from
> kmalloc() are explicitly valid for dma_map_single() (and indeed are about
> the only thing you'd ever reasonably feed it), which is the primary reason
> why ARCH_KMALLOC_MINALIGN gets so big on architectures which can be
> non-coherent and also suffer from creative cache designs.

Would it make sense to extend KASAN (or something) to detect violations
of this 'promise'? Because most obvious this was broken for the longest
time and was only accidentally fixed due to the ARC alignment thingy.
Who knows how many other sites are subtly broken too.

Have the dma_{,un}map_single() things mark the memory as
uninitialized/unaccessible such that any concurrent access will trigger
a splat.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
