Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214A3155654
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 12:06:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuG4yz4j9HNPjup3YIb/hnhnMyLmp5Wby6x9zz1H7NE=; b=V+b0s2g7fHVYbv
	uSutkh9usStMaeRc6n4mJ4dmn6yntTp5Lb0Zp5B7aadTVoSPB2sVr4zHkcakvC21vCRzzbO0hNmQC
	YIF8671xbJ7Zz2eQnPpL9qOfvV7MT37zpZ5ZhsDUB4wyoDsue+h+3RYGOGJw+AjY/JSkM0XzsJmu3
	N37ATg0Qr/m4vIWLuVQopyJC9iPup2r3IpkVXu8urC0tSK4CDe9UrDniyVWyfvwhvqY5jUAx6rQgv
	hQUsrjSjg3w9SrN+vUZRAQmdWKNSQgxDqAsuzvf9E/B5N4dYo/Czs/yOJcwnLR82BANqxmKslEl8n
	Yn0pwrNHDnUpb8bWcBwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01Sf-0005we-Va; Fri, 07 Feb 2020 11:06:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01SY-0005wJ-I5
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 11:06:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B091930E;
 Fri,  7 Feb 2020 03:06:05 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2BFED3F68E;
 Fri,  7 Feb 2020 03:06:04 -0800 (PST)
Date: Fri, 7 Feb 2020 11:06:02 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Message-ID: <20200207110602.GE36345@bogus>
References: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
 <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
 <7875e2533c4ba23b8ca0a2a296699497@kernel.org>
 <20200207104736.GB36345@bogus>
 <AM0PR04MB4481B1D5E2725E85BC6D6D71881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481B1D5E2725E85BC6D6D71881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_030606_691495_640E06DF 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>, Marc Zyngier <maz@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 10:55:44AM +0000, Peng Fan wrote:
> > Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
> >
> > On Fri, Feb 07, 2020 at 10:08:36AM +0000, Marc Zyngier wrote:
> > > On 2020-02-06 13:01, peng.fan@nxp.com wrote:
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > SCMI could use SMC/HVC as tranports, so add into devicetree binding
> > > > doc.
> > > >
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/arm/arm,scmi.txt | 4 +++-
> > > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > > b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > > index f493d69e6194..03cff8b55a93 100644
> > > > --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > > +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > > @@ -14,7 +14,7 @@ Required properties:
> > > >
> > > >  The scmi node with the following properties shall be under the
> > > > /firmware/ node.
> > > >
> > > > -- compatible : shall be "arm,scmi"
> > > > +- compatible : shall be "arm,scmi" or "arm,scmi-smc"
> > > >  - mboxes: List of phandle and mailbox channel specifiers. It should
> > > > contain
> > > >  	  exactly one or two mailboxes, one for transmitting messages("tx")
> > > >  	  and another optional for receiving the notifications("rx") if @@
> > > > -25,6 +25,8 @@ The scmi node with the following properties shall be
> > > > under the /firmware/ node.
> > > >  	  protocol identifier for a given sub-node.
> > > >  - #size-cells : should be '0' as 'reg' property doesn't have any size
> > > >  	  associated with it.
> > > > +- arm,smc-id : SMC id required when using smc transports
> > > > +- arm,hvc-id : HVC id required when using hvc transports
> > > >
> > > >  Optional properties:
> > >
> > > Not directly related to DT: Why do we need to distinguish between SMC
> > > and HVC?
> >
> > IIUC you want just one property to get the function ID ? Does that align with
> > what you are saying ? I wanted to ask the same question and I see no need for
> > 2 different properties.
>
> The multiple protocols might use SMC or HVC. Saying
>
>  Protocol@x {
>     method="smc";
>     arm,func-id=<0x....>
>  };
>  Protocol@y {
>     method="hvc";
>     arm,func-id=<0x....>
>  };
>

Wow, stop there. Please don't do that. You either use SMC or HVC consistently.
Not both at the same time. Any particular reasons for trying such crazy things.

> With my propose:
>
> Protocol@x {
>     arm,smc-id=<0x....>
>  };
>  Protocol@y {
>     arm,hvc-id=<0x....>
>  };
>
> No need an extra method property to indicate it is smc or hvc.
> The driver use take arm,smc-id as SMC, arm,hvc-id as HVC.
>

NACK, just have one function ID, I am not very particular on the name
'smc-id' is just fine for me. But only one function ID for any conduit
used and that is chosen by PSCI/SMCCC.

If you need multiple channels(unique per protocol) then I suggest go for
an channel ID or you can even manage just with shmem associated with it
(I prefer latter but again I am fine either way)

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
