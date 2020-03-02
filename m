Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0819D175896
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:44:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daOY/PYTss3cMg+YBbdqvRAalnpsDr/G5al1p+Eo++g=; b=hC+sQkVhrq7+on
	/px1TffngqyXc5xokNJeCuABwmrNM8Qn81jxtL+G0u4iNBnTUTGjSCSq5T8c8d0cOzOaEEIQZ1DEs
	82/SJebBKfgm8ItsBmuoP6zMvqJiPR8WCdGMAeGpeyGOz0Cq2vQqg1nmO/UQpPqK39fK7eH05MgzO
	i9C3AUKsrVd61d0HmzHfBDmb850Il5ns6Bn1N6LpKPLWgBzPY/HkzQH61MWov8oLRzStIQ3L9fobC
	ACx6ODamanUpkRzH308rImOACF8sDVikUf89IBv1Hc8ek0w0Ca2aseeGR71BS5Q+2AKDzA6nAiK5c
	Ikpc5xW9TmECxLi/Jjag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iZ4-0008Hc-9D; Mon, 02 Mar 2020 10:44:46 +0000
Received: from mail-am6eur05on2046.outbound.protection.outlook.com
 ([40.107.22.46] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iYw-0008Gt-4l
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:44:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SiPHcyD8HQ5+9cBz6ZQuIOySbwaXzY0Ix0CbDkOf2O0VlJ6bVNHkeAJf1JOjOCdQDzDBjKmmACiuiNZGrSMzLHcyKlPGvsmFVpgHqnfUB7daovbjw1FZDXawseKgUXHfQDGAkQvvm1ltf0o/T7F+4bIa9PTagA+Acjc1WAjbNVesRk8AeGe4cSrKnD1pqGleHiMelTci199wA6x3N7lLHIOdXX+M4FeayZhDN2tEZ40LIFEDmXR8xy2jsCO/Ghhaj74Z3+y+6OM1UN1I0wZbNR0mdAILTUXC07ocbHe77viDeJT2dV4w0MeiCsD5kiVz8ShrhqbQen6GBm+QdMU95w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i19Gyo9zdPDbUpVac+USJNhVJXQ7kv/H3uBdvzIJk5U=;
 b=dTQh9nXmFazmui9ktdxa7XqCTBpO1oPvKLoh32lzrJRiqznnqTMxdD3breWfkvZAt/DJMFlC8k4DQiOs97DRVV0Is7KJPbb/V6cmfIaUxoc34KmiJwfT+K9JcAkZ2y1q7Lce068f0xc120h3gkUdruU6sCm4946uKe3g3RSSExSsCIOl2cLb29K+yQ2xEijt4OE9oEFZ11j0oFN9L7B+YoKc6Z7Oz9tQu5KkmbQNXNEqOzKGeDx6htwrTNLqFf4nRXIJL5mBjyNudoTSxtNvaQuSIhPTiTxFYl26Vlfpgn0DmWeXIcGvQ8cSaid0KET6zxLbK3URTeRt/oIineoMIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i19Gyo9zdPDbUpVac+USJNhVJXQ7kv/H3uBdvzIJk5U=;
 b=jDtSUxyLJ1T/nSKc5SnGphwfdIv04xEQYIhyZAieCDkjSVu4avZ+7fDXqW42QTfS6bLdUpZiTz5+HVFStb8i8BoWIpjPV8ZjY8zrngMPxk3gsicVYZ3M0Pj6jaX8epbw/Vw0bS68qseU5wo15gm3nI2bUUVYCMOYtCx/WmDIVNQ=
Received: from DB8PR04MB6985.eurprd04.prod.outlook.com (52.133.243.85) by
 DB8PR04MB6380.eurprd04.prod.outlook.com (20.179.250.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Mon, 2 Mar 2020 10:44:21 +0000
Received: from DB8PR04MB6985.eurprd04.prod.outlook.com
 ([fe80::a523:58cc:b584:2c2]) by DB8PR04MB6985.eurprd04.prod.outlook.com
 ([fe80::a523:58cc:b584:2c2%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 10:44:21 +0000
From: "Madalin Bucur (OSS)" <madalin.bucur@oss.nxp.com>
To: Leon Romanovsky <leon@kernel.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: RE: [PATCH net-next 00/23] Clean driver, module and FW versions
Thread-Topic: [PATCH net-next 00/23] Clean driver, module and FW versions
Thread-Index: AQHV79gGLajbVRrRzEeosW+ba548fKg1H1/g
Date: Mon, 2 Mar 2020 10:44:21 +0000
Message-ID: <DB8PR04MB698571C6348FBF9D51DE018DECE70@DB8PR04MB6985.eurprd04.prod.outlook.com>
References: <20200301144457.119795-1-leon@kernel.org>
In-Reply-To: <20200301144457.119795-1-leon@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=madalin.bucur@oss.nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bb505941-7643-483f-5adc-08d7be96aae6
x-ms-traffictypediagnostic: DB8PR04MB6380:|DB8PR04MB6380:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB638064D1DAA8DA13A2E49950ADE70@DB8PR04MB6380.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(396003)(136003)(366004)(189003)(199004)(9686003)(86362001)(4326008)(81166006)(8936002)(55016002)(316002)(64756008)(66446008)(66556008)(33656002)(7696005)(54906003)(8676002)(110136005)(81156014)(478600001)(5660300002)(26005)(71200400001)(66476007)(186003)(7406005)(4744005)(2906002)(66946007)(7416002)(6506007)(76116006)(53546011)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6380;
 H:DB8PR04MB6985.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QrPc99ZY5064gqQ6AIXHXVTQJm2CKrq99dD2UICK08+58obONfNjMqmRqrxuya/4NxIYJy0QcAIfdKqndIwr7vipCUx/EtWw0JgQY2aTBIvQlKX93aNKr1twF34owknPji5VZT3HlYddCBr4n4yuU4pmuxhq8PCbsemU5NSRWGSRGqHyQZDCRkOmn2MD3g80qaEWy9LFtOpfoKzguZiMrDxRXkoYhSRslrwzeQPJi6agi+xwgBXYbTLBT3nyij9c5VSTFJ/7ZQOy3F8cFDz7mZAOdPRFsBTEz/Nnu+1mFCOb42Y96QWMA3Tc5XuyKgihdS9/gI705dmJKuwkZHB2F5z/0dP55cunHkqSbcOGWNP9no+AhJ6R1bFZRPcA/olI7Uwvv1gtDjILnnBtK1DwltRN5x+Z3zN8q+xESjkZ2RLC/TB3pacxuKrekhZjwHww
x-ms-exchange-antispam-messagedata: h+5CI3t39wq9lfwB0uAYJIlsk5YUICPyeeSZMJ0MIx1de/Hl7x2+x/3cxdfB0k8BT4uwES3wA00EgR5BBjPFK/Li05dTVhE51wXkkWuLQQ+CdkwOP1LiESrZ5sd1XCmhGRNb56sAiwSZhEbdgDjfAw==
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb505941-7643-483f-5adc-08d7be96aae6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 10:44:21.6624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IQ4ydzGmV/RjYd4vmk31OMGbYk57CA1HCBTpNmvgbRZSnt/EsM0AoOqJn7gkEqFdtSLTDjP8puZ20P93tbtSqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6380
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_024438_266480_EC62F897 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ajit Khaparde <ajit.khaparde@broadcom.com>,
 Denis Kirjanov <kda@linux-powerpc.org>,
 Prashant Sreedharan <prashant@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Somnath Kotur <somnath.kotur@broadcom.com>,
 Vishal Kulkarni <vishal@chelsio.com>,
 "GR-everest-linux-l2@marvell.com" <GR-everest-linux-l2@marvell.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 Casey Leedom <leedom@chelsio.com>, Doug Berger <opendmb@gmail.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sunil Goutham <sgoutham@marvell.com>,
 Parvi Kaustubhi <pkaustub@cisco.com>, Ariel Elior <aelior@marvell.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Leon Romanovsky <leonro@mellanox.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Sathya Perla <sathya.perla@broadcom.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Raghu Vatsavayi <rvatsavayi@caviumnetworks.com>,
 "GR-Linux-NIC-Dev@marvell.com" <GR-Linux-NIC-Dev@marvell.com>,
 Andy Duan <fugang.duan@nxp.com>,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Siva Reddy Kallam <siva.kallam@broadcom.com>, Rasesh Mody <rmody@marvell.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Hartley Sweeten <hsweeten@visionengravers.com>,
 Robert Richter <rrichter@marvell.com>, Derek Chickles <dchickles@marvell.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: David Miller <davem@davemloft.net>
> Sent: Monday, March 2, 2020 5:02 AM
> To: leon@kernel.org
> Subject: Re: [PATCH net-next 00/23] Clean driver, module and FW versions
> 
> From: Leon Romanovsky <leon@kernel.org>
> Date: Sun,  1 Mar 2020 16:44:33 +0200
> 
> > This is second batch of the series which removes various static
> > versions in favour of globaly defined Linux kernel version.
> 
> This generally looks fine to me but I'll let it sit for a few days so
> that others can review.

Reviewed drivers/net/ethernet/freescale changes, thank you!

Reviewed-by: Madalin Bucur <madalin.bucur@oss.nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
