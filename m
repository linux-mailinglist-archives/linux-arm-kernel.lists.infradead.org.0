Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08151BE317
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 19:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8YiB3TbC4upTH2VSKBP2sPsj4dOUp1JwDVCKj933e8=; b=e/18e7qH9+1Y8y
	D2jWixLT3SVgpshajf5Gq/sWbrYsiUmlnbtel1ae3uNgCrzGgXrQv4PEK4WGp/P7vFtLNDxIGbg4X
	OIr/arq9fDyLNeQGf0Ykb0YOzz8kv/nPVceO0iQbcsHjMK83WkR1CWnRMMx7GvCq48VCi2tO+LbHH
	1U31GXkuA1l2ImnNxszyGJLIA3pRVdZcIE7eLyZGK1+IrJ8tLSIiwE6RGfLCHfLf7crK7h22uo5f4
	YgxQhzWIF6n0Zev4QbZlrPVFwiwQ7kh9YPm/pgeCuWZoDV7hKHcfoYkUXhUBMKuv964u1FV6EM2D2
	/POx9h+YAepvHodfTf+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDAnE-0004Ia-NM; Wed, 25 Sep 2019 17:09:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDAmy-0004HE-LX
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 17:09:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 849E11570;
 Wed, 25 Sep 2019 10:09:13 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A55C3F694;
 Wed, 25 Sep 2019 10:09:12 -0700 (PDT)
Date: Wed, 25 Sep 2019 18:09:01 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V9 1/2] dt-bindings: mailbox: add binding doc for the
 ARM SMC/HVC mailbox
Message-ID: <20190925180901.11fe5165@donnerap.cambridge.arm.com>
In-Reply-To: <1569377224-5755-2-git-send-email-peng.fan@nxp.com>
References: <1569377224-5755-1-git-send-email-peng.fan@nxp.com>
 <1569377224-5755-2-git-send-email-peng.fan@nxp.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_100916_789484_4261AD64 
X-CRM114-Status: GOOD (  25.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Sep 2019 02:09:08 +0000
Peng Fan <peng.fan@nxp.com> wrote:

Hi,

> From: Peng Fan <peng.fan@nxp.com>
> 
> The ARM SMC/HVC mailbox binding describes a firmware interface to trigger
> actions in software layers running in the EL2 or EL3 exception levels.
> The term "ARM" here relates to the SMC instruction as part of the ARM
> instruction set, not as a standard endorsed by ARM Ltd.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../devicetree/bindings/mailbox/arm-smc.yaml       | 96 ++++++++++++++++++++++
>  1 file changed, 96 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> new file mode 100644
> index 000000000000..b061954d1678
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> @@ -0,0 +1,96 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mailbox/arm-smc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM SMC Mailbox Interface
> +
> +maintainers:
> +  - Peng Fan <peng.fan@nxp.com>
> +
> +description: |
> +  This mailbox uses the ARM smc (secure monitor call) or hvc (hypervisor
> +  call) instruction to trigger a mailbox-connected activity in firmware,
> +  executing on the very same core as the caller. The value of r0/w0/x0
> +  the firmware returns after the smc call is delivered as a received
> +  message to the mailbox framework, so synchronous communication can be
> +  established. The exact meaning of the action the mailbox triggers as
> +  well as the return value is defined by their users and is not subject
> +  to this binding.
> +
> +  One example use case of this mailbox is the SCMI interface, which uses
> +  shared memory to transfer commands and parameters, and a mailbox to
> +  trigger a function call. This allows SoCs without a separate management
> +  processor (or when such a processor is not available or used) to use
> +  this standardized interface anyway.
> +
> +  This binding describes no hardware, but establishes a firmware interface.
> +  Upon receiving an SMC using the described SMC function identifier, the
> +  firmware is expected to trigger some mailbox connected functionality.
> +  The communication follows the ARM SMC calling convention.
> +  Firmware expects an SMC function identifier in r0 or w0. The supported
> +  identifier are passed from consumers, or listed in the the arm,func-id

                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
		This is now obsolete.

The rest looks good to me, thanks for the changes!

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre.

> +  property as described below. The firmware can return one value in
> +  the first SMC result register, it is expected to be an error value,
> +  which shall be propagated to the mailbox client.
> +
> +  Any core which supports the SMC or HVC instruction can be used, as long
> +  as a firmware component running in EL3 or EL2 is handling these calls.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - description:
> +          For implementations using ARM SMC instruction.
> +        const: arm,smc-mbox
> +
> +      - description:
> +          For implementations using ARM HVC instruction.
> +        const: arm,hvc-mbox
> +
> +  "#mbox-cells":
> +    const: 0
> +
> +  arm,func-id:
> +    description: |
> +      An single 32-bit value specifying the function ID used by the mailbox.
> +      The function ID follows the ARM SMC calling convention standard.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +required:
> +  - compatible
> +  - "#mbox-cells"
> +  - arm,func-id
> +
> +examples:
> +  - |
> +    sram@93f000 {
> +      compatible = "mmio-sram";
> +      reg = <0x0 0x93f000 0x0 0x1000>;
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +      ranges = <0x0 0x93f000 0x1000>;
> +
> +      cpu_scp_lpri: scp-shmem@0 {
> +        compatible = "arm,scmi-shmem";
> +        reg = <0x0 0x200>;
> +      };
> +    };
> +
> +    smc_tx_mbox: tx_mbox {
> +      #mbox-cells = <0>;
> +      compatible = "arm,smc-mbox";
> +      arm,func-id = <0xc20000fe>;
> +    };
> +
> +    firmware {
> +      scmi {
> +        compatible = "arm,scmi";
> +        mboxes = <&smc_tx_mbox>;
> +        mbox-names = "tx";
> +        shmem = <&cpu_scp_lpri>;
> +      };
> +    };
> +
> +...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
