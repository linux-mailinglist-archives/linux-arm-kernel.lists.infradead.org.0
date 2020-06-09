Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AAD1F4990
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 00:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BdV+gFv6MrsIcP/YG+np7FyyAoudfpW6QzyL2jvY0FQ=; b=LWKrW750Gz12tD
	vDwb7zRj+aJGn6AdXSVoPBPMQen5+4VMkW9J3gSsBkjcYGL3akwvYBBKFZzNZrTjWeXuuxk69/RsI
	ov/ohgVEn5Af9qOg8Nu2cbfXUBLLSFRf0mglhzb3boCgjoTyUmWlR0Ikh6faj+tyBnzvKRZC5LDHm
	lx4FJP+kC0wZUCLDUjU31LshGEEFqgxOuUqRQRFgjN8C67bq28ljOO43cn00h7+W10w/2PmY3apdc
	p7Cyj8ZzczpFL3cHoIP0MHfRvCQ8CxNHlwuOF7012LJhv7t61mScnscQstKMZ47uRw53MIymKtqDb
	+cvVz6Hf9XYyVfh42PVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jin3T-00009x-4T; Tue, 09 Jun 2020 22:49:15 +0000
Received: from mail-vi1eur05on2078.outbound.protection.outlook.com
 ([40.107.21.78] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jin3J-000096-OM
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 22:49:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UOWMrd8Z2S/9k7NncZUh3LjgvhnfJUHRLzpRyOsakMaTouzudBuZ+ZDrcrEYaHCHXRCEyA/vHMYRRp5PBBZbEE/2ZZ5Xp2vSehRNBz2tyUIAaQwXbp/lpdgukgrZ4+HxOXCEMYv8KIgrtzd2WCMyBihMp6o0Lj0Iyg+L2lnQ/rJqvkb8oIq34g0ET6CWye1niaAxyIhhTStGSsOBZCF7whQIxz3SEItmhsP6/yUsW9uOj0G7vOShOk2wDnj2w7h+TipACPvJ4tH+wZYJjuN8kkBgnLlxUyFjEWKyzkF3xqGq5iVL3el0VDNY6whMvE1tikV0BOgjpDv1X4zqzv5U2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dgZM0LGLKYuobA3Xixb2KGGVCp/2govML2blk93+E18=;
 b=DXB66+y4oUjxjAJm2b+A8rv7qO8UgxaM335oP0CqVUyu0aSpYCYhja2vSurkwRfc8u57t1B1R5M9dRFKkuUbpMVwv/UrXuoGty/H7ibC6TgsOOGK/phMz7y/gx5CBj2P8oo7NGqUNwwwKxctDVXfMBzmLN3SQyHDr0cy9ngvIfcamt7+4xYEOl/IqIkqviqmS3tBrMThby91mT5n3LeYCXN/9yS3LJ7io2kpijAaSktQK6LfFD34JeUuqp18o13rLWuzXvYSspRt4OVk6vGJwTmN5iSGsnO8k1qRBdxK73ZVLrae0AMiYl6VOSQHCw7hwpn5UnT8qPphdWAh6TfKcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dgZM0LGLKYuobA3Xixb2KGGVCp/2govML2blk93+E18=;
 b=mKShn9JQN7HrS+M/PVpvw6iTVlDjVTU6kDKmPhkbBGfGc+E9j5i1+GbfCGok16Qog/YWaYT+hCbbt3bk6xVgiM7VaXR3G/T2zR9lwdsJuIePo4iau0xij03Hov+ZeY4N0u2vZnLHkWBcpFACDd9I9WC+vBk3wj9nDcPu3YOJIVw=
Received: from AM0PR0402MB3905.eurprd04.prod.outlook.com (2603:10a6:208:b::23)
 by AM0PR0402MB3393.eurprd04.prod.outlook.com (2603:10a6:208:21::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Tue, 9 Jun
 2020 22:49:01 +0000
Received: from AM0PR0402MB3905.eurprd04.prod.outlook.com
 ([fe80::bde6:6e57:8c23:79ae]) by AM0PR0402MB3905.eurprd04.prod.outlook.com
 ([fe80::bde6:6e57:8c23:79ae%7]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 22:49:01 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Iuliana Prodan <iuliana.prodan@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>, Abel Vesa
 <abel.vesa@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Peng
 Fan <peng.fan@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] soc: imx8m: Correct i.MX8MP UID fuse offset
Thread-Topic: [PATCH] soc: imx8m: Correct i.MX8MP UID fuse offset
Thread-Index: AQHWPmGaLCVYIW/uG0iQCSK/g/UPiajQZy+AgAB5hxCAAAKcIA==
Date: Tue, 9 Jun 2020 22:49:01 +0000
Message-ID: <AM0PR0402MB3905BE3E0047941D5880ABA6F5820@AM0PR0402MB3905.eurprd04.prod.outlook.com>
References: <1591708550-14058-1-git-send-email-Anson.Huang@nxp.com>
 <7a4091c5-dc57-31c3-3445-c6b16a565928@nxp.com>
 <AM0PR0402MB3905F42A025BF12B1D6B26A0F5820@AM0PR0402MB3905.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR0402MB3905F42A025BF12B1D6B26A0F5820@AM0PR0402MB3905.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0f9c01b5-7d70-4c71-8850-08d80cc74ddc
x-ms-traffictypediagnostic: AM0PR0402MB3393:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR0402MB3393D2C82068A78B012A08EFF5820@AM0PR0402MB3393.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-forefront-prvs: 042957ACD7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R3NvqPZmj7KOQOYM7DRzT+mAdbjKx2zfjJ8vkisqqlTp01cdqAk5hnFZoBpFamOHfznIYsVorKHVoRMlsGwCoeLF3i4e9Ol7PG7oU0saPolZy3Ed2hJIXdkjHAQ1b1SBjsnn8vvJDWCVkk7PDozUeECOAcj5vd1X9pTs+qO9MdXmxQ2Z0tmFYiY/IcxwFfiwUKPEydYGa015DGwfYZvJ9kIuWRPePUhQJOXy/6Q7QflHnrVPoUynoXtBiStNTbgXQHSn4xGXtlt7RuO5fEofdxP50GeakaE5i38WvADpRyLTIpLGQjJZm2sAyah8Sn99fab8KJIxNi7x5bA6wCRNBBIY4hyPbjoAJv9UHxqtuL1n/ybqYkq/po3P6csZ9e5I2Vl5s7hXenh75K35QQILnA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR0402MB3905.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(376002)(346002)(39860400002)(396003)(2940100002)(26005)(44832011)(71200400001)(8936002)(7696005)(4326008)(53546011)(8676002)(2906002)(6506007)(86362001)(4744005)(316002)(66946007)(66476007)(66556008)(110136005)(5660300002)(76116006)(478600001)(52536014)(55016002)(186003)(64756008)(66446008)(33656002)(9686003)(32563001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: IgqWo23sJo9evQfb+vttTE8Va3TpdkfYuqo3Fs5tEGvw50NX1DWzkDwbd/eFBk1M3kMmARw2MOnP5CiJXf6NtnySS7Dg/FDnlio6i2arbCd86H14ZxNSD+ejJw1aJSKMRJAhQQHr0CchJsrNJLd2UE3epkzyzIDIOT4CFHmj3rZGqUdDm1F1wO+33/smcWVB0i7nf4KxCDoLh6K/19ovEZkNx8DUUAO2RjLvEyZS/NzC36IBVtU4CvFYjTnLlftxnMgVbREDnlYq51TyrlWvzaRkJvE2A801YOUgJWNEdVbYJw6IoPU154vTeS8YrAQtCaJJwG3WQ3usRc85w1JlyBlD+Yg82d+VGKg7DVBjHR/0AaizxCTcntdUfP7j8ceQJhaGXDXXoi4/rkORQgsVl4FN/1nvvZY1kkx1/MZDSXrKU46p1q+3Nq/L2VZi5fBfBQEGZif9HA1xHZcaJTXxfnrwH8O2UNajmY4iqaMdDIokrZ6hFbwe1aszWABulXyJ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f9c01b5-7d70-4c71-8850-08d80cc74ddc
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2020 22:49:01.6279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q+p0pO7QbI8n6TxI0CIww33IInWeOS9DRlMICPW+nw8FCEXZw6JEhl++Tv31isZRlr6jY4M/aH8SObajYDtzKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3393
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_154905_796690_1954B888 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.78 listed in wl.mailspike.net]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Luliana

> Subject: RE: [PATCH] soc: imx8m: Correct i.MX8MP UID fuse offset
> 
> Hi, Luliana
> 
> 
> > Subject: Re: [PATCH] soc: imx8m: Correct i.MX8MP UID fuse offset
> >
> >
> >
> > On 6/9/2020 4:15 PM, Anson Huang wrote:
> > > Correct i.MX8MP UID fuse offset according to fuse map:
> > >
> > > UID_LOW: 0x420
> > > UID_HIGH: 0x430
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >
> > If this patch corrects the imx8mp UID shouldn't have a Fixes tag?
> 
> I thought about this, but I was confused that this file name is changed by
> commit fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc
> driver"), so if to add fix tag, should I add the tag to point to first patch of
> drivers/soc/imx/soc-imx8m.c, or the original commit of supporting 8MP UID in
> drivers/soc/imx/soc-imx8.c which is no long there.

I think it should be commit fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc
driver"), will send a V2 patch.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
