Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C3D6878B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 12:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tnNUq7+JZKuWatj8UthgEkUTe3UuW3PRzET6demYFmA=; b=VSTzjo9xTxk1FkoTWxpcIDmGG
	KvdtpxV7ZNlijh/+YS+JRzgnJyZRYV0ok72UzC3+M225utyumbXWTDjiRcfporH/o3o8NF963cc6r
	s15Yk1yJJiiJMZNfb1LvC3tmwATUMo0h0EDv63E19GZazWwKen804B6737KXWcdu4MHrEMWAeEFTk
	qVb+X5ataRRLa3ub70dgw15d4G4XJNqikrTYw0sidyX11makLIllwKonFGv6wKzOLyTz6fycU8TK6
	bLXkQHxwU6cqjwe1IShLwbxeiaEAB8bS6OgIc8VXyHRuqXs3lEyR1cnN9TVS/wKaoLGYeiMGD11SP
	ifbSUDySQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmyhN-00061F-8w; Mon, 15 Jul 2019 10:59:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hmyh3-0005xQ-46
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 10:58:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6E292B;
 Mon, 15 Jul 2019 03:58:50 -0700 (PDT)
Received: from [10.1.196.50] (e108454-lin.cambridge.arm.com [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C68BF3F59C;
 Mon, 15 Jul 2019 03:58:49 -0700 (PDT)
Subject: Re: [RFC v2 11/14] arm64: Move the ASID allocator code in a separate
 file
To: James Morse <james.morse@arm.com>
References: <20190620130608.17230-1-julien.grall@arm.com>
 <20190620130608.17230-12-julien.grall@arm.com>
 <3e6c6636-8522-ab4a-0183-ae0198a7a047@arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <9e605949-4c3f-da9a-228c-25e694ced5df@arm.com>
Date: Mon, 15 Jul 2019 11:58:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <3e6c6636-8522-ab4a-0183-ae0198a7a047@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_035853_256728_67CF9340 
X-CRM114-Status: GOOD (  18.47  )
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
Cc: julien.thierry@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/07/2019 15:56, James Morse wrote:
> Hi Julien,

Hi James,

Thank you for the review.

> 
> On 20/06/2019 14:06, Julien Grall wrote:
>> We will want to re-use the ASID allocator in a separate context (e.g
>> allocating VMID). So move the code in a new file.
>>
>> The function asid_check_context has been moved in the header as a static
>> inline function because we want to avoid add a branch when checking if the
>> ASID is still valid.
> 
>> diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
>> index 3df63a28856c..b745cf356fe1 100644
>> --- a/arch/arm64/mm/context.c
>> +++ b/arch/arm64/mm/context.c
>> @@ -23,46 +23,21 @@
> 
>> -#define ASID_FIRST_VERSION(info)	NUM_ASIDS(info)
> 
>> diff --git a/arch/arm64/lib/asid.c b/arch/arm64/lib/asid.c
>> new file mode 100644
>> index 000000000000..7252e4fdd5e9
>> --- /dev/null
>> +++ b/arch/arm64/lib/asid.c
>> @@ -0,0 +1,185 @@
> 
>> +#define ASID_FIRST_VERSION(info)	(1UL << ((info)->bits))
> 
> (oops!)

Good catch, I will fix it in the next version.

> 
> 
>> @@ -344,7 +115,7 @@ static int asids_init(void)
>>   	if (!asid_allocator_init(&asid_info, bits, ASID_PER_CONTEXT,
>>   				 asid_flush_cpu_ctxt))
>>   		panic("Unable to initialize ASID allocator for %lu ASIDs\n",
>> -		      1UL << bits);
>> +		      NUM_ASIDS(&asid_info));
> 
> Could this go in the patch that adds NUM_ASIDS()?

Actually this change is potentially wrong. This relies on asid_allocator_init() 
to set asid_info.bits even if the function fails.

So I think it would be best to keep 1UL << bits here.

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
