Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8C91E093E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 10:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0wh4jsKlICfoPzRtUszQ0vo0crjBe/5RoWYAYIh43M=; b=JpZAAptqOR5Jtf
	EEODEK/Fj8AY50rvbkismIS+bJFgPhWKijZsyeaZt+bAP6t87mUUFzB7uKXrIXAPaIZrc5q8aeLBD
	+OPcwmC1uCf9bCMPVqlFbB2OzheaXfy/CvvJA0WxvTCK/TVIS+qYquj28XP1INU37Pn//e09xODzS
	Yii+nIAa/3cwcW2Y8tGaiYZHvGEjJ+EfxpmMoWUuY6m4E5KN+gkWcxmHf3TRPrYYqZso10MI/QvVy
	b0DFGjClQ6myyvnmzjSngEFw2CicBBTu21lNAaeNu1yowFkQgFVRYz1GjvbhGlrEYDWxh1x/U7bmx
	uSl47R38e8cm6C/6xLeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8m6-0003ZU-09; Mon, 25 May 2020 08:47:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8lv-0003Yv-1j
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 08:47:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aEAVGocE9wZ3VarXBFE8qCciH8rwdSc1/pmEy3uHC80=; b=e3h7fzrT5Xm6knH2AwC0CixG6
 evgVpOCBUDtRLhr06qYru8M/o/tRuRpKzEs36RXfa3bT0u9UdLDEP+vERCwUbAW30jf+WUFw13SiD
 nBuDlJzQAG4HYezjiKbDFjsBmkduFWEZxdZ3dAUEDP6StNwcs5M7CTpJRtQSdod4fiWVvbHKmel2J
 k1K5vEmHvXNTxKiO0FrvsL4Gnn75dlX6EXTsT10197jJV5WuZU4etJ9Rm0YDYAvq9HV+rnU0aJ3wl
 fI7ckARX7ZG2PKbA30oQQ1UvU4mvD0TG3viToWCSO4v6FQwnbIilQtg17tHN0L65PTAKDuJi5K7Et
 CksZ4dLNg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:36714)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jd8lU-0004kc-Qc; Mon, 25 May 2020 09:47:20 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jd8lT-0004Do-4u; Mon, 25 May 2020 09:47:19 +0100
Date: Mon, 25 May 2020 09:47:19 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Subject: Re: [PATCH v4 1/5] net: macb: fix wakeup test in runtime
 suspend/resume routines
Message-ID: <20200525084719.GJ1551@shell.armlinux.org.uk>
References: <cover.1588763703.git.nicolas.ferre@microchip.com>
 <dc30ff1d17cb5a75ddd10966eab001f67ac744ef.1588763703.git.nicolas.ferre@microchip.com>
 <20200506131843.22cf1dab@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <347c9a4f-8a01-a931-c9d5-536339337f8a@microchip.com>
 <e43e7ed6-c78a-7995-3f46-0bdbf32f361c@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e43e7ed6-c78a-7995-3f46-0bdbf32f361c@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_014747_091110_523457CD 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, f.fainelli@gmail.com,
 antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 harini.katakam@xilinx.com, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 10:18:16AM +0200, Nicolas Ferre wrote:
> On 07/05/2020 at 12:03, Nicolas Ferre wrote:
> > On 06/05/2020 at 22:18, Jakub Kicinski wrote:
> > > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > > 
> > > On Wed, 6 May 2020 13:37:37 +0200 nicolas.ferre@microchip.com wrote:
> > > > From: Nicolas Ferre <nicolas.ferre@microchip.com>
> > > > 
> > > > Use the proper struct device pointer to check if the wakeup flag
> > > > and wakeup source are positioned.
> > > > Use the one passed by function call which is equivalent to
> > > > &bp->dev->dev.parent.
> > > > 
> > > > It's preventing the trigger of a spurious interrupt in case the
> > > > Wake-on-Lan feature is used.
> > > > 
> > > > Fixes: bc1109d04c39 ("net: macb: Add pm runtime support")
> > > 
> > >           Fixes tag: Fixes: bc1109d04c39 ("net: macb: Add pm runtime support")
> > >           Has these problem(s):
> > >                   - Target SHA1 does not exist
> > 
> > Indeed, it's:
> > Fixes: d54f89af6cc4 ("net: macb: Add pm runtime support")
> > 
> > David: do I have to respin or you can modify it?
> 
> David, all, I'm about to resend this series (alternative to "ping"),
> however:
> 
> 1/ Now that it's late in the cycle, I'd like that you tell me if I rebase on
> net-next because it isn't not sensible to queue such (non urgeent) changes
> at rc7
> 
> 2/ I didn't get answers from Russell and can't tell if there's a better way
> of handling underlying phylink error of phylink_ethtool_set_wol() in patch
> 3/5

I think you could have answered your own questions there, but I seemed
easier to send an email.  I've just read the code, typed out an
appropriate description of the code's behaviour, and then derived the
answer to your questions without anything else.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
