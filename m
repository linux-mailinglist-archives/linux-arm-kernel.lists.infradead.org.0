Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 693115C9D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 09:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFdBqgq26fVL2UweQgUykpGRCNOUrkzqxceU2QRZdfc=; b=YxmYvMlaGqEWWY
	YX9mtsFf3ZDlFew0YFhpuC4kKQO12Tfw6PuhfyKY4nRM9k/eMi/NtN+gyG+GEdmhX8OS2xCITiBKf
	5rHOPwZ35ZIFvCxpzaifYELm3AcUpcpjRmbdgAd8oicr9vIlvhSm9EaQn47OQZ3qzftrzEXpAFCfL
	Iw1eZK+FZlYQPNimqN3SNN/90lVqTbizTGhjJnzery16WVFXqT8CTriD8aZjVzsHxQAw4cJKHvp1k
	Ygtl9aVH9lwwT6zfw8tWFmB9VCNrOpB3WZoS+EQ8oWUwLz9Qq0H0eJgYav7j5L70bKGgCRhVfdBur
	h3OMdcvnBQJMjWuapYyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiCzY-00052S-DG; Tue, 02 Jul 2019 07:14:16 +0000
Received: from mail-ve1eur01on0627.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::627]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiCzK-00051v-4X
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 07:14:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NPxsmxOfL36rrzoAwvi4M3tNWKnJjVQKptP09mfuhTE=;
 b=pOOc1NS0Q0TKh4K3va0Dd3ozWST0cRPKRtHT8bfDWMHWNOjLZNmE10O9Eelj4Q0ECHoNSOSOeF5oawUkrLPzn32JI9sHqLcTu7h99hnD9q9z3x2qmkhl/wv1cG1ZBzJKQ8QmtgxJ4QreDFzKrbU9WNSlYBG0O1IZJeKlaxG+pCc=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5251.eurprd04.prod.outlook.com (20.177.41.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 2 Jul 2019 07:13:56 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367%7]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 07:13:56 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [RFCv2 2/8] clk: imx8m-composite: Switch to determine_rate
Thread-Topic: [RFCv2 2/8] clk: imx8m-composite: Switch to determine_rate
Thread-Index: AQHVLYSzFhiWj3SboUyyXoLKKvuOrKa28GGA
Date: Tue, 2 Jul 2019 07:13:56 +0000
Message-ID: <20190702071355.gb5e5qxupojshgun@fsr-ub1664-175>
References: <cover.1561707104.git.leonard.crestez@nxp.com>
 <5d62b31309e6402bd9fa608730518b39af823fb3.1561707104.git.leonard.crestez@nxp.com>
 <20190628084521.d64d5g54zvxlsxsl@fsr-ub1664-175>
 <VI1PR04MB50552AC6EAB0C145D638E618EEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB50552AC6EAB0C145D638E618EEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17fa0e7d-f0a5-457a-7aa2-08d6febcd8ce
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5251; 
x-ms-traffictypediagnostic: AM0PR04MB5251:
x-microsoft-antispam-prvs: <AM0PR04MB5251C4BE5C7E5BFAFA70FAF7F6F80@AM0PR04MB5251.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(376002)(396003)(39860400002)(136003)(366004)(346002)(199004)(189003)(76116006)(73956011)(7416002)(66946007)(1076003)(68736007)(33716001)(4326008)(2906002)(91956017)(6862004)(3846002)(486006)(44832011)(6116002)(5660300002)(64756008)(71200400001)(6636002)(66556008)(66476007)(71190400001)(66446008)(316002)(54906003)(11346002)(6512007)(26005)(6246003)(14454004)(53546011)(81156014)(81166006)(6506007)(86362001)(229853002)(53936002)(446003)(476003)(4744005)(305945005)(7736002)(8676002)(102836004)(186003)(99286004)(256004)(478600001)(6436002)(66066001)(14444005)(25786009)(8936002)(9686003)(6486002)(76176011)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5251;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: D3+CJMiDAaG+AjtXEqGTnjfmEXOERY4ndRNUK/zj/+SjrZvyNua28FwbEMJxKHw0IZJ31qybuwjI8S6wca2AhOHePAkoe6vCXJJxScDI8QS5atWrs5xgzhqj/LEB8w3FkOIFh5wy0FfmOniBAbu4DCaT3FX2YYubiJIM55JCAvgW4uHBfx1bnSTxKNz0O2Vv+ebw2WgoMEXiF5oVTD9uBA8uSUxaZNowt252mL/g3e2wgob8aBbyqLUIf6BoFbhzwbV+UYz6NBC5y3x6/6CRo0nHMB/P7LEOO040s96QfvXE5xjfZqHREnj5lvXHBtnySOrZvVc0v9lWSUmN9BuEMSsDmcI4CC59vWSaOGJK3sM3ncgyJGH82RWRDhlZUMaftDeEI6WGurydpBYZqj7v18C+tPV7bPhNTW4dXDq11H4=
Content-ID: <B69BB4B1168AF5449762D788617CD65F@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17fa0e7d-f0a5-457a-7aa2-08d6febcd8ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 07:13:56.2182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5251
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_001402_183483_DE82E731 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:627 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-06-28 08:56:35, Leonard Crestez wrote:
> On 28.06.2019 11:45, Abel Vesa wrote:
> > On 19-06-28 10:39:50, Leonard Crestez wrote:
> 
> >> This allows consumers to use min_rate max_rate.
> >>
> >> @@ -45,10 +45,12 @@ static unsigned long imx8m_clk_composite_divider_recalc_rate(struct clk_hw *hw,
> >>   				   divider->flags, PCG_DIV_WIDTH);
> >>   }
> >>   
> >>   static int imx8m_clk_composite_compute_dividers(unsigned long rate,
> >>   						unsigned long parent_rate,
> >> +						unsigned long min_rate,
> >> +						unsigned long max_rate,
> > 
> > You should pass on the req instead of min_rate and max_rate here.
> 
> Then I'd have to switch imx8m_clk_composite_divider_set_rate to allocate 
> a dummy struct clk_rate_request on the stack. It's clearer if I just 
> pass the minimum parameters required.
> 

That is correct. Nevermind my earlier comment then.

> --
> Regards,
> Leonard
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
