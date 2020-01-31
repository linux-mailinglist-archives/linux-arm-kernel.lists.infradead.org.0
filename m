Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E3414E9EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 10:07:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ygjgu0Nw6goPM4Ia9VnYtvyyIPSwIkMear2ifZnjk4Y=; b=uZKrBurzMnyEEC
	gtac3TDYwiXOFsqQ8aP0ifJLPEXkkRZ596uvBoMdX+91dgoGLjyGphT9Y8flI2gbIO7RZvZQjgTCD
	sfokJIRqqRXLRRDGax4cWkbrMAIaNc7bK6otDwjKGUqlLaOra8GVlIT4lEL25Ir2w0rbSDkD4W/7/
	8p1B1uuy4p6oh5hvhdA/paLot2Drs/W149cyPkdU3h3ZFAwgNUHv++gQOVHrNxPomTFqhIJPQPqka
	NSjTNMki5Oq+SBSg00YC+4VnKWWrOs1dXW2qGxtt9Y2atMC66tIyUAhqMjikJiAgoV1oNisYFXNGQ
	DVJp7X7X52wgQEfsxwSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixSGT-000094-83; Fri, 31 Jan 2020 09:07:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixSGL-00008k-Da
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 09:06:54 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 551E5206F0;
 Fri, 31 Jan 2020 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580461612;
 bh=V7vDxMmmNX8/A1ufnjJg7tEfNXHbzelUW1ofiI0bxCg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y0OJFeMQhpY0sXS4zKX09ro+1I0G5B1zntn688rrb6fejMrX5MpTjefojd56PxR47
 Cw8hOA8PzmnyJwKYIJsmrolmv4wa4yXRi1RiuZB+V1u8IvySYxMHUYNUwqG+E6s6vt
 txWo1RkgBOlq4TGaf3Vn9xq5d6tPdnJj/B5jv60c=
Date: Fri, 31 Jan 2020 10:06:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
Message-ID: <20200131090650.GA2267325@kroah.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128153806.7780-3-benjamin.gaignard@st.com>
 <20200128155243.GC3438643@kroah.com>
 <0dd9dc95-1329-0ad4-d03d-99899ea4f574@st.com>
 <20200128165712.GA3667596@kroah.com>
 <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
 <CACRpkdY427EzpAt7f5wwqHpRS_SHM8Fvm+cFrwY8op0E_J+D9Q@mail.gmail.com>
 <20200129095240.GA3852081@kroah.com>
 <20200129111717.GA3928@sirena.org.uk>
 <0b109c05-24cf-a1c4-6072-9af8a61f45b2@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b109c05-24cf-a1c4-6072-9af8a61f45b2@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_010653_477302_CE59F9D8 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "robh@kernel.org" <robh@kernel.org>, Loic PALLARDY <loic.pallardy@st.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "lkml@metux.net" <lkml@metux.net>, "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 08:37:27AM +0000, Benjamin GAIGNARD wrote:
> 
> On 1/29/20 12:17 PM, Mark Brown wrote:
> > On Wed, Jan 29, 2020 at 10:52:40AM +0100, Greg KH wrote:
> >
> >> It just needs to be part of the bus logic for the specific bus that this
> >> "firewall" is on.  Just like we do the same thing for USB or thunderbolt
> >> devices.  Put this in the bus-specific code please.
> > I'd expect that this is going to affect at least platform and AMBA
> > buses.
> 
> Correct me if I'm wrong but creating a new type of bus would mean
> that all the drivers living on this bus must be changed to register 
> themselves on this bus ?

Yes.

> Or does a solution exist to let them live on the platform bus and call 
> firewalled bus before been probed ?

Why do people want to abuse the platform bus so much?  If a device is on
a bus that can have such a controller, then it is on a real bus, use it!

> All the impacted drivers could work on the existing bus with or without 
> the firewall so I don't want to break

break what?

> 
> that.

Odd line-break :)

Just register the driver on both busses, no big deal.

Stop abusing the platform bus code for things that it is not for.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
