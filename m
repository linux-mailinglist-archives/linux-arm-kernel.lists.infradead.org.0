Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1011636FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pdt6eAyhakhBxFgHFUCns7fpHWwxRaIQ4nfMLkErXTk=; b=lh2SlrpJomWbGl
	BpI3hh3uCounlg8XdUkBExo8PWP6358/3UJfnn647guIjSvI5VAgZ6yPpYqyz7ZtyU6DcaW7YKe0d
	WVWYvrGdt4JbIuzCwosCqMxu5avBb0Ttzkrqrbzypg90sIO7iEDDJ9E8JPxoMKyEYFq4h1sID/4ap
	JVe+QNj196jxbu0z52PqMnNqd2gC2HoNQxq63oAP/FcocxXr5Zu95hgy7p/yTLZfoxRkG3K1aKlZ1
	FDIXnkMcTDeEdyR9Pj7kWNOBXaCcxbhFYxo3q+KJfVpfC6Zg3YwiKmyYOnDQ/zUx5EMYEPZXgAcor
	0Q41W1QSEsfUcm40yWMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkqDO-0000B1-SG; Tue, 09 Jul 2019 13:31:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkqDC-0000AP-RP
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 13:31:16 +0000
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCAEB20844
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  9 Jul 2019 13:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562679073;
 bh=3wGKLVeO3fCGNI21pE8g2mlHTvyGrxaYU5GH0XBhbZo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Ko5KUQPeWj8mid6DOLP7Kolm0+vAAhhcEL4SqjjCiHbXFats+P3GdGec5DBLb0u8y
 ohyMfjAh8dcRI9n9+GpXajFwUTcUlb3u/kT1/NFr4JTbW2EKifRsr2xEcdl96siFk4
 P3lpz/+QlT4w3XR3BUknjAEzX5wxBGEcioAhROq8=
Received: by mail-qt1-f172.google.com with SMTP id l9so13336212qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 06:31:13 -0700 (PDT)
X-Gm-Message-State: APjAAAWRMhh3gwNYfcOGCA2df+hG5CbBbQ1WJ7oKQI2DJUvSCayxqxnU
 WG8E7cH0864zlx9GTuDeQXABe2cf5NpmiAh9Ow==
X-Google-Smtp-Source: APXvYqytEduM93n88NZkMIr8ful2eqPnknrfJRQvFdxqesowuhzWWeW5qOJcaL15ql5Jgia252bFJ1RdwE61vkN36F8=
X-Received: by 2002:a0c:b786:: with SMTP id l6mr19512118qve.148.1562679073072; 
 Tue, 09 Jul 2019 06:31:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-2-peng.fan@nxp.com>
 <20190708221947.GA13552@bogus>
 <AM0PR04MB44816C38C43A3C8E09E8FFF588F10@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB44816C38C43A3C8E09E8FFF588F10@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 9 Jul 2019 07:31:01 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK+YK0mNiNK_wuoGcor6aKVx-hQYy_awc2AQg9jQe6iVQ@mail.gmail.com>
Message-ID: <CAL_JsqK+YK0mNiNK_wuoGcor6aKVx-hQYy_awc2AQg9jQe6iVQ@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
 mailbox
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_063115_330912_EC41A601 
X-CRM114-Status: GOOD (  33.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "festevam@gmail.com" <festevam@gmail.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 7:40 PM Peng Fan <peng.fan@nxp.com> wrote:
>
> Hi Rob,
>
> > Subject: Re: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
> > mailbox
> >
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
> > > arm,func-ids is still kept as an optional property, because there is
> > > no defined SMC funciton id passed from SCMI. So in my test, I still
> > > use arm,func-ids for ARM SIP service.
> > >
> > >  .../devicetree/bindings/mailbox/arm-smc.txt        | 101
> > +++++++++++++++++++++
> > >  1 file changed, 101 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > > b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > > new file mode 100644
> > > index 000000000000..401887118c09
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > > @@ -0,0 +1,101 @@
> > > +ARM SMC Mailbox Interface
> > > +=========================
> > > +
> > > +This mailbox uses the ARM smc (secure monitor call) instruction to
> > > +trigger a mailbox-connected activity in firmware, executing on the
> > > +very same core as the caller. By nature this operation is synchronous
> > > +and this mailbox provides no way for asynchronous messages to be
> > > +delivered the other way round, from firmware to the OS, but
> > > +asynchronous notification could also be supported. However the value
> > > +of r0/w0/x0 the firmware returns after the smc call is delivered as a
> > > +received message to the mailbox framework, so a synchronous
> > > +communication can be established, for a asynchronous notification, no
> > > +value will be returned. The exact meaning of both the action the
> > > +mailbox triggers as well as the return value is defined by their users and is
> > not subject to this binding.
> > > +
> > > +One use case of this mailbox is the SCMI interface, which uses shared
> > > +memory to transfer commands and parameters, and a mailbox to trigger
> > > +a function call. This allows SoCs without a separate management
> > > +processor (or when such a processor is not available or used) to use
> > > +this standardized interface anyway.
> > > +
> > > +This binding describes no hardware, but establishes a firmware interface.
> > > +Upon receiving an SMC using one of the described SMC function
> > > +identifiers, the firmware is expected to trigger some mailbox connected
> > functionality.
> > > +The communication follows the ARM SMC calling convention[1].
> > > +Firmware expects an SMC function identifier in r0 or w0. The
> > > +supported identifiers are passed from consumers, or listed in the the
> > > +arm,func-ids properties as described below. The firmware can return
> > > +one value in the first SMC result register, it is expected to be an
> > > +error value, which shall be propagated to the mailbox client.
> > > +
> > > +Any core which supports the SMC or HVC instruction can be used, as
> > > +long as a firmware component running in EL3 or EL2 is handling these calls.
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
> > > +Example:
> > > +--------
> > > +
> > > +   sram@910000 {
> > > +           compatible = "mmio-sram";
> > > +           reg = <0x0 0x93f000 0x0 0x1000>;
> > > +           #address-cells = <1>;
> > > +           #size-cells = <1>;
> > > +           ranges = <0 0x0 0x93f000 0x1000>;
> > > +
> > > +           cpu_scp_lpri: scp-shmem@0 {
> > > +                   compatible = "arm,scmi-shmem";
> > > +                   reg = <0x0 0x200>;
> > > +           };
> > > +
> > > +           cpu_scp_hpri: scp-shmem@200 {
> > > +                   compatible = "arm,scmi-shmem";
> > > +                   reg = <0x200 0x200>;
> > > +           };
> > > +   };
> > > +
> > > +   smc_mbox: mailbox {
> >
> > This should be a child of 'firmware' node at least and really a child of the
> > firmware component that implements the feature.
>
> I checked other mbox driver, including the mbox used by ti sci, mbox used by
> i.MX8QXP. both mbox dts node not a child a firmware node,

Because those are actual h/w blocks and not implemented in firmware calls?

> I am not sure why put mbox node into a child a firmware node here.

If it is an interface provided by firmware, then it goes under /firmware.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
