Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7652FB022
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 13:03:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=i2x+VQNRlZjH4diOuRfPTu9PGVj5+S7TdwyVIG6fWlw=; b=D8zTF+GcyEjF8B
	dUE0CBMRl6pVJ8HBaKfDd6sMKRzTCoELE4eyAFUJEDUWiWUHluZBdJOrenwjWjY9PJSmop0mUiEVr
	BmUDq4mCX3ifWn2ABEk+VAlkfi7cV/aOzwGnixOv44cp/kAQ55cgOM8A43lWkxxaTF7OKiLXL8B91
	FBWzN9/tVvsiJpao7VLqz+WLAE1av54SG+qebZ22NpPomcNKTvuJMx+gxQ6ytMN1Vwe11FWa9O6tn
	S2vkPDbQu/Lbp9wzpeEeax/RiSRRyDTNusRh6bS/fqDOtjKIjUHNEzSgQKVharQINfqlUEEMXaVmC
	3xeQgDvL7uNCx/lHk0oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUrMI-0001Ed-0m; Wed, 13 Nov 2019 12:02:50 +0000
Received: from mail-eopbgr60074.outbound.protection.outlook.com ([40.107.6.74]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUrMA-0001E7-4e
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 12:02:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eiOPfKAxorpWLnPJqAsiZcs9OdIZb0FS7WnNzRrvF4M+xCJEglspV1GzFOHRj7v3BcSNuo73Yaaq09Ye+H3XxNb3URsR+Doc1foGOzb7bbnAIIp428cPUBcPCiRtpm8NHGu85K5SaNI17dHy53pvoWvQbA//DLtUG94ZuS8QNn12XaLNTYdPKLlxr4WzWsS8U7+I1Nc5dMHWyPqTJTy+4h/UKM2ldQlWBVVCXK0k7+9aYsVjNR1Qv1+RnUpDgIngftCxEuFA5Ku4l9NWfbtzG+sa9S/IssoN5z1tI1mpNqQJispIDWcecZO/mDrdYycLEv7AQ14IQlIt06I+Bi4z6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m+XoCI8aUNz6ojj3eL4cXhzCLJ9qQSe2RbE5ktTW49k=;
 b=dQs/4h2IQpGM+maaufBicjTDRihb9PVegFCu0EwfSz6ROxMzlpq2jkTFmOLTfMQmL5/rGLSVtuRiLcetpPMapCn3DgXmYZS8RUHHzFQ/gTSCvGTJ9CV63huETdm8pKV88jolY/58nACMpg26i0VmRIiFXoe1HJRBN22xj2TM51JhlSQz3vu3PYWrl/xphp3tU/xw571EVGMFXWlzZl34zvGJCnk6+FWw3YA8B2VOJaUeiNc1atw5z4pVFkUtVvIhxtPnNvkAOLPBAZuMkh3N4+/ODSINEvR6bJ6imGshAUBKPfp1p/RMtR1ETtrg0iXC+KsODcBTjYLtBznxwBU9wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m+XoCI8aUNz6ojj3eL4cXhzCLJ9qQSe2RbE5ktTW49k=;
 b=iu8sZ2WZ4GxM27/uV54JgdePkcV2iY2x9MrWsXEkHPLJB3sHnp8shwYRwXDR/DyyuNoxDQoOP+2tcwC7+ex+pkksw7ZTl5BJDcdB6e5UKOedQAI2Oo2OmmhKaERiH+4Pqgxnl8Qmw/sOqjGmUVuWkD6IiOHsIVpD/TXdjhmYZCM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6126.eurprd04.prod.outlook.com (20.179.28.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 13 Nov 2019 12:02:38 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 12:02:38 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, Stephen Boyd <sboyd@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>
Subject: Re: [PATCH v5 2/5] clk: imx: Mark dram pll on 8mm and 8mn with
 CLK_GET_RATE_NOCACHE
Thread-Topic: [PATCH v5 2/5] clk: imx: Mark dram pll on 8mm and 8mn with
 CLK_GET_RATE_NOCACHE
Thread-Index: AQHVmaNNmWotUE8nUUaGcx+s/r6w0A==
Date: Wed, 13 Nov 2019 12:02:38 +0000
Message-ID: <VI1PR04MB7023EFCBE2730F60D46D3CACEE760@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573595318.git.leonard.crestez@nxp.com>
 <65d08f34741f1ffa94a53bc128433e6c958091d2.1573595319.git.leonard.crestez@nxp.com>
 <DB7PR04MB4490A934AC170E4BA1CD261788760@DB7PR04MB4490.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c91e25cd-9dda-43e4-f301-08d7683160d8
x-ms-traffictypediagnostic: VI1PR04MB6126:|VI1PR04MB6126:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB61266D25CDE58E7850CF8EEAEE760@VI1PR04MB6126.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(39860400002)(136003)(396003)(189003)(199004)(478600001)(7416002)(6306002)(966005)(55016002)(5660300002)(54906003)(14454004)(110136005)(256004)(9686003)(316002)(229853002)(74316002)(33656002)(7736002)(305945005)(6436002)(99286004)(8936002)(4326008)(81166006)(81156014)(76176011)(6246003)(7696005)(8676002)(6116002)(2906002)(52536014)(3846002)(6506007)(186003)(44832011)(486006)(86362001)(446003)(66066001)(53546011)(66946007)(476003)(26005)(66446008)(64756008)(102836004)(76116006)(91956017)(71200400001)(71190400001)(66476007)(66556008)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6126;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VkSyeDgsMIvmt+ByV6/x6+NI1nb/wpmhu8umyctCKZjl/YCkk+M/3h0724CxQ7+QtTFs6rhtpsK9xqapMIPDXHbf+9KSNTIw1VElr4NCsjPO62H7AiVTXm0P2L83QC/dGTZo3Q3yunWnKFKLODpO6oIS+cw9e5i24HJzVZzkxBhReJielHnSS/3EMV9rEnnZIBFsJSGDWhXzAntFyFTwBPjud4o8wFOoTtP6b5RUjapwmHShHnZUTz2MJ5nlciFNnnhm4ug3EMcX7Yr7+C9kv1ka0sPe4z1hmPf71BpzXU4ykLQGq0DvJUEM84KdetrtilD0M1W/l1BimXx53ZJNWVeLkjfBhMSo7kgtQv7mnZ0U24K0L7KTgK8K7LfNUX4c26rTH+B4zaImtFjKBNwv4/q2lsVkyu8QKzimgmXPm8p8ng2InLOWvioX5QGWH9LHrnweAsJnBtUOT1sOzE7e/0ud88khvPKs7R+6WNFqrug=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c91e25cd-9dda-43e4-f301-08d7683160d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 12:02:38.2476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E5KkS17GD5PKuUIWzEGlqG/ud6PBhGG3PLbiamNNE7rk/s4HRrytdVpKP6SExNdY09QBGTlzqeQ1lMOys2XbEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6126
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_040242_184694_4F818375 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.74 listed in list.dnswl.org]
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
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13.11.2019 09:29, Peng Fan wrote:
> Hi Leonard,
> 
>> Subject: [PATCH v5 2/5] clk: imx: Mark dram pll on 8mm and 8mn with
>> CLK_GET_RATE_NOCACHE
> 
> This patch will conflict with https://patchwork.kernel.org/cover/11224933/
> And I just post a new patch https://patchwork.kernel.org/patch/11241231/
>   
> Then no need add imx_1443x_dram_pll

I saw those patches and the conflicts are minor (API cleanups, no 
functionality changes).

I usually send patches against latest linux-next/master and this usually 
includes all accepted patches. If after the clk_hw refactorings are 
accepted I will rebase and resend.

> Regards,
> Peng.
> 
>>
>> DRAM frequency switches are executed in firmware and can change the
>> configuration of the DRAM PLL outside linux. Mark these CLKs with
>> CLK_GET_RATE_NOCACHE so we always read back the PLL config registers
>> and recalculate rates.
>>
>> In current DRAM frequency tables on 8mm/8mn only the maximum frequency
>> uses the PLL so it's always configured in the same way. However reading back
>> the PLL configuration is the correct behavior and allows additional setpoints in
>> the future.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
>> ---
>>   drivers/clk/imx/clk-imx8mm.c  | 2 +-
>>   drivers/clk/imx/clk-imx8mn.c  | 2 +-
>>   drivers/clk/imx/clk-pll14xx.c | 7 +++++++
>>   drivers/clk/imx/clk.h         | 1 +
>>   4 files changed, 10 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
>> index e2bc3c90d93c..9246e89bb5fd 100644
>> --- a/drivers/clk/imx/clk-imx8mm.c
>> +++ b/drivers/clk/imx/clk-imx8mm.c
>> @@ -326,11 +326,11 @@ static int imx8mm_clocks_probe(struct
>> platform_device *pdev)
>>   	clks[IMX8MM_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel",
>> base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
>>
>>   	clks[IMX8MM_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1",
>> "audio_pll1_ref_sel", base, &imx_1443x_pll);
>>   	clks[IMX8MM_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2",
>> "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
>>   	clks[IMX8MM_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1",
>> "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
>> -	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll",
>> "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
>> +	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll",
>> +"dram_pll_ref_sel", base + 0x50, &imx_1443x_dram_pll);
>>   	clks[IMX8MM_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel",
>> base + 0x64, &imx_1416x_pll);
>>   	clks[IMX8MM_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel",
>> base + 0x74, &imx_1416x_pll);
>>   	clks[IMX8MM_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel",
>> base + 0x84, &imx_1416x_pll);
>>   	clks[IMX8MM_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
>>   	clks[IMX8MM_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000); diff
>> --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c index
>> de905e278b80..4749beab9fc8 100644
>> --- a/drivers/clk/imx/clk-imx8mn.c
>> +++ b/drivers/clk/imx/clk-imx8mn.c
>> @@ -323,11 +323,11 @@ static int imx8mn_clocks_probe(struct
>> platform_device *pdev)
>>   	clks[IMX8MN_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel",
>> base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
>>
>>   	clks[IMX8MN_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1",
>> "audio_pll1_ref_sel", base, &imx_1443x_pll);
>>   	clks[IMX8MN_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2",
>> "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
>>   	clks[IMX8MN_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1",
>> "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
>> -	clks[IMX8MN_DRAM_PLL] = imx_clk_pll14xx("dram_pll",
>> "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
>> +	clks[IMX8MN_DRAM_PLL] = imx_clk_pll14xx("dram_pll",
>> +"dram_pll_ref_sel", base + 0x50, &imx_1443x_dram_pll);
>>   	clks[IMX8MN_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel",
>> base + 0x64, &imx_1416x_pll);
>>   	clks[IMX8MN_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel",
>> base + 0x74, &imx_1416x_pll);
>>   	clks[IMX8MN_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel",
>> base + 0x84, &imx_1416x_pll);
>>   	clks[IMX8MN_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
>>   	clks[IMX8MN_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000); diff
>> --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c index
>> 5c458199060a..a6d31a7262ef 100644
>> --- a/drivers/clk/imx/clk-pll14xx.c
>> +++ b/drivers/clk/imx/clk-pll14xx.c
>> @@ -65,10 +65,17 @@ struct imx_pll14xx_clk imx_1443x_pll = {
>>   	.type = PLL_1443X,
>>   	.rate_table = imx_pll1443x_tbl,
>>   	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),  };
>>
>> +struct imx_pll14xx_clk imx_1443x_dram_pll = {
>> +	.type = PLL_1443X,
>> +	.rate_table = imx_pll1443x_tbl,
>> +	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
>> +	.flags = CLK_GET_RATE_NOCACHE,
>> +};
>> +
>>   struct imx_pll14xx_clk imx_1416x_pll = {
>>   	.type = PLL_1416X,
>>   	.rate_table = imx_pll1416x_tbl,
>>   	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),  }; diff --git
>> a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
>> bc5bb6ac8636..81122c9ab842 100644
>> --- a/drivers/clk/imx/clk.h
>> +++ b/drivers/clk/imx/clk.h
>> @@ -50,10 +50,11 @@ struct imx_pll14xx_clk {
>>   	int flags;
>>   };
>>
>>   extern struct imx_pll14xx_clk imx_1416x_pll;  extern struct
>> imx_pll14xx_clk imx_1443x_pll;
>> +extern struct imx_pll14xx_clk imx_1443x_dram_pll;
>>
>>   #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
>>   	imx_clk_hw_cpu(name, parent_name, div, mux, pll, step)->clk
>>
>>   #define clk_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
>> --
>> 2.17.1
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
