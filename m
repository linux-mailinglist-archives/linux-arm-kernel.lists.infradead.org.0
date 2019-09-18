Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9696B5AE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 07:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eeyq3vIqwk4yQl6D8U74NajucV8kKv1T4jq+Ydw6VM=; b=ThGQfWGK26F4vA
	RBWgvyN4++1thN9GA+J1C+QxRJFZ23fXUIRxHVvEahT0C8FUKz6SCzSXFQS0MX1PU5iX/kQ5knM7h
	HH7NSIZVErIHci9XSR/PfJnwBJLR68KZWk5ppWp+mFJELSbI6H2dYqe14Rk0sND8gLL+bHziGp0Js
	GVooUUOiYeYTM4QAZnZgqjOL7twnfiux6VCVMUQEE55J3A4nFsDdapSiUkJWxNW+X2L5ykS0pnGkl
	/xj78vTV5EqcZvUiWVgT9gYe2E0kLfw9nF5Vam8dwzjVhGH8N7Cf6OJ5x9g1dhfzJ3+jZVLXj4tBq
	Ja7mGOOIAZL4eymzeGvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iASUw-00027X-TW; Wed, 18 Sep 2019 05:27:27 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iASUj-00026c-KS
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 05:27:15 +0000
Received: by mail-io1-xd44.google.com with SMTP id m11so13315111ioo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 22:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=aeBpu/wksCT1eq18uEHm7Scq/w+GtocYUT2tO+t26F0=;
 b=vMp8M65KRUlfeZGbM54vJnl7+FvdUgmmaWesiZcW/q5UdEYhMJ7/Ty2eSltd8PLGSm
 DMt9o6GCsyfy3wpiL2IhV8AYWGbVyBNDanNECOSoSnTx/ieDAogDlwXNWc0rblN/BaYV
 ttRlnUfsJkyh//HvGDaFJUe+kU04vclfJWM8DxfpdxlJ6DJe7c7Mf2rMQsGlwpzlGg9f
 QtAzpUp4zU1DzfVu/0TE1p1ELMAe4qFJ2ItweEowoOecSsUhBMZfZCoGzZEGcQiCbUTP
 7o6+6ufAfQhqGuB6oLJClyXQFUmCXq82COD21jB54iRw9pvuRDD302YxWCd9GIek2E7Z
 k/0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=aeBpu/wksCT1eq18uEHm7Scq/w+GtocYUT2tO+t26F0=;
 b=eei+XgET56Ja++acNAoq34NNnV9SADvYgxxGSnuPzQXFFWxFA/vEFGIplJIUabTkLT
 avEB4oj9tH1ALiBpzXnEAO4qLLe03r6JUJbawYyMudlWo6QXFBh8aLAuO8zFvZYY+YMR
 T/sIXVNQ3vumlHqw98dUEdQ+bsNmKulku7so2zPr940nrZKzePIP6wCx13sztfiNDZw8
 zSUHB7KxVYxaXhYEcQIpfFXWLXzPKuRfdkhttCWPjK6tRl/b/0iupnj9XrHOEHwqrgMB
 oiJ9lqE02Vc4laPqvOmhbDbwIav/hevUT3PZpCLvDWNSqD2tlVo69bV/Z2LyitzYE6Li
 zUmA==
X-Gm-Message-State: APjAAAUgrKyX9moJaHL+W3dQzCh061xkTq7ifyUmV2h9/H05tvJNi/Zz
 X5EhwA8r21UFbr8KalJJieBmmnmHpVq/Bps+SNs=
X-Google-Smtp-Source: APXvYqx5XSrUtThjRZDoB5Q++Oj4nDBjUDfWVblqDIj6KUhujZbYc3JJ8XIGjEO/QXyyA5B6D207fuaYBXrQI9oxlIY=
X-Received: by 2002:a5d:8a0f:: with SMTP id w15mr3299161iod.239.1568784431907; 
 Tue, 17 Sep 2019 22:27:11 -0700 (PDT)
MIME-Version: 1.0
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-2-git-send-email-peng.fan@nxp.com>
 <20190917183115.3e40180f@donnerap.cambridge.arm.com>
In-Reply-To: <20190917183115.3e40180f@donnerap.cambridge.arm.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 18 Sep 2019 00:27:00 -0500
Message-ID: <CABb+yY2CP1i9fZMoPua=-mLCUpYrcO28xF5UXDeRD2XTYe7mEg@mail.gmail.com>
Subject: Re: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_222713_676735_C8852C5C 
X-CRM114-Status: GOOD (  35.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Peng Fan <peng.fan@nxp.com>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 12:31 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Mon, 16 Sep 2019 09:44:37 +0000
> Peng Fan <peng.fan@nxp.com> wrote:
>
> Hi,
>
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > The ARM SMC/HVC mailbox binding describes a firmware interface to trigger
> > actions in software layers running in the EL2 or EL3 exception levels.
> > The term "ARM" here relates to the SMC instruction as part of the ARM
> > instruction set, not as a standard endorsed by ARM Ltd.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  .../devicetree/bindings/mailbox/arm-smc.yaml       | 96 ++++++++++++++++++++++
> >  1 file changed, 96 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > new file mode 100644
> > index 000000000000..bf01bec035fc
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > @@ -0,0 +1,96 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mailbox/arm-smc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ARM SMC Mailbox Interface
> > +
> > +maintainers:
> > +  - Peng Fan <peng.fan@nxp.com>
> > +
> > +description: |
> > +  This mailbox uses the ARM smc (secure monitor call) and hvc (hypervisor
>
> I think "or" instead of "and" is less confusing.
>
> > +  call) instruction to trigger a mailbox-connected activity in firmware,
> > +  executing on the very same core as the caller. The value of r0/w0/x0
> > +  the firmware returns after the smc call is delivered as a received
> > +  message to the mailbox framework, so synchronous communication can be
> > +  established. The exact meaning of the action the mailbox triggers as
> > +  well as the return value is defined by their users and is not subject
> > +  to this binding.
> > +
> > +  One use case of this mailbox is the SCMI interface, which uses shared
>
>      One example use case of this mailbox ...
> (to make it more obvious that it's not restricted to this)
>
> > +  memory to transfer commands and parameters, and a mailbox to trigger a
> > +  function call. This allows SoCs without a separate management processor
> > +  (or when such a processor is not available or used) to use this
> > +  standardized interface anyway.
> > +
> > +  This binding describes no hardware, but establishes a firmware interface.
> > +  Upon receiving an SMC using one of the described SMC function identifiers,
>
>                              ... the described SMC function identifier,
>
> > +  the firmware is expected to trigger some mailbox connected functionality.
> > +  The communication follows the ARM SMC calling convention.
> > +  Firmware expects an SMC function identifier in r0 or w0. The supported
> > +  identifiers are passed from consumers,
>
>      identifier
>
> "passed from consumers": How? Where?
> But I want to repeat: We should not allow this.
> This is a binding for a mailbox controller driver, not a generic firmware backdoor.
>
Exactly. The mailbox controller here is the  SMC/HVC instruction,
which needs 9 arguments to work. The fact that the fist argument is
always going to be same on a platform is just the way we use this
instruction.

> We should be as strict as possible to avoid any security issues.
>
Any example of such a security issue?

> The firmware certainly knows the function ID it implements. The firmware controls the DT. So it is straight-forward to put the ID into the DT. The firmware could even do this at boot time, dynamically, before passing on the DT to the non-secure world (bootloader or kernel).
>
> What would be the use case of this functionality?
>
At least for flexibility and consistency.

> > or listed in the the arm,func-ids
>
>                        arm,func-id
>
> > +  properties as described below. The firmware can return one value in
>
>      property
>
> > +  the first SMC result register, it is expected to be an error value,
> > +  which shall be propagated to the mailbox client.
> > +
> > +  Any core which supports the SMC or HVC instruction can be used, as long
> > +  as a firmware component running in EL3 or EL2 is handling these calls.
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - description:
> > +          For implementations using ARM SMC instruction.
> > +        const: arm,smc-mbox
> > +
> > +      - description:
> > +          For implementations using ARM HVC instruction.
> > +        const: arm,hvc-mbox
>
> I am not particularly happy with this, but well ...
>
> > +
> > +  "#mbox-cells":
> > +    const: 1
>
> Why is this "1"? What is this number used for? It used to be the channel ID, but since you are describing a single channel controller only, this should be 0 now.
>
Yes. I overlooked it and actually queued the patch for pull request.
But I think the bindings should not carry a 'fix' patch later. Also I
realise this revision of binding hasn't been reviewed by Rob. Maybe I
should drop the patch for now.

> > +
> > +  arm,func-id:
> > +    description: |
> > +      An 32-bit value specifying the function ID used by the mailbox.
>
>          A single 32-bit value ...
>
> > +      The function ID follow the ARM SMC calling convention standard [1].
>
>                          follows
>
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +
> > +required:
> > +  - compatible
> > +  - "#mbox-cells"
> > +
> > +examples:
> > +  - |
> > +    sram@93f000 {
> > +      compatible = "mmio-sram";
> > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > +      #address-cells = <1>;
> > +      #size-cells = <1>;
> > +      ranges = <0x0 0x93f000 0x1000>;
> > +
> > +      cpu_scp_lpri: scp-shmem@0 {
> > +        compatible = "arm,scmi-shmem";
> > +        reg = <0x0 0x200>;
> > +      };
> > +    };
> > +
> > +    smc_tx_mbox: tx_mbox {
> > +      #mbox-cells = <1>;
>
> As mentioned above, should be 0.
>
> > +      compatible = "arm,smc-mbox";
> > +      /* optional */
>
> First: having "optional" in a specific example is not helpful, just confusing.
> Second: It is actually *not* optional in this case, as there is no other way of propagating the function ID. The SCMI driver as the mailbox client has certainly no clue about this.
> I think I said this previously: Relying on the mailbox client to pass the function ID sounds broken, as this is a property of the mailbox controller driver. The mailbox client does not care about this mailbox communication detail, it just wants to trigger the mailbox.
>
Again, the mailbox controller here is the SMC/HVC _instruction_, which
doesn't care what value the first argument carry.

Cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
