Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BBD15F904
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 22:54:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8eHedkQ2gFCkil3Cdb9TmUG6v8GTVl1nGXo8VH1rdo=; b=mt3A+cON3yNe9p
	xy1dIuInQ4+txzIvHpNecG8X++Vt+Fx2zQky0uQg2cZiAQVfuwoNCHAXnYPlSTc0Nso6TyjR7CMBu
	0OwXCYuiPq621/sXsr4obB/u/j4PMmtfJYcvcfBCGV61g4fo1bq2OL2ICGuvUo2KuBsmErkXD2ojs
	hxXRPnikqjZ7g50Bw6zIg71DB3Y1bB3+SvWdgXZV888S76YZv9qdUOqzKzOkvU4jHcMAwRkO4jQ65
	Sh5E1IRy2a9WfAD/qSq5ye6w2hWw0LcdzbFtHECG1pm76c0k5bMrjiu5x6EBXWrL9b0gPq/3I8ehE
	VLbeErAmUmfUoRWtq2ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2iux-0007zJ-Bi; Fri, 14 Feb 2020 21:54:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2iuq-0007ym-NV
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 21:54:30 +0000
Received: from localhost (unknown [65.119.211.164])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD9152082F;
 Fri, 14 Feb 2020 21:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581717268;
 bh=kPEmoqK5kkolXd/XtmxwGBw/rwiGBYbwTOnvH4ZJM78=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K9uY5UhJq9FPMU/mfklwfFYxjFgMVB8LfJWzsjZEa7jR7fr2KONnwjlEf0RA6/iN/
 hyy0YWWftJ+6JERE6Sh2iYv5hXT01V62fcOFoznONFgeN8vuquNvlDrTva+TNtpx6C
 B7GBiR4PSLpHfT0+v5NNkLB1bTkBiZsTW94GoJx0=
Date: Fri, 14 Feb 2020 16:40:51 -0500
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
Message-ID: <20200214214051.GA4192967@kroah.com>
References: <20200128155243.GC3438643@kroah.com>
 <0dd9dc95-1329-0ad4-d03d-99899ea4f574@st.com>
 <20200128165712.GA3667596@kroah.com>
 <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
 <CACRpkdY427EzpAt7f5wwqHpRS_SHM8Fvm+cFrwY8op0E_J+D9Q@mail.gmail.com>
 <20200129095240.GA3852081@kroah.com>
 <20200129111717.GA3928@sirena.org.uk>
 <0b109c05-24cf-a1c4-6072-9af8a61f45b2@st.com>
 <20200131090650.GA2267325@kroah.com>
 <CACRpkdajhivkOkZ63v-hr7+6ObhTffYOx5uZP0P-MYvuVnyweA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdajhivkOkZ63v-hr7+6ObhTffYOx5uZP0P-MYvuVnyweA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_135428_791570_F398F2B1 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [65.119.211.164 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "robh@kernel.org" <robh@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Grant Likely <grant.likely@arm.com>, "lkml@metux.net" <lkml@metux.net>,
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

On Fri, Feb 14, 2020 at 05:05:07PM +0100, Linus Walleij wrote:
> On Fri, Jan 31, 2020 at 10:06 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > Why do people want to abuse the platform bus so much?  If a device is on
> > a bus that can have such a controller, then it is on a real bus, use it!
> 
> I'm not saying it is a good thing, but the reason why it is (ab)used so
> much can be found in:
> drivers/of/platform.c
> 
> TL;DR: struct platform_device is the Device McDeviceFace and
> platform bus the Bus McBusFace used by the device tree parser since
> it is slightly to completely unaware of what devices it is actually
> spawning.

<snip>

Yeah, great explaination, and I understand.  DT stuff really is ok to be
on a platform bus, as that's what almost all of them are.

But, when you try to start messing around with things like this
"firewall" says it is doing, it's then obvious that this really isn't a
DT like thing, but rather you do have a bus involved with a controller
so that should be used instead.

Or just filter away the DT stuff so that the kernel never even sees
those devices, which might just be simplest :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
