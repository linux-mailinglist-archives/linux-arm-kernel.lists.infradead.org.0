Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F901172F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 18:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pk1i4e9N0r9c9Bn6KxSYTWKn4EYabiN3RyUoYJ5HU9A=; b=Uf6aCVL6aDuf+H
	gqBhCern6SAZ1fgyilXWzi4LpWzEJ0iCVqscXS1KSspldrnDV4+JxET9fEz3f3BZjyeytil7l9e0u
	AS9FyerJHctPjP8q89Py74jeI9cagnqUhqiVf7/wQwz6bEUMgtd0Rqqrg2cADoFbJN9E7kHcUb6+b
	LgQZXYudihY87MqtO5idio8A4GJlKqymRgpoa33o9ERCCYCSLz331EXFY/vVNu+hq1QLykb8HbrVt
	c5kn171ZJZ0cVbwvguzhIC8Dkp6texGJqY3Nx+VA2bQDtF51+yyusJW40uOoFfnR8qsgaXVS+/Yc+
	MLc5AqwoQwjaGnNb9JeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieN14-0007Gg-5X; Mon, 09 Dec 2019 17:40:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieN0q-00074a-Uc
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 17:40:02 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ieN0l-0006ad-55; Mon, 09 Dec 2019 18:39:55 +0100
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1ieN0i-0001wW-8t; Mon, 09 Dec 2019 18:39:52 +0100
Date: Mon, 9 Dec 2019 18:39:52 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v1] ARM i.MX6q: make sure PHY fixup for KSZ9031 is
 applied only on one board
Message-ID: <20191209173952.qnkzfrbixjgi2jfy@pengutronix.de>
References: <20191209084430.11107-1-o.rempel@pengutronix.de>
 <20191209171508.GD9099@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209171508.GD9099@lunn.ch>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 18:37:00 up 24 days,  8:55, 32 users,  load average: 0.03, 0.03, 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_094000_985777_810B1AC2 
X-CRM114-Status: GOOD (  16.28  )
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
Cc: netdev@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Mon, Dec 09, 2019 at 06:15:08PM +0100, Andrew Lunn wrote:
> Hi Oleksij
> 
> > This patch changes the MICREL KSZ9031 fixup, which was introduced for
> > the "Data Modul eDM-QMX6" board in following patch, to be only activated
> > for this specific board.
> 
> ...
> 
> >  static void __init imx6q_enet_phy_init(void)
> >  {
> > +	/* Warning: please do not extend this fixup list. This fixups are
> > +	 * applied even on boards where related PHY is not directly connected
> > +	 * to the ethernet controller. For example with switch in the middle.
> > +	 */
> >  	if (IS_BUILTIN(CONFIG_PHYLIB)) {
> >  		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
> >  				ksz9021rn_phy_fixup);
> > -		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
> > -				ksz9031rn_phy_fixup);
> > +
> > +		if (of_machine_is_compatible("dmo,imx6q-edmqmx6"))
> > +			phy_register_fixup_for_uid(PHY_ID_KSZ9031,
> > +						   MICREL_PHY_ID_MASK,
> > +						   ksz9031rn_phy_fixup);
> > +
> >  		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffef,
> >  				ar8031_phy_fixup);
> >  		phy_register_fixup_for_uid(PHY_ID_AR8035, 0xffffffef,
> 
> What about the other 3 fixups? Are they not also equally broken,
> applied for all boards, not specific boards?

Yes. all of them are broken.
I just trying to not wake all wasp at one time. Most probably there are
board working by accident. So, it will be good to have at least separate
patches for each fixup.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
