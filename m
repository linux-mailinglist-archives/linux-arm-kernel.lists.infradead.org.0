Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47EA6997B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IrkyKrOMN5baCjLnUL1q+ZGJTdMU88bC1IYrHyeESY0=; b=TbStgARl9f37e5
	O3Ct7ErNxT66KXKKE28Z0NvtroRZ3tj6XFLQUpsFPPTPmXE1foDDYUJz1ajtgfPD0uHGMGgbHfRB/
	yXe8fV204D+N6LHmzR2eGVzo+f6aQu7lHVXHZJf/oGQiIuBd/fb6YfuLNoOV0xLbsrokhkey1Bys0
	4qvrPRRaHAy+ictvKHAJuIEW46dJtGHB2+/R/Ags+vSx3/bZax0AQo2UWDwsLhZVE4pkGEfU37GKY
	uufqNA3UcmMq6Tot1SrmtiDoBzlTcsOLO+nk8TJshZpzuA1nb5LTO0zWE6hu7AyyHN9ksHPEa+lc1
	DZhBmRlWyC+ixhDbbEEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4Nw-0005vO-OC; Mon, 15 Jul 2019 17:03:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4Nj-0005tM-54
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:03:21 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55A0420868
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 17:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563210196;
 bh=k2nqdoFQ92VahnrcgHbA/tAELUqjZBrl9Qeta+k53Sk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lWAswUNNTt4GpACUeJpOUp5tQzH9wEFNNeoVRHFWio77gHmmJ+NeeNkKM+0d6Dozo
 LeFbYj3BVXLtnXxg/w8OWiVAHfCjRX2Ks7g1rnbmQxOGPFGjlCM3sFarTdco0NcDYQ
 SMdc1FNc56AiV/qPyOM8qPLKQbFb2NYveiy3dsVQ=
Received: by mail-qk1-f171.google.com with SMTP id r4so12141880qkm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:03:16 -0700 (PDT)
X-Gm-Message-State: APjAAAWki1X5I4um7vN6/CCvJF5BYgwvlhvT5jp79VjDrDwdw7uw6lro
 gZEKiLd+uQrTRgZFnIo8Qu4l9pwVxyYGL4cg8g==
X-Google-Smtp-Source: APXvYqx+8VKAvY/IfBFD75fj05NSLbDRiObogw7qXgNRqLXLSq7ia56/S4oerXDR960+R3wf7Kt+ezsVEvT6as7BL0E=
X-Received: by 2002:a37:a010:: with SMTP id j16mr18090764qke.152.1563210195522; 
 Mon, 15 Jul 2019 10:03:15 -0700 (PDT)
MIME-Version: 1.0
References: <1563184103-8493-1-git-send-email-peng.fan@nxp.com>
 <1563184103-8493-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1563184103-8493-2-git-send-email-peng.fan@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 15 Jul 2019 11:03:03 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJkt7pX9F9NggL2EXxS=2oiF07VJCOqVTvF-Zwz=cjmvg@mail.gmail.com>
Message-ID: <CAL_JsqJkt7pX9F9NggL2EXxS=2oiF07VJCOqVTvF-Zwz=cjmvg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_100319_236877_820E1807 
X-CRM114-Status: GOOD (  28.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 4:10 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> The ARM SMC/HVC mailbox binding describes a firmware interface to trigger
> actions in software layers running in the EL2 or EL3 exception levels.
> The term "ARM" here relates to the SMC instruction as part of the ARM
> instruction set, not as a standard endorsed by ARM Ltd.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>
> V3:
>  Convert to yaml
>  Drop interrupt
>  Introudce transports to indicate mem/reg
>  The func id is still kept as optional, because like SCMI it only
>  cares about message.
>
> V2:
>  Introduce interrupts as a property.
>
>  .../devicetree/bindings/mailbox/arm-smc.yaml       | 124 +++++++++++++++++++++
>  1 file changed, 124 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
>
> diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> new file mode 100644
> index 000000000000..da9b1a03bc4e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> @@ -0,0 +1,124 @@
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
> +    $ref: /schemas/types.yaml#/definitions/uint32

Constraints? 0 is valid? 2^32?

> +
> +  method:
> +    items:
> +      - enum:
> +          - smc
> +          - hvc
> +
> +  transports:
> +    items:
> +      - enum:
> +          - mem
> +          - reg

What if someone wants to configure this per channel? Perhaps
#mbox-cells should be 2 and this can be a client parameter.

Minimally, this needs a 'arm' vendor prefix if it stays.

> +
> +  arm,func-ids:
> +    description: |
> +      An array of 32-bit values specifying the function IDs used by each
> +      mailbox channel. Those function IDs follow the ARM SMC calling
> +      convention standard [1].

What's the default if not specified? Or this should be required?

> +
> +      There is one identifier per channel and the number of supported
> +      channels is determined by the length of this array.
> +    minItems: 0
> +    maxItems: 4096   # Should be enough?
> +
> +required:
> +  - compatible
> +  - "#mbox-cells"
> +  - arm,num-chans
> +  - transports
> +  - method
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
> +        cpu_scp_lpri: scp-shmem@0 {
> +          compatible = "arm,scmi-shmem";
> +          reg = <0x0 0x200>;
> +        };
> +
> +        cpu_scp_hpri: scp-shmem@200 {
> +          compatible = "arm,scmi-shmem";
> +          reg = <0x200 0x200>;
> +        };
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
> +        mboxes = <&mailbox 0 &mailbox 1>;
> +        mbox-names = "tx", "rx";
> +        shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
> +      };
> +    };
> +
> +...
> --
> 2.16.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
