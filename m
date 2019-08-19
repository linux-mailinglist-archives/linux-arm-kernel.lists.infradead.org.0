Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74FD92268
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a/Z45domC/5R2KfppuF+soUidHGX/qJ0BZHjTSS7nBA=; b=QocNQdx88gGlYFup/X39yhLKu
	RCvyAMglr+6BBBx4ijwTx4kkw4CE8o5EdsCpSsED9ReF7+sz7oDbC2sqbE0YUnBbHY/NLIwd41SGO
	gJGFe+DNfVvx66h9wWl/0ZPP1tWRQq371jQBVxp/6Z+SBQsOApywK4dipBmKb3XxYwlWLva60GQx+
	Hw4Po3GzQHHTwGyoqHaCDGnA1e74xZVmnwlsXSyuQsF98GS3Lr3Eiz9nt9tWlHBDfim3nvrBDBuyx
	ROVy8f4F1aEuJ8O4wB2eYqs9U23wBOrDQjRsthu8SkPQFTZZFlD1RKc98Lug/eQZXGktIRQBgFPTm
	+arwd49Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfsi-0002e5-BM; Mon, 19 Aug 2019 11:31:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfsa-0002cq-FM
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:31:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AEE328;
 Mon, 19 Aug 2019 04:31:14 -0700 (PDT)
Received: from [10.37.12.162] (unknown [10.37.12.162])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA7983F246;
 Mon, 19 Aug 2019 04:31:12 -0700 (PDT)
Subject: Re: [Xen-devel] [PATCH 02/11] xen/arm: use dev_is_dma_coherent
To: Christoph Hellwig <hch@lst.de>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
References: <20190816130013.31154-1-hch@lst.de>
 <20190816130013.31154-3-hch@lst.de>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <0998bb38-6afd-d281-5c37-925adf2403d1@arm.com>
Date: Mon, 19 Aug 2019 12:31:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190816130013.31154-3-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_043116_553824_40A0D7F5 
X-CRM114-Status: GOOD (  11.90  )
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
> Use the dma-noncoherent dev_is_dma_coherent helper instead of the home
> grown variant.

It took me a bit of time to understand that dev->archdata.dma_coherent 
and dev->dma_coherent will always contain the same value.

Would you mind it mention it in the commit message?

Other than that:

Reviewed-by: Julien Grall <julien.grall@arm.com>

> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
