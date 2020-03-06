Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5491A17C300
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 17:31:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OEyPNekGPLLt93Oe1leune1HONILF9MFSV+m5WsEFRg=; b=kQxOG8gmY35Fwq
	GUE58bZUvBmvXEjYAjXmVn4EPTP07wrN2rvyuTNnzFpy8DsLjRQCuQiTWyAQk3jJDa60772h8Q+cE
	9UG2cH4Ia97GSxAPJNxdKdckgWFH+pLvqVxdTZ3AAg1u3EEGXHPcwYGZkNiiuK1e6Skr3IdiriWjZ
	HoaSZBATQdW7pW/vzEyXZdbuAyC7vIWIJZqTzApGOxz0o9HQbPTx2sxQ3g9wibwIFcezc+c9eQi4l
	8vU1js8fHXQe3Q625WnWvojlBNo1OyJY4B3HbFN2pnuiR+lDqpGGyMiVvIQppncPJO4XT5fzskS+I
	0iQkKPUbaoQmeOv4GAIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAFsO-0006pP-LQ; Fri, 06 Mar 2020 16:31:04 +0000
Received: from mail-eopbgr00123.outbound.protection.outlook.com
 ([40.107.0.123] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAFs8-0006Tj-MY
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 16:30:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k5aIJNa4jgmTybSxfJ8kN2MJzrQieaUmRpOUzH6uwsx8KJPuAuf3Zat4sKcQtr5iSwresrohf7pROYVM/YZrc1DAY9hST6Rx6q1YnhuxEcwwSfaYDCxtpPP0Zub/DHtbV25xH6p04tMy08Y5ErmOPISgj60z4mgxmZoDlzBfOhXoZvrYcMAvRxgka9ja31oMHA1NSislqItr8W+jumDujsYPlCAG17JvLoqQR3IInQ9axp1cntpRBv7Vv6exfDqmzSdK5fVk4ikzHAfvaUdzZuqmIG69tkIDVJwBpY3BSZCPFvNKOfCkj2zaqcTq8myqm8gpGAdhQPcGoAzuprs4GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AB0RhFgI4t4x5kuSBsFBZgGBO6WuEBL5DdqmhjNotfQ=;
 b=RItKnctkUgLo/y/5dixw4rUTJ/vheqVemp1RrbXH8QIu2XltUnlahbgMq7evYk//q5lp5vON3Br8Um36jReV1XFPoOl8NpWNkyZoZpJpQEC0en1BeY5geac7wkXckWqKVaElPg916YZFNcj/1uEB8nc7tX4XaHeZu9PDNd86BK9L/0bItssg9lQ0eJuzNlkUy+SRF3amxLkalObgrEvV4q+o9ReNnOQ32zDEGzm58MaaG0XfAbegWjABzHiRzh3iS2W/4kO4OCA9Wi1S7+HpmJgLVLBk3pfBPwMg3iArwYalPf1HuDsU1zfJX8XG6tGw5aaVqBiYRIS+ChoNfTvM8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AB0RhFgI4t4x5kuSBsFBZgGBO6WuEBL5DdqmhjNotfQ=;
 b=l620lAHQ7CFoBBHzVGfupUml+OTi9pOh/e1WIdLcKOna4gVNolCFDF+fpsKszquGTZUPJjmkKCGhWc5/mxUiZWgwABC7flYxn8hp6pJFXA+lFsiLoVhNHH45HPXzPT6BtNnLqtTQ/BWC1U6sGfG7mV6bBwTrwCOMFsB9/KMpJiw=
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (20.179.1.217) by
 AM6PR05MB4389.eurprd05.prod.outlook.com (52.135.160.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Fri, 6 Mar 2020 16:30:37 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e%4]) with mapi id 15.20.2772.019; Fri, 6 Mar 2020
 16:30:37 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>, "andrew@lunn.ch"
 <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Thread-Topic: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Thread-Index: AQHV8vTsfP1BktnxKEy+q0EhrXMNZqg6EXKAgAAlWYCAAPjzgIAAY3kAgAAwAAA=
Date: Fri, 6 Mar 2020 16:30:37 +0000
Message-ID: <a1a966cb14641dc33647750cfa2f7fa1fde6e47b.camel@toradex.com>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
 <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
 <20200305165145.GA25183@lunn.ch>
 <7191ffe6-642a-477c-ec37-e37dc9be4bf8@pengutronix.de>
 <20200306133848.GB18310@lunn.ch>
In-Reply-To: <20200306133848.GB18310@lunn.ch>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [31.10.206.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57cbdc44-8243-4125-b123-08d7c1ebb3be
x-ms-traffictypediagnostic: AM6PR05MB4389:
x-microsoft-antispam-prvs: <AM6PR05MB43898C3E5F2CA245166903C8F4E30@AM6PR05MB4389.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0334223192
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39850400004)(136003)(366004)(346002)(376002)(189003)(199004)(5660300002)(110136005)(8936002)(81156014)(54906003)(8676002)(81166006)(6486002)(71200400001)(6512007)(316002)(7416002)(186003)(2906002)(44832011)(2616005)(26005)(478600001)(66946007)(6506007)(4326008)(86362001)(91956017)(76116006)(64756008)(36756003)(66446008)(66476007)(66556008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR05MB4389;
 H:AM6PR05MB6120.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PlX9aTnTei6MNEI7x3bley79UgrEB7BAUG8evtr1rE5nk2XPK30bN83yEKqYDElhADO5TMTD25cANnQHob5T1WwJL8ybZwI/b8I9Hldkkssxc6AAZ3+S2zpFCjDk9Fiy5TZO90hqf03gjoA1NzCs7rPmMPi4rz0ZKx3f3jHSS38yk0lgIFrvjaM/aLypqg21snIvTUb944HoOr1bRZW4thJ8bWFF+ZmmBD3YA4iGj97smZ37eCcuXzj+dHxYM5rw/u83g5iORGTHtdd65LI9pLZ2blyYYkg4/BVQzR7hrB4WRScCyS4YbR75L2q8uav53tBaAWVrtm1Zj6p2X0XHiPMEMtaP4ho99zpGNNlQd66i3+ePYFIP1doZAaxIKvNRj/LOEkgmqsInn4Mnrl625KBiJETgawCTV1ofyuIn3K2HAS/EYGLwmZeDmNeSzWCp
x-ms-exchange-antispam-messagedata: qHEHz4klFu9MFA7FLO54mEsQBa1ikqubC9utS59GaP80XhqeRyJDNILmR+rqQd+fUeGSsq8NU4urpY0RUy4/na0QHLJ6M8qrx4I8u3JLT6ftJxNH5Cox1/behs9Hc/YweH3tYVr0ugOkiaNBCTFRiA==
x-ms-exchange-transport-forked: True
Content-ID: <66F9D872AB9D754CA9139BB4119C9A24@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57cbdc44-8243-4125-b123-08d7c1ebb3be
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2020 16:30:37.2119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IHh+lwP4ivRIezr3BqAnBxvyrfDYcCyVXts7ARmi2i6rEBUCMoW+dr6OcwtsMIYyjvyCAaB5DA9+mgqVLyy7odvaJBeUkW4HesCgrj5mqng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB4389
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_083048_770943_0C1ECD73 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.123 listed in list.dnswl.org]
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
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-03-06 at 14:38 +0100, Andrew Lunn wrote:
> > > It probably does not even need that. Just
> > > 
> > > phy-mode = <rgmii-txid>
> > 
> > Looks to me like this isn't supported by the Micrel PHY driver or am
> > I missing something?
> 
> Ah, you are correct. It just has:
> 
>         if (of_node) {
>                 ksz9021_load_values_from_of(phydev, of_node,
>                                     MII_KSZPHY_CLK_CONTROL_PAD_SKEW,
>                                     "txen-skew-ps", "txc-skew-ps",
>                                     "rxdv-skew-ps", "rxc-skew-ps");
>                 ksz9021_load_values_from_of(phydev, of_node,
>                                     MII_KSZPHY_RX_DATA_PAD_SKEW,
>                                     "rxd0-skew-ps", "rxd1-skew-ps",
>                                     "rxd2-skew-ps", "rxd3-skew-ps");
>                 ksz9021_load_values_from_of(phydev, of_node,
>                                     MII_KSZPHY_TX_DATA_PAD_SKEW,
>                                     "txd0-skew-ps", "txd1-skew-ps",
>                                     "txd2-skew-ps", "txd3-skew-ps");
>         }
> 
> and no support for phydev->interface.
> 
> At minimum, you should use these DT properties, not a platform fixup.

As I said, I still think it is a good idea to have similar solutions at
the same place, especially for a successor PHY.

I also see the downsides so I'll go with your proposed solution.

Thanks everyone for the discussion!

Philippe
> 
> If you want to, you can add support for rgmii-id, etc. There are five
> modes you need to support:
> 
>         PHY_INTERFACE_MODE_NA,
>         PHY_INTERFACE_MODE_RGMII,
>         PHY_INTERFACE_MODE_RGMII_ID,
>         PHY_INTERFACE_MODE_RGMII_RXID,
>         PHY_INTERFACE_MODE_RGMII_TXID,
> 
> NA means "don't touch". Leave the RGMII delays alone, as configured by
> hardware default, strapping, bootloader, etc.
> 
> 	 Andrew
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
