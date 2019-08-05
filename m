Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1278173A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJ6C954qEBH8wfhJ1TNYUwTdy9dsYKD09WlG8/EG/eU=; b=rWbe3JVa+AlrJ0
	MeH5EXP8xolMEmrLpqqlhJ2uOozA16T/Eed8Jh/A0UQpy0rQRW8VO7vLILVpeP/7qE9K3gKaI3Fv/
	BgsEJMkzIMfawcpKllUy4OoAmlYomZuYR0lsVzct4FR+UEK4GAbCUwpklLjrCaDpDivLzwgEGReHd
	6TthI7H3lehbleW3Wc7YD/7KDExhSPvo+nOyMBwnDclupVyokgSqaL5plBjO34jrrJFinjxsOiRf7
	2MO7ea2clrbK8F/EvN9T3exxZsYzYW204lh33Shy9Me4VY+UxMz5y3K6UH7bSE786DrofVeqVPCIl
	uaAmLtt1eYxRUa1CnZTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaOf-0005zs-Mr; Mon, 05 Aug 2019 10:39:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huaOU-0005zY-1k
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:39:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8FD1344;
 Mon,  5 Aug 2019 03:39:08 -0700 (PDT)
Received: from iMac.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F7453F694;
 Mon,  5 Aug 2019 03:39:07 -0700 (PDT)
Date: Mon, 5 Aug 2019 11:39:05 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: io: Relax implicit barriers in default I/O
 accessors
Message-ID: <20190805103905.GC59981@iMac.local>
References: <20190729170518.14271-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729170518.14271-1-will@kernel.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_033910_135919_CAC207C6 
X-CRM114-Status: GOOD (  18.67  )
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
Cc: Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 06:05:18PM +0100, Will Deacon wrote:
> As a concrete example, consider the following:
> 
> 	memcpy(dma_buffer, data, bufsz);
> 	writel(DMA_START, dev->ctrl_reg);
> 
> A DMB ST instruction between the final write to the DMA buffer and the
> write to the control register will ensure that the writes to the DMA
> buffer are observed before the write to the control register by all
> observers. Put another way, if an observer can see the write to the
> control register, it can also see the writes to memory.

I think one of the counter arguments here were that a device does not
"observe" the write to the control register as that's not a master
access (by the device). Do you mean that if another CPU (not the device)
can observe the writel(), it would have also observed the write to the
DMA buffer (assuming the DMB)? Since the device is also an observer of
the DMA buffer accesses, the multi-copy atomicity ensures that the
device is also seeing the buffer updates following a DMB.

If I got this right, I'm fine with the patch ;).

> This has always
> been the case and is not sufficient to provide the ordering required by
> Linux, since there is no guarantee that the master interface of the
> DMA-capable device has observed either of the accesses. However, in an
> other-multi-copy atomic world, we can infer two things:
> 
>   1. A write arriving at an endpoint shared between multiple CPUs is
>      visible to all CPUs
> 
>   2. A write that is visible to all CPUs is also visible to all other
>      observers in the shareability domain
> 
> Pieced together, this allows us to use DMB OSHST for our default I/O
> write accessors and DMB OSHLD for our default I/O read accessors (the
> outer-shareability is for handling non-cacheable mappings) for shared
> devices. Memory-mapped, DMA-capable peripherals that are private to a
> CPU (i.e. inaccessible to other CPUs) still require the DSB, however
> these are few and far between and typically require special treatment
> anyway which is outside of the scope of the portable driver API (e.g.
> GIC, page-table walker, SPE profiler).

I think there is another class of devices which are not CPU private
(USB, network). The buffer here is on-chip and the CPU can't do much
other than issuing a DSB (and even this may not be sufficient). The
multi-copy atomicity rule would work between CPUs here but not
necessarily for the device. Not sure they rely on the barrier in
writel(), I guess we can wait and fix them with the mandatory barriers
afterwards. In the meantime:

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
