Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE0C59627
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 10:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=a3m8MUBhQhEbrfnA2k+uTv5QMxLj/PW9U5IYeQO/igY=; b=WMIBQPWks1e3Md
	JRqIeJtFs47UBV+vesebRwdpQnZcIRE+exogJI5nNz2j/D0D5M0GwH+rcPaXPg/D6ad4Lqi3tLyRz
	iwIosJYITrsMHHvvneitpwMPw3dQilj9Jqn+GGfSefAxhRsVu+bYvGrLlKv3CRkr/M+UQ/f+5CuSx
	6BJ1gejzVOUsTZrtd+E7+JiGujgrRBHXmDPgdj/onwwUpBiYit3bWVcxiko3Sw0uuJbiMcOwYYz+Y
	wn8UuonyHtAPOAQNB0/lVWFdf3TP9D5m9Lx2F19eeManDKbTIUMnhd1T17Sv/LAsZFprtuHS6HLoa
	16iR68jUnPlDhktSGITA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgmII-00088h-ID; Fri, 28 Jun 2019 08:31:42 +0000
Received: from mail-eopbgr60062.outbound.protection.outlook.com ([40.107.6.62]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgmHf-00087q-6w
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 08:31:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wf8QcMn7wuNGlQ7cO6ZNBj+vaqdkjVTG6vtYWclAlOk=;
 b=gU0nFtivr+OwiVUNMbCQ0QaCU6Dcn67GblhD92sKGMuqPva9bk8vgvDcKk6rFmbVCX63Zhefz8GA9y118TDGHiStwW3kqPdWrBZBcNL8LhVvTJuCK5Ubqf0gXTIy7cKONNHm0fJZzdyQkCVAVnNyRB6P6CW6RUvjaSQbC8G3IGA=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB3104.eurprd04.prod.outlook.com (10.170.229.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.18; Fri, 28 Jun 2019 08:30:59 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::d83:14c4:dedb:213b]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::d83:14c4:dedb:213b%5]) with mapi id 15.20.2008.014; Fri, 28 Jun 2019
 08:30:59 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Alexandre Bailon <abailon@baylibre.com>, 
 Jacky Bai <ping.bai@nxp.com>, Michael Turquette <mturquette@baylibre.com>
Subject: Re: [RFC] clk: imx8mm: Add dram freq switch support
Thread-Topic: [RFC] clk: imx8mm: Add dram freq switch support
Thread-Index: AQHVFrc7ODGIzaJAMkqnt2iUWhij6w==
Date: Fri, 28 Jun 2019 08:30:59 +0000
Message-ID: <VI1PR04MB50551B5AFFBF2C58D40D993FEEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <475e0250b1e77a660c095749e78427fde318d5f6.1559200405.git.leonard.crestez@nxp.com>
 <20190627211453.37FF4208CB@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1efd5c5-02d2-4e19-11e1-08d6fba2f2ba
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3104; 
x-ms-traffictypediagnostic: VI1PR04MB3104:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR04MB310413E9E2C6F0ADC7B40F79EEFC0@VI1PR04MB3104.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(366004)(39860400002)(199004)(189003)(14454004)(966005)(33656002)(26005)(186003)(99286004)(102836004)(55016002)(6436002)(53936002)(9686003)(6306002)(68736007)(66066001)(478600001)(229853002)(53546011)(6506007)(7696005)(76176011)(74316002)(8676002)(305945005)(7736002)(81156014)(81166006)(6116002)(3846002)(8936002)(52536014)(6246003)(316002)(110136005)(5660300002)(54906003)(66446008)(64756008)(66556008)(66476007)(76116006)(73956011)(66946007)(7416002)(446003)(44832011)(476003)(486006)(4326008)(25786009)(2906002)(86362001)(14444005)(256004)(71190400001)(71200400001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3104;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: acQZ0q4jIdn/e4NEVEcQvAylbeRJonSgXqia/0QGGKgSQIzP6MTAvQGwPjsYg9TvbL/3mVSxVBC+KSwZR75FRwDuhKzN66dpZaguf4kYsbJsHMALQW8Ldr8fR2FmoF65bFDc0iqS7NUdL+Lz59TDZtrd+HAmMBRbHcL0prp1Vji67vmFEzdDcLn6zI7huCwKVgsTtLGmTuxfOSgV7aRIo2ldaogqbB9VT4dEW7mJifIAkKnxXp+FaRQMizIWs7VcznEDEZXz+VwbM6PlRdX8VqSzPOKlza2iA8MlYLBh0oMTShJFwSkEhWg8uFP1D/phwLWfLkkWktfxSWWZmdBCYYs+UL22rftlEsqs+xK/BMIyHmjCs0j3nv1nAykiosS8pfQkKG0YSATqovKmqlhZMNNkUMa2yGuy0gB/DIfhzxM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1efd5c5-02d2-4e19-11e1-08d6fba2f2ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 08:30:59.2859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_013103_924786_CDDC8723 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nitin Garg <nitin.garg@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Cedric Neveux <cedric.neveux@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 Silvano Di Ninno <silvano.dininno@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28.06.2019 00:15, Stephen Boyd wrote:
> Quoting Leonard Crestez (2019-05-30 00:13:51)

>> Add a wrapper clock encapsulating dram frequency switch support for
>> imx8m chips. This allows higher-level DVFS code to manipulate dram
>> frequency using standard clock framework APIs.
>>
>> Linux-side implementation is similar in principle to imx_clk_cpu or a
>> composite clock. Only some preparation is done inside the kernel, the
>> actual freq switch is performed from TF-A code which runs from an SRAM
>> area. Cores other than the one performing the switch are also made to
>> spin inside TF-A by sending each an IRQ.
>>
>> This is an early proof-of-concept which only support low/high mode on
>> imx8mm but NXP has secure-world dram freq switching implementations for
>> multiple other chips and this approach can be extended.
>>
>> Many platforms handle this kind of stuff externally but cpufreq is quite
>> insistent that actual rates are set by clk code and that new platforms
>> use cpufreq-dt.
>>
>> Let me know if there are objections to handling dram freq via clk.
> 
> Can it be an interconnect driver instead? I don't see how this is a clk
> driver. It looks more like a driver that itself manages a collection of
> clks, and you've put the coordination of those clks behind the clk_ops
> interface. We don't want to have clk_ops calling clk consumer APIs in
> general, so the whole approach doesn't seem correct.

The imx8m dram clk structure is only slightly more complicated than that 
for the cpu. It's not clear why mux manipulation should be pushed away 
from clk and onto consumers. Isn't it desirable for clk_set_rate to 
"just work"?

Implementation uses consumer APIs because the constructor takes struct 
clk*. It could be modifed to take struct clk_hw*, but probably only with 
larger changes to clk-imx8m.

The interrupt handling should be moved to secure world.

> Hopefully this can
> work out as some other sort of driver that is used directly from devfreq
> or interconnect core instead and then have a different consumer driver
> of devfreq or interconnect core that knows how to drive the clk tree.

Hiding dram rate setting behind a clk rate makes it much easier to 
implement devfreq or interconnect, as in this series:

https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=139367

I sent than RFC after you replied to this email, mostly because it's 
been pending for a while.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
