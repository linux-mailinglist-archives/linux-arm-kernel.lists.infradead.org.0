Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 227435EFA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 01:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=u011803pyhIs5gn3uEr3QIx0HoayG3/ZG7RFkx7Ww8k=; b=JWmqURmRbxc9iN
	/RmJLxSmml5oX6hQ5m39sFtkNCN5VxkXPuTCkS6kwjxV38VseB6PGMMXRRD5r9HDNYbxqfH2pGzLM
	gS9XUlb+pRfUTf+/aVNjYprfkngXpWgxuUJh+qVQ4VihUfIFb4OMTMZoSr8nvutTR58aBZ2OhFdJG
	RdNUVYYhrF+QKQYR+BAqhBsfzEse3vHMgIcesLB+jc2ynVSWztEZ66tXhKh46Obx7tjd+FJV1++b8
	1OXLA985YzyvYnZjLs1bS5W8sdKmFdMH53chVA/fvd3Z3FqhfUiedsi6IzOepdYBxtDRQJc65pbQA
	2bVCPMkQ5p4kS60dNjiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiohw-0002GI-1I; Wed, 03 Jul 2019 23:30:36 +0000
Received: from mail-eopbgr00047.outbound.protection.outlook.com ([40.107.0.47]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiohj-0002Ff-Te
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 23:30:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yus0hqsvB3SFyix89B/+/wzENC7tP6fQkHYE1CCPz/4=;
 b=CJAVocrQMw8MKpTSmrKjZUINt9sF3CNwXb9V/Y7ZVxdL4rhkWvc2zfPj9Zr/DDv9MwMJC9nc8UK+rvmBJeA2x4hBQkKUJ1XrSzjQ4uw2X23eE20p2jUuycGlSI0Rd+PODt2Fy2biEb1QUp+05QU6RK46bkMlaw4ALAh/P0ZyZd0=
Received: from DB7PR04MB5051.eurprd04.prod.outlook.com (20.176.234.223) by
 DB7PR04MB4474.eurprd04.prod.outlook.com (52.135.138.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.15; Wed, 3 Jul 2019 23:30:16 +0000
Received: from DB7PR04MB5051.eurprd04.prod.outlook.com
 ([fe80::6c98:1416:8221:bdfc]) by DB7PR04MB5051.eurprd04.prod.outlook.com
 ([fe80::6c98:1416:8221:bdfc%4]) with mapi id 15.20.2052.010; Wed, 3 Jul 2019
 23:30:16 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Saravana Kannan <saravanak@google.com>, Viresh Kumar
 <viresh.kumar@linaro.org>
Subject: Re: [RFCv2 0/8] Add imx8mm bus frequency switching
Thread-Topic: [RFCv2 0/8] Add imx8mm bus frequency switching
Thread-Index: AQHVLYSy6nskEZuxAkK/D6W15Np9Kw==
Date: Wed, 3 Jul 2019 23:30:15 +0000
Message-ID: <DB7PR04MB505163FDCAD7BE9A0C71A65EEEFB0@DB7PR04MB5051.eurprd04.prod.outlook.com>
References: <cover.1561707104.git.leonard.crestez@nxp.com>
 <CAGETcx_63KnP75qySbhX_P_=o4=ox9J8AsBqKsFHeQRjCpSeJA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab7d3c21-fcd0-4dec-f3d7-08d7000e677a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4474; 
x-ms-traffictypediagnostic: DB7PR04MB4474:
x-microsoft-antispam-prvs: <DB7PR04MB44747D726410411C799F1058EEFB0@DB7PR04MB4474.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(346002)(39860400002)(376002)(199004)(189003)(316002)(33656002)(54906003)(6246003)(71200400001)(71190400001)(66066001)(110136005)(305945005)(6436002)(55016002)(74316002)(2906002)(229853002)(446003)(7736002)(44832011)(476003)(9686003)(486006)(4326008)(53936002)(66476007)(99286004)(91956017)(76116006)(52536014)(6116002)(3846002)(66446008)(66556008)(14444005)(5024004)(66946007)(256004)(26005)(478600001)(64756008)(68736007)(186003)(76176011)(73956011)(53546011)(6506007)(25786009)(102836004)(7696005)(5660300002)(14454004)(7416002)(86362001)(8936002)(8676002)(81166006)(81156014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4474;
 H:DB7PR04MB5051.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YiEVzR6a2lUhBOTrgHR6PJn0o465+CX9X/KBA4qHirQVDW53vdX+jQp/SNRpHx+ETm8SQBJjh1xl0jrVoCFjIr1/1qWJie0Lm5+1GkC1Q3vY0M9YwYg5Aghj+7l4CaPGC+9qru6yogKlUqI+kr1FyH0PJzl6NDwHm8siN2aU9X2ahNFuNhkFQ6yXbbMeCRaNq7u7XqSDI7Bcjs0tE7dp0ytUwBnTWv5IutinGoFBDGTuejWZbS0wgUQg95dV5e0sNTOkMOSU5iaGXv5lGk8VvicQUy5j7xqGACwFvLMQeEdr8+GEYb75HFE4bRiieI9vL/lkSd2NrUtAfy6tu5XeBjNFRSlsQJ2aBTCxFapsxIHhDmOVbXB+hVsaLtInuzoBWrEGRfYp675WkbcArWERlmlCgK9FxpapT3rFONCkGzI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab7d3c21-fcd0-4dec-f3d7-08d7000e677a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 23:30:15.9389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4474
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_163023_963890_848EED8C 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux PM <linux-pm@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/4/2019 1:20 AM, Saravana Kannan wrote:

>> The interconnect and devfreq parts do not communicate explicitly: they both
>> just call clk_set_min_rate and the clk core picks the minimum value that can
>> satisfy both. They are thus completely independent.
> 
> Two different parts not talking to each other and just setting min
> rate can cause problems for some concurrency use cases. ICC framework
> is explicitly designed to handle cases like this and aggregate the
> needs correctly. You might want to look into that more closely.

The clk framework aggregates the min_rate requests from multiple 
consumers under a big "prepare_lock" so I expect it will deal with 
concurrent requests correctly. As for performance: frequency switching 
shouldn't be a fast path.

>> The clk_set_min_rate approach does not mesh very well with the OPP framework.
>> Some of interconnect nodes on imx8m can run at different voltages: OPP can
>> handle this well but not in response to a clk_set_min_rate from an unrelated
>> subsystem. Maybe set voltage on a clk notifier?
> 
> I think if you design it something like below, it might make your life
> a whole lot easier.
> Hopefully the formatting looks okay on your end. The arrow going up is
> just connecting devfreq to ICC.
> 
>                          Proactive -> ICC -> clk/OPP API to set freq/volt
>                                        ^
>                                        |
> HW measure -> governor -> devfreq ----+
> 
> That way, all voltage/frequency requirements are managed cleanly by
> clk/OPP frameworks. The ICC deals with aggregating all the
> requirements and devfreq lets you handle reactive scaling and policy.

If icc and devfreq are to directly communicate it makes more sense to do 
it backwards: ICC should set a min_freq on nodes which have a devfreq 
instance attached and devfreq should implement actual freq switching.

HW measurement is done on individual nodes while ICC deals with requests 
along a path. In particular on imx we have a performance monitor 
attached to the ddr controller and I doubt it can distinguish between 
masters so how could this be mapped usefully to an interconnect request?

As far as I understand with devfreq the ddrc node could use "ondemand" 
while the other nodes would default to the "passive" governor and run at 
predefined default ratios relative to DDRC.

> If all of this makes sense, please take a look at [2] and provide your
> thoughts. I've dropped a few patches from [1] to avoid confusion (too
> much going on at once). I think BW OPP tables and having OPP tables
> for interconnect paths will be something you'll need (if not now,
> eventually) and something you can build on top of nicely.

I found it very confusing that you're assigning BW OPP tables to 
devices. My initial understanding was that BW OPP would map "bandwidth" 
to "frequency" so BW OPPs should be assigned to links along the 
interconnect graph. But maybe what you want is to have OPPs for the BW 
values requested by devices?

Looking at the sdm845 icc provider source and it seems that those 
"peak/avg" values are actually parameters which go into a firmware 
command!? It makes sense that you want interconnect to be "below" 
devfreq since icc_provider.set maps very closely to what firmware exposes.

 > Interconnects and interconnect paths quantify their performance 
levels > in terms of bandwidth and not in terms of frequency.

On i.MX we just have a bunch of interconnect IPs for which frequencies 
can be adjusted (in hz) so the above statement doesn't really hold. It 
is up to an icc provider to convert aggregate bandwidth values to 
frequencies along the path.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
