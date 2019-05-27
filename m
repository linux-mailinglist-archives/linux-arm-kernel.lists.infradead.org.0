Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55672B876
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 17:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVsT2cESUz3vHVfvW3/b34D6+R/QTikC6KKyVi+BKvE=; b=D4jeAWulXzG79m
	BVJZp3xWEmhSO7b/YwoYG6YJTjLPUFsrXTfXtc1zvsuKjpgLuJz35i0n2/V1wjyK8QAEl9fat9We/
	XZhmthpRnLacP82wJzRb7wfIsaQUvMGzJLvt5KBMzdEscIGla2fPmd9EZxXS2mA8/aHGf4o0OeTqS
	12uJ5Lb3TwUWa2yPveup+Mm/IWdstPqQ85nSp61/dzag5uEZFnHS69SRhCKwDaWHJMsPtZr2QucIq
	TfSOnWOTrx3z/qt2BMXmAzRfcIHEfA8EGme/zkX3ivHONA/wVVUbSgRJoEO6juG0wBcfEU5ePQB9V
	jC1/PPFPq3k8WANgOsfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVHiJ-000278-IU; Mon, 27 May 2019 15:39:03 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVHiC-00026P-JL
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 15:38:58 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 79D5C68AA6; Mon, 27 May 2019 17:38:29 +0200 (CEST)
Date: Mon, 27 May 2019 17:38:29 +0200
From: Christoph Hellwig <hch@lst.de>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: implement generic dma_map_ops for IOMMUs v5
Message-ID: <20190527153829.GA31620@lst.de>
References: <20190520072948.11412-1-hch@lst.de>
 <20190527153751.GF12745@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527153751.GF12745@8bytes.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_083856_786675_E6C50D1C 
X-CRM114-Status: UNSURE (   9.98  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tom Murphy <tmurphy@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 05:37:51PM +0200, Joerg Roedel wrote:
> I applied this series to a new generic-dma-ops branch in the iommu
> tree and plan to send it upstream in the next merge window.

Thanks!  Can you push the branch out ASAP, as I'll need to pull it
into the dma-mapping tree to avoid creating nasty conflicts for the
pending rework of the DMA CMA and contigous allocators?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
