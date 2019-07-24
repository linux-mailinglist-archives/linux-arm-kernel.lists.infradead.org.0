Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346E072F52
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMfYBDmu3SihgPmXq/pXzB7fqAl74PA1jAjr7YR4/VI=; b=rInnilvyCTgLtj
	iIxsAXyBtm5JSPigi71da/J++QlIm4VD6wzhDtoTZb+qjbBr09tqQsnFp3u2M7MXJsCPJwQ7i0rUv
	Nq/FvX2EsXq8NwHx7kfzmeUVN2LuOafvjakQG82yqLf9zxWE/urWB4QM8ozpnRYM8J8gSR4VUZgfN
	5Pu7vfgsnCDur/bQzQOUlvtHCfJWDqDPmqqxIWQdlvAQJM9+RlcBfeLiOpO0NvhpU4FHnL8vzmq9M
	ej2VNiUqrgZXCPtHn/w3i1DnRQbUpjk2XjAWT660eiadI927OU5vivAR4O2wZfG0zgp9cUrGusjlA
	Haqpl2xHtQuVflIC7wSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGq3-0002VZ-Ui; Wed, 24 Jul 2019 12:57:47 +0000
Received: from mail-eopbgr10086.outbound.protection.outlook.com ([40.107.1.86]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGpu-0002V0-Lc
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 12:57:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cUH3H2QUTpXwS3EbtI7kLpcwMHIy3xN8mOqPDDMdzdYIpKnRyhF+cEkgbKrCuQdfa054LOMRLNAIuOENiRRABsd/4DSthVRG/HbuR7HuWqnVovq8YvxNtyOrxMaYvsE4ENk2UKSn8uQu55s/V8E5sKH+vC2Utq+t/XcKObNJxSKAuFI0twZU8skpwgOSN3XKoeVhvUu2E4iFRsWrOprMaD1dMrNU2DUioO2kgjEHIE4uphkex/glJ/vTrBbY15iXTwH4mMOToVBID5gqppuCvf5kQPR85VlPp7gq2eiz7Jalmpr2GRKKoSVLyck6Kk7ccToEfw0/SKAFrk+RbrJaCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4gg3nbfX4/OTj+hDFORoETRsxHqWTPPGVuLxxyXqr0g=;
 b=QX0rTbAO9e/i3oGjcLuCIkaOUeoCsUHW/ki3AcaFB9JaggE6vaiDBWBqpmvM8SZ3aHJudkryOp0kGf24nIorMfMSDXYvEx0NR4rOtwdSXERbIaA6MiEy198zLmcyb1X4V98Sx1KfXkrzkOZtVmz5QSiF2Emo/xHILM+V1scNCXt83cAe1NYPvrfhpUdvnYW/S6i9QyxYBhBeWqAxo6fUMI/tY89wAN3XWMU5cEzGFvgwYoNsN3/GtEz9/SxNAbPOfCBAJH6+mM8nVUPZOQ125V33s37ffNgGx4NsU3Bfra+M/BU0hL8lv9U7P5VP8YY1NMrJz4Guo21HWO8o3BBlgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4gg3nbfX4/OTj+hDFORoETRsxHqWTPPGVuLxxyXqr0g=;
 b=Ce8M4Sl/Rfu5iq1YH5Rvds0/kssFfhNzf6P7pYmjtdJf1rYquHwIBgwrHV4tDYBTT1T+t6HLkyNx1wpVMqq6AcsGr5Wns9WmA14goF0d8e04cVUMKa453b8oTG6PIB4HyNr6KVmyN6NywhWVEOmD4GQJgB6TJiPuagqwm1zu6cU=
Received: from VI1PR04MB4880.eurprd04.prod.outlook.com (20.177.49.153) by
 VI1PR04MB6127.eurprd04.prod.outlook.com (20.179.26.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Wed, 24 Jul 2019 12:57:35 +0000
Received: from VI1PR04MB4880.eurprd04.prod.outlook.com
 ([fe80::e401:6546:3729:47c0]) by VI1PR04MB4880.eurprd04.prod.outlook.com
 ([fe80::e401:6546:3729:47c0%6]) with mapi id 15.20.2115.005; Wed, 24 Jul 2019
 12:57:35 +0000
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: Claudiu Manoil <claudiu.manoil@nxp.com>, Andrew Lunn <andrew@lunn.ch>
Subject: RE: [PATCH net-next 1/3] enetc: Add mdio bus driver for the PCIe MDIO
 endpoint
Thread-Topic: [PATCH net-next 1/3] enetc: Add mdio bus driver for the PCIe
 MDIO endpoint
Thread-Index: AQHVQWmTb9jG7sYluUe4Xi/RkNWlU6bYyBMAgAC+B+CAABpsgA==
Date: Wed, 24 Jul 2019 12:57:34 +0000
Message-ID: <VI1PR04MB48805982F057B8DE4DF9FCAE96C60@VI1PR04MB4880.eurprd04.prod.outlook.com>
References: <1563894955-545-1-git-send-email-claudiu.manoil@nxp.com>
 <1563894955-545-2-git-send-email-claudiu.manoil@nxp.com>
 <20190723222454.GE13517@lunn.ch>
 <VI1PR04MB4880DAE881769F6DC845CEEF96C60@VI1PR04MB4880.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB4880DAE881769F6DC845CEEF96C60@VI1PR04MB4880.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=claudiu.manoil@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40a94704-a5cb-4a19-9fe9-08d710367f97
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6127; 
x-ms-traffictypediagnostic: VI1PR04MB6127:
x-microsoft-antispam-prvs: <VI1PR04MB61270C80716D77F5645EFAAC96C60@VI1PR04MB6127.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(366004)(136003)(346002)(13464003)(199004)(189003)(5660300002)(6506007)(99286004)(66066001)(2940100002)(14454004)(186003)(33656002)(8936002)(81166006)(9686003)(74316002)(55016002)(6436002)(110136005)(53936002)(4326008)(478600001)(316002)(102836004)(76176011)(81156014)(7696005)(44832011)(54906003)(68736007)(26005)(8676002)(3846002)(6116002)(486006)(11346002)(476003)(6246003)(66556008)(14444005)(305945005)(66946007)(256004)(25786009)(2906002)(7736002)(446003)(66446008)(76116006)(66476007)(64756008)(71200400001)(86362001)(71190400001)(229853002)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6127;
 H:VI1PR04MB4880.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: n8LkT78yAf/E4aT9iTlQkdmxXKH/awpw5Bi89+pI/xU417TBhmH5H4s8L22SmfCNa+b8mTWr/Lr7xLJ/SaF5u2T4spATK+SpxeX+dUBsU0EEQ1ggk8hFG4xBCChEO7V6x9BOE3atNHcCMQGZ1hAz4mPqaJ71WN7heWlhSwBu84GJP99ltvg8b96RWrBvB0b1rgksyFRvuoOlgrVsboHUV6uPCDoKMwvRjJ9vdDe1SWzJQJfL4WoGyjklA1tjSvKkVTM7qgyUBeSZIwQH08dLt/ExOp6DrCOb9P8G6gIuxyNYdjMYC20FS+Lz+MGN9278FusRHRl+l/RfYzIIR5bjH0VpHFS2uO+puCGa077a2juAnCI+OGC/TXCe8UsssZqa+pe/18SFJD471c10xusrcwmj/SezK20L12Kfaym/mh8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40a94704-a5cb-4a19-9fe9-08d710367f97
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 12:57:34.9487 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.manoil@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_055738_764216_FEAB6F24 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.86 listed in list.dnswl.org]
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
>From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
>Behalf Of Claudiu Manoil
>Sent: Wednesday, July 24, 2019 12:53 PM
>To: Andrew Lunn <andrew@lunn.ch>
>Cc: David S . Miller <davem@davemloft.net>; devicetree@vger.kernel.org;
>netdev@vger.kernel.org; Alexandru Marginean
><alexandru.marginean@nxp.com>; linux-kernel@vger.kernel.org; Leo Li
><leoyang.li@nxp.com>; Rob Herring <robh+dt@kernel.org>; linux-arm-
>kernel@lists.infradead.org
>Subject: RE: [PATCH net-next 1/3] enetc: Add mdio bus driver for the PCIe MDIO
>endpoint
>
>>-----Original Message-----
>>From: Andrew Lunn <andrew@lunn.ch>
>>Sent: Wednesday, July 24, 2019 1:25 AM
>>To: Claudiu Manoil <claudiu.manoil@nxp.com>
>>Cc: David S . Miller <davem@davemloft.net>; devicetree@vger.kernel.org;
>>netdev@vger.kernel.org; Alexandru Marginean
>><alexandru.marginean@nxp.com>; linux-kernel@vger.kernel.org; Leo Li
>><leoyang.li@nxp.com>; Rob Herring <robh+dt@kernel.org>; linux-arm-
>>kernel@lists.infradead.org
>>Subject: Re: [PATCH net-next 1/3] enetc: Add mdio bus driver for the
>>PCIe MDIO endpoint
>>
>>> +	bus = mdiobus_alloc_size(sizeof(u32 *));
>>> +	if (!bus)
>>> +		return -ENOMEM;
>>> +
>>
>>> +	bus->priv = pci_iomap_range(pdev, 0, ENETC_MDIO_REG_OFFSET, 0);
>>
>>This got me confused for a while. You allocate space for a u32 pointer.
>>bus->priv will point to this space. However, you are not using this
>>space, you {ab}use the pointer to directly hold the return from
>>pci_iomap_range(). This works, but sparse is probably unhappy, and you
>>are wasting the space the u32 pointer takes.
>>
>
>Thanks Andrew,
>This is not what I wanted to do, don't ask me how I got to this, it's confusing
>indeed.
>What's needed here is mdiobus_alloc() or better, devm_mdiobus_alloc().
>I've got to do some cleanup in the local mdio bus probing too.
>Will send v2.
>

This is tricky actually, mdiobus_alloc won't do it, I still need to allocate space
for the pointer.
So it's not ok to store the register space pointer directly into priv
(even if iomap returns void *), it's unusual.
Looks like I will have to use double pointers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
