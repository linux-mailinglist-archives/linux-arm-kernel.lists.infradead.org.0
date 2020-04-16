Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEF71AC37C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUWlQCSFZsBqrSK1Fj5m9AVakUyCMb/yX981oFku3Ro=; b=ZJTrg/FtBwmC14
	iB3dHKgUPluDW9qUJHhq4Vy4VslMrsewUwTxfro7qqARBccgSj763dlhNIEeOcmVCaMKKSoxxLtiH
	5f0OUQYFeSvExWjtPPMqfXmZKTsmlwSO2Mlu4/ZvLqX2+nfObWYusPlhrX10uY+GpzGphZigkdTXL
	AGviwonoBhJ4OLRvE/NL75ImON5pvwkkPSFlrpxXxBaE1sjoIUE0QuTUcI/v7aBnchNhBwblzgIWi
	rcrI74RBfRyeCYssg8L5nnpzAutmw5FdlJ+1g4jM6404doMpiTnVRTDYHpKIqYh6P3vHCx2JIajKx
	+SCQ2W2Iak5IYsIdXZIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4os-0002UB-9N; Thu, 16 Apr 2020 13:44:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4oi-0002CY-2F; Thu, 16 Apr 2020 13:44:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id c195so2577804wme.1;
 Thu, 16 Apr 2020 06:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WnOLlJGWjKKU4l6KU86petvNf/KeuBQfP8LASQRqnt8=;
 b=NKaFl00peRLsJRd1TCpOYzHetW8sbRA+/HJn6nXHcphRgYoHcE2As4Skpd/c5OOtl3
 aAJP6GhSIoz0w4NCFbSZJ6HKcTBmEX7IXKjNWRGHscVFHFO40s7l2Oij2g2owDoID0a5
 7/75cQ6pZ1aQ52kQoT65AaH1sagq0kwsSQQsKV6iAsy2BwSQXEQu+AZUDJEATTyjsEvW
 /dQmoQ710BctBOzQRsQWEq7qIyYJgrGIrl24rfwI89EL6oev6W3DzRYRUHoGWtgMTglM
 5DlQjWI5n+jybhbO+jO01+JAbMYihB8YdAnzppfOgx7wop42LLUkMnTRf0PV4zxzyq5i
 zrVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WnOLlJGWjKKU4l6KU86petvNf/KeuBQfP8LASQRqnt8=;
 b=O8V0tadVyb36mrMUnRQSXFC28KBbj5zNDxqxV7vUxwr7xBu/46HRhmj6KHPnstRr2P
 ikQcmLIc064d35CWHk7MQiui2Qnj6HBPEuQqVvyYJneoaFDX9ezYFpaLOtTFUBqYIZYx
 N+xSUVBji3IouEdtiwUqtduUc2LwmJSYbLtDMN82TYGjBbgyA3q0nkNjHAaC0WiTSr8v
 4R02AQVFtJSrlskvnPJAIjrsAX+ycihwXlniKau3slCVS8RSza8Pn+7EJlIsCb23A8Ey
 I4K8DND/yWoo0GXMW9cXzO+KuwECHQl5agOpILHfATeOjYBOqz9ha0oi7P90+IIxtA8T
 FnGA==
X-Gm-Message-State: AGi0PubQLMJNdoagiVpA1MziDzMxSyc0C0Q/44nJA2ZHHKnk7snCOQez
 FDlTKDbJJjFFqDDEmC8EsGg=
X-Google-Smtp-Source: APiQypKHstkks+d7QKXlK1Kx2K4FOqpUNOov9QzJnGobXCUEc76Hs0tyB7U8aK6EB9CSGnwIDUH4vw==
X-Received: by 2002:a7b:cd10:: with SMTP id f16mr5171636wmj.21.1587044668689; 
 Thu, 16 Apr 2020 06:44:28 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id z18sm21457242wrw.41.2020.04.16.06.44.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Apr 2020 06:44:27 -0700 (PDT)
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Add RGA support to the PX30
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <20200416115047.233720-3-paul.kocialkowski@bootlin.com>
 <478f0a8b-f819-62f4-83b8-27918c4c2431@gmail.com>
 <20200416132442.GI125838@aptenodytes>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <f4ad8ea4-7904-1458-e564-2d20c87ed417@gmail.com>
Date: Thu, 16 Apr 2020 15:44:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200416132442.GI125838@aptenodytes>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_064432_111336_D041916C 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On 4/16/20 3:24 PM, Paul Kocialkowski wrote:
> Hi,
> 
> On Thu 16 Apr 20, 15:02, Johan Jonker wrote:
>> Hi Paul,
>>
>> The conversion of rockchip-rga.txt to rockchip-rga.yaml by myself just
>> has been approved by robh.
> 
> Huh, I looked around for ongoing related work but missed it.
> I'll definitely rebase on top of your series and use the yaml description
> instead. Thanks!
> 
>> Maybe place dts patches at the end of a patch serie.
>> Could you include a &rga patch if your device is supported in mainline,
>> so we can test with:
>> make ARCH=arm64 dtbs_check
>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-rga.yaml
> 
> I tested with the PX30 EVB so I can surely add a node there if that turns
> out necessary (see below).
> 
>> Johan
>>
>> On 4/16/20 1:50 PM, Paul Kocialkowski wrote:
>>> The PX30 features a RGA block: add the necessary node to support it.
>>>
>>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
>>>  1 file changed, 11 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
>>> index 75908c587511..4bfbee9d4123 100644
>>> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
>>> @@ -1104,6 +1104,17 @@ vopl_mmu: iommu@ff470f00 {
>>>  		status = "disabled";
>>>  	};
>>>  
>>> +	rga: rga@ff480000 {
>>> +		compatible = "rockchip,px30-rga";
>>> +		reg = <0x0 0xff480000 0x0 0x10000>;
>>> +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
>>> +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
>>> +		clock-names = "aclk", "hclk", "sclk";
>>> +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
>>> +		reset-names = "core", "axi", "ahb";
>>> +		power-domains = <&power PX30_PD_VO>;
>>
>> 		status = "disabled";
> 
> As of 5.6, the rk3399 has the node enabled by default. Did that change?

'status' disappeared during review for rk3399 between v2 and v3, but
doesn't mention the reason. If someone can give more info here?

https://lore.kernel.org/lkml/1500101920-24039-5-git-send-email-jacob-chen@iotwrt.com/

https://lore.kernel.org/lkml/1501470460-12014-5-git-send-email-jacob-chen@iotwrt.com/

> 
> Since it's a standalone block that has no I/O dependency, I don't really see
> the point of disabling it by default.

Vop, hdmi and other video devices are also disabled.
Follow the rest I think...

> 
> What do you think?
> 
> Cheers,
> 
> Paul
> 
>>> +	};
>>> +
>>>  	qos_gmac: qos@ff518000 {
>>>  		compatible = "syscon";
>>>  		reg = <0x0 0xff518000 0x0 0x20>;
>>>
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
