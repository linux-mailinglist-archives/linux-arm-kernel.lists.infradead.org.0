Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CC91E423B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFZgeia0p1Q99pZu4vVBppKoCBM6mp0uSuCKSXf2hAo=; b=dsXcjmsLHaqIdU
	erLwKhIAGqVpwvZwVpt5XL452NEOO2ckRoGqDZZXicNOacAc/k+pzHVPrNzqJQxcf7DibhlyenhdJ
	w70jrskcYDsOn2bKO1TNjRBByosK6AQcFIYzLItS3vKHyzefxYC/W+R9ujHVJn+fND8PgffD/jOvC
	pz01N5c/bcyElBlW/odB9IiofVoNAE7XYllLp30TPiG6/9wmfCdOSCy7G8XDE8+LgNyGts0iUgGWL
	FPwKrp+zjFLC5WIDrPfFQcO7U3hrwC1vTwbwVaQqEZfcJrt9p73nHlEsPxnFS8P9hXW2PDjt8mh2M
	UZqMi7iXKxrZly7QLyqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdv8w-0002GB-8t; Wed, 27 May 2020 12:26:46 +0000
Received: from mail-eopbgr150049.outbound.protection.outlook.com
 ([40.107.15.49] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdv8k-0002EZ-1Y
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 12:26:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gO7INjzKlkYs6xHM+hpyEtVpRiRMg0e7dv+ryw7II8bs/kV3IAccfWarXGn9My1kGCNk2SCcpP0AljkqUYM8AmDSPRd9AknrF3fkwL3kcmeb1CrE/qIvX+MAYNAOPedWxx6hxrqObJlYnILkrkzlnoF2j9JI9LPs4OIBODF0S35Jg3lpgKlunYyX6xuu6SKBb/QpHzbD2vuMXRDKmC4tSFdvJkXbyhkat1O8+EBluSibzcgkk1PPZEtf+Pm9tWuYYpQCBoZjYJZDPqreDgvfAJ4p2pCqO9JPRQD1z3yV6PUIl8gjdbhXReBEbmFESuCPRZ9H2XG1NgdRZYxZUZLhxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zWJqXs6b+E0o0I1cBRPpymP/Sp7WkEjlf7y3u58/8/8=;
 b=Y6sZDqaF3qghf91rc6Nnkr9g7v/4QJHtJ6yiBNduj6IaFrnfWveh1DA7tfgjKV0Fh6Hfte6Y3W6/Ja3oukrORpiiPZSt1dCCgBc3gAe6blMpxS7t5rFiwwHk7fykYqlFWifjHovadwWQU1glxct+pzY0MVSL2h+KQ1zJuEyyCaI8tv5P7No1qh+wR3KCWWNiFXooD8uvDSpHn+yE9/VG+V5zjhtYp8+VJo9bhmYF66iI4cCCF9JvjsFZFZNIrklH0p9vHdizg8Hh1+tNzZ7x6BIhlxCrmQvZM8CypTRRicjQZoPfll8/W3K+4qfN3vf2ycuyBf/ndNBek+DWmTT6Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zWJqXs6b+E0o0I1cBRPpymP/Sp7WkEjlf7y3u58/8/8=;
 b=jModZNMcw38dVv4ltPEFCP++x+QqK75csXpbA4IfesOCLDL30SyrkSRHbI0H2GN1OS5eMTV09gFpTrcUfT6Mm7t5HcaZBLTEClEGqZ8UbuK35s8rsyc118h33KXP2G/Q1An9zw7bAXR64FXSrVr+MmYO2O5Q75PUljAPV4bTMPQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3868.eurprd04.prod.outlook.com (2603:10a6:8:f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Wed, 27 May
 2020 12:26:28 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3021.029; Wed, 27 May 2020
 12:26:28 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] thermal: imx8mm: Add get_trend ops
Thread-Topic: [PATCH] thermal: imx8mm: Add get_trend ops
Thread-Index: AQHWKNOp8EPkl0qqRkG+GoQWiQOYA6i0bHgAgABvx3CAAM7gAIAAy+LwgAGwT5CAAI+kAIAAQRqAgAL23OA=
Date: Wed, 27 May 2020 12:26:28 +0000
Message-ID: <DB3PR0402MB3916978B2D56374FE335E28BF5B10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589338689-15700-1-git-send-email-Anson.Huang@nxp.com>
 <fccf4197-d0ca-f313-8f70-000ef4731033@linaro.org>
 <DB3PR0402MB3916B6D11328A036BD479D39F5B50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <6a4d31e4-8a24-2e9f-aa49-bec8258ead4c@linaro.org>
 <DB3PR0402MB39167D71ED6979FC33D3747DF5B20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <DB3PR0402MB39162E6A876BA54A80B0DCE2F5B30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <dadf94db-8aa5-d1a7-5818-c56032a44ea4@linaro.org>
 <DB3PR0402MB391695A412B26134060D1D1BF5B30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB391695A412B26134060D1D1BF5B30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 62630d33-97bf-47e4-570b-08d802392e5d
x-ms-traffictypediagnostic: DB3PR0402MB3868:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38680A641AEF2628FA78F7A5F5B10@DB3PR0402MB3868.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04163EF38A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jk4rb98s2bzy5A4s1xAKJZcHA7bcAhhg8Z5SwOcesQQFfg/vWbDpEqIduEe9eJr2nYJrBcwgaNtkCe0pU/MEbBUrga9DJTxFHkqpZq8UBDVCeF+ncaiWloquuXZLsNVoNj6hygc+NRvvVd8vreQ+I599vEHsSfZ3Ia+6QPzeeALqmQEgGZCZptsdQ7Qm90fO3xDobyMlroH0j12keo4DjmGCNMuY9o2LM8362A61UoaNR/uFrraHZt3djO5ykc8G+FvntoUrHqRmMRZX2AKY6WgZhaYVJbZGkf8TOm96bhNGewRL7opRyeB8T+VbxLsquEA9gUUaWUY1atptluiul4tftwC4uPthsautIX3pMWfGPRlN0PmUgav+20VBVrtBr3qsjVXgk0LztdDJEgOdfA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(396003)(136003)(346002)(39860400002)(4326008)(33656002)(8936002)(7416002)(86362001)(83380400001)(110136005)(2906002)(478600001)(52536014)(76116006)(6506007)(53546011)(66946007)(55016002)(316002)(186003)(26005)(9686003)(7696005)(66556008)(66476007)(44832011)(64756008)(66446008)(5660300002)(8676002)(71200400001)(921003)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: XPAW/yYcl8pKfYdg3BXgcdaYKpOh2y4BikxQtjjQ+M5kUEMn/UwopkLFFuhe0G5TxdOvUsGD+PrTyceHBXZWfbaMIk1oF2vuxBTkUNWK84QtOMfz0PYyQJbfxjsA8vS8MTv5l+nRqsmxSIGLyck5CmFFbVxWCrqc/am3N16/t1v0Ctzhxauh+PG55ogjzrvzWRVELbH0weXZvo+6fOjbG8rF2bhqhW/BMYXo0lpRos5Wha7Df2yx+QbY3+hob0YD1OVGU+mOZOqBMcbTwuk3mRu11MtcSX+OtpkUc0yYW9VvJCw2Dlsg2kADWsPLsp426eVe+UaJpI1IWKBispks1a7eexpfbHJk83WwltnowUs6YlT0Dn+bZ+9sBkFjC6YNKek5auuXnLoeXegCa4ZafesHHkSTNV0lF5dVGGGuaLJNbTHY2QdStLujY2MXLDJuJYPf+SdIHFs4a/PFQvcfO/zz3XRPh1M6vSebfbA37gyVyEYZ2aM7lEKDG3YB85TV
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62630d33-97bf-47e4-570b-08d802392e5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2020 12:26:28.5346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OeJpThftn0JpiOPInBU7bnvo5TqfS6Xc8GtB8lx4yDkhSMNxpyfGhAJdhadwqflCwWCzRaWy2OZhrTLD8N4Eiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3868
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_052634_186079_B63A88F0 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.49 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.15.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> Subject: RE: [PATCH] thermal: imx8mm: Add get_trend ops
> 
> Hi, Daniel
> 
> > Subject: Re: [PATCH] thermal: imx8mm: Add get_trend ops
> >
> > On 25/05/2020 04:46, Anson Huang wrote:
> > > Hi, Daniel
> >
> > [ ... ]
> >
> > > I tried modifying the min/max to '2' in cooling map, it works that
> > > whenever cooling action is needed, the max cooling action will be
> > > applied. But I also noticed some behaviors which NOT as expected:
> > >

After looking further into the min/max setting in cooling map, it looks like NOT
suitable for our i.MX platforms, although OPP table is defined in DT, but the OPP
table is a full list of all available set points, and chips with different fuse settings
will ONLY enable some of set points in the OPP table, that introduces the trouble
of calculating the max state of cpufreq cooling, for example, on i.MX8MM, there are
3 set points defined in OPP table, but if the chip is with speed_grading fuse set to
1.6GHz, then ONLY 1.2GHz/1.6GHz are available for cpufreq, so the real max state
for cpufreq cooling is '1' actually, so how do I handle such scenario?

If thermal_zone_bind_cooling_device() can support parsing other macro new definition
like 'THERMAL_MAX_STATE' in DT, then in thermal_core.c, it can get real max state via
cdev->ops->get_max_state(cdev, &max_state) and set to lower/upper state, that will help
a lot for the case of our i.MX platforms. Do you have any suggestion?

122                 opp-1200000000 {
123                         opp-hz = /bits/ 64 <1200000000>;
124                         opp-microvolt = <850000>;
125                         opp-supported-hw = <0xe>, <0x7>;
126                         clock-latency-ns = <150000>;
127                         opp-suspend;
128                 };
129
130                 opp-1600000000 {
131                         opp-hz = /bits/ 64 <1600000000>;
132                         opp-microvolt = <900000>;
133                         opp-supported-hw = <0xc>, <0x7>;
134                         clock-latency-ns = <150000>;
135                         opp-suspend;
136                 };
137
138                 opp-1800000000 {
139                         opp-hz = /bits/ 64 <1800000000>;
140                         opp-microvolt = <1000000>;
141                         opp-supported-hw = <0x8>, <0x3>;
142                         clock-latency-ns = <150000>;
143                         opp-suspend;
144                 };

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
