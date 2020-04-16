Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F591AC4A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMtO5kBzgYsussnKrheaKvBXGsJUoxPZFL8CGDqeJKI=; b=cZWpOGtVGZAIDX
	GK5IADUA2xeT+NquPPrA1Af75RM6O12OdPQuSb8LciFd9hsuuM1ClGfYlPPN+kZHrOtuuzqXnpohg
	kncS4Z2OueZ60pOwrbr8TFUYd7t/+fynasqES9/RCzpk3mlW2Lms2a/TstbP4lP/uJP9lLzawUi5c
	QSRQ+K0D74kLg2pDKnU9j/2GwGPl/QlDcili4s4celYdpzhT1nHfUNRzWSCbxuAg9xEl8FiNl319w
	mpS3D16OKS8u8HKTCvrH6fRcI5eUsltWZGAROMP7gU11iiR7EskgD7HCrWrePnN63h8A+jayA5Jkv
	chDyD7Q4YPJJInfO84cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP56Y-0000ZO-AD; Thu, 16 Apr 2020 14:02:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP56K-0000Xl-Lc; Thu, 16 Apr 2020 14:02:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id v8so2612788wma.0;
 Thu, 16 Apr 2020 07:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NHqfdeNveULnM7vQAbJglacV+XZ4nJdoryqrPGPSWH0=;
 b=joAdCPp1vLkSbqtIwf3+wLlZtkPXrnifqtZ7/pDNKHE5OT01834YQYcWRvCorRphmA
 310gNbj+A8S3oahU7wcGkJiCOoBzmwTlZTl7uT+gehWEXbQHl3HJ/QnWzYMrKU1qjg3e
 zxGQD6Lc4IdSrNdSiAyKW4NKk3A/glK+jt3xv5gClHrFMfhDrmGOYSOzEmzxki3SWVpA
 MubOA85JiEnSOZBdfdWDSsudvebrjpXqzDY0fSvczrFXBRH6Y5aM5kZyO9zURhRH408N
 W7ZkmLOTf5gcVncU6pvW7GEFIETnpmo2r/utHGnjS4flkxmwX4hruSPYDXbuRADMQua5
 UTgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NHqfdeNveULnM7vQAbJglacV+XZ4nJdoryqrPGPSWH0=;
 b=ES/bsQdMdotj8So1upfoWRC5WJmkZlj+6BJD7DLrU4jvVQ2OYdCDPHB46Q3U5+IcCx
 Y1XtdDuOtpkPWci+zb7IQY8+VTtbUe2E1tbysOJHntZ4hoYjIcexlzqW81KMt7agIMca
 9L80590xUqtwNZq32EXnATBJ4Kc5UiBtCd/T0lAVV4xzLQQ5Na/9DU66QS66smGsjF8w
 BAz5tIF8hwwgvgAzpV1rRmLrGPI5AQjLPffitnv78EFUaAKIrlGGcgdkUbHjtVAhCzPu
 +jjtLjRtNHOJu/ll8fUjivdbNAF3Yvr2mgT5MKAAJ6u62hloo3ci43JTD8pFavhx8u5k
 lC+w==
X-Gm-Message-State: AGi0PuYFv7z68BFry7g/lVrEFMwdPhyXqqCcKgiO/JiJeFZUFLzqpgB7
 VaEeBOdhKzogu2avoLx3e90=
X-Google-Smtp-Source: APiQypJV2H42TwzOHO9PsPVCAA/RA8bXt0qbCwFdMXRNN2D2+xQOY5NEhSB4Y23QQTB8V/rxI3S6Yg==
X-Received: by 2002:a05:600c:2194:: with SMTP id
 e20mr5049382wme.22.1587045761652; 
 Thu, 16 Apr 2020 07:02:41 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id p10sm26933094wrm.6.2020.04.16.07.02.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Apr 2020 07:02:40 -0700 (PDT)
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Add RGA support to the PX30
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <20200416115047.233720-3-paul.kocialkowski@bootlin.com>
 <478f0a8b-f819-62f4-83b8-27918c4c2431@gmail.com>
 <20200416132442.GI125838@aptenodytes>
 <f4ad8ea4-7904-1458-e564-2d20c87ed417@gmail.com>
 <20200416135519.GJ125838@aptenodytes>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <f97d7661-834d-3fbf-2cd9-0b37c487e8f7@gmail.com>
Date: Thu, 16 Apr 2020 16:02:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200416135519.GJ125838@aptenodytes>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_070244_730483_35625B4B 
X-CRM114-Status: GOOD (  23.79  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hansverk@cisco.com>,
 linux-rockchip@lists.infradead.org, Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/16/20 3:55 PM, Paul Kocialkowski wrote:
> Hi,
> 
> On Thu 16 Apr 20, 15:44, Johan Jonker wrote:
>> On 4/16/20 3:24 PM, Paul Kocialkowski wrote:
>>> Hi,
>>>
>>> On Thu 16 Apr 20, 15:02, Johan Jonker wrote:
>>>> Hi Paul,
>>>>
>>>> The conversion of rockchip-rga.txt to rockchip-rga.yaml by myself just
>>>> has been approved by robh.
>>>
>>> Huh, I looked around for ongoing related work but missed it.
>>> I'll definitely rebase on top of your series and use the yaml description
>>> instead. Thanks!
>>>
>>>> Maybe place dts patches at the end of a patch serie.
>>>> Could you include a &rga patch if your device is supported in mainline,
>>>> so we can test with:
>>>> make ARCH=arm64 dtbs_check
>>>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-rga.yaml
>>>
>>> I tested with the PX30 EVB so I can surely add a node there if that turns
>>> out necessary (see below).
>>>
>>>> Johan
>>>>
>>>> On 4/16/20 1:50 PM, Paul Kocialkowski wrote:
>>>>> The PX30 features a RGA block: add the necessary node to support it.
>>>>>
>>>>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>>>>> ---
>>>>>  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
>>>>>  1 file changed, 11 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
>>>>> index 75908c587511..4bfbee9d4123 100644
>>>>> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
>>>>> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
>>>>> @@ -1104,6 +1104,17 @@ vopl_mmu: iommu@ff470f00 {
>>>>>  		status = "disabled";
>>>>>  	};
>>>>>  
>>>>> +	rga: rga@ff480000 {
>>>>> +		compatible = "rockchip,px30-rga";
>>>>> +		reg = <0x0 0xff480000 0x0 0x10000>;
>>>>> +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
>>>>> +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
>>>>> +		clock-names = "aclk", "hclk", "sclk";
>>>>> +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
>>>>> +		reset-names = "core", "axi", "ahb";
>>>>> +		power-domains = <&power PX30_PD_VO>;
>>>>
>>>> 		status = "disabled";
>>>
>>> As of 5.6, the rk3399 has the node enabled by default. Did that change?
>>
>> 'status' disappeared during review for rk3399 between v2 and v3, but
>> doesn't mention the reason. If someone can give more info here?
>>
>> https://lore.kernel.org/lkml/1500101920-24039-5-git-send-email-jacob-chen@iotwrt.com/
>>
>> https://lore.kernel.org/lkml/1501470460-12014-5-git-send-email-jacob-chen@iotwrt.com/
>>
>>>
>>> Since it's a standalone block that has no I/O dependency, I don't really see
>>> the point of disabling it by default.
>>
>> Vop, hdmi and other video devices are also disabled.
>> Follow the rest I think...
> 
> Well, these blocks do have related I/O ports so it makes sense not to enable
> them by default because of pinmux, or because there might be no connector
> populated/routed.
> 
> For a memory to memory internal block, I don't see any reason why.
> It's definitely not board-specific and having to add these nodes for every board
> that has them is kind of a pain and might be overlooked. This will easily result
> in the feature not being available for end users without having to change the
> dt.
> 
> Also, the vpu node is always enabled on rockchip (and sunxi) platforms.
> I think these are better examples to follow.

From PX30 TRM-Part1:

Power domain is shared by vop and dsi.
It's up to the user what blocks he/she enables and what power it uses.

PD_VO: VOP_M, VOP_S, RGA and DSI

> 
> Cheers,
> 
> Paul
> 
>>>
>>> What do you think?
>>>
>>> Cheers,
>>>
>>> Paul
>>>
>>>>> +	};
>>>>> +
>>>>>  	qos_gmac: qos@ff518000 {
>>>>>  		compatible = "syscon";
>>>>>  		reg = <0x0 0xff518000 0x0 0x20>;
>>>>>
>>>>
>>>
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
