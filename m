Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D8EB6663
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjpEygTjv0UZii79rR4ypY0gQBNt9xD9u5C4pvhRZgg=; b=nB5EgzyLNXM3Q6
	rdey9/FZxRXFtTjtbny0jVP4/10TCAtED4Sq/J/40ozDdp6EQRb2wnJawq0sjqT6Fn/EhwIOmLIw6
	UJrJgUHRv0UCfXcLySQbXUbk+4x1nEAlsRq22P0QiyAQDrHS2/vUy49lV/QhYhTEtClIeHmUO+qRE
	WNCvbwL1iwiR2GMYeEy4IDzUlP9J6BvJkpyb4dS5vM2FOVxkaFYhRYn3JMZ0V7T4kxIF+E8xjDGsD
	ho1e636dWe7JlJRO1Ob/Ia3tz5F3Z53/XCESbwCFhO+/zOBsiK904EZ+P4iNBt3I+3gscNIPjB4f9
	1UI0lzGRBXCoVOp0+TcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbFE-0001yX-4c; Wed, 18 Sep 2019 14:47:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbER-0001jv-3r
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:47:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 546751000;
 Wed, 18 Sep 2019 07:46:58 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E98923F67D;
 Wed, 18 Sep 2019 07:46:56 -0700 (PDT)
Date: Wed, 18 Sep 2019 15:46:54 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the
 ARM SMC/HVC mailbox
Message-ID: <20190918154654.6fb7e7f5@donnerap.cambridge.arm.com>
In-Reply-To: <CABb+yY3drgYHk2_SZMgGhgSisB7wMVKFSx8VVabCcXkGByvgwg@mail.gmail.com>
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-2-git-send-email-peng.fan@nxp.com>
 <20190917183115.3e40180f@donnerap.cambridge.arm.com>
 <CABb+yY2CP1i9fZMoPua=-mLCUpYrcO28xF5UXDeRD2XTYe7mEg@mail.gmail.com>
 <20190918104347.285bd7ad@donnerap.cambridge.arm.com>
 <CABb+yY3drgYHk2_SZMgGhgSisB7wMVKFSx8VVabCcXkGByvgwg@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_074659_530788_B0DFD93E 
X-CRM114-Status: GOOD (  26.57  )
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

On Wed, 18 Sep 2019 09:19:46 -0500
Jassi Brar <jassisinghbrar@gmail.com> wrote:

Hi,

> On Wed, Sep 18, 2019 at 4:44 AM Andre Przywara <andre.przywara@arm.com> wrote:
> 
> >  
> > > which needs 9 arguments to work. The fact that the fist argument is
> > > always going to be same on a platform is just the way we use this
> > > instruction.
> > >  
> > > > We should be as strict as possible to avoid any security issues.
> > > >  
> > > Any example of such a security issue?  
> >
> > Someone finds a way to trick some mailbox client to send a crafted message to the mailbox.
> >  
> What if someone finds a way to trick the block layer to erase 'sda' ?

Yes, the Linux block driver control the whole block device, it can do whatever it wants.
The firmware provides an interface for multiple users, and the mailbox controller just uses *one part* of it. So we should make sure that it's the right part.

>  That is called "bug in the code".
> It does happen in every subsystem but we don't stop implementing new
> features .... we write flexible code and then fix any bug.
> 
> 
> > Do you have any example of a use case where the mailbox client needs to provide the function ID?
> >  
> FSL_SIP_SCMI_1/2 ?

Huh? Where does the SCPI or SCMI driver provide this? Those clients don't even provide any arguments. Adding some would defeat the whole point of having this mailbox in the first place, which was to provide a drop-in replacement for a hardware mailbox device used on other platforms.

> But that is not the main point, which is to be consistent (not
> ignoring first argument because someone may find a bug to exploit) and
> flexible.

Please read the SMCCC[1]: The first argument is in r1/w1/x1. r0/w0 is the function ID, and this is a specific value (fixed by the firmware implementation, see Peng's ATF patch) and not up to be guessed by a client.

Please keep in mind that we should *NOT* do smc calls without following the SMCCC spec.

> > > > The firmware certainly knows the function ID it implements. The firmware controls the DT. So it is straight-forward to put the ID into the DT. The firmware could even do this at boot time, dynamically, before passing on the DT to the non-secure world (bootloader or kernel).
> > > >
> > > > What would be the use case of this functionality?
> > > >  
> > > At least for flexibility and consistency.  
> >
> > I appreciate the flexibility idea, but when creating an interface, especially a generic one to any kind of firmware, you should be as strict as possible, to avoid clashes in the future.
> >  
> I really don't see how there can be clashes with more complete and
> flexible implementation.

Platform A uses PSCI, but no other SMCCC services, so in your scenario you assign a valid function ID say from the SIP range and tell the mailbox *client* to use it. Now you want to run this client on platform B, which happens to have chosen this very function ID for the "set fire on the device" SMCCC service.
So now you would need to assign different IDs to the *client*, depending on the platform? That doesn't make sense. The solution is that you just assign the function ID to the controller, in the (platform specific) DT, so it naturally matches the platform requirements. You can even change it over time, as long as you change both the DT and firmware at the same time.
The client (SCPI, for instance) is totally ignorant about this communication detail, it just needs some mailbox to request services.

That's why I think the function ID (which is part of the SMCCC protocol, not of the mailbox service!) should just be set in the controller DT node and nowhere else.

Cheers,
Andre.

[1] http://infocenter.arm.com/help/topic/com.arm.doc.den0028b/ARM_DEN0028B_SMC_Calling_Convention.pdf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
