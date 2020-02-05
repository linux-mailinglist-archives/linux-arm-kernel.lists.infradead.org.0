Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3973A153060
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 13:07:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JsGiJZlLQ1vWtkxCBLX75E3gwk2iBPx3U0582+ZNI5c=; b=t9AYgpUNsj5jRtZPPb8BRlr3y
	t7Rh9RImCZS55hJVDFNm4UH+KbC1b9RSVl9Ci6KcRfPPqh/Aq0Cav5ZkskT2QSPRppAM3oLrHeq/o
	B0idTqRVqJ05a8oi+Zbm1pbNj0Lf7b/fSS/tgUnO0pN5dHpKI5vKJL49piukfMg/xqSdIXSd/jG9/
	mEh/yh8169uqLXajeuJ5EKofBh04eKVK0hI/ZxVqMsKXQ3nqo5pZgDtU8EzLMZ8at3PySyiSlcR21
	HO6xISW+XJBNY5j2BjlxEGs2kK7QTY1d9eELn8bCE3/PVNj15VXzExs5wqVLDJWWlVUGPds053szY
	Wa6c+pCsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izJT5-0001Um-U4; Wed, 05 Feb 2020 12:07:43 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izJSx-0001Tt-Sq
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 12:07:38 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580904456; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=Rw6fpPoaZ9TjeIMYqlvtFgTZBBMNHEMBUrNzr/IGp5k=;
 b=La4ZS5xnctKcK1LMA3L8/iZy3QuTTgwqPs4uSUNtMlJFYaxXWMHoCI9B+aAz/aSlUbsmqv+r
 LCkH6nQSYSPxTjTChAbSU+mRdN8I39U3QA61606GBwltqSjh5g7cX2/5cLcDfYMyH/bCaLKN
 3eXYNSUV8ofv/F8pYTJb9HoIUdE=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3ab001.7fdfde351298-smtp-out-n03;
 Wed, 05 Feb 2020 12:07:29 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 24066C447A0; Wed,  5 Feb 2020 12:07:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.206.13.37]
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: mkshah)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1DF5BC43383;
 Wed,  5 Feb 2020 12:07:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1DF5BC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=mkshah@codeaurora.org
Subject: Re: [PATCH v3 6/7] arm64: dts: qcom: sc7180: Add cpuidle low power
 states
To: Matthias Kaehlcke <mka@chromium.org>
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
 <1580736940-6985-7-git-send-email-mkshah@codeaurora.org>
 <20200204231509.GB18972@google.com>
From: Maulik Shah <mkshah@codeaurora.org>
Message-ID: <b07c9989-b44a-969c-4c4a-9f9465781e45@codeaurora.org>
Date: Wed, 5 Feb 2020 17:37:20 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200204231509.GB18972@google.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_040736_912575_8D4201B2 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: dianders@chromium.org, devicetree@vger.kernel.org, lsrao@codeaurora.org,
 Lorenzo.Pieralisi@arm.com, rnayak@codeaurora.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, swboyd@chromium.org, david.brown@linaro.org,
 agross@kernel.org, ilina@codeaurora.org, sudeep.holla@arm.com,
 ulf.hansson@linaro.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2/5/2020 4:45 AM, Matthias Kaehlcke wrote:
> On Mon, Feb 03, 2020 at 07:05:39PM +0530, Maulik Shah wrote:
>> Add device bindings for cpuidle states for cpu devices.
>>
>> Cc: devicetree@vger.kernel.org
>> Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sc7180.dtsi | 78 ++++++++++++++++++++++++++++++++++++
>>   1 file changed, 78 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
>> index 8011c5f..0aa0ced 100644
>> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
>> @@ -86,6 +86,9 @@
>>   			compatible = "arm,armv8";
>>   			reg = <0x0 0x0>;
>>   			enable-method = "psci";
>> +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
>> +					   &LITTLE_CPU_SLEEP_1
>> +					   &CLUSTER_SLEEP_0>;
> These entries are deleted again by the next patch in this series ('arm64:
> dts: qcom: sc7180: Convert to the hierarchical CPU topology layout').
> What is the point in adding them in the first place?

Clubbed 6th and 7th patch in v4 series.

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
