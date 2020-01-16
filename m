Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE8B13D97E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 13:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAUIszmKUpHAtDQOXhvhFJgh9Qv3f8Uq69tG+BR5lu8=; b=Rr8KcbxLergp3L
	i9wEA3tZbxYm252AP4Z/EkZvWjwwWAOycyPIHxZKnRnYasls1Kt+NXMmTu/ay+309gnCCQkXlHRJw
	lp6qJM6KKI6CjDsADMJ535fD3sqy7H6Zxsvmnc2AIPfJ3zgB4JDREUj4+C2xmk72Rl/FibaAOxR0y
	489gEus03fBMcSP1pPt2iJDKJ6RX9ZHTvJQ8YdAzkTNF0cYWuq9fkbQ/0ttliGCNgZ5bQbmH55076
	3a6tEctTnf6QpPO4M+A0d3gSrhVpcf1HdGKOQcTmLXoDQjVz1GpYLLfQl2faCzF3DrO4/zD/ZQH7N
	CooEFDHdzZFJ4PxZFKWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3pp-0004LE-6h; Thu, 16 Jan 2020 12:01:13 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3pb-0004Ib-SR; Thu, 16 Jan 2020 12:01:04 +0000
Received: by mail-wm1-x341.google.com with SMTP id 20so3503486wmj.4;
 Thu, 16 Jan 2020 04:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=K45x8SHvjhN/SqzbB8kaaG/ZwA6tE8xnF2TMFaLqgWo=;
 b=qCzhhL1fyhuF4uJ30kAHFGAgukb2dvuIkZZpSFnV9Bvopy1uHd2JmGaTH/DeCT9jyv
 zEUV7VfHwdLK6lkcDTsPPilyk7vBAk66Hv5ZqEtNm5rvhSmQFJNwXylpl/1Bzs0Imv54
 Rql4Hhs2Qoq6nyXXVoyhzL+DHoBZKRWba01HL4UK/mcUTyOescWybJpHAQgDx/pXVWSy
 sJYb4yzMCfKhh+CdyHvrc37xdZ2akspJyGCpvLnT7IdhY/SV04oZpEBReXF04SJJVP6x
 J28UY9KUlAdKPgt5lH0M4MEw2dkG7DX7hH3Y0T5ZXy89bOP8Cr4xXFmOEGzUCW/onAH+
 sjIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K45x8SHvjhN/SqzbB8kaaG/ZwA6tE8xnF2TMFaLqgWo=;
 b=J95cLY4UPGP/rlogGlFqw5mHvElbiE8Te3dx1qRwFWlEXcdNDNzaqv45XHBK6MwDX+
 cAWrD/FxQZTm94ScYPpvZqmLeBk7GrqL8D0W22P5zo3RVsuiwl7/SWhL48UNJpCK5BCJ
 dSmRH2QXbBgUO6bVLKJIjDWMxqwvCzFsOH/KvnTqttZMscHMYcrYWdHtNtpFfT8prtNC
 TQdYN9+ZHoT/dRxSQkLeG9lUXjL3x+KTamziYM/kK6A1ezPw6qVv816EmNB6hDiLbm9h
 I4gLMuUJnCateZo9bxXOO1c/kIbfm5vvXt3XsoFinIOX5G9iMxT97rr4iHt38PkodXi9
 hNQg==
X-Gm-Message-State: APjAAAWQ+uxzaDvG3AnK4/u1RHzCf/PwrKEALwWZCkuqJOUHa0geMxrm
 iC3GJYbm81hyQCq62RXbrk5wJwYn
X-Google-Smtp-Source: APXvYqxSG6XX0qeAUXiXclajDgAqCIR4Vw2T5QnvgyIxq5EiuPtxzO1/xghNLthqCFKePTImdZDOOg==
X-Received: by 2002:a7b:cb86:: with SMTP id m6mr5686130wmi.51.1579176057805;
 Thu, 16 Jan 2020 04:00:57 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id n8sm28902799wrx.42.2020.01.16.04.00.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jan 2020 04:00:57 -0800 (PST)
Subject: Re: [RFC PATCH v1 2/3] dt-bindings: mmc: convert synopsys dw-mshc
 bindings to yaml
To: Rob Herring <robh+dt@kernel.org>
References: <20200114213809.27166-1-jbx6244@gmail.com>
 <20200114213809.27166-2-jbx6244@gmail.com>
 <CAL_JsqJ0QJ9uG9NY7vMGG00G4Jfk2mXS4OPdUzEaRVaCP++GzQ@mail.gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <203e9217-9aa8-b65e-4411-2d9b23c1362a@gmail.com>
Date: Thu, 16 Jan 2020 13:00:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJ0QJ9uG9NY7vMGG00G4Jfk2mXS4OPdUzEaRVaCP++GzQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_040059_946390_D341528F 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ulf Hansson <ulf.hansson@linaro.org>, "heiko@sntech.de" <heiko@sntech.de>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

See below.

On 1/15/20 4:18 PM, Rob Herring wrote:
> On Tue, Jan 14, 2020 at 3:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>

> [...]
> 
>> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
>> new file mode 100644
>> index 000000000..6f85a21d0
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
>> @@ -0,0 +1,88 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mmc/synopsys-dw-mshc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Synopsys Designware Mobile Storage Host Controller Binding

[..]

>> +examples:
>> +  # The MSHC controller node can be split into two portions, SoC specific and
>> +  # board specific portions as listed below.
> 


> This split doesn't work because the examples are built and validated
> now. It may happen to because all the props are optional, but the
> board hunk goes unchecked. So please combine.
> 

Hi,

I have no knowledge about this particular hardware to give a realistic
example. Could someone advise here? Or should I just use the first
example for now?

Thanks

>> +  - |
>> +    dwmmc0@12200000 {
>> +      compatible = "snps,dw-mshc";
>> +      clocks = <&clock 351>, <&clock 132>;
>> +      clock-names = "biu", "ciu";
>> +      reg = <0x12200000 0x1000>;
>> +      interrupts = <0 75 0>;
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +      data-addr = <0x200>;
>> +      fifo-watermark-aligned;
>> +      resets = <&rst 20>;
>> +      reset-names = "reset";
>> +    };
>> +  # [board specific internal DMA resources]
>> +  - |
>> +    dwmmc0@12200000 {
>> +      clock-frequency = <400000000>;
>> +      clock-freq-min-max = <400000 200000000>;
>> +      broken-cd;
>> +      fifo-depth = <0x80>;
>> +      card-detect-delay = <200>;
>> +      vmmc-supply = <&buck8>;
>> +      bus-width = <8>;
>> +      cap-mmc-highspeed;
>> +      cap-sd-highspeed;
>> +    };
>> +  # [board specific generic DMA request binding]
>> +  - |
>> +    dwmmc0@12200000 {
>> +      clock-frequency = <400000000>;
>> +      clock-freq-min-max = <400000 200000000>;
>> +      broken-cd;
>> +      fifo-depth = <0x80>;
>> +      card-detect-delay = <200>;
>> +      vmmc-supply = <&buck8>;
>> +      bus-width = <8>;
>> +      cap-mmc-highspeed;
>> +      cap-sd-highspeed;
>> +      dmas = <&pdma 12>;
>> +      dma-names = "rx-tx";
>> +    };
>> --
>> 2.11.0
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
