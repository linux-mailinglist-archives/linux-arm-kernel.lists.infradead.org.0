Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AC017B9A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 10:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oiP8V1NWnRcSj8akv4OtoN+NeMCWiA4Q6GZpDyqHeJ4=; b=QGp1qwYwD5xBGA
	l08DPpBcvCF8Hial1wFid8h/cQMWyxLZa3glnGu3KXxLT5yz6apm6XCSLR9Le1dTPe6cj/xxuKjlo
	bL+X1t3yNRziWU3yY6W1bU+H6hRjRKXhzIIkz9qLTUgzmh4WRZ27Z1FUFZJ0yvcgLgyK9rBuG4HDQ
	dUw6WYP8ANTzur29cWXoNohRknpVAN4lQghlojPJQCG2lQt1Dqgjidt5UHAgB1LpUVd+tsHIbEgo9
	FcxSHzfxmhhD7AoFFJGhTEWrz2+S8hCyCASi79UGNW4XwjZB8lZRytbga5NiZuvZMSL/sEfefrd9K
	I7jANnoKAq2eLjFmmZmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9hN-0007Li-Mf; Fri, 06 Mar 2020 09:55:17 +0000
Received: from mail-eopbgr20115.outbound.protection.outlook.com
 ([40.107.2.115] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9hF-000714-5G
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 09:55:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nYdzMG1iFOhkAloxfPNJDiH2ns6BtuvjuppQHsYsqTWGc3/JBzr19DLHLVjEyhfO0usS3iYPnePi1QffwX4EsUOp/e8V7xIGq427zCfy8FuRvS4IptW4b17ghFC9M/+u/xUSX/AC8XTekx4fSg135VkwrPFVGuoi8zU6iU32CGYrJtB9zJgVYQO2sRh1RPdjiHbuL64bE9sP5+hy8/uf+kCAPdqGs5XaJ116iTdSjD0nNp/IjbTCHsZwe9/6KvWXeq/TOjp0fCIIa+Tvd2lzdDN5KGbygHzB+NyAHvA1CcutFL9tNocKeEX2pvneRLWrs+9V/Qwmr9Tk5W1Jkdk7sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9jLgIFH5HWbHzi6vSoNmqSsFnmdBLqxeD5Zx8BL/MbM=;
 b=cnEmGwlIymK8RqdbmorpKxl1C56wd521Rdg4mXck5atwxSzg7kLcDdAlXUpNqxifstaig+nn0Kv0wCz72d8KhK7eD0th4E3VEQ+O425m8m32LXzHV0j3JKrwiEEfPuuuR1lWIp/N8yLTA9vCZ0N8ELTeEyznM2mHXfEsxB92JzKez7er1NkyLJ88vHkoS0CWbqiiCenigDTsIWG0wliRZ1u+zPhb6KaUmrQNfyUvhlmSNHf8yN7LbKXwK7U8OsnJuDY1Ubmdo44gglRvV1iMQAAVZ+bmja9LdPd2wdu/VaDRzuPdUyKFct+Mh8TSuL0yLQTC7Z1PS64Ol/d0VNujQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9jLgIFH5HWbHzi6vSoNmqSsFnmdBLqxeD5Zx8BL/MbM=;
 b=Nk0Bdh9FpeG9mX7Bbec9JediwI8PCQ6EHc0zxFJfeEsruIN9XSbamLb+CST0qPUiXDZ67CqyZdTmCL3rVQJbuPBgBYH0q8RR1eMnLnXdPsM33Ea4Z6/eJ/uFtFjBvYAE6ZkkjqwSOBjfOWqgePUZcViWXjIdRWGJko+UkMcJFs4=
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (20.179.1.217) by
 AM6PR05MB6102.eurprd05.prod.outlook.com (20.179.3.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.19; Fri, 6 Mar 2020 09:55:06 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e%4]) with mapi id 15.20.2772.019; Fri, 6 Mar 2020
 09:55:06 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Thread-Topic: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Thread-Index: AQHV8vTsfP1BktnxKEy+q0EhrXMNZqg6EXKAgAFDQ4A=
Date: Fri, 6 Mar 2020 09:55:06 +0000
Message-ID: <240b86a0aa76ac1f1d3948fc3089e3d13266f4b1.camel@toradex.com>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
 <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
In-Reply-To: <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [31.10.206.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 08422c7a-18b2-498c-c7f2-08d7c1b472fb
x-ms-traffictypediagnostic: AM6PR05MB6102:
x-microsoft-antispam-prvs: <AM6PR05MB6102EF0B1A1E072799BE5FC0F4E30@AM6PR05MB6102.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0334223192
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(396003)(39850400004)(136003)(366004)(189003)(199004)(76116006)(44832011)(6512007)(4326008)(2616005)(54906003)(71200400001)(66446008)(36756003)(91956017)(64756008)(66556008)(86362001)(316002)(66946007)(66476007)(81156014)(81166006)(8676002)(5660300002)(26005)(7416002)(186003)(6486002)(478600001)(2906002)(6916009)(8936002)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR05MB6102;
 H:AM6PR05MB6120.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lZWldYLqaQduhL8o6NoXTWDcI2Tzcw3r9GTQDWaLaL2cKmiHS9fhGTWNKylp720ijho77957ltTmybwP5eSvO5l0u1nrcQ2PPFaG9LmKRbOlhojT+GWzLd85fFEBkTl+sI3Oabej3pXB0l7QgAuMnnBYCcaQZ04sKlzn70R0CwrxxkZ1+7178RgPuX4msKOSkRfmZDXs9TwRZ4edlwnn9aL+jOeR3evFilj0OOMz8Q7LyzxDm98fDCcfIb+A0wFuVjvQZUnJDjH+20U5Ul0mi5B+8+QzfkB58h91zEDVHNhU34wzPrpIaiRbtdWry+jYzgl1dHqWvDm8xk0a0/mQNWDxqjrVrPgv1VhCAgWqlZqfxFr5DiiLnoewzoLawfPHYGOrooS0EZx2JmrdsCxh6mGTQvHThmR2ptGvAfXNyUVrRd6aTzQPy3r3hOEYhsJ4
x-ms-exchange-antispam-messagedata: BTYrzSINbnj5jPX7tFJQKWAdnQ048bCKNmxPfRRO0ihZTXKSj2qcSKAAiRPgTNRDxNrIaxG73sg24Ptw0KSP38113S3kPaJfkKf5APrpUjKVH7Um7LmtBvqLtqPxbc+OoElaHgF41WHyiL9x+MnEJg==
x-ms-exchange-transport-forked: True
Content-ID: <CFCE055C63299E45AD1CD8A9714B53D6@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08422c7a-18b2-498c-c7f2-08d7c1b472fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2020 09:55:06.2772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tn4w7mw9I/berCOzBh/zQK0LeyatqEKiLttxJ7650nCNS5oeHPapcXhQfpgyBGYGddbUNf/ajq61ymddfppShfDn2KGBHOxzRBfFbS6nvmw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_015509_208304_5B0C61F7 
X-CRM114-Status: GOOD (  29.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.115 listed in list.dnswl.org]
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
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
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

On Thu, 2020-03-05 at 15:38 +0100, Oleksij Rempel wrote:
> Hi Philippe,
> 
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

Hi Oleksij! Thanks for your comments and review.
> 
> This configuration has nothing to do in mach-imx/* It belongs to the
> board devicetree. Please see DT binding documentation for needed
> properties:
> Documentation/devicetree/bindings/net/micrel-ksz90x1.txt

I know that nowadays this stuff only belongs in the devicetree. I fully
agree with you. I am also aware of the devicetree bindings.
> 
> All of this mach-imx fixups are evil and should be removed or disabled
> by Kconfig
> option. Since they will run on all i.MX based boards even if this PHY
> are
> connected to some switch and not connected to the FEC directly.
> And.. If driver didn't made this configuration all this changes will
> be lost on
> suspend/resume cycle or on PHY reset.

I am also aware of this behaviour. But the i.MX6 is a SoC used in
embedded applications and I guess no one comes and plugs in a PCIe MAC
card in an embedded device. But yes you're right you never know.

Because the i.MX6 is an embedded processor I still think we should place
that fixup in mach-imx. There is already a fixup for the predecessor
KSZ9031 in that code. The KSZ9131 is pin-compatible with KSZ9031 and
also software compatible, just not with the skew settings.

I really dislike reinventing the weel here for an old SoC.

Philippe
> 
> Regards,
> Oleksij
> 
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
> > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
