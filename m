Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6B539A30
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 04:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4rom8VwDdlEJ9l/aeRDack8YeZGDqN4+KbB6mR0UH4=; b=QbIKHE6AJZGEMI
	MY/xMH2qrkpxCQ7yQLJLTlj9+aBY117S7QO9qGXF4IuBu3Q9uudGGn3Hby6ZT5E0xez+hYlmCvZOX
	iWeZ+DfTkVYA0IuxOIHmyne8KS86ZtQVO/3yvGJG7NbmUCut8Dl0C56sqt1OXKw+rNlJPNsQdYeju
	27CCSpyJ03WJG6EOpHeZ0TNCdcjjaEMnBJTxN2Ht5Ch8oPT4jG2xJZSeoMX7JBdfzJpztKryQl9mW
	pC4US5LVseswlvVAC1C6w+DpHLip18Jk0yd5M+ZyEkIXKujW6jprfYVAp21O90iG680/PG1eylHNx
	x7HV9s4SDqnPDKW4EBZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZRN2-00038u-2M; Sat, 08 Jun 2019 02:46:16 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZRMr-00038a-Lf
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 02:46:06 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 51E0A611DC; Sat,  8 Jun 2019 02:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559961965;
 bh=LuYcMhOCmjZOSBiOZ6Cxk4Oc3y54/yOla8k85eJQx6M=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=FWuFeseIeEKbmXiVLfg6jwxzbQz0pNOc5eplGIHSj8PvdxyKBTqyfL07Bas6EUS03
 Ec9ru/sMpI0bxIArE2zNIl25a22/YKV9rtBTcyJ/ejEVLlBH2GnX7gmXn+pY8mWGQE
 0gSyh1vv99O69A3Q0fIHWG4t8vcdj0fUOOn44K1U=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [192.168.1.6] (unknown [171.60.255.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: sricharan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 85746607C6;
 Sat,  8 Jun 2019 02:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559961905;
 bh=LuYcMhOCmjZOSBiOZ6Cxk4Oc3y54/yOla8k85eJQx6M=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=HYlzNtUo3zUb2/+6qjWsgnXhNHz+tZCw5eHWIzOa4J34aFEqhxwWxHvVqre1nZ6P+
 m/1EclxHtPeBJVFIi26PX3cis7phGiehwR2KFsg4SLJYLOLxoK0RSoZiqGowf0Ucpx
 vkRi/ljeH32ujaxLFSsfJ+T5YKFZcOAC2ctMdIOI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 85746607C6
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH 5/6] arm64: dts: Add ipq6018 SoC and CP01 board support
To: Sudeep Holla <sudeep.holla@arm.com>
References: <1559755738-28643-1-git-send-email-sricharan@codeaurora.org>
 <1559755738-28643-6-git-send-email-sricharan@codeaurora.org>
 <20190605173441.GA9903@e107155-lin>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <f2f13a86-b603-57d7-a06e-5187973bb336@codeaurora.org>
Date: Sat, 8 Jun 2019 08:14:59 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190605173441.GA9903@e107155-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_194605_751768_43B6E961 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linus.walleij@linaro.org, agross@kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, linux-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On 6/5/2019 11:04 PM, Sudeep Holla wrote:
> On Wed, Jun 05, 2019 at 10:58:57PM +0530, Sricharan R wrote:
>> Add initial device tree support for the Qualcomm IPQ6018 SoC and
>> CP01 evaluation board.
>>
>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
>> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
>> ---
>>  arch/arm64/boot/dts/qcom/Makefile            |   1 +
>>  arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts |  35 ++++
>>  arch/arm64/boot/dts/qcom/ipq6018.dtsi        | 231 +++++++++++++++++++++++++++
>>  3 files changed, 267 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
>>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018.dtsi
>>
> 
> [...]
> 
>> +
>> +		CPU3: cpu@3 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a53";
>> +			enable-method = "psci";
>> +			reg = <0x3>;
>> +			next-level-cache = <&L2_0>;
>> +		};
>> +
>> +		L2_0: l2-cache {
>> +			compatible = "cache";
>> +			cache-level = <0x2>;
>> +		};
>> +	};
>> +
>> +	pmuv8: pmu {
>> +		compatible = "arm,armv8-pmuv3";
> 
> We know these are Cortex-A53s, why not update these accordingly ?
> 

Ok, will change this.

Regards,
 Sricharan

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
