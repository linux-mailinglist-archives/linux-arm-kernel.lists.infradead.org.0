Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFE7EAFF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 13:14:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zGiWuj4mC3qX73Nl8Vb/MMcn6rzv4sHg7fuvHEoaah4=; b=gm7xM1AulWkBaLGJb3PlHBk5j
	i4TjZ2lqFqc1DV3J3eB1UyNyDgRhVI/TimdGGPvsQHD51hI+KjGH8JezWAJTXj5jkmKWxm1BaxM7s
	j7oLMQyxxM8K9JNH8o9Md4fdIlfb+zQCbkuYy2NRP9pO7aPtTcSc+0jwUY9B5YVFddsQbf9HLor13
	qpRlQTzvmW1vP+m0jpsmD3JG6Xn0u6SlQ9zgeHoZQfPH8tvOEj/A7axpdUSo6qVOylqg7085GmoDE
	a3e+cMebCQZQmgSnQgQtvA6uw8qdquH934O9kKdkCYAer/O9RJy56oDkIOUminZQXkUQvRvD2I5ab
	E+WdITyxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9Ku-0000Rn-W3; Thu, 31 Oct 2019 12:13:56 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9Kh-0000RP-PH
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 12:13:45 +0000
Received: from LHREML711-CAH.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 589AACBAF8CC268692C6;
 Thu, 31 Oct 2019 12:13:36 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML711-CAH.china.huawei.com (10.201.108.34) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 31 Oct 2019 12:13:35 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 31 Oct
 2019 12:13:35 +0000
Subject: Re: [PATCH v4 0/4] E0PD support
To: Will Deacon <will@kernel.org>, Mark Brown <broonie@kernel.org>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191031112610.GA26059@willie-the-truck>
From: John Garry <john.garry@huawei.com>
Message-ID: <0152ac71-1295-a302-7810-f9767f7bbd78@huawei.com>
Date: Thu, 31 Oct 2019 12:13:35 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191031112610.GA26059@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml716-chm.china.huawei.com (10.201.108.67) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_051343_971259_9CF4C0AD 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31/10/2019 11:26, Will Deacon wrote:
> [+John Garry]
> 
> Hi Mark,
> 
> On Thu, Oct 24, 2019 at 10:42:03PM +0100, Mark Brown wrote:
>> This series adds support for E0PD. We enable E0PD unconditionally where
>> present on systems where all the CPUs in the system support E0PD and
>> change to not enabling KPTI by default on systems where we have enabled
>> E0PD. It also converts the runtime checks for use of non-global mappings
>> into a variable.
> 
> Although I welcome the simplification introduced by this patch set, I'm
> worried that we might be removing a significant optimisation to KASLR
> boot-time on machines with large memory. John reported issues with this
> in the past, so I'm looping him in in case he has a chance to test this
> (branch here [1]). Of course, I could just be missing something since
> this code was really subtle to begin with.

I booted our D05 and D06 boards with that branch and did not experience 
the pauses which we reported some time ago.

John

> 
> On KASLR systems other than TX1, we should use nG mappings by default so
> that we can avoid the time-consuming task of rewriting swapper during boot.
> However, with your patches, I think we defer the decision to use nG mappings
> to the cpufeature code which means we always end up rewriting swapper in
> this scenario because of the global mappings installed early on.
> 
> Have I got that right?
> 
> Cheers,
> 
> Will
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/e0pd
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
