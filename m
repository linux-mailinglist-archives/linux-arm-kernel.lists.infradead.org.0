Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC53E12001D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:44:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TYYP6Ztv+7j/IhkcTqjGjTsx7AEWgPAE5I+g3qQNa8=; b=NTfSb8zLWWGXk4
	FZdkdASRfyO6P3BZe504m9feaCc6/i1aRoU7w0gCLYYbutFRwGf5Cv/Pp1sAIPvnC/ZQZ99TzYfAz
	bzPPJdhF0cg9YPLEghpL+2wyJMnemavpIYFVgtT10FIffkY00Rz1pHeIs0FLPMm+vmzVbqZiZSiGM
	pav9XR4ed0FgkvbCi305T6czrMJD5EpaeHqreagUD3UQaVQQh121qL6Bg50NvgJ9b0u/whoU/Zfrl
	SfPsQrNmK7Q8zr+TAkC8FfTEHwdtYCdUSDaeSBIrKFi28S6mCOqq4bGKQfEwhbbjnfjuDuFpEEcBw
	sWZenjFK6u7Alf8gH3lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iglzb-0001jL-6w; Mon, 16 Dec 2019 08:44:39 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iglzO-0001iO-5M
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 08:44:28 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBG8Y0Db017279; Mon, 16 Dec 2019 09:44:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=PJqSVGtMd6PUNoyoHJdaGLduaNwj7hJN0wsA7xo1/94=;
 b=pdne5z84gtgpxXRktsXb4F+rtlwA9UQQ+B2R0Dzw7lIMYHpPdZ4gSmGbFz9JuZIuPSe0
 bHKsG713AUuO2j/CHmUhuKc2uBdza2qZCjEX4JdVaMJN7QpMPo568bokRW5PGU0iqB7Z
 K3zUpsX0h+qthruKdkRDwGQNdPy02ps4MpHVAp+aWd44DLBhHLpJgigT5mr13PTWhxlG
 db4wZsjPc6wSv2Z9yp3HNiH4Eree73v4VXff+QwS/KJD0MAXmu3VmKQ6TpDaPFzIDBtE
 H/P8fZ51mvrxWthrDXXa6B6FKPrF1I9ZhIZ3xgbFeuTWRusjT/i6kvD0yQfkbfL35iLl LA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wvqgpg3gx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 16 Dec 2019 09:44:17 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 42482100039;
 Mon, 16 Dec 2019 09:44:16 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 33C082B5463;
 Mon, 16 Dec 2019 09:44:16 +0100 (CET)
Received: from lmecxl0889.lme.st.com (10.75.127.49) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 16 Dec
 2019 09:44:15 +0100
Subject: Re: [PATCH] dt-bindings: stm32: convert mlahb to json-schema
To: Rob Herring <robh@kernel.org>
References: <20191128154603.6911-1-arnaud.pouliquen@st.com>
 <20191213213916.GA1292@bogus>
From: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Message-ID: <7ac83aa6-0ec6-db4f-556d-a17c28d2bcab@st.com>
Date: Mon, 16 Dec 2019 09:44:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191213213916.GA1292@bogus>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-16_01:2019-12-16,2019-12-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_004426_577237_DE55D513 
X-CRM114-Status: GOOD (  25.48  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Fabien Dessenne <fabien.dessenne@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Rob,

On 12/13/19 10:39 PM, Rob Herring wrote:
> On Thu, Nov 28, 2019 at 04:46:03PM +0100, Arnaud Pouliquen wrote:
>> Convert the ML-AHB bus bindings to DT schema format using json-schema
>>
>> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
>> ---
>> Notice that this patch requests an update of the simple-bus schema to add
>> the support of the "dma-ranges" property.
>> A Pull request has been sent in parallel to the dt-schema github repo:
>> https://github.com/devicetree-org/dt-schema/pull/30
>>
>> To remind the topic around the use of "dma-ranges" please
>> refer to following discussion: https://lkml.org/lkml/2019/4/3/1261
>> ---
>>  .../devicetree/bindings/arm/stm32/mlahb.txt   | 37 ----------
>>  .../bindings/arm/stm32/st,mlahb.yaml          | 69 +++++++++++++++++++
>>  2 files changed, 69 insertions(+), 37 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/arm/stm32/mlahb.txt
>>  create mode 100644 Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/arm/stm32/mlahb.txt b/Documentation/devicetree/bindings/arm/stm32/mlahb.txt
>> deleted file mode 100644
>> index 25307aa1eb9b..000000000000
>> --- a/Documentation/devicetree/bindings/arm/stm32/mlahb.txt
>> +++ /dev/null
>> @@ -1,37 +0,0 @@
>> -ML-AHB interconnect bindings
>> -
>> -These bindings describe the STM32 SoCs ML-AHB interconnect bus which connects
>> -a Cortex-M subsystem with dedicated memories.
>> -The MCU SRAM and RETRAM memory parts can be accessed through different addresses
>> -(see "RAM aliases" in [1]) using different buses (see [2]) : balancing the
>> -Cortex-M firmware accesses among those ports allows to tune the system
>> -performance.
>> -
>> -[1]: https://www.st.com/resource/en/reference_manual/dm00327659.pdf
>> -[2]: https://wiki.st.com/stm32mpu/wiki/STM32MP15_RAM_mapping
>> -
>> -Required properties:
>> -- compatible: should be "simple-bus"
>> -- dma-ranges: describes memory addresses translation between the local CPU and
>> -	   the remote Cortex-M processor. Each memory region, is declared with
>> -	   3 parameters:
>> -		 - param 1: device base address (Cortex-M processor address)
>> -		 - param 2: physical base address (local CPU address)
>> -		 - param 3: size of the memory region.
>> -
>> -The Cortex-M remote processor accessed via the mlahb interconnect is described
>> -by a child node.
>> -
>> -Example:
>> -mlahb {
>> -	compatible = "simple-bus";
>> -	#address-cells = <1>;
>> -	#size-cells = <1>;
>> -	dma-ranges = <0x00000000 0x38000000 0x10000>,
>> -		     <0x10000000 0x10000000 0x60000>,
>> -		     <0x30000000 0x30000000 0x60000>;
>> -
>> -	m4_rproc: m4@10000000 {
>> -		...
>> -	};
>> -};
>> diff --git a/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml b/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml
>> new file mode 100644
>> index 000000000000..8ad3f7c7f9ab
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml
>> @@ -0,0 +1,69 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: "http://devicetree.org/schemas/arm/stm32/st,mlahb.yaml#"
>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>> +
>> +title: STMicroelectronics STM32 ML-AHB interconnect bindings
>> +
>> +maintainers:
>> +  - Fabien Dessenne <fabien.dessenne@st.com>
>> +  - Arnaud Pouliquen <arnaud.pouliquen@st.com>
>> +
>> +description: |
>> +  These bindings describe the STM32 SoCs ML-AHB interconnect bus which connects
>> +  a Cortex-M subsystem with dedicated memories. The MCU SRAM and RETRAM memory
>> +  parts can be accessed through different addresses (see "RAM aliases" in [1])
>> +  using different buses (see [2]): balancing the Cortex-M firmware accesses
>> +  among those ports allows to tune the system performance.
>> +  [1]: https://www.st.com/resource/en/reference_manual/dm00327659.pdf
>> +  [2]: https://wiki.st.com/stm32mpu/wiki/STM32MP15_RAM_mapping
>> +
>> +allOf:
>> + - $ref: /schemas/simple-bus.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    contains:
>> +      enum:
>> +        - st,mlahb
>> +
>> +  dma-ranges:
>> +    description: |
>> +      Describe memory addresses translation between the local CPU and the
>> +      remote Cortex-M processor. Each memory region, is declared with
>> +      3 parameters:
>> +      - param 1: device base address (Cortex-M processor address)
>> +      - param 2: physical base address (local CPU address)
>> +      - param 3: size of the memory region.
>> +    maxItems: 3
>> +
>> +  '#address-cells':
>> +    const: 1
>> +
>> +  '#size-cells':
>> +    const: 1
>> +
>> +required:
>> +  - compatible
>> +  - '#address-cells'
>> +  - '#size-cells'
>> +  - dma-ranges
>> +
>> +examples:
>> +  - |
>> +    mlahb: ahb {
>> +      compatible = "st,mlahb", "simple-bus";
>> +      #address-cells = <1>;
>> +      #size-cells = <1>;
>> +      reg = <0x10000000 0x40000>;
>> +      dma-ranges = <0x00000000 0x38000000 0x10000>,
>> +                   <0x10000000 0x10000000 0x60000>,
>> +                   <0x30000000 0x30000000 0x60000>;
>> +
> 
> Fails to build:
> 
> builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/stm32/st,mlahb.example.dt.yaml: 
> ahb: 'ranges' is a required property
> 
> Run 'make dt_binding_check'

Yes, that why i posted in parallel the PR on the tool:
https://github.com/devicetree-org/dt-schema/pull/30. 

I don't know if you saw my answer on this post so i copy/paste  it here:

How to describe the stm32mp1 coprocessor mapping and translations based on this "ranges" requirement?

On stm32mp1 we have 2 RAM memories accessible by the Cortex-A7 running Linux and used by the Cortex-M4 coprocessor to run its code. Each Cortex has a specific mapping of the memories. Some memory translations are needed by:

- rproc driver to load the Cortex-M4 firmware in RAMs
- rpmsg & virtio frameworks for shared memory

Here is the memory mapping:

- RETRAM (64 kB);
  - Cortex-A7 @ : 0x38000000
  - Cortex-M4 @: 0x00000000
- MCUSRAM (up to 384 kB)
  - Cortex-A7 @ : 0x30000000 or 0x10000000 ( 2 addresses for the same memory)
  - Cortex-M4 @: 0x30000000 or 0x10000000 ( 2 addresses for the same memory)
  =>addresses used on both side depend on the MCURAM access optimization

Today our upstreamed solution is based on dma-range only (https://lkml.org/lkml/2019/4/3/1261)

What about adding an "unused" ranges property in DT to match the requirement?

	mlahb {
		compatible = "simple-bus";
		#address-cells = <1>;
		#size-cells = <1>;
		ranges = <0 0x38000000 0x10000>,
			       <1 0x10000000 0x60000>,
			       <2 0x30000000 0x60000>;
		dma-ranges = <0x00000000 0x38000000 0x10000>,
			     <0x10000000 0x10000000 0x60000>,
			     <0x30000000 0x30000000 0x60000>;

		m4_rproc: m4@10000000 {
		        ---
		};
	};

Thanks in advance for your feedback.
Regards,
Arnaud

> 
>> +      m4_rproc: m4@10000000 {
>> +       reg = <0x10000000 0x40000>;
>> +      };
>> +    };
>> +
>> +...
>> -- 
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
