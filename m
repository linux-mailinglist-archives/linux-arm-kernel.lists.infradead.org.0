Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA154D3B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osZC1KOdVe78T4b1lZmSLlzGraZye7kpXdHzVuYt/2A=; b=ibX/mSWpBVRqp4
	gdUM8WXLMlxGIBwETlW65KbrCu5/2u0dv76MC3IbggeDbfKiRDS59r+uMXRw4Ya/7NqXzPltYloof
	0XVQeKHiabfKgJDtCtJDVfUUTHQqnGYXHXgi+wFfO2xvcjggPVNmTRtsfOeBiEYi3WyqozciK6znV
	dWXOb/0q19L/KuOmuAmunv4onUfUb6NyUgJzpA/aPsS+V0KEf98DSFFmRj394/JSeIq94vcQkitMH
	n0s1XYi2cg890oEN1QfUWOtAirrZf59odVoGRU39dBZy5nQNixLX2Iq6RaAbFS1jW/fwot6A4fKka
	az9W0YFOXQRREJuXCpDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzuj-0000Ij-NJ; Thu, 20 Jun 2019 16:27:53 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzuN-0000I9-2H
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:27:32 +0000
Received: by mail-io1-xd42.google.com with SMTP id w25so135240ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 09:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CX8s9WxO1kjnOx1IAEplfhAOdKpdfU5oisESF2S2i2s=;
 b=hW6d35dcH66VjSndHulXY8mLQ+4hFxOw0xq3JUzSx8xgA2yrP3QsqGercEeUzzVABP
 3TUXmjzoz69MygoW2fqLQ+WFVVg4gAPHkyyrbquwuEGnXa9AfcjyamuERw6SlrNY4Oss
 pxAicTcXQa1JY3uZ0ia9yjSXFtgujqrQKxnCgMzdApBPL2bzCo7ZCAL6P+gqucikXmTj
 WNbzVKMcRcV/Q5DvQzCf82P12btX94yjaZtC9WaCmaOwWVbCbCZ/hp9M0s4QQdSOMShV
 /Hgtud6VdargFmwxxr2DhXQCTXYdGcfcUAMVgxwCibGSLFbkcALOXSF+qRCbZjTKgZBu
 Tt5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CX8s9WxO1kjnOx1IAEplfhAOdKpdfU5oisESF2S2i2s=;
 b=qq3WRXk6Fj0LIRZGtsiB1s1aN6KbCpd3ZMqhjSVmQg/ahNEAUO/lRZQMuAqmZASd/l
 S4jY4B/pAh7Y8BCdFQ6pbkHmct+GD8ZQecC5DGFEHnD/1VkvyY6pDyPRCzD67qcMzQFw
 sTViu3yLD5+qTr9sdHF/cnXUG4Mc/bUH+FWgLhIf3pjlsGgaGsqWdOVSGnA6Z7ghNHyb
 JM0Z5h2G2lygAnBNQ0f3Y/ep+sG7J7tsuRoeQG1jP2j+cUockJeLPsod4M1DDvcEvpcf
 Y8s2KChOK/YnCKMxFB8rME8yskKjDxng47CSxAvsr83yyR8Vb/s791HNltS41fE7TdVH
 u7bg==
X-Gm-Message-State: APjAAAUv46pbHBl99onHM+6uRfBo9FqK93s6DmGQ3NfgzUt2P0E9TwrW
 eJWmaYOdrvoAEvTk0FkXAa97hnU5KEx8KIIPDyQ=
X-Google-Smtp-Source: APXvYqxIITI45eune2WDDNkDTdi9twqEa5g2nyH4P6h6nRs/ZfqhK7dpjVB/YYaNuTFCPikSAFjVk7xftozqQGfvaS0=
X-Received: by 2002:a5d:8c81:: with SMTP id g1mr11763289ion.239.1561048049928; 
 Thu, 20 Jun 2019 09:27:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-2-peng.fan@nxp.com>
 <20190620092241.GC1248@e107155-lin>
 <20190620171319.13dae226@donnerap.cambridge.arm.com>
In-Reply-To: <20190620171319.13dae226@donnerap.cambridge.arm.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Thu, 20 Jun 2019 11:27:19 -0500
Message-ID: <CABb+yY0teBHHdtOFz6-ab3v2C2z39=t09XwL+=FKSp=ogQGENQ@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
 mailbox
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_092731_141972_6345204F 
X-CRM114-Status: GOOD (  37.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Florian Fainelli <f.fainelli@gmail.com>, festevam@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>, ",
 Sascha Hauer" <kernel@pengutronix.de>, Sudeep Holla <sudeep.holla@arm.com>,
 van.freenix@gmail.com, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 11:13 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Thu, 20 Jun 2019 10:22:41 +0100
> Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> > On Mon, Jun 03, 2019 at 04:30:04PM +0800, peng.fan@nxp.com wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > The ARM SMC mailbox binding describes a firmware interface to trigger
> > > actions in software layers running in the EL2 or EL3 exception levels.
> > > The term "ARM" here relates to the SMC instruction as part of the ARM
> > > instruction set, not as a standard endorsed by ARM Ltd.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >
> > > V2:
> > > Introduce interrupts as a property.
> > >
> > > V1:
> > > arm,func-ids is still kept as an optional property, because there is no
> > > defined SMC funciton id passed from SCMI. So in my test, I still use
> > > arm,func-ids for ARM SIP service.
> > >
> > >  .../devicetree/bindings/mailbox/arm-smc.txt        | 101 +++++++++++++++++++++
> > >  1 file changed, 101 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.txt b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > > new file mode 100644
> > > index 000000000000..401887118c09
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > > @@ -0,0 +1,101 @@
> > > +ARM SMC Mailbox Interface
> > > +=========================
> > > +
> > > +This mailbox uses the ARM smc (secure monitor call) instruction to trigger
> > > +a mailbox-connected activity in firmware, executing on the very same core
> > > +as the caller. By nature this operation is synchronous and this mailbox
> > > +provides no way for asynchronous messages to be delivered the other way
> > > +round, from firmware to the OS, but asynchronous notification could also
> > > +be supported. However the value of r0/w0/x0 the firmware returns after
> > > +the smc call is delivered as a received message to the mailbox framework,
> > > +so a synchronous communication can be established, for a asynchronous
> > > +notification, no value will be returned. The exact meaning of both the
> > > +action the mailbox triggers as well as the return value is defined by
> > > +their users and is not subject to this binding.
> > > +
> > > +One use case of this mailbox is the SCMI interface, which uses shared memory
> > > +to transfer commands and parameters, and a mailbox to trigger a function
> > > +call. This allows SoCs without a separate management processor (or when
> > > +such a processor is not available or used) to use this standardized
> > > +interface anyway.
> > > +
> > > +This binding describes no hardware, but establishes a firmware interface.
> > > +Upon receiving an SMC using one of the described SMC function identifiers,
> > > +the firmware is expected to trigger some mailbox connected functionality.
> > > +The communication follows the ARM SMC calling convention[1].
> > > +Firmware expects an SMC function identifier in r0 or w0. The supported
> > > +identifiers are passed from consumers, or listed in the the arm,func-ids
> > > +properties as described below. The firmware can return one value in
> > > +the first SMC result register, it is expected to be an error value,
> > > +which shall be propagated to the mailbox client.
> > > +
> > > +Any core which supports the SMC or HVC instruction can be used, as long as
> > > +a firmware component running in EL3 or EL2 is handling these calls.
> > > +
> > > +Mailbox Device Node:
> > > +====================
> > > +
> > > +This node is expected to be a child of the /firmware node.
> > > +
> > > +Required properties:
> > > +--------------------
> > > +- compatible:              Shall be "arm,smc-mbox"
> > > +- #mbox-cells              Shall be 1 - the index of the channel needed.
> > > +- arm,num-chans            The number of channels supported.
> > > +- method:          A string, either:
> > > +                   "hvc": if the driver shall use an HVC call, or
> > > +                   "smc": if the driver shall use an SMC call.
> > > +
> > > +Optional properties:
> > > +- arm,func-ids             An array of 32-bit values specifying the function
> > > +                   IDs used by each mailbox channel. Those function IDs
> > > +                   follow the ARM SMC calling convention standard [1].
> > > +                   There is one identifier per channel and the number
> > > +                   of supported channels is determined by the length
> > > +                   of this array.
> > > +- interrupts               SPI interrupts may be listed for notification,
> > > +                   each channel should use a dedicated interrupt
> > > +                   line.
> > > +
> >
> > I think SMC mailbox as mostly unidirectional/Tx only channel. And the
> > interrupts here as stated are for notifications, so I prefer to keep
> > them separate channel. I assume SMC call return indicates completion.
> > Or do you plan to use these interrupts as the indication for completion
> > of the command? I see in patch 2/2 the absence of IRQ is anyway dealt
> > the way I mention above.
> >
> > Does it make sense or am I missing something here ?
>
> I think you are right. From a mailbox point of view "completion" means
> that the trigger has reached the other side. A returning smc call is a
> perfect indication of this fact.
>
Yes. mailbox only cares about message delivery.

> Whether the action triggered by this
> mailbox command has completed is a totally separate question and out of
> the scope of the mailbox.
>
Yes, whether the message is accepted/rejected at protocol level is a
matter of upper layer (protocol).

> This should be handled by a higher level
> protocol (SCPI in this case). Which could mean that this employs a
> separate return mailbox channel, which is RX only and implemented by
> interrupts. Which could or could not be part of this driver.
>
Any message received over the same class of channel should be handled
in this driver.

Cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
