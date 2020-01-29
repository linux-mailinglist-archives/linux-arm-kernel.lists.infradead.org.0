Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9184A14C861
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 10:52:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWefKUcuHI6/4/MpZGzaNLkl7uAv4LL/HAUMI7JUopw=; b=dzd2Mf9D2t4R0N
	cYha979cA24qSzUFgdAjOZJEPTraReZ4KCbWdIiRpMhG4wmCihB3XmwGD0Pq/GQ6LRecNz+xj5ZKD
	NMlaBtN+HW4r3aFS/sCktGYAgUrp/IDr4magblwOx6BNeZ8nXomDa6v6AvMO3uWWsdaDvlcKJiF1i
	lp/Fd5g1bMihXJD/Sb+e//rG2dUfnGTLoRS9UcPUdVMwmDw/lRjtRzryYptbuck8DXPuGxj7XrVc4
	0iLqX49q+618R27ZjRAg6coF9OirOs5fB+uA4/NFQYsukalMZaXIxFHTNcqMjd8EvnvQIBF9umOeB
	DxepExqqqNyw4SFusiug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwk1k-0007xL-OQ; Wed, 29 Jan 2020 09:52:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwk1b-0007wS-AY
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 09:52:44 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D37B20708;
 Wed, 29 Jan 2020 09:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580291562;
 bh=pdUBb1VQFGtjiKTWA/mvQZEtWw7DqY38KlcazbW826Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QUK2LESONcolYBI3s5wOXXcjHaEJ8H1iR0J80W8KANmfFzfT0PW9vRtvDxXC9Cvoi
 xR6FH51RcnUw429y18Ef34Rnlzqc5c2PVNuo0RvtR2gAPFjja/VVMeCXVNvIrBLEQo
 r1w+UKXRgGsUfod5GOM7fD45CDRTOq5SZ3Rnwk+Y=
Date: Wed, 29 Jan 2020 10:52:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
Message-ID: <20200129095240.GA3852081@kroah.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128153806.7780-3-benjamin.gaignard@st.com>
 <20200128155243.GC3438643@kroah.com>
 <0dd9dc95-1329-0ad4-d03d-99899ea4f574@st.com>
 <20200128165712.GA3667596@kroah.com>
 <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
 <CACRpkdY427EzpAt7f5wwqHpRS_SHM8Fvm+cFrwY8op0E_J+D9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdY427EzpAt7f5wwqHpRS_SHM8Fvm+cFrwY8op0E_J+D9Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_015243_388309_F0E9234B 
X-CRM114-Status: GOOD (  18.23  )
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
Cc: "robh@kernel.org" <robh@kernel.org>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 Loic PALLARDY <loic.pallardy@st.com>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 29, 2020 at 10:42:39AM +0100, Linus Walleij wrote:
> On Tue, Jan 28, 2020 at 9:30 PM Benjamin GAIGNARD
> <benjamin.gaignard@st.com> wrote:
> > On 1/28/20 5:57 PM, Greg KH wrote:
> > > On Tue, Jan 28, 2020 at 04:41:29PM +0000, Benjamin GAIGNARD wrote:
> > >> On 1/28/20 4:52 PM, Greg KH wrote:
> 
> > >>> So put this in the bus-specific code that controls the bus that these
> > >>> devices live on.  Why put it in the driver core when this is only on one
> > >>> "bus" (i.e. the catch-all-and-a-bag-of-chips platform bus)?
> 
> > >> It is really similar to what pin controller does, configuring an
> > >> hardware block given DT information.
> 
> > > Great, then use that instead :)
> 
> > I think that Linus W. will complain if I do that :)
> 
> So the similarity would be something like the way that pin control
> states are configured in the device tree and the pin control
> handles are taken before probe in drivers/base/pinctrl.c embedding
> a hook into dd.c.
> 
> Not that it in any way controls any hardware even remotely
> similar to pin control. Pin control is an electronic thing,
> this firewalling is about bus access.
> 
> IIUC this framework wants to discover at kernel boot time
> whether certain devices are accessible to it or not by inspecting
> the state of the firewalling hardware and then avoid probing
> those that are inaccessible.
> 
> It needs the same deep hooks into dd.c to achieve this
> I believe.

It just needs to be part of the bus logic for the specific bus that this
"firewall" is on.  Just like we do the same thing for USB or thunderbolt
devices.  Put this in the bus-specific code please.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
