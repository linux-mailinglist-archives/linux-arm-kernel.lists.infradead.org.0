Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1A9170802
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:49:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGCyvSYFJCESOW6vspesHF2VSkGGbV0Dy7g+kh9oxXU=; b=T3+9fqSLUYZsiS
	8lF+JEClrZACd/KdOO/QsFD4S4KjiY6dW2/S1d7ZuWVmpf26SyGLw246Rx2utxzajuFxICPbQz+6O
	5x5k0+SVd7CPe/xhdVK5p5DoxBnO+wAcchMxhLnJfDCsZ4FH8t4KfhEgCB2gUZzaS+hy1EESyAatx
	/z8peHkL1ipakkvY+Fs5hSLjYdsKQQHJONv6YAetacfKci4Tyrbomxf/vhfndjW35G19t8DqtnuHu
	v0gUP+CIU9CliN0cprrMO0jI0vI350uHCexa8WcjvRxGIxZY0u1OV01HOKtheKmos8EkJgechUUsT
	O9GbgjmGgPJarvbjdONA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71k7-0006wq-Gl; Wed, 26 Feb 2020 18:49:11 +0000
Received: from mail-vi1eur05on2050.outbound.protection.outlook.com
 ([40.107.21.50] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j71ju-0006vg-9C; Wed, 26 Feb 2020 18:48:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HHYbyzo9CbqJ70o39u/oK2iDC1b3rzLLg0lX6P4Ib1SyXTdAAnlmjZX4667w2vxInhOBH++tPvQCzcNR1VyqUzZ6OBhl+5Hy+v+Qun3BdItdt+X7w2t7SgVhthzA0q0SEJvzkvRiIWZxLuzyABN+ijP8xyM7UNfkDHdVJtKYHS2Bun43/ahoCn0wkfX+AytV4Gel7wvyJ3Ao2AchXRXH/tqFyd8ByA+QCR74zsPfEQEa8OOVlR1Hxnyj+qtXG/TkaYLq8x4AJLUDFV1RlKrmCz7aflVlAyYiWaM7HJ9JSP9idqibawoeztfXBw7GZ8a6IF3h0ke80v2RTOnfIU+VKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZOZbHd8rb11IWwTmLIPwcGQSygILwk2WEQIOs0sYfk8=;
 b=T69WxntVRv3fxbEpaqCK9MyKDUV2hsEBdWyohb+tzHNllZSsPCuvuVt4qsfYJWVwcztG6dG5K4oD+ThK58N0SEVpe41o55GUGx527ld0CbcgkxqwSdTsnkNVlkxaNFEeTlScOMzZQkhe2idt93XCgCLnRS2eDyxBOQfpRgy6O2XDru/jkVfb4T/Uuc7Bc6qbVel9p3QJQFKITN1BE08r3FP9uz87R0/BIAeaXPF+dQE8JT7ZWYQcpbyim9sfWylSvKiUYU8Zd66PP7sCLYNWeVQXj697hjQu9Zgq37+HoxtG4u1GajHYvpKHwrH0HHl8xs/42OwmKgAF50MppyurpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZOZbHd8rb11IWwTmLIPwcGQSygILwk2WEQIOs0sYfk8=;
 b=XZbg6qS8iW0pzesgXdipzht+Ffmwk9P04mM5quuLbxZDKNm+Xj9iZzG8mEIcii8O1HKoLf2onPiTfkznlTmUThl6air5fEhh7xRlJliqZINgvALtv2kpDAFN7XnnSsHU9vYhcdpq477yM3Zups39slSxc9li/2YSKtOQrBN+aUo=
Received: from DB8PR04MB6828.eurprd04.prod.outlook.com (52.133.240.149) by
 DB8PR04MB6972.eurprd04.prod.outlook.com (52.133.242.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Wed, 26 Feb 2020 18:32:55 +0000
Received: from DB8PR04MB6828.eurprd04.prod.outlook.com
 ([fe80::9484:81c6:c73b:2697]) by DB8PR04MB6828.eurprd04.prod.outlook.com
 ([fe80::9484:81c6:c73b:2697%6]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 18:32:55 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <olteanv@gmail.com>, Russell King - ARM Linux admin
 <linux@armlinux.org.uk>
Subject: RE: [PATCH net-next v2 1/8] net: phylink: propagate resolved link
 config via mac_link_up()
Thread-Topic: [PATCH net-next v2 1/8] net: phylink: propagate resolved link
 config via mac_link_up()
Thread-Index: AQHV7I7foN/8WjpxZUC/+bNDIQ+7u6gtUF0AgAAN5ICAABITAIAACfwAgABPyICAAAA+gIAAAVTw
Date: Wed, 26 Feb 2020 18:32:55 +0000
Message-ID: <DB8PR04MB682837B8182CFC3359B71112E0EA0@DB8PR04MB6828.eurprd04.prod.outlook.com>
References: <20200226102312.GX25745@shell.armlinux.org.uk>
 <E1j6tqv-0003G6-BO@rmk-PC.armlinux.org.uk>
 <CA+h21hrR1Xkx9gwAT2FHqcH38L=xjWiPxmF2Er7-4fHFTrA8pQ@mail.gmail.com>
 <20200226115549.GZ25745@shell.armlinux.org.uk>
 <CA+h21hqjMBjgQDee8t=Csy5DXVUk9f=PP0hHSDfkuA746ZKzSQ@mail.gmail.com>
 <20200226133614.GA25745@shell.armlinux.org.uk>
 <CA+h21hqHfC0joRDhCQP6MntFdVaApFiC51xk=tUf3+y-C7sX_Q@mail.gmail.com>
 <CA+h21hpzCY=+0U4JgFbqGLS=Sh6SjkSt=4J9e0AGVHKJPOHq1A@mail.gmail.com>
In-Reply-To: <CA+h21hpzCY=+0U4JgFbqGLS=Sh6SjkSt=4J9e0AGVHKJPOHq1A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ioana.ciornei@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 78582035-7dfe-4969-9922-08d7baea4c2d
x-ms-traffictypediagnostic: DB8PR04MB6972:|DB8PR04MB6972:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB697259685DB74C669270AD5CE0EA0@DB8PR04MB6972.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0325F6C77B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(376002)(366004)(39860400002)(199004)(189003)(110136005)(186003)(316002)(81166006)(81156014)(5660300002)(478600001)(8676002)(26005)(7416002)(8936002)(7696005)(86362001)(2906002)(44832011)(33656002)(6506007)(64756008)(66556008)(66476007)(66446008)(9686003)(76116006)(54906003)(52536014)(71200400001)(55016002)(4326008)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6972;
 H:DB8PR04MB6828.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lk1EnDL2BQJAw6fjFRszpl81GnNK0ZmzPgltBGuI20Z1oyAOd7DqLRE9nrrXkzNUjr0oQCCzvPtB9Z6q55S52uSQxuCx66g1mzzK9VoxW5zCvxG9kyytS0vBxuauHTL6pbrSQ6RebcI5id1OedlkU/uyr8xLYzcq6x2F+jGHXGU6cYDBjV8dlvZWhYixLeNge2Jzd65uHVI1WhNni5PkOxzHdYE5e2mMiwx4lwP7+jADcmUfki/7c2tv47/QfnnIuaVtpx4v1AAQO9Cp1D1FfGc9XzZHWjmKwPMOtNyIxhmFtmFSSnv9tiRQtBfKnsoaXv5HGAPmHFjsKFdKHCcXnwL1G91ARNPMQU8C5nqB+7jAw0aSor+zLOzFN1wtaxCdws0BSA60G6G9Lq30oDbRZQ84OUnAdwWftistIVofdOLllujeIwC8VaeSX5JxC9kP
x-ms-exchange-antispam-messagedata: aG9fEw0NIOt5qbiNd8POUHSzXc1m3jSw7VVJlfUjFipOT88pqB1OhLLXPYfj70mSCAz50BSe9VIVS7b/W4MkmUIGGqyRbXh+LdrSzsIktux1jHQu+LppAEdS0Ba/NshjQI9tlsugCFIXrbK4ylN+Mw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78582035-7dfe-4969-9922-08d7baea4c2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2020 18:32:55.8747 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8c/Cu6JNceOwLaCX2P1Y+qEJ2Lo+P1DYen/5VBZjZrdvyARe3SHFBjg2VcX9qY8T63+RoHz+QjpZuW6axY2RmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6972
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_104858_329125_D9C453FE 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ioana Ciocoi Radulescu <ruxandra.radulescu@nxp.com>,
 Jonathan Corbet <corbet@lwn.net>, Michal Simek <michal.simek@xilinx.com>,
 Jose Abreu <joabreu@synopsys.com>, Jakub Kicinski <kuba@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>, Sean Wang <sean.wang@mediatek.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 "moderated list:ARM/Mediatek
 SoC support" <linux-mediatek@lists.infradead.org>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Felix Fietkau <nbd@nbd.name>,
 "David
 S. Miller" <davem@davemloft.net>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH net-next v2 1/8] net: phylink: propagate resolved link config
> via mac_link_up()
> 
> On Wed, 26 Feb 2020 at 20:21, Vladimir Oltean <olteanv@gmail.com> wrote:
> >
> > On Wed, 26 Feb 2020 at 15:36, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > >
> > > dpaa2 is complicated by the firmware, and that we can't switch the
> > > interface mode between (SGMII,1000base-X) and 10G.
> > >
> > > If the firmware is in "DPMAC_LINK_TYPE_PHY" mode, it expects to be
> > > told the current link parameters via the dpmac_set_link_state() call
> > > - it isn't clear whether that needs to be called for other modes
> > > with the up/down state (firmware API documentation is poor.)
> > >
> >
> > With PCS control in Linux, I am pretty sure that you don't want
> > anything other than DPMAC_LINK_TYPE_PHY anyway.
> > Basically in DPMAC_LINK_TYPE_FIXED, the MC firmware is in control of
> > the PCS and polls its link state to emit link notifications to objects
> > connected to the DPMAC. So Linux control of PCS would class with
> 
> s/class/clash/
> 
> > firmware control of the PCS, leading to undesirable side-effects to
> > say the least.


If the DPMAC object is in DPMAC_LINK_TYPE_FIXED, the dpaa2-eth in fact
does not even connect to a phy so all the phylink interaction is not happening.
As Vladimir said, in this case it's the MC firmware's job to poll the PCS and
notify any connected objects of a link change.

> >
> > Regards,
> > -Vladimir
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
