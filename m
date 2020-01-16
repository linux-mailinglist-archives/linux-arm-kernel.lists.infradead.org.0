Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F00C13DF0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:43:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=reIx70z5XLtC7wZ9ZSzQNwgXZn9Y20vPge84fenU3no=; b=Qb+p0Qb2WvpwcYI+AOQj/tTT6
	egj/DRsUZ0/JiJBWsL/avIFUPycJNh6MduhjhE5WhX7S6WMhvcuIqswPQi7X+rYenQhEg7LLc2kfa
	6nmiBlncRqhAtgRlK0Mi0NsYG/ZbXqo018lodbaEMHZLhV4/fh4ygna91qNpALD3tVNYu2sbJOenO
	B5kRugyegwmrXWXcQf//m/XZb8ZdMBqsX3rJMrshne7CrxGpDAIVOZbxZhD9vZQCd00D971Qm0j69
	5CriJBcefdxjZWnpvUWVh28KYqKOmlDxMQaG0RcGSY1rfxDJbJqKUqTHtKadVeZ/SGLyUi4dY6BNS
	0tjp6r3Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7II-0003Ok-BJ; Thu, 16 Jan 2020 15:42:50 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7Ht-0003Bg-FU
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:42:31 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579189346; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=JgjO9etRO5bzp4rzctb3Qc1UWAXZkGva4pS9KoszKJQ=;
 b=vdKG0hE9WKtWP6dyzu2TJEnAO46DKGlzBdZKnndQYZuzUuHSbNwB5dv5pRqsAJh1KK156CCG
 eXo3txw5terI+GxqlLAWjlwNGxc/Ko8tfWptei75f3BIdIMZFqf8MuZw53A5ZtgPFPWZJdQ3
 m+CUF/n137xrEUSRCpvrC64xMrE=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e20845c.7f760d9d4df8-smtp-out-n03;
 Thu, 16 Jan 2020 15:42:20 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AC452C43383; Thu, 16 Jan 2020 15:42:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.226.58.28] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jhugo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EFA24C433CB;
 Thu, 16 Jan 2020 15:42:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EFA24C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jhugo@codeaurora.org
Subject: Re: [PATCH] arm64: Add KRYO{3,4}XX CPU cores to spectre-v2 safe list
To: Will Deacon <will@kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
References: <20200116141912.15465-1-saiprakash.ranjan@codeaurora.org>
 <20200116153235.GA18909@willie-the-truck>
From: Jeffrey Hugo <jhugo@codeaurora.org>
Message-ID: <1a114449-8026-b99d-a4ce-93aac2ffdcb3@codeaurora.org>
Date: Thu, 16 Jan 2020 08:42:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200116153235.GA18909@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_074227_058391_EBFD6080 
X-CRM114-Status: GOOD (  21.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Matthias Kaehlcke <mka@chromium.org>, James Morse <james.morse@arm.com>,
 linux-arm-msm@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/16/2020 8:32 AM, Will Deacon wrote:
> [+Jeffrey]
> 
> On Thu, Jan 16, 2020 at 07:49:12PM +0530, Sai Prakash Ranjan wrote:
>> KRYO3XX silver CPU cores and KRYO4XX silver, gold CPU cores
>> are not affected by Spectre variant 2. Add them to spectre_v2
>> safe list to correct ARM_SMCCC_ARCH_WORKAROUND_1 warning and
>> vulnerability sysfs value.
>>
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>>   arch/arm64/include/asm/cputype.h | 6 ++++++
>>   arch/arm64/kernel/cpu_errata.c   | 3 +++
>>   2 files changed, 9 insertions(+)
>>
>> diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
>> index aca07c2f6e6e..7219cddeba66 100644
>> --- a/arch/arm64/include/asm/cputype.h
>> +++ b/arch/arm64/include/asm/cputype.h
>> @@ -85,6 +85,9 @@
>>   #define QCOM_CPU_PART_FALKOR_V1		0x800
>>   #define QCOM_CPU_PART_FALKOR		0xC00
>>   #define QCOM_CPU_PART_KRYO		0x200
>> +#define QCOM_CPU_PART_KRYO_3XX_SILVER	0x803
>> +#define QCOM_CPU_PART_KRYO_4XX_GOLD	0x804
>> +#define QCOM_CPU_PART_KRYO_4XX_SILVER	0x805
> 
> Jeffrey is the only person I know who understands the CPU naming here, so
> I've added him in case this needs either renaming or extending to cover
> other CPUs. I wouldn't be at all surprised if we need a function call
> rather than a bunch of table entries...

The added lines look sane to me, from a naming and MIDR perspective.  I 
don't know off hand if these CPUs are really fixed or not.

I wonder why a "KRYO_3XX_GOLD  0x802" line is not being added.  Sai?

> 
> That said, the internet claims that KRYO4XX gold is based on Cortex-A76,
> and so CSV2 should be set...
> 
> Will
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


-- 
Jeffrey Hugo
Qualcomm Technologies, Inc. is a member of the
Code Aurora Forum, a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
