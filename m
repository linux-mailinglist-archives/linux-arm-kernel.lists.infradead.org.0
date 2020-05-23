Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E75D1DF389
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 02:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1x8qbwR8vauma74sZKyARTCcLQy6p7L0IlJommgkPto=; b=IIlQ3SGzocXlcD
	Z90FTecwWavQ4kiXS1i1MTNSmJ6E9uw1EF2lOXbnuOW01pRzK5X2YwBXqc8XKbDnNyYl3om5rNhQz
	JpeSi1GNFYZHbZyzsCeZsM1aixo+6JsBlMyPwwG02lZD/+Glbp8q3ZVW7wFH94tG+n9EGIBTiSdQO
	mBj2ZMHLyIFqtH7oHJqYmRpADIXJ/1JtIcPrscQhxzSdimaR3/utAcY89TGMUQfwjGF6kimVZ5MIv
	YniyVLIGboQWbxr5P94kvgx7NjDYbHAUBqKEps3rCSd0FKVijUwvN6DwldREU3Gjn/XkygfhIOPff
	9B/GQ7K3AzQeTQIo03MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcI8O-0001fO-JN; Sat, 23 May 2020 00:35:28 +0000
Received: from mail-vi1eur05on2052.outbound.protection.outlook.com
 ([40.107.21.52] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcI8F-0001df-OE
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 00:35:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lUofwUzwskeXFN8wJw72S3R9pJ6pQwCiSvovTCgbe79ZgjOhfnJrTtEzDk73cEOGlPAgJGQSHJq0fssiHyW+5JLmVf+eJq867ks90Ak4XEUpAgN64BRicuvPTpN40YzfeUaclxzwzyZ2VS8GYBacVx1eusRgCwIOVaXkVDgbW3uolnsE9YqVBXDbNzv6QQ/L5d13xwlZ0qbLKGXaQE9PQUVLWAwAN5c89wMkdL80yW8qWZuFUyP2mSHC6UPCOZDBMROC+JyrTZ3qd3wYS+1eDqN1cqFZcPczc5/Ga+cVQyC0gk0S1HFpa4aLaaoHohjvhUsed17YQTIT4rb8wJd1Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1CgbGxjv1xzEnPJeI09pmjT5z+wlxOGIjpXSrRzpDA4=;
 b=GZlYl0UaY1Fb+OlVPUTRfiLHSu28koAQe/WRweJegsYEn4IXBmFeluB3IVDgeeu9ILrYeE8BJthfXaGKae1nHKP+cH/KGjc4JxR5dWlFm2L0mxD6bBCvWAisJy+mjI93H1atd9sXtA/o2XoMEypgAxxJP2ZdTMVPpXvSyT2mgYGbvau18ap9ImygkBh3DmsILkHQKyaD9E5CcQ8Z5HMlHK+7buI1IiHuHS6u6vDD/JpIM+W3vUgiHYf3L+fjuiu6fGOiCtN8MBK6nczaDc4wgduST4abcIWP6eeeHSwE0jH6dIfqLEGfcIn2Qzjcu0Z7ariAVUAUAXEqayg8/NKuww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1CgbGxjv1xzEnPJeI09pmjT5z+wlxOGIjpXSrRzpDA4=;
 b=W2HyZ358P1FCdKWsfjo7PP0khyBbJcQ0OpfhY69EcTKVGfwp6Gw/V9DugLkcnxHV07OH0tbV6DRXYae/hrDkcQ08Sb3vzZliZS5sd0QPW9ojwn7FGzxsPdVbnW8qgdFZswaG2fHXZM8korlPXpUe1wQeL9X5XDIu5ospy9XYlOE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3817.eurprd04.prod.outlook.com (2603:10a6:8:12::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Sat, 23 May
 2020 00:35:10 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3000.034; Sat, 23 May 2020
 00:35:10 +0000
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
Thread-Index: AQHWKNOp8EPkl0qqRkG+GoQWiQOYA6i0bHgAgABvx3A=
Date: Sat, 23 May 2020 00:35:10 +0000
Message-ID: <DB3PR0402MB3916B6D11328A036BD479D39F5B50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589338689-15700-1-git-send-email-Anson.Huang@nxp.com>
 <fccf4197-d0ca-f313-8f70-000ef4731033@linaro.org>
In-Reply-To: <fccf4197-d0ca-f313-8f70-000ef4731033@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3e3df3c7-6104-46cd-4b13-08d7feb12675
x-ms-traffictypediagnostic: DB3PR0402MB3817:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38179BCC3C2832CA5FFF01DBF5B50@DB3PR0402MB3817.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0412A98A59
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iJ2Fs24bII8WsdA11wTitiJX62SUUTJx1XiOHkWA68AWDEHB+BEnDKgFoKZyi7iwT2vB6BXhf8bZ0t6ynHtI81R2xMpa+qTymVDoizKvHrMzkLtyIwD4uo1UOUetdq6v5cZC0fNBIgn2CZpnSLCC4sjd2Zoj/9ZGDLTrvNdGZPuCtSLihFNsO0e46cqKQBRRFCQd1atYSSKTMxm/g4m15CR6Hld6e1kYHS7yB3pJLOo7MOIwwYarkTRE5wIeofdQFESJj7e+gPFmYfArWNM9WMZslQGtc5+EogN63/mAU8V1IzEW54UviTVA+gQGSryq0lQ8a6FtSBRmppn4bb3Ny5hNTOLIbDHHYnGP814nF7+pNALmqJa+qZkekBIzNqzNUinl7ZD8qQvtkMzEbvRvZQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(376002)(346002)(39860400002)(396003)(478600001)(316002)(55016002)(5660300002)(44832011)(71200400001)(33656002)(64756008)(66946007)(66556008)(66476007)(52536014)(66446008)(76116006)(26005)(6506007)(8936002)(53546011)(186003)(4326008)(7696005)(2906002)(110136005)(9686003)(8676002)(7416002)(86362001)(921003)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: kPMCGqafYeMUQfvVFo0Fmt5gFHlxBpYfL3z1ZIlpWA6YGMfLvw/IToO1klpvR8rOs3jjmc0zr4Gxo/D9UO6d9c3MAhtWejVZpPCcBg0CFA/2eyLMv8zUaP9Yzt3BNSYc70RXr0XgdvFCMKE4dD35fUVQE1+IQhBSM8wISjBpfUslIC/pUrlRTIT3n5nKy3QvnTIRMIO1B5+9OZA1mfsVBAHcGY91fWBYWpkP0brj5FadjItFjVSxvonwpNNjW3lv2nH8Zd/HoMkfqzd0sczLYZ3N29Meoz4prHLyTP0qVDd+xgSJodS7y+OStWBRoVdzbHNtHxPIhFiY4oiJyAWHGky6iJzfNfjELdc9mczeNVoQ7w7WHDmLd3js476o45uuuTdrI1/BnEj7btMWkUK1rSJBKu1anjzj2l1EofOdBsne7tndVKZduELj5ABWMXP9DSvMbIFmvL8GyYOvsnocqfnkfzxvShLIRkmIJ7yZXIU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e3df3c7-6104-46cd-4b13-08d7feb12675
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2020 00:35:10.3452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dIgadSXYpzpzTu6atqeIHxB+x1Jht3wYWN0pjSRYA3frde/o0SrD40IvxH3tANhDXFsqmm++e7dWxUXz2WTkfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3817
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_173519_838361_EAAD8081 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.52 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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


> Subject: Re: [PATCH] thermal: imx8mm: Add get_trend ops
> 
> On 13/05/2020 04:58, Anson Huang wrote:
> > Add get_trend ops for i.MX8MM thermal to apply fast cooling mechanism,
> > when temperature exceeds passive trip point, the highest cooling
> > action will be applied, and when temperature drops to lower than the
> > margin below passive trip point, the lowest cooling action will be
> > applied.
> 
> You are not describing what is the goal of this change.

The goal of this change is to make sure whenever temperature exceeds passive trip point,
the highest cooling action will be applied immediately, e.g., if there are many cpufreq OPP,
the default cooling will be step by step, it will take some more rounds to make cpufreq drop
to lowest OPP, while on i.MX, we expect the cpufreq drop to lowest OPP immediately.

> 
> IIUC, the resulting change will be an on/off action. The thermal zone is
> mitigated with the highest cooling effect, so the lowest OPP, then the
> temperature trend is stable until it goes below the trip - margin where the
> mitigation is stopped.

Yes, your understanding is correctly, once the temperature exceeds passive trip point,
the highest cooling action will be applied immediately and then it will be stable there
until temperature drop to trip - margin, then the cooling action will be cancelled, the
margin is to avoid the back and forth near the passive trip point.

> 
> Except, I'm missing something, setting a trip point with a 10000 hysteresis and
> a cooling map min/max set to the highest opp will result on the same.

Yes setting cooling map min/max cooling state to highest OPP will make the highest
cooling action applied immediately, and to have the function of cooling action being
cancelled when temperature drops to trip - margin, I have to define another trip point,
say passive trip point is 85000, and cooling map min/max set to highest OPP in passive
trip point then add another trip point named "active" with 75000, and without any
cooling map in it, right?

If yes, then I think I can try to make the changes in DT instead of thermal driver. 

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
