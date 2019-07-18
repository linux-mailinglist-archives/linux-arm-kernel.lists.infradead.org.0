Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB20F6CB9E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 11:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JAOAcesgokJsvHGIQ8uv7eY9L8VezlX0ClmY5k5QMfQ=; b=q9wcC7oE/l+w/R
	vNvr+WfQjWgwp6dpb/SKnJgWIGRu5WUm5NwRDcsWpRmemq1Ln7xZ8LLC34e0awgb2Ubz6iF/tcs3S
	FVpMzrIzCcWZwv11v99rSjmhTnk4PnHuKvrkVB/RiuFrRPMV5Ibzx48ES/9DyRkNHgsb3n0u3WR5I
	BtckvESHPh9PH2lXlWNP+JiQktgNGogm6mbpgE0KIJl7kZ5f73rngn1yVj/ULH8CS79g6vkAcYZFM
	Ch7jhkwGqaeZ5wyDWeGffU5c3ah3irD5qfJplhSsyOJ5ak4RskRLuiTb8AMZ2uZd7sKV2QM8umF1m
	8bGK+dC+fSYGeRoHvSMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho2W9-0005gJ-SX; Thu, 18 Jul 2019 09:16:01 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho2Vd-0005aR-1t
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 09:15:30 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5018A68B05; Thu, 18 Jul 2019 11:15:26 +0200 (CEST)
Date: Thu, 18 Jul 2019 11:15:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [RFC 3/4] dma-direct: add dma_direct_min_mask
Message-ID: <20190718091526.GA25321@lst.de>
References: <20190717153135.15507-1-nsaenzjulienne@suse.de>
 <20190717153135.15507-4-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717153135.15507-4-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_021529_252989_32395209 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com, catalin.marinas@arm.com,
 phil@raspberrypi.org, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Jisheng.Zhang@synaptics.com, mbrugger@suse.com, will@kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 05:31:34PM +0200, Nicolas Saenz Julienne wrote:
> Historically devices with ZONE_DMA32 have been assumed to be able to
> address at least the lower 4GB of ram for DMA. This is still the defualt
> behavior yet the Raspberry Pi 4 is limited to the first GB of memory.
> This has been observed to trigger failures in dma_direct_supported() as
> the 'min_mask' isn't properly set.
> 
> We create 'dma_direct_min_mask' in order for the arch init code to be
> able to fine-tune dma direct's 'min_dma' mask.

Normally we use ZONE_DMA for that case.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
