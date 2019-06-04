Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7237350BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 22:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ZhfBpyCi7Rb5AsR7Rnyla+6YD8RM5LD00PTR4/mKx64=; b=UxbCE9scsXYTOQ
	ucydTcUGY6m0BE02YMF+7ZqjM/D7WvamckfKKwOrNPaOEnQnrfFLc8ZPZ03VijbYzd2iY1oLEVwAZ
	0ziS7bnyxmH5xHNDE9uuhoIR+BBw4xt4diDWpJSfbhxOGsm+AHoRObIm/b6345VTkpYxwVVFYPXYF
	PTLx6Zs5iE9tXwmVwgM+4BtjKnOFk1khqYhKf4d0bYdPnhqVUJzSBmmYA+JGsNlpPOyVpj4GgZMmf
	Kfqs8z38jGuaQp7hVIlo33WHjHi9xAvA+Er1tgsJc/uqSU3A02BOA3I32qbgEQ1xZreb7B7feGgME
	sZrujNQJ+0qmm81LfxKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYFoP-0007Ba-4Z; Tue, 04 Jun 2019 20:13:37 +0000
Received: from mail-eopbgr50082.outbound.protection.outlook.com ([40.107.5.82]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYFoH-0007At-65
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 20:13:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQgKmCxWL5uhQ45PzO7xtWZM46pb7Q/3ek6oP6HpdLE=;
 b=Ge1KY/QopbO+9dx3fpfw4kheoxlYFGetUaPH6en5wddTmcGTHqfRyHqhkzzlE4SGEtaa5DitdxkNdLyjpytRNhpCj2rl+WAkUEbI8YLgwL37LO5w2fJWKz9W+NGceTCsW/n3SeO/gxZTGn8MTTuYjoxWQVWnw0QTWHMAKJSdPv8=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5919.eurprd04.prod.outlook.com (20.178.205.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Tue, 4 Jun 2019 20:13:18 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1965.011; Tue, 4 Jun 2019
 20:13:18 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, Alexandre Bailon
 <abailon@baylibre.com>, Jacky Bai <ping.bai@nxp.com>, Georgi Djakov
 <georgi.djakov@linaro.org>
Subject: Re: [RFC PATCH 0/3] Add support of busfreq
Thread-Topic: [RFC PATCH 0/3] Add support of busfreq
Thread-Index: AQHU2dO+g7FtRU5+MUaLzLMJn01eLA==
Date: Tue, 4 Jun 2019 20:13:18 +0000
Message-ID: <VI1PR04MB5055E9AB9BD3D68BB6C1F6C2EE150@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <20190313193408.23740-1-abailon@baylibre.com>
 <CAEG3pNA+U1tw4sWq9i2cTni6QKQkLyd3qyZXd2i8M7WFDF4ZsQ@mail.gmail.com>
 <8af96425-a6f5-0114-7abb-c2a67b952e1b@baylibre.com>
 <AM0PR04MB643434FB6A26B4D70F52F350EE080@AM0PR04MB6434.eurprd04.prod.outlook.com>
 <DB3PR0402MB39167B9EAE9A741AB0F20E30F5150@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc6a45d7-1d39-4d95-c153-08d6e92915a8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5919; 
x-ms-traffictypediagnostic: VI1PR04MB5919:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <VI1PR04MB59193C94A656BCAFBD65F5A3EE150@VI1PR04MB5919.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0058ABBBC7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(396003)(39860400002)(366004)(199004)(189003)(52084003)(5660300002)(6436002)(486006)(6506007)(53546011)(110136005)(54906003)(74316002)(33656002)(44832011)(7696005)(7416002)(476003)(186003)(6306002)(71200400001)(71190400001)(55016002)(26005)(9686003)(66946007)(73956011)(102836004)(66556008)(76116006)(446003)(64756008)(66446008)(66476007)(52536014)(91956017)(76176011)(3846002)(2906002)(68736007)(316002)(7736002)(14444005)(66066001)(256004)(6116002)(478600001)(305945005)(966005)(6246003)(4326008)(8936002)(53936002)(229853002)(25786009)(81156014)(81166006)(14454004)(86362001)(8676002)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5919;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7OLi5rOxRkW0300175HB9h8BZ5hRv16J792FSldcyWlvMol3t6WpiUHs36sfW5JIxJHE/29sM0upHznrxcuSWVuRXPGBeyR3dyR3zTiE2c/Nlz/aOKtokL3ZQ/wEykn342jZIPGLH8pRUv9VodSjjdspHjwh16Ikb7JFU58OEgY+fV19kVDZ3+/IKa4RzIJ3hwU0esnB8IVmf/xGqVtHrZ/xbS02Ljy2TDgTfzgNAh28PdDtT1yM0BeuVMGEKaxUotnGHIeJ/60XdVyt+TrBOibWVbuEzucUkiSY9livj83VohG5HvUVUT/VKNDQG9QKRdNaX0E0DryGTQvtRqL/W29P0ZEs+J8yLJReIXaiDh5mlH6mVTfvUzKmPoCI2FmnhYeAT7t5YNr1t39bfGF9+wrPJL2ekzBNjcmHFwHnVKU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc6a45d7-1d39-4d95-c153-08d6e92915a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2019 20:13:18.4216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5919
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_131329_327520_BD22B5D0 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Emilio Lopez <emilio@elopez.com.ar>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Carlo Caione <ccaione@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Zening Wang <zening.wang@nxp.com>, Hans de Goede <hdegoede@redhat.com>,
 dl-linux-imx <linux-imx@nxp.com>, Patrick Titiano <ptitiano@baylibre.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/4/2019 11:44 AM, Anson Huang wrote:
>>>>> As exemple, this series implements busfreq for i.MX8MM whose
>>>>> upstreaming is in progress. Because this relies on ATF to do the
>>>>> frequency scaling, it won't be hard make it work.
> 
> I have similar question as previous reviewer, is there any branch that we can test
> this series?

I've been looking at this and pushed a fixed-up functional variant to my 
personal github:

     https://github.com/cdleonard/linux/commits/next_imx8mm_busfreq

It builds and probes and switches DRAM freq between low and high based 
on whether ethernet is down or up (for testing purposes). The pile of 
out-of-tree patches required to get this work is quite small.

The DRAM freq switch is done via a clk wrapper previously sent as RFC:

     https://patchwork.kernel.org/patch/10968303/

That part needs more work but it could serve as a neat encapsulation 
similar to imx_cpu clk used for cpufreq-dt.

> And, from the patch, it has multiple levels description of fabric arch, while we ONLY
> intend to scale "bus" frequency per devices' request, here "bus" includes DRAM, NOC and
> AHB, AXI, should we make it more flatter, such as just a virtual fabric as a single provider, and then
> all other devices as nodes under this provider?

The imx8mm interconnect bindings describe many bus endpoints but all 
requests are aggregated to a single platform-level OPP which is 
equivalent to "low/audio/high mode" from NXP tree.

It might be better to associate clks to several ICC nodes and this way 
scale NOC and DRAM separately? As far as I understand an interconnect 
provider is free to decide on granularity.

As a wilder idea it might even be possible to use a stanard 
"devfreq-with-perfmon" for DDRC and have interconnect request a min freq 
to that instead of doing clk_set_rate on dram directly. That could bring 
features from both worlds, scaling both proactively and reactively.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
