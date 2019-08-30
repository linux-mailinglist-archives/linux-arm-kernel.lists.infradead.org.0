Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476AEA2F47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 07:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGUY+9HV22pXAIRFvkQxtUGtV5y0b92w+65kIyrpAPI=; b=ah/sAjOctTx7qK
	uamkOU5X4lgf2EphAL8FDa+gWuBHu+ztIGxtTJR4qw/10QNugeGptmEgsAvtOxYmNf4kVu05eXdkX
	PwbCMt8eKn6WJwaC945w18USIiY766mHePu/syOSKXF9k6ho5oeqqFW5BYEjDA5eKCmx8lKwrnJt6
	52hDxDAHtHxIBOuH6XTJUtPirxs23ODbaRLOwpG4Co7rQj8eoBebkTYdXTFcqnH+5aVPBqUsuIorz
	ZoVjSVvzZLXitgGvTw8D/CzqUdT0kXNNgl/P7q6TXD3flEoOhO72E2kLe0Kt5cCWjh0bORHvZjjH0
	oqi4wGvoB/flci3UxeTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ZwQ-0007RA-PT; Fri, 30 Aug 2019 05:59:22 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Zw7-0007Q0-Vf
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 05:59:05 +0000
Received: by mail-io1-xd44.google.com with SMTP id q12so11781839iog.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 22:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7ndyanviOzu9Zi/yMi7I2hnP1XTTLaCsALOoRaimagU=;
 b=hRqQajhYeOFJ0Do/UKvlZ8YCLqMFgsPu9EaM4WuZXWKonIayGwNzasBLgYD79HRu3l
 mqIdo+C/hZhohTNBxV8l+jqpWs4plJQa/3N3Tw24kuLkXrUqfLa8gxpTfcOL3iCx5r4h
 9WEUrhFm7NZ3ZU8Ey3ak/eigW3IShywzQ620MydDC+zYncJAaCSa+bjufjqDaZcIzWZ/
 U9BPEnUxTe/4C2dPPAxrbC6mHwAP8o1po8Hqy1WGrpUKFzQoVYVvHxWPQDWN9TqYyAkP
 eQb+lUgQbKcWXeCV4VgAfZ+5Hl199GefB+fulgZg0XuHxzCfOZuI/MnKql4kigbPwJZU
 uRBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7ndyanviOzu9Zi/yMi7I2hnP1XTTLaCsALOoRaimagU=;
 b=YMQqFIK93LBK2U/YYS9WzRJl0SRfTQZXPanUauWqYG3HmO2FmyJOfWPBcnnLPmbFqg
 GTa6q6aB7JcpjlOLNiob+QGf7kSqO/X6yvnVHhZjNrp8Lqze1AABgANY4t2ELRmPsUAK
 eENSvJNiqRiQ5HfhnsWLdhmM7K1G5jxdEckEFuixW1cdgCg3uoxJac8L0KWcs1vFvSkI
 USiX/GChq+hPEIzo+MdJqS/tbUWOB6kPSkvOrp9wEwuIpwMhvBJY/zIqXFGNtzW9BSwT
 8ecVqa918ZZLeizx+6BXDTjTT9P49ksx8SM523ApX7hFb/sdiHXtIuNXAyXtN1MKn+i2
 8wFQ==
X-Gm-Message-State: APjAAAV3SJVWSaA/pi0HKIu0TO9arQ/BmOrvryBWicp2W/+YjffcVHHh
 af1ZRtCkN0v/CcR/tQPgygGEZTMsd6u1yF8BhiQ=
X-Google-Smtp-Source: APXvYqz7HprZ4bcyYVV3mIF6aHucW/Znj2uC3GMS+aDtrA6tv/yEaG9x13MjchExSuH4RftaJHub77QchQjdK82qeBw=
X-Received: by 2002:a6b:6516:: with SMTP id z22mr9438882iob.7.1567144742526;
 Thu, 29 Aug 2019 22:59:02 -0700 (PDT)
MIME-Version: 1.0
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 30 Aug 2019 00:58:51 -0500
Message-ID: <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_225904_044004_4D95D40F 
X-CRM114-Status: GOOD (  26.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 10:02 PM Peng Fan <peng.fan@nxp.com> wrote:
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
> +
> +  arm,func-ids:
> +    description: |
> +      An array of 32-bit values specifying the function IDs used by each
> +      mailbox channel. Those function IDs follow the ARM SMC calling
> +      convention standard [1].
> +
> +      There is one identifier per channel and the number of supported
> +      channels is determined by the length of this array.
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
>
SMC/HVC is synchronously(block) running in "secure mode", i.e, there
can only be one instance running platform wide. Right?  That implies
there is only one physical channel in the platform. So if you need to
initiate different functions (tx, rx), you call them sequentially by
changing the func-id for each request. Why not?

-Jassi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
