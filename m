Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFA11040D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:32:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aN8MwODMQKuQ4ydPecoDIoE4np4KFzZPOsTJSExMOYs=; b=SxFlkz2SaEB+dVoF8RTqnPqoH
	4IKbZVWyATYf/ySpbK/XCHFPzVs3dU7JO+xZ3aL8aAGfIy4enJ94DCrKMYw5vC+JG5t2T8qyhY771
	czgT/JFZQd43Cxem75bP/qCGHPZ6bkHRCXmaReVVeyFuYF7fTiqFmB3SPpTAuuTHYxuj/2VKXsmve
	v7zvFBwDe2RRm9k5pGzFpIHXrXp4UtTN0/MRINFXvC/0N/FLBEnY7l7yBXC+hiKMbpNNmQpaU6LAG
	J/jbuKhLqKS3/NQIugKkiqsBw1ctDJHHF0dcl8rGI6h/PtTkCKVpCMT1Jo/cY4/IDQOSHLV5I+r4/
	DOR2ntllA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSuT-0006Cp-Gz; Wed, 20 Nov 2019 16:32:53 +0000
Received: from protonic.xs4all.nl ([83.163.252.89] helo=protonic.nl)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSuL-0006C1-Co
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:32:47 +0000
Received: from webmail.promanet.nl (edge2.prtnl [192.168.1.170])
 by sparta (Postfix) with ESMTP id B38DC44A0065;
 Wed, 20 Nov 2019 17:34:53 +0100 (CET)
MIME-Version: 1.0
Date: Wed, 20 Nov 2019 17:32:38 +0100
From: robin <robin@protonic.nl>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
In-Reply-To: <20191120092749.7rru5fj7eybs4tl6@pengutronix.de>
References: <20190904062329.97520-1-robin@protonic.nl>
 <20190912201300.GA636@penguin>
 <803592d161b9ca75d6ac1c2c54e891a1@protonic.nl>
 <VE1PR04MB663896B94C68B5EF9AE0BE36898C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20190916233701.GH237523@dtor-ws>
 <20191120092749.7rru5fj7eybs4tl6@pengutronix.de>
Message-ID: <fb98fa1fde9a367d7ab33d04a5804684@protonic.nl>
X-Sender: robin@protonic.nl
User-Agent: Roundcube Webmail/1.3.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_083245_599306_E9467395 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [83.163.252.89 listed in list.dnswl.org]
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
Cc: Adam Ford <aford173@gmail.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 Robin Gong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-20 10:27, Marco Felsch wrote:
> Hi Robin,
> 
> On 19-09-16 16:37, Dmitry Torokhov wrote:
>> On Mon, Sep 16, 2019 at 07:45:37AM +0000, Robin Gong wrote:
>> > On 2019/9/13 15:31 robin <robin@protonic.nl> wrote:>
>> > > Hi Dmitry,
>> > >
>> > > On 2019-09-12 22:13, Dmitry Torokhov wrote:
>> > > > Hi Robin,
>> > > >
>> > > > On Wed, Sep 04, 2019 at 06:23:29AM +0000, Robin van der Gracht wrote:
>> > > >> The first generation i.MX6 processors does not send an interrupt when
>> > > >> the power key is pressed. It sends a power down request interrupt if
>> > > >> the key is released before a hard shutdown (5 second press). This
>> > > >> should allow software to bring down the SoC safely.
>> > > >>
>> > > >> For this driver to work as a regular power key with the older SoCs,
>> > > >> we need to send a keypress AND release when we get the power down
>> > > >> request irq.
>> > > >>
>> > > >> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
>> > > >> ---
>> > > >> @@ -67,13 +83,17 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int
>> > > >> irq, void *dev_id)  {
>> > > >>  	struct platform_device *pdev = dev_id;
>> > > >>  	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
>> > > >> +	unsigned long expire = jiffies;
>> > > >>  	u32 lp_status;
>> > > >>
>> > > >>  	pm_wakeup_event(pdata->input->dev.parent, 0);
>> > > >>
>> > > >>  	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
>> > > >> -	if (lp_status & SNVS_LPSR_SPO)
>> > > >> -		mod_timer(&pdata->check_timer, jiffies +
>> > > >> msecs_to_jiffies(DEBOUNCE_TIME));
>> > > >> +	if (lp_status & SNVS_LPSR_SPO) {
>> > > >> +		if (pdata->minor_rev > 0)
>> > > >> +			expire = jiffies + msecs_to_jiffies(DEBOUNCE_TIME);
>> > > >> +		mod_timer(&pdata->check_timer, expire);
>> > > >
>> > > > Why do we even need to fire the timer in case of the first generation
>> > > > hardware? Just send press and release events directly from the ISR.
>> > That timer looks like a software debounce to prevent unexpected and
>> > meaningless interrupt/event caused by quick press/release.
>> 
>> Right, but in case of the first generation hardware we schedule the
>> timer immediately (expire == 0) and do not check state of the hardware
>> in the timer handler, but rather simply emit down/up events, so we do
>> not really get any benefit from the timer (again, I am talking about
>> first generation hardware only).
> 
> Did you prepared a v4? Just ask to avoid a duplicated work :)

No I haven't. Not sure what the public wants. Use timer, don't use 
timer..

v3 has had long term testing though ;)

Regards,
Robin van der Gracht

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
