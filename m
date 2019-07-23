Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF9D70F26
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 04:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sn9JtcODRjimKq8nOXyFe6Q8d7PdW5xWDUCmnXfsGnM=; b=MGlEt3M+ghWXCR
	3jWxv6VH9Dp/JLhK07VQ9DZhzmErz7OipG8St+uSBgsMtInpSG5mGrX4g8SEKw1o5Kf6k+b+KWEDf
	oXhDsjYzI3kodoAmakB9K0KJajBbvvv/1Cygm771U1aK37bwSpBp8sdfrlGCv4Cca1KJCrwm5JcWy
	ohdHthq/wrt/zRpCt7QNLT2+v+8ayAWRY5FUTfbK9GtmMfxC9PFSfVQax6SGtjQXvbZf2SNmZRbAz
	dUkiSGVltVjWtx6RYnD/vgLvtmWmaEcoRWevbcc2k18p0AT0WaDlap5a+7LZrbBWkPq941OMennkN
	C2Js+kx8GOt7S23OzoMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpkYk-0004gx-8A; Tue, 23 Jul 2019 02:29:46 +0000
Received: from mail-db5eur01on0622.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::622]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpkYI-0004fz-6P
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 02:29:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QaUDcH3Lhg6vpNeq8wMJfuEwqSB+fj3X9kvYaeVzWn8Hlmy9cCq4b6LQYfTwsnoyFAOYyToM9axo9TRHKC3aPps8lz7tJ10D/E0u2kQwhDMWJXvuPMN+n7bSlV2cu1MxYDm11o77OKGg5TmjkamZ36nHNYdnr9/gBQRGbA36Z81b6JgIYukGDqOfOE61pFyJ3sWDgFdDGWVPRsrhc8pIYRqSQE61KCNWDH40HJl8TENp3OI7XHtLW1rBlkzO/lEj9/l0rT/VHbcsmMMfzhHvYNHeSaSa8lbFXgsyba0wpD3q2cHI1JpgVBoULKPC3bY6cZ5Iqc8uf+/5yVaP4eqiVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=csAFbg9RZKPdvP4lQA4YktEGcFVQRywFZlOsoVSNtEA=;
 b=KLIirGRfp1cPtUrfhlv6KujH0VN77PmkP9vhmkOkwSl+BuCJQPBuffN2HLKJlX6VzyaF2v+YQqidrxV1HSG+uQIvvyr6UZnWxkP97H5zGHZk7Ezgysyk7ddB4kYoRyFlEiRSfpnQpfHvli+9tw17oDS5S7ndS9ABWWOfHhFMUEC+E06Cw1P0aA4ONvRFlulL7dsCe6jfg4M4uF6s0gxP21VERzt9gZK3Ftdt41c5LDzd9YKT7frevbcd26UNshgmt/R9ObcVKpUyEHx0pVpU809X5YQgDMT7p/+4m9KTb8lhrjMzM+WhyQh2VSTShxdY1ieLMqMLCqgkVgNyTZj5sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=csAFbg9RZKPdvP4lQA4YktEGcFVQRywFZlOsoVSNtEA=;
 b=N79w1PCrLmZLdE+FiZz+TsWGtqqByeO9cGAj5hq/OHQ6ggT882ll53va2REi5sN7w4bSr9EcGqA7guhVRBXIHQmmpK0aTFgTWn0M6BXXqeReYLsJjlui/H5jBCSEHo/TqHSLq/WhBS9VsQB4q7eBp8LhnS/mwHqAMx3hRHgUyrc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3787.eurprd04.prod.outlook.com (52.134.73.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.14; Tue, 23 Jul 2019 02:29:13 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2094.017; Tue, 23 Jul 2019
 02:29:13 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>
Subject: RE: [PATCH V5 3/5] arm64: dts: imx8mm: Add system counter node
Thread-Topic: [PATCH V5 3/5] arm64: dts: imx8mm: Add system counter node
Thread-Index: AQHVNupdpHqneu/4Kkm8mqBCnVtP4qbWCYsAgAGFOSA=
Date: Tue, 23 Jul 2019 02:29:13 +0000
Message-ID: <DB3PR0402MB3916841134BBE0C98C05ABE8F5C70@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190710063056.35689-1-Anson.Huang@nxp.com>
 <20190710063056.35689-3-Anson.Huang@nxp.com> <20190722031517.GT3738@dragon>
In-Reply-To: <20190722031517.GT3738@dragon>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: daniel.lezcano@linaro.org
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 02e421fb-44c3-4d3e-84fb-08d70f158d4e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3787; 
x-ms-traffictypediagnostic: DB3PR0402MB3787:
x-microsoft-antispam-prvs: <DB3PR0402MB3787FCA4647C4B2EC38316D5F5C70@DB3PR0402MB3787.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(396003)(376002)(39860400002)(199004)(189003)(316002)(44832011)(33656002)(486006)(6246003)(86362001)(25786009)(68736007)(66066001)(4744005)(6116002)(3846002)(8936002)(6436002)(81166006)(71190400001)(2906002)(229853002)(71200400001)(2501003)(9686003)(256004)(55016002)(53936002)(76116006)(66476007)(478600001)(54906003)(14454004)(110136005)(8676002)(305945005)(74316002)(186003)(7696005)(99286004)(7736002)(476003)(76176011)(11346002)(446003)(102836004)(52536014)(5660300002)(6506007)(4326008)(66946007)(26005)(7416002)(66446008)(64756008)(66556008)(81156014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3787;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +5ktEyUsssK7k7Ge7daFuijVb0RmXe3tnijbnNZAnWjkIjri5swNfIpdRF6NP5JjBvTBUTRfHtk0lUfsOEMf8cpIsWTVLWBP1jog2qQ39UVQoUM/9t3OudMlwmgMT7jPLoTGpdSJfNSPHYOqDSGnwfe9f0cefNOYqx8S8ycDATLFN3SQEmlErnU0eSOw3+33qnoWEvzTSJX4UmParu/kmkI81KTe+6c//IXwjxd+yFtVsTmgDd0YgNjNjgaelHPS4a3Q15i+KtZsHjHxbf0sj6pRth2rfaBlNDcpHlMUMHFXEwrhW0c2IJwpH3de0kMaS2v9Vf5O3rnFJJtQV1qabm37VVbMHyuJBvOpT7oVm1FWnuBT6uwelSWczCSFKIX5hXniCkcy4qKYnYLw3AMgqDwIPsC/zP6vTqNs2M0lEZQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02e421fb-44c3-4d3e-84fb-08d70f158d4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 02:29:13.4588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3787
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_192918_583107_ACC6F440 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:622 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "angus@akkea.ca" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "will@kernel.org" <will@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> On Wed, Jul 10, 2019 at 02:30:54PM +0800, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Add i.MX8MM system counter node to enable timer-imx-sysctr broadcast
> > timer driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Do I need to wait for patch #1 landing before I apply #3 ~ #5, or can they be
> applied independently (no breaking on anything)?

Without #1, system can bootup, but the system counter's freq will be incorrect,
although it does NOT impact normal function. So I think it is better to wait for
#1 landing. @daniel.lezcano@linaro.org, can you help review the #1 patch, since
I use a different way to fix the clock issue which is more simple.

Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
