Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8579E8DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufPNk57deKhHvFiAK4sR4hDooAFXRWViQ+wv9wGkHX0=; b=AdZaautqkUdA8S
	wKMNu/0soBr9fLx9Z4auRcuv3Uugm9qfe/SsdQqCAh81Xhy8WTMcrXDlzyUzrT0V825dwUcIV/Wxx
	L1wVrVcz8IMe/vmvhiXmokImAPCkrNg12hJioT/PKYJefYwZTLpBjPCUGAzLKKOX/oigNien3GtFw
	H39MG2apNiokqHGEoOTP6+WanAzhLPCjc72DWmYKdloRhdSXz/RMYdpW3kT3R4TTWe4uKHZtdtL1E
	AWvu4eZgbOrlizkJAaRsK2Rxk1mFC454Y5nkhBl9YxLKzBsGdyYwlTC/LKna9kwW5U74lJ1B6lSbN
	9UOHkn/P4ZFRFn1IkyeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bIc-0000A0-Ah; Tue, 27 Aug 2019 13:14:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bIO-00009I-Fi
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:14:02 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B2F42184D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 13:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566911639;
 bh=n8ibduXjZXj7Q34xh0Rv5sPDq7/16sV0kGKVNRLgDSs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lSNV9HxRdPa/5Ef56wsJ6JYR5Xjq4MdznNNx74DNIz4MOmTAVYNQsoy+Xu1Lk6dBW
 sRVBzin4qJyRoLxOuwFBdMs0YnPpXYwVMWlj8/onYqVPNA/0l4oiiK+0vfrDuiYGNu
 ApTb/71j0CI5hh9Pqi6kf6tBHis1MHAWXGOJnjS4=
Received: by mail-qt1-f170.google.com with SMTP id t12so21194700qtp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 06:13:59 -0700 (PDT)
X-Gm-Message-State: APjAAAXoxOzY2quzy3L2IyCvMEWpKGBQCdXCiRpHy/hnY4uuHuGSqdpI
 YWP+xTo9cW0XWM4ppkwILd25bdPFRIW0fmQvOg==
X-Google-Smtp-Source: APXvYqxM4rKSeMsRFJ0k2CX54SJt1oCxc9GdiuyJ73RX+TOjoI7sPcD0/x/mVMxp/Tq4eyB0bRsd2oxqjdCHpUHNzIA=
X-Received: by 2002:a0c:eb92:: with SMTP id x18mr20029210qvo.39.1566911638442; 
 Tue, 27 Aug 2019 06:13:58 -0700 (PDT)
MIME-Version: 1.0
References: <1566942646-18015-1-git-send-email-peng.fan@nxp.com>
 <1566942646-18015-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1566942646-18015-2-git-send-email-peng.fan@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 27 Aug 2019 08:13:47 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK7xPTYFzSXt52m+Z0LRcFy2TUfa45XzY1YGH0-JRA-WQ@mail.gmail.com>
Message-ID: <CAL_JsqK7xPTYFzSXt52m+Z0LRcFy2TUfa45XzY1YGH0-JRA-WQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061400_566989_8BA0715D 
X-CRM114-Status: GOOD (  28.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Aug 27, 2019 at 4:51 AM Peng Fan <peng.fan@nxp.com> wrote:
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
>  .../devicetree/bindings/mailbox/arm-smc.yaml       | 126 +++++++++++++++++++++
>  1 file changed, 126 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
>
> diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> new file mode 100644
> index 000000000000..ae677e0c0910
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> @@ -0,0 +1,126 @@
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
> +     minimum: 1
> +     maximum: 4096 # Should be enough?
> +
> +  method:
> +    items:

You can drop 'items' as this is a single entry.

> +      - enum:
> +          - smc
> +          - hvc
> +
> +  transports:
> +    items:

same here

> +      - enum:
> +          - mem
> +          - reg
> +
> +  arm,func-ids:

Needs a $ref to a type (uint32-array).

> +    description: |
> +      An array of 32-bit values specifying the function IDs used by each
> +      mailbox channel. Those function IDs follow the ARM SMC calling
> +      convention standard [1].
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

Looks like some indentation problem...

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

&smc_mbox and <> each entry.

> +        mbox-names = "tx", "rx";
> +        shmem = <&cpu_scp_lpri &cpu_scp_hpri>;

<> each entry

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
