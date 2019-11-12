Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D02E7F90E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:44:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=5pndmgnbttE4V68TJiyfjJpxv1gk0C8YUf7Bnjchzkg=; b=e/UpzbhC4pkY5o
	yi6HxdG3lho+vfYAR7UxtVQEkhnJNbeADjk3AJW4WfVI1vz+QYQmHOwxlE92lUV33Edr6l8uVsPvc
	YTDlSXXAQl9pK0VBhO12EkDzzgjfYtM4L2NuobbeCl8DTCBsKtlcr9JkzqWktnyZBpy4DLoOgTu8J
	gjrfHSNeoM9hiLkcq/b4+SJpbXTGExuNFj9ejIn9E433uh7bgviAAnYBfQWKrADvnQbvwg9dpTIJJ
	qp2EgVEyJQ1Do/ZltmKG4wygNtANvSn6hVNaq/NE9LeG97xn8gTV5MPwu9/GLfuWFZSTbGhDQY6fb
	1xUG9ylAU06lVahT8J/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWSV-0003Fa-Ug; Tue, 12 Nov 2019 13:43:51 +0000
Received: from mail-eopbgr20049.outbound.protection.outlook.com ([40.107.2.49]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWSI-0003Bm-CQ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:43:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W0cxoxdhJleLm2AD0g1BF4srK3fZ2m5UR8AFb5D7mhLuXkBteWZSXU7aK2oNRyCsohJ+BVXLVmEiEnyLCTVS7tdwf+Fa7TsZ5dybckpa7JurNoURRyCC0omLR4CBckR2qWKYtqJ9kxQkEhcB1GdpyFqNAYj2O7bY4cla9ZwxCaCTyvPaF/OUj12O8QZ7S6hAuFFOJahrsYb2Ees4h7/VNFtQjtxayGfpHzZpwbiRpz/mXnygJ+9b2SSMJpC7Y4Ht7c7uztY6fIxcbddjp68LAPFJh6YsujAgsuFJozUX447yleI7b4LWPBfpHvZeiv/mqa3JizCI+V3lidxoRw3zhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RvMS3MnR+OVag5l/7OjETDYlKEje4ZsT7YnEeaFqzLI=;
 b=Y9bhA/9efF+hMOh3oC+bNiiuT5g/oMD7jt13j0yi5PleL2TJkFZRUN4cDHnr6YDoYeBu+Z9oJO1s98lXXzZ7JxowEvM4s7woq7TpRsc5ISyi3K64BzCqZbvyu4f5KYppnX+OI3/jYxiOS4un7YKczGX3BATNuiI1U7KJZR4WSPa0AZCLXxmjhFmQdImCheJ0Miy/BIBNr4oGSv1YlcjRdBMtkmILA6bvs6gB1qWeEXgptf0lW1TknpkqUT2fAeGAqyTVJqOCbFSNDjHmCtXcgI/lOyw6wlv31QnECp82mH0hfaK1pFWxBJ6AShP658Nsmp3Gw/t/BuO/L2KV9iNJBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RvMS3MnR+OVag5l/7OjETDYlKEje4ZsT7YnEeaFqzLI=;
 b=Y7/Pgg6OHpNKFoSQRMqWaw2WKtFkgWacd3Lp4TvFQM8OYxKMRkgv39GLqQsoR3RRgSsgcZnf1373a7J8Xw0/ByGOQNDry4niw/91ltEwpMqabRfbxGNZSgs9+iO6iZ8CfwIRgkr60HCgc79eodPGegR2ynFVslvsjChuSz3v/VQ=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3277.eurprd04.prod.outlook.com (10.170.231.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Tue, 12 Nov 2019 13:43:35 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 13:43:35 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v4 1/6] clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
Thread-Topic: [PATCH v4 1/6] clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram
 clocks
Thread-Index: AQHVloV8DX9ZS8xtzEe77doMKYgOwQ==
Date: Tue, 12 Nov 2019 13:43:35 +0000
Message-ID: <VI1PR04MB702387DCA9DB5A0A3F6288EDEE770@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573252696.git.leonard.crestez@nxp.com>
 <0e0eeeee546a3bb664935184d66866f1c66458ce.1573252696.git.leonard.crestez@nxp.com>
 <20191112111803.c5624in2masqipqf@fsr-ub1664-175>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 490628d5-dcda-4fd8-2c60-08d7677650b6
x-ms-traffictypediagnostic: VI1PR04MB3277:|VI1PR04MB3277:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB327775FC29CE0703F6AA72A8EE770@VI1PR04MB3277.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(346002)(136003)(39860400002)(189003)(199004)(76176011)(6246003)(54906003)(110136005)(316002)(256004)(14444005)(55016002)(9686003)(305945005)(7416002)(5660300002)(74316002)(66066001)(44832011)(33656002)(478600001)(3846002)(2906002)(14454004)(6116002)(7736002)(86362001)(81156014)(26005)(486006)(446003)(186003)(476003)(229853002)(53546011)(52536014)(102836004)(25786009)(6436002)(6506007)(71190400001)(71200400001)(7696005)(99286004)(66476007)(64756008)(8676002)(81166006)(66556008)(66446008)(8936002)(76116006)(66946007)(91956017)(4326008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3277;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vrCzU2araRXbTyDe9NwWjmIVHmRqqQjIiQhYkZ8qkvF09+3wrPJ83HR5YQRWTWxORvBUxvSIJqh8xLQTy+C1lplLe8O4jOoD6xrsAoI1c3nMvh7bLKPqZqWKqPZFUEojecEIp4TNabFcw8/q2ngb1jO48raee4If6PdKSTpYiwPRCI8BmPViKcB6lr45IPdUmB8Ybz6H/fWAXvnpdXJEYkedtaYS7KPa3gxW11TS/OjxJu1zNh/JYiNDz1Vzib056Bv0RzslTXXwoIFgx14YoQuF6NvOVGmbsIejJepco7Bo2065hh9yDTXViZWNTEW0PxoMGT/ob8rR7SrcuZEwGkcSr/qOxVXaQWE7dLDZyRdYz91Cw9jAEGWNkqhGfBzMtKMq6Lu5y6hFWq/8fliYqU8oOPKBSu2AGS7DooJ98tlWqCTmi9hX903lpIazC/FR
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 490628d5-dcda-4fd8-2c60-08d7677650b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 13:43:35.1653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lm6TD9vyh/KawvPhUvQ4r0exUEKLbjZj5PT7I/wwSH5qQsScvl5kfmnuu9RWcYVdP9Pq0fhGkjhqtJCQ9a3Mug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3277
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_054338_438672_610C6102 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12.11.2019 13:18, Abel Vesa wrote:
> On 19-11-09 00:39:51, Leonard Crestez wrote:
>> These clocks are only modified as part of DRAM frequency switches during
>> which DRAM itself is briefly inaccessible. The switch is performed with
>> a SMC call to by TF-A which runs from a SRAM area; upon returning to
>> linux several clocks bits are modified and we need to update them.
>>
>> For rate bits an easy solution is to just mark with
>> CLK_GET_RATE_NOCACHE so that new rates are always read back from
>> registers.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/clk/imx/clk-imx8mm.c | 11 +++++++++--
>>   drivers/clk/imx/clk-imx8mn.c | 12 ++++++++++--
>>   drivers/clk/imx/clk-imx8mq.c | 15 +++++++++++----
>>   3 files changed, 30 insertions(+), 8 deletions(-)

>> --- a/drivers/clk/imx/clk-imx8mn.c
>> +++ b/drivers/clk/imx/clk-imx8mn.c
>> @@ -428,12 +428,20 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
>>   	clks[IMX8MN_CLK_AHB] = imx8m_clk_composite_critical("ahb", imx8mn_ahb_sels, base + 0x9000);
>>   	clks[IMX8MN_CLK_AUDIO_AHB] = imx8m_clk_composite("audio_ahb", imx8mn_audio_ahb_sels, base + 0x9100);
>>   	clks[IMX8MN_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
>>   	clks[IMX8MN_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
>>   	clks[IMX8MN_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mn_dram_core_sels, ARRAY_SIZE(imx8mn_dram_core_sels), CLK_IS_CRITICAL);
>> -	clks[IMX8MN_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mn_dram_alt_sels, base + 0xa000);
>> -	clks[IMX8MN_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mn_dram_apb_sels, base + 0xa080);
>> +
>> +	/*
>> +	 * DRAM clocks are manipulated from TF-A outside clock framework.
>> +	 * Mark with GET_RATE_NOCACHE to always read div value from hardware
>> +	 */
>> +	clks[IMX8MN_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mn_dram_alt_sels, base + 0xa000,
>> +			CLK_GET_RATE_NOCACHE);
>> +	clks[IMX8MN_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mn_dram_apb_sels, base + 0xa080,
>> +			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
> 
> nitpick: I think it looks better if we stick to one line each clock.
> I know it's against the 80 chars rule, but at least is consistent.

Yes, there are longer lines in the imx8m* files anyway.

If I fix this (in all instances) can I also add a "reviewed-by"?

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
