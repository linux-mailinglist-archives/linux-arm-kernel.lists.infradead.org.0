Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F8D103696
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 10:28:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=owgpbrL1qhbS7pRU7QOwV23E7ZPeufQjqjJLdIyowzY=; b=SSCBDcORYZgscP
	ktef0/NhbxDfalCkZnsXgG7eSL2V7e3wtwUhSXAcbLdtpubCGnYLeD0uJCQKmpJerlcyCB/GlwHOe
	m+hsQ0gYuhyVK6qYw12mFr/mRYJJLee544rG8KSZwT1kSFaul2i4YDzDSOscPeraj+XEfUxKAjc7m
	2DmXw2UrV8ZERjwrHjuiQpXbVvlp0OfPowE4F/U0V0sNRk0RF0o+/+79un/7MSodu/5OIqKU5Lrh+
	K9QGlwjcdpc5QfqUBMORp4YDaWNCbCpv89v3Wdt99nX5ehk91FbcbN+kiOqMs3aqC5yw4lfIv5i83
	KiFTCzT/Y5r4WAJgI9zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXMHQ-00015p-VG; Wed, 20 Nov 2019 09:28:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXMHF-00014C-QG
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 09:27:59 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iXMH8-0002YO-Bd; Wed, 20 Nov 2019 10:27:50 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iXMH7-0006fJ-8R; Wed, 20 Nov 2019 10:27:49 +0100
Date: Wed, 20 Nov 2019 10:27:49 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH v3] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
Message-ID: <20191120092749.7rru5fj7eybs4tl6@pengutronix.de>
References: <20190904062329.97520-1-robin@protonic.nl>
 <20190912201300.GA636@penguin>
 <803592d161b9ca75d6ac1c2c54e891a1@protonic.nl>
 <VE1PR04MB663896B94C68B5EF9AE0BE36898C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20190916233701.GH237523@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916233701.GH237523@dtor-ws>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:21:16 up 5 days, 39 min, 19 users,  load average: 0.09, 0.04, 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_012757_852517_EC0EF193 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: robin <robin@protonic.nl>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 Adam Ford <aford173@gmail.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On 19-09-16 16:37, Dmitry Torokhov wrote:
> On Mon, Sep 16, 2019 at 07:45:37AM +0000, Robin Gong wrote:
> > On 2019/9/13 15:31 robin <robin@protonic.nl> wrote:> 
> > > Hi Dmitry,
> > > 
> > > On 2019-09-12 22:13, Dmitry Torokhov wrote:
> > > > Hi Robin,
> > > >
> > > > On Wed, Sep 04, 2019 at 06:23:29AM +0000, Robin van der Gracht wrote:
> > > >> The first generation i.MX6 processors does not send an interrupt when
> > > >> the power key is pressed. It sends a power down request interrupt if
> > > >> the key is released before a hard shutdown (5 second press). This
> > > >> should allow software to bring down the SoC safely.
> > > >>
> > > >> For this driver to work as a regular power key with the older SoCs,
> > > >> we need to send a keypress AND release when we get the power down
> > > >> request irq.
> > > >>
> > > >> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> > > >> ---
> > > >> @@ -67,13 +83,17 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int
> > > >> irq, void *dev_id)  {
> > > >>  	struct platform_device *pdev = dev_id;
> > > >>  	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
> > > >> +	unsigned long expire = jiffies;
> > > >>  	u32 lp_status;
> > > >>
> > > >>  	pm_wakeup_event(pdata->input->dev.parent, 0);
> > > >>
> > > >>  	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
> > > >> -	if (lp_status & SNVS_LPSR_SPO)
> > > >> -		mod_timer(&pdata->check_timer, jiffies +
> > > >> msecs_to_jiffies(DEBOUNCE_TIME));
> > > >> +	if (lp_status & SNVS_LPSR_SPO) {
> > > >> +		if (pdata->minor_rev > 0)
> > > >> +			expire = jiffies + msecs_to_jiffies(DEBOUNCE_TIME);
> > > >> +		mod_timer(&pdata->check_timer, expire);
> > > >
> > > > Why do we even need to fire the timer in case of the first generation
> > > > hardware? Just send press and release events directly from the ISR.
> > That timer looks like a software debounce to prevent unexpected and
> > meaningless interrupt/event caused by quick press/release.   
> 
> Right, but in case of the first generation hardware we schedule the
> timer immediately (expire == 0) and do not check state of the hardware
> in the timer handler, but rather simply emit down/up events, so we do
> not really get any benefit from the timer (again, I am talking about
> first generation hardware only).

Did you prepared a v4? Just ask to avoid a duplicated work :)

Regards,
  Marco

> Thanks.
> 
> -- 
> Dmitry
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
