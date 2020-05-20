Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA00E1DACF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3y22PBBhEtE5a9fhdLT/Ppiyi7+oUq4Q+Kx0xWW1ns=; b=L4sOH89+hmTpzz
	QeuxOvC//W0JZPKpf/P8WMI667HdVJBljLnj5ZGwLFS0IiEKdlbPZ2YCox1HWsBehHugU6S89AjQf
	PjadCbgpFKFOtyc6YD2PJSKwbc3nfZFhMcW3o7ZbD0jO5Uwx3nqzl20TKqcTkNdIX5p//9eDNTPcf
	gL3YjTOUkP+1YjEEZKtmJMYmi8kpsplMywxdfF/NdzypGc+1lVOnjXhm2YQ8Z1w+T3OYz04YNTAl2
	/LdzCBuZMLfajxQ973toolDVvoDCPQapMWEcJB9czQHRVCSY3vSeViIrkRTI+Lb/f9oUaUveU7+cK
	7dn36riNToIoE0WeXJ7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJpT-0006FW-3Q; Wed, 20 May 2020 08:11:55 +0000
Received: from mail-eopbgr10068.outbound.protection.outlook.com ([40.107.1.68]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJpK-0006CP-ML
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:11:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a6svDrZITWPy2aleVqJAjG2Mzk0fbEt+MtV9+0DxfuaKymovdZcX0D3L+r5WPVX5870NVqz9k2zvLybF/xb8tEJIrQ7Xi9qI4z1N+ezX29ck0LPVXxTeJWN7UiGYwOFXF7eNHPPCpEmUvm+WkxosgDwYyPYpsqlgUWyezZS9o5STtqas9xFjOapbp+JqNWsqmtrLgg2903YXTLIoapx19C5dix/GBrS+3FRSGAU5BlrwHUY3QuGwToZU4XkHVW5FxcQGNwa37bpr0pv5o1TR+zsKhzxR6p1Ofsz3E+0nCeK7vXbXuDUjax7J4dLX/9cA6r6Xa0RW9aD3enJ4AZrdVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YJrQbDfNQGzrLyEB8x9OawLS5/sK5dTyCpcvKdeACOQ=;
 b=e+ZWaqdB3GnC1psOgeeTHEqfB/pwgq3v+c8fc0ygQKWNZNNnzr6NIrfbU+VGYYlU9xzY+WyVTkIuw6HRtyjmvmw2/owXj3ow5BNUgDH1DWnvBnI0YPbvNbGpg9Nb/jaC+46TY1JieQolOJWn3dY9Pf9lHiDiaGZKkrX1ZZV8vs+K9Jibi5mAksVzksvCKXzoOW0AjY9FkQcL4sgTcGIbNYrmTy4U/d6t7ATKejiY1mLhBrcC66R2PQVKPzZitJgkJrik2jOF3ahOe5bZ7ZQ9A0PlRMBbfiTnOhBvji5OmGvZ3Dc5c0Nxrt1LU1ONUBzU5Y5SlJ8qyscE/wYXjFB7HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YJrQbDfNQGzrLyEB8x9OawLS5/sK5dTyCpcvKdeACOQ=;
 b=GvEyBcpDa/O6fvRpNjs6WMSXEhwvL7ze0l5opiJVrVo8xNfgy9XcXU0K4YINhe626oIvl9VPkLJ68iMbyok3jIT1WP5cO9IIJY6vN5WCzsCzYA/0nTTvmvsvwBxUu6Agn2Di11H9I455ACLMeEpLowrvN6rVJviRVTBzvGbC+tA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3659.eurprd04.prod.outlook.com (2603:10a6:8:5::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Wed, 20 May
 2020 08:11:42 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 08:11:42 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop node
Thread-Topic: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop node
Thread-Index: AQHWLnGKHrF20oveIESDr3+xecMSEqiwl/QAgAAARbCAAAYAgIAAAQaA
Date: Wed, 20 May 2020 08:11:41 +0000
Message-ID: <DB3PR0402MB39161EA7B95886D56EB91E8BF5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589956216-22499-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49663B517C218072B2845DBF80B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB39167A0961963B73758F6CA9F5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM6PR04MB496661BDF6B5F966A218092380B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB496661BDF6B5F966A218092380B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8d134e61-7e21-4b1e-1f76-08d7fc956df7
x-ms-traffictypediagnostic: DB3PR0402MB3659:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB365939F4C4628CE94A45790FF5B60@DB3PR0402MB3659.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CVQgYzg3CiV4gPSV4gmhryJPhTZtIgreF67/H3e7zFsrCCYT+lAPqetquu5Ln5B7AM23iG0MtCDL+uEDLaPgrZ8MVQyNpUYRT9kBPfcSzcjS20yw/EZ+h4WjT6Ri25GFtQCJerpw83foe3uXpeuj8IHQV8XeNxCfhymX1wEPBN/HPFbyc7kimOyeckEWiYgPteL0yccPdEcVKnWCbCRRTgvuVwehUYizsjsuoKzdh48ehV3KSzPS3bTzIIspYqy1iSsGr3ofCc+/pEhp3hJ4dttAJg4JB93DhoI6Nw36gRM7B7Mfnu8nAIbkpdZzID2fjvQJeqOdbmtdiyxQOcwCMx7nfEcJl7K20XJiOOtq/cjniWm2ioZI6fM9vCC6YfXovjFQeGUb+Q2KpsgpNdbvAmg+NVdiOL3Id7tdqxs+16G1vmGtrT0Adj1g5Tg5xOgm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(53546011)(33656002)(6506007)(7696005)(316002)(186003)(55016002)(2906002)(9686003)(5660300002)(86362001)(66476007)(66556008)(66446008)(64756008)(8936002)(66946007)(110136005)(8676002)(26005)(52536014)(44832011)(76116006)(71200400001)(4326008)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: cBccdhrJybQg56bDyk8QeBtILkNRBa5m/HMSZ4KFnCCMAHHF08Ao/DXSePrMGfzk6Mvq2bIOvJHmalPtnNx/3ToAKuu5ItDr2M3vW/PNm/2sSRmZvVeiTjL1t4UTHJbWqT8c+wgLD5BBIt+TYQOs7A0wCBJ/7zwUwkpUePTAa3XbTEeByiwUaixNfgouKGyjoN0eqoPKdDO6Qm8BX2b4M7UCBLjWGOwgcn4YjvLl3kCAKt4V6+Rf2ZTap/Z/j15seLlFmEJg9Yt3f9WXIFJwid5DkjEY62B3IcXz+GSj05YRBkD/NQcmJFdfp3gZbhYOiot2Qq8gQ3fK615A2C1EbKrrIPhn3iU+heXeczlIyLHN4xbcAwtOx2SKaaJEEawpNY0u2z3e8Au3zMMnJlAQA2z12+Q13LMOqPaGFb19RgTI81wDfWjftbJkA+d5PFsxxfOwREGMadgb7NHTGCpnoDvqMOZKionulOypiSScsbAoAaTJlV7cTPFMndGfEUlx
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d134e61-7e21-4b1e-1f76-08d7fc956df7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 08:11:41.9974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bQlPf4V0KdabNljw82DZOv88LzMPxJNoKCOIrXGPH05ykUwquWHJOYPfG+61mx2WbE+2UTQCqjadCWlSCqImBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3659
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_011146_731059_270A74AB 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.68 listed in wl.mailspike.net]
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



> Subject: RE: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop
> node
> 
> > From: Anson Huang <anson.huang@nxp.com>
> > Sent: Wednesday, May 20, 2020 3:47 PM
> >
> > > Subject: RE: [PATCH] ARM: dts: imx: Make tempmon node as child of
> > > anatop node
> > >
> > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > > Sent: Wednesday, May 20, 2020 2:30 PM
> > > >
> > > > i.MX6/7 SoCs' temperature sensor is inside anatop module from HW
> > > > perspective, so it should be a child node of anatop.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> > >
> > > BTW, I think you also need a binding doc for this change.
> >
> > The binding doc is the imx-thermal.yaml I sent out, it is suggested by
> > Rob to move tempmon into anatop node, that is why I did this patch to
> > align with the binding doc.
> 
> That's thermal binding doc.
> We need a binding doc to describe the constraints for anatop as well.

anatop includes PMU, thermal etc., need to think about
how to add it and where to put it, will think about it later.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
