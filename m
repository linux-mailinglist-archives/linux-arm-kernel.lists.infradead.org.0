Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9969814C61D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 06:49:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YdaeI3R8g+rbABA0A39/nJleESEhMxk9Jouys38oefs=; b=Lq9iG4RugKnCPK
	qPIWtWNuufj0qRXV8Y63J6PB3PHg9GSBXTIeFEMbOHfu9bzHV62i0wsD+Woq474346w1LKKQGIz/2
	ugFRRbT6qXgSVvJVm71HCsudoO89Kdnq1YZ22bMQDLLjKukaH8CxCYW5OMQ2rvwKpc67dCzQ33xTp
	BfJheXbtxjhIPk5Hu7I0ihyKEdxW4FUADFg7MfzlVnoYZvmaI3W0Wk0P4m+o9nHGNxtsvHUpqDIPc
	D5GxDiLoRGvYA9aw50QDjppvhYS7vKpyudJgE/ixRcr14/yirmC9ywZNRSD41pjjc29C1MbzMfWZE
	n5M674IkZrvDVc+JFdEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwgE7-0006j1-35; Wed, 29 Jan 2020 05:49:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwgDy-0006iL-95
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 05:49:15 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 28E652071E;
 Wed, 29 Jan 2020 05:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580276953;
 bh=EOmr9+h3FKBEr7USHJlKgjOW/DsS8L2m+JUzkoI+K9I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yQi8yP6OcruU4bHYp0E9eoPEgHZ3TU7AtcIgQASns0fNUpt/byNWEaOlTuAxs9dCL
 TrKfCNjj1fsqL+VBT1VOWhuHhz175FI99WPMO4yMEbENMUG3U2qBNUzlrqWKGUiQ3x
 4Xfe2+zN93ruTPYDEQAZmubinav4wtaImlY+rOv8=
Date: Wed, 29 Jan 2020 06:49:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
Message-ID: <20200129054909.GB3765925@kroah.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128153806.7780-3-benjamin.gaignard@st.com>
 <20200128155243.GC3438643@kroah.com>
 <0dd9dc95-1329-0ad4-d03d-99899ea4f574@st.com>
 <20200128165712.GA3667596@kroah.com>
 <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_214914_358486_EC08F374 
X-CRM114-Status: GOOD (  25.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 08:29:45PM +0000, Benjamin GAIGNARD wrote:
> 
> On 1/28/20 5:57 PM, Greg KH wrote:
> > On Tue, Jan 28, 2020 at 04:41:29PM +0000, Benjamin GAIGNARD wrote:
> >> On 1/28/20 4:52 PM, Greg KH wrote:
> >>> On Tue, Jan 28, 2020 at 04:38:01PM +0100, Benjamin Gaignard wrote:
> >>>> The goal of this framework is to offer an interface for the
> >>>> hardware blocks controlling bus accesses rights.
> >>>>
> >>>> Bus firewall controllers are typically used to control if a
> >>>> hardware block can perform read or write operations on bus.
> >>> So put this in the bus-specific code that controls the bus that these
> >>> devices live on.  Why put it in the driver core when this is only on one
> >>> "bus" (i.e. the catch-all-and-a-bag-of-chips platform bus)?
> >> It is really similar to what pin controller does, configuring an
> >> hardware block given DT information.
> > Great, then use that instead :)
> I think that Linus W. will complain if I do that :)
> >
> >> I could argue that firewalls are not bus themselves they only interact
> >> with it.
> > They live on a bus, and do so in bus-specific ways, right?
> >
> >> Bus firewalls exist on other SoC, I hope some others could be added in
> >> this framework. ETZPC is only the first.
> > Then put it on the bus it lives on, and the bus that the drivers for
> > that device are being controlled with.  That sounds like the sane place
> > to do so, right?
> 
> If that means that all drivers have to be modified it will be 
> problematic because not all
> 
> are specifics to the SoC.

That's fine, we have loads of drivers that work on different types of
busses.

Or, if this really is the "platform bus" then use that.  (which is what
I was hinting at all along but no one seems to realize that, should have
been more obvious...)

> >>> And really, this should just be a totally new bus type, right?  And any
> >>> devices on this bus should be changed to be on this new bus, and the
> >>> drivers changed to support them, instead of trying to overload the
> >>> platform bus with more stuff.
> >> I have tried to use the bus notifier to avoid to add this code at probe
> >> time but without success:
> >>
> >> https://lkml.org/lkml/2018/2/27/300
> > Almost 2 years ago?  I can't remember something written 1 week ago...
> >
> > Yes, don't abuse the notifier chain.  I hate that thing as it is.
> >
> >> I have also tried to disable the nodes at runtime and Mark Rutland
> >> explain me why it was wrong.
> > The bus controller should do this, right?  Why not just do it there?
> 
> The bus controller is a different hardware block.

Of course it is, but it controls a bus, and there are devices on that
bus, right?  Don't circumvent things please.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
