Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 109531F8DEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 08:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVXWdcuqdBrlj4xqNVFYfPP44lHHJ718GRycRGvqh8M=; b=pJimA6j/Bwpld4
	UGXS5Kp+e94uc1/1ON8YpX/V203Ao0Q1SzXt8U1YnExFN/xFBVdE7d+VnaE2txbB2bzdSx8HMdSLv
	685vPgSfTuu4Qbg2noC/8nEiWXTZ/XYkjnyPmw/F5ThZj/jxP3yyFpt+Ddk9NbMlkhDXG2HYOR1Ew
	qsssBFAWIE68h3mf6ugmjTBxfdNoEvphtzOJUzAx3SM/PLfyJp/M3LR7/Bba+r7pRJB4R3S/nbyVX
	ySyytNGmUzaccCrMqi8mcmDDhqK3ghMpYZyL/yrisBgNWu5urBJ7BjFa0UaeVRc5HE0bIiiO76ueP
	Zt19JcMF/dY0X0f0Am0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkigx-0001Zk-85; Mon, 15 Jun 2020 06:33:59 +0000
Received: from mail-eopbgr60083.outbound.protection.outlook.com ([40.107.6.83]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkigq-0001Z6-0g
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 06:33:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HtZbfevxDS5Zs9arBmfSlRlIk3ZE3Nfmk64+zue172B0rzrHrOIywMniFz1VECHn3LUVpvef2nysJWY89FRzrpww4pYmBOgy7OzXk/2r9JmZtrejw/BM8fcWpPlW+i5bj754SsGbpuKxsU9hwV+j9UM6SmZnMvpHSR/n/2kcEko16Ex67Al5vHG4bh/xjyimu2nd9yZ6g5gkBuSMq7t4mhC/n+kmS+vc/UtGfqPLnEJ9tx64uijUA/3VVvIQSfSsxpRM399KaaQAuaRrijQ3IirfR+0kfjDgTB0eiq/pdvMY7bEC8ACVWrBRUSzKzNTB0bC8Ne32Bg1wcDnDSE/Mxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aXfroRNA573vzufwOFVP7OPR7NqOBERM2VqA4kkvUjQ=;
 b=TIwk2tcQmwXIbgGNLNRkUh0I8MuI0vx+Kv3Z9kA8LbaljP1N9F+BwADFesxdatwhH6nLGVOxh9+2lQL2rCVM9i8FnvbwYtjmvefkI61aZbwbMZrfT0MKSC/WGWWJaDJ+rqCLfjE8tmJI1BnV0DYbweyTJeERsfWk0N+RmFbeeaPTY0PptMOmRzemQ5ZykQEFHWPj8NMTnqO2qDVonwQ05qCqOVLBUZwgwZ3Y55mYNjJ90wUG2/qYjYUZQkPvIkwmdIWHrWZAvT1Q1OZ0b7HGV51KgLBDsMhPV+JLNT76qlcnfrRi87249XdWM5M3UAIUyMJnh4HeGzzj61BXtFpJ9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aXfroRNA573vzufwOFVP7OPR7NqOBERM2VqA4kkvUjQ=;
 b=M+NYOW+AX+MEJxxcMUqQy+yRIq7/Z9Yag4P8nGzyHzUsuBRDGgrxUgBJAHwaFCR6W4O/W4ZpcwO1EpSuMOb2K9329iE87VL4yC7Ncn+KhnCwQcy7U415+eEDQTRaSNqmU4YSVEHPM2FMrZCdUB4lQAKMse2ecniDykfMWK/6sYE=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5816.eurprd04.prod.outlook.com (2603:10a6:20b:ac::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.19; Mon, 15 Jun
 2020 06:33:40 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Mon, 15 Jun 2020
 06:33:40 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Wolfram Sang <wsa@kernel.org>, Dinghao Liu <dinghao.liu@zju.edu.cn>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, Ulf Hansson
 <ulf.hansson@linaro.org>, "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>
Subject: RE: [PATCH] [v3] i2c: imx-lpi2c: Fix runtime PM imbalance on error
Thread-Topic: [PATCH] [v3] i2c: imx-lpi2c: Fix runtime PM imbalance on error
Thread-Index: AQHWN9w+Q0hrdD3Y0kW70eX0BSxaHKjX6AOAgAFl52A=
Date: Mon, 15 Jun 2020 06:33:40 +0000
Message-ID: <AM6PR04MB4966A1FD80A29BA1E63247C0809C0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <20200601061640.27632-1-dinghao.liu@zju.edu.cn>
 <20200614091203.GC2878@kunai>
In-Reply-To: <20200614091203.GC2878@kunai>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1f7f00cf-9453-43cf-5bf7-08d810f60aef
x-ms-traffictypediagnostic: AM6PR04MB5816:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5816859867C9BE2F31C92489809C0@AM6PR04MB5816.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 04359FAD81
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ynGJi13+7+qoVaQ1BuPL5pU416dIPos5KKrPoy7VoCY6qsk0LE6GpvvrwSE95jLWDCIiVwmhA5p21uS7qANG8N4pgDuSj60h7k5WLTkcTHmBgkfw2AazRpmgz/Ms3Dif7kccwklqU7YnbcqxxMa9qRHwoVX0lUiTaE0+loyOpXmPBtPG0z4sfUEHlRugfoJk1ZFBjAjYRqcQcArrGc0LYdxVPC+KRWhDomsoG546jBNhAez/ATQeUBROvmuCfNqvrVnJ87ULM6RqNukLs2+zqPwe+5ZbE1tjNRUSs3fhEzwZuJzeyV2/6as8HjazLQXZP7h7NsKWr/UO7cesoAGbAQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(39860400002)(396003)(136003)(366004)(186003)(478600001)(7416002)(26005)(52536014)(7696005)(4326008)(2906002)(6506007)(5660300002)(55016002)(86362001)(54906003)(4744005)(9686003)(316002)(66946007)(33656002)(66556008)(66476007)(64756008)(66446008)(44832011)(8936002)(110136005)(8676002)(71200400001)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: xOQbWgDDdfHgdukctlkQpW+16OTaJVaLufKzI/JXzccbhMp/cNQLkLEIK4YOq7IO4+Q+/LaOgc1JnlmvuA8cQb9Ye+51LwJc3luVpJhhPgQrR6GsIFsag+1jOPabvj5zys76Bgu9IrE2xTRKsKxfhCZDEd+EwFMAKFFpI28aIWY8yvXJlm+hcQ2y1ZKkv3cdvGKG62JpvYQebN1asjUhNQ+eSvOSnfiSab/ZRn999XFppSO3LM8YMsZkvommjZSofIXC3/QApuMlWg4sVdtiT2SuxbihiKrb1buM8Sfh6W851HzxzNoKBscsg5A6amvkNiDD6/m2NeiGoqbuhuwzQcwKaHSqHc1duwk5PMTbu6OgaS5xGwaIJYMXoB0q0sm7dsFhW2SGTsHLznwijl4/CuGh9/oWTvFMZ2ydMr68XE9nk6qRgHwrjpxWG4SQUkJJ/jwptHDwWGUun6dBghmUclh5YV7+62eHaJnTsy1tiwg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f7f00cf-9453-43cf-5bf7-08d810f60aef
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2020 06:33:40.3743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qTbP9cAGOAw091QLY9zkFceLr40n2FaHrFQTrMImZmyHG60N9X5z0FNoZ7WXnyBYSbSCRgKKM4Oqu6qwUgsUgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5816
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_233352_057504_DA19682F 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.83 listed in wl.mailspike.net]
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
Cc: Andy Duan <fugang.duan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, "kjlu@umn.edu" <kjlu@umn.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Markus Elfring <Markus.Elfring@web.de>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Wolfram Sang <wsa@kernel.org>
> Sent: Sunday, June 14, 2020 5:12 PM
> 
> On Mon, Jun 01, 2020 at 02:16:40PM +0800, Dinghao Liu wrote:
> > pm_runtime_get_sync() increments the runtime PM usage counter even the
> > call returns an error code. Thus a corresponding decrement is needed
> > on the error handling path to keep the counter balanced.
> 
> Can you point me to a discussion where it was decided that this is a proper fix?
> I'd think we rather should fix pm_runtime_get_sync() but maybe there are
> technical reasons against it.

I had the same feeling.
Copy pm guys to comments.

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
