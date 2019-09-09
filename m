Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65E7ADC48
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfOetW+3+H5yi4+7albKrls1BwrqX0/TnlFqZbmx29k=; b=GgExezYE9bDSno
	xsFm+eYZotK46dIlEDTHmZpBk7mPeWug6iaw01sdrwlbiwfRwq2UhYYCXraBXeEbPxWsQv9Htx0Vq
	XiA7k6KQDhaGw0ZZkZborjk/TqsBWZc4MFDUgprrCbdyQ+Sq6CQoPwKlbUy1W8ZQZrUupfDX5R2eD
	BmV21JYF9mHGzfMAVC91FpEWuAWCejSV+vjy0137PGSKLEbMg/29Sbhw4j//VGhvc9dayWcwskHcf
	+FjapzH9KT9PiahqbiTE7qZbk1KZ3A2J85ipp0GJOFrend9E1NTtTxV/HhrTJ59Cf/gefGjtax/0V
	gsEbrF1MoUQ7foWUBjTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Lo9-0001kb-DJ; Mon, 09 Sep 2019 15:42:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Lnx-0001js-Mu
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:42:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC136169E;
 Mon,  9 Sep 2019 08:42:12 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75B5B3F59C;
 Mon,  9 Sep 2019 08:42:11 -0700 (PDT)
Date: Mon, 9 Sep 2019 16:42:08 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the
 ARM SMC/HVC mailbox
Message-ID: <20190909164208.6605054e@donnerap.cambridge.arm.com>
In-Reply-To: <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_084213_834492_9617E0CA 
X-CRM114-Status: GOOD (  37.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, 28 Aug 2019 03:02:58 +0000
Peng Fan <peng.fan@nxp.com> wrote:

Hi,

sorry for the late reply, eventually managed to have a closer look on this.

> From: Peng Fan <peng.fan@nxp.com>
> 
> The ARM SMC/HVC mailbox binding describes a firmware interface to trigger
> actions in software layers running in the EL2 or EL3 exception levels.
> The term "ARM" here relates to the SMC instruction as part of the ARM
> instruction set, not as a standard endorsed by ARM Ltd.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/mailbox/arm-smc.yaml       | 125 +++++++++++++++++++++
>  1 file changed, 125 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> new file mode 100644
> index 000000000000..f8eb28d5e307
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> @@ -0,0 +1,125 @@
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
> +  This mailbox uses the ARM smc (secure monitor call) and hvc (hypervisor
> +  call) instruction to trigger a mailbox-connected activity in firmware,
> +  executing on the very same core as the caller. By nature this operation
> +  is synchronous and this mailbox provides no way for asynchronous messages
> +  to be delivered the other way round, from firmware to the OS, but
> +  asynchronous notification could also be supported. However the value of
> +  r0/w0/x0 the firmware returns after the smc call is delivered as a received
> +  message to the mailbox framework, so a synchronous communication can be
> +  established, for a asynchronous notification, no value will be returned.
> +  The exact meaning of both the action the mailbox triggers as well as the
> +  return value is defined by their users and is not subject to this binding.
> +
> +  One use case of this mailbox is the SCMI interface, which uses shared memory
> +  to transfer commands and parameters, and a mailbox to trigger a function
> +  call. This allows SoCs without a separate management processor (or when
> +  such a processor is not available or used) to use this standardized
> +  interface anyway.
> +
> +  This binding describes no hardware, but establishes a firmware interface.
> +  Upon receiving an SMC using one of the described SMC function identifiers,
> +  the firmware is expected to trigger some mailbox connected functionality.
> +  The communication follows the ARM SMC calling convention.
> +  Firmware expects an SMC function identifier in r0 or w0. The supported
> +  identifiers are passed from consumers, or listed in the the arm,func-ids
> +  properties as described below. The firmware can return one value in
> +  the first SMC result register, it is expected to be an error value,
> +  which shall be propagated to the mailbox client.
> +
> +  Any core which supports the SMC or HVC instruction can be used, as long as
> +  a firmware component running in EL3 or EL2 is handling these calls.
> +
> +properties:
> +  compatible:
> +    const: arm,smc-mbox
> +
> +  "#mbox-cells":
> +    const: 1
> +
> +  arm,num-chans:
> +    description: The number of channels supported.
> +    items:
> +      minimum: 1
> +      maximum: 4096 # Should be enough?

This maximum sounds rather arbitrary. Why do we need one? In the driver this just allocates more memory, so why not just impose no artificial limit at all?

Actually, do we need this property at all? Can't we just rely on the size of arm,func-ids to determine this (using of_property_count_elems_of_size() in the driver)? Having both sounds redundant and brings up the question what to do if they don't match.

> +
> +  method:
> +    - enum:
> +        - smc
> +        - hvc
> +
> +  transports:
> +    - enum:
> +        - mem
> +        - reg

Shouldn't there be a description on what both mean, exactly?
For instance I would expect a list of registers to be shown for the "reg" case, and be it by referring to the ARM SMCCC.

Also looking at the driver this brings up more questions:
- Which memory does mem refer to? If this is really the means of transport, it should be referenced in this *controller* node and populated by the driver. Looking at the example below and the driver code, it actually isn't used that way, instead the memory is used and controlled by the mailbox *client*.
- What is the actual difference between the two transports? For "mem" we just populate the registers with 0, for "reg" we use the data. Couldn't this be left to the client?

There are more points which makes me think this property is actually redundant, see my comments on patch 2/2.

> +
> +  arm,func-ids:
> +    description: |
> +      An array of 32-bit values specifying the function IDs used by each
> +      mailbox channel. Those function IDs follow the ARM SMC calling
> +      convention standard [1].
> +
> +      There is one identifier per channel and the number of supported
> +      channels is determined by the length of this array.

I think this makes it obvious that arm,num-chans is not needed.

Also this somewhat contradicts the driver implementation, which allows the array to be shorter, marking this as UINT_MAX and later on using the first data item as a function identifier. This is somewhat surprising and not documented (unless I missed something).

So I would suggest:
- We drop the transports property, and always put the client provided data in the registers, according to the SMCCC. Document this here.
  A client not needing those could always puts zeros (or garbage) in there, the respective firmware would just ignore the registers.
- We drop "arm,num-chans", as this is just redundant with the length of the func-ids array.
- We don't impose an arbitrary limit on the number of channels. From the firmware point of view this is just different function IDs, from Linux' point of view just the size of the memory used. Both don't need to be limited artificially IMHO.
- We mark arm,func-ids as required, as this needs to be fixed, allocated number.

For the question of "always one channel per controller" vs. "allow multiple channels per controller": I don't really have a strong opinion, but lean towards allowing multiple channels. This would allow to group functions belonging together, separating them from totally distinct controller uses (think virtual GPIO vs. SCMI).
And it would still allow the special case of multiple single-channel controllers to be naturally specified.

> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 0
> +    maxItems: 4096   # Should be enough?
> +
> +required:
> +  - compatible
> +  - "#mbox-cells"
> +  - arm,num-chans
> +  - transports
> +  - method

According to the above description arm,func-ids would also be required?

Cheers,
Andre.

> +
> +examples:
> +  - |
> +    sram@910000 {
> +      compatible = "mmio-sram";
> +      reg = <0x0 0x93f000 0x0 0x1000>;
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +      ranges = <0 0x0 0x93f000 0x1000>;
> +
> +      cpu_scp_lpri: scp-shmem@0 {
> +        compatible = "arm,scmi-shmem";
> +        reg = <0x0 0x200>;
> +      };
> +
> +      cpu_scp_hpri: scp-shmem@200 {
> +        compatible = "arm,scmi-shmem";
> +        reg = <0x200 0x200>;
> +      };
> +    };
> +
> +    firmware {
> +      smc_mbox: mailbox {
> +        #mbox-cells = <1>;
> +        compatible = "arm,smc-mbox";
> +        method = "smc";
> +        arm,num-chans = <0x2>;
> +        transports = "mem";
> +        /* Optional */
> +        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> +      };
> +
> +      scmi {
> +        compatible = "arm,scmi";
> +        mboxes = <&smc_mbox 0>, <&smc_mbox 1>;
> +        mbox-names = "tx", "rx";
> +        shmem = <&cpu_scp_lpri>, <&cpu_scp_hpri>;
> +      };
> +    };
> +
> +...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
