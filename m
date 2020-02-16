Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F601603FE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 13:20:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2LMnx8oT0sIC2VikAbxsT5oRNvq8nFc0cRoAxbLVY0=; b=HQMbKTMqh0nHr6
	NyGU/ha2FwzRPE/km+18dHEp0Nlgnqbh3Iac1pNmMhXeGO6Re+XtxMieDtN2U0r79Fy9PD3c7K6qk
	qDaQa9GbanS6axxPFbduDgfnJomjmrRP2F/OyBSyOAGVIp28YwhYTjUKGw9HUQR6iFaG2FwzwKr7e
	/KpRiYfP0C07wGrptkzcSSfC3x1FZEWWrSoN+IHFt3kFeG2UU9Zf5vAAvni/GjEx0kT2iQMih6QQO
	7mE3COwl6IxZUozlLgshixZREq/2lTk0Gb/SZNS2wpv7OhsGY82iUx8hUIDuSV82hDTZv8WKkrCvu
	nTMNCyTI2lQ1lHvIEG3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3IuV-0006aa-I5; Sun, 16 Feb 2020 12:20:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3IuN-0006Zn-Dv
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 12:20:24 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C246E2084E;
 Sun, 16 Feb 2020 12:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581855618;
 bh=PHE098dmEFXu6oYKRN+BUb6ZDWnNqCSxtkdjvGF2pTo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rLB4k6d5m716NQ/OnptZFHwuDttAwPI5QM5iXZt/PFVxpU9IuVtZr1BpdVnH+/2S/
 fCGJbSX4O4LkA5jjwca8DDCoj4/edZOOOW9vL2KcChpkh/W9ahYgUb8Pf7bhDifY3l
 GzmT3SHkFhHgNH3Q7kf3XpjCLyXkZjJ1LKc+bHhw=
Date: Sun, 16 Feb 2020 08:21:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
Message-ID: <20200216072111.GA14598@kroah.com>
References: <20200128165712.GA3667596@kroah.com>
 <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
 <CACRpkdY427EzpAt7f5wwqHpRS_SHM8Fvm+cFrwY8op0E_J+D9Q@mail.gmail.com>
 <20200129095240.GA3852081@kroah.com>
 <20200129111717.GA3928@sirena.org.uk>
 <0b109c05-24cf-a1c4-6072-9af8a61f45b2@st.com>
 <20200131090650.GA2267325@kroah.com>
 <CACRpkdajhivkOkZ63v-hr7+6ObhTffYOx5uZP0P-MYvuVnyweA@mail.gmail.com>
 <20200214214051.GA4192967@kroah.com>
 <409eb745-aab2-86a7-bd3a-9e8e05bed057@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <409eb745-aab2-86a7-bd3a-9e8e05bed057@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_042023_511736_0796C0D8 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -3.9 (---)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-3.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Loic PALLARDY <loic.pallardy@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "robh@kernel.org" <robh@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Grant Likely <grant.likely@arm.com>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
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

On Sat, Feb 15, 2020 at 12:41:07PM +0000, Benjamin GAIGNARD wrote:
> 
> On 2/14/20 10:40 PM, Greg KH wrote:
> > On Fri, Feb 14, 2020 at 05:05:07PM +0100, Linus Walleij wrote:
> >> On Fri, Jan 31, 2020 at 10:06 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >>
> >>> Why do people want to abuse the platform bus so much?  If a device is on
> >>> a bus that can have such a controller, then it is on a real bus, use it!
> >> I'm not saying it is a good thing, but the reason why it is (ab)used so
> >> much can be found in:
> >> drivers/of/platform.c
> >>
> >> TL;DR: struct platform_device is the Device McDeviceFace and
> >> platform bus the Bus McBusFace used by the device tree parser since
> >> it is slightly to completely unaware of what devices it is actually
> >> spawning.
> > <snip>
> >
> > Yeah, great explaination, and I understand.  DT stuff really is ok to be
> > on a platform bus, as that's what almost all of them are.
> >
> > But, when you try to start messing around with things like this
> > "firewall" says it is doing, it's then obvious that this really isn't a
> > DT like thing, but rather you do have a bus involved with a controller
> > so that should be used instead.
> 
> Ok but how put in place a new bus while keeping the devices on platform
> bus to avoid changing all the drivers ?

You don't, you put them all on your real bus, as that is what you now
have.

> > Or just filter away the DT stuff so that the kernel never even sees
> > those devices, which might just be simplest :)
> 
> yes but we lost the possibility to change the firewall configuration at
> run time. I do expect to be able to describe in the DT firewall configuration
> and to use them at run time. That could allow, for example, to handover
> a HW block to the coprocessor when the main core is going to be suspended
> to save power.

Then use a real bus :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
