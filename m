Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BC041FA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 10:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCXItUJIzmAnwS5iUVkC2G+w4kv0Yw3+dLn5TKR6+Es=; b=QxJiyg+sRWguOH
	da4pafsjkGa3GlPQnVrZODoQKxPo54HL76Bgcx3Gs0XrfGvGUUMjnJS8n2xhjhFzqFycNco6Stmqe
	8SxCF6/2Dwxu83eGwJI4V7PU2TOzFU43oIck3kwAI5LAYrURkljEakzNVGE4IeFt8j7zKUXH1vqcl
	LpzmrW1gx7TZQVXMLoG+PEoOOSmKhk2FByvZ4PXHFh4tODeWJ/q/+lIg2bmKW9CHtMoreySb6/i71
	Tz8xfCtxVD4c/icwqz0gH++Xg4t1dUNZv/RGTK4G1Jy8327kyjSFfvAge2Qos1XPEKDVFL1mOQhEZ
	s+muxapLOcgXY5Z19xzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hayxT-0003CL-3q; Wed, 12 Jun 2019 08:50:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hayxB-0003Bj-Ta
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 08:49:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE6E82B;
 Wed, 12 Jun 2019 01:49:55 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8BC543F246;
 Wed, 12 Jun 2019 01:49:54 -0700 (PDT)
Subject: Re: [PATCH v2 1/9] KVM: arm/arm64: vgic: Add LPI translation cache
 definition
From: Julien Thierry <julien.thierry@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190611170336.121706-1-marc.zyngier@arm.com>
 <20190611170336.121706-2-marc.zyngier@arm.com>
 <54c8547a-51fb-8ae5-975f-261d3934221a@arm.com>
Message-ID: <37a7411c-e7e0-e601-b88b-c12e8ebf9861@arm.com>
Date: Wed, 12 Jun 2019 09:49:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <54c8547a-51fb-8ae5-975f-261d3934221a@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_014958_003229_342C8AD1 
X-CRM114-Status: GOOD (  16.84  )
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
Cc: "Raslan, KarimAllah" <karahmed@amazon.de>, "Saidi,
 Ali" <alisaidi@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/06/2019 09:16, Julien Thierry wrote:
> Hi Marc,
> 
> On 11/06/2019 18:03, Marc Zyngier wrote:

[...]

>> +
>> +void vgic_lpi_translation_cache_init(struct kvm *kvm)
>> +{
>> +	struct vgic_dist *dist = &kvm->arch.vgic;
>> +	unsigned int sz;
>> +	int i;
>> +
>> +	if (!list_empty(&dist->lpi_translation_cache))
>> +		return;
>> +
>> +	sz = atomic_read(&kvm->online_vcpus) * LPI_DEFAULT_PCPU_CACHE_SIZE;
>> +
>> +	for (i = 0; i < sz; i++) {
>> +		struct vgic_translation_cache_entry *cte;
>> +
>> +		/* An allocation failure is not fatal */
>> +		cte = kzalloc(sizeof(*cte), GFP_KERNEL);
>> +		if (WARN_ON(!cte))
>> +			break;
>> +
>> +		INIT_LIST_HEAD(&cte->entry);
>> +		list_add(&cte->entry, &dist->lpi_translation_cache);
> 
> Going through the series, it looks like this list is either empty
> (before the cache init) or has a fixed number
> (LPI_DEFAULT_PCPU_CACHE_SIZE * nr_cpus) of entries. And the list never
> grows nor shrinks throughout the series, so it seems odd to be using a
> list here.
> 
> Is there a reason for not using a dynamically allocated array instead of
> the list? (does list_move() provide a big perf advantage over swapping
> the data from one array entry to another? Or is there some other
> facility I am missing?
> 

Scratch that, I realized having the list makes it easier to implement
the LRU policy later in the series.

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
