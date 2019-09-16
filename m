Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C050B4464
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 01:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=5XyMcRagTZKdVK8wa5XZOA0tEisiNuuRzZvikx9YN7E=; b=tPa9Pi+IAO2abO
	130f2s0L9fg/viJvZeNX+DikokHXKri1SsnJGbdHW1vNxrKWNfDxnRSOrv/lMDa4QtUj+QgotgQuG
	+Gwp95kZBAsfV5z618Gs8K+6voo3d7q2z/auirfeNM/xtgMSk75ySalUFgWLQzAK8L/cVl+oFs4Mf
	Ajs+zkUfcwYCOUfSRxfTO04QVu8gfnQzKwTWTM/3BZBHAEtDzF2Aq1YxyuZwvKc9JyYeE4Kw9BDi/
	8EHncF+m00/J3DxmmO3fqOzSWpTb5q9r1II7gr3dQWcpCZ513G8nDRUPFm0bjj07/0eTeG+NFPn64
	lRCMLw57XJi4b+RtN9cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA02U-0008Cc-T5; Mon, 16 Sep 2019 23:04:11 +0000
Received: from mail-eopbgr70058.outbound.protection.outlook.com ([40.107.7.58]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA02I-0008CG-IW
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 23:04:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+1Kt7i1HlIyL9df0r4YHppcvh9z2YHWUECi5T6Ph8/GD89WPIr78vKBUl7nssHElarMXlSc5Brrhc0Rl3TvsMUu91+UI480iT4zXQejqRuC+8lftYwb03ZPxv99mKsa3+eQI1gDlkiy4n2ri7AJXGpZC8BY3REpP1lGUbLipUHs5bS4uEVaw56Bu6/hLd3ReWuInoD14nNwAEaz1/weT22bU4O5Xd7Qj1GpJnRzfWvRM9YA5xKdunyf7bvBuEzY6lqi2f17v3eyEOATwgMACKnnc64gmI80gMBxKG/qi2ReRzPunOClGuvlVJ3pM4LWoBUzNEzukYWsXkFPB85dyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qBf3wHqW1vXsJYhbIiH35hFmmqrHOe4vlbYm0Nvz6Dw=;
 b=TUiUPDOy4RwGoXScwun5mOMJ+otDAhlSB2mWSHvRhKFZCik2sAuJNVwk5Zhp8vbYRLNMAEklBM6ztoYGhCW7+FMwy/KC3E+28yF+ZwDkYF7c6W6pcMJVOP90P+q8bNBSl7fo74s3Y7SmV1XMuBw8Mt9iTDeUfTMe0UJMoSx2kCSp5Sk8i1qx/cBMXVcVo5vI7jFPEtdUV7a6JN2QkdZUUWT2MHbYrM1RRcZoDuLPvPg6tIPaLruVEJDUs8c3kTRrfzbOaj9lRm6c6t1bLvmCB7n7eBtOceeOlmJY3lCVml0Z1RXSvX8MYzGVdMKV+Y2GzqMq7tMoyK2YrNA8iK8bcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qBf3wHqW1vXsJYhbIiH35hFmmqrHOe4vlbYm0Nvz6Dw=;
 b=gm30Zi+9Fa+YCAt2lye1KcBKPPRxWMMaEfFYNOtM+KK/0h9Tk58fABSGiD35jl5w3D+5SvFes5NQB3nWRe5sWh7Vaju+HrIKt/BS7HtsUhSYXof52mx6B5Ov4dqask7sXEkyWxCQ3U7enO76sM9ledZ6ofvBGx95cVSUIzCl9cY=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5806.eurprd04.prod.outlook.com (20.178.204.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Mon, 16 Sep 2019 23:03:53 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 23:03:53 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v2 1/7] clk: imx8m: Set CLK_GET_RATE_NOCACHE on
 dram_alt/apb
Thread-Topic: [PATCH v2 1/7] clk: imx8m: Set CLK_GET_RATE_NOCACHE on
 dram_alt/apb
Thread-Index: AQHVV25IgdEhNlz9IkikhFBZNpksww==
Date: Mon, 16 Sep 2019 23:03:53 +0000
Message-ID: <VI1PR04MB70239F26BE42AD5E6FC3639DEE8C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1566315740.git.leonard.crestez@nxp.com>
 <90bfeebcb76e76d286ed7f022ea9e0d9a569ebe2.1566315740.git.leonard.crestez@nxp.com>
 <20190916203312.CF8D02067B@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [78.96.82.152]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2aaeec75-efc9-4238-41ac-08d73afa2544
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5806; 
x-ms-traffictypediagnostic: VI1PR04MB5806:|VI1PR04MB5806:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5806B12383FA5FA61C8EA580EE8C0@VI1PR04MB5806.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:291;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(366004)(136003)(376002)(39860400002)(199004)(189003)(5660300002)(66066001)(81166006)(2906002)(8676002)(99286004)(66946007)(81156014)(86362001)(7416002)(256004)(14444005)(478600001)(26005)(102836004)(6506007)(25786009)(53546011)(305945005)(7736002)(52536014)(74316002)(316002)(66556008)(64756008)(76116006)(66476007)(66446008)(446003)(6246003)(229853002)(55016002)(33656002)(6306002)(76176011)(9686003)(476003)(6116002)(3846002)(14454004)(71200400001)(110136005)(8936002)(7696005)(4326008)(71190400001)(966005)(486006)(6436002)(186003)(54906003)(44832011)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5806;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +SXRN1JvUHZiv/4TbhIL4kCXLKFqGiNYO+pkixZfzQNjbIun3L0CRHQFmBjx1To5K6D65Vv+Qa5yfZvwos7o9qsMvb9Xh97lOdrNdqxDoAUdTYX53+cHa897xxCpSiI1iMtRgXncqhhJPyTdnaQxYWH9rSHjmN4i9GzTQrucHdYjH3PIVUIujGkXVS7nRsVTFFKFEJo2f0njgZ9KVWhKtrrOS9srDkIX376XKgCiZs86esQqV9+R5fpcG6UGZ8BLMYX8qmKM4N7TJm/fJjvLmmM0WkbghdpmaaoQuRh0RwPhp3P3fbojlQ7OAYaVXCmYJMED1pCiArlTnquch+JszYlU0JBQhfcOuNPKdQ+z/MmuFq6isrZDqypy8TFULsCttUbrZ6FLWWA+N+Q9rLhzxp12V9Uddn4mif89yI1m218=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aaeec75-efc9-4238-41ac-08d73afa2544
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 23:03:53.1505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0NYscR2kuTkMAyF6kSDq5MwS/ifrDhvNjz6LQjAv7GxCP/KHIDPpviVHvqwoHtlmIG0fKnI4AF7hGUC2A2F5XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5806
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_160358_742422_671297AE 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-16 11:33 PM, Stephen Boyd wrote:
> Quoting Leonard Crestez (2019-08-20 08:45:06)
>> Dram frequency changes required modifying these clocks outside the
>> control of clk framework. Mark them as CLK_GET_RATE_NOCACHE so that
>> rates are always read back from registers.
> 
> Why can't we control the clks from the clk framework? Please add that
> information in the commit text here.

OK, I will update commit message and comments

These clocks are only modified for DRAM frequency switches during which 
DRAM is briefly inaccessible. The switch is performed with a SMC call to 
by TF-A which runs from a SRAM area. Upon returning to linux several 
clocks bits are modified and we need to update them.

For rate bits an easy solution is to just mark with 
CLK_GET_RATE_NOCACHE, muxes are handled explicitly.

Linux code performing the SMC call is also part of this series:

     https://patchwork.kernel.org/patch/11104145/

>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/clk/imx/clk-imx8mm.c | 6 ++++--
>>   drivers/clk/imx/clk-imx8mn.c | 6 ++++--
>>   drivers/clk/imx/clk-imx8mq.c | 7 ++++---
>>   3 files changed, 12 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
>> index 4ead3ea2713c..6cac80550f43 100644
>> --- a/drivers/clk/imx/clk-imx8mm.c
>> +++ b/drivers/clk/imx/clk-imx8mm.c
>> @@ -526,12 +526,14 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
>>          /* IPG */
>>          clks[IMX8MM_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
>>          clks[IMX8MM_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
>>   
>>          /* IP */
>> -       clks[IMX8MM_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000);
>> -       clks[IMX8MM_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mm_dram_apb_sels, base + 0xa080);
>> +       clks[IMX8MM_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000,
>> +                       CLK_GET_RATE_NOCACHE);
>> +       clks[IMX8MM_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mm_dram_apb_sels, base + 0xa080,
>> +                       CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
> 
> Also, add a comment to this effect about why it can't be done from the
> clk framework wherever the CLK_GET_RATE_NOCACHE flag is set. Basically
> this flag is a hack and is an example of something that we need to fix.

DRAM freq switch requires multiple clk changes to be performed 
atomically while DRAM itself is not accessible so it's not something to 
"fix".

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
