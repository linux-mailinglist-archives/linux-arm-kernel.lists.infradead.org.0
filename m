Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC6F2B872
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 17:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwkv/qT/NR6fHu3BRB45LzkHMlWrCR0SKS+0tVARa50=; b=pYoRj6bJXwqHvE
	RYtKJqcG0dXFT8DPcS5x1Tu2dgLnuEDiq1j/qwJtMto3JCI5kBe9MUiD+JjEjVM9q+7hoecITxYuJ
	ErH8I+ygXRMZqyWJxbyZtZN5Z+5meyvBvMU+zQz1PSedTLNyIHJRkoH2++kfo5dAnqHh9zd+ia5Kf
	vVCZfgXs3Igw4Jir3m9PurDlZ9PtvOUqH9z+8fVtzedHUsbau5F86YtVJ/8Q7iiGkGsZYZbY/uHa7
	uCTeoOaUN/2sHoez0jORSsrRNr2Otp6C2EG5AmP57oB4LWje6Io4S5I/nuSLKiaI3AvPf8XIyJZGI
	OXbBNdZJoGhYy0rNbQZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVHhN-0001qj-2n; Mon, 27 May 2019 15:38:05 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVHhG-0001q0-Ow
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 15:38:00 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 3162D244; Mon, 27 May 2019 17:37:53 +0200 (CEST)
Date: Mon, 27 May 2019 17:37:51 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: implement generic dma_map_ops for IOMMUs v5
Message-ID: <20190527153751.GF12745@8bytes.org>
References: <20190520072948.11412-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520072948.11412-1-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_083758_958232_C0F2161B 
X-CRM114-Status: GOOD (  13.58  )
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

Hi Christoph, Hi Robin,

On Mon, May 20, 2019 at 09:29:24AM +0200, Christoph Hellwig wrote:
> I think we are finally ready for the generic dma-iommu series.  I have
> various DMA API changes pending, and Tom has patches ready to convert
> the AMD and Intel iommu drivers over to it.  I'd love to have this
> in a stable branch shared between the dma-mapping and iommu trees
> the day after rc2 is released.  I volunteer to create the branch,
> but I'm fine with it living in the iommu tree as well.  Before that
> Will has already said he wants to send the first patch in the series
> to Linus for this merge window.

First a big "THANK YOU" for working on this and getting it ready. It is
an important step towards generic dma-ops for all iommu drivers,
something I wished to have for years and planned to work on myself, but
didn't find the time.

I applied this series to a new generic-dma-ops branch in the iommu
tree and plan to send it upstream in the next merge window.

Thanks again,

       Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
