Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E68D6198DEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRmXPnwjsmvcDxCNp1jSz5jR2bX+YfvQaroo+YkYOkc=; b=apcRzt2ELqSViK
	3pFwdB3/6pfm6SZC1jk5/0y10fwKACSaqMls5qIcX0ttayKhxQSu5dXckBph8FpVIuVLpRkWpkB7R
	z4cKjTxQCG4v21Rqqnvi4KfSx2GsC8+sM0BSAQw8XLyCeLmoyVLq6MlzCJR5gWV7X0lYS3/hg/RfO
	KY0wYqmb1YinVV32iD+aBdEdYycULwzvrleLX/Xdii7fuPeVHaji9RwI3YJe0X0GtRXIKlDtI8bfo
	aqBqHkkmq5yVuM6j6RKJroMgmEwB9HeBmIQzEdGhWDiGxhN1iTy1MA5O5PGyAEkHteuC38zsCwG8y
	Y8CWlCuey2kpA8kBplzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJBun-0005Rk-AT; Tue, 31 Mar 2020 08:06:29 +0000
Received: from mail-am6eur05on2128.outbound.protection.outlook.com
 ([40.107.22.128] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBud-0005QE-EE
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 08:06:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G+telTbKqllpyrgoCI4OMEAhccJMZ4axD/+zpqfSUObWOlzDGkWhC/8hDVeOs4E4ZfdsdY2r/0aMdrZlN0oo8p+/2e8Pd24/vp83CMhy56DGAKCbX1GHDh1CqvxYLhj3UVYDt9vP7KLZRtWZjNgieDOgNEkWn+oZ3ORbOIysqdKskVuX+HcO3u2yuWYpUTOij7Y4+0VG65Hu1SX7tjqgQTlm2PsBl8lCuooJkMeZBnibtXeNg4JJjrGtDcy39hZj4LL8gtlATE/zM8YHiJZaVb19sVINnqD+SbmkwrFVISLNzvBsn4j/lTfuJWJDvVeOe345fZwkVg9jTZai2RPKiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wVPoFZXqlypcWl3kUsmEWYRrtohiVVJ5clzuQ44ZtyQ=;
 b=oe9qADdlqkdIQ9loEHt7LNBo6kZRLvqnAJyv5TZalPFSWsc9ldRelOah8DykNTzkfTAF6ObVlRj60GxYXP4jGCF4291l+IE5ztH39amHWoEmtlupTyHnCTwOSEGxbuYXWwAbZFiSR0zAyPSxxYI8o5fWNY2+kK3Lc6z6zL7gP70tgwDe8aptJeZH1b7VBm8W6bnPpAtT3aANSZz6o3yIUeyOy+c0kGMB3WMp4g7qqzjGeua0CdQm7MLwJB1En4b8X7QQGzOorugn9tkuxCdOLvxIi1s3rRtrKlaZON8flXZRaDQl651EcVykwrQBPKBoKunZXwliDR5XqqMSLt5wpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wVPoFZXqlypcWl3kUsmEWYRrtohiVVJ5clzuQ44ZtyQ=;
 b=U6qvL4Gfk/9iROlL3ZPtQgLdUlTh2wINxBntf9Pr/T02OkDOpe4GbRuqrWqRqq3w+Xb1bJ3ZDKh+d/CTA0YsE+yB9FNBnQ+4Hi21KzRyNxs/fKmzAJEs44bkA8kJCfwXwVm6gXwYgTIrlp3mFS7VfSIhJD2f+rSeRh4U8G/kF2M=
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (20.179.1.217) by
 AM6PR05MB4984.eurprd05.prod.outlook.com (20.177.33.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Tue, 31 Mar 2020 08:06:06 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::44ad:bee7:b765:b9c7]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::44ad:bee7:b765:b9c7%7]) with mapi id 15.20.2856.019; Tue, 31 Mar 2020
 08:06:06 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: Re: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
Thread-Topic: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
Thread-Index: AQHWBbntSLyiDNa7b0653TZgcLvty6hfrHgAgADvhoCAAMsVgIAAAkoAgADxpAA=
Date: Tue, 31 Mar 2020 08:06:06 +0000
Message-ID: <159af8d57eff3ed93adff62b88adebd2a17c95b0.camel@toradex.com>
References: <20200329110457.4113-1-o.rempel@pengutronix.de>
 <20200329150854.GA31812@lunn.ch>
 <20200330052611.2bgu7x4nmimf7pru@pengutronix.de>
 <40209d08-4acb-75c5-1766-6d39bb826ff9@gmail.com>
 <20200330174114.GG25745@shell.armlinux.org.uk>
In-Reply-To: <20200330174114.GG25745@shell.armlinux.org.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.0 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [51.154.7.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59962960-8ca4-4b8c-986b-08d7d54a5d7f
x-ms-traffictypediagnostic: AM6PR05MB4984:
x-microsoft-antispam-prvs: <AM6PR05MB49845E6057CBC01903254FF7F4C80@AM6PR05MB4984.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0359162B6D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR05MB6120.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(396003)(346002)(376002)(366004)(39850400004)(26005)(6506007)(186003)(53546011)(81156014)(71200400001)(91956017)(66946007)(66446008)(66556008)(66476007)(76116006)(86362001)(64756008)(110136005)(54906003)(4326008)(5660300002)(316002)(6486002)(36756003)(44832011)(478600001)(2906002)(2616005)(8936002)(81166006)(6512007)(7416002)(8676002);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WbXcuiH6f3dvQVcQErr6gZ/VEt+qu8eqkVLOwvrOFGcDBaQp7fNP7TRyY0atp/mIBfRVy0M7SX8jgK9yHWgv14mKQWUMeKE00GV0teZC3fr14x5vUAgkABRn+40R17K1Pj4neakUxc3R5Okervv3qBHQCY4stL4uD3R2+EBoERqzn/NmsJspM0OyW7pzpmo3zJwJBqUO8EIhrDr6waltkKlExKt1U4JcVBCUOd6SQy8/EX5YS9IxdB0sjchu+HfXSAXsvzEggSYGuW87G6t1iffvENhqKWdlAtkGYFST6CiCi9dGp2xJMVc+FzWAQcZ+l1AcK7NvqTB2xJ9iJ+a7N03aytcZk5c2k4XbfHgMUxnUDybWkqCJMySYkU/mGkkBGXlPYnQoDW7LRsUIkP3qU37kuuTDO+co6/7QqsS9ySe6Z5MJPjZQ9BeB0Jv3exiP
x-ms-exchange-antispam-messagedata: m5Z08HAgPB9tdCY2kpjealqL3vHU6oLluGms09qM3MCXGSWVpva4xdBN2NQhZ0VA+5zvdn5LFlgCxrkHwvQDrSffQH+0+CcgxVDgik1rsI39uIW5vGGMieGb8Wfh+kfFoyy0dM02bjU2K8GinfNqRw==
x-ms-exchange-transport-forked: True
Content-ID: <877492ABA595604784012E97A128F92C@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59962960-8ca4-4b8c-986b-08d7d54a5d7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2020 08:06:06.8644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 67FCEtB0LtFnJCdFWi6Prn0FJxN/kK+TF44Pa5pcFCrEjQIR1WmmQbe8aZksfiQHC+TYlHvhS18HfLxY7zYWOwiqpXYEmEbneBZVoRynKMQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB4984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_010619_481846_D20C228D 
X-CRM114-Status: GOOD (  24.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.128 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "david@protonic.nl" <david@protonic.nl>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-03-30 at 18:41 +0100, Russell King - ARM Linux admin wrote:
> On Mon, Mar 30, 2020 at 10:33:03AM -0700, Florian Fainelli wrote:
> > 
> > On 3/29/2020 10:26 PM, Oleksij Rempel wrote:
> > > Hi Andrew,
> > > 
> > > On Sun, Mar 29, 2020 at 05:08:54PM +0200, Andrew Lunn wrote:
> > > > On Sun, Mar 29, 2020 at 01:04:57PM +0200, Oleksij Rempel wrote:
> > > > 
> > > > Hi Oleksij
> > > > 
> > > > > +config DEPRECATED_PHY_FIXUPS
> > > > > +	bool "Enable deprecated PHY fixups"
> > > > > +	default y
> > > > > +	---help---
> > > > > +	  In the early days it was common practice to configure
> > > > > PHYs by adding a
> > > > > +	  phy_register_fixup*() in the machine code. This
> > > > > practice turned out to
> > > > > +	  be potentially dangerous, because:
> > > > > +	  - it affects all PHYs in the system
> > > > > +	  - these register changes are usually not preserved
> > > > > during PHY reset
> > > > > +	    or suspend/resume cycle.
> > > > > +	  - it complicates debugging, since these configuration
> > > > > changes were not
> > > > > +	    done by the actual PHY driver.
> > > > > +	  This option allows to disable all fixups which are
> > > > > identified as
> > > > > +	  potentially harmful and give the developers a chance
> > > > > to implement the
> > > > > +	  proper configuration via the device tree (e.g.: phy-
> > > > > mode) and/or the
> > > > > +	  related PHY drivers.
> > > > 
> > > > This appears to be an IMX only problem. Everybody else seems to
> > > > of got
> > > > this right. There is no need to bother everybody with this new
> > > > option. Please put this in arch/arm/mach-mxs/Kconfig and have
> > > > IMX in
> > > > the name.
> > > 
> > > Actually, all fixups seems to do wring thing:
> > > arch/arm/mach-davinci/board-dm644x-evm.c:915:		phy_regi
> > > ster_fixup_for_uid(LXT971_PHY_ID, LXT971_PHY_MASK,
> > > 
> > > Increased MII drive strength. Should be probably enabled by the
> > > PHY
> > > driver.
> > > 
> > > arch/arm/mach-imx/mach-imx6q.c:167:		phy_register_fix
> > > up_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
> > > arch/arm/mach-imx/mach-imx6q.c:169:		phy_register_fix
> > > up_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
> > > arch/arm/mach-imx/mach-imx6q.c:171:		phy_register_fix
> > > up_for_uid(PHY_ID_AR8031, 0xffffffef,
> > > arch/arm/mach-imx/mach-imx6q.c:173:		phy_register_fix
> > > up_for_uid(PHY_ID_AR8035, 0xffffffef,
> 
> As far as I'm concerned, the AR8035 fixup is there with good reason.
> It's not just "random" but is required to make the AR8035 usable with
> the iMX6 SoCs.  Not because of a board level thing, but because it's
> required for the AR8035 to be usable with an iMX6 SoC.
> 
> So, having it registered by the iMX6 SoC code is entirely logical and
> correct.
> 
> That's likely true of the AR8031 situation as well.
> 
> I can't speak for any of the others.

I can speak for the KSZ9031/KSZ9021 for those PHYs the fixup is solely
to add the TXC delay that, according to RGMII v1.3 spec should have been
done by hardware, and as i.MX6 as well as those PHYs do not have a
specific register to add that delay, the skew get set so the timing is
working somehow with the i.MX6 processor.

I'm fine when you want to remove those fixups. Please CC me because
we're relying on those at the moment. I would just put them into
devicetree.

Philippe
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
