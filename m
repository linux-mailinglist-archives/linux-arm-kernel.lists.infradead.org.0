Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02ACF1E716
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 05:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5/ugxBbVuaFc9P3w6ChXWnW1Z8wtpD/9unb9mRE1oY=; b=gaX3OFke3ptdmo
	H1sHoHaJG4XQS6/ShmV4TfMfHpZayOnZtglzllWTpoXHXXhuCbqHRJGHOWt/1XNLLHTE3SiXZZ/eE
	rIgH7wAryJ1PAGNw2AzTMUrrxxFXPkUg6ImwFkNwo16G0DggxSNymGR2TIcTu1nJZ+e26I7s3uMFH
	0DhpHu5vGhyvR7BAZpnEt0XJoGlZjjkSo54P/5WGyV3f+joz+/Q1EwlsF8DXVUXc/gG6wEz9FHzYR
	5/34lHWz+qp1YyOPUbRns0DfjTHfn9UFp7b9+8VlD1BQ6b8B0XBPfsuR8xg2rAKAkkLBZGDWg8XbE
	+3N/DHdR0PisQkytx2Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQkQG-0007DE-51; Wed, 15 May 2019 03:17:40 +0000
Received: from mail-ve1eur03on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::619]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQkQ1-0007Ca-7C
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 03:17:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hTLRSYRRE1X3lagvSdPJb6a97s0vJB6yVmf6HzlOoeI=;
 b=qMmS0hp7FnBA1IOzfcRvEB/BYbGB2TVBpXhZvng80pZ7qItcSS9JWx0G20eMri+6f7rLfOhrRcIOentWJwX3vcC6QHvGTrs4SkwiN1F67wHyxkFoZPwxAvHSqEttpP142z1/zH1oGRN+W+N+51Qj/rKtoHIHRWqcB9QzWfzS7iU=
Received: from AM0PR04MB5314.eurprd04.prod.outlook.com (20.177.41.157) by
 AM0PR04MB4050.eurprd04.prod.outlook.com (52.134.91.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 03:17:19 +0000
Received: from AM0PR04MB5314.eurprd04.prod.outlook.com
 ([fe80::3095:ca86:db25:e7a]) by AM0PR04MB5314.eurprd04.prod.outlook.com
 ([fe80::3095:ca86:db25:e7a%7]) with mapi id 15.20.1878.024; Wed, 15 May 2019
 03:17:19 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH v2 5/8] usb: chipidea: imx: add imx7ulp support
Thread-Topic: [PATCH v2 5/8] usb: chipidea: imx: add imx7ulp support
Thread-Index: AQHVCif+XZX4hwLQGESDEzGVDSHbZqZqi1YAgAD5rqA=
Date: Wed, 15 May 2019 03:17:19 +0000
Message-ID: <AM0PR04MB531442A89E7E71F8AC8DA6CB8B090@AM0PR04MB5314.eurprd04.prod.outlook.com>
References: <20190514073529.29505-1-peter.chen@nxp.com>
 <20190514073529.29505-6-peter.chen@nxp.com>
 <CAOMZO5DzqeDkfOh7gw7xQYHF1pDfe-LbC2jGybVDpEKUor+NNA@mail.gmail.com>
In-Reply-To: <CAOMZO5DzqeDkfOh7gw7xQYHF1pDfe-LbC2jGybVDpEKUor+NNA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b96097e4-3154-44e8-bfa7-08d6d8e3d708
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4050; 
x-ms-traffictypediagnostic: AM0PR04MB4050:
x-microsoft-antispam-prvs: <AM0PR04MB4050E1BEEC2D1754C0285D678B090@AM0PR04MB4050.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(396003)(136003)(376002)(346002)(199004)(189003)(76176011)(99286004)(66446008)(7696005)(8676002)(81156014)(52536014)(81166006)(8936002)(4326008)(2906002)(558084003)(86362001)(6246003)(55016002)(3846002)(6506007)(229853002)(305945005)(7736002)(6916009)(71190400001)(71200400001)(316002)(11346002)(446003)(9686003)(26005)(6116002)(44832011)(64756008)(66946007)(5660300002)(66476007)(66556008)(73956011)(76116006)(478600001)(14444005)(476003)(102836004)(25786009)(53936002)(256004)(6436002)(74316002)(486006)(54906003)(1411001)(186003)(14454004)(33656002)(66066001)(68736007)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4050;
 H:AM0PR04MB5314.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9SKF1etsmENT8MAC+uTMxoh1Ea/mKgITtQC/3x7EbC573UQaZLU6oNpy2ubY1QPSbnfLlhYxI+RTCEve8gOQUnuezR9dCnxPFvAiJChI/QHQOjlQPVAmfu4mowU1uuUCt91THfV2pzknjq1ccamMIVUVNLBIQ4WtLFJrfnal06iJQozBcubC3i0lf1/bgALdYSQTy9HM3G+nWAEsHxf7IqFoKnyt9gEM3hTqnVnsIuCf03xbWJ0UTTXH0dAPeDwURJzO0JOj6F+wnTB20tqlaOr/0qowIHGEtdezr6lXEEOvWKXtN3nTwFWuvasbXm1pH3pKr4ma2ZGon1O7OemaEv15i4ilMvjnMHrvJOZdWRaruTBh9m/lpfRurPt66xULqU5dYoVaY+k7k2vyxQp7fZVHwq1zkJYb/CA3tqdYwGM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b96097e4-3154-44e8-bfa7-08d6d8e3d708
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 03:17:19.5445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_201725_265683_7D6B69C0 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:619 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "balbi@kernel.org" <balbi@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> 
> On Tue, May 14, 2019 at 4:39 AM Peter Chen <peter.chen@nxp.com> wrote:
> >
> > Add imx7ulp support
> 
> Since you are adding a new flag CI_HDRC_PMQOS, it would be nice to expand the
> commit log a bit to explain about it.

Ok, I will. Thanks.

Peter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
