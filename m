Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCF010C829
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 12:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llj15llJMYDz0f3OryDxpQCc18UzpRzOQN6//FbkmTY=; b=rExcVb/w3uIISy
	sNkIvb1z44Gw9h9ecehybwIhcyl/XGTWikc5CM3wBs2ETLS5ovdNmkT2A/ECwkH6WMpIv/KyDahnf
	uXZX0H4PGK31gl2ok+eA2Z+a3Q+tL3lJg7/STdmFhLSVwsIfFua9HDZUtFO8sXzKYP4jnoJLHoFFA
	/7083cPYejXtCheqBGbGq8XA2s9nRALTjwsATm4jDBouNSVFsWxkyXKrLa2HCPZ0cKbBFwaNt5MeP
	uGG3ptLsvhkyRyupviNkC3fDQ21+U7hdFwqLU3x1nggg4JUhm/fIGDDYBAubmg6cqMwfPCnJRGyBC
	Hu6ibUinEnm91uyitRiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaIGD-0005yM-AJ; Thu, 28 Nov 2019 11:47:01 +0000
Received: from mail-eopbgr40080.outbound.protection.outlook.com ([40.107.4.80]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaIG3-0005xL-6m
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 11:46:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PE6MCtsm35DZAOxmNuD9wNcKhCAQrLaq2s5Y51yW/PNOsGob3Cx42HbDcnLgXgR/Xs0eKJwdlzuSRMcjZIJYqHyhDaaGmyxvEww7aV0I0Y0IUHAktWvxYTK67yYD0l95GTRHxtXOrg3uvRuHdAHv3r2yLiYgQdp+1loOGJX/UMoS27a6+SfDjdaS8Ls30QBBV8LvCQA4KrOeia9NTQQpQeiGM1H/LADWkNY3RbjjacwUb6Wda1A3L+PwTOW9aK8UtP1aQK3UJqF8IL46/PxnebUB+itIl2mX9Saj5fsQWtmm4c7I/nP+HPc9scX+c+MOxJBx/2veU8SbWIkcVwx1Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nkug4S0WjyWhtIATqVSRIuKToZSTKea2yXxxN3co034=;
 b=F+EM57BS3OTlpqTcV7HjctrIp3rZ8oYlFRUK0heADohIK0zNtRvWNteXI5yVF29uAxhK2BcEOjR3z8pAdO4O3T4BpuLyI2eEE8FM6VZDkpadfp7zZtAQXq2Y0fYkeDImnRF/P6xSy02CpNrJysoMQpLHpH48a8M/36oZhTY6iVe9o0pLSp24w5xkmwuVUgIeqU+ZMls7dzYSR/51yokn5fiqJfWOAFzXDkeyhvRHKoSk6MUHOAuBMZ42+RJLDcY6NUjbxEMnikEUJ1DN4AVfIQ5yOGgrrhn8TdeHELBk1zePbkMX0RDG/OGLG9S1rHVmAw+Ks4FOXiSstm/KR1rzXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nkug4S0WjyWhtIATqVSRIuKToZSTKea2yXxxN3co034=;
 b=AkXyVH6hR3aiZfHsHEc59g7EJWZh7sinr/yu6SelW2xiNHxtewJ7n3Y7ldBruVpfqq0QskKWeyUS91R4NBwYC4EN1SdBMdj2qb1DEHZ9ctHm7IVnvAPy4u19nOxAK5orLJmyELFNvVPk8VACgj5irlJsGS+eLpu9ed9oR6DEfpE=
Received: from DB3PR0402MB3835.eurprd04.prod.outlook.com (52.134.65.158) by
 DB3PR0402MB3690.eurprd04.prod.outlook.com (52.134.70.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Thu, 28 Nov 2019 11:46:47 +0000
Received: from DB3PR0402MB3835.eurprd04.prod.outlook.com
 ([fe80::3846:d70b:d3ae:8e8]) by DB3PR0402MB3835.eurprd04.prod.outlook.com
 ([fe80::3846:d70b:d3ae:8e8%4]) with mapi id 15.20.2474.023; Thu, 28 Nov 2019
 11:46:47 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "l.stach@pengutronix.de" <l.stach@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mq: add missing SAI nodes
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mq: add missing SAI nodes
Thread-Index: AQHVpU9/qaHQ97zK9kWLFSNZyy0BHaegeGiA
Date: Thu, 28 Nov 2019 11:46:47 +0000
Message-ID: <25f2c1ed14116f70ab5cdcf2223df798de8bfb34.camel@nxp.com>
References: <20191127182127.1204-1-l.stach@pengutronix.de>
In-Reply-To: <20191127182127.1204-1-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d5f0147e-5d06-4506-6c87-08d773f8a67d
x-ms-traffictypediagnostic: DB3PR0402MB3690:|DB3PR0402MB3690:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3690D408C4E7D808F8DAF2F8F9470@DB3PR0402MB3690.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0235CBE7D0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(366004)(39860400002)(376002)(189003)(199004)(2616005)(71190400001)(66476007)(186003)(64756008)(14454004)(558084003)(6116002)(4326008)(66556008)(2906002)(478600001)(11346002)(71200400001)(76116006)(76176011)(6506007)(66446008)(25786009)(3846002)(446003)(102836004)(44832011)(26005)(5660300002)(110136005)(81166006)(66066001)(86362001)(316002)(54906003)(81156014)(66946007)(7736002)(118296001)(305945005)(50226002)(91956017)(8676002)(256004)(229853002)(99286004)(36756003)(6436002)(6512007)(4001150100001)(6246003)(2501003)(8936002)(6486002)(99106002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3690;
 H:DB3PR0402MB3835.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IZQmtDoBwQEO8PJ3lBfF8lIkXznb+XD9i0riQDPvQ8xT7zWAa/acw/RnaS/YBNWIrlQ5mQ2SRB+Gp/4AuYQm0KBYi5TMMbXl7B2WMCVo6jMGR5G3z34lpv/t7Um/GjIQUCVAKr39nnZlG41kVzGdo1zWmqlOg231FG5WnSY/dUPAfKHuC5fqfnOmy5T99cBgomZOyfaXRPMIA92JusH6wg8dS0JCfsqL/NVvxTF7lpw5mpZzehxCYLK0IOmLbdkRFbbuWg52LeBpEC0/KvFcmFXNnto5tJBj52IKAOnO//dTlDdAhRt4WHBYauAWQKxTGCQG2AJrIyUZjaWha4fkHNWzgmrevq6VT9qq35wBzMq99Uhe7uvgVYcQVd5qNmFj2dsyWltG49W9jIuJxsUFEaHK4M9Hk9BY9hkwJyGaE2EM5C37YGMPrBptb9o1Rxdj
Content-ID: <9631EBCACEFA4C4BB2E29DF7248E9670@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5f0147e-5d06-4506-6c87-08d773f8a67d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2019 11:46:47.6197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t/IblFnGgh13ZO0lkKWXQpbviiRwBAwNtfvb/xu8ot3YI6SZe2XqS0bx8v4CZ+5B8EAY+HvOFaMtszy5zk3W6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3690
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_034651_339246_8FAB1FA0 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-11-27 at 19:21 +0100, Lucas Stach wrote:
> Currently only SAI2 is present in the DT. Add all the other SAI
> instances present on the SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
