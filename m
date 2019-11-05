Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E22EFC8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 12:38:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHBzupsQ64haMBvq4D88AJXYqcdeDpSyk/mOUZWtkXk=; b=CPiUmTlrIfk2Xx
	9yU9R0Xj10jeZJRdh3a8+mU4n76JKA8xRc5i8nmLsyQsqgoJOe6TeyPbR+mCmgwWzWWlp2fRiHB1X
	mw3mXDunTHddlDS8jEKwxaHZulzpD/YhAd5DQpWua3Fy4XKnL3hAK2JULHejvdcjUaIwrw4NmM89x
	OYNmnqLNiP5th8j6R4OkwKXQle08PABb6ljzuRaz/Pc/PDGxoao49rNmkm25e6vB+sZ21g2s9cEc6
	ZU+eQ4MMd/UPhyJe8th3EgGK/BDAXKqiml92Fk6AhD5FFLXZOFURmHjCbyOH0Nm42Uc0GVB53laOj
	W6/KwtdsZexe8u2Zf4iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRxA5-0001ri-BY; Tue, 05 Nov 2019 11:38:13 +0000
Received: from mail-eopbgr20050.outbound.protection.outlook.com ([40.107.2.50]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRx9w-0001qB-MZ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 11:38:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mQVGwOglq8TcNHDGKLeNQkBAH9QKmoX3fq6p5qEJnRaA+ci1xDF+M8X6Z5RcioI97VdN82EYE5AG8ZdefshnKRRCGYEO0/pEa+kqfXq5SWl1Om3ZUmbBPP1hTISxA4h1NkgvPTk9TYUTcg5J4PtNyJVUd3TLSvjdZ1CI0GZa20J0X6QEUij4nuY/Gdx3MhzIsxQibYgfS9UdGr7VJORFUdJCbuaqHT4kTwgwbXTSI8Yvq/AKjhwzsLX9E/2WqK/pjBzXfipOT2MF5gFCp/yAWeWNfeqyzko+ic1R4iDPFAYWa/bEXnxiEPjCql84QWYo9g8lcfXMtYGrlT+Yy/wrkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y98z3OBgAdzDOLCLxyD+9+dC7Pj2S+fFajW8lxMzebw=;
 b=ItwjNsFw9e1hs0SHatIa8Sw9Kv3sBwaKAKYsKLX0ubJSGKE3KzRCuhbDlITOh3NdKLyvfQr4qb26QW+hnor51MXVX/lNv+qKx8FWDCr74TifQv54Fuh8s//6GO5ZzwIbiEABUcvAgC2MlypM0F/+IbEeX6xGY9YCPiCO+KjCQ2H/NzBIe4qGu6h4fETxF3st7qXU4DJu3H+SExY4Yc0gervzA1INMxTdcZTIo+1tA5f4ctVzNH++xAvMdat5YN/64X71TH6XT1RYsJEN7JwkcKdVMFQwTSNWY2aTL6/VSrI5vDNkV7tIqvKEkgAH4CTzVuCV4M05GIAAREoDuoJHwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y98z3OBgAdzDOLCLxyD+9+dC7Pj2S+fFajW8lxMzebw=;
 b=A0yq1dT+oCjApIiyHpANTEdhkszjCFpVMNWhjNUxOQf0RQThV8HNpVLHxYWuCaH/Nco5EO4EVIMovhYXM8z3sLrchlHfG1rxU1zCPP/9eRGFjL37409QjOgrpDH9gvMGy8QFApNq4G2y8W8lXJgBipf7V+F12VO87GDyWnhMQ1o=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4595.eurprd04.prod.outlook.com (52.135.148.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 11:37:58 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2430.020; Tue, 5 Nov 2019
 11:37:58 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 2/2] clk: imx: clk-divider-gate: drop redundant
 initialization
Thread-Topic: [PATCH 2/2] clk: imx: clk-divider-gate: drop redundant
 initialization
Thread-Index: AQHVkvg/xrfIJzKQG0a+hb51V+MVqad8dP+A
Date: Tue, 5 Nov 2019 11:37:58 +0000
Message-ID: <20191105113757.7emblygbcqfa6gyl@fsr-ub1664-175>
References: <1572862200-29923-1-git-send-email-peng.fan@nxp.com>
 <1572862200-29923-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572862200-29923-2-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0087.eurprd02.prod.outlook.com
 (2603:10a6:208:154::28) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8b5ddda4-83f1-4e8b-68d2-08d761e49b74
x-ms-traffictypediagnostic: AM0PR04MB4595:|AM0PR04MB4595:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB45959DDEAEBA6202C9C220B2F67E0@AM0PR04MB4595.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(136003)(39860400002)(396003)(376002)(346002)(366004)(189003)(199004)(86362001)(476003)(478600001)(5660300002)(81156014)(6436002)(1076003)(44832011)(14454004)(486006)(25786009)(33716001)(6636002)(71190400001)(305945005)(71200400001)(7736002)(11346002)(9686003)(6506007)(6512007)(99286004)(229853002)(102836004)(53546011)(52116002)(6486002)(76176011)(316002)(2906002)(386003)(54906003)(6246003)(4326008)(256004)(14444005)(66476007)(66556008)(66946007)(64756008)(66066001)(66446008)(446003)(6862004)(8936002)(81166006)(186003)(26005)(8676002)(6116002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4595;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aCiiY8Xr1W7vGmM/Z2U/Pdt7lPeYxvcgRhHADcY+nc0zm5sLS7rYRT97NsowwSgIHftgnjk6Git70ZtANy5UWBBvBHIzqIscVuMRo8W6evHEUp/QVx36lH1DcQsG5k29SG42+oq/76pOqQEyVIcbtyI7wZVauFqAdZIJGNcPDKJY2XBalephnsmId+QQxhoiEQ992DRAT2u1WdRqIdgIHvhFnHMrjZpH23HUTBViF7nf+RwD/80KGtqw/Ct6x74I9Jtb/GgiHv6cfvU7hq3K7+US8tfQeqw1fnLQKJjQHjiVNsVYEz6keMs5TeTGjGNeOz0fYNlw0qQAut3CScKjv+TOticv1nlSLrGg8f6X/ZWuSK8Qbxu3FNuretdEKtwKHMkttpjccUWPlUjcfITpYcJdPOEYrua+Bz/+L4hjnW5HosCI8mYO2COEqSY4VPB1
Content-ID: <4DAE11B15D0F814F82A82AE72658CCDF@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b5ddda4-83f1-4e8b-68d2-08d761e49b74
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 11:37:58.7858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J4q+yUkdCi9aiXspDBFEe1T+WklC3gjZlZET0zbzi5JZoQxMmzMMoFtYNtZJ2psUUr9XwjplB4qggnKEhCPLeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4595
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_033804_740961_679890B6 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-11-04 10:11:37, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> There is no need to initialize flags as 0.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-divider-gate.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-divider-gate.c b/drivers/clk/imx/clk-divider-gate.c
> index 214e18eb2b22..4145594af53b 100644
> --- a/drivers/clk/imx/clk-divider-gate.c
> +++ b/drivers/clk/imx/clk-divider-gate.c
> @@ -43,7 +43,7 @@ static unsigned long clk_divider_gate_recalc_rate(struct clk_hw *hw,
>  {
>  	struct clk_divider_gate *div_gate = to_clk_divider_gate(hw);
>  	struct clk_divider *div = to_clk_divider(hw);
> -	unsigned long flags = 0;
> +	unsigned long flags;
>  	unsigned int val;
>  
>  	spin_lock_irqsave(div->lock, flags);
> @@ -75,7 +75,7 @@ static int clk_divider_gate_set_rate(struct clk_hw *hw, unsigned long rate,
>  {
>  	struct clk_divider_gate *div_gate = to_clk_divider_gate(hw);
>  	struct clk_divider *div = to_clk_divider(hw);
> -	unsigned long flags = 0;
> +	unsigned long flags;
>  	int value;
>  	u32 val;
>  
> @@ -104,7 +104,7 @@ static int clk_divider_enable(struct clk_hw *hw)
>  {
>  	struct clk_divider_gate *div_gate = to_clk_divider_gate(hw);
>  	struct clk_divider *div = to_clk_divider(hw);
> -	unsigned long flags = 0;
> +	unsigned long flags;
>  	u32 val;
>  
>  	if (!div_gate->cached_val) {
> @@ -127,7 +127,7 @@ static void clk_divider_disable(struct clk_hw *hw)
>  {
>  	struct clk_divider_gate *div_gate = to_clk_divider_gate(hw);
>  	struct clk_divider *div = to_clk_divider(hw);
> -	unsigned long flags = 0;
> +	unsigned long flags;
>  	u32 val;
>  
>  	spin_lock_irqsave(div->lock, flags);
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
