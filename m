Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE76E6EE7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 10:19:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJXQG4kEokBIJCcPPBqzErHG9MtHugdCjSZ6ypUxVF0=; b=FwQX9YG9nBj0/s
	W03JOXjmQamUGF8YYVDkRohV52l71TzaVZFv3kabPVZpPwZZAciDZ1XqoLUWKqrEBs9LgLPJPjIuu
	vxFEEniYFz5LmKMeJ9EtfmfKcrPYa3plCQ4Ocq9jfZkvlZ+IpvVs64Osv3euoU3tWpyWf9cB3cAet
	MAWVE9FD69G88eW87fwHwTi3487/hysR9/TFri/O3byntCSxiA+ZqFFo28rARl38wk/y37pMMyVhf
	H4UQZmP0aGTeprdHH068vynK/SABgIll+FJu5na43JqIewu5LkkkNiIW+8sI/2RdqJglUpkwmb2aB
	Qs7g/1lsPJVKLM+7RKWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP1Bg-0004lP-Kt; Mon, 28 Oct 2019 09:19:44 +0000
Received: from mail-eopbgr00049.outbound.protection.outlook.com ([40.107.0.49]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP1BL-0004as-Kw
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 09:19:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pk3FAYAg5kGr5Gs8ZT4qSg3DD25ZO4mcaiFyiKOKOrEsr0yOSTJ1nXIo3Eznzvwel7Cqg5rMQ0j9NB0Z3opUGcrA0hQi9Dn17Pzg1XAtXUiLR3fChmBLjej6q543GbVW0s4J3M2Rsr5M09SGD9fKOoXDDweSVBaCDYsDHjT5m4+mqx9170EyBMAlMZarBq+TL3RiE/iFyZKE1G06w8SbEVmPm563oT+pMi6M+OytCgpVzdIBannq+P1YXj+GAgUic+wepiercQvdOwPWaSMngPRk0EeC99sw19VBwqOSothPcI3Kdk7h//767wgnucEJNJwVTPO2sCJn4mjnWcQv0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=poljYZWImd/UoV9znr9CL8qrk3e49zRSwLQN4rNYNDU=;
 b=oOd1ZPnfJef7MyO3NbzHDfU2zmIn/Sqlg3iyvJn0Sddukczu9o5jfvmg44xwUyqYyjC/tuxG77cLJgjJX3tISGgOieXql91KjyrlKkS5vRCvvD1IpNoE6MvFckLLFhPBlArN+VvUs46Ytf+Sot9PakGzXpljlPzZGAGROpO4c5p2k0gg7g4LrJgcjUoKFQxnGE3AZmBb9MrmCu/APQf9TOI9HWHC6a73C7J73olrKx4oay1e7tY27K07MQBlXKN/FMgSOMz76LM8iNrntHJqVP1ynARHddBHVGyZA51Vdz6R/70PzssezcR3Ube9Q/guS13NK+xq+z+O3v6mAvIkwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=poljYZWImd/UoV9znr9CL8qrk3e49zRSwLQN4rNYNDU=;
 b=rpikaJfoOVEFXoULzUnoF+g4dgk0FnSExpFwQ5qwewC65Ti9+gB0mWRvmanAra5hnTV2/retq+/3ZmQtsKgLnkx7q+FAHwZ6wkP2J2bB+g0OJZA5C/qE6qRNMC2wpOiHtuZhsg+tBzdkWIZ6XgoYnGuS+ooccpHysXMc3Mw/V6s=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3915.eurprd04.prod.outlook.com (52.134.71.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Mon, 28 Oct 2019 09:19:20 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2387.025; Mon, 28 Oct 2019
 09:19:20 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 0/9] Add SoC serial number support for i.MX6/7 SoCs
Thread-Topic: [PATCH 0/9] Add SoC serial number support for i.MX6/7 SoCs
Thread-Index: AQHVjT4KbRIaf/2970uItyw0KUGGP6dvxB8AgAAC0bA=
Date: Mon, 28 Oct 2019 09:19:19 +0000
Message-ID: <DB3PR0402MB3916A92B8A20D4322423D995F5660@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1572232370-31580-1-git-send-email-Anson.Huang@nxp.com>
 <20191028090846.GA16985@dragon>
In-Reply-To: <20191028090846.GA16985@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9025ac87-b24d-44a6-c11c-08d75b87ea17
x-ms-traffictypediagnostic: DB3PR0402MB3915:|DB3PR0402MB3915:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB391523D74D7C7D48D827EF31F5660@DB3PR0402MB3915.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0204F0BDE2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(4636009)(136003)(366004)(346002)(39860400002)(396003)(376002)(199004)(189003)(40224003)(64756008)(25786009)(76116006)(54906003)(66476007)(5660300002)(66556008)(66446008)(6246003)(316002)(7736002)(305945005)(66066001)(14454004)(11346002)(55016002)(256004)(446003)(4326008)(44832011)(9686003)(476003)(478600001)(52536014)(66946007)(2906002)(33656002)(3846002)(6916009)(71190400001)(71200400001)(6116002)(8676002)(86362001)(76176011)(486006)(229853002)(186003)(7696005)(102836004)(74316002)(99286004)(26005)(81166006)(81156014)(8936002)(6436002)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3915;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4FdwISIpPAbrneGlM159q4trkQVn7RJIQ8qHD10HGH3FTfoKXtk5MAMori0hxazj6sSFi8iyPR0o2fTbvlZJCWiI4PYLxidfLOxfevZ7NZp7CWBPAoCRXHtXyQm/eKMO2RydXnBLyhDQZxLD6O+q8ezvtd1RYa87P+iA7rreReiJKlg0EfKW/zsj4TkCOGWgyVJYDu8DQm+HhuPaWwNeow7by6WXbJ0+cgB3FeuAUgQLc4AXkuXHd1I2HJScDQ7REGXlA0r1z4kLAYd/hzS+BSQzyBrjDDqYRg2mXnwyt+pV8eyO9m2ufEnSBQsN1R5nhJB7oE/tmvvzEBNtTtnZkRkEkwOSRDxc6fDlYcpXkMeFoshgRk6dv6pkZiefyFR9CFjcfB4wTtbg0J9vv4s3cDQCldPbbpLRKbZqc46iouGIxwosjOWFxDeTpJRmSL+X
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9025ac87-b24d-44a6-c11c-08d75b87ea17
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2019 09:19:20.0423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ynMNG+sEp8eCQEoxfq9wpKarPGMLZMKNnKXvGMxl349JeyvRqkDXpeEryqHq6i8kViITVRLDVn1yqxIUMqy9zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3915
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_021923_726130_16B56BE1 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> On Mon, Oct 28, 2019 at 11:12:41AM +0800, Anson Huang wrote:
> > i.MX6/7 SoCs have 64-bit unique ID stored in OCOTP bank 0, word 1/2,
> > read them out as SoC serial number which can be used from userspace:
> >
> > root@imx7dsabresd:~# cat /sys/devices/soc0/serial_number
> > 0000028FF618B953
> >
> > Add support for i.MX6Q/6DL/6SL/6SX/6SLL/6UL/6ULL/6ULZ/7D, as they
> have
> > same unique ID layout in OCOTP.
> >
> > Anson Huang (9):
> >   ARM: imx: Add serial number support for i.MX6Q
> >   ARM: imx: Add serial number support for i.MX6DL
> >   ARM: imx: Add serial number support for i.MX6SLL
> >   ARM: imx: Add serial number support for i.MX6ULL
> >   ARM: imx: Add serial number support for i.MX6UL
> >   ARM: imx: Add serial number support for i.MX6ULZ
> >   ARM: imx: Add serial number support for i.MX6SL
> >   ARM: imx: Add serial number support for i.MX6SX
> >   ARM: imx: Add serial number support for i.MX7D
> 
> For this particular case, I think one single patch is even better than a series.
> So please squash them.

Done in V2.

Thanks,
Anson


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
