Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF74ADA68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 04:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tZB9r0FpJvUrLmSaALSY76fF8MaFMjttYT8Yu8wJNM=; b=uMHrWpt9c2HWN8
	UNUk7f7AvRdUsrudF41s9WyXJEMkgtZBm9AxtHavrXfW/B0IqTuo3s9NhAMSnO4XbplLNRzPlSbup
	0TVOTfU6503DA0fF+IT2BbW3NQNkG14s6sxUscs54DIEoSYbhpS8qHlrtneydVpL2LPk896HhUBiK
	0CPArBqH83v+a3WSJ66fS14DYZJqx9r1Lb2E7ozAE1yG8eSFeJUT00aFaS1qPeRC+4KYMO5aEUY7C
	KrBdFHlae59cJ7M6A5YVOhyqPwZvjK1RnJLFUsIyZ3uLTAtKr7QWWUEz9yrOfZHxsZR3X01vrWsuf
	5c9toTgByb5IE3u0FE2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKvoj-0005o0-AB; Mon, 29 Apr 2019 02:14:53 +0000
Received: from mail-eopbgr140070.outbound.protection.outlook.com
 ([40.107.14.70] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKvob-0005nC-5p
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 02:14:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQDiwrLbGIW8ItErakXpB7jtI5UpewNrvEOfcniSTQ4=;
 b=L6OdGuIp16uSa6V6e5dyAcZGF+TtzLp0w5EEg6afHVurKqigCU9sRZGL0cjdsBaXRIbUisGjMYbfscA60MqlzAhROiOvJ96dLWljUOQD9B2LOPGQ6CSKj5D87S7lGNJWXuG4pKGKnSSZoGHIkiEu0JM0AdAZDvbjVkfopITNmXA=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6068.eurprd04.prod.outlook.com (20.179.34.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Mon, 29 Apr 2019 02:14:37 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e%2]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 02:14:37 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: "S.j. Wang" <shengjiu.wang@nxp.com>, "lee.jones@linaro.org"
 <lee.jones@linaro.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>, Anson
 Huang <anson.huang@nxp.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] mfd: imx6sx: add MQS register definition for iomuxc gpr
Thread-Topic: [PATCH] mfd: imx6sx: add MQS register definition for iomuxc gpr
Thread-Index: AQHU/agjfPz5ks/OzEakw7KYMflrHaZSZf3g
Date: Mon, 29 Apr 2019 02:14:37 +0000
Message-ID: <AM0PR04MB42117B7880B6FB6A4E9B104080390@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1556445161-29477-1-git-send-email-shengjiu.wang@nxp.com>
In-Reply-To: <1556445161-29477-1-git-send-email-shengjiu.wang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 562033d2-8a84-42c3-f8b6-08d6cc486dfd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6068; 
x-ms-traffictypediagnostic: AM0PR04MB6068:
x-microsoft-antispam-prvs: <AM0PR04MB6068173BE195225896C87E5B80390@AM0PR04MB6068.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(396003)(346002)(366004)(376002)(199004)(189003)(25786009)(478600001)(3846002)(33656002)(558084003)(71200400001)(71190400001)(8936002)(81156014)(81166006)(8676002)(5660300002)(26005)(186003)(7736002)(4326008)(76176011)(6506007)(7696005)(102836004)(11346002)(446003)(14454004)(6246003)(44832011)(476003)(486006)(74316002)(52536014)(66066001)(305945005)(99286004)(97736004)(53936002)(2201001)(86362001)(55016002)(2906002)(6436002)(9686003)(229853002)(66446008)(2501003)(76116006)(66476007)(256004)(6116002)(64756008)(66556008)(73956011)(316002)(66946007)(110136005)(68736007)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6068;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 14Sg77AxQntUk0DZnyjKN+UgmwIRxrjZv3l0f8dDWg5kYJzDs67ICY+z+OuM4f64Lfs2hSwfNMZ4ay9ZsA3ezX6mU0UDKiEIhNqjAXdPXNLo2hbUCxYg9xVRejc3waidyVXAkdAOOoaFF6Jjv6T8WWWDX2PAYxX9SzAnaktNQ/5Htxcm2UjemgQ1dP0gVuzZASQnQBZjYhqr6KM2sI+oakGwmyHsvGLCJsM5vKOKVWpBVvaVV0NNbncU3kyXMq+9Ed9krtZxeEsHVopal5VQsSP1eTvFWHsBPlWCL8JzV6+TFrTq/jPvSkyN7jP3Dp+A93FoH6rl3zKgN/ifs4hRweXbxaqsHjCg1N3MCHO/H4p0W6SQGBi8E57QYgcTXcmqpselciKTI3bpXT4zONd9rxLVNXT2fl4zX2AcBUs5Qe4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 562033d2-8a84-42c3-f8b6-08d6cc486dfd
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 02:14:37.2735 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_191445_299495_00A6E4F1 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: S.j. Wang
> Sent: Sunday, April 28, 2019 5:53 PM
> 
> Add macros to define masks and bits for imx6sx MQS registers
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.cm>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
