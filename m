Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C36BF16FBCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 11:13:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rs0Yxv5tMOswieGADaZL9yCXLCXf/tfZXAnAcv8vwfg=; b=k90dinFEl00UPu
	u7g5DR8VJBZUL4cGa2xABPTMcdBLFX2GmvEmAn42tnn34H/EP/VnHrsVnbo6oFov5hqTZPpYzEgPQ
	37jUZ/X5O9xcctCwtFmWN2TsoI72jDoHJ/OOohHYNVXiYHxAjg4hGh5vUoX79u1MeIVsK9Df4WKBt
	s64EDPzI8nNTF1lcMzf6gtnmOK/y/2YQx6IaH8Hl8vU61uX+iBpKA20YfSxGlA8aOHYHEgrwrZ+ji
	JgXg1X++6Z12aBlzSxdK9B90ssSWmfJ5T31D3InaSJpZpEJQlLmalAcGgCraLOFPcfw4StCGXoRId
	S52OdGXS8C1TmVdFt0vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tgi-0000PK-6I; Wed, 26 Feb 2020 10:13:08 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tgV-0000Oe-2l; Wed, 26 Feb 2020 10:12:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CAamW1A7wSi+dl1kSJ3MLj0iB7qeqpYQKI22daCCGM8=; b=v6DlCO/OJmb9kQvoiXW+Zr432
 8BvCAsk7BQEZrQZMpP9iJSc7ZzWQ1beEXWg6f1rkJar2gHLh0bO6C6g55IjbliVm8GG4wOPoJ5Ua6
 vdY5znpf7BdEkxFYx1esKe7H+3s72RVuWJei0owKFkgQfwQhq1p1LxnrcjjwuMtgy8iRnkfHSDWCU
 ppAdE2TIyan/4aiw8Za37GFy7p9KLPAfuhtItrM+Jis7E9Z6EPwm8rGSfhBsW5F9DrRXs0k6PUwkh
 r9XT5Ir1bufpF5nVPFO5gkuAhgxd3lpmT5fPbnsxbBNoWcWXG+AklBbInbQTfslvbHfTUtRdAfMqJ
 fNfXuKgBA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57116)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j6tfp-0006nj-Vd; Wed, 26 Feb 2020 10:12:14 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j6tfh-0008KB-0V; Wed, 26 Feb 2020 10:12:05 +0000
Date: Wed, 26 Feb 2020 10:12:04 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: Re: [PATCH net-next 5/8] net: dpaa2-mac: use resolved link config in
 mac_link_up()
Message-ID: <20200226101204.GW25745@shell.armlinux.org.uk>
References: <20200225093703.GS25745@shell.armlinux.org.uk>
 <E1j6WgG-0000TJ-CC@rmk-PC.armlinux.org.uk>
 <DB8PR04MB68282F710FB598B977C36F99E0ED0@DB8PR04MB6828.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB8PR04MB68282F710FB598B977C36F99E0ED0@DB8PR04MB6828.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_021255_122901_51C50A80 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Michal Simek <michal.simek@xilinx.com>, Jose Abreu <joabreu@synopsys.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Vladimir Oltean <olteanv@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Felix Fietkau <nbd@nbd.name>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 04:36:32PM +0000, Ioana Ciornei wrote:
> > Subject: [PATCH net-next 5/8] net: dpaa2-mac: use resolved link config in
> > mac_link_up()
> > 
> > Convert the DPAA2 ethernet driver to use the finalised link parameters in
> > mac_link_up() rather than the parameters in mac_config(), which are more
> > suited to the needs of the DPAA2 MC firmware than those available via
> > mac_config().
> > 
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> 
> Tested-by: Ioana Ciornei <ioana.ciornei@nxp.com>

Thanks.

> > +
> > +		/* This is lossy; the firmware really should take the pause
> > +		 * enablement status rather than pause/asym pause status.
> > +		 */
> 
> In what sense it's lossy? I cannot see how information can be lost by translating the rx/tx pause state to pause/asym.
> If it's just about the unnecessary double translation, then I agree.. this could have been done in an easier manner.

If you're just translating rx/tx to pause/asym and then doing the
reverse, then it isn't lossy, but if the firmware is resolving
pause/asym according to the table in IEEE 802.3, then it will be
lossy.

If the firmware doesn't interpret the bits, then why not do the
sensible thing and just pass the enablement status rather than
trying to confusingly encode it back to pause/asym?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
