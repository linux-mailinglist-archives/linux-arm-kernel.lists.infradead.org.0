Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC3717B98D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 10:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqXeLIE0rcaelZRPoCXtZzlP91nkUJToEu5s4+fCPs8=; b=rJ2DeUqO3WHNmr
	exCgL/9Hfp4cXf+rhdAvQkin+tOkExVjwAm2utA54owXZ6t4P+wQfDBUcROnigYeJIHrA8AGKnLTP
	CbBq4c1wBZeI20zRTCfy6exV/uNXAuj7gVCFpKRxs5nFedl07dRDTpsdtpTilpjfR6EdrorZqPEYv
	hdIyB1dqi/obiinV9sfXtLUtMoZLSE04QEnjHRuymfHnencRxdMeTSDX8PlXa/SOh+NFXZ1MdvTe0
	M6b6Q0bSvn91m/Y6Wj4xYQWM+6ddU+UNe29W0w8bEYbPmJaXqhuCdJN0uqTpFqQGCodsg1UC8oVdq
	hx5QGR6DzeeDgzjIF4pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9ZJ-000431-6s; Fri, 06 Mar 2020 09:46:57 +0000
Received: from mail-eopbgr60095.outbound.protection.outlook.com ([40.107.6.95]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9ZB-00042d-1g
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 09:46:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MnvPHQawvoKpPfFLdx6UO8tcu1B7k8wkKbwp5LfFJ6pzCrTBkJBFRfTrvJON2Q+K86abXubf/UhOhpE0t84hgsJP5HnDqtatZMh913KGAob0Fmoc0sFkkMOPYhHiBvz+h/39MNi19gOnc3nVUlkzUPCkMgw8FrDkaHXk21oBvQ8ipS2876OyZ21HTIVjLs6AggCKJZQcUN4B6IU0e4CMbdOkZwo+RcVtxG6CaMT8xMgonHixAx21uayHFGnT2rUTtmq61d2HzmLzojvz73+5w+Yh0RBzCFZbSxDsCiP9Z7Pq5hikHZ1sLkB19wfTVnP2Vvcx7AQiSvxvEWbkFi4Ruw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2rScmlI4XLMvsemQZCdFFeyxskqmFoeXVwn/W+wdJPY=;
 b=PjFoKreK3m7uVCZ9D5eai9ccLiEoU9T1n6r52qtCEtmEfbwKigs7q2nIAm34HgqXqpCaeaSIa5x8ptcak1yGSnW+93epAVIi0679G0ND6ffsMZ/TSBwRrNBpAGmexGknsaK0xoqyoRyoTU5MigvPU/tp7vR0uGTI1yA5B0g3AMIPJaRhV2z1GZzj5LEOJUavXo9zx22Jj/LJzYortnheD/v0/vu/0FjK1Pgw38vOO0byUxGkFoX2ZkiVki0WOd7eMy64mGPmbd0Mcc/gtoor1imNXttDoVQ3Wg51pmemBpcGioELDH1WCbqUjNxKD5pEAZbF0SoD4+UoEc80DXV8SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2rScmlI4XLMvsemQZCdFFeyxskqmFoeXVwn/W+wdJPY=;
 b=dtRSM8fwFjdTYsU7ADEzd9L1JR3FGRV7aXWCG34I42Y1HLrQvq0zX2heDR1t3hoGLp0TK+99W3b+URKkuEyvFpilR/nURKZrTanLLqrR7JgkQYCDOY8A0VHcVx9VUr8SgmS28NEbPDoJYBqVMN7SueYCWlW4cPzoxYVLJ7sAkiM=
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (20.179.1.217) by
 AM6PR05MB6102.eurprd05.prod.outlook.com (20.179.3.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.19; Fri, 6 Mar 2020 09:46:45 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e%4]) with mapi id 15.20.2772.019; Fri, 6 Mar 2020
 09:46:45 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>,
 "a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>, "andrew@lunn.ch"
 <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Thread-Topic: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Thread-Index: AQHV8vTsfP1BktnxKEy+q0EhrXMNZqg6EXKAgAAlWYCAAPjzgIAAIqIA
Date: Fri, 6 Mar 2020 09:46:45 +0000
Message-ID: <4e48d56f184ed56d15d2ae6706fdb29e4c849132.camel@toradex.com>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
 <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
 <20200305165145.GA25183@lunn.ch>
 <7191ffe6-642a-477c-ec37-e37dc9be4bf8@pengutronix.de>
In-Reply-To: <7191ffe6-642a-477c-ec37-e37dc9be4bf8@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [31.10.206.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e8547b2-3274-4ff8-d117-08d7c1b34866
x-ms-traffictypediagnostic: AM6PR05MB6102:
x-microsoft-antispam-prvs: <AM6PR05MB6102DC9C9F3EC5172D52D598F4E30@AM6PR05MB6102.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0334223192
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(396003)(39850400004)(136003)(366004)(189003)(199004)(76116006)(44832011)(6512007)(4326008)(110136005)(2616005)(54906003)(71200400001)(66446008)(36756003)(91956017)(64756008)(66556008)(86362001)(316002)(66946007)(66476007)(81156014)(81166006)(8676002)(5660300002)(26005)(7416002)(186003)(6486002)(478600001)(2906002)(53546011)(8936002)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR05MB6102;
 H:AM6PR05MB6120.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OLiLrTzjFXNd9HcY8W11u+V4bk0J9+VSvGvPfIUjy1iwzzEOsRAAbv9oOyEnHqw6WSacenvXYDjqXI/AYwWBLjco11PdmrtiZPVuZeudCx+YEgfBJjNGoxvzelrlVV7jHerpN5D2sQ+kLG2GnV40V9LlROWBDc8GCsaVleDOl8zs84hCJKJJGDqRe0Og0qV1nH19iS6abP2FmaxOUr6LX9jSAnZ1uydDP+Hjjjp42O3DpkFG/h5JgeLCjU2GtcJEOc+xzNaxZVPtGZE6oOG0/bihDb/2V9PdrDoTTUohv1RrdD0AL96mIzfqEYK52n+UWZhjH0S9omWufz5b8xS202ZUr4MZr7RrJWZikXsfhyJfn2OZ92J+lRvBZxQLfPRBgxNECgjUmc5fISFdbkuSDmn87fDFHiYQ0qVwTKv//0x2lXuWs3e5mdtVIISm7uD3
x-ms-exchange-antispam-messagedata: 4Z+pr5U7LjrJZoKwpQj1+ZV7Ow1sSxB678Gh3wD83hwVlePCejCRie62NbrShkdOtg3OLdmHzQJq9bKUL/rVjTAWD46yYMAWvfUQa9ykw6wsIq0pO7Bo/DDlXICF4v4R+GyR5IZNKOmeGYyrYy6Gxw==
x-ms-exchange-transport-forked: True
Content-ID: <06986D4805B93044B50C2EA22F62AB35@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e8547b2-3274-4ff8-d117-08d7c1b34866
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2020 09:46:45.2829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Oqwb/ZYa33gEpRA8FTnN13WZtvPp4qlhYV5/+KyulWvmQE/GlZr3XlDVVvaL1G50/TAj6uwBwa/lgnV48Rv1/lqvYpoy7GcZsMGAqB+gnCo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_014649_182406_BDDBF817 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.95 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-03-06 at 08:42 +0100, Ahmad Fatoum wrote:
> Hello Andrew,
> 
> On 3/5/20 5:51 PM, Andrew Lunn wrote:
> > On Thu, Mar 05, 2020 at 03:38:05PM +0100, Oleksij Rempel wrote:
> > > Hi Philippe,
> > > 
> > > On Thu, Mar 05, 2020 at 02:49:28PM +0100, Philippe Schenker wrote:
> > > > The MAC of the i.MX6 SoC is compliant with RGMII v1.3. The
> > > > KSZ9131 PHY
> > > > is like KSZ9031 adhering to RGMII v2.0 specification. This means
> > > > the
> > > > MAC should provide a delay to the TXC line. Because the i.MX6
> > > > MAC does
> > > > not provide this delay this has to be done in the PHY.
> > > > 
> > > > This patch adds by default ~1.6ns delay to the TXC line. This
> > > > should
> > > > be good for all boards that have the RGMII signals routed with
> > > > the
> > > > same length.
> > > > 
> > > > The KSZ9131 has relatively high tolerances on skew registers
> > > > from
> > > > MMD 2.4 to MMD 2.8. Therefore the new DLL-based delay of 2ns is
> > > > used
> > > > and then as little as possibly subtracted from that so we get
> > > > more
> > > > accurate delay. This is actually needed because the i.MX6 SoC
> > > > has
> > > > an asynchron skew on TXC from -100ps to 900ps, to get all RGMII
> > > > values within spec.
> > > 
> > > This configuration has nothing to do in mach-imx/* It belongs to
> > > the
> > > board devicetree. Please see DT binding documentation for needed
> > > properties:
> > > Documentation/devicetree/bindings/net/micrel-ksz90x1.txt
> > 
> > It probably does not even need that. Just
> > 
> > phy-mode = <rgmii-txid>
> 
> Looks to me like this isn't supported by the Micrel PHY driver or am
> I missing something?
> 
> Cheers
> Ahmad
> 
Hi Andrew and Ahmad, thanks for your comments. I totally forgot about
those more specific phy-modes. But just because none of our driver
supports that. Either the i.MX6 fec-driver as well as the micrel.c PHY
driver supports this tags.

What do you guys suggest then how I should implement that skew stuff?

The problem is that i.MX6 has an asynchronic skew of -100 to 900ps only
enabling the PHY-delay on TXC and RXC is not in all cases within the
RGMII timing specs. That's why I implemented this 'weird' numbers.

Philippe
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
