Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A76C2334
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+g1NpkYgWu2Bz+Y/N/Nsv/UQy6CRRfQDb4mFhYeVwPM=; b=HwI6XC0oi+zZMf
	ciKnLFX/ooObcwfNkCG+rvrIIKPmmdDg/RsVIi1evbUZKIOgDa3FNofp1pE6oPoIW2WA38Oxagyrl
	QYevu1HyE/Ff88iVPUtLp9eCzPc7+Ecyl7ChBwSBcx33vJNsmNRaH/2QZilHndcEL6UBMsL4Ycn+m
	pSoTiUcIUmA7X5gEqSdXNlysL2z7WaUaXUaUOG1heYq1PWOYyI/6Y+ISfHNshsd7xsZnh4DjS5VTL
	Mqo2s1FUdqjAk1nWwElOVY7P2/hZmR1traydhX519fq4shn11NCXUTsbHbjr6Zs5asD7vviMedy/b
	QBChnCbKoqVf3weyW1NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwdf-0003Py-Gy; Mon, 30 Sep 2019 14:26:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwdV-0003M7-MA
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:26:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18DD228;
 Mon, 30 Sep 2019 07:26:47 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9E2FF3F706;
 Mon, 30 Sep 2019 07:26:45 -0700 (PDT)
Date: Mon, 30 Sep 2019 15:26:40 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V10 1/2] dt-bindings: mailbox: add binding doc for the
 ARM SMC/HVC mailbox
Message-ID: <20190930142640.GA24945@bogus>
References: <1569824287-4263-1-git-send-email-peng.fan@nxp.com>
 <1569824287-4263-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569824287-4263-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_072649_812592_A507F9F4 
X-CRM114-Status: GOOD (  24.81  )
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
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 06:20:09AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The ARM SMC/HVC mailbox binding describes a firmware interface to trigger
> actions in software layers running in the EL2 or EL3 exception levels.
> The term "ARM" here relates to the SMC instruction as part of the ARM
> instruction set, not as a standard endorsed by ARM Ltd.
> 

FWIW:

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/mailbox/arm-smc.yaml       | 96 ++++++++++++++++++++++
>  1 file changed, 96 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> new file mode 100644
> index 000000000000..c165946a64e4
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
> +  identifier is listed in the the arm,func-id property as described below.
> +  The firmware can return one value in the first SMC result register,
> +  it is expected to be an error value, which shall be propagated to the
> +  mailbox client.
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

[nit]              ^^^^^^^^^ s/tx_mbox/mailbox/ ?

mailbox sounds more generic name to use, you can always use what ever
name in the label. This is not a must change, just thought of mentioning
as the pattern followed is to use generic names.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
