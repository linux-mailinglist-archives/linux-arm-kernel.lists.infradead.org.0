Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E54A181B81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 15:39:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRz1BfopZEFa6GZue9Za8gwPilSimVnn++ck+6YWQ4w=; b=FtrLcuN21c12th
	07O1qoj+VqK8XA9vFugwtW00s7iAnOC+9ijdlovSDgwfdq7jT8qUARqlGHXPcZY/w6h2w2WJ+EMYM
	OZ9SJULEokXiGYGGedEiPDsnxNr/lit2xID1DrOv8eYVLKa9SSVbQa+/UMAoCq1/lYB8N+xv5kFh/
	SfVxk22+132MDscNaVAFe7q+CubEqHZTxQSCOV5UEtt7y9yJWUJyamnwtM0ifn0vR6pnCaLWWRqcu
	waMU9ELWO6brH6tI2NZ7u/Mj+zp9y834RAVMIxMDGnYkqPj21iOZxT3ODw9HuKfdw377VWL0B/fhF
	C/7R/Ev7R7cpuiL8xg3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2WL-0002TQ-BL; Wed, 11 Mar 2020 14:39:41 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2WB-0002Sl-HZ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 14:39:34 +0000
Received: by mail-il1-x143.google.com with SMTP id g126so2228235ilh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 07:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wy+o8H7bDaEo8BGddDsCo4a2Cywi6MmVF56mviUaRRY=;
 b=x9hyoRKSsjcNql8Vs3VDhHu71U7F4mVlz+l+9FFNuzzath0jvqI2Dy20OaCZrSbi64
 8n7VekEx3zlK1oMbjct/nFIPRc9TFXpuqiM7kigXd5fqYqGpv3Slvldg4Qc7R6PV2xih
 IXwB6jOdD7D/4nMP5juQIBgH4PDziLPcKEz1EJ19eD79TdJR40mzNUIX9vb1rc1gySzX
 FIgMzmFkRKfEH0xeeyhy6d0IvS97CZP54idilKEoybizu/hSnMFoYgHv71n5Jz+4Gsts
 0a/h8tBSKBHSlTWjvfxw6wsQQ/ddTuCD+cqE8/rZd176hzJbW+ZzVJWR67I4Jy83dI2W
 dCZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wy+o8H7bDaEo8BGddDsCo4a2Cywi6MmVF56mviUaRRY=;
 b=QQzTWzN/qMhjyUD4zto7VDa6sxoHvsB4RXTVJ5hnvtcZ0VwrRk2cnkvHu2/34hS5A5
 HXU908+dnFw/mwMUYj1kdqYexbvWZ8uAYY4TEQdk4bNwau7ZmgIE1qh2aZxkeB50alJz
 Wn16iuQUIeH2pq/chZ7e9T5V64loY2+pmzQqofCcWKBYDAa3mO+4F27GSzjwty1DIQmI
 oY9pGTchLNFjIQAe2MWrTgdpKIuGUYEXM4TTvik5zMjc2CayvANk4V6qSljQ0B3EkwmL
 G1mnxOP26zTXsc9SFdku+yeWl7zBK7SUgpdoVxSY/K1OpEV0gNakhj+n3S0Vra9xlXR2
 C2wg==
X-Gm-Message-State: ANhLgQ1vbCT6QIW/fFWnk4QapVtWIyitJ1pDYB+LV/9KVrvH1HPV4b2a
 L0cOFEGKZnq/B8VZVrZJS8XpZw==
X-Google-Smtp-Source: ADFU+vsoLXbHGd59x7Q6lscbF+LgH2AFuhNx/jrcSAvda5RCT92+oTo8i3ASrpHiJWGnWl/FdM3Wng==
X-Received: by 2002:a92:d9d0:: with SMTP id n16mr3509344ilq.200.1583937570436; 
 Wed, 11 Mar 2020 07:39:30 -0700 (PDT)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id h14sm8868430iow.23.2020.03.11.07.39.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 07:39:29 -0700 (PDT)
Subject: Re: [PATCH v2 17/17] arm64: dts: sdm845: add IPA information
To: Jon Hunter <jonathanh@nvidia.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross
 <agross@kernel.org>, David Miller <davem@davemloft.net>
References: <20200306042831.17827-1-elder@linaro.org>
 <20200306042831.17827-18-elder@linaro.org>
 <ec9776b3-ac79-8f9d-8c4d-012d62dc8f72@nvidia.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <4decbc8a-b0a6-8f10-b439-ade9008a4cff@linaro.org>
Date: Wed, 11 Mar 2020 09:39:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <ec9776b3-ac79-8f9d-8c4d-012d62dc8f72@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_073931_614624_8EAA845F 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Dan Williams <dcbw@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Evan Green <evgreen@google.com>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/11/20 5:49 AM, Jon Hunter wrote:
> 
> On 06/03/2020 04:28, Alex Elder wrote:
>> Add IPA-related nodes and definitions to "sdm845.dtsi".
>>
>> Signed-off-by: Alex Elder <elder@linaro.org>
>> ---
>>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 51 ++++++++++++++++++++++++++++
>>  1 file changed, 51 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
>> index d42302b8889b..58fd1c611849 100644
>> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
>> @@ -675,6 +675,17 @@
>>  			interrupt-controller;
>>  			#interrupt-cells = <2>;
>>  		};
>> +
>> +		ipa_smp2p_out: ipa-ap-to-modem {
>> +			qcom,entry-name = "ipa";
>> +			#qcom,smem-state-cells = <1>;
>> +		};
>> +
>> +		ipa_smp2p_in: ipa-modem-to-ap {
>> +			qcom,entry-name = "ipa";
>> +			interrupt-controller;
>> +			#interrupt-cells = <2>;
>> +		};
>>  	};
>>  
>>  	smp2p-slpi {
>> @@ -1435,6 +1446,46 @@
>>  			};
>>  		};
>>  
>> +		ipa@1e40000 {
>> +			compatible = "qcom,sdm845-ipa";
>> +
>> +			modem-init;
>> +			modem-remoteproc = <&mss_pil>;
>> +
>> +			reg = <0 0x1e40000 0 0x7000>,
>> +			      <0 0x1e47000 0 0x2000>,
>> +			      <0 0x1e04000 0 0x2c000>;
>> +			reg-names = "ipa-reg",
>> +				    "ipa-shared",
>> +				    "gsi";
>> +
>> +			interrupts-extended =
>> +					<&intc 0 311 IRQ_TYPE_EDGE_RISING>,
>> +					<&intc 0 432 IRQ_TYPE_LEVEL_HIGH>,
>> +					<&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
>> +					<&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
>> +			interrupt-names = "ipa",
>> +					  "gsi",
>> +					  "ipa-clock-query",
>> +					  "ipa-setup-ready";
>> +
>> +			clocks = <&rpmhcc RPMH_IPA_CLK>;
>> +			clock-names = "core";
>> +
>> +			interconnects =
>> +				<&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_EBI1>,
>> +				<&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_IMEM>,
>> +				<&rsc_hlos MASTER_APPSS_PROC &rsc_hlos SLAVE_IPA_CFG>;
>> +			interconnect-names = "memory",
>> +					     "imem",
>> +					     "config";
>> +
>> +			qcom,smem-states = <&ipa_smp2p_out 0>,
>> +					   <&ipa_smp2p_out 1>;
>> +			qcom,smem-state-names = "ipa-clock-enabled-valid",
>> +						"ipa-clock-enabled";
>> +		};
>> +
>>  		tcsr_mutex_regs: syscon@1f40000 {
>>  			compatible = "syscon";
>>  			reg = <0 0x01f40000 0 0x40000>;
>>
> 
> 
> This change is causing the following build error on today's -next ...
> 
>  DTC     arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dtb
>  arch/arm64/boot/dts/qcom/sdm845.dtsi:1710.15-1748.5: ERROR (phandle_references): /soc@0/ipa@1e40000: Reference to non-existent node or label "rsc_hlos"

This problem arises because a commit in the Qualcomm SoC tree affects
"arch/arm64/boot/dts/qcom/sdm845.dtsi", changing the interconnect provider
node(s) used by IPA:
  b303f9f0050b arm64: dts: sdm845: Redefine interconnect provider DT nodes

I will send out a patch today that updates the IPA node in "sdm845.dtsi"
to correct that.

In the mean time, David, perhaps you should revert this change in net-next:
  9cc5ae125f0e arm64: dts: sdm845: add IPA information
and let me work out fixing "sdm845.dtsi" with Andy and Bjorn in the
Qualcomm tree.

Thanks.

				-Alex

> Cheers
> Jon
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
