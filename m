Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3ACE92594
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XhmmyE8bqLUmz5LmT+vWOKmLoD2i3jlSGZ16JRC9U24=; b=NU49edAA4daEPl52Fk7aTBcDD
	gI9PqQkm9G9rOHr9rCsxzgzxHsoeU2W3XUVqpmmE8jufIRofMqGp0PT79DFGOObNHDLzKPG3T1u9z
	TlkqGf3dOp9aMifPtMV1Tkkxz/A/nDs9vSi8qjovFHVNlkSUt74RgN3fpMz2ohoXDWh/6gfIvHEgw
	5rb5Irr0C1O3hlQXFPpobmCtYVIpKS14RDiChyjzlKB5OrpJPq/2TgHZPWiChznhIdFX1TBseyw4l
	w2dkwOPnd+9PMYCwmWqLMxWcjfH4+kgb2BFtfwiX+HQZNjcbM2DspbitQCeTpzcA6rO+6LDmBwE8p
	rDgiyhb0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzi6d-0001f4-84; Mon, 19 Aug 2019 13:53:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzi6T-0001eL-Pd
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:53:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F20028;
 Mon, 19 Aug 2019 06:53:43 -0700 (PDT)
Received: from [10.37.12.162] (unknown [10.37.12.162])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 54FBF3F718;
 Mon, 19 Aug 2019 06:53:42 -0700 (PDT)
Subject: Re: [Xen-devel] [PATCH 08/11] swiotlb-xen: use the same foreign page
 check everywhere
To: Christoph Hellwig <hch@lst.de>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
References: <20190816130013.31154-1-hch@lst.de>
 <20190816130013.31154-9-hch@lst.de>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <5c987a35-4e66-6d12-82e4-06fcffc3be3e@arm.com>
Date: Mon, 19 Aug 2019 14:53:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190816130013.31154-9-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_065345_877219_DBB3F66B 
X-CRM114-Status: GOOD (  11.68  )
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
Cc: xen-devel@lists.xenproject.org, iommu@lists.linux-foundation.org,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On 8/16/19 2:00 PM, Christoph Hellwig wrote:
> xen_dma_map_page uses a different and more complicated check for
> foreign pages than the other three cache maintainance helpers.
> Switch it to the simpler pfn_vali method a well.

NIT: s/pfn_vali/pfn_valid/

> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Julien Grall <julien.grall@arm.com>

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
