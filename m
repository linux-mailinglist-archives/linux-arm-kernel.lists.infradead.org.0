Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465E6A592A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 16:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dojulrpNDHXe68f3NbAnojuccUG8DpJtH4q9ca5M1ms=; b=Fm0AfT49gaoHBZ
	xwwT5ssKR091PE5hFck8oE2s4sgyrc2O5sEVuER0Lgg4YZ9jOF+QRzYY1zvMYoezSwm6NNffXYR5k
	kqhy9t8b8TW1NPH46qLhazmAzv+aiByuB2cUal4HM3UTGekhCbHoAZSaoSHLcVFW9Py7nQtywG9Im
	WzQQw4YOHx7pOan6USe2TfFZVs4jpqsJgsjBI1L5hVq50QfaErvjLJ1UxbQzzDIj0j31LdL1Q3ihV
	txoKvX9aq/cr+LQaoZBTnzkLJrClAG8/q462zvpjrYaSOyP3iH2Vo/IfmNYm6QhV7ApThAMhnQAu6
	WHn0vKusP4canc3Mw/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4nBz-0006hS-AV; Mon, 02 Sep 2019 14:20:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4nBn-0006gY-IE
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 14:20:17 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A432421744
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  2 Sep 2019 14:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567434012;
 bh=AxTJX4Sy34LCyqEsH+WI/Hwf5ujI35RSWIvy9oMh8Wc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=L2Blockz7/DoqZgkB8u4vX6tVvN7EVnrZ0r2H/VY0IsukXWuTe0ncWyvirv5atV4w
 UEUAdLuod8c9cPTqWimDKIokQKFtTOUdbmF5F0omUdbfF/SL1fKWn/pVq1n0kutMBX
 8xBC2rf1gZpeXsOLZNES3F/sI2JafMqN6YGFyNAU=
Received: by mail-qk1-f169.google.com with SMTP id q203so3413275qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 07:20:12 -0700 (PDT)
X-Gm-Message-State: APjAAAWwa1YQEsiws5DgZ6g7Sp6V0ZJQaL4qW0c/3n5yi/56l3tMy8jh
 0YQkHf0N59UP9SbnWNzWQwH2u1QPpbWw7nTv/Q==
X-Google-Smtp-Source: APXvYqxPGBMJIHE3Wdp0ctZv+Wz/CJn+h36vN88vdviYdDNQU98hoWVWliq0ENL5YpSo9mfe/J4UK3cWrQaTNxP86zY=
X-Received: by 2002:a05:620a:1356:: with SMTP id
 c22mr9452576qkl.119.1567434011842; 
 Mon, 02 Sep 2019 07:20:11 -0700 (PDT)
MIME-Version: 1.0
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <5d6d1b86.1c69fb81.f86b5.3988@mx.google.com>
In-Reply-To: <5d6d1b86.1c69fb81.f86b5.3988@mx.google.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 2 Sep 2019 15:20:00 +0100
X-Gmail-Original-Message-ID: <CAL_JsqLauLbgVg=Aguebqk3q6e+BOxiMNJ+xqTgkmpAjOh8BpA@mail.gmail.com>
Message-ID: <CAL_JsqLauLbgVg=Aguebqk3q6e+BOxiMNJ+xqTgkmpAjOh8BpA@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_072015_648100_FC244A1C 
X-CRM114-Status: GOOD (  29.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Sep 2, 2019 at 2:39 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Aug 28, 2019 at 03:02:58AM +0000, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > The ARM SMC/HVC mailbox binding describes a firmware interface to trigger
> > actions in software layers running in the EL2 or EL3 exception levels.
> > The term "ARM" here relates to the SMC instruction as part of the ARM
> > instruction set, not as a standard endorsed by ARM Ltd.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  .../devicetree/bindings/mailbox/arm-smc.yaml       | 125 +++++++++++++++++++++
> >  1 file changed, 125 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > new file mode 100644
> > index 000000000000..f8eb28d5e307
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > @@ -0,0 +1,125 @@
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
> > +  call) instruction to trigger a mailbox-connected activity in firmware,
> > +  executing on the very same core as the caller. By nature this operation
> > +  is synchronous and this mailbox provides no way for asynchronous messages
> > +  to be delivered the other way round, from firmware to the OS, but
> > +  asynchronous notification could also be supported. However the value of
> > +  r0/w0/x0 the firmware returns after the smc call is delivered as a received
> > +  message to the mailbox framework, so a synchronous communication can be
> > +  established, for a asynchronous notification, no value will be returned.
> > +  The exact meaning of both the action the mailbox triggers as well as the
> > +  return value is defined by their users and is not subject to this binding.
> > +
> > +  One use case of this mailbox is the SCMI interface, which uses shared memory
> > +  to transfer commands and parameters, and a mailbox to trigger a function
> > +  call. This allows SoCs without a separate management processor (or when
> > +  such a processor is not available or used) to use this standardized
> > +  interface anyway.
> > +
> > +  This binding describes no hardware, but establishes a firmware interface.
> > +  Upon receiving an SMC using one of the described SMC function identifiers,
> > +  the firmware is expected to trigger some mailbox connected functionality.
> > +  The communication follows the ARM SMC calling convention.
> > +  Firmware expects an SMC function identifier in r0 or w0. The supported
> > +  identifiers are passed from consumers, or listed in the the arm,func-ids
> > +  properties as described below. The firmware can return one value in
> > +  the first SMC result register, it is expected to be an error value,
> > +  which shall be propagated to the mailbox client.
> > +
> > +  Any core which supports the SMC or HVC instruction can be used, as long as
> > +  a firmware component running in EL3 or EL2 is handling these calls.
> > +
> > +properties:
> > +  compatible:
> > +    const: arm,smc-mbox
> > +
> > +  "#mbox-cells":
> > +    const: 1
> > +
> > +  arm,num-chans:
> > +    description: The number of channels supported.
> > +    items:
> > +      minimum: 1
> > +      maximum: 4096 # Should be enough?
> > +
> > +  method:
> > +    - enum:
>
> Did you build this with 'make dt_binding_check' as this should be a
> warning. This should not be a list entry (i.e. drop the '-').
>
> > +        - smc
> > +        - hvc
> > +
> > +  transports:
>
> arm,transports
>
> > +    - enum:
> > +        - mem
> > +        - reg
> > +
> > +  arm,func-ids:
> > +    description: |
> > +      An array of 32-bit values specifying the function IDs used by each
> > +      mailbox channel. Those function IDs follow the ARM SMC calling
> > +      convention standard [1].
> > +
> > +      There is one identifier per channel and the number of supported
> > +      channels is determined by the length of this array.
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array

Also, this doesn't work. You need:

allOf:
  - $ref: /schemas/types.yaml#/definitions/uint32-array

> > +    minItems: 0
> > +    maxItems: 4096   # Should be enough?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
