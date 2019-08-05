Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337238112B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 06:50:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8Zbsj4QWKyhy2RKR49nvTk4LujkMYYh7EdeEkvM1mc=; b=mt5nLoJSFHBAJV
	a3S6MgZVNwkDkx+F71Uhhkqa72NWVIOvbgu/X8vJfB5MY1QJtrUqFfgYcX6sO0zvPXZk/OtduLdGY
	btf+RLnTxVKaWUHTXwX58ifTIO3MjMzCpFrIFFd3tCe2Md5vQhuslPvvKyhM4aWGSyY4Cm1e38e/R
	VLQoP5YwE4N9Vu5WcZO3nFHQNH456u94lbt2vwh/L3gNLXxqb/mMvZyZd9Fw5SecZDCsq8isluytX
	NwKncvIn//IUW0jxd/WgC2I6SNhYRkD/PMFD0b9BIjgOe4QnnJcTtXAjlz49u563fycpZJrVSR242
	J00A37T+cMzpq0WS4ARg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huUwX-0004HV-5Z; Mon, 05 Aug 2019 04:49:57 +0000
Received: from mail-eopbgr20079.outbound.protection.outlook.com ([40.107.2.79]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huUwI-0004Gr-Lf
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 04:49:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I4vI4/l7hNM78XnO/B3RK+Qpu3zU4A46QUtHHPWvZ6u9+qSbhBu5JW9CoVfE3UtgpG6gDDXFvLz1RmsM9po2soevGZiojFhnpAeCq9lgmEc0O9B1RBDQ4kzYHAnhArMmwYdCdxmysnjnPYmb1su3XF+MtyNUrEob7Kn8mhiROjNlbAlkRxGduLJ9z3+JOsFxLmBcVdG5Z65j3preECV5S/kgqflm9tspSQzX9ym0+IB8pktzFMYfaJWOMOjPotPKdglgZlMogvK1R9XqDh7bORudwRcJRTsQ/D1GgMdmuVFrhAEqA6CkZ1QLBM+gJZ9KFCrhwaLlETDDspmEiGDVrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/eV/fF87jFho6PUy7c5p8SKhe/QZ+QC9qCMhoYnTvQQ=;
 b=kHm2Y/hlLJWgS1nAykws01BgYcxxoNBbvROqTraqc0LgXksiJw45ucPeLdOJ7C/VTLPSUZZentP3a+Wo2cjdSjGfr6j4pY7r2fE0431UKK8wAfhvkdG4UJ9sJU/PvRYVnl/fE+n76+r46i3lBwK6Gy4+QbsPp/QswuF4b5/9iL5clVSIJWhyQpzz8CtDyX4sAusJMHBmRcHZG8nzw0u0vmH1euZKaJbAAPMaszB97NHhjMUcrMtQMQuQpXxondwWWuuitBK2dV0lE4+4EUiBSvcJbpvgLsik66BRwFMLRuw3xab1woPsPwWyQmkzynd2wc2C6kr1JWttkf4m+wShSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/eV/fF87jFho6PUy7c5p8SKhe/QZ+QC9qCMhoYnTvQQ=;
 b=LjVr1Eql3TJG67XzNoZ4012YEd6gweJTubdc/Ivs4Y8rgqcQ33hhZu1uQNJpXOE+wAw7w7mjOvvHRRodXZ9f0V/VHSVpd55fvfqmrKvMcLh6NMs8Rg/neWJ+qsMWTHWmYdO6WdbP7v/px4RUHLrbj02oeYDDUSfDuo9GH4BLI08=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6244.eurprd04.prod.outlook.com (20.179.35.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Mon, 5 Aug 2019 04:49:38 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::5553:29b6:d66c:6afe]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::5553:29b6:d66c:6afe%5]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 04:49:38 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Richard Zhu <hongxing.zhu@nxp.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "o.rempel@pengutronix.de"
 <o.rempel@pengutronix.de>, Daniel Baluta <daniel.baluta@nxp.com>
Subject: RE: [PATCH v5 3/4] dt-bindings: mailbox: imx-mu: add imx7ulp MU
 support
Thread-Topic: [PATCH v5 3/4] dt-bindings: mailbox: imx-mu: add imx7ulp MU
 support
Thread-Index: AQHVSzvfwQBwxXtY3ku9HZrhhBeRRKbr+r0A
Date: Mon, 5 Aug 2019 04:49:38 +0000
Message-ID: <AM0PR04MB4211FC4E8C694E1E7DECC76780DA0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1564973491-18286-1-git-send-email-hongxing.zhu@nxp.com>
 <1564973491-18286-4-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1564973491-18286-4-git-send-email-hongxing.zhu@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e816e275-f6fe-4b2e-9b0c-08d71960528c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6244; 
x-ms-traffictypediagnostic: AM0PR04MB6244:
x-microsoft-antispam-prvs: <AM0PR04MB6244E42126CC816E9DDB405380DA0@AM0PR04MB6244.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:257;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(366004)(39860400002)(136003)(189003)(199004)(26005)(81156014)(256004)(81166006)(54906003)(9686003)(186003)(66476007)(66556008)(64756008)(8936002)(66946007)(71200400001)(71190400001)(52536014)(110136005)(229853002)(25786009)(305945005)(6246003)(99286004)(74316002)(55016002)(8676002)(7736002)(86362001)(6436002)(5660300002)(478600001)(53936002)(6636002)(14454004)(2501003)(66066001)(66446008)(3846002)(316002)(76176011)(2906002)(558084003)(6116002)(486006)(7696005)(446003)(476003)(68736007)(33656002)(102836004)(76116006)(4326008)(2201001)(6506007)(11346002)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6244;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 47DbwFR7zfp1VRCe3dunRNZP0igc3MhZ0GFQ1XLM/0pGzkTHdPQSJ0iixxKwtepap8OxAdjXifb1+omUrrkogctgcp5jAs+oH0TmQ/qxa72YFVCKnC3Ki5DxgTzscGkTR/BPheyj4jtxe22fFWSadfCF8OgHJy0F+hr15gX/QSB4Ggv7mkbcs05XAw8CVnkkuZlD98pJRb63vDHt/aMIWaWkQ2cXFlUAsd6P4s98M1RiEY1f7kpOTmhkamF6DY7EGdlDY3GiedOO5RivpDO1JiKO7pgqgm7hnH3eEuoMux359KHPnDGqS7MgvWIv6L7ZLFSQZzJegwzqwz0wF+vrS8gtqAuy9/CJF+VlJOxS52LN8hdW9U1B7umy3MA46UToA/j3i12JVO7gZ6e533ZuLVfnI2U8Dv50Qxo1QrlDmOw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e816e275-f6fe-4b2e-9b0c-08d71960528c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 04:49:38.6227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6244
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_214942_713392_E1157A8D 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Richard Zhu <hongxing.zhu@nxp.com>
> Sent: Monday, August 5, 2019 10:52 AM
> 
> There is a version 1.0 MU on imx7ulp, use "fsl,imx7ulp-mu" compatible to
> support it.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
