Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB93C11A84A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:54:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=XyNG5/cJphpIo8ThTaJkDpxcp4DkDGzg6SLJjG0Oq1I=; b=RxMSSZinkinoEf
	PqCodr0YWbYJVfGpTaPr970DZ+l/ARSWAsLTk7dYkbrxflL8InVfmTKVC53oXb86Hbc07/OO5vcNb
	MjbtoUtebciP5R+CUB/Tb2J7fxnH1nP48DZ+OvgFoG9XtZgFhjKe//vVoIB11RjJ+Fhh9VXpFNKQs
	GRl8lX7dC8Se1fq2Yv90bRu0tD6F7gDDyzAS2FgncoIVFVOpguIMUFaCERyFNBBHkfr6C5UamRi+y
	gDixRZYRad6IItNkdn5XZadMbfCB6RUyf/sL7F0CHZGNMpI6WxD9PZqu54DAO+WruOOQeuw8ey1vf
	3Ij4AtNiMKroc4/pEs5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyh1-0008V9-Oh; Wed, 11 Dec 2019 09:54:03 +0000
Received: from mail-eopbgr10072.outbound.protection.outlook.com ([40.107.1.72]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieygo-0008RZ-OA
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:53:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+YEUgfv6ceKuvqRypGH3jMptpIxFn247OJJTIq2FH9OpnAYs2xDnZhdGfmVQaoZfQvke+pz7x8bF9DOQS9ke/NHGPJiyvT7CcRD2WwaS47fPGWzwYlKEpm3cgMBxw9t3VTjM4xA+cQNUsZ2W6sUMRJ9Ha4flDqWNB4W0vVbixX11d0MurAjf1ErvxCzXoTcPvcLdcE652XqznlaUaDgSxH5GuW0TXZ9heZG2LYR+/2l98N94eJhWYkYABwWzlSi31BNUUhaOIDsRnDowcfmmbCeTnrdAIYxWHFCuEBlT4PS9nKsBhmTb8QccZGbGhIt00OpYMvUx4rAQ8tNY0ZqDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xLGWhMFsw5imsU/e9+ztTyVw/Fu1KfXEin0IYzil0xE=;
 b=M082h4KACAvs4WCgoax1WCWmlIQnz3wAU7BAlHE/95cF9a/mTq4xV0XkkBm/cp5ahjOrVkm8CLeXVIXQxurosp3jv6VRbQq+5c2vlZ3VZ6/TiftCPwAARueLExuUV5XdgtFfEpkOoDH8/iIQ+MT1LUW8u0ovuIcM7LzPASjjiN3BszbMkRf+a3Bfrwv28dZWRwiItjjXAWyoF80tD7HpwQSMdEYMIAzyQvxcnUd5r0XfP8B0xO4kSPp/2jQVAp/veJ/UBkyk+wuQ/cerLJv2+A3z9B7L5O+V+4N0q6gOP8mMKY5zMM1ZIotiOitfq+Rl/F9ccyjs/Dd/NNwPzkwqYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xLGWhMFsw5imsU/e9+ztTyVw/Fu1KfXEin0IYzil0xE=;
 b=nsjewIH2tmouzkhcfS3PaXEbYVgk6q+xlqhyG9udWEdB+MgNC+2+SYJkDfhbo5TUrphjEh9aaDh/HRYOtwC4+b6NcL8/6HHsXmfnNQ0MVKAfHL0a4Bamf2hWpTfhhMzodXQmKZPDw3zJxUsRQpZ3G58tsbmtv1oFLkbtbOL0svE=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6864.eurprd04.prod.outlook.com (52.133.246.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Wed, 11 Dec 2019 09:53:38 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2538.016; Wed, 11 Dec 2019
 09:53:38 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH RFC v6 0/9] interconnect: Add imx support via devfreq
Thread-Topic: [PATCH RFC v6 0/9] interconnect: Add imx support via devfreq
Thread-Index: AQHVmyeX+HHYkDJzz0q57HQmhjkEQA==
Date: Wed, 11 Dec 2019 09:53:38 +0000
Message-ID: <VI1PR04MB702367B475FB20214F27F1F5EE5A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 840d64dc-923c-4da7-0c2b-08d77e1fff31
x-ms-traffictypediagnostic: VI1PR04MB6864:|VI1PR04MB6864:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6864EC617298EC2B5A998EC7EE5A0@VI1PR04MB6864.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(189003)(199004)(44832011)(45080400002)(54906003)(110136005)(316002)(86362001)(478600001)(66946007)(33656002)(7696005)(966005)(26005)(9686003)(6506007)(53546011)(186003)(55016002)(5660300002)(71200400001)(7416002)(81166006)(76116006)(91956017)(66446008)(64756008)(4326008)(66556008)(2906002)(66476007)(81156014)(8676002)(8936002)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6864;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X2yXplm93UfRqIqcCHApMKZoCm/jUgeYwElkqeojuYfpOxCjfWCWvB1mlWCEYrRrHdWBIgiiwTxlTvJ4wyyemb5M+bnB4Y/yfTau3BvLGhs4Ar2DatIIGqElduGweiFg71eE742RCm2FhFQ2kMfMTwGhcCLesmfPGolhMxrIcJEIOxW7NUaUlC54x14WYz/NLDbQjMaeubDz7baq0eG9OrjnnM9QnqUJRDOGetx2YqDAC6ZVZR33zpbIGOVd9icOIg4k/fdhiz132YAmMXmiNM1lWPr6nEcJBQF4kYmauQE7WbqdmQ21XBFmFg/Gjm0aKGXpLONbYAvLQCLX7g23ASxxdhDcZvy+xIRChBKo4V+M5k2DEwuwO4993HwCIVaSoDtzJHKGqEQ1em7I3JQKAc3Dx9iH5w1h6Gvd8e5JhPeNlbcwjUuU8I3HHyOjZThvgg0uql5DN6jkWJERWV2Ji5dz9BAzzuiY4kjfAzAHWu8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 840d64dc-923c-4da7-0c2b-08d77e1fff31
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 09:53:38.5430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KdBup5KUSv3i7n3pPnnGFzD4tR+qlRXAMgJNSL9UJCyfD40EeGaIMCOmAxR8qlp2BFZWWiHPq8OVJznVOPwWAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6864
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_015351_298336_ABBB41B1 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14.11.2019 22:10, Leonard Crestez wrote:
> This series adds interconnect scaling support for imx8m series chips. It uses a
> per-SOC interconnect provider layered on top of multiple instances of devfreq
> for scalable nodes along the interconnect.
> 
> Existing qcom interconnect providers mostly translate bandwidth requests into
> firmware calls but equivalent firmware on imx8m is much thinner. Scaling
> support for individual nodes is implemented as distinct devfreq drivers
> instead.
> 
> The imx interconnect provider doesn't communicate with devfreq directly
> but rather computes "minimum frequencies" for nodes along the path and
> creates dev_pm_qos requests.
> 
> Since there is no single devicetree node that can represent the
> "interconnect" the main NOC is picked as the "interconnect provider" and
> will probe the interconnect platform device if #interconnect-cells is
> present. This avoids introducing "virtual" devices but it means that DT
> bindings of main NOC includes properties for both devfreq and
> interconnect.
> 
> This depends on other series for devfreq pm/qos and ddrc:

It took a while but all runtime dependencies are included in 
next-20191210 and the compile-time dependency on 
DEV_PM_QOS_MIN_FREQUENCY is also included in v5.5-rc1. This series is a 
bit old but still applies usefully so I thought I'd ask for additional 
comments instead of a blank resend.

Georgi: can you please take a look at this series and suggest what would 
make it suitable for inclusion?

Some dubious aspects:

* Existing drivers have multiple providers per SOC (for each internal 
NOC?) but this is a single driver for the entire SOC topology. Not clear 
what would be gain from this.
* NOC DT node implements devfreq (because it can be scaled) and 
interconnect (to avoid virtual DT nodes). Maybe the devfreq NOC scaling 
implementation could be moved into drivers/interconnect/imx?

It is quite different from qcom providers but hardware/firmware is also 
very different.

> Changes since RFCv5:
> * Replace scanning for interconnect-node-id with explicit
> scalable-nodes/scalable-node-ids property on NoC.
> * Now passes make `dtbs_check`
> * Remove struct imx_icc_provider
> * Switch to of_icc_xlate_onecell
> * Use of_find_device_by_node to fetch QoS target, this causes fewer probe
> deferrals, removes dependency on devfreq API and even allows reloading ddrc
> module at runtime
> * Add imx_icc_node_destroy helper
> * Remove 0/1 on DEFINE_BUS_SLAVE/MASTER which created spurious links
> Link: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11222015%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cff0127cbde3e4e6f6c8508d7693eb8d5%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637093590418229667&amp;sdata=0EN1w8RtXHgyvXpRnOovEkWILoVlQ%2FEXJ0zdOOHI%2FgM%3D&amp;reserved=0
> 
> Changes since RFCv4:
> * Drop icc proxy nonsense
> * Make devfreq driver for NOC probe the ICC driver if
> #interconnect-cells is present
> * Move NOC support to interconnect series and rename the node in DT
> * Add support for all chips at once, differences are not intereseting
> and there is more community interest for 8mq than 8mm.
> Link: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11111865%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cff0127cbde3e4e6f6c8508d7693eb8d5%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637093590418229667&amp;sdata=bsJqXPVJSszKJf%2BXdqFT2E8wriuKQU00sWwkRqZYmn0%3D&amp;reserved=0
> 
> Changes since RFCv3:
> * Remove the virtual "icc" node and add devfreq nodes as proxy providers
> * Fix build on 32-bit arm (reported by kbuilt test robot)
> * Remove ARCH_MXC_ARM64 (never existed in upstream)
> * Remove _numlinks, calculate instead
> * Replace __BUSFREQ_H header guard
> * Improve commit message and comment spelling
> * Fix checkpatch issues
> Link to RFCv3: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11078671%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cff0127cbde3e4e6f6c8508d7693eb8d5%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637093590418229667&amp;sdata=c9xKEw9Fjlv%2FqDiWKr7zOUY5zZMWXjNyApBd94Nidnc%3D&amp;reserved=0
> 
> Changes since RFCv2 and initial work by Alexandre Bailon:
> * Relying on devfreq and dev_pm_qos instead of CLK
> * No more "platform opp" stuff
> * No more special suspend handling: use suspend-opp on devfreq instead
> * Replace all mentions of "busfreq" with "interconnect"
> Link to v2: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11021563%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cff0127cbde3e4e6f6c8508d7693eb8d5%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637093590418229667&amp;sdata=1tEQS9BaHRTjdUYvZJ9%2FJG2BQQGl6hkbPWxiIZ811FY%3D&amp;reserved=0
> 
> Leonard Crestez (9):
>    dt-bindings: interconnect: Add bindings for imx8m noc
>    PM / devfreq: Add generic imx bus scaling driver
>    PM / devfreq: imx: Register interconnect device
>    interconnect: Add imx core driver
>    interconnect: imx: Add platform driver for imx8mm
>    interconnect: imx: Add platform driver for imx8mq
>    interconnect: imx: Add platform driver for imx8mn
>    arm64: dts: imx8m: Add NOC nodes
>    arm64: dts: imx8m: Add interconnect provider properties
> 
>   .../bindings/interconnect/fsl,imx8m-noc.yaml  | 104 ++++++
>   arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  28 ++
>   arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  28 ++
>   arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  28 ++
>   drivers/devfreq/Kconfig                       |   9 +
>   drivers/devfreq/Makefile                      |   1 +
>   drivers/devfreq/imx-devfreq.c                 | 187 +++++++++++
>   drivers/interconnect/Kconfig                  |   1 +
>   drivers/interconnect/Makefile                 |   1 +
>   drivers/interconnect/imx/Kconfig              |  17 +
>   drivers/interconnect/imx/Makefile             |   4 +
>   drivers/interconnect/imx/imx.c                | 301 ++++++++++++++++++
>   drivers/interconnect/imx/imx.h                |  60 ++++
>   drivers/interconnect/imx/imx8mm.c             | 105 ++++++
>   drivers/interconnect/imx/imx8mn.c             |  94 ++++++
>   drivers/interconnect/imx/imx8mq.c             | 103 ++++++
>   include/dt-bindings/interconnect/imx8mm.h     |  49 +++
>   include/dt-bindings/interconnect/imx8mn.h     |  41 +++
>   include/dt-bindings/interconnect/imx8mq.h     |  48 +++
>   19 files changed, 1209 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
>   create mode 100644 drivers/devfreq/imx-devfreq.c
>   create mode 100644 drivers/interconnect/imx/Kconfig
>   create mode 100644 drivers/interconnect/imx/Makefile
>   create mode 100644 drivers/interconnect/imx/imx.c
>   create mode 100644 drivers/interconnect/imx/imx.h
>   create mode 100644 drivers/interconnect/imx/imx8mm.c
>   create mode 100644 drivers/interconnect/imx/imx8mn.c
>   create mode 100644 drivers/interconnect/imx/imx8mq.c
>   create mode 100644 include/dt-bindings/interconnect/imx8mm.h
>   create mode 100644 include/dt-bindings/interconnect/imx8mn.h
>   create mode 100644 include/dt-bindings/interconnect/imx8mq.h
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
