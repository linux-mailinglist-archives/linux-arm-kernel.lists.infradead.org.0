Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B281DAEA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 11:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=paZp2oA8pyfqzmEOlwkGt2v2JbbcdnODv8rhImM0bfU=; b=txwucVBX/2/SPF
	a4xtFC3nkmc+gNXkAkIMqhJn0YRPDV2/njdJaMfCm9nL2xNGykjcSWFklB0gATXaR9Fcye1g1prqF
	5KyUTr7ifn9c4/rTu2Kn/9PU7i75Jteid6ICMD/FweVW12tPyVf1akQ/iAxukBCQNJg8PXtiDjeSV
	UmAotGevn3k2N/8j1EGxr/f8TVgP+NLXT8j8qz8MDhjX1sxMXCQmk+rUeIS4zQgFU1LLpGLqjquaa
	13accNE7JTe2P105FDBYOlEYoug6qiaFtKh+J37P2XNPdQCEeeh4nfxblVfeclCwQeUIxwup+pLy8
	5MoGwYAdfHixElrALKKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKwI-0008VW-HR; Wed, 20 May 2020 09:23:02 +0000
Received: from mail-am6eur05on2072.outbound.protection.outlook.com
 ([40.107.22.72] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKw9-0008Uw-0i
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 09:22:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JOMEmdfHnlUsZnvKCcHQmNrML8g1cJHxQwSDDzbkArpDpIHniUw3Z7N8bbmla7+gmS21zWpfCzAebzqfGr6dcRJlq1dxPOe+ouJZbMkxIuNXZO5hbV1Sr7jhWvPNb44C836484cqKzYjCueflGX0apxC2izRL+pXvrs0QSBTff4lxJgJR/bbs/VdUPZJ5ZtfiQFS5umx+bAsjadYqBdcRKM4f6iJ6rsi7LZ29qsJvr+v7DDdnw3I+sGYi7SkH1S2LSyzYTtXFwFnMkA8r6Dhcbkj8Qy1xZ/vPjgDPJ9euL5gV4gBeSnkuIhOZhJatdRq1mXKqnQLbfT+omaA1OXN5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n0y5MvQVEDiJ7MEMSHn2a09wJC3gJfWvzcrY4rnINjQ=;
 b=fU1S5UhxeXyd/duGImpQRkTvfysJ7UqcG/UuVCkvF+WyI18SZQd++mFyBsvaMWj5MpP/8QcF4sptDdauhBe/66e0vYyPd19mPovc2xaU+imLCiEDfp0Cr87SZgKtioC19yOEPGfX7KF/iXYBWZLR28qGQyiSiXLFnY8E1grRsWtkSXefvveIXbWzKH5ny3y4i1DX7yJG3iCgSrLSGDTjBkMkjWlA4cvq1zuE4edENa2oSw5tFgBcxsZOah9lAohMUDKVZyXxMiT+0IWjklfhcj5KjxvhVMKSp1nAXTpWtNEmQpc+bqwUQzrvfOLDPZCWmxLHredzo8fa5EoWDxqEgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n0y5MvQVEDiJ7MEMSHn2a09wJC3gJfWvzcrY4rnINjQ=;
 b=j1ZRFRcyrAZYN6naY2bdBcGS6UmwcXfYjm4aP/ja0uPBAmhTq4dy3A0Ot8pKwGcFNWQ6QC9R325Lq8e5f3BuKr6P/orZflYY2F6zYH0DeP1Hv+VfSzSWN3ohcmBEV1zqDpt3EmWD7C1duX4CtVu25Y6nnL/DeyES9PrlcqPNeds=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6662.eurprd04.prod.outlook.com (2603:10a6:20b:ff::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Wed, 20 May
 2020 09:22:48 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 09:22:48 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop node
Thread-Topic: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop node
Thread-Index: AQHWLnGKahSSyBKEm0SO3VgjiRIl16iwl6BQgAABCwCAAASd8IAAAmqAgAATvdA=
Date: Wed, 20 May 2020 09:22:48 +0000
Message-ID: <AM6PR04MB49665F56FA9FD8331F90D5B980B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589956216-22499-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49663B517C218072B2845DBF80B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB39167A0961963B73758F6CA9F5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM6PR04MB496661BDF6B5F966A218092380B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB39161EA7B95886D56EB91E8BF5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39161EA7B95886D56EB91E8BF5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 021d004d-403e-4089-b2fa-08d7fc9f5d00
x-ms-traffictypediagnostic: AM6PR04MB6662:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB66627920669990E89D2113BA80B60@AM6PR04MB6662.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BwJnJbmLSYVbpBwASvSsGEWWDv8Kj+xZyVk5N1Hlt3DPlM623uccc+Kc3bxdKpnT4XNboT7ox+JIy9Hu12bi3//2xBEbEb1wZycYgCJPQvvAzZYHKUzJq4LH+1RDoKDjym5ZbNYhZI85odKOiJMCzC9unxGPKZ7S74qKBH5vDaMR8Z5CS0P3DjhMFHXuAc8jzWoQJh/XdQAkT4lQpLxkNB/nph10007mTU3xkw66fBntMTE5PCVx9xOIIa/6+nwXOiV88YarBSa90X2xe0qwJOJApH2l9Rxlza7/Gg9M6K30Zs7L7Z4DJTPS4+KFOD3e28sNdtHU9RuK/RgDS2wHKotU2UICCij7BTyH5JF2rMTJaqUCxNv0hww0JIFP6shmFgjFDQcS3oYg1Uckgl3NfTxmh8b0lLNIxXEgj9WvK7khB+fuvHPpysfYOyFdWORv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(136003)(396003)(366004)(346002)(64756008)(2906002)(4326008)(8936002)(33656002)(52536014)(66446008)(8676002)(66556008)(66476007)(76116006)(55016002)(44832011)(9686003)(66946007)(6506007)(7696005)(71200400001)(26005)(86362001)(316002)(110136005)(53546011)(186003)(5660300002)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: NshwA9a/4UpX0obX/bKAVk+jOG6QuWr/QktCNKKaH8KXPpWRiYXTdggMvSfQUEN0L6Hy/xHu2xmDxSrmR3tdGswqiglRMpGYbz5jaT2ypKc6dpEGOquFarOEkKxoAdp8ftlgkltc+UfqjJe+aRRvd7iec5KwoZidAR8t+APPWhs0tSRZYlm3o2cxVEJBTH4jZbvllMcAbS00CPRPxmd9eIT+tIMXJfo4NKxoosKlB+VUjy/F/VFWU1RA5cdDfocjrS15yUcyo1qQoerkQhKKPL63pePGnSE6FPxgVekAPxDaOg/N3vk5TMDq6BwXAtKxcbUnk5LH0f4m6R7GScid4obqOsSMob/XxU2fIQECE1QlpjF80ksxHDBJRiP3+E6iVMn1pbWVy1zq3pGEy1YuDhzO2MaYUjP5/u/E3AJTlh31wOM9zyu3RIkTtZf1xWnsWERXXkYasXLIjXFuhS4JwSzqa2s3Tp7IBthEacty04WmW86N8YEb2Lsz6rGFbiFy
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 021d004d-403e-4089-b2fa-08d7fc9f5d00
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 09:22:48.5531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jIppbuPyuDnSPQaCzN6aikAI/8tvJMG+SSISLt3N+m3vt2bglI/69dJKi0vIWnsalPxkxpKLpEA8KtPpkCw83A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6662
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_022253_134801_DEB9F210 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <anson.huang@nxp.com>
> Sent: Wednesday, May 20, 2020 4:12 PM
> 
> > Subject: RE: [PATCH] ARM: dts: imx: Make tempmon node as child of
> > anatop node
> >
> > > From: Anson Huang <anson.huang@nxp.com>
> > > Sent: Wednesday, May 20, 2020 3:47 PM
> > >
> > > > Subject: RE: [PATCH] ARM: dts: imx: Make tempmon node as child of
> > > > anatop node
> > > >
> > > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > > > Sent: Wednesday, May 20, 2020 2:30 PM
> > > > >
> > > > > i.MX6/7 SoCs' temperature sensor is inside anatop module from HW
> > > > > perspective, so it should be a child node of anatop.
> > > > >
> > > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > >
> > > > Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > >
> > > > BTW, I think you also need a binding doc for this change.
> > >
> > > The binding doc is the imx-thermal.yaml I sent out, it is suggested
> > > by Rob to move tempmon into anatop node, that is why I did this
> > > patch to align with the binding doc.
> >
> > That's thermal binding doc.
> > We need a binding doc to describe the constraints for anatop as well.
> 
> anatop includes PMU, thermal etc., need to think about how to add it and
> where to put it, will think about it later.

We can combine them into one.

Regards
Aisheng
> 
> Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
