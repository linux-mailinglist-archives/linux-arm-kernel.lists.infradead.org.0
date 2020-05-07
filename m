Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A36BF1C9F3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 01:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tX6PQlCVAZ5K8kviFWGmZw73Y3vQNxPsqIyCaO0M5Hw=; b=IPIJGG38/PQ92x
	fKYqXxYQCH2m+Q+lIdttKwG9IrvOEYfeP5kpK3Rmh1ba2CmFWMOH6zSGFUvbFnNAOpxMo5sfS05zt
	L1oRXqACLNJs5zK+Rnv22N+bRwetTPD8fDWeQg+UI/tgKtbnncidveT7N8SZ/CKOOzfw1jDoW0HSS
	/38EC/YV+SZn+0Ao7COsxh6PtVsGpjIFlb4J1oejj9Ay8BAQII7jJwAq3BkznnYKJS4vIT+vQI61/
	5ofH/TR6Sx37J8w2SFBuPZTkJY+It5bOAVz7HbtB2Lhn+SD/PQkoNUHciG7RfitQgXWt1sZXQh7N6
	HtauyUABiuR8Ddn/Ai8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWq7q-0004wB-83; Thu, 07 May 2020 23:40:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWq7f-0004q2-O1; Thu, 07 May 2020 23:40:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id h4so8432432wmb.4;
 Thu, 07 May 2020 16:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LeEjSoC+KWHnDVL+GAb88TtcLPL+vxgTH1UqxiwLGBE=;
 b=jJI7iisBRN9lUPdFF2pIY3P84wTuq5rziNa8d2Njwyf5twXA4f2pAJ22picElxpgCN
 RyBGlJMHmqCVyGXHpafltfYuFvjwQjXLeErMK7RbRKwR4i+jSCyDu/Gm9UGj92UXGQQV
 4xuAE50GfM5+SUDeyXcWbvxi81C49veMoelfexh+sxYyvi6Xd3Hf9sHZwf2oJcdfqZ4c
 sj/MaurplX/+lA2Srv921WfXEfqyWGZrz6mDmuGsdFSU76YgtdC4NYP5L4n7Aew+1boG
 OaND5pJ0wkJhUVj19FxWH28LxXSvtdi1BUQOEzbpOOID4pvqpenZMTLZ0B7mDjS+3XJS
 cwzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LeEjSoC+KWHnDVL+GAb88TtcLPL+vxgTH1UqxiwLGBE=;
 b=JW4D841p8sI2aHT9twOg3XSAMQ9OOkb6ruLZyZNRqpejK6299ATgj2Sy1w5hOI3pss
 D7mRdMnuisDBTQ738MBEGkurNLmnMrkGqpv1PLI2Z1/xVqa52VWJI0pU+ozZZir4b6zv
 hF3N9sUti5X8kxui/3R6op293qokGNA4sj0zIgCP8VnSpkOwI7vP9uDAN0o3D/XcgwcV
 uBC8x43LaGGKfAyf69NBPC/x/h4EWOEgRvAapzmfc2vl++s2asUzQcsUrEqsRJCDGsco
 q7xoSck9w0PrP+rU53W6enbqms+kMPCNgf+aUYW/XUiQRO2WEgM7Am8LnQqjyuMX7/rE
 1Nfg==
X-Gm-Message-State: AGi0Puag9/uYUOoUOCZhkiN9ygeLr0Bu1fngCJsQUFx+u8CdYjGN8mls
 Kp5xJzFlh4Kb1ku3/S//E+g=
X-Google-Smtp-Source: APiQypIMjl0Gv1T78MM/jPEcJHt9TQ1o4EZ7MA/8Dhv4FzUE6INX4d2J+WXVM11MeDplM6s2Vrwqbg==
X-Received: by 2002:a05:600c:22d3:: with SMTP id
 19mr13644233wmg.110.1588894810321; 
 Thu, 07 May 2020 16:40:10 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c128sm10549504wma.42.2020.05.07.16.40.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 16:40:09 -0700 (PDT)
Subject: Re: [PATCH v3 2/4] arm64: dts: rockchip: Add RGA support to the PX30
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20200430164245.1630174-3-paul.kocialkowski@bootlin.com>
 <c3954924-c220-73ef-06dd-85b6876be819@gmail.com>
 <20200507202558.GK2422122@aptenodytes>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <7112d1fa-a872-c66f-0ece-a77ba1f852de@gmail.com>
Date: Fri, 8 May 2020 01:40:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507202558.GK2422122@aptenodytes>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_164011_810981_77774DAB 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 hansverk@cisco.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 thomas.petazzoni@bootlin.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

On 5/7/20 10:25 PM, Paul Kocialkowski wrote:
> Hi,
> 
> On Fri 01 May 20, 00:05, Johan Jonker wrote:
>> Hi Paul,
>>
>>> The PX30 features a RGA block: add the necessary node to support it.
>>>
>>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
>>>  1 file changed, 11 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
>>> index f809dd6d5dc3..3de70aa4f1ce 100644
>>> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
>>> @@ -1102,6 +1102,17 @@ vopl_mmu: iommu@ff470f00 {
>>>  		status = "disabled";
>>>  	};
>>>  
>>> +	rga: rga@ff480000 {
>>> +		compatible = "rockchip,px30-rga", "rockchip,rk3288-rga";
>>> +		reg = <0x0 0xff480000 0x0 0x10000>;
>>> +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
>>> +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
>>> +		clock-names = "aclk", "hclk", "sclk";
>>
>>> +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
>>> +		reset-names = "core", "axi", "ahb";
>>> +		power-domains = <&power PX30_PD_VO>;
>>
>> sort
>>
>> 		power-domains = <&power PX30_PD_VO>;
>> 		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
>> 		reset-names = "core", "axi", "ahb";
> 
> What's the rationale behind this (besides alphabetic sorting, which I don't
> believe is a rule for dt properties)? Some nodes above in the file have it in
> the same order that I do, and I like to see clocks followed by resets.

My short list.
There is no hard rule... It mostly depend on Heiko...

For nodes:
If exists on top: model, compatible and chosen.
Sort things without reg alphabetical first,
then sort the rest by reg address.

Inside nodes:
If exists on top: compatible, reg and interrupts.
In alphabetical order the required properties.
Then in alphabetical order the other properties.
And as last things that start with '#' in alphabetical order.
Add status below all other properties for soc internal components with
any board-specifics.
Keep an empty line between properties and nodes.

Exceptions:
Sort pinctrl-0 above pinctrl-names, so it stays in line with clock-names
and dma-names.
Sort simple-audio-card,name above other simple-audio-card properties.
Sort regulator-name above other regulator properties.
Sort regulator-min-microvolt above regulator-max-microvolt.

> 
> Cheers,
> 
> Paul
> 
>>
>>
>>> +	};
>>> +
>>>  	qos_gmac: qos@ff518000 {
>>>  		compatible = "syscon";
>>>  		reg = <0x0 0xff518000 0x0 0x20>;
>>> -- 
>>> 2.26.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
