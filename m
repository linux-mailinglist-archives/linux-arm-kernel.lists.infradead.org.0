Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793C95F49F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=gH38bJtlLvAKJkkb0mPh2uzyVqvs1LMv44hb+IO1FPY=; b=ejslyZRos5YGn3
	T9veQvgzJOZiovrP2Tr6W9lyVujc41xeFl/yEvGUGWLMmdUaxdkmIuIpQWJGMcS5yjC1lSo3sFDPI
	YMfQOlyszkvlN7Rr6mXt1tkv7TvUuoeFeGaqK0AduoyrR53ggcn9f4cyKF2n/J/uRuW08a6M6a3up
	Kb88LiIDYI1ePDOvLE1hvi+HPO0ud9DpMNiE1GZDKmbJiWkIJKMDJjv8Erssxl+2PDQ5XHB2fv8Yx
	10Y0Qu9Y+5xtkNfLx5wTKVNVpKSGsLysLBKo1LH41/5Ieg3PtCrlpDOs4iUgwUQrRekOkxHAUUgNL
	5iBr1p6KPFr0bVYGyo9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixAQ-0008Hl-0O; Thu, 04 Jul 2019 08:32:34 +0000
Received: from mail-db3eur04on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::602]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixAD-0008HH-0N
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:32:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZCQRrydNyh3ccGGLjK11Ak+lAQqZN+VNWyfNvTvLHTo=;
 b=PiQqwfJum3yr4u0fErNqfidW1A/Onqi2x9f7Nto4K2PvFPJ3FMRqovPJj7bhUDZtnfQ1PHtNDGpXBSPS0fEOZxSezz7H3lb4uX4+8H1eAgSGDOmN4LdkZOlsZHeGfUJEHvh4sAnFUgkUpALStV7xcWWu/cXKI70CwZ4nPCe2MB4=
Received: from DB7PR04MB5051.eurprd04.prod.outlook.com (20.176.234.223) by
 DB7PR04MB4009.eurprd04.prod.outlook.com (52.134.107.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.15; Thu, 4 Jul 2019 08:32:17 +0000
Received: from DB7PR04MB5051.eurprd04.prod.outlook.com
 ([fe80::6c98:1416:8221:bdfc]) by DB7PR04MB5051.eurprd04.prod.outlook.com
 ([fe80::6c98:1416:8221:bdfc%4]) with mapi id 15.20.2052.010; Thu, 4 Jul 2019
 08:32:17 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Saravana Kannan <saravanak@google.com>, Georgi Djakov
 <georgi.djakov@linaro.org>
Subject: Re: [RFCv2 0/8] Add imx8mm bus frequency switching
Thread-Topic: [RFCv2 0/8] Add imx8mm bus frequency switching
Thread-Index: AQHVLYSy6nskEZuxAkK/D6W15Np9Kw==
Date: Thu, 4 Jul 2019 08:32:17 +0000
Message-ID: <DB7PR04MB5051CA1EE62E3D8687352B05EEFA0@DB7PR04MB5051.eurprd04.prod.outlook.com>
References: <cover.1561707104.git.leonard.crestez@nxp.com>
 <CAGETcx_63KnP75qySbhX_P_=o4=ox9J8AsBqKsFHeQRjCpSeJA@mail.gmail.com>
 <DB7PR04MB505163FDCAD7BE9A0C71A65EEEFB0@DB7PR04MB5051.eurprd04.prod.outlook.com>
 <CAGETcx-p4L3LBVpDBmBrPKXxMUtUXtsw-7AntpWs+AL3kaaP5Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6be4d8cf-bc69-4c84-f123-08d7005a1fe2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4009; 
x-ms-traffictypediagnostic: DB7PR04MB4009:
x-microsoft-antispam-prvs: <DB7PR04MB4009C2E77B7FAEB3216B4A8DEEFA0@DB7PR04MB4009.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(39860400002)(346002)(396003)(199004)(189003)(478600001)(26005)(256004)(76176011)(68736007)(3846002)(6116002)(52536014)(186003)(73956011)(76116006)(91956017)(99286004)(81156014)(86362001)(8936002)(81166006)(66556008)(8676002)(5660300002)(102836004)(66476007)(64756008)(25786009)(5024004)(66946007)(53546011)(7416002)(7696005)(14444005)(66446008)(14454004)(6506007)(6436002)(74316002)(66066001)(110136005)(229853002)(71190400001)(316002)(2906002)(33656002)(71200400001)(9686003)(55016002)(53936002)(6246003)(486006)(476003)(4326008)(7736002)(446003)(305945005)(54906003)(44832011)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4009;
 H:DB7PR04MB5051.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NDkkiR+RAOxS8Ou7cqFAckIxeoQ+B9W0hFr25Pt3Mghp2GuwDooJRwLK4Nb7Lta5NEV5askCrg2KyZywnFlHAe9CYLAyKlcCWFJYPHIuDrF/m09p38bYvgvdjxkZvvJ22zVXabgUoTDd8zEC5P9jASQbfwFcCyhSW5RyB71Wv6Nv/UGgsbQaqACTkueV6Ct8UP0CurZcnPR08xNW0nn4iVcb0s3KpCmhaw9o5HTreHkhx6nAXxdqhIDd8UCjF88rX/b9npafwxpb4b95xYcrf8NSpzlkgPoJ78fyTT5HucR1Fm1QS1xC937ayyGZ0Z5SkzR+KK5gbTKqwhu17hgBWrEWIxKzBzlSiKG62jN6UkdsjcLAviaDDkGSiJ9KXr0YdHgjkyDs4E/eum7MvBiDKrDSz2jliAMzD2OCkvbl6Ak=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6be4d8cf-bc69-4c84-f123-08d7005a1fe2
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 08:32:17.6468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_013221_054379_9D4637FD 
X-CRM114-Status: GOOD (  22.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:602 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>, "Rafael
 J. Wysocki" <rafael@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux PM <linux-pm@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/4/2019 6:03 AM, Saravana Kannan wrote:
> On Wed, Jul 3, 2019 at 4:30 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:

>> On 7/4/2019 1:20 AM, Saravana Kannan wrote:
>>
>>>> The interconnect and devfreq parts do not communicate explicitly: they both
>>>> just call clk_set_min_rate and the clk core picks the minimum value that can
>>>> satisfy both. They are thus completely independent.
>>>
>>> Two different parts not talking to each other and just setting min
>>> rate can cause problems for some concurrency use cases. ICC framework
>>> is explicitly designed to handle cases like this and aggregate the
>>> needs correctly. You might want to look into that more closely.
>>
>> The clk framework aggregates the min_rate requests from multiple
>> consumers under a big "prepare_lock" so I expect it will deal with
>> concurrent requests correctly. As for performance: frequency switching
>> shouldn't be a fast path.
> 
> Sorry I wasn't clear. I was not talking about locking issues or race
> conditions when I said concurrency use cases. What I meant was if GPU
> wants 5 GB/s and at the same time (concurrent) camera wants 5 GB/s
> you'll need to configure the interconnect for 10 GB/s. If both of them
> just try to set the min freq equivalent for 5 GB/s the performance
> would be bad or functionality might break.

I'm not calling clk_set_min_rate independently for each icc path, that 
would be obviously broken. The interconnect framework is still used to 
aggregate bandwith requests and in your scenario clk_set_min_rate for 
the main NOC would be called in a way that meets the combined 10 GB/s 
requests.

It is devfreq which calls clk_set_min_rate independently of 
interconnect, this results in CLK performing the final aggregation 
between the "proactive" and "reactive" scaling.

>>>> The clk_set_min_rate approach does not mesh very well with the OPP framework.
>>>> Some of interconnect nodes on imx8m can run at different voltages: OPP can
>>>> handle this well but not in response to a clk_set_min_rate from an unrelated
>>>> subsystem. Maybe set voltage on a clk notifier?
>>>
>>> I think if you design it something like below, it might make your life
>>> a whole lot easier.
>>> Hopefully the formatting looks okay on your end. The arrow going up is
>>> just connecting devfreq to ICC.
>>>
>>>                           Proactive -> ICC -> clk/OPP API to set freq/volt
>>>                                         ^
>>>                                         |
>>> HW measure -> governor -> devfreq ----+
>>>
>>> That way, all voltage/frequency requirements are managed cleanly by
>>> clk/OPP frameworks. The ICC deals with aggregating all the
>>> requirements and devfreq lets you handle reactive scaling and policy.
>>
>> If icc and devfreq are to directly communicate it makes more sense to do
>> it backwards: ICC should set a min_freq on nodes which have a devfreq
>> instance attached and devfreq should implement actual freq switching.
>>
>> HW measurement is done on individual nodes while ICC deals with requests
>> along a path. In particular on imx we have a performance monitor
>> attached to the ddr controller and I doubt it can distinguish between
>> masters so how could this be mapped usefully to an interconnect request?
> 
> Ah, that was the missing piece for me -- you are trying to use a
> central performance monitor. I see what you are trying to do.
> 
> So you are looking at system wide traffic at DDR and then using that
> to scale the interconnect/DDRC. I don't know how complicated or not
> the IMX interconnect topology is, so please pardon my questions. If
> you are using a performance monitor at the DDR controller, why do you
> need the "proactive" requests from other clients? Wouldn't the
> performance monitor account for all the traffic to DDR?

Reactive scaling is too slow to ramp-up in media playback scenarios and 
first few frames would fail.

>> As far as I understand with devfreq the ddrc node could use "ondemand"
>> while the other nodes would default to the "passive" governor and run at
>> predefined default ratios relative to DDRC.
> 
> Yes, that approach would also work but I'm not sure why you need the
> ICC framework in that case.

For proactive scaling: to ensure bandwidth *before* traffic starts. In 
imx vendor tree that's all that's implemented; for reactive scaling we 
just set busfreq to high as soon as cpu leaves min opp.

IMX interconnect topology is not very complex so mechanisms other than 
interconnect could be used. But ICC is the most powerful and expressive 
subsystem for proactive requests.

>>> If all of this makes sense, please take a look at [2] and provide your
>>> thoughts. I've dropped a few patches from [1] to avoid confusion (too
>>> much going on at once). I think BW OPP tables and having OPP tables
>>> for interconnect paths will be something you'll need (if not now,
>>> eventually) and something you can build on top of nicely.
>>
>> I found it very confusing that you're assigning BW OPP tables to
>> devices. My initial understanding was that BW OPP would map "bandwidth"
>> to "frequency" so BW OPPs should be assigned to links along the
>> interconnect graph. But maybe what you want is to have OPPs for the BW
>> values requested by devices?
> 
> I want to have OPPs for bandwidths requested for paths.

Right, this was not very obvious.

> Each interconnect node can also use BW OPPs if that makes sense for them,
> but I think they'd be better served by using frequency OPPs.

Each interconnect node is asked by the framework to ensure a certain BW 
is available in "bytes". The nodes could use OPPs with BW values to map 
the icc request to a frequency in "hz".

>> Looking at the sdm845 icc provider source and it seems that those
>> "peak/avg" values are actually parameters which go into a firmware
>> command!? It makes sense that you want interconnect to be "below"
>> devfreq since icc_provider.set maps very closely to what firmware exposes.
> 
> Even without the firmware (it's mainly there to aggregate requests for
> some system wide resources) or if interconnects are scaled directly
> using clock APIs (older chips), sdm845 would still want ICC to be
> below devfreq. It's because 845 doesn't try to do ICC scaling by
> measuring at the DDR. Each master makes separate requests and then the
> ICC aggregates and sets the frequency. They have their reasons (good
> ones) for doing that.

Maybe I'm confused about how devfreq is used in your scenario: you have 
devices which have their own OPPs (like a GPU) and expose this via 
devfreq. Then for each GPU OPP you want to pick a the BW value to 
request from interconnect, right?

My idea was to use devfreq *after* icc so that you can do stuff like 
force a certain NOC to "max" via echo "performance" > $sysfs/governor. 
It also allows encapsulating complex freq switching (clk maintainers 
don't seem to like my dram clk).

On a second examination there is no actual incompatibility here, devfreq 
could be used both below and above ICC.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
