Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB93D6AFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 22:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gskSjRDo1OZffSG+TOyAMddbsHdHbf/MprPwhPEb8nM=; b=fQxg+dtdE17GYi
	mfQFIBQ63Xw9OKUuKJccxhkUTHQm2ZP+kp4fITgbVM1MfoOfo3N46CoQTL9b7r1Uk5cPX53wlbL9T
	BpE9ZcRo+7VAmq/guf+9DBge9EtZq3fLSQ2Ql7Vkm1EfpkHtJ1a0MCZfEHdE+nL+HQ4RM1dX48uL5
	Vz8CftHvubaPlHxf63bRpODx8VzvXVQQhcgeg8ef6nvxHQBHk0XFx5+7scz8NpH0XwXcjiR8BFI/s
	vJH8rZMaxk1Bedbbttexdzashz65MxUiyDh96si1nbKT+svgnobkkBI06m9cqwQdM0qebzsiS0L6S
	TT7azvA0obPE+8rID1Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK7R4-0002LP-PW; Mon, 14 Oct 2019 20:59:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK7Qx-0002JB-Bo; Mon, 14 Oct 2019 20:59:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A383337;
 Mon, 14 Oct 2019 13:59:08 -0700 (PDT)
Received: from iMac-3.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BA5423F68E;
 Mon, 14 Oct 2019 13:59:06 -0700 (PDT)
Date: Mon, 14 Oct 2019 21:59:00 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH RFC 0/5] ARM: Raspberry Pi 4 DMA support
Message-ID: <20191014205859.GA7634@iMac-3.local>
References: <20191014183108.24804-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014183108.24804-1-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_135915_447658_867E28D5 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-s390@vger.kernel.org, f.fainelli@gmail.com,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, hch@infradead.org,
 iommu@lists.linux-foundation.org, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 08:31:02PM +0200, Nicolas Saenz Julienne wrote:
> the Raspberry Pi 4 offers up to 4GB of memory, of which only the first
> is DMA capable device wide. This forces us to use of bounce buffers,
> which are currently not very well supported by ARM's custom DMA ops.
> Among other things the current mechanism (see dmabounce.c) isn't
> suitable for high memory. Instead of fixing it, this series introduces a
> way of selecting dma-direct as the default DMA ops provider which allows
> for the Raspberry Pi to make use of swiotlb.

I presume these patches go on top of this series:

http://lkml.kernel.org/r/20190911182546.17094-1-nsaenzjulienne@suse.de

which I queued here:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/zone-dma

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
