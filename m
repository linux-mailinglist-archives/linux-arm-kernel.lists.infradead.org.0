Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E310DCCD7B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 02:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ym4f9JdT9YI4pz3TaeBXD3Bm5JyIS3kgE3RwFcXLSQM=; b=UpyiTi2tnhxPXQ
	xhDhSTX7ge2+bv7I9Xx1hRQ4p6b7RZcqClti1U2RWrKxFQXwjgslpp9dpe/TMfMoYrVJ1d2Pz4YxZ
	n52p65Md2ATufHw6DqIfKYDqUqGHiLbNl7rXe+Gd4exHBkyOWlqN9AMQ1+gaLNPhrKHAVSr1sscsq
	TotkZoSUWU9HIzu7BhM29bpqL7aGOE7DFJpvL7zhmcSD8H6ZlWtdSdNBs4LZa6sFVOFpW2kIy8SjP
	5Gdmy/VGe7xr4kwgJQuoRBeBZmimD8zQKhZbY6dK/fSFh7sMgPfXXemY+2+UOFoS8aTn4/oom5Rds
	Ciw8/SW7pWiaC0GIXuNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGuTw-0008Iv-2y; Sun, 06 Oct 2019 00:33:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGuTk-0008IL-GJ
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 00:32:55 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A0FD222BE;
 Sun,  6 Oct 2019 00:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570321971;
 bh=yVSCUoI+lseGFR4IYqnIN8StTXuL1oZ1vQrmfXipRHY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D6LxZ1QuFoDIl516K2GCTZjZv4BnFdsxk8Jr9cmMguCqq9nIc8ryLQiLOhy36x0jN
 KTPJ1AP5u5xqnbnHmec2+YhpaeZ+PD2x2/BFKC/Q3/sudiUIkJ9IGGUiSuqIVXuoP5
 B0gOzu0wn+PcBb+I+UZrNS6/EFatxXtZ3hK81bmo=
Date: Sun, 6 Oct 2019 08:32:27 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
Message-ID: <20191006003225.GD7150@dragon>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <20190922161415.GD1999@bug>
 <DB3PR0402MB3916F48DA2A16E57C624432BF5850@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916F48DA2A16E57C624432BF5850@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_173252_587992_8C0A48B7 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Peng Fan <peng.fan@nxp.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Pavel Machek <pavel@ucw.cz>, Leonard Crestez <leonard.crestez@nxp.com>,
 "will@kernel.org" <will@kernel.org>, "festevam@gmail.com" <festevam@gmail.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 02:34:07AM +0000, Anson Huang wrote:
> Hi, Pavel
> 
> > Subject: Re: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
> > 
> > On Tue 2019-09-03 10:03:40, Anson Huang wrote:
> > > NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> > > controller, the system controller is in charge of system power, clock
> > > and power key event etc. management, Linux kernel has to communicate
> > > with system controller via MU (message unit) IPC to get power key
> > > event, add binding doc for i.MX system controller power key driver.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > Changes since V1:
> > > 	- remove "wakeup-source" property, as it is NOT needed for SCU
> > interrupt;
> > > 	- remove "status" in example.
> > > ---
> > >  .../devicetree/bindings/arm/freescale/fsl,scu.txt          | 14
> > ++++++++++++++
> > >  1 file changed, 14 insertions(+)
> > >
> > > diff --git
> > > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > index c149fad..f93e2e4 100644
> > > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > @@ -157,6 +157,15 @@ Required properties:
> > >  Optional properties:
> > >  - timeout-sec: contains the watchdog timeout in seconds.
> > >
> > > +Power key bindings based on SCU Message Protocol
> > > +------------------------------------------------------------
> > > +
> > > +Required properties:
> > > +- compatible: should be:
> > > +              "fsl,imx8qxp-sc-pwrkey"
> > > +              followed by "fsl,imx-sc-pwrkey";
> > > +- linux,keycodes: See
> > > +Documentation/devicetree/bindings/input/keys.txt
> > 
> > Note you have keycode_s_ here, but keycode in the example and in the dts
> > patch.
> 
> NOT quite understand your point, could you please provide more details?

The property being used in driver, DTS, and DT example in the
bindings are all 'linux,keycode' rather than 'linux,keycodes'.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
