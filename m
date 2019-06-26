Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E23C955D5C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 03:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBUsZsQVJ/MnC6aqc0gwpT3PLJUvoWFdxSY+OQ+GrBc=; b=FhqNXd6VGu0/8k
	/ZQwAbS8T7KgFT82G2XHgxqMe5ry22z0MD/Z/rA/3s34W8WAqknj/3PzrmtbxVYU8sOSoWymzPDj9
	PiSkC2ze564/zxq7HTm4zM59OZyQ89/W3YYyDkaxup9x8B0pyDdBCgSRl4VBpcBGOUlwJaTDFTUsz
	aDOtz8NNazOZpUkCyORR9k1NMWsanbpv/goGRUmDnwbD2ZeVLlgo8TVktnS7isMi2B8jxOGJBg4t1
	1wNSFlUVA3Sab6iWt3jYWDbN+ECmpiNzd38c9mJrVfP7Jr9yjUBZV27PZpZIT0hqWKmLrEyhsjG/Q
	ZJFHtPIwOWJueLw1sNzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfwjI-0004Ee-8u; Wed, 26 Jun 2019 01:28:08 +0000
Received: from mail-eopbgr80072.outbound.protection.outlook.com ([40.107.8.72]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfwis-00049L-OC
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 01:27:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=jHfIavMYi+FmyMgzuYoiMQH/pUffto6ViqIym1Q7U6GXW9ciyKUCCLOIP4HSktiaWvT963SkB7rSGkMPX4PalABv9omuaL1sHaiIzxWVBAR27qbrxayy6cBo3VaDTwC+a4/6mq/A7AQgZdyI6+UzUnw6Zruy2G0c5a7rOMjRNY4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=csQSXRYE+TCUqMsr28qwHWrafGyLL5yibgytYDNIpec=;
 b=ATJdsswEiZYbK8aUwbU0pExH3wGe6ecpY+F+96vGWyQW8ijKJOcTNOnJBItkKEJHr9OyBM+l0/NSjcu7DvY61HUuzEcPCUm8ROp8imkxI4MRfuSuBP0CqhoTLDzWdCCYHyso2+E+07kJ3Ye02xPOr4lfV0FgnQP6ZYVb0JUZzso=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=csQSXRYE+TCUqMsr28qwHWrafGyLL5yibgytYDNIpec=;
 b=mPQ0+WgjYTTevhbZvrBpUo3rBjkp7r5NhkpPJcmfN9fBl1HpmjurZ4diBz9OoORlLC4TPO5NrH0NBSd3Sh5O3LtKnmtrcD+/cmXDecdtFi6DLFimY8vpaKNsTyn0FBNeLEQNamArR1dmfU+XX+SA4sSEMlsqNLbc3QZhoGANdQk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3932.eurprd04.prod.outlook.com (52.134.72.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 01:27:37 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Wed, 26 Jun 2019
 01:27:37 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, Peng Fan <peng.fan@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: RE: [PATCH 2/2] clk: imx8mm: GPT1 clock mux option #5 should be
 sys_pll1_80m
Thread-Topic: [PATCH 2/2] clk: imx8mm: GPT1 clock mux option #5 should be
 sys_pll1_80m
Thread-Index: AQHVKyQzKPUFbrQbpkOHEAmz7VbUT6as1W6AgABQuHA=
Date: Wed, 26 Jun 2019 01:27:37 +0000
Message-ID: <DB3PR0402MB39164A0E42B9EBE8ED832174F5E20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190625070602.37670-1-Anson.Huang@nxp.com>
 <20190625070602.37670-2-Anson.Huang@nxp.com>
 <20190625203751.E2894205ED@mail.kernel.org>
In-Reply-To: <20190625203751.E2894205ED@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6d0ce3e-d7f7-4e9e-d609-08d6f9d57955
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3932; 
x-ms-traffictypediagnostic: DB3PR0402MB3932:
x-microsoft-antispam-prvs: <DB3PR0402MB3932AAAEFBA49EE8058FA67BF5E20@DB3PR0402MB3932.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(376002)(396003)(346002)(366004)(189003)(199004)(316002)(52536014)(186003)(7736002)(26005)(99286004)(7696005)(81166006)(8936002)(81156014)(102836004)(68736007)(76176011)(55016002)(305945005)(74316002)(486006)(256004)(6506007)(3846002)(478600001)(229853002)(6436002)(66066001)(6116002)(11346002)(446003)(476003)(33656002)(53936002)(8676002)(5660300002)(71200400001)(4326008)(66946007)(6246003)(110136005)(71190400001)(76116006)(86362001)(66556008)(2906002)(25786009)(9686003)(14454004)(66476007)(64756008)(44832011)(2201001)(4744005)(66446008)(2501003)(73956011)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3932;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SZCc37DbwxBGy0teEOvuGtwOn2LZ408rjh5tdHR/rr/Li1EpBJ8yEDP8yI+opz0Rkdi6culmGYFFijoES+RwopSoga+CTNxBeGNboPxpMJxHUd2N8RujX2tWPFxqGry4FaiCEDOY8K6J+1KwqwSpll9OxYtUDLYIG20Zjnd9g50lWzfOVMoxy/+1oNk9Ez07LUWPVzv7vkdqh0y5xBRORQpd0QOcc5XVcmRgXJ4bPNPTd6Vj3r9ZKvX5X1yIlNo6Kb6iuT/qipkijMLjjYv2BniLeTymzV6veCClA/dXn6r2IvQQyiVcutn676U3aHjWIClDmTCHYtVVNnTCTlxaQDyop+srpz02OL7lvoxRDY2obbtbRUmlkBTzSFFK9uy93O6AOX66KkHX3Y1dzVw1V27Aso3+c340MSFtW2vZueY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6d0ce3e-d7f7-4e9e-d609-08d6f9d57955
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 01:27:37.6623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3932
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_182742_915299_DCDCE095 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stephen

> Quoting Anson.Huang@nxp.com (2019-06-25 00:06:02)
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > i.MX8MM's GPT1 clock mux option #5 should be sys_pll1_80m, NOT
> > sys_pll1_800m, correct it.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Any Fixes tags?

Oops, I forgot to add fixed tags, just resent the patch set, sorry for that.

Thanks,
Anson


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
