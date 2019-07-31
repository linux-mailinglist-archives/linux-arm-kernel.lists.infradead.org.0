Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73857C692
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00zLIf1FDUkZSgXiI5HiTiOdZm29aY/9YlTT9vTX9NI=; b=M+EtG+Fk4jF7PL
	18EOBdOMw19kquWx3K2LJurMvDFSxLMkhKSlBXvowUtUWPGkoVtXcme5npg/zSEFPT89K3U6jl6a+
	nMEk/WAu8F6wM7X2OA75QUDqwSWQn1BMRcGrd4dZbtFQTmnXmMRvyA1335GCg2OR6hnCJ+XzaCcgU
	gTLeL1YH8ItAtisrC/pz5ZQTWcFkEsJRY8qeMqrJQZ+K2RO2dDAZAwc4RofUn4HqD6+9y/vPAeSx5
	2oz1zbkBbkOy7n47ZISmVwSg6jkOlZHnI8Xi3Uz6Ry6JJ4Lxs9g/PNwHWiSK0KbrSJkDM0+xBvVdh
	i1nWSJLTDp0FEFzqLdVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqYa-000346-1x; Wed, 31 Jul 2019 15:30:24 +0000
Received: from mail-eopbgr20065.outbound.protection.outlook.com ([40.107.2.65]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqYS-00033Z-UB
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:30:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SagZVr2cb3aeal6+lUMrlaWf5M+QnYxu7pau7hSunmUOUgkmdSq7hLgyIbZuzF/7kIkvJtSk2nuPuvcRWMnhN1VoHz8LD3n014E36DnkC1P2qaW9Oe23dr1j0+SBzesRL/8Gw2Yv1PWiyIJGOi93KrjlYTtkN4wwwrQ3ORPt2XFrzQ1ftx2pGa6+wMcMdGhGM93EvMf8TmFaBrX09B1FnEOtja7jazFHVGEeqWBr8aUY3A7blmfkVEATLuvODC8wCPpOGsybTTEadbFuMjwAQuRCCi06UsNR+PWzfK2cU/h2voo2LnXP/YZKMyDw2bOGgQcbaUlhPljNuhTrx+mrvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qq2SOy7q1kCuAj3H4ExAN82mh3spfvhdmNAgJMhtIYA=;
 b=nUrDkUpPZLZQ/cSse5lKptIYzGHT7PAUIyYdBaPXYlYYKndBk6tO6DGmxlLBTpUqy1tgqfG5Cedvpf14VRnvR2+HJ3GjtFMsquXarNMYkaUm2mze9EOJZDPEi4KndAfcnAdWCyohaRtXWp5Lo4f6OSDegJzbnO9zl9UwfXQpzgDTxSLpNYU9FUpM799luAL84mC10Zn+3FHgtVHPtWFy5g9kxaX1ODFqd+OiknnGzPokB2UCO9lo1+yIJgiNfFAD4fBLTfPlE7hpRFPrBT7rwJVppZZYqbYCWbny3dpZe4infzSSNJKW79cxyyETmdqOnEzAKdW0Bpqd7dHJ3mhwMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qq2SOy7q1kCuAj3H4ExAN82mh3spfvhdmNAgJMhtIYA=;
 b=aFgn8sD0FQELUeBKVdaOuLth38rMrokGKHMznGaiZW/3pEKTa2rTWZP48YtyXmrFFHukMwaxrdQiCqKaJFLQukJNeL7knw/BjTMxFpYx7i3ix7AC2c6ahglyGjsQQlXzDza8FxhoFK2IuPcivy+nEPptKbcc9PNg+fIe9Ny5Chg=
Received: from VI1PR04MB4880.eurprd04.prod.outlook.com (20.177.49.153) by
 VI1PR04MB5853.eurprd04.prod.outlook.com (20.178.204.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Wed, 31 Jul 2019 15:30:11 +0000
Received: from VI1PR04MB4880.eurprd04.prod.outlook.com
 ([fe80::e401:6546:3729:47c0]) by VI1PR04MB4880.eurprd04.prod.outlook.com
 ([fe80::e401:6546:3729:47c0%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 15:30:11 +0000
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: David Miller <davem@davemloft.net>
Subject: RE: [PATCH net-next v4 0/4] enetc: Add mdio bus driver for the PCIe
 MDIO endpoint
Thread-Topic: [PATCH net-next v4 0/4] enetc: Add mdio bus driver for the PCIe
 MDIO endpoint
Thread-Index: AQHVRruXkrgGFGQQ+EaBpGk24PJNNKbjXq0AgAACjQCAAXagAA==
Date: Wed, 31 Jul 2019 15:30:10 +0000
Message-ID: <VI1PR04MB48808FF2BC4DBA4A6C32DB2D96DF0@VI1PR04MB4880.eurprd04.prod.outlook.com>
References: <1564479919-18835-1-git-send-email-claudiu.manoil@nxp.com>
 <20190730.094436.855806617449032791.davem@davemloft.net>
 <20190730.095344.401137621326119500.davem@davemloft.net>
In-Reply-To: <20190730.095344.401137621326119500.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=claudiu.manoil@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a7ba191-28ef-4976-c87f-08d715cbfa05
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5853; 
x-ms-traffictypediagnostic: VI1PR04MB5853:
x-microsoft-antispam-prvs: <VI1PR04MB58534B177C9ECB230707E43D96DF0@VI1PR04MB5853.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(199004)(189003)(13464003)(99286004)(81166006)(81156014)(7736002)(8936002)(8676002)(7696005)(55016002)(71190400001)(76176011)(52536014)(76116006)(9686003)(71200400001)(25786009)(66946007)(66556008)(5660300002)(4326008)(86362001)(54906003)(64756008)(316002)(53936002)(33656002)(66476007)(68736007)(66446008)(6246003)(74316002)(256004)(66066001)(6506007)(478600001)(102836004)(6116002)(6916009)(3846002)(26005)(186003)(2906002)(229853002)(476003)(11346002)(486006)(305945005)(446003)(44832011)(6436002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5853;
 H:VI1PR04MB4880.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Bi89f8jvDFh3PdfcsFOFNYhc8Hgdp8Eqp08OAygCiTsnuuuJrVIxG3eEzaYIYXbWj1FtApth48tyyrGtQRXy6isxf9i1LCg9HHJiaZDUZ4qsPEYBLsEQWx916HD+VSznj/DI+wKJv1K7iBLPvEvoKXPXKwQns61686UNUrPZlqQPEFdFSECvQeiKTJ25XptgqC/ifDiT5A3CbQWojOYo8TekuYmdf3tSIzYYx8K4R6rICjCVL6SGVaLLxKhoSWlwAFPG4nWwsPdrWtCImON3eaRDidspaSf4tTO0aLb0ePpDjJU72bYM0WfBZPFeCdhrvUIB+CgUUMDBIVFd5pXQe5gqM6EvRPIwgDw82SCkWVUT3BbIUs7586QgW/YTPA7KeD4fm4idwTgXdmkUjXeniX615DA4fzSASoIfwDHtx5g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a7ba191-28ef-4976-c87f-08d715cbfa05
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 15:30:11.2472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.manoil@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5853
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_083017_048765_B42BF201 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexandru Marginean <alexandru.marginean@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>-----Original Message-----
>From: David Miller <davem@davemloft.net>
>Sent: Tuesday, July 30, 2019 7:54 PM
>To: Claudiu Manoil <claudiu.manoil@nxp.com>
>Cc: andrew@lunn.ch; robh+dt@kernel.org; Leo Li <leoyang.li@nxp.com>;
>Alexandru Marginean <alexandru.marginean@nxp.com>;
>netdev@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-
>kernel@lists.infradead.org; linux-kernel@vger.kernel.org
>Subject: Re: [PATCH net-next v4 0/4] enetc: Add mdio bus driver for the PCIe
>MDIO endpoint
>
>From: David Miller <davem@davemloft.net>
>Date: Tue, 30 Jul 2019 09:44:36 -0700 (PDT)
>
>> From: Claudiu Manoil <claudiu.manoil@nxp.com>
>> Date: Tue, 30 Jul 2019 12:45:15 +0300
>>
>>> First patch fixes a sparse issue and cleans up accessors to avoid
>>> casting to __iomem.
>>> Second patch just registers the PCIe endpoint device containing
>>> the MDIO registers as a standalone MDIO bus driver, to allow
>>> an alternative way to control the MDIO bus.  The same code used
>>> by the ENETC ports (eth controllers) to manage MDIO via local
>>> registers applies and is reused.
>>>
>>> Bindings are provided for the new MDIO node, similarly to ENETC
>>> port nodes bindings.
>>>
>>> Last patch enables the ENETC port 1 and its RGMII PHY on the
>>> LS1028A QDS board, where the MDIO muxing configuration relies
>>> on the MDIO support provided in the first patch.
>>  ...
>>
>> Series applied, thank you.
>
>Actually this doesn't compile, I had to revert:
>

Sorry, I overlooked the module part.  Turns out I have to define a separate
module for this driver (mdio), refactor common code between the mdio module
and the enetc-pf module, clean up the Makefile...  and do more checks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
