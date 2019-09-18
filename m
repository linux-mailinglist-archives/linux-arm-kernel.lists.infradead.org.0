Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C7EB6092
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 11:44:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEWH08fH5lMjwPW+Vb9IG74R2CP/sek0KkJhO/zmiQk=; b=MU778Ed3qAZ9CU
	WRKAQdtCpLUkTiRESWUT/CA6XHkl0EUpc/rJsCVKepjSbsh5jIRESpn0gunSIj1QnmY/MtGo49Msn
	uRLO7XQqC45IRHYmkdQ7gb8uKxsrYuC782FHpp+pwGVf87KEMISpw5k36bdAmDgLwDvlOJhJ5HK3F
	pb1COKP99UD9bE927IzkXbpxyjPKq8QxWu1kYgs9TqWjXzsyQfmJLAoMnti6CYDak2RBpv+4p3UYu
	FDHeCjxiKiL5YcpuQa48A0f5t9VVC9ma0KrgkCsdHIp3u4qyIBrYrsKi2x0ez82/D8W3AFb9m8Lh6
	7SFC6RKLinlYxcH7EkNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWVS-0001fa-Kd; Wed, 18 Sep 2019 09:44:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWVG-0001fE-Eq
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 09:44:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BBF02337;
 Wed, 18 Sep 2019 02:44:01 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 621BB3F59C;
 Wed, 18 Sep 2019 02:44:00 -0700 (PDT)
Date: Wed, 18 Sep 2019 10:43:47 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the
 ARM SMC/HVC mailbox
Message-ID: <20190918104347.285bd7ad@donnerap.cambridge.arm.com>
In-Reply-To: <CABb+yY2CP1i9fZMoPua=-mLCUpYrcO28xF5UXDeRD2XTYe7mEg@mail.gmail.com>
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-2-git-send-email-peng.fan@nxp.com>
 <20190917183115.3e40180f@donnerap.cambridge.arm.com>
 <CABb+yY2CP1i9fZMoPua=-mLCUpYrcO28xF5UXDeRD2XTYe7mEg@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_024402_588062_824F50A3 
X-CRM114-Status: GOOD (  38.65  )
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
 Peng Fan <peng.fan@nxp.com>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Sep 2019 00:27:00 -0500
Jassi Brar <jassisinghbrar@gmail.com> wrote:

Hi,

> On Tue, Sep 17, 2019 at 12:31 PM Andre Przywara <andre.przywara@arm.com> wrote:
> >
> > On Mon, 16 Sep 2019 09:44:37 +0000
> > Peng Fan <peng.fan@nxp.com> wrote:
> >
> > Hi,
> >  
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > The ARM SMC/HVC mailbox binding describes a firmware interface to trigger
> > > actions in software layers running in the EL2 or EL3 exception levels.
> > > The term "ARM" here relates to the SMC instruction as part of the ARM
> > > instruction set, not as a standard endorsed by ARM Ltd.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >  .../devicetree/bindings/mailbox/arm-smc.yaml       | 96 ++++++++++++++++++++++
> > >  1 file changed, 96 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > > new file mode 100644
> > > index 000000000000..bf01bec035fc
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > > @@ -0,0 +1,96 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/mailbox/arm-smc.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: ARM SMC Mailbox Interface
> > > +
> > > +maintainers:
> > > +  - Peng Fan <peng.fan@nxp.com>
> > > +
> > > +description: |
> > > +  This mailbox uses the ARM smc (secure monitor call) and hvc (hypervisor  
> >
> > I think "or" instead of "and" is less confusing.
> >  
> > > +  call) instruction to trigger a mailbox-connected activity in firmware,
> > > +  executing on the very same core as the caller. The value of r0/w0/x0
> > > +  the firmware returns after the smc call is delivered as a received
> > > +  message to the mailbox framework, so synchronous communication can be
> > > +  established. The exact meaning of the action the mailbox triggers as
> > > +  well as the return value is defined by their users and is not subject
> > > +  to this binding.
> > > +
> > > +  One use case of this mailbox is the SCMI interface, which uses shared  
> >
> >      One example use case of this mailbox ...
> > (to make it more obvious that it's not restricted to this)
> >  
> > > +  memory to transfer commands and parameters, and a mailbox to trigger a
> > > +  function call. This allows SoCs without a separate management processor
> > > +  (or when such a processor is not available or used) to use this
> > > +  standardized interface anyway.
> > > +
> > > +  This binding describes no hardware, but establishes a firmware interface.
> > > +  Upon receiving an SMC using one of the described SMC function identifiers,  
> >
> >                              ... the described SMC function identifier,
> >  
> > > +  the firmware is expected to trigger some mailbox connected functionality.
> > > +  The communication follows the ARM SMC calling convention.
> > > +  Firmware expects an SMC function identifier in r0 or w0. The supported
> > > +  identifiers are passed from consumers,  
> >
> >      identifier
> >
> > "passed from consumers": How? Where?
> > But I want to repeat: We should not allow this.
> > This is a binding for a mailbox controller driver, not a generic firmware backdoor.
> >  
> Exactly. The mailbox controller here is the  SMC/HVC instruction,

No, the mailbox controller is an *SMCCC compliant* smc/hvc call, targeting a very specific function ID. SMC calls are used for PSCI already, for instance, and you don't want to mess with that. Also some platforms define a vendor specific smc interface, again using a well constructed function ID complying to SMCCC.
So we definitely need to stay within SMCCC for this kind of generic interface, *and* to let firmware specify the function ID via the DT, to not clash with any other function ID.

> which needs 9 arguments to work. The fact that the fist argument is
> always going to be same on a platform is just the way we use this
> instruction.
> 
> > We should be as strict as possible to avoid any security issues.
> >  
> Any example of such a security issue?

Someone finds a way to trick some mailbox client to send a crafted message to the mailbox.

Do you have any example of a use case where the mailbox client needs to provide the function ID?

> > The firmware certainly knows the function ID it implements. The firmware controls the DT. So it is straight-forward to put the ID into the DT. The firmware could even do this at boot time, dynamically, before passing on the DT to the non-secure world (bootloader or kernel).
> >
> > What would be the use case of this functionality?
> >  
> At least for flexibility and consistency.

I appreciate the flexibility idea, but when creating an interface, especially a generic one to any kind of firmware, you should be as strict as possible, to avoid clashes in the future.
 
> > > or listed in the the arm,func-ids  
> >
> >                        arm,func-id
> >  
> > > +  properties as described below. The firmware can return one value in  
> >
> >      property
> >  
> > > +  the first SMC result register, it is expected to be an error value,
> > > +  which shall be propagated to the mailbox client.
> > > +
> > > +  Any core which supports the SMC or HVC instruction can be used, as long
> > > +  as a firmware component running in EL3 or EL2 is handling these calls.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - description:
> > > +          For implementations using ARM SMC instruction.
> > > +        const: arm,smc-mbox
> > > +
> > > +      - description:
> > > +          For implementations using ARM HVC instruction.
> > > +        const: arm,hvc-mbox  
> >
> > I am not particularly happy with this, but well ...
> >  
> > > +
> > > +  "#mbox-cells":
> > > +    const: 1  
> >
> > Why is this "1"? What is this number used for? It used to be the channel ID, but since you are describing a single channel controller only, this should be 0 now.
> >  
> Yes. I overlooked it and actually queued the patch for pull request.
> But I think the bindings should not carry a 'fix' patch later. Also I
> realise this revision of binding hasn't been reviewed by Rob. Maybe I
> should drop the patch for now.

Yes, please do. I would like to make sure that the binding is correct, as it serves as a specification for people implementing both firmware services and other drivers (like *BSD).

> > > +
> > > +  arm,func-id:
> > > +    description: |
> > > +      An 32-bit value specifying the function ID used by the mailbox.  
> >
> >          A single 32-bit value ...
> >  
> > > +      The function ID follow the ARM SMC calling convention standard [1].  
> >
> >                          follows
> >  
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +
> > > +required:
> > > +  - compatible
> > > +  - "#mbox-cells"
> > > +
> > > +examples:
> > > +  - |
> > > +    sram@93f000 {
> > > +      compatible = "mmio-sram";
> > > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > > +      #address-cells = <1>;
> > > +      #size-cells = <1>;
> > > +      ranges = <0x0 0x93f000 0x1000>;
> > > +
> > > +      cpu_scp_lpri: scp-shmem@0 {
> > > +        compatible = "arm,scmi-shmem";
> > > +        reg = <0x0 0x200>;
> > > +      };
> > > +    };
> > > +
> > > +    smc_tx_mbox: tx_mbox {
> > > +      #mbox-cells = <1>;  
> >
> > As mentioned above, should be 0.
> >  
> > > +      compatible = "arm,smc-mbox";
> > > +      /* optional */  
> >
> > First: having "optional" in a specific example is not helpful, just confusing.
> > Second: It is actually *not* optional in this case, as there is no other way of propagating the function ID. The SCMI driver as the mailbox client has certainly no clue about this.
> > I think I said this previously: Relying on the mailbox client to pass the function ID sounds broken, as this is a property of the mailbox controller driver. The mailbox client does not care about this mailbox communication detail, it just wants to trigger the mailbox.
> >  
> Again, the mailbox controller here is the SMC/HVC _instruction_, which
> doesn't care what value the first argument carry.

That is not true. Just check Peng's example implementation he mentioned in the cover letter:
#define FSL_SIP_SCMI_1			0xc20000fe
#define FSL_SIP_SCMI_2			0xc20000ff
....
	case FSL_SIP_SCMI_1:
	case FSL_SIP_SCMI_2:
		SMC_RET1(handle, scmi_handler(smc_fid, x1, x2, x3));

Definitely the function ID is crucial here.

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
