Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7C314A8DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 18:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uxn+EIyt3ORw8Wec2fjGVv1j1hqYbq6n4JyXfmkHGW4=; b=VufVL150/CnC9v
	cKq3jN1MiiySG2Ue40sdmk3a2Vy0XF1VSe+SrOekG+wH2LEPrIFVPdPnG7k2Z6uXo/idQqSa0PnCl
	SDyIE2BGShLcs4pT/9Qyg76nJB5DmrgwurTe6FL3wZp7UGqt6Owh4siElcjYc0qEpOl3GEH5mdJ4f
	cRS9MGVMupzKZAbPnRLI9AzDYU8pxXQNZTR4NnALXVdAR+14sUy8aQ/cTm3oW69LKhwQFxBdEhy3p
	ZVRcTIfaLwcJZQs0X5fakwlLjoH3Hn/fUzeXUCQHcHCLJUPUKGUQ5xZqz/YtVFpE8ffH/rSlA5yTR
	HHBgWVT428kuUcYvLI3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw83t-0003Vp-OC; Mon, 27 Jan 2020 17:20:33 +0000
Received: from mail-eopbgr750042.outbound.protection.outlook.com
 ([40.107.75.42] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw83b-0003VF-QM
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 17:20:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=icuhlUZYnWRN/bSdwFvXC+PGKdCeQsDCG9j/RW8JDliQ/A9UBWAKwBkwjcG5fkb9GiJapqTdw1e2XBKjq+gp5WKhH8rHrPkvWrfGfpk6rATAFiZJhEE5Mxkc4yBCqHrmVPANA9BJapNRNXb/DWkEWGoHkwRNh0cVyynSEAJk3T8znfavMbq36vCXXnxuGauMmxHwua+DwIqwASHZ7Q4PgwCpCb2/1lUozlkrpE4G7gN9uw6osUswJq6LnCBmt5riL1RLjZ7xcpsyuLPspUl0NYGIW/C73mo4r0Z5jvY/A1Dy0INdYp6sOYrGAg2no9Vz7o7eVi3vomVNbfk/xLlfXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3OzQNVgMSPo8rh5HOdK77DI8pbx44+rKlgRfdf6L20U=;
 b=HuEC4LH7R6NSz8dInBDW2NXpmQycFVzc93CVNUzsuzsDLlOpOOrQm5bu60x/Qo4FuJt7xCuTRdNdosmLS0C8TQsEGD/cUKIe0UXMcBFXqCwWa0YLX1u4ljFljMCyvjUwU38vMaWOZlqEYcIL20NOdV1f+D2XoV0JtXn3CsdMQX1H61SR+yIc54ei8rd2Km2PMWUe/TkSWpN7+auLoXBKNxiETTZP82+p1g6NPhBY4FbmFG1evbyzBjSqK0NOycskQbUrUwd+vfdpJr4vHgtHxlHPgyeYgu7ipe02uAXFKliRmDn2hIfCwUkij/3B/Q6SnfDjOgDIIFYFu7IY1C7ggA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3OzQNVgMSPo8rh5HOdK77DI8pbx44+rKlgRfdf6L20U=;
 b=Te4AxzFuvBlsVD8FZ5SwwbOYjbdQFfNeTYrSAxpBCGOu1O9+i4m32f9zwfLGWv7aQxQr6VDq3xrCOc+GQs/7rfNa79JsXNDxc+V1oG8HpYhawli1Ii9cbAr2GIUR9zSiQa+2+B9bpqgoQybCDt603nkYnvEigAOtmaNl8m31SSk=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6933.namprd02.prod.outlook.com (20.180.10.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Mon, 27 Jan 2020 17:20:13 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2665.026; Mon, 27 Jan 2020
 17:20:12 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Andre Przywara <andre.przywara@arm.com>, Russell King - ARM Linux admin
 <linux@armlinux.org.uk>
Subject: RE: [PATCH 07/14] net: axienet: Fix SGMII support
Thread-Topic: [PATCH 07/14] net: axienet: Fix SGMII support
Thread-Index: AQHVx6y6SMYCdqDur0aetpMax4OMuafj8vDrgAAMIYCAAAUPgIAAHLKAgAwzG4CAA16iAIAAD30AgAsWTwCAAAFoQA==
Date: Mon, 27 Jan 2020 17:20:12 +0000
Message-ID: <CH2PR02MB70007305182C51584B955434C70B0@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-8-andre.przywara@arm.com>
 <20200110140415.GE19739@lunn.ch>
 <20200110142038.2ed094ba@donnerap.cambridge.arm.com>
 <20200110150409.GD25745@shell.armlinux.org.uk>
 <20200110152215.GF25745@shell.armlinux.org.uk>
 <20200110170457.GH25745@shell.armlinux.org.uk>
 <20200118112258.GT25745@shell.armlinux.org.uk>
 <3b28dcb4-6e52-9a48-bf9c-ddad4cf5e98a@arm.com>
 <20200120154554.GD25745@shell.armlinux.org.uk>
 <20200127170436.5d88ca4f@donnerap.cambridge.arm.com>
In-Reply-To: <20200127170436.5d88ca4f@donnerap.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [183.83.138.148]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 34d666ab-609e-4a04-5f05-08d7a34d2b3f
x-ms-traffictypediagnostic: CH2PR02MB6933:|CH2PR02MB6933:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB69331A17E10ABB1FC1C3163FC70B0@CH2PR02MB6933.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(346002)(376002)(39860400002)(189003)(199004)(86362001)(4326008)(186003)(110136005)(54906003)(2906002)(5660300002)(316002)(9686003)(55016002)(6506007)(30864003)(53546011)(26005)(76116006)(8936002)(8676002)(81166006)(81156014)(71200400001)(7696005)(52536014)(64756008)(66446008)(66946007)(66556008)(478600001)(33656002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6933;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iJKLOYawaihDMJNnkebQHfnGAIH/fG3Kkmk90//rBP99Su/nZT2Y/2D38OwiF59Mq8DnBx1Iw1VOmxUV/S39f+c4Dw8o5dNFcoPTbKBa+eA5i8v090qh6BcZuhGwsEc1obwFNYl4F6LIdqf2UcklrntJoDuEFKvzBacfR95tWO41Y3GQslR+nbQrrU1tsNl5ZgwdcqBnVwUeAGmPYT+GfamNNP4N47+7qdGOVYAe4JpmX81J0VoASXeMxgne9EAhArXPaXXDHBtZ+boYHdzkCdiDrfLJy3Y4/09RiQUyJhz7L4AGSBAHDqPOrwU3Yxody8AJmoavUP8InmFcOdNiVrkYRJZZYxCrqGzKpV2eptpCTCYEI9/hOwKV8A7ppkdsXz825hyfMXaxWJruWZEz8OjIT+Px4GtTAMPYWIKkRuyh98a7dmUZaMtetsVAcQT3
x-ms-exchange-antispam-messagedata: Mnl8LecPx0tgeyWDhLH2pgg74KfTXmGoTf1QFZciebQKbesJ2wi/p3rzLs28CpYwxLTfM2NjKLcCAuPP6NMeDKnAP1rbhMdrfTyGRpmtbM8my8xnmgTMfie5bdEvx5lUTu78f0SaFqndQTkosTpjQw==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34d666ab-609e-4a04-5f05-08d7a34d2b3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 17:20:12.7576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +gKv/J/2/Ww5h94TAho2u24YZGzvDXyR2fRDecWHiLEXSo9id18p7FMLZc3aZ+iCfx4VCGmNAQz0lqSoypwb/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6933
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_092015_927349_F4DFF5DE 
X-CRM114-Status: GOOD (  45.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Hancock <hancock@sedsystems.ca>, Michal Simek <michals@xilinx.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Andre Przywara <andre.przywara@arm.com>
> Sent: Monday, January 27, 2020 10:35 PM
> To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
> Cc: Andrew Lunn <andrew@lunn.ch>; netdev@vger.kernel.org; Radhey Shyam
> Pandey <radheys@xilinx.com>; Michal Simek <michals@xilinx.com>; linux-
> kernel@vger.kernel.org; Robert Hancock <hancock@sedsystems.ca>; David S .
> Miller <davem@davemloft.net>; linux-arm-kernel@lists.infradead.org
> Subject: Re: [PATCH 07/14] net: axienet: Fix SGMII support
> 
> On Mon, 20 Jan 2020 15:45:54 +0000
> Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:
> 
> Hi Russell,
> 
> sorry for the delay, some other stuff bubbling up, then I couldn't access the
> board ...
> 
> > On Mon, Jan 20, 2020 at 02:50:28PM +0000, Andre Przywara wrote:
> > > On 18/01/2020 11:22, Russell King - ARM Linux admin wrote:
> > > > On Fri, Jan 10, 2020 at 05:04:57PM +0000, Russell King - ARM Linux admin
> wrote:
> > > >> Maybe something like the below will help?
> > > >>
> > > >> Basically, use phylink_mii_pcs_get_state() instead of
> > > >> axienet_mac_pcs_get_state(), and setup lp->phylink_config.pcs_mii
> > > >> to point at the MII bus, and lp->phylink_config.pcs_mii_addr to
> > > >> access the internal PHY (as per C_PHYADDR parameter.)
> > > >>
> > > >> You may have some fuzz (with gnu patch) while trying to apply this,
> > > >> as you won't have the context for the first and last hunks in this
> > > >> patch.
> > > >>
> > > >> This will probably not be the final version of the patch anyway;
> > > >> there's some possibility to pull some of the functionality out of
> > > >> phylib into a more general library which would avoid some of the
> > > >> functional duplication.
> > > >
> > > > Hi Andre,
> > > >
> > > > Did you have a chance to see whether this helps?
> > >
> > > Sorry, I needed some time to wrap my head around your reply first. Am I am
> still not fully finished with this process ;-)
> > > Anyway I observed that when I add 'managed = "in-band-status"' to the DT, it
> seems to work, because it actually calls axienet_mac_pcs_get_state() to learn
> the actual negotiated parameters. Then in turn it calls mac_config with the
> proper speed instead of -1:
> > > [  151.682532] xilinx_axienet 7fe00000.ethernet eth0: configuring for
> inband/sgmii link mode
> > > [  151.710743] axienet_mac_config(config, mode=2, speed=-1, duplex=255,
> pause=16)
> > > ...
> > > [  153.818568] axienet_mac_pcs_get_state(config): speed=1000,
> interface=4, pause=0
> > > [  153.842244] axienet_mac_config(config, mode=2, speed=1000, duplex=1,
> pause=0)
> > >
> > > Without that DT property it never called mac_pcs_get_state(), so never
> learnt about the actual settings.
> > > But the actual MAC setting was already right (1 GBps, FD). Whether this was
> by chance (reset value?) or because this was set by the PHY via SGMII, I don't
> know.
> > > So in my case I think I *need* to have the managed = ... property in my DT.
> >
> > I really don't like this guess-work.  The specifications are freely
> > available out there, so there's really no need for this.
> >
> > pg051-tri-mode-eth-mac.pdf describes the ethernet controller, and
> > Table 2-32 therein describes the EMMC register.
> >
> > Bits 31 and 30 comprise a two-bit field which indicates the speed that
> > has been configured.  When the Xilinx IP has been configured for a
> > fixed speed, it adopts a hard-coded value (in other words, it is read-
> > only).  When it is read-writable, it defaults to "10" - 1G speed.
> >
> > So, I think this just works by coincidence, not by proper design,
> > and therefore your patch in this sub-thread is incorrect since it's
> > masking the problem.
> >
> > > But I was wondering if we need this patch anyway, regardless of the proper
> way to check for the connection setting in this case. Because at the moment
> calling mac_config with speed=-1 will *delete* the current MAC speed setting
> and leave it as 10 Mbps (because this is encoded as 0), when speed is not one of
> the well-known values. I am not sure that is desired behaviour, or speed=-1 just
> means: don't touch the speed setting. After all we call mac_config with speed=-
> 1 first, even when later fixing this up (see above).
> >
> > Have you tested 100M and 10M speeds as well - I suspect you'll find
> > that, as you're relying on the IP default EMMC register setting, it
> > just won't work with your patches as they stand, because there is
> > nothing to read the in-band result.  I also don't see anything in
> > either pg051-tri-mode-eth-mac.pdf or pg047-gig-eth-pcs-pma.pdf which
> > indicates that the PCS negotiation results are passed automatically
> > between either IP blocks.
> >
> > Therefore, I think you _will_ need something like the patch I've
> > proposed to make this Xilinx IP work properly.
> 
> OK, I think I begin to understand where you are coming from: Despite using
> SGMII there is *no* automatic in-band passing of the PHY link status to the MAC
> (I was working on that assumption and was treating the default 1Gbps as a result
> of that auto-negotiation).
> And since the registers that the manual mentions are actually PHY registers, we
> need to use MDIO to access them.
> And just when I was wondering how I should do this I realised that this is exactly
> what your patch does ...
> 
> So I filled the gaps in there, and that indeed seems to improve now.
> Some questions:
> - I still always see mac_config() being called with speed=-1 first. With the current
> mac_config implementation this screws up the MAC setup, but is later corrected
> (see below). But I would still get that "Speed other than 10, 100 or 1Gbps is not
> supported" message. So if this speed=-1 some special case that needs extra
> handling? Where does it actually come from?
> - Checking the phylink doc for mac_config() I understand that when using
> MLO_AN_INBAND, I should "place the link into inband negotiation mode". Does
> that mean that it should call phylink_mii_pcs_an_restart()? Or is this the
> responsibility of phylink?
> - When using managed = "in-band-status", I see a second call to mac_config()
> having the right parameters (1Gbps, FD) now, as read by
> phylink_mii_pcs_get_state(). So this gets eventually set up correctly now, thanks
> to your patch.
> - I initialise "lp->phylink_config.pcs_mii = lp->mii_bus;" in axienet_probe(), just
> before calling phylink_create(). Where would be the best place to set the PHY
> address (phylink_config.pcs_mii_addr)? That is not known yet at this point, I
> guess? (I hacked it to 1 just to test your code).
> - When *not* using managed = "in-band-status", I see mac_config still being
> called with MLO_AN_PHY and speed=-1. Is that expected? Is there something
> else missing, possibly in the DT? Shouldn't phylink ask the PHY via MDIO about
> the status first, then come back with the results as parameters to mac_config()?
> The phylink mac_config() doc just says that we should configure the MAC
> according to speed, duplex and pause passed in.
> 
> Regarding 10/100 Mbps: I can't test any other speeds, because this is on an
> FPGA in some data centre, and I can't control the other side. I am already happy
> that I have *some* Ethernet cable connected to it ;-)

I can help with validating  10/100 Mbps. Related to calling phylink advertisements 
functions-  are we invoking phylink_mii_pcs_set_advertisement from validate
and then in mac_link_state() method call phylink_mii_pcs_get_state?

> 
> Cheers,
> Andre.
> 
> > I've augmented the patch with further 1000BASE-X support, including
> > adding support for configuring the advertisement in the PG047 PCS
> > registers.  To allow this IP to support 1000BASE-X, from what I
> > read in these documents, that will also be necessary.
> >
> > 8<===
> > From: Russell King <rmk+kernel@armlinux.org.uk>
> > Subject: [PATCH] net: phylink: helpers for 802.3 clause 37/SGMII register sets
> >
> > Implement helpers for PCS accessed via the MII bus using register
> > sets conforming to 802.3 clause 37. Advertisements for clause 37
> > and Cisco SGMII are supported by these helpers.
> >
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> >  drivers/net/phy/phylink.c | 186
> ++++++++++++++++++++++++++++++++++++++
> >  include/linux/phylink.h   |   9 ++
> >  2 files changed, 195 insertions(+)
> >
> > diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
> > index e260098d3719..ed82407240b8 100644
> > --- a/drivers/net/phy/phylink.c
> > +++ b/drivers/net/phy/phylink.c
> > @@ -2081,4 +2081,190 @@ phy_interface_t
> phylink_select_serdes_interface(unsigned long *interfaces,
> >  }
> >  EXPORT_SYMBOL_GPL(phylink_select_serdes_interface);
> >
> > +static void phylink_decode_advertisement(struct phylink_link_state *state)
> > +{
> > +	__ETHTOOL_DECLARE_LINK_MODE_MASK(u);
> > +
> > +	linkmode_and(u, state->lp_advertising, state->advertising);
> > +
> > +	if (linkmode_test_bit(ETHTOOL_LINK_MODE_Pause_BIT, u)) {
> > +		state->pause = MLO_PAUSE_RX | MLO_PAUSE_TX;
> > +	} else if (linkmode_test_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT,
> u)) {
> > +		if (linkmode_test_bit(ETHTOOL_LINK_MODE_Pause_BIT,
> > +				      state->lp_advertising))
> > +			state->pause |= MLO_PAUSE_TX;
> > +		if (linkmode_test_bit(ETHTOOL_LINK_MODE_Pause_BIT,
> > +				      state->advertising))
> > +			state->pause |= MLO_PAUSE_RX;
> > +	}
> > +
> > +	if (linkmode_test_bit(ETHTOOL_LINK_MODE_2500baseX_Full_BIT, u)) {
> > +		state->speed = SPEED_2500;
> > +		state->duplex = DUPLEX_FULL;
> > +	} else if (linkmode_test_bit(ETHTOOL_LINK_MODE_1000baseX_Full_BIT,
> u)) {
> > +		state->pause = SPEED_1000;
> > +		state->duplex = DUPLEX_FULL;
> > +	} else {
> > +		state->link = false;
> > +	}
> > +}
> > +
> > +static void phylink_decode_sgmii_word(struct phylink_link_state *state,
> > +				      uint16_t config_reg)
> > +{
> > +	if (!(lpa & BIT(15))) {
> > +		state->link = false;
> > +		return;
> > +	}
> > +
> > +	switch (lpa & 0x0c00) {
> > +	case 0x0000:
> > +		state->speed = SPEED_10;
> > +		state->duplex = lpa & 0x1000 ? DUPLEX_FULL : DUPLEX_HALF;
> > +		break;
> > +	case 0x0400:
> > +		state->speed = SPEED_100;
> > +		state->duplex = lpa & 0x1000 ? DUPLEX_FULL : DUPLEX_HALF;
> > +		break;
> > +	case 0x0800:
> > +		state->speed = SPEED_1000;
> > +		state->duplex = lpa & 0x1000 ? DUPLEX_FULL : DUPLEX_HALF;
> > +		break;
> > +	default:
> > +		state->link = false;
> > +		break;
> > +	}
> > +}
> > +
> > +/**
> > + * phylink_mii_pcs_get_state - read the MAC PCS state
> > + * @config: a pointer to a &struct phylink_config.
> > + * @state: a pointer to a &struct phylink_link_state.
> > + *
> > + * Helper for MAC PCS supporting the 802.3 register set for clause 37
> > + * negotiation and/or SGMII control.
> > + *
> > + * Read the MAC PCS state from the MII device configured in @config and
> > + * parse the Clause 37 or Cisco SGMII link partner negotiation word into
> > + * the phylink @state structure. This is suitable to be directly plugged
> > + * into the mac_pcs_get_state() member of the struct phylink_mac_ops
> > + * structure.
> > + */
> > +void phylink_mii_pcs_get_state(struct phylink_config *config,
> > +			       struct phylink_link_state *state)
> > +{
> > +	struct mii_bus *bus = config->pcs_mii;
> > +	int addr = config->pcs_mii_addr;
> > +	int bmsr, lpa;
> > +
> > +	bmsr = mdiobus_read(bus, addr, MII_BMSR);
> > +	lpa = mdiobus_read(bus, addr, MII_LPA);
> > +	if (bmsr < 0 || lpa < 0) {
> > +		state->link = false;
> > +		return;
> > +	}
> > +
> > +	state->link = !!(bmsr & BMSR_LSTATUS);
> > +	state->an_complete = !!(bmsr & BMSR_ANEGCOMPLETE);
> > +	if (!state->link)
> > +		return;
> > +
> > +	switch (state->interface) {
> > +	case PHY_INTERFACE_MODE_1000BASEX:
> > +		if (lpa & LPA_1000XFULL)
> > +
> 	linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseX_Full_BIT,
> > +					 state->lp_advertising);
> > +		goto lpa_8023z;
> > +
> > +	case PHY_INTERFACE_MODE_2500BASEX:
> > +		if (lpa & LPA_1000XFULL)
> > +
> 	linkmode_set_bit(ETHTOOL_LINK_MODE_2500baseX_Full_BIT,
> > +					 state->lp_advertising);
> > +	lpa_8023z:
> > +		if (lpa & LPA_1000XPAUSE)
> > +			linkmode_set_bit(ETHTOOL_LINK_MODE_Pause_BIT,
> > +					 state->lp_advertising);
> > +		if (lpa & LPA_1000XPAUSE_ASYM)
> > +
> 	linkmode_set_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT,
> > +					 state->lp_advertising);
> > +		if (lpa & LPA_LPACK)
> > +
> 	linkmode_set_bit(ETHTOOL_LINK_MODE_Autoneg_BIT,
> > +					 state->lp_advertising);
> > +		phylink_decode_advertisement(state);
> > +		break;
> > +
> > +	case PHY_INTERFACE_MODE_SGMII:
> > +		phylink_decode_sgmii_word(state, lpa);
> > +		break;
> > +
> > +	default:
> > +		state->link = false;
> > +		break;
> > +	}
> > +}
> > +EXPORT_SYMBOL_GPL(phylink_mii_pcs_get_state);
> > +
> > +/**
> > + * phylink_mii_pcs_set_advertisement - configure the clause 37 PCS
> advertisement
> > + * @config: a pointer to a &struct phylink_config.
> > + * @state: a pointer to the state being configured.
> > + *
> > + * Helper for MAC PCS supporting the 802.3 register set for clause 37
> > + * negotiation and/or SGMII control.
> > + *
> > + * Configure the clause 37 PCS advertisement as specified by @state. This
> > + * does not trigger a renegotiation; phylink will do that via the
> > + * mac_an_restart() method of the struct phylink_mac_ops structure.
> > + */
> > +int phylink_mii_pcs_set_advertisement(struct phylink_config *config,
> > +				      const struct phylink_link_state *state)
> > +{
> > +	struct mii_bus *bus = config->pcs_mii;
> > +	int addr = config->pcs_mii_addr;
> > +	u16 adv;
> > +
> > +	switch (state->interface) {
> > +	case PHY_INTERFACE_MODE_1000BASEX:
> > +	case PHY_INTERFACE_MODE_2500BASEX:
> > +		adv = ADVERTISE_1000XFULL;
> > +		if (linkmode_test_bit(ETHTOOL_LINK_MODE_Pause_BIT,
> > +				      state->advertising))
> > +			adv |= ADVERTISE_1000XPAUSE;
> > +		if (linkmode_test_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT,
> > +				      state->advertising))
> > +			adv |= ADVERTISE_1000XPSE_ASYM;
> > +		return mdiobus_write(bus, addr, MII_ADVERTISE, adv);
> > +
> > +	default:
> > +		/* Nothing to do for other modes */
> > +		return 0;
> > +	}
> > +}
> > +EXPORT_SYMBOL_GPL(phylink_mii_pcs_set_advertisement);
> > +
> > +/**
> > + * phylink_mii_pcs_an_restart - restart 802.3z autonegotiation
> > + * @config: a pointer to a &struct phylink_config.
> > + *
> > + * Helper for MAC PCS supporting the 802.3 register set for clause 37
> > + * negotiation.
> > + *
> > + * Restart the clause 37 negotiation with the link partner. This is
> > + * suitable to be directly plugged into the mac_pcs_get_state() member
> > + * of the struct phylink_mac_ops structure.
> > + */
> > +void phylink_mii_pcs_an_restart(struct phylink_config *config)
> > +{
> > +	struct mii_bus *bus = config->pcs_mii;
> > +	int val, addr = config->pcs_mii_addr;
> > +
> > +	val = mdiobus_read(bus, addr, MII_BMCR);
> > +	if (val >= 0) {
> > +		val |= BMCR_ANRESTART;
> > +
> > +		mdiobus_write(bus, addr, MII_BMCR, val);
> > +	}
> > +}
> > +EXPORT_SYMBOL_GPL(phylink_mii_pcs_an_restart);
> > +
> >  MODULE_LICENSE("GPL v2");
> > diff --git a/include/linux/phylink.h b/include/linux/phylink.h
> > index 4ea76e083847..d51f45fc5f9a 100644
> > --- a/include/linux/phylink.h
> > +++ b/include/linux/phylink.h
> > @@ -65,6 +65,9 @@ enum phylink_op_type {
> >  struct phylink_config {
> >  	struct device *dev;
> >  	enum phylink_op_type type;
> > +
> > +	struct mii_bus *pcs_mii;
> > +	int pcs_mii_addr;
> >  };
> >
> >  /**
> > @@ -292,4 +295,10 @@ phy_interface_t
> phylink_select_serdes_interface(unsigned long *interfaces,
> >  						const phy_interface_t *pref,
> >  						size_t nprefs);
> >
> > +void phylink_mii_pcs_get_state(struct phylink_config *config,
> > +			       struct phylink_link_state *state);
> > +int phylink_mii_pcs_set_advertisement(struct phylink_config *config,
> > +				      const struct phylink_link_state *state);
> > +void phylink_mii_pcs_an_restart(struct phylink_config *config);
> > +
> >  #endif


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
