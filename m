Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BA116F521
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 02:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtsD7zpU26zyRHaToAef9vS6AKH7rff1o8s6PyiIWR8=; b=UnQ8U08fbk0BtC
	O6B6R6+ofc4zKm8A+ySqTON+NGcbOmfRfLOmsJqLYdBxB8xj7E3RfycA0z7FBv0JVvsqeGaAvJXus
	kS6tJMuPdwrOPTecDHFQyHk1/IGgxxMbxJEfjzMv+YqFV91kEeG2gHKTQTV/7xLUD3THZ9XjqZLRW
	0LrEiamY4eUxiksyEA1FqUziGbpaNufLV83Yux+Ii0olc5yix1euVaYja/qOLT4cz6ycaXPCiBbtv
	BM9K16+x+aqiR6HzOo0hEAHQUHJGyi48gdEEcLovAarefDRRFPeKdz5nuEtvnmFPiowc5SXaKxtJY
	/+B0Ey4wxwN/nukxFMGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6leO-0008G3-UB; Wed, 26 Feb 2020 01:38:12 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6leD-0008FX-9i
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 01:38:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582681081; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: References: Cc: To:
 Subject: From: Sender; bh=BBWKcq7dFUCB/c3IP8dQkRGrntjmGuegJTnAZqmvUMU=;
 b=ZxASjVAgPAlbuKh0uHhvgU2PNwHugkAVG/THdQ15DZKW9pEtyYs1m4T0PA8xIelVpGCfBSO9
 9yWkC2ipWA2QkCNU2+9YGFb9/i4auBXsd8WGvIu8XBkxB+z3nrz6HurYE8F4GPVBOeveY00W
 R810q0EXaV6VMoXajJqzY1qwugQ=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e55cbf3.7fd9590a2810-smtp-out-n02;
 Wed, 26 Feb 2020 01:37:55 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 55896C447A0; Wed, 26 Feb 2020 01:37:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.134.65.5] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: eberman)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5A64DC4479D;
 Wed, 26 Feb 2020 01:37:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5A64DC4479D
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=eberman@codeaurora.org
From: Elliot Berman <eberman@codeaurora.org>
Subject: Re: [PATCH v2 2/3] firmware: psci: Add support for dt-supplied
 SYSTEM_RESET2 type
To: Sudeep Holla <sudeep.holla@arm.com>
References: <1582577858-12410-1-git-send-email-eberman@codeaurora.org>
 <1582577858-12410-3-git-send-email-eberman@codeaurora.org>
 <20200225110346.GF32784@bogus>
Message-ID: <1d7fecf8-3a7f-57e5-5c13-73de89d52aa2@codeaurora.org>
Date: Tue, 25 Feb 2020 17:37:53 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200225110346.GF32784@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_173802_206763_022ED90B 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Trilok Soni <tsoni@codeaurora.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 David Collins <collinsd@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Prasad Sodagudi <psodagud@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/25/2020 3:03 AM, Sudeep Holla wrote:
> On Mon, Feb 24, 2020 at 12:57:37PM -0800, Elliot Berman wrote:
>> @@ -493,6 +494,7 @@ typedef int (*psci_initcall_t)(const struct device_node *);
>>  static int __init psci_0_2_init(struct device_node *np)
>>  {
>>  	int err;
>> +	u32 param;
>>
>>  	err = get_set_conduit_method(np);
>>  	if (err)
>> @@ -505,7 +507,19 @@ static int __init psci_0_2_init(struct device_node *np)
>>  	 * can be carried out according to the specific version reported
>>  	 * by firmware
>>  	 */
>> -	return psci_probe();
>> +	err = psci_probe();
>> +	if (err)
>> +		return err;
>> +
>> +	if (psci_system_reset2_supported &&
>> +	    !of_property_read_u32(np, "arm,psci-sys-reset2-param", &param)) {
>> +		if ((s32)param > 0)
> 
> What is the point on signed comparison here ? You are assuming all vendor
> reset also as architecture by doing so which is wrong.
> 
>> +			pr_warn("%08x is an invalid architectural reset type.\n",
>> +				param);
> 
> I thought the point was to have vendor reset here. Based on the 3/3 you
> see to have vendor reset bit set, you ignore that by doing signed comparison
> which is wrong and even the message is wrong. Specification defines only
> one architectural reset(WARM RESET) and all others need to be vendor specific.
> 
> --
> Regards,
> Sudeep
> 
I might've gone crazy, but all vendor-specific reset types would be
negative when cast as s32. Thus the check returns true only for an invalid
architectural reset type. I can switch to checking bits instead of using 
cast in v3 to avoid the confusion.

Alternatively, I could rename the DT property to
"arm,psci-sys-reset2-vendor-param" and then always set the 31st bit so that
it is impossible to provide an invalid architectural reset type in DT.

Let me know what is preferred.

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
