Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B727AE1C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 14:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OIIvx6LM4ONa2U1A4rx1bYyHRQIFuwg2MCnxjARdeAw=; b=o6059fNpKZ5mWR7dQNCX9ndE+
	n4gFLTLQwrolmhpSP2HqGzq6k0O5O+ZPS6n+Hzjh1hJOztjPlZk7MvXG9AR/BLlDSqRUzBW1kTJ6p
	vlHR4a/ETmg2+YJtmLxP3ftNDsFD+yQG9tXSTFkOXedVACeNwEZQhJ/HZpKfJoko6ZDjhmeAV4Z1o
	ZY9HUVU9uncpBTB1srB1mz3TINcXt1RqnfBgmMemVSTs9fCi1hGqcM+seor9ihIVtWWICIflqRfyw
	rcif9bYArjmZXPNs6HFc9GTRUlGvfV0IycmP7rG9xASyv0WN7Gq2gfdSkS7GGkA6kqdxePvaV/VQO
	t04E8jfiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL4zd-0003aq-3D; Mon, 29 Apr 2019 12:02:45 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL4zV-0003Zu-18
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 12:02:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 985B6A78;
 Mon, 29 Apr 2019 05:02:34 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 323F53F5AF;
 Mon, 29 Apr 2019 05:02:33 -0700 (PDT)
Subject: Re: [PATCH 12/21] dma-iommu: factor atomic pool allocations into
 helpers
To: Christoph Hellwig <hch@lst.de>
References: <20190327080448.5500-1-hch@lst.de>
 <20190327080448.5500-13-hch@lst.de>
 <b3f80a11-1504-e8f9-4438-92bcd5f3df7f@arm.com> <20190410061157.GA5278@lst.de>
 <20190417063358.GA24139@lst.de>
 <83615173-a8b4-e0eb-bac3-1a58d61ea4ef@arm.com>
 <20190418163512.GA25347@lst.de>
 <228ee57a-d7b2-48e0-a34e-81d5fba0a090@arm.com>
 <20190419082348.GA22299@lst.de>
 <0a6b3f53-79e5-af83-be39-f04c9acd8384@arm.com>
 <20190429114918.GB30460@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6d99cda0-b7a9-49f2-fbdb-6563fcdd3309@arm.com>
Date: Mon, 29 Apr 2019 13:02:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429114918.GB30460@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_050237_079981_3E4BE670 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/04/2019 12:49, Christoph Hellwig wrote:
> On Tue, Apr 23, 2019 at 11:01:44AM +0100, Robin Murphy wrote:
>> Wouldn't this suffice? Since we also use alloc_pages() in the coherent
>> atomic case, the free path should already be able to deal with it.
>>
>> Let me take a proper look at v3 and see how it all looks in context.
> 
> Any comments on v3?  I've been deferring lots of other DMA work to
> not create conflicts, so I'd hate to miss this merge window.

Ah, I did skim the commits in the branch, but I'll run through again and 
reply on the patches while my head's still in email mode...

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
