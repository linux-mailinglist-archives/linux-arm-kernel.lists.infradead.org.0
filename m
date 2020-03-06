Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4771B17B9B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 10:57:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcbRh8QL0eeYH7vLFXJw2YT8X64adHZx5tnkmk7EKIA=; b=Gg2pwLXoteuvMj
	41xX3NPGVCmajOus6EFxlK3BOejEVqfHlNYR9n2E+nZfWSUHQ+yTNnDOSlw9biBE0EsYNEsA9sWGI
	9quNYsXauxvpPlgYpXEkfl/zv08JnKRuv9h3cTnHohZXJJREWAUUJbFKU5M06ZZh8IoDD8lF3J8Gw
	0qLYfxapB4AqZI9k19jk2eHVQTniSf5CrwkO6thRaVwpU1bfLsZJ1fSPPWi1UVC8KAGQqZopqMb5I
	ofN2p0k6TRpH8g2R8nsSJALMrt01eTDj6q+RK626rcV/ZyLEWUTeVmdsM4l7QWakQtRER0CFz+lED
	Tf7cD3gHa9NSfwiIFqKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9jR-0007yu-TY; Fri, 06 Mar 2020 09:57:25 +0000
Received: from mail-eopbgr140130.outbound.protection.outlook.com
 ([40.107.14.130] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9jK-0007yD-VU
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 09:57:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CbQkqNOdvz4K+3FEboL2aV3HqldoduzQpXjsJ6e9eEvLiqBBdFhJS4pTRzs0y6cO2h3sN+mwx8Q1+it0wdWrWKHyiE+e74K2LXDuxb2ZSk+Urza6bXtvFS0Zrm1byeSWij6ZSRetQSTGuzETPuzJQwPkza/v4gTxBnTQUsXDv0cgNZ90wmKwt8fTqkpNAejzSSYrV1TR3hdxBNLsT69Ao20M4WhhkNDaoJwVQHKiEXu+X2RtOh2h4N++WHUxoDHjfgjK7SU2pAd1gDWA5cE9DIrJ/bohSjGcrqfGYQ7sR+AbDWY+h52Yw9jKGv+A3Ya02T7mPELK5aW8J6H+GhrRmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e52YPFKisGKwNXZh2mdc4gwk2qFdgy5+uqMkDqH6s9c=;
 b=f6O2Xc3YdgcYC/u4gB00BzlgzzBXXGeq9a0Z5yqaQl3sMhPq/+TvupadPwsCSJy9pGJzhMM6pm4L1flTVF28s/UbKKexA59svgOB1xT5v97dZx73nlfm/YbpSM07CYb7wJjblegg4TNc9KSIhmB8LhkGhQPQ3H7wY6tbH15NMOuEnU2k9AmxhYa/Y1It6+HbnjK85B4IFCtrS5OfHdAnJ149dxb1iMLNVfA4K+amYrW9HvceCu+WXOPlk8DP8GpjvGCnARkqNuzv3QCVudjtjL/tN8tMI0Hb13sSQoMbuC09UpaBM/yg3azLxbtuTlVfyqnvKK6OwFypsFiT1qIswQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e52YPFKisGKwNXZh2mdc4gwk2qFdgy5+uqMkDqH6s9c=;
 b=hyVH1LjR56tXcdiWXIPlR9FPLrxO/vVVRjOecfi7f380CynqU9wa+HNp75Q+hiMDQ5x0bxrcj9bU+kTL1eyBb15j5oCnqMNFAo8le3eW65IqyPXILrkup9w6Cl5JsUPVuJgV/HCOJ9X9bLr9ZINumZLWMQviR1NJOPX5N5NQIes=
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (20.179.1.217) by
 AM6PR05MB6405.eurprd05.prod.outlook.com (20.179.7.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Fri, 6 Mar 2020 09:57:15 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e%4]) with mapi id 15.20.2772.019; Fri, 6 Mar 2020
 09:57:15 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "linux@armlinux.org.uk" <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Thread-Topic: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Thread-Index: AQHV8vTsfP1BktnxKEy+q0EhrXMNZqg6BRAAgAFQPwA=
Date: Fri, 6 Mar 2020 09:57:15 +0000
Message-ID: <98f5901a121b83d4f7d75f9a9056bd3719e2ee89.camel@toradex.com>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
 <20200305135346.GD25745@shell.armlinux.org.uk>
In-Reply-To: <20200305135346.GD25745@shell.armlinux.org.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [31.10.206.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0eb6224b-8deb-4f74-fff4-08d7c1b4bfd9
x-ms-traffictypediagnostic: AM6PR05MB6405:
x-microsoft-antispam-prvs: <AM6PR05MB6405AE487710F9781B20B361F4E30@AM6PR05MB6405.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0334223192
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(189003)(199004)(2906002)(54906003)(6506007)(86362001)(7416002)(66476007)(4326008)(44832011)(66446008)(66556008)(64756008)(5660300002)(71200400001)(26005)(36756003)(6512007)(76116006)(91956017)(66946007)(8676002)(6486002)(186003)(8936002)(81156014)(2616005)(6916009)(498600001)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR05MB6405;
 H:AM6PR05MB6120.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lldETpQqHk1BOyb+DyuN17zzh+Z1KzlDE4q7gt14jFzhj5ofFpbpo6q9hquGTHWb6SQo3gpStGMIiiev8uPwxXTkZ/dL34WVJjPA5rDRx8Bo4GmkAkNX53/V5lw8Eisu0E6EQNddUC/DMjKnqdiNqQglVCRN83eUwbIFSCojsI2hf429ax4fGHFw7CJv/PZRntBXQof0ofoVZsSixYiad+yJJ2Irloeir3NWlHFzH3B/9+yqwLsOXIfuGWEtxuLrK2gPEV74i8FFCcfbGVF7BwIAJu6u9UcORcevfoF7QNWY9vm2ZKO62l7LeiJs7SaCmASrqav/qAewfrj/ua05Np27sJdJb+5RczVbRGjBXMAzJCUiGgeIT3FRp2YQM2+KzaHd3+Q2MTTTdP6bzTOfEwp0rl77ZgUd1N9rnXszdFecbNVBuhKaMoH/7ThG+ZkU
x-ms-exchange-antispam-messagedata: KGN8AxpStEmIErqwdT9aAZTpA1J+/wbyoJ/kErUCvhrRyNH+5Dy8SCfqlh6YTp5+Dq+fXy3c/mEam2z97AfNE96PNp4BA+8DCxs+MJXg0BrqeaeMGtLODH8ljaM1RAqmotqpXweRiDxUOU9buYOZxA==
x-ms-exchange-transport-forked: True
Content-ID: <504FBA37D3137D47B885050B57AB5C07@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0eb6224b-8deb-4f74-fff4-08d7c1b4bfd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2020 09:57:15.1764 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ux1WKhFfYWV51Mh8CbeEzR7XcJqrGJ/UF/3/ZZlekGxKLnGH2ugEZjDbndgPXSemku3xwQvhFkrIfiq47mwnzI8AxYusPhKOPMCoQ6+Yl3g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6405
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_015719_020365_0393A4D6 
X-CRM114-Status: GOOD (  27.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.130 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-03-05 at 13:53 +0000, Russell King - ARM Linux admin wrote:
> On Thu, Mar 05, 2020 at 02:49:28PM +0100, Philippe Schenker wrote:
> > The MAC of the i.MX6 SoC is compliant with RGMII v1.3. The KSZ9131
> > PHY
> > is like KSZ9031 adhering to RGMII v2.0 specification. This means the
> > MAC should provide a delay to the TXC line. Because the i.MX6 MAC
> > does
> > not provide this delay this has to be done in the PHY.
> > 
> > This patch adds by default ~1.6ns delay to the TXC line. This should
> > be good for all boards that have the RGMII signals routed with the
> > same length.
> > 
> > The KSZ9131 has relatively high tolerances on skew registers from
> > MMD 2.4 to MMD 2.8. Therefore the new DLL-based delay of 2ns is used
> > and then as little as possibly subtracted from that so we get more
> > accurate delay. This is actually needed because the i.MX6 SoC has
> > an asynchron skew on TXC from -100ps to 900ps, to get all RGMII
> > values within spec.
> > 
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > 
> > ---
> > 
> >  arch/arm/mach-imx/mach-imx6q.c | 37
> > ++++++++++++++++++++++++++++++++++
> >  1 file changed, 37 insertions(+)
> > 
> > diff --git a/arch/arm/mach-imx/mach-imx6q.c b/arch/arm/mach-
> > imx/mach-imx6q.c
> > index edd26e0ffeec..8ae5f2fa33e2 100644
> > --- a/arch/arm/mach-imx/mach-imx6q.c
> > +++ b/arch/arm/mach-imx/mach-imx6q.c
> > @@ -61,6 +61,14 @@ static void mmd_write_reg(struct phy_device *dev,
> > int device, int reg, int val)
> >  	phy_write(dev, 0x0e, val);
> >  }
> >  
> > +static int mmd_read_reg(struct phy_device *dev, int device, int
> > reg)
> > +{
> > +	phy_write(dev, 0x0d, device);
> > +	phy_write(dev, 0x0e, reg);
> > +	phy_write(dev, 0x0d, (1 << 14) | device);
> > +	return phy_read(dev, 0x0e);
> > +}
> 
> These look like the standard MII MMD registers, and it also looks like
> you're reinventing phy_read_mmd() - but badly due to lack of locking.
> 
> I guess you need this because phy_read_mmd() may be modular - maybe
> we should arrange for the accessors to be separately buildable into
> the kernel, so that such fixups can stop badly reinventing the wheel?

Yes, I did that because of two reasons:
1. I tried phy_read_mmd() and phy_write_mmd() but this panic'd
2. There is already mmd_write_reg in that code so I thought it would be
no big deal to also have a read in there.

But yeah, you're right that mmd_write_reg is from 2013...

How do you suggest to implement that?

Philippe
> 
> > +
> >  static int ksz9031rn_phy_fixup(struct phy_device *dev)
> >  {
> >  	/*
> > @@ -74,6 +82,33 @@ static int ksz9031rn_phy_fixup(struct phy_device
> > *dev)
> >  	return 0;
> >  }
> >  
> > +#define KSZ9131_RXTXDLL_BYPASS	12
> > +
> > +static int ksz9131rn_phy_fixup(struct phy_device *dev)
> > +{
> > +	int tmp;
> > +
> > +	tmp = mmd_read_reg(dev, 2, 0x4c);
> > +	/* disable rxdll bypass (enable 2ns skew delay on RXC) */
> > +	tmp &= ~(1 << KSZ9131_RXTXDLL_BYPASS);
> > +	mmd_write_reg(dev, 2, 0x4c, tmp);
> > +
> > +	tmp = mmd_read_reg(dev, 2, 0x4d);
> > +	/* disable txdll bypass (enable 2ns skew delay on TXC) */
> > +	tmp &= ~(1 << KSZ9131_RXTXDLL_BYPASS);
> > +	mmd_write_reg(dev, 2, 0x4d, tmp);
> > +
> > +	/*
> > +	 * Subtract ~0.6ns from txdll = ~1.4ns delay.
> > +	 * leave RXC path untouched
> > +	 */
> > +	mmd_write_reg(dev, 2, 4, 0x007d);
> > +	mmd_write_reg(dev, 2, 6, 0xdddd);
> > +	mmd_write_reg(dev, 2, 8, 0x0007);
> > +
> > +	return 0;
> > +}
> > +
> >  /*
> >   * fixup for PLX PEX8909 bridge to configure GPIO1-7 as output High
> >   * as they are used for slots1-7 PERST#
> > @@ -167,6 +202,8 @@ static void __init imx6q_enet_phy_init(void)
> >  				ksz9021rn_phy_fixup);
> >  		phy_register_fixup_for_uid(PHY_ID_KSZ9031,
> > MICREL_PHY_ID_MASK,
> >  				ksz9031rn_phy_fixup);
> > +		phy_register_fixup_for_uid(PHY_ID_KSZ9131,
> > MICREL_PHY_ID_MASK,
> > +				ksz9131rn_phy_fixup);
> >  		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffef,
> >  				ar8031_phy_fixup);
> >  		phy_register_fixup_for_uid(PHY_ID_AR8035, 0xffffffef,
> > -- 
> > 2.25.1
> > 
> > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
