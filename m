Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC7D35EB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 16:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vuNn87PzGjT4pP8hTZcB5m/TULg2Knu9KwLpTr6dG+4=; b=IuDjyYYUxt/JYFg9bqhsXAnRQ
	l5lE9b4+oAaUPcllmBobdbWWoG6LdveUo3KA1PVHe4TCsNIaiVTwqDNOobgPzXlj3U5e9CKkZNrLI
	R7p+VVgpDduS3EkDcsBeDPOFzOV5PtGyacySNcxVSV880AZ2bNvSgHeasu0o1OY8dWJ23LdDPz6fq
	LC9bjBo+wqBlVYxSLg3YXIbyKn/m4Hu6KBbsH6n6HpakMd3Rr8OZQK+vXFH96bQSRV/50kKay42bN
	p7ynHGPhLCbYmQU/hWwmXePzdcg4V5OsK94NEniLvCzzsCSNnW63C2SQo3cIWZZ5U1p76dUF/uHqU
	Rmg4U2CNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYWaD-00063U-IA; Wed, 05 Jun 2019 14:08:05 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYWa6-000638-Cv
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 14:07:59 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 634576083E; Wed,  5 Jun 2019 14:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559743677;
 bh=NSod75b8DJcTQooBObsabB98SlwnE/yB22rLx7b7vo4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=VzxwyZGNZQA4zeBv/BThAhOh4uQbB2NV8zcoA2TC+zvKtIofIn3LXJaG+ewtqJxvh
 NaTwokrhZVSDgQ7r2AAWTJteIzwF4ri0ToLKOXwp4hhtdIvNwZSizFetVFjbgNUTiG
 XPYs4T09OT0NHzPW3k2rr0/7uAAzuM3KmD0bJFKA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.226.58.28] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jhugo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 37D4560213;
 Wed,  5 Jun 2019 14:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559743676;
 bh=NSod75b8DJcTQooBObsabB98SlwnE/yB22rLx7b7vo4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=AhttVGMIKT/YAg18mc+nO6i4RoK8LFyfN6scj22jM6vBiFF/l/SCvUpWt04O0KpV6
 +mUF+hnGMTEYjCt+Tb22tm+q3krR2EIA03Z09X19U2zXgJXI2dAaykEhNOFKJRgSXJ
 U++evfu2CgTkylaAVJE29JBFO0j69VAJJsdQLidw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 37D4560213
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jhugo@codeaurora.org
Subject: Re: [PATCH 7/8] usb: dwc3: qcom: Start USB in 'host mode' on the
 SDM845
To: Lee Jones <lee.jones@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-7-lee.jones@linaro.org>
 <20190605070029.GN22737@tuxbook-pro> <20190605083454.GO4797@dell>
From: Jeffrey Hugo <jhugo@codeaurora.org>
Message-ID: <d9ba98e6-3caf-62fc-45ca-944cb718b7e4@codeaurora.org>
Date: Wed, 5 Jun 2019 08:07:54 -0600
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190605083454.GO4797@dell>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_070758_475858_A9D25B0C 
X-CRM114-Status: GOOD (  25.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: balbi@kernel.org, david.brown@linaro.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, wsa+renesas@sang-engineering.com,
 alokc@codeaurora.org, kramasub@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/5/2019 2:34 AM, Lee Jones wrote:
> On Wed, 05 Jun 2019, Bjorn Andersson wrote:
> 
>> On Tue 04 Jun 03:44 PDT 2019, Lee Jones wrote:
>>
>>> When booting with Device Tree, the current default boot configuration
>>> table option, the request to boot via 'host mode' comes from the
>>> "dr_mode" property.
>>
>> This has been the default on the MTP, but this is changing as this is
>> causing issues when connected downstream from a hub (the typical
>> development case for the primary USB port of a phone like device) and
>> more importantly we don't have support for the PMIC blocks that control
>> VBUS.
> 
> My point is not about which mode is currently chosen.  It's more about
> the capability of choosing which mode is appropriate for a given
> system via DT.
> 
>> Once these issues are resolved the dr_mode would be "otg".
> 
> OTG doesn't work on this H/W, so we need to specify "host" mode.

How have you made that determination?

> 
>>> A property of the same name can be used inside
>>> ACPI tables too.  However it is missing from the SDM845's ACPI tables
>>> so we have to supply this information using Platform Device Properites
>>> instead.
>>>
>>
>> Afaict this would install a fall-back property, so in the case that we
>> have specified dr_mode in DT (or ACPI) that would take precedence. So
> 
> That's correct.
> 
>> the commit message should reflect that this redefines the default choice
>> to be "host", rather than "otg".
> 
> No problem. >
>> Which is in conflict with what's described for dr_mode in
>> Documentation/devicetree/bindings/usb/generic.txt
> 
> This implementation only affects ACPI based platforms.  When booting
> with DT, the description in that DT related document is still
> accurate.
> 
>> And this driver is used on a range of different Qualcomm platforms, so I
>> don't think this is SDM845 specific.
> 
> ACPI based platforms?
> 
> All the ones I've seen use the XHCI USB driver directly ("PNP0D10").
>   
>>> Signed-off-by: Lee Jones <lee.jones@linaro.org>
>>> ---
>>>   drivers/usb/dwc3/dwc3-qcom.c | 12 ++++++++++++
>>>   1 file changed, 12 insertions(+)
>>>
>>> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
>>> index 349bf549ee44..f21fdd6cdd1a 100644
>>> --- a/drivers/usb/dwc3/dwc3-qcom.c
>>> +++ b/drivers/usb/dwc3/dwc3-qcom.c
>>> @@ -468,6 +468,11 @@ static const struct acpi_device_id dwc3_qcom_acpi_match[] = {
>>>   };
>>>   MODULE_DEVICE_TABLE(acpi, dwc3_qcom_acpi_match);
>>>   
>>> +static const struct property_entry dwc3_qcom_acpi_properties[] = {
>>> +	PROPERTY_ENTRY_STRING("dr_mode", "host"),
>>> +	{}
>>> +};
>>> +
>>>   static int dwc3_qcom_probe(struct platform_device *pdev)
>>>   {
>>>   	struct device_node	*np = pdev->dev.of_node, *dwc3_np;
>>> @@ -603,6 +608,13 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
>>>   			goto platform_unalloc;
>>>   		}
>>>   
>>> +		ret = platform_device_add_properties(qcom->dwc3,
>>> +						     dwc3_qcom_acpi_properties);
>>> +		if (ret < 0) {
>>> +			dev_err(&pdev->dev, "failed to add properties\n");
>>> +			goto platform_unalloc;
>>> +		}
>>> +
>>>   		ret = platform_device_add(qcom->dwc3);
>>>   		if (ret) {
>>>   			dev_err(&pdev->dev, "failed to add device\n");
> 


-- 
Jeffrey Hugo
Qualcomm Datacenter Technologies as an affiliate of Qualcomm 
Technologies, Inc.
Qualcomm Technologies, Inc. is a member of the
Code Aurora Forum, a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
