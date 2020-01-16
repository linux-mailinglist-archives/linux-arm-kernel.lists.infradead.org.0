Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8664713DFB0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pnaMw3dOt56KWC1s2FTXJDynMuaZGvO38xAC4sQhLWk=; b=MtRi7BIsFZIH60O9DtTaU0kIH
	dR+NNlwXzbb3V4PQRTWTg236RZ0cg8et1kfl/7FUJcztGqUg46Kd7ivAHL3JtvjbM6d4jyzMjk3TV
	AxoGZQ8HTnril/3TgzjunrCSR3GMU6uNLe1g5c16/U/ufiN5JWFFJA483dZ8AP2A4flLLKJXDPCzf
	tn4IcX8EtxmqmFdOrEUeNOnKA8lKdTGk5CZER6SOrf4ICeTkfVgC3/vg5tvgWhtnKs7RYSd/i9V3W
	9Kd/TY24IuWXeH+aTAOgh4a1afiZKUcl4AYn32C9l4y07LQ0kwmORydKVZNJgq72i/a6lLM8U8qgT
	O+a0HldBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7km-0000Tx-Jp; Thu, 16 Jan 2020 16:12:16 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7kT-0000RM-7u
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:12:02 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579191118; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=XW8XoFw5PNL4iewPQecr5FNhrMV0FYDDvOpMYIAPAHQ=;
 b=RX8AB+TYstNq72q5FsyTjUJccoFcjdPCDz84A0xqprveAjZ722Add0abOWylwTs9zQ3Pke3h
 PfRcQMQ49yFZ1XlTXxiJkWIAPiKYw+lKsGND/M6U+dsLYbisS/H4oLIvtEkROyJT4YbcByBu
 mv1gNvatM9k9tW9v5Lduda30TE8=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e208b47.7fc6f222d308-smtp-out-n01;
 Thu, 16 Jan 2020 16:11:51 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0A1DAC447A2; Thu, 16 Jan 2020 16:11:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4346EC43383;
 Thu, 16 Jan 2020 16:11:50 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 16 Jan 2020 21:41:50 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Add KRYO{3,4}XX CPU cores to spectre-v2 safe list
In-Reply-To: <20200116153235.GA18909@willie-the-truck>
References: <20200116141912.15465-1-saiprakash.ranjan@codeaurora.org>
 <20200116153235.GA18909@willie-the-truck>
Message-ID: <1a3f9557fa52ce2528630434e9a49d98@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_081158_606871_1D7140C8 
X-CRM114-Status: GOOD (  16.58  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 jhugo@codeaurora.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andre Przywara <andre.przywara@arm.com>, James Morse <james.morse@arm.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2020-01-16 21:02, Will Deacon wrote:
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
>>  arch/arm64/include/asm/cputype.h | 6 ++++++
>>  arch/arm64/kernel/cpu_errata.c   | 3 +++
>>  2 files changed, 9 insertions(+)
>> 
>> diff --git a/arch/arm64/include/asm/cputype.h 
>> b/arch/arm64/include/asm/cputype.h
>> index aca07c2f6e6e..7219cddeba66 100644
>> --- a/arch/arm64/include/asm/cputype.h
>> +++ b/arch/arm64/include/asm/cputype.h
>> @@ -85,6 +85,9 @@
>>  #define QCOM_CPU_PART_FALKOR_V1		0x800
>>  #define QCOM_CPU_PART_FALKOR		0xC00
>>  #define QCOM_CPU_PART_KRYO		0x200
>> +#define QCOM_CPU_PART_KRYO_3XX_SILVER	0x803
>> +#define QCOM_CPU_PART_KRYO_4XX_GOLD	0x804
>> +#define QCOM_CPU_PART_KRYO_4XX_SILVER	0x805
> 
> Jeffrey is the only person I know who understands the CPU naming here, 
> so
> I've added him in case this needs either renaming or extending to cover
> other CPUs. I wouldn't be at all surprised if we need a function call
> rather than a bunch of table entries...
> 
> That said, the internet claims that KRYO4XX gold is based on 
> Cortex-A76,
> and so CSV2 should be set...
> 

Yes the internet claims are true and CSV2 is set. SANITY check logs in 
here show ID_PFR0_EL1 - https://lore.kernel.org/patchwork/patch/1138457/

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
