Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD25E8BD8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 16:33:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1ZIQXG0+hXbVly1qFffKaVUJSd+p0W/XKcs1mVICrL4=; b=TdMV6MUCJlZ4jJpNuR1R1Skyn
	cqcCXo6+nKZNY4I3rnPrRRdXthzIUGebeNaJv2+XVs+QwNu/UP3ThyerrhihzN/hJ+SsZ3leF9M/P
	WaTcB2lXUl2ruIk88gYdYJ5cddJtj0beG+X+NdPn8HHM4T5nPSZ3J1wML93UVXjR0bBpc67hj140d
	Ydz/DAi26Kxk48cNp4j3BJmPLj2SJ0d60sf3/K2+15zF9zCSp/qhLM5KKEojVeakV4IXTxvzGaajQ
	zwlKXqXbw1l9PpAJdxJVFHZ7qe5fvIztHYTgh92Lp53m9juxIb9QkxKCA7++S8I2Y/AL9CBheFv32
	21QZa4emA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTUP-0004cv-20; Tue, 29 Oct 2019 15:32:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTUD-0004bm-87
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 15:32:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 385511F1;
 Tue, 29 Oct 2019 08:32:44 -0700 (PDT)
Received: from [10.1.196.50] (e108454-lin.cambridge.arm.com [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B1733F71F;
 Tue, 29 Oct 2019 08:32:43 -0700 (PDT)
Subject: Re: [PATCH] arm64: cpufeature: Export Armv8.6 Matrix feature to
 userspace
To: Will Deacon <will@kernel.org>
References: <20191025171056.30641-1-julien.grall@arm.com>
 <20191029111517.GE11590@willie-the-truck>
 <f58cb01f-4543-6041-df2d-7ca7ba887bc9@arm.com>
 <20191029113606.GB12103@willie-the-truck>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <6f175c28-1ac0-3da0-bbfa-a811a4adfed7@arm.com>
Date: Tue, 29 Oct 2019 15:32:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029113606.GB12103@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_083245_332621_30C42418 
X-CRM114-Status: GOOD (  13.55  )
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
Cc: catalin.marinas@arm.com, Dave.Martin@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 29/10/2019 11:36, Will Deacon wrote:
> On Tue, Oct 29, 2019 at 11:26:41AM +0000, Julien Grall wrote:
>> On 29/10/2019 11:15, Will Deacon wrote:
>>> On Fri, Oct 25, 2019 at 06:10:56PM +0100, Julien Grall wrote:
>>>> This patch provides support for reporting the presence of Armv8.6
>>>> Matrix and its optional features to userspace.
>>>
>>> Are you sure this is 8.6 and not earlier?
>>
>> This was introduced by Armv8.6 see [1] but allowed to be used by Armv8.2 and
>> onwards.
> 
> That doesn't mean an awful lot though, especially then the features are
> referred to in the docs as things like "ARMv8.2-F64MM".

It is arguable. The feature were announced for Armv8.6 but made available for 
previous release.

Anyway, I can remove the "Armv8.6" bits if that's the concern.

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
