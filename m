Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A9372BD3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 11:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fB/pQ70kqZJmpjiq5Yq8GUhn5JwxHAe6UfTZUmwXU8c=; b=J+v0XN4tjR457/
	cuU1ZJhUpqQcPqHIzbov2PT2c+HReUWbBL8YVJ6btWxc1942F42LI+fmSEQx4U7k+LRvfp/LRvrlv
	LMPsHS+1/HN1tXwoX/XxrQqREJAasnAGyReGef32dC0ikKcjQXicVMIIb5wK/889czIYTUm35l4Ot
	9Pu5ksbvj+1WoPQ0gylIGK6i0cgvjs/4btcbv2x9IDtzU/OcMEkDe6R0hDEovscD4M56Pfks1qTe1
	vturjD8iEhKt4XNTfMSUKjXyDEonDHMqyXfzjzWgfWztOKYQr2BN+h8yG3eKKY550e1ImgfCKm7dA
	IgeoOge2zeQ3L5drpPvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqDzd-00009R-2E; Wed, 24 Jul 2019 09:55:29 +0000
Received: from mail-eopbgr140041.outbound.protection.outlook.com
 ([40.107.14.41] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqDzI-000828-Aj
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 09:55:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i5C7FKAbYrUjHgKVGu7npBMi88rFdl1WT4KCSY0wfL7sNNRDVtkiHnUudrtjm0KUS1MUcH+oxWfa2UmBoGrOInTLO/ycDKic7DM4pmQsxNRQDJEplA7uch/dhpeV+ExgsVZ6FwfEpmkidBBGjSHOd6D/8UnSCmExjwkMCIRYphkqvB7fjSNT+cPw+s5hgtQec64/h+scMVLirQ5Zyg5M4u6b+nMVl4Qjv/WbwApSFdnDlqMUd6YeHA53ZbcTm7Jiu35DMW2sLopYuJbfrVaII36TNeiN5NRVficnDAzWL+RRxRdFR2goen8lOghWUd6B8XgHrnCzBs5D1Fs0+GglRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RqzCiSqhhGfCRhbKP8eXNNbvwPGWn+czIjP6QWQfG/M=;
 b=gO8NgbMuoHGDnbhTvzMUrTTAJRqC3ktPDA2g5ME+MDwuBS/coojww+FCHI4i4JNrktwGFX8nn7N6OOoEIMNBDX4JLWWFFKGpAXfg5Ij7JoPoYlRqg/qMNHmAQOxpzklO/Y1tWvoC+kcjP6iNqE/07RO1qgrBQWx1s/p7OgEDlGAiHFar5eDsDXrF/htLj4Ru0kY6FC6T/jTBc4s80VGYDWvLBcl4iCTIyjIa0acHZA0aEtRWQzlqmOup6ENUiX/gsf7H/NKoogmIa6e3jl16PsGYAPVpq6pmf5jd4eikwT84IyaA4TJ4D+mFfe8eZDGJNEdhiixosskM91CxhOWpKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RqzCiSqhhGfCRhbKP8eXNNbvwPGWn+czIjP6QWQfG/M=;
 b=JuoKh2kqgiLERZ3rO5+nQlV/gK7kTuDUSAJPf2+5G3tXfZJUHo8GKCuOzy8O5Oax4Vd2etLN4FVMgXm0i5qINwCrnKSp735alb3HJfEon43cbYF+huBxV1POHCfmyvJJ0zV8ryWexDHRCy2uPwOQZpH5sYOM+8u2gT00UPQDm38=
Received: from VI1PR04MB4880.eurprd04.prod.outlook.com (20.177.49.153) by
 VI1PR04MB6062.eurprd04.prod.outlook.com (20.179.25.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Wed, 24 Jul 2019 09:55:05 +0000
Received: from VI1PR04MB4880.eurprd04.prod.outlook.com
 ([fe80::e401:6546:3729:47c0]) by VI1PR04MB4880.eurprd04.prod.outlook.com
 ([fe80::e401:6546:3729:47c0%6]) with mapi id 15.20.2115.005; Wed, 24 Jul 2019
 09:55:05 +0000
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: Saeed Mahameed <saeedm@mellanox.com>, "davem@davemloft.net"
 <davem@davemloft.net>
Subject: RE: [PATCH net-next 1/3] enetc: Add mdio bus driver for the PCIe MDIO
 endpoint
Thread-Topic: [PATCH net-next 1/3] enetc: Add mdio bus driver for the PCIe
 MDIO endpoint
Thread-Index: AQHVQWmTb9jG7sYluUe4Xi/RkNWlU6bYrWiAgADazCA=
Date: Wed, 24 Jul 2019 09:55:05 +0000
Message-ID: <VI1PR04MB4880914975FCE9A37C4F3EFD96C60@VI1PR04MB4880.eurprd04.prod.outlook.com>
References: <1563894955-545-1-git-send-email-claudiu.manoil@nxp.com>
 <1563894955-545-2-git-send-email-claudiu.manoil@nxp.com>
 <2e3c565cacae6050656aeb7c0132736c60f9f4ee.camel@mellanox.com>
In-Reply-To: <2e3c565cacae6050656aeb7c0132736c60f9f4ee.camel@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=claudiu.manoil@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f66cbf8-cbfd-4b11-a6c9-08d7101d0152
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6062; 
x-ms-traffictypediagnostic: VI1PR04MB6062:
x-microsoft-antispam-prvs: <VI1PR04MB6062DDC94944D32E171205FA96C60@VI1PR04MB6062.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(396003)(366004)(13464003)(189003)(199004)(33656002)(55016002)(2501003)(44832011)(2906002)(6436002)(486006)(66066001)(9686003)(25786009)(6116002)(8936002)(68736007)(7696005)(6506007)(478600001)(102836004)(76176011)(53936002)(52536014)(81166006)(64756008)(446003)(66476007)(74316002)(186003)(3846002)(99286004)(316002)(8676002)(14454004)(81156014)(305945005)(26005)(4326008)(7736002)(256004)(6246003)(76116006)(558084003)(5660300002)(54906003)(11346002)(66946007)(66556008)(86362001)(476003)(110136005)(71200400001)(66446008)(71190400001)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6062;
 H:VI1PR04MB4880.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EGXD/ldm9VF7WXqCGfzDCyPqzIFdQ6YqzkQN2P3VHq/MiXrzQakKJ9wETtMs7M+6Bl+sPkF61YH7vV4U/QKjJXAmfnKmL/DKolLgADJ92xV+NsBUTATCIuS3dgP7iF/6hNQW5tgF6UJj3tKAOA/EKmPDzqkV92Gcn+nfKxCSvNQMO6U8Lk5XZ/x0JCm9N4bQOpo6yrN4c82S4I4D2I0pbx1R+FMbGhiRK/WGjy7Dp63jSeXg4+L+/sXM7ytWOkO47aB20ozqUYGiKRwiAlNF+nRR+JG0iq06Uc5Cda++Qut2gujE/8eEATejhQXPl1iDSz48BWy602S3+J7ZWingt0jiKCpF47PDYuLh8NOPVTJiS1PZ4nFmwl4+2qVYRmosggCPs4PQWFLemmBLBbNeBUAXqznSBfADxr3xgx/ZCYw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f66cbf8-cbfd-4b11-a6c9-08d7101d0152
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 09:55:05.6795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.manoil@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_025508_496020_77EF1962 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.41 listed in list.dnswl.org]
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
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>-----Original Message-----
>From: Saeed Mahameed <saeedm@mellanox.com>
[...]
>
>mdiobus_free(bus) is missing here and in every error path.
>
[...]
>
>this should come last to be symmetrical with probe flow.
>

Will clean these up too. Thanks.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
