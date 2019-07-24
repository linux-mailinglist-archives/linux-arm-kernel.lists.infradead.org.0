Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EABD173051
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIgfvF5SDxywMeBcOX9GimmEGjWhkPjsnPhXc9E3T74=; b=q51B111HTJvSGd
	tTPkrrCLXOiWq0v3vlAro5LgVBeHLQ8w7wK91tAnPo6sp9tRxTcHZ07/asDi2gGLtRe/h9hLnCWdc
	nOWBC6EbFgFO3IjIU+l6nHS0Je3qzZ+FZU5mBDSQN3fzKawtYRR2M1BizNc4yJ/0PmXz4Eb+4+AX8
	xwDu6LgKRyf9ncCV5lovOqCDAk3zaLwNr4OwKUOerDvH4yMXaYsS7VjVsRtotHKVkWTOkHCGplzpo
	H9YduVCLO7Eqmpnk8oNVCcR07vGPYsi/SBQh5fTlk/ieR4YGhAHuZ0ak8XMzUIgKBZi2ljc+3atLe
	ouQcW/pteckxTQEv6xSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHj9-00027c-Hy; Wed, 24 Jul 2019 13:54:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHiw-00026t-WD
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:54:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5827928;
 Wed, 24 Jul 2019 06:54:29 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C2B643F71A; Wed, 24 Jul 2019 06:54:27 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:54:25 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [RFC 2/4] arm64: mm: parse dma-ranges in order to better
 estimate arm64_dma_phys_limit
Message-ID: <20190724135425.GB44864@arrakis.emea.arm.com>
References: <20190717153135.15507-1-nsaenzjulienne@suse.de>
 <20190717153135.15507-3-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717153135.15507-3-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_065431_077628_E4125031 
X-CRM114-Status: GOOD (  15.40  )
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com, will@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 Jisheng.Zhang@synaptics.com, mbrugger@suse.com, robin.murphy@arm.com,
 hch@lst.de, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 05:31:33PM +0200, Nicolas Saenz Julienne wrote:
> The dma physical limit has so far been calculated based on the memory
> size and the assumption that dma would be at least able to address the
> first 4 GB. This turned out no to be true with the Raspberry Pi 4
> which, on it's main interconnect, can only address the first GB of
> memory, even though it might have up to 4 GB.
> 
> With the current miscalculated dma physical limit the contiguous memory
> reserve is located in an inaccessible area for most of the board's
> devices.
> 
> To solve this we now scan the device tree for the 'dma-ranges' property
> on the root or interconnect nodes, which allows us to calculate the
> lowest common denominator dma physical limit. If no dma-ranges is
> available, we'll default to the old scheme.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  arch/arm64/mm/init.c | 61 +++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 57 insertions(+), 4 deletions(-)

I'd rather have this parsing in the core code, returning setting the
minimum DMA mask (or range, address etc.) that covers all devices/buses
described.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
