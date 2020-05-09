Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB791CC110
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 13:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOwcaWRaucVUHGjKEvHWq0w7sr2dAd23ATokAHbBaLM=; b=EqYcv+wmWCj+vY
	UCeDtxHSCKuNs0zPugb6AefmIn2w3E04izJctEC+ApGw7ZzzS/D6kVuu/rDqcdkWfmswQnYSfV4sS
	KRR0sS56V4U1iSrOaPvFIfQJ7NtKXkWclpBysxtNGjt7hfy5Hxih0ybpEivVZVBViUiu0BEkW2GUh
	SD6br6CQWL1ydAutSpTV/7jfifJ1E+eALtL0CO+yn92t7GZBLETcAn7fyaBdEjaEG6l8edH8Nwuid
	tLsBNgTnAm24OqKyhzfCNF8nKoKy14qxstYcH3RqVHK68m+3K3V3xJ8Yt3dCoaGtHaQp4GtoGLXyH
	HlEzkFmVc8qXBs+qEcdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXNvW-00015V-Po; Sat, 09 May 2020 11:45:54 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXNvM-00013Q-2F
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 11:45:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KiW60T3hTB2qpy6736Bxcw2MHOpni1wIvO5W/zMNZ1U=; b=dScxEOEPFAX93tSikUpNlmorU
 Ud2kA2lUknBqfsPTkWQ2niqbdThBKyTUvRHH3rKqgp5Ikovwkw3E1j5LwaXgrODtJ1Q34TqSdZ3Lc
 DJuqL9okq9w+0UJ+gG49wEiY7SbY7URGE520Z3WoWT3zGowMr1bQqXeX25ddgdWGmRWeuO4GZIcmo
 tahxCA17P2BuoHENH/I0g5X9Ewa0e/vcpS25lTh7AE+nbBee1eNOLNGOrtA93dL19erh1olQjeALZ
 8yG0PBo7SFlNS8hsROxrwr+tIRxsjNRl9qi5n94y8FuAvcAupkRKteByPPXw5GAK/bkoaFLlaBZID
 CmNhNf3dA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:55720)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jXNv1-0003gT-TW; Sat, 09 May 2020 12:45:24 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jXNuw-0002pE-BR; Sat, 09 May 2020 12:45:18 +0100
Date: Sat, 9 May 2020 12:45:18 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Chulski <stefanc@marvell.com>, Matteo Croce <mcroce@redhat.com>
Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
Message-ID: <20200509114518.GB1551@shell.armlinux.org.uk>
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
 <20190524100554.8606-4-maxime.chevallier@bootlin.com>
 <CAGnkfhzsx_uEPkZQC-_-_NamTigD8J0WgcDioqMLSHVFa3V6GQ@mail.gmail.com>
 <20200423170003.GT25745@shell.armlinux.org.uk>
 <CAGnkfhwOavaeUjcm4_+TG-xLxQA519o+fR8hxBCCfSy3qpcYhQ@mail.gmail.com>
 <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_044547_050764_6CC7862B 
X-CRM114-Status: GOOD (  19.31  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 Marcin Wojtas <mw@semihalf.com>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 11:15:58AM +0000, Stefan Chulski wrote:
> 
> 
> > -----Original Message-----
> > From: Matteo Croce <mcroce@redhat.com>
> > Sent: Saturday, May 9, 2020 3:13 AM
> > To: David S . Miller <davem@davemloft.net>
> > Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>; netdev
> > <netdev@vger.kernel.org>; LKML <linux-kernel@vger.kernel.org>; Antoine
> > Tenart <antoine.tenart@bootlin.com>; Thomas Petazzoni
> > <thomas.petazzoni@bootlin.com>; gregory.clement@bootlin.com;
> > miquel.raynal@bootlin.com; Nadav Haklai <nadavh@marvell.com>; Stefan
> > Chulski <stefanc@marvell.com>; Marcin Wojtas <mw@semihalf.com>; Linux
> > ARM <linux-arm-kernel@lists.infradead.org>; Russell King - ARM Linux admin
> > <linux@armlinux.org.uk>
> > Subject: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts to
> > handle RSS tables
> > 
> > Hi,
> > 
> > What do you think about temporarily disabling it like this?
> > 
> > --- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> > +++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> > @@ -5775,7 +5775,8 @@ static int mvpp2_port_probe(struct platform_device
> > *pdev,
> >                             NETIF_F_HW_VLAN_CTAG_FILTER;
> > 
> >         if (mvpp22_rss_is_supported()) {
> > -               dev->hw_features |= NETIF_F_RXHASH;
> > +               if (port->phy_interface != PHY_INTERFACE_MODE_SGMII)
> > +                       dev->hw_features |= NETIF_F_RXHASH;
> >                 dev->features |= NETIF_F_NTUPLE;
> >         }
> > 
> > 
> > David, is this "workaround" too bad to get accepted?
> 
> Not sure that RSS related to physical interface(SGMII), better just remove NETIF_F_RXHASH as "workaround".

Hmm, I'm not sure this is the right way forward.  This patch has the
effect of disabling:

d33ec4525007 ("net: mvpp2: add an RSS classification step for each flow")

but the commit you're pointing at which caused the regression is:

895586d5dc32 ("net: mvpp2: cls: Use RSS contexts to handle RSS tables")


Looking at the timeline here, it looks like Matteo raised the issue
very quickly after the patch was sent on the 14th April, and despite
following up on it, despite me following up on it, bootlin have
remained quiet.  For a regression, that's not particularly good, and
doesn't leave many options but to ask davem to revert a commit, or
if possible fix it (which there doesn't seem to be any willingness
for either - maybe it's a feature no one uses on this platform?)

Would reverting the commit you point to as the cause (895586d5dc32)
resolve the problem, and have any advantage over entirely disabling
RSS?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
