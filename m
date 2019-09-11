Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFBDAF47A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 04:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQCIiC2q/53x2NrmYy1MCg+NebPBz9EDOmm32pkuGaA=; b=K5BZ46IYvMw+Gk
	C6WQ0gecGXnDMyyKsVdBzEH1uc58Ew5Ieqj7VYblfTgJ1hd1fGOnPFa8sTTxbdgFSrZ3ekX1f8y1E
	n0rpEseLWbT9n74kQZh6qDEZ6fl5fGaJvmng5IIefVG8Vvgmt7R2OinjDGsdNSyGLIj7invMiFzqp
	saxXoKsPUcVuHeWVYJd16DA7Fe5XbrDbZqSpH+WViV8WIYrvUCPP/WU3Td/po5Z8SkkICA+Mx22HB
	8/8rkVyvu0MwhYBLKczdAtWdjonkjdOHLopEaas96jFoH/EpRvd3Rtv/ANm2jwbA4/ONQq39HCFPC
	Rkzu5aES7VDF1gamIW5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7scW-0004qE-8J; Wed, 11 Sep 2019 02:44:36 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7scJ-0004pP-9Q
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 02:44:25 +0000
Received: by mail-io1-xd42.google.com with SMTP id f4so41683783ion.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 19:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Tpmd4s87/SLkLb8E8kOjEIQTqrfm/vOEY+B+rLuuG44=;
 b=qdyi2X6bwwHCXJ+qW+lzy8gdokKC1xm6E0cMPkCpNi8h1KMab5j+wAfnd4IN/nhoZP
 LUbbF+6h1z9jx592a34+SkpSF2sx9ph9BH5LABjIxiOAIxQ8in0jefIsQHgF6kK1OfCz
 ZLsiq9xcESnWBvP2tgHNoBd6SCsdD1ib2zpnvAitj30HjVJmFlRW+iUU+VitSZG/foJX
 BfbFOTWOyNZXDSHRd/AfpkJFKuZvoMbGRkyezvUPHiDDDi1qpLQ8JNXPTV5fnecDtDdL
 99+j2UYHuEW9gh7jg5cu8tGXE4yiFOQz1/KVnHYnzcMObVFCAGV4L0+BWLPIAJMSoCmF
 HnMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Tpmd4s87/SLkLb8E8kOjEIQTqrfm/vOEY+B+rLuuG44=;
 b=rKC1qjL/HfSvipahxWDiQ2wF8+qdVxBDA1pshRBBMeMtiQtMumU8rFAygWcJqXbDsX
 DmnHnThY14FToZFscJyCFb9jx1tcM+8jHP5rchHHdce4hCXq0Xq1e/GslwOWeGkRHlPA
 FrxPlXl0igTtzwaDZw1/i9jObpWfkSipYDEW/oZDJzLNrIKvOpwHEVkuwJ1SXYiUGScj
 ugIMnYRLJSd4UzTBub1VZfkRFeAZOc5x3QIx2B+IYMqBezcwiNNKJ5juaEz1CKF1Lb/B
 JK5g37ew9nN4vGewI4wltPQDGvovZM81X7Ak25PCVdD96aCG8ayb4CgvjRw60wbxLZu2
 zeQQ==
X-Gm-Message-State: APjAAAVs8cvSNaTT/ccS2q7ADqT5LU0LWP7wmGkb98Y+KvNriqb1vcl2
 y+tUa8kkJmp1AtF3IoqyCjJ4xhJrpqGb3+76rcGD5w==
X-Google-Smtp-Source: APXvYqxC5/ICozkrWJmI5Nd/Y6JYBFqpeOItewQ2dP2xWjPVpaX1wqYKW2lq8ogSzZ3Y/VGmHATwkRhifz8pcSVmMnw=
X-Received: by 2002:a6b:e609:: with SMTP id g9mr13296099ioh.7.1568169862392;
 Tue, 10 Sep 2019 19:44:22 -0700 (PDT)
MIME-Version: 1.0
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <20190909164208.6605054e@donnerap.cambridge.arm.com>
In-Reply-To: <20190909164208.6605054e@donnerap.cambridge.arm.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Tue, 10 Sep 2019 21:44:11 -0500
Message-ID: <CABb+yY2rppSOgqMy+R294d94xwi5UPR55Eo-WB8KA6m11nG3iQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_194423_349993_6687C201 
X-CRM114-Status: GOOD (  38.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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

On Mon, Sep 9, 2019 at 10:42 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Wed, 28 Aug 2019 03:02:58 +0000
> Peng Fan <peng.fan@nxp.com> wrote:
>
> Hi,
>
> sorry for the late reply, eventually managed to have a closer look on this.
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
>
> This maximum sounds rather arbitrary. Why do we need one? In the driver this just allocates more memory, so why not just impose no artificial limit at all?
>
This will be gone, once the driver is converted to 1channel per controller.

> Actually, do we need this property at all? Can't we just rely on the size of arm,func-ids to determine this (using of_property_count_elems_of_size() in the driver)? Having both sounds redundant and brings up the question what to do if they don't match.
>

> > +
> > +  method:
> > +    - enum:
> > +        - smc
> > +        - hvc
> > +
> > +  transports:
> > +    - enum:
> > +        - mem
> > +        - reg
>
> Shouldn't there be a description on what both mean, exactly?
> For instance I would expect a list of registers to be shown for the "reg" case, and be it by referring to the ARM SMCCC.
>
> Also looking at the driver this brings up more questions:
> - Which memory does mem refer to? If this is really the means of transport, it should be referenced in this *controller* node and populated by the driver. Looking at the example below and the driver code, it actually isn't used that way, instead the memory is used and controlled by the mailbox *client*.
> - What is the actual difference between the two transports? For "mem" we just populate the registers with 0, for "reg" we use the data. Couldn't this be left to the client?
>
> There are more points which makes me think this property is actually redundant, see my comments on patch 2/2.
>
> > +
> > +  arm,func-ids:
> > +    description: |
> > +      An array of 32-bit values specifying the function IDs used by each
> > +      mailbox channel. Those function IDs follow the ARM SMC calling
> > +      convention standard [1].
> > +
> > +      There is one identifier per channel and the number of supported
> > +      channels is determined by the length of this array.
>
> I think this makes it obvious that arm,num-chans is not needed.
>
> Also this somewhat contradicts the driver implementation, which allows the array to be shorter, marking this as UINT_MAX and later on using the first data item as a function identifier. This is somewhat surprising and not documented (unless I missed something).
>
> So I would suggest:
> - We drop the transports property, and always put the client provided data in the registers, according to the SMCCC. Document this here.
>   A client not needing those could always puts zeros (or garbage) in there, the respective firmware would just ignore the registers.
> - We drop "arm,num-chans", as this is just redundant with the length of the func-ids array.
> - We don't impose an arbitrary limit on the number of channels. From the firmware point of view this is just different function IDs, from Linux' point of view just the size of the memory used. Both don't need to be limited artificially IMHO.
>
Sounds like we are in sync.

> - We mark arm,func-ids as required, as this needs to be fixed, allocated number.
>
I still think func-id can be done without. A client can always pass
the value as it knows what it expects. But I can live with it being
optional.

cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
