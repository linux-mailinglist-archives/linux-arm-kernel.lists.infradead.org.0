Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7689BE880
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 00:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=TWC+FkI+fvxno57iz6alrjxccL141t5F5uT3A/1hfkM=; b=Kp9Lo9m6dXXzH+
	6QhH31KBkCL/cKxNJx86PUHVW2QdTXb5MSsXymGMA8kKxOf2YpUt5xnTOeR1n1mtPu+MKpMn4VOZz
	gX7+Qn72XXhE95YA7oi52Z9hGcuCjMSMhgKfovjpztV7Z4Z4TxUWAl+0KKOUmAkHNMUJ+Zv+vD3BF
	gSMOt/t3K5GtDYIT9qYlh8BD7FV+YRtk3ZwP/9RiV3ellfRtOvynD8mJzNokHPnLtn35N0M2IMnLy
	ipPc9Dcvaql+jaegv30fQKwkJKvBCtrA+QmxwGUhr1DGety8qfLLqveCRIhYH1njhPzxiB3yGKs2X
	5zvjWsQ+RHv1iVRmIxjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDG9G-0000WV-7b; Wed, 25 Sep 2019 22:52:38 +0000
Received: from mail-eopbgr140082.outbound.protection.outlook.com
 ([40.107.14.82] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDG8y-0000WA-1I
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 22:52:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YYQRc5aDVQ0K7KuiXzf27hya4rZ2XcmipvfCgGEhKHT1BNSYOcqNFpigUu9RIyLQIyAel7Y1HOEyI6YjrjTdZSHcWdE2yFjoiZraCcXnwZFoBBGZBpunZrNQVCoUSGpi+ZL5z4Zb/P73szgQD0ekG5nHva4A3a1jVQakIn5X6R77/5p2maQdkrct8ERbwLtsaM8YQ09YqAfi7Gfp1ME0M6ZOZTZ5bqZhommpoFXRS0ziUeWxXuCEKctZvJfqSFs9+PLg9cyi9DdLusQ6oxZ/1Vo6MFXZPldKta3FmrUYitiBtb5kgc9YfIJiT/TsebXT8QOpIBJfEl4usym0WrQRTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x5iSq2nhxfuvjfq1Lf5BigNX4+LfIEyFcWYeXnB3wug=;
 b=ePDeRR4o/QRLJ0iuVAeDKNoH8elQl5Q8vO4I/14X9+qwAcYtclctJ4HOdYVzCEZvqeE1JbYoU7aYoTrU6NXUSq3cyuqJmMyRznDERZtLFpIc4GfDvgsKWmxXEjdx8BAQ2cir2DJfP0CaVmnf4mBDTldCzU4k1kF51jMhekOYWiP2ghXj3/AgJG2kMnNz7J5Kw0XIKw270tgBVoSo8BJ0wqtYFAkkQ0ezotcY/oD7quy/UAlOz31vcBmACgC2jBP2mhNnfY//sB2hH3ynzJfDoi3rYW2rbMI3SQGwqFx2Z/csiQOSdjhkvjOJQMXtLn5EYEKcnM2w6qwPPjOqkOZAMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x5iSq2nhxfuvjfq1Lf5BigNX4+LfIEyFcWYeXnB3wug=;
 b=KX1OfuXCteKzavdrvy1vBXiefRILpVLCldp0cwuwslbs4wFIZLdFlmSfu0OYHQBATfcr/ReZnfa8UXG97CmZHAVTp0o0IRdHY01A17Ey5heZnlQFftb1DJTFVtjVxksZ1me+oy2lfwYzW3SYftm7zw89lLSa48FUn29CH7Au98w=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3040.eurprd04.prod.outlook.com (10.170.228.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.23; Wed, 25 Sep 2019 22:52:15 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 22:52:15 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, =?iso-8859-2?Q?Artur_=A6wigo=F1?=
 <a.swigon@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [RFCv4 0/7] interconnect: Add imx support via devfreq
Thread-Topic: [RFCv4 0/7] interconnect: Add imx support via devfreq
Thread-Index: AQHVWcA7xPiNhLrdqkSG10Lu7U9EhQ==
Date: Wed, 25 Sep 2019 22:52:14 +0000
Message-ID: <VI1PR04MB7023ADED2210DFCB81E588CFEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1566570260.git.leonard.crestez@nxp.com>
 <VI1PR04MB702373BE28E4404C7F2CE75FEE8C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <02d3fe6a-53a6-3290-deab-d79e940978ff@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c6ad8b2d-4548-4d2d-9302-08d7420b0281
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3040; 
x-ms-traffictypediagnostic: VI1PR04MB3040:|VI1PR04MB3040:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB30402C769EFAF5820F61CF6EEE870@VI1PR04MB3040.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(346002)(366004)(396003)(199004)(189003)(4326008)(81166006)(81156014)(33656002)(55016002)(186003)(7416002)(14444005)(256004)(74316002)(316002)(102836004)(54906003)(305945005)(76176011)(53546011)(6506007)(7736002)(99286004)(7696005)(9686003)(66066001)(26005)(486006)(110136005)(66446008)(64756008)(66556008)(478600001)(8936002)(76116006)(66946007)(14454004)(91956017)(229853002)(3846002)(6246003)(86362001)(71200400001)(6116002)(44832011)(52536014)(71190400001)(66476007)(5660300002)(2906002)(6436002)(446003)(25786009)(8676002)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3040;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IaZpNTogoaHWclceYZwk6/OlKPaxbi/wnOtkw3zmDDpxaGjwAdHGL5KaAb6TGx1ryPTQs9SLMCGG6myiA6SP3Ax/p0EFp2ZXhN1DdCzDWiIRFc4gE1eieFRRObP99uUFRNIe6ybyiKOUE6dasEshvxsmRy/z5cuhl5nAOcagnF+FbRhT50dmFA71qiErASSqv+ch+mimtZZhq6RA+QHSt604anrfw02CKJt2VFBf0OL/GWqj6alxIr3gajWeagJkF6bBOzuJHhVZ/HxOsFf4yix7nBc6d/D3M8t+bQnWUwwLkRrPIrEIwQ8Yk+tzWkvmtmZKgpQZjV0HCA//CttdGkTyftMvp7OJlFZ5hyN8qsbAMbVUedFke2A0SvIw5z9+08w+scHPCUS7ujbDZftFIQ0KUAhExZayFwrfKk89A9g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6ad8b2d-4548-4d2d-9302-08d7420b0281
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 22:52:14.9243 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wbW8rqqIPs/WQJNoLGRiP4wb3GKcAiOaVtaxJzfMbGrskYjId03JFZUrRcRwebm28qNaCsFPaGOJ7PtZz8Pf9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_155220_083686_D15857A6 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.82 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25.09.2019 05:38, Georgi Djakov wrote:
> Hi Leonard,
> 
> On 9/16/19 05:34, Leonard Crestez wrote:
>> On 23.08.2019 17:37, Leonard Crestez wrote:
>>> This series add imx support for interconnect via devfreq: the ICC
>>> framework is used to aggregate requests from devices and then those are
>>> converted to DEV_PM_QOS_MIN_FREQUENCY requests for devfreq.
>>>   
>>> Since there is no single devicetree node that can represent the "interconnect"
>>> new API is added to allow individual devfreq nodes to act as parsing proxies
>>> all mapping to a single soc-level icc provider. This is still RFC
>>> because of this
>>
>> Any comments? I made a lot of changes relative to previous versions,
>> most of them solely to avoid adding a virtual node in DT bindings.
>>
>> The only current interconnect provider implementation is for qcom and it
>> uses a firmware node as the provider node (with #interconnect-cells).
>> However there is no obvious equivalent of that for imx and many other SOCs.
> 
> Not sure if it will help, but have you seen the qcs404 interconnect driver?
> There is also mt8183 interconnect provider driver on LKML.

Yes, but only yesterday. The qcs404 driver involves multiple DT devices 
so it seems closer to imx.

As far as I understand from reading qcs404 source:

* There is no struct device representing the entire graph.
* There are multiple NOCs and each registers itself as a separate 
interconnect provider.
* Each NOC registers multiple icc_nodes of various sorts:
   * Device masters and slaves
   * Some nodes representing NoC ports?
   * Multiple internal nodes
* There is single per-SOC master list of QNOCs in the qcs404 driver.
* The QNOCs can reference each other between multiple providers.
* Each NOC registers an icc_provider and a subset of the graph.
* The multiple NoC inside a chip are distinguished by compat strings. 
This seems strange, aren't they really different instantiations of the 
same IP with small config changes?

This design is still quite odd, what would make sense to me is to 
register the "interconnect graph" once and then provide multiple 
"interconnect scalers" which handle the aggregated requests for certain 
specific nodes.

>> On imx there are multiple pieces of scalable fabric which can be defined
>> in DT as devfreq devices and it sort of makes sense to add
>> #interconnect-cells to those. However when it comes to describing the
>> SOC interconnect graph it's much more convenient to have a single
>> per-SOC platform driver.
> 
> Is all the NoC configuration done only by ATF? Are there any NoC related memory
> mapped registers?

Registers are memory-mapped and visible to the A-cores but should only 
be accessed through secure transactions. This means that configuration 
needs be done by ATF in EL3 (we don't support running linux in secure 
world on imx8m). There is no "remote processor" managing this on imx8m.

On older imx6/7 chips we actually have two out-of-tree implementations 
of bus freq switching code: An older one in Linux (used when running in 
secure world) and a different one in optee for running Linux in 
non-secure world.

NoC registers can be used to control some "transaction priority" bits 
but I don't want to expose that part right now.

What determines bandwidth versus power consumption is the NoC clk rate 
and clocks are managed by Linux directly.

DVFS on the RAM controller (DDRC) is also important. That component is 
only a bus slave and frequency switching requires a complex sequence 
inside ATF.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
