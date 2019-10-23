Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AB3E1470
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 10:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=TvgPvGgirFuVyxsHJzz6CkD6ectgmwKRYe/BB9dMBIo=; b=j/2SWOS55oUKrM
	yyuJ+x7K+5bctwWPIJmc47NKrHQib8ftSm7ktfrEHls/Nramu3uOlUHuiXWDNcx5E45/FD+1kjj9Q
	/G/31lDXY/VfYESap0XtC+3+a2UGetbmF/zgvFal6uy5Wol0kPq2E/GUGIIWl+VykEm05JNJRHCGg
	JdkNHspyZc9dIYW7YZ0j8+XbYygzALUF2psus29pDxYfnht/M3UbpALy/oqzPGpTwN5l+pjaDLQVx
	kLZoy9hSWR7jYsdy79TYkr01uIBaWhXvt6JrU5t1Xd2lvWKm7kGH0mEQQMsOaVrxjRf/fBXB30qYB
	x/+xVB/bzV8g3LiqX7TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNCAM-0001Lx-0L; Wed, 23 Oct 2019 08:38:50 +0000
Received: from mail-db3eur04on0612.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::612]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCAB-0001LS-57
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 08:38:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CwqCV/BX+/qHF/BVpoZIAoGWWJuk3wBchjtaXV5ORbMsweEYMPtd2Ct3klPLGHBLCO1bEikXJ5hPdimOuTHO/BLoVu7RcvkN573i8KS4oY3eIPlLiZAaI5cVK9/OpLId/Uw5SdJT451cOAVCOx/xO5JIffTykY7QDmRSmIDmNtcMOGmePqJNnZ1oTyYN16TdhDZ4oK5HNwkzl64nR3w8Iqj8DBOekyzlKQT6Q7uN5rGqw99TTFrGhKJW/xobDcPT82XgAKaAgmJd/IoFLSjKlVSQ9rIl/Bys/ciuaGCe8BjmSRfKyZhdVU6rV5S9POFWrsfcPuGjaB/w7rEpIVXLOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1qyVv2XoSnBmT8uj3uxIR7IOkKTnsoHT/E2wpQc7SzA=;
 b=B+PD4CRndHb3qlR/vRJX9+pSCql9SvpoSkZOaGVHR6AtmQBSsdFwNdbI8hLPyFtizG3Y267/xHDUeJ7/DexSEbkjaVF/32h8ifXCCvc3oEtGvr4Mr0p0RiS+UGOaU0X3P59FrI00ntaIj4b97/kyiH2df+dpA1EdiiTLvQNHleaoSmBtUmGz1jKVRuSnbjwM6sSCyFQdSg2H7yl/NeNwOXAITDbqdl8Re5BY3z4XspROpBYWZJWe/0bqQvThXu5q/EuGPA9eHqTl9hwKmDIsYYxyosMVRyz2BGkWg0OglSCjW8AZ+Pod1JfU3Ag2GfP1lAk7TT4MsNCrUsstR+fryw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1qyVv2XoSnBmT8uj3uxIR7IOkKTnsoHT/E2wpQc7SzA=;
 b=PVtmj+m0physl6RmXbMLYUITTfDngpcxNMVvl8oszZzgz+MCb+qPsjOBAsl7vrxOUFP+RQ9Ielpb9MFOCwWkPIPvdck/4WRcRTehSAl1jNcBYf0pgLD3rgmzrpHxbNZNVMXjQl9m2eCgWhnzSsLrOG8hmBbJiUsj548EXdL68fs=
Received: from AM7PR04MB7015.eurprd04.prod.outlook.com (52.135.57.19) by
 AM7PR04MB7032.eurprd04.prod.outlook.com (10.255.191.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.21; Wed, 23 Oct 2019 08:38:36 +0000
Received: from AM7PR04MB7015.eurprd04.prod.outlook.com
 ([fe80::3924:7adb:47f2:2ece]) by AM7PR04MB7015.eurprd04.prod.outlook.com
 ([fe80::3924:7adb:47f2:2ece%7]) with mapi id 15.20.2367.022; Wed, 23 Oct 2019
 08:38:36 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viorel Suman <viorel.suman@nxp.com>, Abel Vesa <abel.vesa@nxp.com>, Peng
 Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v4] arm64: dts: imx8mq: Init rates and parents configs for
 clocks
Thread-Topic: [PATCH v4] arm64: dts: imx8mq: Init rates and parents configs
 for clocks
Thread-Index: AQHVRVgHX+vi+LJNg0ufd7EEy7KERw==
Date: Wed, 23 Oct 2019 08:38:36 +0000
Message-ID: <AM7PR04MB7015B699FDF9F4BDB69C1499EE6B0@AM7PR04MB7015.eurprd04.prod.outlook.com>
References: <20190728152040.15323-1-daniel.baluta@nxp.com>
 <VI1PR04MB70239C63D88ED27D929E29C1EEAA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <1571812158.5953.2.camel@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6bd9f901-222a-40d9-9ac2-08d757946554
x-ms-traffictypediagnostic: AM7PR04MB7032:|AM7PR04MB7032:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB7032C7A3C4EE0720112BB8C0EE6B0@AM7PR04MB7032.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(189003)(199004)(33656002)(14454004)(54906003)(316002)(229853002)(25786009)(186003)(53546011)(6506007)(110136005)(102836004)(8936002)(4001150100001)(26005)(99286004)(7696005)(76176011)(478600001)(71190400001)(486006)(44832011)(71200400001)(81156014)(81166006)(14444005)(446003)(64756008)(66446008)(476003)(91956017)(66556008)(66946007)(66476007)(8676002)(305945005)(3846002)(74316002)(6116002)(256004)(9686003)(55016002)(7736002)(52536014)(4744005)(6246003)(7416002)(66066001)(5660300002)(6636002)(6436002)(86362001)(76116006)(4326008)(2906002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM7PR04MB7032;
 H:AM7PR04MB7015.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NFPkoNc1+zkG2rr/8k5zXcMtQsWsTxMPDYe59X81B2ZDYVJm4TGyFPHqVBhQR0LbBvTd+0SRYh84CxfvdBOls3OBTH7ufr3dzCqhMWkLXpGEpMZWV7lAAUcMl5XewUKzaRY0e+dQ2j83VI66PjLvCHfBApSSVPu4zb+USTqPmSoZBxXpoZ2xFR12YMIdibIEjHYz0yBvbY0/MkghRV4gUipS+fiXoQ2LY/o8N93I95qGQfwkrurcwkGvCuAhOf9nbXP3nd8Eq4SRK3mnP6OeRCdjtPeMtLz1hi4YvrMn27BSLZ9W1sXrs46+s7FVIxyAd2EM83r/MfaVfN1zXQxEZunTo+CzFQo66RdV0aHbXqFVOoskgZHeRMy8ivg0ByuXr6fEjM4LyjU15sTQFpdnKMxW1FHT51BFb9U90Y5TDlyH+ukdHjQEgbwZMWMGbnhf
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bd9f901-222a-40d9-9ac2-08d757946554
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 08:38:36.1730 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3hqBkEhdDGkOSpQNuIiudjk7ISSTLcY7/fdMS72WAcBRbcbA0SHukyvmuS3tZivP8RwB58nsSAOoZji0Iu64TA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_013839_195350_F243425E 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:612 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "baruch@tkos.co.il" <baruch@tkos.co.il>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "sboyd@codeaurora.org" <sboyd@codeaurora.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-23 9:29 AM, Viorel Suman wrote:
> On Mi, 2019-08-21 at 20:39 +0000, Leonard Crestez wrote:
>> The audio PLLs should run below 650 mHz so please use 393216000 and
>> 361267200 instead of 786432000 and 722534400. For the 8mm equivalent see
>> commit 053a4ffe2988 ("clk: imx: imx8mm: fix audio pll setting").
> 
> Hi Leonard,
> 
> Audio PLL IP on 8mm and 8mn is different than the Audio PLL IP on 8mq,
> so the requirement to run below 650 MHZ may not apply to 8mq.

This "max 650mHz" limit is from internal ADD and is also mentioned for 
imx8mq.

Peng: you made the change in our internal tree, can you confirm this 
requirement also applies to 8mq?

Viorel: Is there any impact from 393216000 vs 786432000 on PLL on audio? 
As far as I can know this rate goes through various dividers anyway.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
