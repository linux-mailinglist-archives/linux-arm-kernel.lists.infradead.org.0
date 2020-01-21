Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4355144007
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 15:56:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1m58SOTAmQ9fmFRXMUEsMwkztaLiEOBJ32ofNEd4blQ=; b=t/ixWQpBaF/2Wbv7tR4fq/ccg
	JOySwGDNNJnpHHQPfHtlW6/xsnbGI2vrxUJUME2Sf7BOEbMpZrelI8Q/6RXkRymn9ZnfNlncOA6fs
	2raCmz29TV6ig9tVQ4sW6Q6vnlg6kA74qZLF5jbCpKdekX1jvPWeH4UCStqWTSHXy4VptCcCuzQiS
	FeitwVIMblQPEyeAy/CV0qmPmdx4gZ3cx8e+yGv2SHzKENxdLwDoImhttm4xXROAEiueNGSu0D6qp
	iFal4whrsgIRU58NTheaROoHyopRENyFYlWop9YLHoEU0YS3MkD0ADlmiJ9UmLpIByLdTtd5lVMQy
	og6OZZuYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ituwj-0000tm-9x; Tue, 21 Jan 2020 14:56:01 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituwT-0000ss-Rl; Tue, 21 Jan 2020 14:55:51 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 534C1283D45
Subject: Re: [PATCH v2] dt-bindings: convert rockchip-drm.txt to
 rockchip-drm.yaml
To: Rob Herring <robh+dt@kernel.org>
References: <20200121123445.29774-1-dafna.hirschfeld@collabora.com>
 <CAL_JsqJv-gXOK=80nqnO0TB1P-+1+E_vDaN3XSymKQfSLVTBsQ@mail.gmail.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <6371f95f-8bf8-47c9-021e-b23006f25405@collabora.com>
Date: Tue, 21 Jan 2020 15:55:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJv-gXOK=80nqnO0TB1P-+1+E_vDaN3XSymKQfSLVTBsQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_065546_173157_93EB84F5 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 "heiko@sntech.de" <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 dafna3@gmail.com, =?UTF-8?B?6buE5a626ZKX?= <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>, Daniel Vetter <daniel@ffwll.ch>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 21.01.20 15:03, Rob Herring wrote:
> On Tue, Jan 21, 2020 at 6:35 AM Dafna Hirschfeld
> <dafna.hirschfeld@collabora.com> wrote:
>>
>> convert the binding file rockchip-drm.txt to yaml format.
>> This was tested and verified with:
>> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 
> Also, make sure just 'make dt_binding_check' passes as that checks the
> example against all schemas.

But this also checks the other schemas in general, and when running it, 
it fails because of bugs in other schemas.
For example with arm=ARM I get:

   DTC     Documentation/devicetree/bindings/clock/qcom,gcc.example.dt.yaml
Error: 
Documentation/devicetree/bindings/clock/qcom,gcc.example.dts:111.28-29 
syntax error
FATAL ERROR: Unable to parse input tree

Dafna

> 
>> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>> Changes since v1:
>> - fixed worng sign-off
>> - fixed the path of the $id property to be the path of the yaml file
>>
>>   .../display/rockchip/rockchip-drm.txt         | 19 ----------
>>   .../display/rockchip/rockchip-drm.yaml        | 38 +++++++++++++++++++
>>   2 files changed, 38 insertions(+), 19 deletions(-)
>>   delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
>>   create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
>> deleted file mode 100644
>> index 5707af89319d..000000000000
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
>> +++ /dev/null
>> @@ -1,19 +0,0 @@
>> -Rockchip DRM master device
>> -================================
>> -
>> -The Rockchip DRM master device is a virtual device needed to list all
>> -vop devices or other display interface nodes that comprise the
>> -graphics subsystem.
>> -
>> -Required properties:
>> -- compatible: Should be "rockchip,display-subsystem"
>> -- ports: Should contain a list of phandles pointing to display interface port
>> -  of vop devices. vop definitions as defined in
>> -  Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
>> -
>> -example:
>> -
>> -display-subsystem {
>> -       compatible = "rockchip,display-subsystem";
>> -       ports = <&vopl_out>, <&vopb_out>;
>> -};
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>> new file mode 100644
>> index 000000000000..538898ada9d1
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>> @@ -0,0 +1,38 @@
>> +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> 
> Do you have rights to change the license? The default is GPL-2.0-only.
> Looks like Rockchip owns the copyright.
> 
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/rockchip/rockchip-drm.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Rockchip DRM master device
>> +
>> +maintainers:
>> +  - Sandy Huang <hjc@rock-chips.com
>> +  - Heiko Stuebner <heiko@sntech.de>
>> +
>> +description: |
>> +  The Rockchip DRM master device is a virtual device needed to list all
>> +  vop devices or other display interface nodes that comprise the
>> +  graphics subsystem.
>> +
>> +properties:
>> +  compatible:
>> +    const: rockchip,display-subsystem
>> +
>> +  ports:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description: |
>> +      Should contain a list of phandles pointing to display interface port
>> +      of vop devices. vop definitions as defined in
>> +      Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
>> +
>> +required:
>> +  - compatible
>> +  - ports
> 
> Add:
> 
> additionalProperties: false
> 
>> +
>> +examples:
>> +  - |
>> +    display-subsystem {
>> +        compatible = "rockchip,display-subsystem";
>> +        ports = <&vopl_out>, <&vopb_out>;
>> +    };
>> --
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
