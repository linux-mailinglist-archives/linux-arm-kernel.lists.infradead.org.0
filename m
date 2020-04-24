Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADC51B6AF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 03:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTa33j99Ytwjhm78ytASwZGGWxDHJKWc2BdyZ1C4hGk=; b=jb915Aj0F5JL2X
	gF9xDjusBCdqEbtPHPRE/lgZWxz8DZzQr6ybZrh7SQayGnvO2b0VffZxfuJKvtcspl2ZWnEWEocUx
	WP+y/KWFuVtcEjrUdYx0Oegyr6g8NQKuyo1iScQX6hPPJZiY9RoFwrIMeBbS99Qzp+T6GbRtxjg8C
	mlx+H514AysMbwoPLa1iiZBKR1JB4xA5i0QnWOraPBIs+fAccxMNbjGc5aBZfJ0PGXof0kg5tisW2
	1NNSicTqbLsDvwiTTj/Qwhk4m7l0hk9i7Zk+W8TKPavfkBRv9LQhFpRgrlOyf7N8yBDEN6FCjjfg7
	QEBkfqOK4pEdzV6h7KdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRnSN-0001K3-RJ; Fri, 24 Apr 2020 01:48:43 +0000
Received: from mail-db8eur05on2077.outbound.protection.outlook.com
 ([40.107.20.77] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRnSF-0001JS-Su
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 01:48:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SKglV45DVe+4sbB7NneZ+3WgOdYTLmmvGZRdJaChFj3cipl9LqBjl6pt72ndWMRlim2ll9+5d7va3qlvM1N4NRh02CputuwgBeTtvIqqP6sp+9sYRtnK9O8PmbbyT1i+1w0NP7W/0SrV7twGGK9AqKAzlcTQDWf/oGUxe/hs+3K2YKZCyrnCuLAWSSLkb80kwSNEiU7Zs6BoQ+0f+2edM1Dd8QUxHP7Ckx1RVUlKefEYeuUtzzpIaDuikcMjVInCKzTEiQcjAbw0+2J8we6+1YhTZIYa6sx0sBbnjW6PilHIOiAm9Ekc5Sll2eU+juuMgXgK0FyexwjRWCbFzWXCNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tAdfC+7//SVsOeukh5qKLzMjhoNGwMUIAErC2qIPCzU=;
 b=WUNNlXk/bWsbQ6X9TpTgN2T/WQksUZGeVtu/fR4qxQ1FBjg6g6dwuiPhkDXG8mIctqx/TIMcmznDadtf2UxYUYOv5jGcDrmriM4RKDlHnS7Rv9AaXaLXZ+I5lTBhSk+UJD5vSyGPR117jDgncvoA5mliENxGiCnEpRhKMTPrC6Ztii9tESalB6ZMbOXI7b4NvrRPfSNe16A+LqJsxlLgbmeq2Tkw612N4yUvpL9MhQvjGFMzefkbiiVk+Sh+rWtmcLMj1/6jYW2ocQQUmU/DlE0poV70b0/U4Zcbn76+FOj5fDdeO/z/Svw8Rbd5Zjs+E1RvziwpFUS4XD+/wCfJbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tAdfC+7//SVsOeukh5qKLzMjhoNGwMUIAErC2qIPCzU=;
 b=fnuAxhYKHVR36OCEhNky6295UGFS1lAQKAzws8n6sPr6q17ECtrx4gydWDSOJKgn0j4/77DasRpuYRuX5HdXJlAxPG9oO8GdPf9gcOxmZuErUwPdoYwxijS+2HSvaZKVpdO+vJRoJQbHreDDXk+6dSgilBv2PBDzULz1V9QW9/w=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5621.eurprd04.prod.outlook.com (2603:10a6:20b:a6::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.28; Fri, 24 Apr
 2020 01:48:31 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Fri, 24 Apr 2020
 01:48:31 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "linux@rempel-privat.de" <linux@rempel-privat.de>, 
 Peng Fan <peng.fan@nxp.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Subject: RE: [PATCH V2] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Topic: [PATCH V2] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Index: AQHWGYYRe2oEYWZQzkWEzy9+aCACI6iG28YwgABuTwCAADcLEA==
Date: Fri, 24 Apr 2020 01:48:31 +0000
Message-ID: <AM6PR04MB49665B1D0657ADCCA3B10FF780D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587656148-24581-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966AF54A95ACF4F33634AD080D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916489B8ADCA1F487F7A748F5D30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916489B8ADCA1F487F7A748F5D30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0dc484e1-7ccf-4931-d2d4-08d7e7f197e6
x-ms-traffictypediagnostic: AM6PR04MB5621:|AM6PR04MB5621:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB56213D28109A966B46BBDADD80D00@AM6PR04MB5621.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:655;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(366004)(376002)(39860400002)(26005)(33656002)(7416002)(2906002)(44832011)(4326008)(5660300002)(71200400001)(478600001)(186003)(316002)(64756008)(66446008)(66946007)(66556008)(76116006)(7696005)(6506007)(110136005)(86362001)(81156014)(8676002)(9686003)(55016002)(53546011)(8936002)(52536014)(66476007)(921003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Kg4i2WXkz1dmPgwZtthLn/YFQr/Z8kPWuW+C5o5LY9jeaP3GO0fn13qa8HIq8Cuaz2UDsM5v2hqBiOVQN3kDoVIk/p/YmJfxpfk6Pg5GnnfA9CTdhgK42S3wnZW0MTxoQASrE9O5iZ66fqc7zJoYOt6kFydnw6TVuy3DB68cg8qF+HMCNNnmcQN60KVhjZ3ZXz8OCAcLDVw6sCWAANfuFxwkpdbuLKyknhvWvX7sh3F0/IGrrOSm9ib3eJDMFI+dKCCdfgULtxjc7Y3RA7R7dgtHaVVMJRasbQlbwwtd7vs0zTSxSMS3Mb+WwmbclVc+PsNY0GZr002t63mnW4H9o9En+zM9RIkstIDx9Gzk3ldsjk9nMMCr9svLN7a+Y6naRaeR6igie0uQUymctdE2H7SgSJ2oIGfmm89j9rdU5c6bAc61uw06Kth7dc714lHsOP/pzNEmt1wmWNHpjsOjB8uMtpU6H7UmSzKqaICkIDc=
x-ms-exchange-antispam-messagedata: MHPLN5rnmMVKthnhv52l7NOTMQx98jOOYChF0d9seHaUdcZg1+afL/aJlLoUc4BZOxnZ3qzx3NL9JyEJi23fYi6j43+rn82UH0JjmmzNgSL5XB8eCuJvtLAUakGY5O03lZvrq5Dmu5dzr3s4a/m1MQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dc484e1-7ccf-4931-d2d4-08d7e7f197e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 01:48:31.7162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gabms8SEZsFVJIQYVA4nHJq7R+r3mQhMewOlkC8hlaip8A3ut5M17fH3S3Z/PWRhWJhiqHgdbYEOWGoOKBIcOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5621
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_184835_938701_64960586 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <anson.huang@nxp.com>
> Sent: Friday, April 24, 2020 6:29 AM
> 
> > Subject: RE: [PATCH V2] dt-bindings: firmware: imx: Move system
> > control into dt-binding headfile
> >
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > > Sent: Thursday, April 23, 2020 11:36 PM
> > >
> > > i.MX8 SoCs DTS file needs system control macro definitions, so move
> > > them into dt-binding headfile, then
> > > include/linux/firmware/imx/types.h
> > > can be removed and those drivers using it should be changed accordingly.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >
> > You seems ignored my comments in V1.
> > Usually we'd better to keep original author when sending patches if no
> > fundamental changes.
> 
> Here is the details, the aim of this patch is to get rid of below patch in internal
> tree, I did NOT check the details of internal tree and did the patch manually and
> did NOT check how many patches I need in internal tree in order to make the
> build passed. After checking it, looks like there are 3 patches, 2 are from you,
> and 1 from Jacky. Since these patches need to be squashed into 1 patch, also fix
> minor comment in code and improve the comment, so, should I put you as
> author or Jacky as author??
> 

As there're no code changes, for such a case, we usually keep origin author
and add Jacky signoff and you signoff.

Regards
Aisheng

> commit cb6603999367aeae57004638a4b8e43ee618dbec
> Author: Jacky Bai <ping.bai@nxp.com>
> Date:   Mon Mar 9 14:41:44 2020 +0800
> 
>     thermal: imx_sc_thermal: fix the build break caused non existent types.h
> 
>     The types.h has been move to the dt-bindings/, so correct the included
>     header file to fix the build break.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
