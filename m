Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B97B9BBDC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 23:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=vjwKTQbj3VDPSZTyiug1ejOk67crqpUTI6SYtWaB7bE=; b=joS+XRaRHGILkx
	9VokqS6t7qW0TQAt/o8uzX2SG8X46b0ZaCuH20TvCahxsgIpOiVHtRcie++WP9pExdOCiyyVz17qL
	nQXQpmRQDvDzG3WPB7Tnq0xzeWWe4q34XqOz8O4HXz2pAtfJ/R9Khm2v9Ls4aKwnPgY6ff5oTwp3y
	IHk3hjInqjgqRXvADzUnyuC3Agx0DjkVUOAAhMTXqPxyDV8Q5R0uB+vKwvOEPaqDJ7fmw/YGHbAVy
	pKZ/Hr5+xrl7EUfOAtVEUVo1DrtCWW8+HFVdvhlDrmjRynInRHeORwR3zsnjsYgnhc+9X9R1rvmI8
	aAmUE57fXiK3OClJnmAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCVnO-0008VV-UR; Mon, 23 Sep 2019 21:22:59 +0000
Received: from mail-eopbgr20089.outbound.protection.outlook.com ([40.107.2.89]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCVnE-0008V6-K3
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 21:22:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HXBgHV8PT+RgfrFox7fTSVFfHAHcoAiU8KadqMKvMnD31x1SoQDeT0btvmMzt/WB+AwOL+UGDXJZ1IsZk6Pb5EPuDe3sAqZ+XDdT7+aW1m6TL406hSjLGUWuY5r29PLIZX5KBRgBt4XILGs22Hp+iRB7GITShxp8AAQTx2Z60HiMpd+adb6eKUAZMsdi4memQcslEJMd/kLPGdfm6uU8pc1JzHzCgVuuzb6goCkLNFP0sslD7M8ArewTuN4yUm4u/NGPF0IMtsNMP/9VDm87Hys7FMTnj/WvW8INd7HpwvoXTHk6/Q097sMY0w86UXpBC1axDAF6uwFSc+qrKd/BYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7WkgFVCu6l6w0LNhI6zd9HqQOgO0mVRm6PYkVke1oXU=;
 b=AzQrY3oZWTeZeDhRgFrgau3qm1au9XjEQ7rAKnSDn2Zp/nAiAowznBkNGHbhlR2SfsK/1qmnMzAbkCJsHvwHQkOkaAKHFn3kq2juGXljikN/ojVZWHcG+FDXsmvRG5yR0oe5fSpoyyOASHkqz5IEj8U2jJddAEYroJMcWqOpYw43Zag1CtIUWyYr/JBvRj/TJCeVqr8iMA2IBS9cLxHsS6lc+7+umkB+oC1CUIuQLnFloTobxMNZRY1ohGglsQjSY9mkFfqWCTUcPAj5vodK4CjbNMsYqutk7jX62cE5V/Hm5qxDb5NHyvFuwkbYPVHnCBdi46MgYH9+Z+kpyAxDug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7WkgFVCu6l6w0LNhI6zd9HqQOgO0mVRm6PYkVke1oXU=;
 b=jiNKkvAcCsmmlkufZqYP/A0qQjIXi8UBxUXyxKUn30daruYdht0Qff+2MiUy0N7oLraa5d5zIms5Ba6guxn2/qlZqiYRrmKj7RO+C+jjGBa7Zx4WVEhYIFwFG2+I17J0TadntW21i/7AEflC2U3UzYWYkNiyb8Mf6abLGgyZDPI=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB7101.eurprd04.prod.outlook.com (10.186.159.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Mon, 23 Sep 2019 21:22:45 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 21:22:45 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Martin Kepplinger <martink@posteo.de>, Jacky Bai <ping.bai@nxp.com>, Anson
 Huang <anson.huang@nxp.com>
Subject: Re: [RFCv4 0/7] interconnect: Add imx support via devfreq
Thread-Topic: [RFCv4 0/7] interconnect: Add imx support via devfreq
Thread-Index: AQHVWcA7xPiNhLrdqkSG10Lu7U9EhQ==
Date: Mon, 23 Sep 2019 21:22:45 +0000
Message-ID: <VI1PR04MB7023C5382635F6959EAF9330EE850@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1566570260.git.leonard.crestez@nxp.com>
 <4440b392-d968-4a54-2ea0-ffd5beba02d1@posteo.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9ff94f6-e142-42ec-3549-08d7406c2d36
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB7101; 
x-ms-traffictypediagnostic: VI1PR04MB7101:|VI1PR04MB7101:
x-ms-exchange-purlcount: 4
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB710123D6905510EEBE2D5376EE850@VI1PR04MB7101.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(366004)(39860400002)(199004)(189003)(8676002)(14454004)(6116002)(7696005)(76116006)(64756008)(316002)(102836004)(446003)(66556008)(478600001)(9686003)(26005)(66476007)(99286004)(6246003)(7736002)(305945005)(66446008)(25786009)(110136005)(7416002)(2906002)(476003)(186003)(91956017)(71200400001)(71190400001)(8936002)(5660300002)(256004)(229853002)(76176011)(54906003)(33656002)(4326008)(86362001)(14444005)(44832011)(74316002)(486006)(53546011)(6636002)(6436002)(55016002)(81156014)(66066001)(6506007)(6306002)(3846002)(52536014)(81166006)(66946007)(966005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB7101;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jdy2i6brLVbS6tOAxIC/z0rAv5FlK08RfDi5zvcwrXbxaqvcT+ZTrtyOfTZA4vkQY+cm2baAB1JFK2v6963b6hr0IG7DMluAPwVwppKStpqsQo+eb0/8SaKVoOQA4FbfK/qEHKmC51N0AO7aptfM1BZxtUUWSSNVSZ06jlU1aqkvG6tQGhOz5fXq3YtQkhB3+C6+Rs+2jfLqonH9lWQFdHUHXAI9gmXeRH3ZbAwEjwb+LzSp9ULb5JDb3HIzggx2Woqj7ly49/t7vOtOwgyzMXQ8gIkVOg6l92tCXcYc4C/yP6lQxA4LGE6dq6S6zrgW3cMY/1bJPWKOGuDwr6Hw98P3jpGYsk5fVkFs8Bpn7T3sks85VpOTBEp7ENTYRwoGGw8vGNokYYAuidYNELLSNm+2sxx/F42LRxIWdSYlj38=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9ff94f6-e142-42ec-3549-08d7406c2d36
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 21:22:45.3425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MOuS9ilYoZSSLw5cRRHs0clzmYMeNRc3ntRF3PirmclsLjfvAZWKVKZm+OkxlrM6fM99kU0iDgikav956AYShg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_142249_011783_816965BF 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Peng Fan <peng.fan@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21.09.2019 09:07, Martin Kepplinger wrote:
> On 23.08.19 16:36, Leonard Crestez wrote:
>> This series add imx support for interconnect via devfreq: the ICC
>> framework is used to aggregate requests from devices and then those are
>> converted to DEV_PM_QOS_MIN_FREQUENCY requests for devfreq.
>>
>> The devfreq parts are posted separately, this series only intersects in
>> devicetree.
>>
>> Since there is no single devicetree node that can represent the "interconnect"
>> new API is added to allow individual devfreq nodes to act as parsing proxies
>> all mapping to a single soc-level icc provider. This is still RFC
>> because this
>>
>> The rest of the changes are small and deal with review comments.

> on imx8mq, probe() fails:
> 
> [    1.082847] imx-ddrc-devfreq 3d400000.dram-controller: failed to init
> firmware freq info: -19
> [    1.091434] imx-ddrc-devfreq: probe of 3d400000.dram-controller
> rejects match -19
> 
> in imx_ddrc_init_freq_info()'s check:
> 
> if (priv->freq_count <= 0 || priv->freq_count > IMX_DDRC_MAX_FREQ_COUNT)
> 
> That would indicate that I'm missing something in ATF? I'm pretty sure
> I'm running your tree though.

What is your board and uboot version? I tested on imx8mq-evk (SOC Rev 
B1) with NXP uboot. For example this uboot release works:

https://source.codeaurora.org/external/imx/uboot-imx/log/?h=imx_v2019.04_4.19.35_1.0.0

It is uboot which trains DDR for multiple frequencies and then passes 
that info to ATF. I'm not sure about the steps required to enable this 
for 3rd-party boards, should be same as for busfreq from NXP tree.

Getting this to work on a 3rd-party board would be interesting.

> Does anything come to your mind what I might be doing wrong? Am I
> running your "correct" linux tree? Remember I'm on imx8mq, so I don't
> exactly test this RFC of yours.
> 
> Also, how are your plans to rebase / update your ATF tree?

The ATF changes will show up in a future release of NXP ATF branch, when 
that happens I will drop my branch. NXP ATF releases are on CAF:

     https://source.codeaurora.org/external/imx/imx-atf/

> And since there's a lot in there: what additions are necessary for this
> devfreq to work?

devfreq imx support here: https://patchwork.kernel.org/cover/11104113/
Interconnect support also needs PM QoS support for devfreq:

     https://patchwork.kernel.org/cover/11157649/

> Lastly, how do you test? Is /sys/class/devfreq supposted to get populated?

Yes, and only the devfreq patches are required for that.

# cat /sys/class/devfreq/devfreq0/available_frequencies
25000000 100000000 800000000
# cat /sys/class/devfreq/devfreq0/cur_freq
800000000

You should be able to control frequencies manually with the userspace 
governor:
# echo "userspace" > /sys/class/devfreq/devfreq0/governor
# echo "25000000" > /sys/class/devfreq/devfreq0/userspace/set_freq

This series allows devices to request guaranteed bandwidth for 
themselves through the interconnect subsystem, without it DRAM freq will 
still switch but you'll have problems like display corruption as it 
turns on before freq goes up. You can check that probe worked by doing

# cat /sys/kernel/debug/interconnect/interconnect_summary

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
