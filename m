Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A2913BED5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 12:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8BRx7GIRzTXOj4C1tP7/w8dPhjzGcBo+GWyb/JSJYVo=; b=ubiGCKlnMFOEX2
	B7emrzLcDmN0mLbCnUhh4x4mkkGSJYrcMt0OKADEFhoNz1QWQSQkIwgmvKROOxIxJyErr3iB6NCmi
	2GSFPqwX1eDMzlKXLOgPuO/eQcveKipJO/95P6sEBaF3wxV+XB/IuH9C4DbgK7mhgoeuAHNG7GuCK
	xkX2cnzlDtPyuAeluagUBGuXpWDMQOCaD9lbX8cXT7t0Atm/LXhpV1H9WBoQc/cNzgYiPcPwHnhjA
	VCN3MUSdss4GLZnahC8OUen/by7NkYB0yyCG1lmTw4Y0kuXnk1J/UnmLAspdiwsehEBgN5afIAw9g
	SixTulpe6TovHHvz9sVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irh9w-0001gE-Dk; Wed, 15 Jan 2020 11:48:28 +0000
Received: from mail-he1eur04on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::619]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irh9k-0001fI-V3
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 11:48:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hjgVgdj7x7j5PQxdixV5fzgXExsIwrEAmo5/l6dh2VFxGstAOd6er+a/sPppl/Db4Jood4RIFMPXSyp1xg/Zcogu62YG5rK034VY0knvvcHEKXghATPDD7NSn/fZSdzWOE9f5cgDqRwmoedA49lgl8xtUeDuUOJjMV02pJIfFwv8xIQIF0qwBInaQ+cz/Av+Ddscld+J2auuIraoDZnRSLOYDI1dIb7mt9SJ0L9QVL4F+81s0EMuta5YdaoAUdfZNihLQhiOhjH5iLO9oxRtIow1fSiR2QABHLDt8tQeac6F1FflcofeWN4KIkOHe2JcwsJ/03wcr5EHhE8v1Hi3JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fmEvxD35nBUYTKdZ6odL3f+pmh2ZfvjhV3YFzX2pMGs=;
 b=HVm2zop/g8RXhzBN6smkLBJDGcgb51VQzHokxHao+867uMv6eXE7l0JjsQ5EC+z90c87PhSmxOeeVGsn6bY58BPJ1ZfQ0SaRvGkfCAYrNVS/aBtqzPuU9NAbh4kTrSxDiAavppsETck50b3cH2q8eh2Isf3U2TQwDsLVtcgkvo0LNG+XLpuPWKVexIopyJ/s3KZqvrusdTPfyKaBc1ePu0FPz3PpRgkCSsNLolH6szUWI1JuIoHzYWWSPT1635gz6LSJY7WlucGwvTA0CIALOyXiy9mDG6gnG7xequQbqJAnGGjt5+iPS8QkKyXVzT2btjMbcikk+a/AYRcHsFh5PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fmEvxD35nBUYTKdZ6odL3f+pmh2ZfvjhV3YFzX2pMGs=;
 b=F1B5QH2bgax6nSpGlDTwKbasFVZhJ1fRuca2O5h8P+UlOwfwgDcOIBZ3dOxFn7PSskUpUrqTWJYsvEERZEhrQFu5QGtoTllEmqHPs6dnLiYIMfCa42LsCgke3wErUzd1LPIq1vid7FqRk7oa48yljQgqzEw8yY0Eehexnare+v0=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4351.eurprd04.prod.outlook.com (52.134.122.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Wed, 15 Jan 2020 11:48:11 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2644.015; Wed, 15 Jan 2020
 11:48:11 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V2 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Thread-Index: AQHVx4YVaHYUgIfOpEylrWn5NhhQ0A==
Date: Wed, 15 Jan 2020 11:48:11 +0000
Message-ID: <VI1PR04MB7023D08F2C9F97C293695A05EE370@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1578640411-16991-1-git-send-email-peng.fan@nxp.com>
 <1578640411-16991-3-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB7023981770D458F6D1FB546FEE340@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <20200115111205.GB29329@T480>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [78.96.82.163]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fc608298-d1f3-4d43-bf5a-08d799b0cc3d
x-ms-traffictypediagnostic: VI1PR04MB4351:|VI1PR04MB4351:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB43518C870136A9A0E07A2760EE370@VI1PR04MB4351.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(376002)(396003)(366004)(199004)(189003)(6636002)(71200400001)(54906003)(52536014)(5660300002)(110136005)(316002)(9686003)(55016002)(478600001)(44832011)(66556008)(66946007)(66446008)(76116006)(66476007)(33656002)(4326008)(64756008)(81166006)(186003)(8676002)(2906002)(26005)(81156014)(86362001)(6506007)(53546011)(8936002)(7696005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4351;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3HxoQC5ASeIHiQDAksaruepEOntV0KSsryiqzOrt2MkTXMsHJYd7AE3PyAgBFpOsYkuWAwPcdYH4TOF0IU27+JPQGJPj0JmL7C7ja+dWWZfpvXoouliU9kZf6ZgS1SRPuuUWNqZe4YmbLd572ChwyiotIHR0+8b5knawC/ebHmIyNLwryrPIQcYQUCkGSSPaOLvamqyMQEeTPqjaQZAFr4rjEntiptWCFP3VZrLeJ8QLLBE6RN3Ca9vK/x7PwFn/d1UnL6/3Mzg+RO8lF6BFWQ1aE8dBGtkYrotrDXWyrlrtJDet4jdQeZHO6QNBT1GgJxbOjhCMX74VXwZqE5C9KNy4nx8n/++flR9PP1qUdTx6xgpwoe77JD6HxXXjGeroHcQoHVXUBqzlXeVL9zCYqUPs5j/XIj68jysAUZoPi+UbvTMFtesI2UTXooYMaK0ZaHfQNlAzhK8jRB8gdPnek1TG7N8wr/oyba50ahASEkzprhdlve9VPCdW51XBbTeQ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc608298-d1f3-4d43-bf5a-08d799b0cc3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 11:48:11.4992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VvZ6z6uMufHaqbtyzNEhL4f/S9TOKY7kLqcsE38HEzmE4N9zFPueAtV0q2z7PtbyLiNaZutrefcInMDMFfc5Rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4351
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_034817_170324_EDD0894F 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:619 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-15 1:12 PM, Shawn Guo wrote:
> On Tue, Jan 14, 2020 at 04:49:20PM +0000, Leonard Crestez wrote:
>> On 10.01.2020 09:17, Peng Fan wrote:
>>> From: Peng Fan <peng.fan@nxp.com>
>>>
>>> Use imx8m_clk_hw_composite_core to simplify code.
>>>
>>> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
>>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>>> ---
>>>    drivers/clk/imx/clk-imx8mq.c | 19 +++++--------------
>>>    1 file changed, 5 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
>>> index 4c0edca1a6d0..b031183ff427 100644
>>> --- a/drivers/clk/imx/clk-imx8mq.c
>>> +++ b/drivers/clk/imx/clk-imx8mq.c
>>> @@ -403,22 +403,13 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
>>>    
>>>    	/* CORE */
>>>    	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
>>> -	hws[IMX8MQ_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base + 0x8080, 24, 3, imx8mq_arm_m4_sels, ARRAY_SIZE(imx8mq_arm_m4_sels));
>>> -	hws[IMX8MQ_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base + 0x8100, 24, 3, imx8mq_vpu_sels, ARRAY_SIZE(imx8mq_vpu_sels));
>>> -	hws[IMX8MQ_CLK_GPU_CORE_SRC] = imx_clk_hw_mux2("gpu_core_src", base + 0x8180, 24, 3,  imx8mq_gpu_core_sels, ARRAY_SIZE(imx8mq_gpu_core_sels));
>>> -	hws[IMX8MQ_CLK_GPU_SHADER_SRC] = imx_clk_hw_mux2("gpu_shader_src", base + 0x8200, 24, 3, imx8mq_gpu_shader_sels,  ARRAY_SIZE(imx8mq_gpu_shader_sels));
>>> -
>>>    	hws[IMX8MQ_CLK_A53_CG] = imx_clk_hw_gate3_flags("arm_a53_cg", "arm_a53_src", base + 0x8000, 28, CLK_IS_CRITICAL);
>>> -	hws[IMX8MQ_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg", "arm_m4_src", base + 0x8080, 28);
>>> -	hws[IMX8MQ_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src", base + 0x8100, 28);
>>> -	hws[IMX8MQ_CLK_GPU_CORE_CG] = imx_clk_hw_gate3("gpu_core_cg", "gpu_core_src", base + 0x8180, 28);
>>> -	hws[IMX8MQ_CLK_GPU_SHADER_CG] = imx_clk_hw_gate3("gpu_shader_cg", "gpu_shader_src", base + 0x8200, 28);
>>> -
>>>    	hws[IMX8MQ_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
>>> -	hws[IMX8MQ_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div", "arm_m4_cg", base + 0x8080, 0, 3);
>>> -	hws[IMX8MQ_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div", "vpu_cg", base + 0x8100, 0, 3);
>>> -	hws[IMX8MQ_CLK_GPU_CORE_DIV] = imx_clk_hw_divider2("gpu_core_div", "gpu_core_cg", base + 0x8180, 0, 3);
>>> -	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = imx_clk_hw_divider2("gpu_shader_div", "gpu_shader_cg", base + 0x8200, 0, 3);
>>> +
>>> +	hws[IMX8MQ_CLK_M4_DIV] = imx8m_clk_hw_composite_core("arm_m4_div", imx8mq_arm_m4_sels, base + 0x8080);
>>> +	hws[IMX8MQ_CLK_VPU_DIV] = imx8m_clk_hw_composite_core("vpu_div", imx8mq_vpu_sels, base + 0x8100);
>>> +	hws[IMX8MQ_CLK_GPU_CORE_DIV] = imx8m_clk_hw_composite_core("gpu_core_div", imx8mq_gpu_core_sels, base + 0x8180);
>>> +	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = imx8m_clk_hw_composite("gpu_shader_div", imx8mq_gpu_shader_sels, base + 0x8200);
>>>    
>>>    	/* BUS */
>>>    	hws[IMX8MQ_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mq_main_axi_sels, base + 0x8800);
>>
>> Collapsing _SRC _CG into _DIV is an useful simplification but it
>> technically breaks DT compatibility rules.
>>
>> Inside imx8mq.dtsi there are clock assignments for
>> IMX8MQ_CLK_GPU_CORE_SRC and IMX8MQ_CLK_GPU_SHADER_SRC which no longer
>> exist so those assignments don't take effect.
> 
> We do not want to break existing DTBs for this case.  Patches dropped.

Sorry. I think DT compatibility could be maintained by adding 
assignments like this:

	hws[IMX8MQ_CLK_GPU_CORE_SRC] = hws[IMX8MQ_CLK_GPU_CORE_DIV];

If all the old clocks are aliased to the new composite then all 
currently valid set_rate and set_parent calls would still have the same 
effect.

It would also mean that you can set_rate on the mux and set_parent on 
the div but that should be harmless: an enhancement instead of a 
compat-breaking change.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
