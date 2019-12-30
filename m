Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F4512CDFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 10:10:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Y2qQCxtIKhUXlFjVW9cXuAupfcdbDgqzWpD7mzi9iI=; b=p3KECw+xgkpNHM
	/HZxIevHYJ64XDwNtE7OtqqKJciy8Qiabk6pWu4HbRrIXny47bqvOi8+ith0DxYUNG17rR7vlK3tM
	C0/nVTe4UdcdB7Tkf7fqMSKPVI0044w4U43VKEvNWJtAtBZw20QQl90yO/LjVLqQJ/t7GN6X+8jX8
	0NAlwGgf6jOIhgWasMXoBquW3XhkfHG2fVcUn6kn2+Ugmo4ma4UASQdcvL691nhvlXc8fqdibQ8zr
	yq7YyZu0YcLJN8oZkPTbtam0rPDjvrb1LLZaFNjZnP/uzd/OwuKvs1iLLfCk6wxLNpnMguJn0C4XT
	s3cWbQ8NngWO52I4dvdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilr4E-0005bl-RS; Mon, 30 Dec 2019 09:10:26 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilr43-0005aw-Nu
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 09:10:18 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577697016; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=scnmlDxgkOxtUL/+UzPVVikWz+SJ+wQZ6woqtEvg3SU=;
 b=GFBIjpm5pSjuHhXyB/uJ79MVOWnpbmCmGEZVnbIn+/Bm/sJArpekX3gk+hzXp7e2o8xnCk4v
 51Zi+itmGXVP+oVeFjlBN8ki3ZoMZovnkJy3BcZ8SemUgLTnZC8VxHzH27pyOUWvPDEPNLEB
 XadSqfnkXlR112noqU3Rs8E1fWA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e09bef3.7fe85b2b2308-smtp-out-n02;
 Mon, 30 Dec 2019 09:10:11 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AAC27C433CB; Mon, 30 Dec 2019 09:10:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.201.2.161]
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 549C9C43383;
 Mon, 30 Dec 2019 09:10:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 549C9C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH V2 6/7] arm64: dts: Add ipq6018 SoC and CP01 board support
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
 <1576752109-24497-7-git-send-email-sricharan@codeaurora.org>
 <20191229032944.GM3755841@builder>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <960d2f8b-800c-10ee-896e-f04d0e680e1a@codeaurora.org>
Date: Mon, 30 Dec 2019 14:40:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191229032944.GM3755841@builder>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_011016_622763_E5881CF4 
X-CRM114-Status: GOOD (  24.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org,
 sivaprak@codeaurora.org, linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,
  Thanks again for the review.

On 12/29/2019 8:59 AM, Bjorn Andersson wrote:
> On Thu 19 Dec 02:41 PST 2019, Sricharan R wrote:
> 
>> Add initial device tree support for the Qualcomm IPQ6018 SoC and
>> CP01 evaluation board.
>>
> 
> Hi Sricharan, thanks for the rework, this looks pretty good now, just
> some minor comments below.
> 
>> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
>> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> 
> Should this have some Co-developed-by?
> 

hmm, should be added here as well. will add it.

>> ---
>>
>>  [V2] Sorted nodes based on address, name, label.
>>       Removed unused clock nodes.
>>       Addressed other review comments.
>>
>>  arch/arm64/boot/dts/qcom/Makefile            |   1 +
>>  arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts |  41 +++++
>>  arch/arm64/boot/dts/qcom/ipq6018.dtsi        | 215 +++++++++++++++++++++++++++
>>  3 files changed, 257 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
>>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>> index 6498a1e..2b24998 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -1,6 +1,7 @@
>>  # SPDX-License-Identifier: GPL-2.0
>>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8016-sbc.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-db820c.dtb
>> +dtb-$(CONFIG_ARCH_QCOM)	+= ipq6018-cp01-c1.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk01.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-mtp.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-longcheer-l8150.dtb
>> diff --git a/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
>> new file mode 100644
>> index 0000000..82a6024
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
>> @@ -0,0 +1,41 @@
>> +// SPDX-License-Identifier: GPL-2.0
> 
> Please dual license as GPL+BSD
> 

 ok.

>> +/*
>> + * IPQ6018 CP01 board device tree source
>> + *
>> + * Copyright (c) 2019, The Linux Foundation. All rights reserved.
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "ipq6018.dtsi"
>> +
>> +/ {
>> +	model = "Qualcomm Technologies, Inc. IPQ6018/AP-CP01-C1";
>> +	compatible = "qcom,ipq6018-cp01", "qcom,ipq6018";
>> +
>> +	aliases {
>> +		serial0 = &blsp1_uart3;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial0:115200n8";
>> +		bootargs-append = " swiotlb=1";
>> +	};
>> +};
>> +
>> +&blsp1_uart3 {
>> +	pinctrl-0 = <&uart_pins>;
>> +	pinctrl-names = "default";
>> +	status = "ok";
>> +};
>> +
>> +&tlmm {
>> +	uart_pins: uart_pins {
> 
> Reference the &uart_pins directly, and please use a more specific name.
> 

 ok.

>> +		mux {
> 
> I would suggest that you either flatten the "mux" subnode and define the
> properties directly in &uart_pins; or you split it the functional pieces
> of rx { } tx { }.

 ok.

> 
> And right now you're duplicating the properties between the dtsi and the
> dts, either drop one of them or define the function in the dtsi and add
> the drive-strenght and bias-pull-down here.
> 

 ok, understand, will fix.

>> +			pins = "gpio44", "gpio45";
>> +			function = "blsp2_uart";
>> +			drive-strength = <8>;
>> +			bias-pull-down;
>> +		};
>> +	};
>> +};
>> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> new file mode 100644
>> index 0000000..269287c
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> @@ -0,0 +1,215 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * IPQ6018 SoC device tree source
>> + *
>> + * Copyright (c) 2019, The Linux Foundation. All rights reserved.
>> + */
>> +
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +#include <dt-bindings/clock/qcom,gcc-ipq6018.h>
>> +
>> +/ {
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +	interrupt-parent = <&intc>;
>> +
>> +	reserved-memory {
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		tz: tz@48500000 {
>> +			reg = <0x0 0x48500000 0x0 0x00200000>;
>> +			no-map;
>> +		};
>> +	};
>> +
>> +	soc: soc {
> 
> soc@0
> 
> Shouldn't this be sorted after 'p'?
> 

 yes, will fix this as well.


Regards,
  Sricharan

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
