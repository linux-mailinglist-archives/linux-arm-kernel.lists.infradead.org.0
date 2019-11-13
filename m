Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C50FAF5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 12:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2JOBY2xS1Lgd+yCXbEWQ3Tb8FOuLfCntFm9o2F7Xco=; b=qW1GczIrmn3xQn
	CuzgO2KWKX683JXLZ5NHd6d+d2D6v5ZAWjPY3lOVRPfEUlEsp4D2i9OJWU0KvnFbAOJG4xSv4bRWi
	ogU8OUiFTRReUnqEyQHrBTCxUnOJLB6wCo+U8M3ykUuPenC3IDQca6ZXNZOpGyG8f612qzcfSEJ+I
	cJ2htToHMCxpS8FTctgoaXjtn8BKbHRqIGxH4zh7cSQbKWJ3c/hJfTEhrMKmsFxl6jNg8NLehC0+A
	8sIpVERNFFtaYTTNpnLllmA1q+++rXLaGnbMykGM1NfGN0hec4M3wvrMvmC/DJ+dqohDynimNGryE
	EpU3Mituj7Gj7eAcdPDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUqXP-0008KV-Bq; Wed, 13 Nov 2019 11:10:15 +0000
Received: from mail-db5eur01on0608.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::608]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUqXF-0007OY-Aa
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 11:10:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PvWuemP+1SbfY97NdfQ9o5yV7yhnUy+97YtdR9/lYzmIQbcMGhci7to+XVqr991klRM61fuR3woBAoeT7G1+TPQRXS2onlAyE5Bn0zEMXTm3dC3PU+yB0UlSK9YpTZTt/fpSQ3CDShI38gBs5+SnhX/FqsmH6kKI2hzTbNDI2uk2l+Pk8RDXMCGl+ScjUsG0B6K7AYnSLlSx7Zr0v0zRoKH/a0zbmDr8nwQ7qnHLrTeKF0o6hvAVjgdTBQ+wq4DbPzL5AeOApF3xisIdoh9ApcVjAz1QV/lAjkWV8+ulrjefNGCjp8J3Bxj22BEyW6DBJkvOTz8SSxa4jeezM8SMkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f6WP1mkNcZ729lGe7sreHLOuNa+43yKXRzzY33f6yJ8=;
 b=LfyIH62/OCp3gQeXEtoXsINb4sH+e8ZiHKR8YvTy3oWwrc/FQl0FlW5wUTkXuE4jDa4/I1zx6HiQN67ok7GOmcx2elaJI0fB9CzQPUzobIVQsRr22ob5B7IoqInEX3Oe8ptANUnrvmG7nfxtPg8HDTY3OQRSYX6yLTECGMLyAGT2jjO66VIIU83QQwM00GC3gnCpN+Zx0QveqnsHTTkZYUfQzm+m8SNpdGBo0M4aNJO5JSpHTpIy2k2pJPb31hrsKzhn4ygKrEdViYsooyM0ZvQYT9XGVpBcgo4jSzCv4u/czNKX0Cr4Lfs8yWuWyQ3ealOlk89cKIPvyPeiIVkTpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f6WP1mkNcZ729lGe7sreHLOuNa+43yKXRzzY33f6yJ8=;
 b=YHMaVuVVRJwGL3Lc7M129Be5PPxkbBu+SpC0xgusQ8+zvDyY4MmNwyfrR6qBWYMxzj27plFXQQ7R6Yzk/7WBxao/4BL9Q/eiHZfb6/u/91peFzmtMlsyNNL8fnGO6n3CanmbjxgPWzaGkT1MJnGd6jWk+VIpnQt2tSiOmTiYR00=
Received: from DB3PR0402MB3835.eurprd04.prod.outlook.com (52.134.65.158) by
 DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Wed, 13 Nov 2019 11:10:00 +0000
Received: from DB3PR0402MB3835.eurprd04.prod.outlook.com
 ([fe80::3846:d70b:d3ae:8e8]) by DB3PR0402MB3835.eurprd04.prod.outlook.com
 ([fe80::3846:d70b:d3ae:8e8%4]) with mapi id 15.20.2430.027; Wed, 13 Nov 2019
 11:10:00 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>
Subject: Re: [PATCH 1/2] clk: imx: pll14xx: use writel_relaxed
Thread-Topic: [PATCH 1/2] clk: imx: pll14xx: use writel_relaxed
Thread-Index: AQHVmfNueqAnKxSTgEmcfZ1/aON4uqeI8eAA
Date: Wed, 13 Nov 2019 11:10:00 +0000
Message-ID: <83bed3382379b465494af6b55881e8d05e21c634.camel@nxp.com>
References: <1573629763-18389-1-git-send-email-peng.fan@nxp.com>
 <1573629763-18389-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1573629763-18389-2-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: 29f8dc66-2130-42f3-0fea-08d7682a06d0
x-ms-traffictypediagnostic: DB3PR0402MB3916:|DB3PR0402MB3916:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3916007F79D200A308218B6AF9760@DB3PR0402MB3916.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(376002)(396003)(39860400002)(346002)(199004)(189003)(64756008)(486006)(4326008)(66476007)(26005)(6436002)(91956017)(4001150100001)(11346002)(76176011)(66066001)(476003)(66556008)(76116006)(446003)(256004)(2616005)(44832011)(66946007)(6246003)(558084003)(102836004)(71200400001)(186003)(6512007)(71190400001)(66446008)(6506007)(36756003)(316002)(6486002)(2906002)(8676002)(14454004)(110136005)(81166006)(50226002)(229853002)(7736002)(478600001)(81156014)(25786009)(99286004)(118296001)(2201001)(2501003)(8936002)(54906003)(86362001)(5660300002)(6116002)(3846002)(305945005)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3916;
 H:DB3PR0402MB3835.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BZco87wNgiIrzYukUVLb5tbO/ny9Y+12WMCpDoTQ/9qa+2YLmwtjbhgieEguB/qqe16dhVQT/e8rw74AGkmVwjL/VBLg+4/hUE71tS5mumqiRpaqUroMOSJjZxdieTFgVTj5dkHcV0pgRnX/iBcRTIrBUOHjwVdSGdJS9mjax6RpyPWPKD4wF7hKehb2FLkihX9ltVU9cmFXE7ajBTQzo9mGgQ8qNFFfWAQXyROw2cp2SX8CLbme1oOmHhpM3O6gY/eG3nKcSY/Y8C9yzFO+BAgdb1MnIo+kCN82m3bsqnFASCIOvE44RAD4oSsDLUPWWVlGmH0c5HCC7wCRyT+FvW4igriHzlATvxTYtbMTGYPOFETds/OgNcru96EAadb9aUUq2wsAJ9zf+2q+RQ2gQ9vGo2QjgRXEoTdgsQp4LtJ0YUjfAN/bnZ0gwSsmXm1Q
Content-ID: <8B4EB3DD045A2240A58ECDC4765B90B0@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29f8dc66-2130-42f3-0fea-08d7682a06d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 11:10:00.6419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aKZ5YAp0pHhoWJmsbpQyytLRfk7AzEXg25zqgCZcxNYIJQRrQFNJ3+MubdHGcTuUWuX3PTg9yf7w4zXbmOUbkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3916
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_031005_447080_20551E81 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:608 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed, 2019-11-13 at 07:24 +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> It not make sense to use writel, use relaxed variant.
> 

Hi Peng,

Please explain why this change is needed. 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
