Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E93573348
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30beIQjP2anl/HwdQBmA1UJaIFob4z4L+QptI1CeVGE=; b=f+BOtkYAx3sDBv
	jpEHlbuzOV1Ed0Z/zpa5XJTZRRjcmLPo4M2uJf0IZ/KBcRPJj+4VP65h4p1o5K2xXeqmApHb51iJg
	rUpZMQkp6tfiHygoaCMR6JKXKVVPqDsj+7PWB8+iEqV8QADX1X7hAx3UrZ4dMqGoI3j3xSNF16utO
	UsJ1EvszfuZS1VEcVJQutRFs29VxbDchPkGUeAVLBntM+hvdHyDuiacD3VfDtBdhmUf3naXq52aPS
	WV909jzrOaw3bGbe2AkNgVzywnLRAoB5Fn9BxLl3FoxuBcRLQe0TlXKVBZTDkZF7TDzh2wM5/JBta
	iHZJFWWBe+KbQbYBU5gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJjv-00065j-4S; Wed, 24 Jul 2019 16:03:39 +0000
Received: from mail-eopbgr00066.outbound.protection.outlook.com ([40.107.0.66]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJjl-00065B-GR
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:03:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dn4d9hG1mjP/cLrf8gE8IWlAFMXBojCeKnN/6rc7JKTvM2Pk4yJsGbeDHaVH8AtxGUMLJIgRjz0dcjaUH4jpAahDwiolWbDArRKdqGJJ6jMS5NY5UYREW+s8xVDRG0Z1FruFcRnBnAnA9xSb97D4ELrQiQfQiHj6CY5B8MX1hY3leFZ11XsvmmRmk6d+U+DNpNSNRXn5sUUutMBIuwJY9cbGY2l0ibFnOf7ikG3BR7+alcQnKleUWe21XZHpXNjuv/P+e9hYehrZOHvJ2ynSH6eoUBeow9x/AoruFNCviLcxlGIokbpU7MjsBh2479UPERcJyXMSHElCvrG1rrfamg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Avds5MAP51YgP11m7sgN8tLH42XkRBhuh/UzRyYU55c=;
 b=X13q6P8wdDs+1tRMUhmfkuyAv+rnzmPUv5RYAQOAiwkbhWz80jcAHbjFNFvRWIeGv6RsJKvF1RzjgFCwbYql6wHPXMk5rEw9KN7imx1k+KOuWU5Gy6TXeMjQMdzDr204ExndNzzaUMssNSV2Gbgld2F9DLb4XHpbzYZSnzeKePdPtaufRyBJJwnRwmqZbr71pn/CPkmaNKGHM2+UrxSaO9mXO7x4H8jwJfGXQCota1uLZ5CnUgTghZ+oBwOKJWAeiM9CanouPVHP8/BIAyU1nbIQdyk0zGKZ3yFeIwwpY+DhLnwPYe0KhO+Lz+W0HgSy/xa35dNEFG99LJQ+ZMnNig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Avds5MAP51YgP11m7sgN8tLH42XkRBhuh/UzRyYU55c=;
 b=ARBlcpzdBZBCXheaGCnZn5kXFpugY73F3/ddrgDp53jdTEkx4BP4ZGFR1t8yTMTc/yr5tE72RqjXc0L/hjKBR4amrrGxcAdT9+8tGqY4GgaC5ihTdHSXLhzJ1vStQ5z5vL5+OoW9WEf41TKvl3+g9ObG9T1TGllNZf3y6pmW1oY=
Received: from VI1PR04MB4880.eurprd04.prod.outlook.com (20.177.49.153) by
 VI1PR04MB5661.eurprd04.prod.outlook.com (20.178.126.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Wed, 24 Jul 2019 16:03:24 +0000
Received: from VI1PR04MB4880.eurprd04.prod.outlook.com
 ([fe80::e401:6546:3729:47c0]) by VI1PR04MB4880.eurprd04.prod.outlook.com
 ([fe80::e401:6546:3729:47c0%6]) with mapi id 15.20.2115.005; Wed, 24 Jul 2019
 16:03:24 +0000
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: RE: [PATCH net-next v1 1/4] enetc: Clean up local mdio bus allocation
Thread-Topic: [PATCH net-next v1 1/4] enetc: Clean up local mdio bus allocation
Thread-Index: AQHVQi3804zWFuFqEkKC/WL+F9RyBqbZ4Z2AgAAJcRA=
Date: Wed, 24 Jul 2019 16:03:24 +0000
Message-ID: <VI1PR04MB4880CD977A5D58DA0A7EE56696C60@VI1PR04MB4880.eurprd04.prod.outlook.com>
References: <1563979301-596-1-git-send-email-claudiu.manoil@nxp.com>
 <1563979301-596-2-git-send-email-claudiu.manoil@nxp.com>
 <20190724151803.GR25635@lunn.ch>
In-Reply-To: <20190724151803.GR25635@lunn.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=claudiu.manoil@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65cacdae-9cb4-4675-46df-08d7105074fe
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5661; 
x-ms-traffictypediagnostic: VI1PR04MB5661:
x-microsoft-antispam-prvs: <VI1PR04MB5661446BAEF9B5D68E11469C96C60@VI1PR04MB5661.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(346002)(396003)(39860400002)(136003)(52314003)(13464003)(199004)(189003)(52536014)(229853002)(6436002)(478600001)(55016002)(6916009)(53936002)(76116006)(9686003)(66066001)(76176011)(14454004)(186003)(86362001)(5660300002)(66556008)(6246003)(64756008)(25786009)(66446008)(66946007)(66476007)(305945005)(316002)(7736002)(102836004)(81156014)(8676002)(4326008)(71200400001)(71190400001)(81166006)(6506007)(446003)(44832011)(256004)(3846002)(2906002)(26005)(68736007)(14444005)(99286004)(54906003)(7696005)(33656002)(486006)(11346002)(476003)(74316002)(6116002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5661;
 H:VI1PR04MB4880.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ozMO5cp18h2DsIWaLw/YRiPlD6K8h57n31afCGHUidQI6ai1MjGIqR+jOdw6X6rmP8T0NeJOPkQRor8BP2M3gIf3iHm0H3cZ8MiqTjsC9gNXd0JR1EnKhoin117lbhwF3a/2/qCzdh/R7tCIkNHs5raeJkMBzRhUDVVZE9ODdBvlxzBlui4lQY23GPvNneg89JstaPoSvkFQVoheCpkFjuayvs62Lfx0+4Grmf/vhZwIavVsks8wN9LGyzriJ12rCqLXDoefsn+AcEjjBQ65AozIwM4WeipQVTdaRxRRiYskL3Hg5Lv18ct3oj+7VdoQHjrS5JyWFn878MJvbMm2tXVp+OqN4O5XbCDAgRhkHaQOY1C8yDHfquEK9YdfOpNrVj/zIoYcI4YhkhOSnY79GqHubwdTWugGR8jPIYbHobM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65cacdae-9cb4-4675-46df-08d7105074fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 16:03:24.1474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.manoil@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_090329_659881_4F3D7886 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



>-----Original Message-----
>From: Andrew Lunn <andrew@lunn.ch>
>Sent: Wednesday, July 24, 2019 6:18 PM
>To: Claudiu Manoil <claudiu.manoil@nxp.com>
>Cc: David S . Miller <davem@davemloft.net>; Rob Herring
><robh+dt@kernel.org>; Leo Li <leoyang.li@nxp.com>; Alexandru Marginean
><alexandru.marginean@nxp.com>; netdev@vger.kernel.org;
>devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
>kernel@vger.kernel.org
>Subject: Re: [PATCH net-next v1 1/4] enetc: Clean up local mdio bus allocation
>
>On Wed, Jul 24, 2019 at 05:41:38PM +0300, Claudiu Manoil wrote:
>> Though it works, this is not how it should have been.
>> What's needed is a pointer to the mdio registers.
>> Store it properly inside bus->priv allocated space.
>> Use devm_* variant to further clean up the init error /
>> remove paths.
>>
>> Fixes following sparse warning:
>>  warning: incorrect type in assignment (different address spaces)
>>     expected void *priv
>>     got struct enetc_mdio_regs [noderef] <asn:2>*[assigned] regs
>>
>> Fixes: ebfcb23d62ab ("enetc: Add ENETC PF level external MDIO support")
>>
>> Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
>> ---
>> v1 - added this patch
>>
>>  .../net/ethernet/freescale/enetc/enetc_mdio.c | 31 +++++++------------
>>  1 file changed, 12 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
>b/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
>> index 77b9cd10ba2b..1e3cd21c13ee 100644
>> --- a/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
>> +++ b/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
>> @@ -15,7 +15,8 @@ struct enetc_mdio_regs {
>>  	u32	mdio_addr;	/* MDIO address */
>>  };
>>
>> -#define bus_to_enetc_regs(bus)	(struct enetc_mdio_regs __iomem
>*)((bus)->priv)
>> +#define bus_to_enetc_regs(bus)	(*(struct enetc_mdio_regs __iomem
>**) \
>> +				((bus)->priv))
>>
>>  #define ENETC_MDIO_REG_OFFSET	0x1c00
>>  #define ENETC_MDC_DIV		258
>> @@ -146,12 +147,12 @@ static int enetc_mdio_read(struct mii_bus *bus, int
>phy_id, int regnum)
>>  int enetc_mdio_probe(struct enetc_pf *pf)
>>  {
>>  	struct device *dev = &pf->si->pdev->dev;
>> -	struct enetc_mdio_regs __iomem *regs;
>> +	struct enetc_mdio_regs __iomem **regsp;
>>  	struct device_node *np;
>>  	struct mii_bus *bus;
>> -	int ret;
>> +	int err;
>>
>> -	bus = mdiobus_alloc_size(sizeof(regs));
>> +	bus = devm_mdiobus_alloc_size(dev, sizeof(*regsp));
>>  	if (!bus)
>>  		return -ENOMEM;
>>
>> @@ -159,41 +160,33 @@ int enetc_mdio_probe(struct enetc_pf *pf)
>>  	bus->read = enetc_mdio_read;
>>  	bus->write = enetc_mdio_write;
>>  	bus->parent = dev;
>> +	regsp = bus->priv;
>>  	snprintf(bus->id, MII_BUS_ID_SIZE, "%s", dev_name(dev));
>>
>>  	/* store the enetc mdio base address for this bus */
>> -	regs = pf->si->hw.port + ENETC_MDIO_REG_OFFSET;
>> -	bus->priv = regs;
>> +	*regsp = pf->si->hw.port + ENETC_MDIO_REG_OFFSET;
>
>This is all very odd and different to every other driver.
>
>If i get the code write, there are 4 registers, each u32 in size,
>starting at pf->si->hw.port + ENETC_MDIO_REG_OFFSET?
>
>There are macros like enetc_port_wr() and enetc_global_wr(). It think
>it would be much cleaner to add a macro enet_mdio_wr() which takes
>hw, off, val.
>
>#define enet_mdio_wr(hw, off, val) enet_port_wr(hw, off +
>ENETC_MDIO_REG_OFFSET, val)
>
>struct enetc_mdio_priv {
>       struct enetc_hw *hw;
>}
>
>	struct enetc_mdio_priv *mdio_priv;
>
>	bus = devm_mdiobus_alloc_size(dev, sizeof(*mdio_priv));
>
>	mdio_priv = bus->priv;
>	mdio_priv->hw = pf->si->hw;
>
>
>static int enetc_mdio_write(struct mii_bus *bus, int phy_id, int regnum,
>                            u16 value)
>{
>	struct enetc_mdio_priv *mdio_priv = bus->priv;
>...
>	enet_mdio_wr(priv->hw, ENETC_MDIO_CFG, mdio_cfg);
>}
>
>All the horrible casts go away, the driver is structured like every
>other driver, sparse is probably happy, etc.
>

This looks more like a matter cosmetic preferences.  I mean, I didn't
notice anything "horrible" in the code so far.  I actually find it more
ugly to define a new structure with only one element inside, like:
struct enetc_mdio_priv {
       struct enetc_hw *hw;
}
What is this technique called? Looks like a second type definition for
another type.
Anyway, if others already did this in the kernel, what can I do?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
