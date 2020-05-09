Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E1A1CC158
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 14:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mpXXtxlKB7KS725d24P2K+shec1gL0zyiiqWFYsZ6c=; b=JqRjEEQo350QeM
	sYvhbCfxnLp0hjR5zqi0ZP9q51g6FwQaccisdHsaTg4WoabYKtTmKN4iDKRWSFSBMqUSv1mDPTHev
	gfhx/STXqY3MMB2nYDxJ3Jey5hdRpXuc8KOKYzP39dkaoLCyGS0KNnWF7d7umSXyQpj1qJL6H9ccK
	HNA5yER+TSBGqfIfxlZOEJtaD6rgAlECmNnSo+7gZ3ogew6hlBpaznSze929wKIRZddUKRQLmM7HS
	s5fv1RL/YuQ12E0y32qGIAjf9w+PGSygd3btnFT7rymRRiAlA9zNtilNUN6dlyAXbA59SIUb7BQyN
	TNaH7OjE9QDeIaDMq2Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXOds-0002oL-3h; Sat, 09 May 2020 12:31:44 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXOdl-0002nB-1X
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 12:31:38 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 049CQHv1030995; Sat, 9 May 2020 05:31:25 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=CgzoyqH+mLc4jGjbBtJtUA6q67Q+NNrPXdgkgBJVeNY=;
 b=ULOWTUvMlRBlgVEENdQvPIIRPk1kjN9ZDzFM3lRzxsrSsEpMpLdBgx8+DgxndZC6l1x3
 K2ScAnIwakgKw2R/DuorM4sK95l/IcLO6rYSEFEB1DoSyvytnXKQdP9Ha6REOUyHNqcv
 mBBoHVvrIw7WFOHZqwWyuU6VskBhRofmIR4yUf0ip9BOZv1UyCaP6sOgamNeFW0i7Smc
 wx0kaitlFmzsfzo7FJ3I0zLcFTQdwuULcyi3xIKJTmxQvyB8iOdCWEoLM9GbXQ5TeWku
 jPV99kVtw+L4SFkha24nzoHNYaI2Xwh7mfzdOEdJLBHm9ujKYicUeJrgdvh1f0z1Xk+k aQ== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 30wsvq8dnx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 09 May 2020 05:31:25 -0700
Received: from DC5-EXCH01.marvell.com (10.69.176.38) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 9 May 2020 05:31:23 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 9 May 2020 05:31:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 9 May 2020 05:31:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fGf5/E1nEH5DzJMHhc2p1j5ItuqRoWJN9YsVoFZTJu1Dv3Sy10iuQ9ijDVwa0UetoFAgsOfP24RM/PHGHbQygQO296/yoeH9029nIX7VH+y/Kwdvyh6Lg1L/jN1wbh73POJNH+1Fv0yjeD/HoJWtsX+fGTJqu6fAsF97dygLin+9CZgIWMxI/c2+i2zhBnvK8qYioNGDPPHSwT7xX94Suov+5MKwqCH2OLSQqLph83nHfO8DJ2DoGsz/CzmAaMgE7lOlYzHW4rNxFUiH0Dz/Zc12X4HKxdx91b+ToAi7XS2jdPxBvTsfo527tvVLMj9YEOrf1xcC+RfeDzsVIpAKRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CgzoyqH+mLc4jGjbBtJtUA6q67Q+NNrPXdgkgBJVeNY=;
 b=jciW1bIAzLQcdJtv6J2jXeHHMPxjCF07id0HzIOtZ809bPNgZM+linGeX/hbA7R9Kmm0LIX4roacARZKSzz9k/2wpWKMA3B9Fei0Z+vNRPb0Tyt56eCBpeOoPyYmfKk+L5xLPh2qFB1oyb9eoXMovFSyz+83WISCnVzaODKBHV+ZpS8eVgzCupSM3+ynRh8x/0mS1fXAvLLLenDgFueCNqtqbxwojhDNj0PsEmbiGnKF5LdJF1R+Rh5k5DWg69c1nfJ1Jw1pTJCfvU8Llvbe4h79w2mwACPl6JYqA1KJlCS3fXsD0KFRyMcjs0pgRb66K2ZJe0oANtqHZL9Z6TfX8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CgzoyqH+mLc4jGjbBtJtUA6q67Q+NNrPXdgkgBJVeNY=;
 b=IEISvQqYR9KpM6PWmtDB8lWVZg5urTRH4ASSP0xuvYrMSOahFsL1ouU0X4piLvP00VusqmGcKpHO0EWXupIBiRKHpOAVDuYfcY4E0HEH+HR+8XNrup7zjYXKowUfYCZC74pLy+eyhNYYuINguzHBFN8sDMNanY0DBEBUtLFs+n0=
Received: from DM5PR18MB1146.namprd18.prod.outlook.com (2603:10b6:3:2c::15) by
 DM5PR18MB1115.namprd18.prod.outlook.com (2603:10b6:3:31::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.26; Sat, 9 May 2020 12:31:21 +0000
Received: from DM5PR18MB1146.namprd18.prod.outlook.com
 ([fe80::51c3:5502:21c2:f515]) by DM5PR18MB1146.namprd18.prod.outlook.com
 ([fe80::51c3:5502:21c2:f515%12]) with mapi id 15.20.2979.033; Sat, 9 May 2020
 12:31:21 +0000
From: Stefan Chulski <stefanc@marvell.com>
To: Matteo Croce <mcroce@redhat.com>
Subject: RE: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
Thread-Topic: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
Thread-Index: AQHWGZC7cQmjD8WUCU6s0i6IN8JFgKie+g2AgAC4ufCAABFigIAAAbyQ
Date: Sat, 9 May 2020 12:31:21 +0000
Message-ID: <DM5PR18MB11462564D691544445CA2A43B0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
 <20190524100554.8606-4-maxime.chevallier@bootlin.com>
 <CAGnkfhzsx_uEPkZQC-_-_NamTigD8J0WgcDioqMLSHVFa3V6GQ@mail.gmail.com>
 <20200423170003.GT25745@shell.armlinux.org.uk>
 <CAGnkfhwOavaeUjcm4_+TG-xLxQA519o+fR8hxBCCfSy3qpcYhQ@mail.gmail.com>
 <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
 <CAGnkfhwV4YyR9f1KC8VFx4FPRYkAoXXUURa715wb3+=23=rr6Q@mail.gmail.com>
In-Reply-To: <CAGnkfhwV4YyR9f1KC8VFx4FPRYkAoXXUURa715wb3+=23=rr6Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=marvell.com;
x-originating-ip: [80.230.83.85]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 870e0a22-09a4-408c-22b7-08d7f414e1a2
x-ms-traffictypediagnostic: DM5PR18MB1115:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR18MB11159C1BF4D9760F323ABB3BB0A30@DM5PR18MB1115.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03982FDC1D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IracEIVcWtXy1P+MESoN76pcH2DACZZoaHt+PnMNqjbMUiU/DYJGPqFI9xV/YwNancCp8JYL9Hm345rN4D0n3CCHfiQhOSo6rfjwmD6d38b/bFjveYQad7wiA2bCnJMGdJ9HqTvteCE9g7aIw8kyFRpbIs7E3oKX7QbPvrSmjIAELSsguPKRTylvoh13asyUYSukoHVRFTRrZ4024mhOSu6s26TvqqenLEvkcXvGkMbkRRjs1zxK2flva73qKrw84743mJudUBovFvsSuS7tHRZA0+gfJG+zj/IwQOH42ZiFyYBB7oYpM5mn9qQpnjyUCwyOXldxrJmKxBFXT2iIfHaX9YeCgy90GlkpngKStxwsDqsCg7N1Se5R0DF3JelgOEmz9RRxlsu+g50jF/GCIXV+cJbqZp1g/BP7BnLECMWA88gPCMuhRsQjhWEArp1Ro3ME9jzXnDaNkqjhnnd7AC0h2Ziru5q0AmUPj/WZJgSva+o5Rl0gXGr1EP/+oYh5H70g0dAuoYOT3ASxTfwBkg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR18MB1146.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39850400004)(396003)(136003)(346002)(366004)(33430700001)(53546011)(71200400001)(76116006)(2906002)(8936002)(316002)(66556008)(66476007)(7696005)(66946007)(186003)(26005)(33656002)(64756008)(52536014)(66446008)(8676002)(5660300002)(54906003)(6506007)(86362001)(7416002)(6916009)(55016002)(9686003)(478600001)(33440700001)(4326008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: UBq5DAfFheGmdi0RaCUhbiubjMUofqBTQphZtxvjgtTMU6w+M505OHHeO6xRjbrK7iJJ6WEAap9cD9IY1xpxFn91gtVxY3dmTLcspM6trrle/dC6PA4FDxeyFhbRA14fsEH5U7UjhMA12/cS0fTrrpcMNAQe5RkUrJGza1Ff2Tdn5BWNSfdDYoDhm+Nf/kjlq4xRnV8kwyH7stIbSf2H/ipdwrPX7yYkw8tIFwvAyZl72wyM2nEBsPcStmX0/iuSkhJaoX74Yy5aNp4cRJ8zin7K8W5zOXAPeMdV9JBn/8/nkDzM18HiOg/YPoJ25JDdsFbM7c/gNhFhMbXU2TWh8kHVs1CA+bwu3+u222Dz3t6NNhGFf9Pq/CwRbWDSzQmb/nPKpPhDyWNDie2+NB3QUVXTuQuFjubeOgIOF/v0eWC+Eff7O0bifRSavyRMxHm5T/XnxU9rEP09ujo35Ouyn0MJlKF2ReUcUhmIH0i/984=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 870e0a22-09a4-408c-22b7-08d7f414e1a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2020 12:31:21.7297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: us8MPvoj9+Z5kie36QTOQ96km4VWIWcFBuY3N1jS9OHGgkM0yv0s/a8xKUtql1rE/zwob4977W+6oU7x1HwXdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB1115
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-09_03:2020-05-08,
 2020-05-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_053137_157934_34C5F20A 
X-CRM114-Status: GOOD (  25.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Marcin Wojtas <mw@semihalf.com>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Matteo Croce <mcroce@redhat.com>
> Sent: Saturday, May 9, 2020 3:16 PM
> To: Stefan Chulski <stefanc@marvell.com>
> Cc: David S . Miller <davem@davemloft.net>; Maxime Chevallier
> <maxime.chevallier@bootlin.com>; netdev <netdev@vger.kernel.org>; LKML
> <linux-kernel@vger.kernel.org>; Antoine Tenart
> <antoine.tenart@bootlin.com>; Thomas Petazzoni
> <thomas.petazzoni@bootlin.com>; gregory.clement@bootlin.com;
> miquel.raynal@bootlin.com; Nadav Haklai <nadavh@marvell.com>; Marcin
> Wojtas <mw@semihalf.com>; Linux ARM <linux-arm-
> kernel@lists.infradead.org>; Russell King - ARM Linux admin
> <linux@armlinux.org.uk>
> Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts to
> handle RSS tables
> 
> On Sat, May 9, 2020 at 1:16 PM Stefan Chulski <stefanc@marvell.com> wrote:
> > > Hi,
> > >
> > > What do you think about temporarily disabling it like this?
> > >
> > > --- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> > > +++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> > > @@ -5775,7 +5775,8 @@ static int mvpp2_port_probe(struct
> > > platform_device *pdev,
> > >                             NETIF_F_HW_VLAN_CTAG_FILTER;
> > >
> > >         if (mvpp22_rss_is_supported()) {
> > > -               dev->hw_features |= NETIF_F_RXHASH;
> > > +               if (port->phy_interface != PHY_INTERFACE_MODE_SGMII)
> > > +                       dev->hw_features |= NETIF_F_RXHASH;
> > >                 dev->features |= NETIF_F_NTUPLE;
> > >         }
> > >
> > >
> > > David, is this "workaround" too bad to get accepted?
> >
> > Not sure that RSS related to physical interface(SGMII), better just remove
> NETIF_F_RXHASH as "workaround".
> >
> > Stefan.
> 
> Hi,
> 
> The point is that RXHASH works fine on all interfaces, but on the gigabit one
> (eth2 usually).
> And on the 10 gbit interface is very very effective, the throughput goes 4x when
> enabled, so it would be a big drawback to disable it on all interfaces.
> 
> Honestly I don't have any 2.5 gbit hardware to test it on eth3, so I don't know if
> rxhash actually only works on the first interface of a unit (so eth0 and eth1), or
> if it just doesn't work on the gigabit one.
> 
> If someone could test it on the 2.5 gbit port, this will be helpful.

RSS tables is part of Packet Processor IP, not MAC(so it's not related to specific speed). Probably issue exist on specific packet processor ports.
Since RSS work fine on first port of the CP, we can do the following:
if (port-> id == 0)
	dev->hw_features |= NETIF_F_RXHASH;

Regards.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
