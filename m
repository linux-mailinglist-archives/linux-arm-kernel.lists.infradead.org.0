Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD30EB243
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:14:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=va5hCDW0ENQeX/yj6hQ7QVbHUhqe5WxBNARaO0dli/E=; b=EulCIaDYFXsWy/g2k1fcsF0Ur
	9Eg78NMV5GzC92c3f/RDfISKhJ+AE8Ec0qxK1kfGSime/Ri+TwtlQfGNOyMxirqBwkFPPeGsvIbo9
	tOrrkMxk/hmJhDzP2Vub+rym9KcL5+u4ncG+yKs+EAixskapLYZhWOBVWOD1tyJSlQDNE1qtXZWkL
	U9VjU5DnTHX+WSp0a7dcniB2dHXmBjhgMU2Mj6r8ecc25SV85jJ8RePiaH+FzMi930KZJo0ZjXXIH
	XyC4ltTRX7dfJ9V6IeKESXN1MgFShgncmnrk0QeH2AXwB0ONUIGsljXU8x3kzKCaXoRO6+zGsxP5e
	YK/wy/N1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBDC-0005uz-D1; Thu, 31 Oct 2019 14:14:06 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBD4-0005uQ-Iy
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 14:14:00 +0000
Received: from LHREML710-CAH.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 2481540AB5FECA22A7BF;
 Thu, 31 Oct 2019 14:13:54 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML710-CAH.china.huawei.com (10.201.108.33) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 31 Oct 2019 14:13:53 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 31 Oct
 2019 14:13:53 +0000
Subject: Re: [PATCH v4 0/4] E0PD support
To: Will Deacon <will@kernel.org>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191031112610.GA26059@willie-the-truck>
 <0152ac71-1295-a302-7810-f9767f7bbd78@huawei.com>
 <20191031124217.GE26059@willie-the-truck>
From: John Garry <john.garry@huawei.com>
Message-ID: <a074ae3a-273f-5be2-7e4d-267e6103a094@huawei.com>
Date: Thu, 31 Oct 2019 14:13:52 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191031124217.GE26059@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml716-chm.china.huawei.com (10.201.108.67) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_071358_772265_B5D29028 
X-CRM114-Status: GOOD (  15.33  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31/10/2019 12:42, Will Deacon wrote:
> On Thu, Oct 31, 2019 at 12:13:35PM +0000, John Garry wrote:
>> On 31/10/2019 11:26, Will Deacon wrote:
>>> On Thu, Oct 24, 2019 at 10:42:03PM +0100, Mark Brown wrote:
>>>> This series adds support for E0PD. We enable E0PD unconditionally where
>>>> present on systems where all the CPUs in the system support E0PD and
>>>> change to not enabling KPTI by default on systems where we have enabled
>>>> E0PD. It also converts the runtime checks for use of non-global mappings
>>>> into a variable.
>>>
>>> Although I welcome the simplification introduced by this patch set, I'm
>>> worried that we might be removing a significant optimisation to KASLR
>>> boot-time on machines with large memory. John reported issues with this
>>> in the past, so I'm looping him in in case he has a chance to test this
>>> (branch here [1]). Of course, I could just be missing something since
>>> this code was really subtle to begin with.
>>
>> I booted our D05 and D06 boards with that branch and did not experience the
>> pauses which we reported some time ago.
> 
> Hmm. So I annotated the code locally and I see that we do rewrite swapper
> in this case, so I'm surprised you're not seeing the performance issue
> you ran into with this before. Have you got KASLR enabled and are you
> passing a non-zero seed?

Just to confirm: yes and no (both boards pump out "EFI_RNG_PROTOCOL 
unavailable, no randomness supplied")

Thanks,
John

> 
> Will
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
