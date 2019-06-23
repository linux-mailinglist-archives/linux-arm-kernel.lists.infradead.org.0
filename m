Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 632FF4FB58
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 13:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J02sl2aLkbtWdvpc6NogeHOQP/6UxbdidqjsGZHuUMo=; b=LWUpZ50g1uux+K
	Mcvu04IsM4I9+5PRzV9MEMfc+LoS1CoAfCZ3yAsINUy3lLcYFyOKB3Q6kNEykc6wMk2MXGcXY7HVy
	PKX2xQawHq0qETJBLHdar3tU7cAUanvwOneii5A8jY2Ne1iuB82GbmkPc7pkuV7WnH4QpX57Bwj8W
	00Jsj4+iqyECS9zUp2+GdbGOFEzDXvYkm9FqN88LuKzNgin1M3i0Tzy5RgVErOxmKvmoIIN1+d6Vh
	bPv5qlBsdVT4DLyi17yRNQ5qhun+HZd/fss3QDOLbpqUkTcnNCOdZryX+bkRqdj+LzhIAQtrTg9wJ
	K42oimKQYTTKQrFlu/Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf0lz-00027m-RG; Sun, 23 Jun 2019 11:35:04 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf0ln-00026a-FH
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 11:34:53 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hf0la-0008KU-TC; Sun, 23 Jun 2019 13:34:39 +0200
Date: Sun, 23 Jun 2019 13:34:37 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: RE: [PATCH 1/3] clocksource/drivers/sysctr: Add an optional property
In-Reply-To: <DB3PR0402MB3916B3B871FDEA9BFC960C67F5E10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Message-ID: <alpine.DEB.2.21.1906231331390.32342@nanos.tec.linutronix.de>
References: <20190621082838.12630-1-Anson.Huang@nxp.com>
 <alpine.DEB.2.21.1906231232520.32342@nanos.tec.linutronix.de>
 <DB3PR0402MB3916B3B871FDEA9BFC960C67F5E10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_043451_657488_F12C6D3D 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "angus@akkea.ca" <angus@akkea.ca>, Abel Vesa <abel.vesa@nxp.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anson,

A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Sun, 23 Jun 2019, Anson Huang wrote:

> Hi, Thomas
> 	Thanks for the useful comment, I will resend the patch with improvement.
> 
> Anson.
> 
> > -----Original Message-----
> > From: Thomas Gleixner <tglx@linutronix.de>
> > Sent: Sunday, June 23, 2019 6:47 PM
> > To: Anson Huang <anson.huang@nxp.com>
> > Cc: daniel.lezcano@linaro.org; robh+dt@kernel.org; mark.rutland@arm.com;
> > shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> > festevam@gmail.com; l.stach@pengutronix.de; Abel Vesa
> > <abel.vesa@nxp.com>; ccaione@baylibre.com; angus@akkea.ca;
> > andrew.smirnov@gmail.com; agx@sigxcpu.org; linux-
> > kernel@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; dl-linux-imx <linux-imx@nxp.com>
> > Subject: Re: [PATCH 1/3] clocksource/drivers/sysctr: Add an optional
> > property

Also please fix your mailer to NOT copy the full mail header into the
reply. That's absolutely useless.

> > 
> > Anson,
> > 
> > On Fri, 21 Jun 2019, Anson.Huang@nxp.com wrote:
> > 
> > > Subject : [PATCH 1/3] clocksource/drivers/sysctr: Add an optional
> > > property

And finally please trim your replies, so the uninteresting parts are gone.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
