Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0D917E5BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:31:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXlaIBY9KVP4Y4+fGACe5MQJSvK3d6UG0UkJrxH/sOM=; b=t3DrhzwFLAwmOE
	wqs668LFzq5LjwyztYM5DhZUHvM8/7PGlXIf9lXaw47CjiLQm7h9wW8dPAUcXj2E9gmpt7Bw2YstQ
	Rt1df9R1M4aetQuCOMd+a7C7/P+i0e0NEqJhuJTJmbPlsDDwxePVoIf4u9hZptyE3x8IgVvKEFI+O
	Hubnxr/dZQTMN1YHYVfu6EQErzKIF2iHlGmEaSDMcuiKlqUghhR3mRTNO/2OxOtrs1+vYJHMnFOpC
	PZ8LB5vPpcEANfm2wPNqbt35LXbOnKi1vZPKTi1kQyu3ffBALI0NZv7p8C1iMer6Bn6mRlYBFOiTg
	njV6XZmPuZimDhfXxaiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBMF9-0000Kg-Rt; Mon, 09 Mar 2020 17:31:07 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMF2-0000G0-3Q
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 17:31:01 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 4773AE000A;
 Mon,  9 Mar 2020 17:30:54 +0000 (UTC)
Date: Mon, 9 Mar 2020 18:30:54 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Message-ID: <20200309171556.GH3563@piout.net>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <20200309110609.GE3563@piout.net>
 <1ad38cdb-bf0d-1c19-b233-15a5857bd6fa@roeck-us.net>
 <20200309164705.GG3563@piout.net>
 <20200309171012.GA24802@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309171012.GA24802@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_103100_280105_A5628ADD 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: m.felsch@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 linux-rtc@vger.kernel.org, robh@kernel.org, amit.kucheria@verdurent.com,
 wim@linux-watchdog.org, Anson Huang <Anson.Huang@nxp.com>,
 daniel.lezcano@linaro.org, krzk@kernel.org, Linux-imx@nxp.com,
 linux-input@vger.kernel.org, rui.zhang@intel.com, ronald@innovation.ch,
 linux-watchdog@vger.kernel.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 s.hauer@pengutronix.de, tglx@linutronix.de, andriy.shevchenko@linux.intel.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, a.zummo@towertech.it, gregkh@linuxfoundation.org,
 dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, kernel@pengutronix.de, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/03/2020 10:10:12-0700, Guenter Roeck wrote:
> On Mon, Mar 09, 2020 at 05:47:05PM +0100, Alexandre Belloni wrote:
> > On 09/03/2020 06:27:06-0700, Guenter Roeck wrote:
> > > On 3/9/20 4:06 AM, Alexandre Belloni wrote:
> > > > On 09/03/2020 08:38:14+0800, Anson Huang wrote:
> > > >> Add stubs for those i.MX SCU APIs to make those modules depending
> > > >> on IMX_SCU can pass build when COMPILE_TEST is enabled.
> > > >>
> > > >> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > >> ---
> > > >> Changes since V2:
> > > >> 	- return error for stubs.
> > > > 
> > > > I'm not sure why you are sending v3 with the stubs as we determined that
> > > > 2/7 is enough to compile all the drivers with COMPILE_TEST.
> > > > 
> > > > 
> > > 2/7 alone is not sufficient. With only 2/7, one can explicitly configure
> > > IMX_SCU=n, COMPILE_TEST=y, and get lots of compile failures. Granted,
> > > one should not do that, but 0day does (I don't know if that is the result
> > > of RANDCONFIG), and I am not looking forward having to deal with the
> > > fallout.
> > > 
> > 
> > How would that be possible if the drivers all depend on IMX_SCU?
> > 
> That dependency is being changed to IMX_SCU || COMPILE_TEST
> as part of the series.
> 

Yes, my point is that those patches should not be applied at all, only
2/7.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
