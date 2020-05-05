Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0100D1C4E7E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 08:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWLDcsc8es10vTBN3mY+NKmEZ3ORthpKfQDbDBZ7s0I=; b=B9c1KOD91iVbbr
	7yLIDDj9bN6qr8TWKrz1vKApTM+cJrpiXndk+KgJy886WmoQGgzY+OVSZJmMN47WTFcn4tCLYODKw
	lPpFb/KfDETGdZQFA7Ma1XIByKdiQpurkyXYFrV53Q2N+hIouuSaFSWva2PTsWhy9aaFyT4QaEKIE
	Yfsz5U8F7MLKBIf7UOl6/HUSOmlF+1v9qAQzSMQTuf+aFxGj7d5SSWwdT5rXWnJfJLwzG5WuAven6
	BfAh/DwrFAVnCd7CTLKaitqLhF0sx8qaLpBajGydtobNjUhciLI0rmntyB/qZT/+RzWjRDhBhoQ3n
	Ty24JVZBmMaeZ/m0X/5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVrQL-00006R-Vu; Tue, 05 May 2020 06:51:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVrQD-00004x-Gs
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 06:51:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCD061FB;
 Mon,  4 May 2020 23:51:14 -0700 (PDT)
Received: from [10.163.71.248] (unknown [10.163.71.248])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6AD753F68F;
 Mon,  4 May 2020 23:51:12 -0700 (PDT)
Subject: Re: [PATCH V3 02/16] arm64/cpufeature: Drop TraceFilt feature
 exposure from ID_DFR0 register
To: Will Deacon <will@kernel.org>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-3-git-send-email-anshuman.khandual@arm.com>
 <20200504202453.GA5012@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <56cd3062-a0c2-6cdf-b7c6-c2b7bf56d23b@arm.com>
Date: Tue, 5 May 2020 12:20:41 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200504202453.GA5012@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_235117_603185_356638C7 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/05/2020 01:54 AM, Will Deacon wrote:
> On Sat, May 02, 2020 at 07:03:51PM +0530, Anshuman Khandual wrote:
>> ID_DFR0 based TraceFilt feature should not be exposed to guests. Hence lets
>> drop it.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Marc Zyngier <maz@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: James Morse <james.morse@arm.com>
>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-kernel@vger.kernel.org
>>
>> Suggested-by: Mark Rutland <mark.rutland@arm.com>
>> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>  arch/arm64/kernel/cpufeature.c | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>> index 6d032fbe416f..51386dade423 100644
>> --- a/arch/arm64/kernel/cpufeature.c
>> +++ b/arch/arm64/kernel/cpufeature.c
>> @@ -435,7 +435,6 @@ static const struct arm64_ftr_bits ftr_id_pfr1[] = {
>>  };
>>  
>>  static const struct arm64_ftr_bits ftr_id_dfr0[] = {
>> -	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 28, 4, 0),
> 
> Hmm, this still confuses me. Is this not now FTR_NONSTRICT? Why is that ok?

Mark had mentioned about it earlier (https://patchwork.kernel.org/patch/11287805/)
Did I misinterpret the first part ? Could not figure "capping the emulated debug
features" part. Probably, Mark could give some more details.

From the earlier discussion:

* ID_DFR0 fields need more thought; we should limit what we expose here.
  I don't think it's valid for us to expose TraceFilt, and I suspect we
  need to add capping for debug features we currently emulate.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
