Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CC12B891
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 17:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wfHvchS2R+ILZCr5vMWujCoabvbwkHwtOS1JsXSiGRk=; b=JNOwoX2HBd4pQA
	FoeNv7PDosJF4vjgImmAKHwPbtsHe0GjTKzf9YO+w0W8zm2iyqC0S2xBxCjtDLhhnYLPO0Z1kCt9w
	rKbls0V5fW5HxhqpeFs8WBbln2Vuq9f3j7Mq93iIcfUtnwKaOLPzhTCuNuT+umwED+KiRLPcfWKRj
	7RTR/7ygM80b5EA6E97NCW4Pv1JmR67vq5SIcS2AntMVZLGygLuUMQF0mypRqLs7Ne+pfgerIPqxR
	+nS7oLROE2CkU8UYbeTVb5XcNhN4V2uXffeQ23kMY4aVDiBryFJIt6CvIoDrqLFaTzxM9BfYhXoKf
	fiVcDeZA4kjrSwECGbfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVHoH-00060o-E4; Mon, 27 May 2019 15:45:13 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVHoA-0005Gc-P1
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 15:45:08 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id C7FCC244; Mon, 27 May 2019 17:45:04 +0200 (CEST)
Date: Mon, 27 May 2019 17:45:03 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: implement generic dma_map_ops for IOMMUs v5
Message-ID: <20190527154503.GH12745@8bytes.org>
References: <20190520072948.11412-1-hch@lst.de>
 <20190527153751.GF12745@8bytes.org> <20190527153829.GA31620@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527153829.GA31620@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_084506_969881_03BDDBEC 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 05:38:29PM +0200, Christoph Hellwig wrote:
> On Mon, May 27, 2019 at 05:37:51PM +0200, Joerg Roedel wrote:
> > I applied this series to a new generic-dma-ops branch in the iommu
> > tree and plan to send it upstream in the next merge window.
> 
> Thanks!  Can you push the branch out ASAP, as I'll need to pull it
> into the dma-mapping tree to avoid creating nasty conflicts for the
> pending rework of the DMA CMA and contigous allocators?

Done, pushed this one branch. Have a lot of fun!


	Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
