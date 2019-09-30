Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B2CC20A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 14:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Eos73/AaKZORDscJmQrKpJ1RkU3dNg2SbzH4Zz6LTXQ=; b=dyq9WzSeki98Oo
	HlsBMu6p9Q7jtV+bL/ZwdrXIGcBCMu3txFT06X2npEjxBkXv+6u9OT1bn5xhU2ogw04YraCpb+boe
	b5opg+aiTJiDCwVaxpr5b8WRuiQPkQl2WWHKuFa+bRodNXHrNxRGNsp9FJWJjtgm3E6eHrr92yHPa
	P2WKtyW4kJFoYGar8dqG+bbCOXIs/BL75UW+Q4NxcKqr5dqB5EjshVxuOJXIB4OU2cYZF6J6RrVoJ
	Y+pFxSAmm8s9kRywYKTQ7hOxG8/ZX5TR49W3Uv5aesX20eVZTvjmNjqviwq78fkBn1ZO3nfRjVzBQ
	rRn/HxT6dt67Ufb5tplw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEuq8-0004cv-SU; Mon, 30 Sep 2019 12:31:44 +0000
Received: from mail-eopbgr150048.outbound.protection.outlook.com
 ([40.107.15.48] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEups-0004Vw-Bl
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 12:31:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=acOnNiP0kXQIivQZfmE5c5/rQer1AdNbi0puPBqUSJ5hdfhC2cd7Ye2lbxbUxeh+FbN0uh0B7CE7LlBa4+wmdaLusWfXrrhdn+6431OtPEvguRrwtoKDKN6mQeb18cV12PF3+jh92/NOWuctNrwwHObAxjFcduTG4Ys+h6fb9MmU9JdvJrEtR44g2LTi/jdF+uvIlIevDLlJdOsFcSCHJF8nMExZcYA+CNabHOIf3JKKa9YD/CkCmEaHtvjxLpMovLDF5tReFdoJT2dhO7OYAQrLd5vRuMjY925eNgQbRB2RHCsoCveTpFtXViMyvFzeKda2j5k2I787u+h+yTLk1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v0YK9BBMsjkmMIV4HXbw7SWLBrnTFXp4wwng71Bm87g=;
 b=HK2BGHf3+vDfxUe1j8l5MGCO8XIcrAqN417PjBXq2nivey5smptHRBLpH5nLejnrGKWKET3nnWyLMLyROpUi3Y6eH4KU/+8skHNAxpqES2N8Dk2XeG0h8hYMuR5QLLCBSnd7ilbsQhEh1rv5+a1EcHU5rwYqWCSOPRbp5zvuWbW5tEHRrGhRLHKZGBXf+qVQHrkmd/eQ2l64gxigtzkeTw9sWQshi/lexIywIVKQAdn0kHVw3ClLxQCCuYNvxZpWxRBrBuIi6JQuIHWghG4RCzl4FKXCuJ0Rb7/G4ex+ofpNvnDYLHw3ZSuHs4vmeeGa+ogfJgUPkoqLi9vGk55qoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v0YK9BBMsjkmMIV4HXbw7SWLBrnTFXp4wwng71Bm87g=;
 b=sCk4wRHw2L6iWPpr+to887nENynCYKSbeUr3YpdBvQII1UzssXMkATuP8UqNrPc/plptN2Nawv0tTEdC/fTTIx1tCOf9PSLOXXMWcqrw5zzub77L4J9+Y5HlULouSVrUDRsLwGZxYH6/t4ag/KNNUZ1FsmM0+YUQyLUtpjUtPlM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5295.eurprd04.prod.outlook.com (20.177.51.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Mon, 30 Sep 2019 12:31:22 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2ce6:267:b2a6:9902]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2ce6:267:b2a6:9902%2]) with mapi id 15.20.2305.017; Mon, 30 Sep 2019
 12:31:22 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, =?iso-8859-2?Q?Artur_=A6wigo=F1?=
 <a.swigon@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [RFCv4 0/7] interconnect: Add imx support via devfreq
Thread-Topic: [RFCv4 0/7] interconnect: Add imx support via devfreq
Thread-Index: AQHVWcA7xPiNhLrdqkSG10Lu7U9EhQ==
Date: Mon, 30 Sep 2019 12:31:22 +0000
Message-ID: <VI1PR04MB70230CC67539BC41E08F4956EE820@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1566570260.git.leonard.crestez@nxp.com>
 <VI1PR04MB702373BE28E4404C7F2CE75FEE8C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <02d3fe6a-53a6-3290-deab-d79e940978ff@linaro.org>
 <VI1PR04MB7023ADED2210DFCB81E588CFEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <a1f04769-9547-58e6-2bd0-5b6a5864fbf0@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e72abba1-5040-44fc-fee5-08d745a21a64
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB5295:|VI1PR04MB5295:
x-ms-exchange-purlcount: 6
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB52954D75E141EBA4EA10DDACEE820@VI1PR04MB5295.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(396003)(39860400002)(366004)(199004)(189003)(256004)(316002)(6246003)(9686003)(33656002)(25786009)(6306002)(186003)(55016002)(229853002)(6436002)(8936002)(26005)(52536014)(7696005)(110136005)(7416002)(99286004)(6506007)(102836004)(76176011)(86362001)(14454004)(71200400001)(66066001)(8676002)(44832011)(5660300002)(81156014)(81166006)(74316002)(53546011)(966005)(486006)(4326008)(54906003)(7736002)(446003)(478600001)(71190400001)(2906002)(6116002)(3846002)(66446008)(305945005)(476003)(64756008)(66556008)(66476007)(91956017)(66946007)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5295;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u6ui7NHeLubAqlbvzcZzWP0wudAWqH4gxofYatZIf8+wthggWvnSx/+ky4Cs7PnCpJ7qfUVp5PkmPuIDp7sDjpAke7zKvid2HpixHgmZw38d0yMKiZ3xEZ6xFSAgJaZQ5LVqVmbBgDkY1Cbdh3bMUFoP6qjuXcfaEjwXadbQ7YflVZUazSxx92kNlJi+OSyOfA3fpnlOz/UXVMiTkRSTG4S4/mytfloCnNxT1cBo+KZlLBXCB0d92wUt20s8vMXnXwpe4HGe7Y8stVugZ4nYYDiesY0whRwaYSW0ICxM4nfzyCi9md66oRu60SfJNfHyRRcsDirLH+5dceQgT3I5jhhSl91Zqu/vEeDcXEkv604ObfLlz2OZ/ECOrr8AlzhoKTOOCkkkIUK2F2QLqxFgBEmc8Kq9hcclDUH5u15oGgtsgkGZDZ3ndx5flH6wre21wHzvHzxAX+PgEPipQZzbNw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e72abba1-5040-44fc-fee5-08d745a21a64
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2019 12:31:22.4678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vunRFL9t44QpWdgR4U8JXPJc7tf2+QD82dkCZ+O7y9jG4xdI4T8TEEiq77z3Bl4GSkFo4fXUJbnLdCfigsMwyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5295
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_053128_506583_6036B495 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.48 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 2019-09-26 3:52 AM, Georgi Djakov wrote:
> On 9/25/19 15:52, Leonard Crestez wrote:
>> On 25.09.2019 05:38, Georgi Djakov wrote:
>>> Hi Leonard,
>>>
>>> On 9/16/19 05:34, Leonard Crestez wrote:
>>>> On 23.08.2019 17:37, Leonard Crestez wrote:
>>>>> This series add imx support for interconnect via devfreq: the ICC
>>>>> framework is used to aggregate requests from devices and then those are
>>>>> converted to DEV_PM_QOS_MIN_FREQUENCY requests for devfreq.
>>>>>    
>>>>> Since there is no single devicetree node that can represent the "interconnect"
>>>>> new API is added to allow individual devfreq nodes to act as parsing proxies
>>>>> all mapping to a single soc-level icc provider. This is still RFC
>>>>> because of this
>>>>
>>>> Any comments? I made a lot of changes relative to previous versions,
>>>> most of them solely to avoid adding a virtual node in DT bindings.
>>>>
>>>> The only current interconnect provider implementation is for qcom and it
>>>> uses a firmware node as the provider node (with #interconnect-cells).
>>>> However there is no obvious equivalent of that for imx and many other SOCs.
>>>
>>> Not sure if it will help, but have you seen the qcs404 interconnect driver?
>>> There is also mt8183 interconnect provider driver on LKML.
>>
>> Yes, but only yesterday. The qcs404 driver involves multiple DT devices
>> so it seems closer to imx.
>>
>> As far as I understand from reading qcs404 source:
>>
>> * There is no struct device representing the entire graph.
>> * There are multiple NOCs and each registers itself as a separate
>> interconnect provider.
>> * Each NOC registers multiple icc_nodes of various sorts:
>>     * Device masters and slaves
>>     * Some nodes representing NoC ports?
> 
> Well, all nodes are representing ports.
> 
>>     * Multiple internal nodes
>> * There is single per-SOC master list of QNOCs in the qcs404 driver.
>> * The QNOCs can reference each other between multiple providers.
>> * Each NOC registers an icc_provider and a subset of the graph.
>> * The multiple NoC inside a chip are distinguished by compat strings.
>> This seems strange, aren't they really different instantiations of the
>> same IP with small config changes?
> 
> No, they are different IPs - ahb, axi or custom based.

On IMX some of the buses are just different instantiations.

Would it make sense to standardize an "interconnect-node-id" to identify 
middle nodes? For example if you have nearly identical "audio" "display" 
"vpu" NICs then this property would make it possible to map from a DT 
done to an ICC graph node.

>> This design is still quite odd, what would make sense to me is to
>> register the "interconnect graph" once and then provide multiple
>> "interconnect scalers" which handle the aggregated requests for certain
>> specific nodes.
>>
>>>> On imx there are multiple pieces of scalable fabric which can be defined
>>>> in DT as devfreq devices and it sort of makes sense to add
>>>> #interconnect-cells to those. However when it comes to describing the
>>>> SOC interconnect graph it's much more convenient to have a single
>>>> per-SOC platform driver.
>>>
>>> Is all the NoC configuration done only by ATF? Are there any NoC related memory
>>> mapped registers?
>>
>> Registers are memory-mapped and visible to the A-cores but should only
>> be accessed through secure transactions. This means that configuration
>> needs be done by ATF in EL3 (we don't support running linux in secure
>> world on imx8m). There is no "remote processor" managing this on imx8m.
> 
> Can we create some noc DT node with it's memory mapped address and make
> it an interconnect provider? Sounds to me like a more correct representation
> of the hardware?

This is what I did, it's just that the initial binding is in this series:
https://patchwork.kernel.org/cover/11104113/
https://patchwork.kernel.org/patch/11104137/
https://patchwork.kernel.org/patch/11104141/

The nodes are scaled via devfreq and interconnect comes "on top" to make 
device bandwidth requests.

I think using devfreq is valuable for example:
  * DDRC can support reactive scaling based on performance counters
  * The NOC can run at different voltages so it should have it's own OPP 
table.

> Other option would be to bless some PSCI DT node (for example) to be a
> provider.

I don't think this can be a good fit, I want to support different 
interconnect nodes with different underlying interfaces on the same SOC.

There is no abstraction layer in firmware so abstractions for different 
interconnect midnodes should be in linux instead.

>> On older imx6/7 chips we actually have two out-of-tree implementations
>> of bus freq switching code: An older one in Linux (used when running in
>> secure world) and a different one in optee for running Linux in
>> non-secure world.
>>
>> NoC registers can be used to control some "transaction priority" bits
>> but I don't want to expose that part right now.
> 
> This is very similar to some of the Qcom hardware.

NoC IP is licensed from Arteris which was bought-out by Qcom. 
Documentation is not public though and there are likely many differences 
versus what Qcom has in their own chips.
>> What determines bandwidth versus power consumption is the NoC clk rate
>> and clocks are managed by Linux directly.
> 
> So you will need to describe these clocks in the interconnect provider
> DT node like on qcs404.

I already implemented the nodes as devfreq provider and DDRC even 
includes ondemand reactive scaling support:

https://patchwork.kernel.org/patch/11104139/
https://patchwork.kernel.org/patch/11104145/
https://patchwork.kernel.org/patch/11104143/

I could just pick the "main" NOC and turn than into the "only" 
interconnect provider. Something like this:

if (has_property(noc_device, "#interconnect-cells")) {
     register_soc_icc_driver(noc_device);
}

This would get rid of the icc_proxy stuff but fetching references to 
other scalable nodes would require some other way to identify them.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
