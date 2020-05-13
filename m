Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EB81D1C16
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 19:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FQrjFS0Gb+/W5lVcwcZ8a1sq3tXTHOH9LQQX5pP2wK4=; b=SBzNnVbAEK5zcSk6GOqT0ZW3h
	I7y2TjxTlwtlFzLRIK+N6AppWCLU7jbEg1Imgti3bVYVMSePykyMwYNLFuZHgu0N10m1KO+IMjRwC
	l5ZwSYhu+dn5DG3vV8mtpfvYguwMsV9pxg67SYlDco6frhBJMLCpdOI1loSNN53dV6wFmrv6We6rz
	0NJPcm4TlXZGHqXLZN7jLhCdU8Yk7ifuJ3wJfPXxaNJkYeDAV/LDj5R5ltx/ULK30ukDo5oskXJQE
	hVuxURcsBZP9FfaLmTvU0MU7qhIfd67M96ezu51z9SNbPYVdwjktTy6Mz7keqied9LNoUBuvRqRWh
	MuXCMDMjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYv3Q-0000NZ-Es; Wed, 13 May 2020 17:20:24 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYv3G-0000K3-IK
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 17:20:16 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04DHKAds047544;
 Wed, 13 May 2020 12:20:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589390410;
 bh=mWmZmtnRgdmb8pVcRYCzUXIlC4PPbMEYeOODocw0Wtk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=oUefQaD04F6GbefMgKr7lXZYq6luxR+EACLB3Pp4j5PkT+SDHE9oQ/WA6/gZrdQtQ
 ohT6ThN8W8HUKMm5l1O8Cx0jDIa4UUa9YGZxFx4KfpFrTqlnPmEyY/HPoz18dmjPc1
 fSItFfaJS323wc1CnxIh9lOcVl+ypNb0bRX51JDw=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04DHKA6C101977
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 13 May 2020 12:20:10 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 13
 May 2020 12:20:09 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 13 May 2020 12:20:09 -0500
Received: from [10.250.48.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04DHK959112693;
 Wed, 13 May 2020 12:20:09 -0500
Subject: Re: [PATCH 1/3] dt-bindings: remoteproc: Add bindings for C66x DSPs
 on TI K3 SoCs
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <20200325201839.15896-1-s-anna@ti.com>
 <20200325201839.15896-2-s-anna@ti.com> <20200427194915.GA10552@xps15>
From: Suman Anna <s-anna@ti.com>
Message-ID: <8a2a3c6a-7db5-9c57-7fcf-a52af901c911@ti.com>
Date: Wed, 13 May 2020 12:20:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200427194915.GA10552@xps15>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_102014_747065_C35CA978 
X-CRM114-Status: GOOD (  24.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/27/20 2:49 PM, Mathieu Poirier wrote:
> Hi Suman,
> 
> I have started to review this set - comments will come over the next few days.
> 
> On Wed, Mar 25, 2020 at 03:18:37PM -0500, Suman Anna wrote:
>> Some Texas Instruments K3 family of SoCs have one of more Digital Signal
>> Processor (DSP) subsystems that are comprised of either a TMS320C66x
>> CorePac and/or a next-generation TMS320C71x CorePac processor subsystem.
>> Add the device tree bindings document for the C66x DSP devices on these
>> SoCs. The added example illustrates the DT nodes for the first C66x DSP
>> device present on the K3 J721E family of SoCs.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>>   .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 180 ++++++++++++++++++
>>   1 file changed, 180 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
>> new file mode 100644
>> index 000000000000..416e3abe7937
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
>> @@ -0,0 +1,180 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/remoteproc/ti,k3-dsp-rproc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI K3 DSP devices
>> +
>> +maintainers:
>> +  - Suman Anna <s-anna@ti.com>
>> +
>> +description: |
>> +  The TI K3 family of SoCs usually have one or more TI DSP Core sub-systems
>> +  that are used to offload some of the processor-intensive tasks or algorithms,
>> +  for achieving various system level goals.
>> +
>> +  These processor sub-systems usually contain additional sub-modules like
>> +  L1 and/or L2 caches/SRAMs, an Interrupt Controller, an external memory
>> +  controller, a dedicated local power/sleep controller etc. The DSP processor
>> +  cores in the K3 SoCs are usually either a TMS320C66x CorePac processor or a
>> +  TMS320C71x CorePac processor.
>> +
>> +  Each DSP Core sub-system is represented as a single DT node. Each node has a
>> +  number of required or optional properties that enable the OS running on the
>> +  host processor (Arm CorePac) to perform the device management of the remote
>> +  processor and to communicate with the remote processor.
>> +
>> +properties:
>> +  compatible:
>> +    const: ti,j721e-c66-dsp
>> +    description:
>> +      Use "ti,j721e-c66-dsp" for C66x DSPs on K3 J721E SoCs
>> +
>> +  reg:
>> +    description: |
>> +      Should contain an entry for each value in 'reg-names'.
>> +      Each entry should have the memory region's start address
>> +      and the size of the region, the representation matching
>> +      the parent node's '#address-cells' and '#size-cells' values.
>> +    minItems: 3
>> +    maxItems: 3
>> +
>> +  reg-names:
>> +    description: |
>> +      Should contain strings with the names of the specific internal
>> +      internal memory regions, and should be defined in this order
> 
> The word "internal" is found twice in a row.
> 
>> +    maxItems: 3
>> +    items:
>> +      - const: l2sram
>> +      - const: l1pram
>> +      - const: l1dram
>> +
>> +  ti,sci:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Should be a phandle to the TI-SCI System Controller node
>> +
>> +  ti,sci-dev-id:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: |
>> +      Should contain the TI-SCI device id corresponding to the DSP core.
>> +      Please refer to the corresponding System Controller documentation
>> +      for valid values for the DSP cores.
>> +
>> +  ti,sci-proc-ids:
>> +    description: Should contain a single tuple of <proc_id host_id>.
>> +    allOf:
>> +      - $ref: /schemas/types.yaml#/definitions/uint32-matrix
>> +      - maxItems: 1
>> +        items:
>> +          items:
>> +            - description: TI-SCI processor id for the DSP core device
>> +            - description: TI-SCI host id to which processor control
>> +                           ownership should be transferred to
>> +
>> +  resets:
>> +    description: |
>> +      Should contain the phandle to the reset controller node
>> +      managing the resets for this device, and a reset
>> +      specifier. Please refer to the following reset bindings
>> +      for the reset argument specifier,
>> +      Documentation/devicetree/bindings/reset/ti,sci-reset.txt
>> +
>> +  firmware-name:
>> +    description: |
>> +      Should contain the name of the default firmware image
>> +      file located on the firmware search path
>> +
>> +  mboxes:
>> +    description: |
>> +      OMAP Mailbox specifier denoting the sub-mailbox, to be used for
>> +      communication with the remote processor. This property should match
>> +      with the sub-mailbox node used in the firmware image. The specifier
>> +      format is as per the bindings,
>> +      Documentation/devicetree/bindings/mailbox/omap-mailbox.txt
>> +
>> +  memory-region:
>> +    minItems: 2
>> +    description: |
>> +      phandle to the reserved memory nodes to be associated with the remoteproc
>> +      device. There should be atleast two reserved memory nodes defined - the
>> +      first one would be used for dynamic DMA allocations like vrings and vring
>> +      buffers, and the remaining ones used for the firmware image sections. The
>> +      reserved memory nodes should be carveout nodes, and should be defined as
>> +      per the bindings in
>> +      Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
>> +
>> +# Optional properties:
>> +# --------------------
>> +
>> +  sram:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    minItems: 1
>> +    description: |
>> +      pHandles to one or more reserved on-chip SRAM regions. The regions
> 
> s/pHandle/phandle

Thanks Mathieu, will fix both of these in the next version.

regards
Suman

> 
> Thanks,
> Mathieu
> 
>> +      should be defined as child nodes of the respective SRAM node, and
>> +      should be defined as per the generic bindings in,
>> +      Documentation/devicetree/bindings/sram/sram.yaml
>> +
>> +required:
>> + - compatible
>> + - reg
>> + - reg-names
>> + - ti,sci
>> + - ti,sci-dev-id
>> + - ti,sci-proc-ids
>> + - resets
>> + - firmware-name
>> + - mboxes
>> + - memory-region
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +
>> +    //Example: J721E SoC
>> +    /* DSP Carveout reserved memory nodes */
>> +    reserved-memory {
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
>> +        ranges;
>> +
>> +        c66_0_dma_memory_region: c66-dma-memory@a6000000 {
>> +            compatible = "shared-dma-pool";
>> +            reg = <0x00 0xa6000000 0x00 0x100000>;
>> +            no-map;
>> +        };
>> +
>> +        c66_0_memory_region: c66-memory@a6100000 {
>> +            compatible = "shared-dma-pool";
>> +            reg = <0x00 0xa6100000 0x00 0xf00000>;
>> +            no-map;
>> +        };
>> +    };
>> +
>> +    cbass_main: interconnect@100000 {
>> +        compatible = "simple-bus";
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
>> +        ranges = <0x4d 0x80800000 0x4d 0x80800000 0x00 0x00800000>, /* C66_0 */
>> +                 <0x4d 0x81800000 0x4d 0x81800000 0x00 0x00800000>; /* C66_1 */
>> +
>> +        /* J721E C66_0 DSP node */
>> +        c66_0: dsp@4d80800000 {
>> +            compatible = "ti,j721e-c66-dsp";
>> +            reg = <0x4d 0x80800000 0x00 0x00048000>,
>> +                  <0x4d 0x80e00000 0x00 0x00008000>,
>> +                  <0x4d 0x80f00000 0x00 0x00008000>;
>> +            reg-names = "l2sram", "l1pram", "l1dram";
>> +            ti,sci = <&dmsc>;
>> +            ti,sci-dev-id = <142>;
>> +            ti,sci-proc-ids = <0x03 0xFF>;
>> +            resets = <&k3_reset 142 1>;
>> +            firmware-name = "j7-c66_0-fw";
>> +            memory-region = <&c66_0_dma_memory_region>,
>> +                            <&c66_0_memory_region>;
>> +            mboxes = <&mailbox0_cluster3 &mbox_c66_0>;
>> +        };
>> +    };
>> -- 
>> 2.23.0
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
