Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB798F0DE7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:42:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gm9GbagtboNJf6+18sP7WIR29SW1Z0dpDwFDzw+t2+Y=; b=sfNGc1pukUDwIG
	P8Ai2hoqXmTJPhiJozvud8d0Y5mJmmgLwNZkYZTy74AvBbQdYrSdZqgnw0XOg6DoWjtim9F4Fod38
	4cUAgSAq7O94Bx9aN0xEh5APCL5aFlEZyyvSrtC57VDO85DeaTJvg0nqbosiTX4aMSu3gy5brwNxR
	TL0X+tj76UUKi/+OCknS31fc8doIsotq4LoPa05bnjNaaPe3kZxVMd9QtAxUc/SJpmhkGaAvXHHcL
	Okr1Zekq2MQFulinN/o+VDj1i+KbAnaAVO6Zo/LioxdEpltH0xqGcIUsUDGp88Bxh7l5KRMBD7Lbw
	Z7tEDAlW7LMJzZzuG6CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSD8h-0000D0-Lm; Wed, 06 Nov 2019 04:41:51 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSD8Y-0000Ch-PE
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 04:41:44 +0000
Received: by mail-pl1-x641.google.com with SMTP id e3so8710395plt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 20:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Ttz2aHV4uW8S1LdJk3XSqNXlYXSDq91kwHI8P3gwyGc=;
 b=gGimGaQa2YyemMdbHioMvjvmq6L/k0N2E2z4ZO8lnvhGctbMcmKTNoOpbyxzkW2swn
 IDNfDbTAkaJc71ZKIssZdCAvQFVMFOMlE3TKaiLnJOH7QqIA3uYIDqiAoIRj9nAAfvH4
 P2eGvn6c9vZqokBbt+vXEinWvsn3PKRDxNp3ycy7KEkwzcK7A8VicQLVPnShQD/2NRwH
 2NyTW938vCpktwy0W8ohtFZji1tSqWL3d3AByWmNRO4qBmuFkrk2XkCPFF9cRxXpinzW
 BOqY5oF3ABIzgwkYmCzDdsicSFZ0y7i3sRSMuZgsWEm5s01ZZuox8V1+MCt0aBODQc3v
 x6oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Ttz2aHV4uW8S1LdJk3XSqNXlYXSDq91kwHI8P3gwyGc=;
 b=jaRecr/MFZHSm42kX/nKvS71lNeCcb4TokeoySVQKv1FK92Ty5nDnzwF1Zd4/jFdvj
 Cb/dhRuem+hlVc3O0d+Og2MKLadelg5RZPKb7BuQss07JZ0pX+yt9Svh30gna30WO8Y+
 E3KYHcFxBPHnQsMKbienVy5F8ar6flZcIPtEWM/L06MMYJATEDBxaXk3cJzsql1Dcgj6
 p//YznLtxwMSDojgAEtNTi1mFW363o5Rp4ddtDXNgxRyMT+rZhdg7y0BO33Vs1Hlr9PZ
 6PFpPGynBoFZZJUoORZ/arou1Cr7fVVjcQ+c/roXSxxid4SviYRTFlBHLmqZt8CQr/mx
 u9eA==
X-Gm-Message-State: APjAAAVtpEiXBvgFldl5xE82vOmxEYygFfBxRrQhKcWEFPEX49RDcsGY
 A04OCWdMD0DSPY3raAIE7xQ=
X-Google-Smtp-Source: APXvYqw4bo+btbScG10MkBesMv9+y5Q7nkR1o2SVaP1dkRd65p4YEYGNp4qZMJbtHHU33ibsG9Pgwg==
X-Received: by 2002:a17:902:8a8c:: with SMTP id
 p12mr524474plo.308.1573015301654; 
 Tue, 05 Nov 2019 20:41:41 -0800 (PST)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 a145sm16683991pfa.7.2019.11.05.20.41.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Nov 2019 20:41:40 -0800 (PST)
Subject: Re: [PATCH 1/4] dt-bindings: Add BCM2711 thermal
To: Rob Herring <robh@kernel.org>, Stefan Wahren <wahrenst@gmx.net>
References: <1572615749-9524-1-git-send-email-wahrenst@gmx.net>
 <1572615749-9524-2-git-send-email-wahrenst@gmx.net>
 <20191106042107.GA27699@bogus>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <fee109e6-fdf8-d132-b390-c2878915fb11@gmail.com>
Date: Tue, 5 Nov 2019 20:41:39 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191106042107.GA27699@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_204142_823275_2FBE4127 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-pm@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, Chen-Yu Tsai <wens@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/5/2019 8:21 PM, Rob Herring wrote:
> On Fri, Nov 01, 2019 at 02:42:26PM +0100, Stefan Wahren wrote:
>> Since the BCM2711 doesn't have a AVS TMON block, the thermal information
>> must be retrieved from the AVS ring oscillator block. So add a new
>> suitable binding.
> 
> Anything else in that block? 

Yes, the register space is quite big, and contains a bunch of raw
sensors (voltage, ring oscillators etc.). It might be more appropriate
to define the ring oscillator node and then use a syscon phandle to it
with the appropriate register offset within that block.

>>
>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>> ---
>>  .../bindings/thermal/brcm,bcm2711-thermal.txt      | 39 ++++++++++++++++++++++
>>  1 file changed, 39 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt
>>
>> diff --git a/Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt b/Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt
>> new file mode 100644
>> index 0000000..5531d3f
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt
>> @@ -0,0 +1,39 @@
>> +Binding for Thermal Sensor driver for BCM2711 SoCs.
>> +
>> +Required properties:
>> +- compatible:		must be: "brcm,bcm2711-thermal"
> 
> If the block is called 'AVS ring oscillator', then the compatible name 
> should mirror that.
> 
>> +- reg:			Address range of the thermal registers.
>> +- clocks:		Phandle of the clock used by the thermal sensor.
>> +- #thermal-sensor-cells:	should be 0 (see thermal.txt)
>> +
>> +Example:
>> +
>> +thermal-zones {
>> +	cpu_thermal: cpu-thermal {
>> +		polling-delay-passive = <0>;
>> +		polling-delay = <1000>;
>> +
>> +		thermal-sensors = <&thermal>;
>> +
>> +		trips {
>> +			cpu-crit {
>> +				temperature	= <80000>;
>> +				hysteresis	= <0>;
>> +				type		= "critical";
>> +			};
>> +		};
>> +
>> +		coefficients = <(-487)  410040>;
>> +
>> +		cooling-maps {
>> +		};
>> +	};
>> +};
>> +
>> +thermal@7d5d2200 {
>> +	compatible = "brcm,bcm2711-thermal";
>> +	reg = <0x7d5d2200 0x4>;
>> +	clocks = <&clocks BCM2835_CLOCK_TSENS>;
>> +	#thermal-sensor-cells = <0>;
>> +};
>> +
>> --
>> 2.7.4
>>

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
