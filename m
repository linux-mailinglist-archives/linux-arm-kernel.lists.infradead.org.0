Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392B441ADA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 05:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqG3EaaMXJuIcD9a4QDDQ8IfhybongEKIerX5KSV1qc=; b=GlXklE2N0dFrEi
	kClu7NLD5gDYYdaR92c4snXfkqJyDItrzmqFO7ClxWv0wfTERRLCC3EnCI1bCrMM1zYXNmXyOPDgV
	KsIINCRBk9U/Xz+Mue7ZkqojAMo+VaBgsiVEgKnu1S1ie3JJKLKLb/2XYcRz+LJHvzieDzjjcoKHf
	vJbYcn1M1wKfUx2MHIFsEvJ0LRNERv3ns7paiSeUAmeDmJ6at+aGduT7Kywc0RZTRUFCPzLAE+CFt
	1BCufZx/hZa5JHAMvf5V7n4eY9p+T3h01OotPnwBu8ub1IYswqwCCx9LDMa2KhQeWT8BmuI85een1
	pMieUzGYMWrxUpWkwUdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hauLX-0006I4-2H; Wed, 12 Jun 2019 03:54:47 +0000
Received: from mail-eopbgr70057.outbound.protection.outlook.com ([40.107.7.57]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hauLM-0006Hd-VJ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 03:54:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j5y5vSOxQ1vFiT3txUAqQuK5J5zFuJdPc2T3Vj/dFww=;
 b=Ju4LKV+tHS/Mr1D9l17U+/wezNl4nd5+LC9UfKUrU/taSANF38IeGmQZdwfdjQZvGanTxiis2oLWh2XAGJVZoYXp90iPc5jYw6T3dGzil0q6YaP8/vG/gw6i5UZe5JUz0oViYidNFhRwZaR7A9WFFf0m/U1rvbPJmiysFrS4UXI=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5203.eurprd04.prod.outlook.com (20.177.42.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Wed, 12 Jun 2019 03:54:30 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4%3]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 03:54:30 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>, Abel Vesa
 <abel.vesa@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/2] soc: imx8: Use existing of_root directly
Thread-Topic: [PATCH 2/2] soc: imx8: Use existing of_root directly
Thread-Index: AQHVIM/DO5YY7FKnPE+TSFiseBOReKaXYxTA
Date: Wed, 12 Jun 2019 03:54:30 +0000
Message-ID: <AM0PR04MB42119EED46EECC647451A8C280EC0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190612033620.3556-1-Anson.Huang@nxp.com>
 <20190612033620.3556-2-Anson.Huang@nxp.com>
In-Reply-To: <20190612033620.3556-2-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 106031d4-2fdc-4e9b-ce6c-08d6eee9ac5a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5203; 
x-ms-traffictypediagnostic: AM0PR04MB5203:
x-microsoft-antispam-prvs: <AM0PR04MB5203D10952F9DD7538F7861180EC0@AM0PR04MB5203.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(39860400002)(136003)(366004)(199004)(189003)(6246003)(86362001)(2201001)(53936002)(68736007)(3846002)(2906002)(110136005)(478600001)(66946007)(6116002)(33656002)(55016002)(316002)(4326008)(14454004)(9686003)(256004)(229853002)(25786009)(71190400001)(71200400001)(6436002)(8676002)(99286004)(558084003)(7696005)(76116006)(81166006)(81156014)(8936002)(73956011)(6506007)(66446008)(66556008)(52536014)(76176011)(486006)(446003)(11346002)(44832011)(74316002)(102836004)(476003)(26005)(305945005)(66066001)(2501003)(7736002)(66476007)(186003)(5660300002)(64756008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5203;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bf39/5dLa6KxRZOqMNh3UGvu7fG5XoMDxAuUwFFoU2Us1VZc+ub1s6hxxB9yN8/SxYZoUPtrMNVOG68h4kfKnpPr+ILymC7KFPIpPKynZOjXNS6PQp7NegT8uhD6BJevpjfGrEx1bDMd9HdH5M7tQ+ugZwES1EBYwIZmV6/06D2xV2UjSmaxD8a8uhEsv7QwUs0Vjl34HpmFIJuS9TyPVw1z4rSe+plwY7lmN5rMv8P/CsbrUVMPbGoKegU90sNrI59bPbKHrxBBorsgL03ZjxMbBm+He0dZGiWBAgH0SHfDEGVejccdyUYg+U7gWnXIkmR9YXmTiJXrxNxPfhOG+5z0DlkKCJfuvbZ/afJI56ZZbkXT6qd8CgS1KfbrlNpT9slnqhJMoa/8QaT2VTyxJ7ETgc1NCAPnOyGncv6scnQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 106031d4-2fdc-4e9b-ce6c-08d6eee9ac5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 03:54:30.4357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5203
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_205437_013172_B926B18F 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> From: Anson.Huang@nxp.com [mailto:Anson.Huang@nxp.com]
> Sent: Wednesday, June 12, 2019 11:36 AM
> 
> There is common of_root for reference, no need to find it from DT again, use
> of_root directly to make driver simple.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
