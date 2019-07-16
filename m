Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF756A77F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cUxe5B4zBdut0PQZlHWOOvk2SqPeD7Dq5Xdkx8f4xUY=; b=FwEf2HrvZUDsiJXWgV9NnWfnN
	ZnZPd1XYnUfKW6QeYrqn6UNtdWqWYXAqx5B8zI8eYF8gUdaZbRX7+ccoXNE6AcCETkWwrHtnwvZ4H
	A29SufZJBNBxRoXTP113FQ7lWY12iF7fql2J6AAWWXyF9G674FYtVQ1GfWc4NVgNXq8CVVVs1XvrA
	Rm2CbvA0FiWyOJSvTYwNnnFCbes2YMZnDMqlRQJR7PFAbfcbOtqizAOKx0a2PbHcQoWk4yxstGUuS
	KExhBiQCeaf/h5oyfFOrtwkfX2A7tZZyPuwtK1O7lWtB2TCZGkYkVlIJzMV3BPggff/cU/Zckpd8C
	hfPPKBm3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLjw-0002bf-St; Tue, 16 Jul 2019 11:35:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLji-0002XT-2v
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 11:35:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC6AC2B;
 Tue, 16 Jul 2019 04:35:07 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD30B3F71A;
 Tue, 16 Jul 2019 04:35:06 -0700 (PDT)
Subject: Re: [PATCH v3 04/24] dmaengine: qcom_hidma: Remove call to memset
 after dmam_alloc_coherent
To: Sinan Kaya <Okaya@kernel.org>, Fuqian Huang <huangfq.daxian@gmail.com>
References: <20190715031723.6375-1-huangfq.daxian@gmail.com>
 <72c45b14-f0c0-9d1c-0953-eea70ce513a0@kernel.org>
 <CABXRUiQXweOLRTpdyhx9xT_B1VBmoSoNm=_+Qr4prmz7u1QRFA@mail.gmail.com>
 <245ffd79-316c-e985-d1da-2ccea6d29636@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <9ea5f97f-5963-5836-6ab2-dc30628c6820@arm.com>
Date: Tue, 16 Jul 2019 12:35:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <245ffd79-316c-e985-d1da-2ccea6d29636@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_043510_175543_C88F1671 
X-CRM114-Status: GOOD (  13.90  )
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
Cc: linux-arm-msm@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, David Brown <david.brown@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 dmaengine@vger.kernel.org,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/07/2019 16:17, Sinan Kaya wrote:
> On 7/15/2019 1:43 AM, Fuqian Huang wrote:
>> Should I rewrite the commit log? Just mention that dma_alloc_coherent
>> has already
>> zeroed the memory and not to reference the commit?
> 
> I'd like to hear from Robin Murphy that arm smmu driver follows this as
> well.

I'd be lying if I said it did.

...but only because that's never been part of the SMMU driver's 
responsibility either way. The iommu-dma layer however, and thus the 
respective arm64 iommu_dma_ops, has always zeroed allocations right from 
its inception.

518a2f1925c3 was just cleaning up the last of the stragglers which 
*weren't* already clearing buffers anyway, such that we could formalise 
that behaviour into the API.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
