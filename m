Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998881FA680
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 04:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpBz402F4GIJSDHURFWjJY/4WQ7wh9ppdHGk8dpQqEg=; b=mDmvxEQTtCRMmb
	7I428FHyit/Vw4RlqHlFrBJN72rNfWLRRI1yY3kBIc5fgjJoKcTg/RNhwDedcfRDE5Q/QyFSj3GAM
	MXqsqSnVYUZBVgTwHv6TtOSxzYzIL9OQ+kDWV/GKfLVcFbzUOlV3KcSwCHdEMhafumncpUC9DIzpb
	Qz3bGuTtsYQL3oISe76vFHPViqrYZhwGoX8krzSWZE8PNvyXVRLHT2eywTm15lOWXasVWpOQhWeMu
	u0A1Elq/dlVEjdkAL9TfgB4Cumun81ChSUmnqb9SNdapglQIiGLCCVoR6CxqZrAq4a8UZbfOoKY1m
	uyIVwmeg81sBwKcEUezw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl1YD-0005Eo-6D; Tue, 16 Jun 2020 02:42:13 +0000
Received: from mail-eopbgr70040.outbound.protection.outlook.com ([40.107.7.40]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl1Y5-0005EE-Ac
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 02:42:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a7GK9KGmBSsBFX7FN0ub8rAerdKTascS2pIK9LFHcXSmc+r7yel4G0vl5/fysRwjI4x+h6Alhm/Zh0u+bky1R5EucAfVRcgGQ0/sCX2DsnPjqQ9TvFEK1iia4UcWDKZ45pyadjwxNEHmEAlNrz33Xp28PuAizBImTlGRvXjYNSYEZjRoPI3wlbxbHhSLYL1BLnWbRtTzHJRFI9uk5xazgLd6TPQF4yHSKOYmAG3EZklKSs8jWxUtlflhaYjFB04nMsdmRRw4FVBJGQBAuZFdYdDNTF9pC1QZNNAlcFy/M+P9KFmo1nwu6nTJxy1WWaqthNClEQRZBzNTE5HUnanXFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HMypmiPAsTveEGOiVvKobQioltGSXI1JEw6anLrygeU=;
 b=YpatDqlQvIu/j+MysMoym0ZR/6Nyq1hCuqRU1SLaZuE7YorQ4QAYwN0nhYyuPH+aj6aEaWBTKdd+n86MaefX4N53VimlcA2MHtKwk2FUyZyAdXvkRV+Hly4YgSM2HZ7jkmfWp2zmlHsaAYnn3j+2aJshOZyUud3AEebOEeI6k/tDnMjzEjdBF66L6HqHvuHk8w1PoqEHEbmB/PY43TnfL5GaC/me6g4GsjIDrjV1O9UzCDI8YqK4tHF/DBgWMWAY5GRwrFOxTv8kK+Izp6ImKTco2Zi+jERoCN4UbZulRmvtEZt9dR/MXOOdxFhtDxRv3kbXQqifEr4Yo8QxfSmPUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HMypmiPAsTveEGOiVvKobQioltGSXI1JEw6anLrygeU=;
 b=aquANzSPqgDE0bKsTxkeNEyefV+YcrazfEc2n4OhGssUWjTSPJwfrdv4zYAV85tjS54cecSjawRw7q8/3E08+CJvKCiu42D3UUSzEdlN3Yys/EYwikT2PhDaZf6IuJvkgNzCj8r/Kc9PTQXmxNXPTK8gdmpFt6lVIfw1aP6j714=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6021.eurprd04.prod.outlook.com (2603:10a6:20b:b3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.23; Tue, 16 Jun
 2020 02:41:53 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Tue, 16 Jun 2020
 02:41:53 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH] soc: imx: Kconfig: force using OF when COMPILE_TEST
Thread-Topic: [PATCH] soc: imx: Kconfig: force using OF when COMPILE_TEST
Thread-Index: AQHWQwBNtXCfRhxtakSftquoqejle6jaiDNg
Date: Tue, 16 Jun 2020 02:41:53 +0000
Message-ID: <AM6PR04MB4966873E13170152F1F43F09809D0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1592216485-20574-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1592216485-20574-1-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e522b967-f45a-4a46-c913-08d8119ed3eb
x-ms-traffictypediagnostic: AM6PR04MB6021:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB60211BD0277B70C52650D4A2809D0@AM6PR04MB6021.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JBs8JCTSPhWoRwoteAyR0+yF5TOMz2xWEO2OoMBDEdkREDHEdCm/9Z4SJvjNlIJCc5Ix5GQxmozV+B7zYc38qizUdpAsj3pe2N8i9GtXwY8a170Df2Zmgt0cXjoWjhpebcL6jWGtPrWb69Ib5Oa7A2jf4OrJkGWlNXII37oqKYZkIOu3bWT6z/DNv2pZ3pibWJzZmYhIgUx7+atAmSA0iVfKFKZf2hOeq9rzZzgprmqbzKGOFcvK9Q/StuGN3uB/IGdFvjfPhXyivMHZ/9i3XnVeIddb25p/il6UAnJYmeJf4ya9TT7B8aVe9z6W2kwww5BUHepOo9Pm7I3veZct4w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(44832011)(110136005)(7696005)(54906003)(478600001)(52536014)(6506007)(316002)(83380400001)(86362001)(76116006)(8676002)(4744005)(4326008)(186003)(55016002)(33656002)(5660300002)(9686003)(66446008)(71200400001)(66556008)(66946007)(26005)(8936002)(66476007)(64756008)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: GrDaDjnptLy94FaK4WXhDvg19xY6FXD3mrlNgI0g3ySaF5MuTNXzFM8vroDscmFICWdv5k1z5aazZQ1wviptfVGCa33pA1D2/9L8WWPAxo2foqmoErrgiCIwmG/fTt+pRtOeDOMWREBSTpLKWtD+REDhn9odg6o6Bz/Dibf5s3/0R1IAPoEYeLN4cRTQz+JpGwn0BWyItRiLKi98c+nzhWE3Ef17HblctnQjeEDJf2g+gds2Rra0VNU8RNtUdJyzvS564yzdXYwIty7hHmhecBlgk1xAM6j3sDg8tew2iH0ElPd7sntyDqFXr64eyUWvPkbvwp29QAO6fkzHd9tMD5kpRzxjWIIWgN2a3lEAwrrquBt6GJ3U3h6HYvo9Tq03DexhuSDvPl8128F+YXCIvzRo6sgonPCfWz27PPE9i4njRBgz5EVUbF7aW0v7/fg+y8S3ysfHv77MVOXqkpfBXheNL+8dg3+i+4UmYId7J4GV9rN7Lz6JIs3BLyKT4mpa
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e522b967-f45a-4a46-c913-08d8119ed3eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 02:41:53.0195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MWmFaExJzRQ97YgPU0Tzm9eVYWTcNyhW16o/3haW8Q1PBvR+1a6zymLhBbWt7CnHbt+hCU9p2Q2U/YOhStUIDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_194205_365117_247FB68F 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.40 listed in wl.mailspike.net]
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
Cc: Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Monday, June 15, 2020 6:21 PM
> 
> Fix the build warning with x86_64-randconfig
> >> drivers/soc/imx/soc-imx8m.c:150:34: warning: unused variable
> >> 'imx8_soc_match' [-Wunused-const-variable]
> static const struct of_device_id imx8_soc_match[] = { ^
> 
> Fixes: fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc driver")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
