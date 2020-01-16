Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9510313DF5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hsLDBQFIT5w8z0JPNn9Vz0JHRG6f0dmOX2D8TQJ91IY=; b=PxR1mDHlvICeyrHIyym0uAVtq
	JgxEAyJRS+cjILPO8OIBIOwZ9JXIic5l68UIqvyKWsCKhOOrpGJXzMITk3owDs/1cyfBK9AXbAFXm
	WO2AB5aIVvsY1EOTCgeA4u6SOGn/ZRJtUSxfB6bXQJWNjcuJuX8R1WAcDmsHauK3X/k2P3zEtmVfe
	5MKVYd22rd/fLINTpeODk0JlPNUjDmfg0Pf9jN7I3G/9nWHgn7SnhdxUgm194FJWaZvSMqMsP8lOD
	dH3Sxabwv4PWaqg/eEFkTuTmFk9JFRqjvjKpfFEc51d9ctw2fqfVO7YDL+ASQGCKOpv461erK2EoF
	N7Uzs1POA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7WN-0002Z3-0V; Thu, 16 Jan 2020 15:57:23 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7WC-0002YS-Af
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:57:15 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579190233; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=iru6tv9Z7QQCV5dgJVR7xZ6Q0DYAM+fSwdOud0OR7R8=;
 b=nUJ0YBVb9ze7Jemz/9+Lri8MbtL7TZ7jSi1gcvKwV/fKzGGZC3AUu57aRvcsQjJjAdX0trO/
 +9q8D+qSHeXbxf9ZomAlT4/y//uidzgXwlwmfskOvjpyq25oWDfDKy/MQ9FKC/OsBMg/DZvY
 fjGFLcbvcqsR06gQXTI7fiLV6h0=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2087d5.7fab035564c8-smtp-out-n03;
 Thu, 16 Jan 2020 15:57:09 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6CE84C447A1; Thu, 16 Jan 2020 15:57:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B9DA2C43383;
 Thu, 16 Jan 2020 15:57:07 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 16 Jan 2020 21:27:07 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Jeffrey Hugo <jhugo@codeaurora.org>, Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Add KRYO{3,4}XX CPU cores to spectre-v2 safe list
In-Reply-To: <1a114449-8026-b99d-a4ce-93aac2ffdcb3@codeaurora.org>
References: <20200116141912.15465-1-saiprakash.ranjan@codeaurora.org>
 <20200116153235.GA18909@willie-the-truck>
 <1a114449-8026-b99d-a4ce-93aac2ffdcb3@codeaurora.org>
Message-ID: <ff70f2fd2fd8525f919ff9a872d33041@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_075713_287355_BDA981BF 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
 Stephen Boyd <swboyd@chromium.org>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Andre Przywara <andre.przywara@arm.com>, Matthias Kaehlcke <mka@chromium.org>,
 James Morse <james.morse@arm.com>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jeffrey,

On 2020-01-16 21:12, Jeffrey Hugo wrote:
> On 1/16/2020 8:32 AM, Will Deacon wrote:
>> [+Jeffrey]
>> 
>> On Thu, Jan 16, 2020 at 07:49:12PM +0530, Sai Prakash Ranjan wrote:
>>> KRYO3XX silver CPU cores and KRYO4XX silver, gold CPU cores
>>> are not affected by Spectre variant 2. Add them to spectre_v2
>>> safe list to correct ARM_SMCCC_ARCH_WORKAROUND_1 warning and
>>> vulnerability sysfs value.
>>> 
>>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>>> ---
>>>   arch/arm64/include/asm/cputype.h | 6 ++++++
>>>   arch/arm64/kernel/cpu_errata.c   | 3 +++
>>>   2 files changed, 9 insertions(+)
>>> 
>>> diff --git a/arch/arm64/include/asm/cputype.h 
>>> b/arch/arm64/include/asm/cputype.h
>>> index aca07c2f6e6e..7219cddeba66 100644
>>> --- a/arch/arm64/include/asm/cputype.h
>>> +++ b/arch/arm64/include/asm/cputype.h
>>> @@ -85,6 +85,9 @@
>>>   #define QCOM_CPU_PART_FALKOR_V1		0x800
>>>   #define QCOM_CPU_PART_FALKOR		0xC00
>>>   #define QCOM_CPU_PART_KRYO		0x200
>>> +#define QCOM_CPU_PART_KRYO_3XX_SILVER	0x803
>>> +#define QCOM_CPU_PART_KRYO_4XX_GOLD	0x804
>>> +#define QCOM_CPU_PART_KRYO_4XX_SILVER	0x805
>> 
>> Jeffrey is the only person I know who understands the CPU naming here, 
>> so
>> I've added him in case this needs either renaming or extending to 
>> cover
>> other CPUs. I wouldn't be at all surprised if we need a function call
>> rather than a bunch of table entries...
> 
> The added lines look sane to me, from a naming and MIDR perspective.
> I don't know off hand if these CPUs are really fixed or not.
> 
> I wonder why a "KRYO_3XX_GOLD  0x802" line is not being added.  Sai?
> 

KRYO_3XX_GOLD is based on Cortex-A75 which is not spectre v2 safe.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
