Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBC56C7F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 05:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r76Q756PYauOCk7AfLi4Ngv2UZZF5nqjhrFNW82WSTQ=; b=iJqlCkzahfNswE
	f7H9iIEsydoRIDHatCddj/eCk0RBBlGN1ChWHMyPcH5zj+RyFEq/Ss0TZuqrfSJhCgacPA4k+7TXA
	IngWBp73fmoqdClY4oDsqafm/Uycnljg76RwGCndurU7jitasgIeWpxfGs/eK6o0GWQrU4CuhhNrD
	CzObtKq8bdI/YM8xZZp4q4dyspr6z5XriwMHEj8S5TuymRSuJPQQoSdR0j8W1OWignV1B+q1EMNqy
	92v4zFgUtUpESYGMowcmCM6+9NfXdDb6Rnmagrh+deR7PTmlkezlxSwmR/ea0T2Bdax7Ql/zVUVCn
	dAyBDeNBuidxRj5FbTHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnxCW-0000Nl-4P; Thu, 18 Jul 2019 03:35:24 +0000
Received: from mail-eopbgr140042.outbound.protection.outlook.com
 ([40.107.14.42] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnxCJ-0000Ku-31
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 03:35:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CkgR9iqEAW5NpcG4smqRCOL5BGzDp+3mVN24eiRV0pG9cT3GBgHqGXN1tO7VIP7ur/kcGGbsWZTgufO3SNP6GKA0Pscw+g5/B9slyAiQXrP551l8+bFaJOlqQBUZO7yYhBqc0PLKHljh5/MFoDZDbsG8OPyajmnNuL7zNX8m4x6A9cVi/xUFoGOr0RmK73k4O0wAk5UhzX7YTgVfzISy8NZngeUDslq7SWxOB1BnSgOmmOQJsR6YPdnaCd69J625j18FiJRyygUvDweARuXMr3ZksSfbkhpEWaOUtPDtedrannFjTgVEcQamu5h6N87vJ9CEFxYVBshhLpZlhJjyRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LHZHlNb4ImKb33zjo9erH3xdC8nL8I4j0EVNsMzrglE=;
 b=SMMybDDO+kqw4gMlP37uW3ZdVshrybGY510jIwvZKefRVMRWrsVaUnRhoDmANfKqwsfmj10TeQ1ztz1FYP4p00C7doUmuTzpOpWDFR8k6rcG4mAamcSK/7yjl2D9m1JHrX7N3KmeH8ZnduRslqRDUP8wlrgqK+4u8yFgPE7ofoVgDv1hLUmMPRB7ghqhI236/QxpRBmu2RwcCO/uUJP3Hz13ZcI8uWgkyxCOxeZUYLs2xcxunOzxxMRBpaDP78opUglQ2rzZ61Vwx7X9sJctD28dEKPHFZ90UJpYFcWsn+3KJnkaObwWmZKDJzYMZvi1Fs0FSgTBdIHoI/cliIQvNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LHZHlNb4ImKb33zjo9erH3xdC8nL8I4j0EVNsMzrglE=;
 b=T/qauvZiIDJ/xCAe2p9HzGFLcKjPzS/FVwmbe80POj3tw2pCm3HeBHS1khDlO8wUhUdqrEibnfhwl8sqCMixCV6FDSn+7jEs2EesVKJXiqyL7qwTiHFicH/e3d+w6BATljRWNvZYqBCEQSuVnsk5oivOcJfhOfo6OZmmRo0u4UQ=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5857.eurprd04.prod.outlook.com (20.178.118.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Thu, 18 Jul 2019 03:35:08 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Thu, 18 Jul 2019
 03:35:08 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] pwm: mxs: use devm_platform_ioremap_resource() to
 simplify code
Thread-Topic: [PATCH] pwm: mxs: use devm_platform_ioremap_resource() to
 simplify code
Thread-Index: AQHVPQnp5eWkyfCnPUOOHDKzmqO/vKbPuWDQ
Date: Thu, 18 Jul 2019 03:35:08 +0000
Message-ID: <AM0PR04MB42116F0753C9C6A619A2D8EC80C80@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190718013205.24919-1-Anson.Huang@nxp.com>
In-Reply-To: <20190718013205.24919-1-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd5b1787-6ca4-4a5d-1d48-08d70b30ee7e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5857; 
x-ms-traffictypediagnostic: AM0PR04MB5857:
x-microsoft-antispam-prvs: <AM0PR04MB585769C41BAB2C773EC3C74280C80@AM0PR04MB5857.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:446;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(136003)(396003)(39860400002)(189003)(199004)(2501003)(66946007)(76116006)(66476007)(478600001)(66446008)(64756008)(305945005)(55016002)(11346002)(14454004)(9686003)(52536014)(25786009)(6506007)(186003)(74316002)(71190400001)(229853002)(558084003)(26005)(71200400001)(102836004)(6246003)(5660300002)(53936002)(4326008)(110136005)(316002)(7736002)(68736007)(2201001)(256004)(86362001)(99286004)(476003)(7696005)(44832011)(486006)(76176011)(446003)(81156014)(8676002)(81166006)(6116002)(3846002)(8936002)(33656002)(6436002)(2906002)(66066001)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5857;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: A84BvW8Xdot4HuHsS2AfsGmAph2GlEqD9F1wQJzvoPDat2gSOTqqyk46GcliZo5/4mp7PGyTimyooiyDa6bNr6P+Vj3dXkclgtpUm7A4EJfLf1avQlbx6IdVuP8CcRZcsZ6llf74W0IAjAphwI3iJgFc5BRjURMTyx8KmamPO9vWVxPuQA3CJTUSU1kpnz6TdIdyrS2JVBochlmlrzODfQd7cYmEu/5N5waQEiwCoXCunQzrgPvr5CrVLtKD6qOegzLDWk7F9mLlkwGDCrEZehtEUakwmwGAgJcfZcpgBbtbObwrPmaWcbOtZOe1yPcxAU3RQdy/a/DWP+lC02RUgNA1jjut8+QuCPvqLQd+q1J0SZNetWUpXKv+bA2kgXGoIF47ioEbn6TTAGAtI56Qik87ewNawMY8467EVTm6c9s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd5b1787-6ca4-4a5d-1d48-08d70b30ee7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 03:35:08.2713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5857
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_203511_141749_EB750BC7 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> From: Anson.Huang@nxp.com <Anson.Huang@nxp.com>
> Sent: Thursday, July 18, 2019 9:32 AM
> 
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to simplify
> the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
