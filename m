Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7BE14AB29
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 21:33:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=VYyRw897S/R7gPUlD4+nzb3BCyKcv6BxZBHdXRHbFyQ=; b=FJu8WteVAKRbiT
	R5M9n18eDMqMcdxCrxCBTV7HUg0xEIKQX+3X1vstKHBSfN8OAHFPa/+dPl0uGMoYbQUVFnRWjutjc
	hGxxVsBlZ+8pId6DDn5o+1B77B+8whWembqxzl/PLunTLqqcByNiCOIrtzcdRq6arwLT8BMyGCWO2
	S8lnMPCBQ8IJWx+SPGJQlyFI1OzqQV+DW3Elf3lfT1fWrQp3S5et4oWjA4gNlJ2kFMyPkpc4zkrKL
	hG/dfCLvDYFqoR17fS0X6HDaCUDVyVwn90F0AT1ARYqNCTz5IVaVy4jHjznsF05xm7v+5zM5nwcyf
	0kOy8K0g0pu/EWdcJlXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwB4a-00060B-7J; Mon, 27 Jan 2020 20:33:28 +0000
Received: from mail-eopbgr60049.outbound.protection.outlook.com ([40.107.6.49]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwB4P-0005z7-Mb
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 20:33:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M6lyFHrr1WOlWb1lmhVX+9TGK720UGdkmcbO6j3ow8HiT/2m/1+hn6d2+3oL8qw2+866VVG+XuOV0Gqqn+yhSw3JKqzAkC37oFS13uBJxShs4GhZCoW9njZkR6aNHnYRfUH+Uyd+J0JoyLw1kXD5Sz796zOHmS9v/dHsLRjUC/KKUc6CS6eOqi8VclljdO0F4bvhoCg4bG5khXQrUNlLMOfVcolmP7uHMre2FTHdNKwbmcbom5ZsEOoVvmen4XnGNNIxUugJvLZvgbk7AQTZJ66twKwAZ+Y+qluG23d4xuE9TNikDY6KGAT2ejLT65Uqu71nH65wu9dUmYABrRWATQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F8J72gs7OIqGCxvKth4+8QmAalkpO2xoPCm/b6ee6qo=;
 b=OhTVzzl1mMRCmYgw+2ecfBfKgdE3z33luBsVZYVuBLkTF3dyLGXCQ3zE2aipFr+S0gpzGc5wKh7YRr6ciknvZ/rOUyMEpBJIqNv7QJerj1dr5v+ALveZowTAzkJ9hWH0GGwq0NUP95MCpBBovvloZUzwkg/VVCRNoieTySEpPKlLlkIDmZwZajbyT+Xc7qUfLK1AgH01OgOrBNU1pM3Zb4pe3ZgT3EI9SeGT68mo539okFTIpENqofRZzfMGtY6qLRK0kWVhgLP/ryyDbMffq/Gv9XuyyAP2fOW6x9Va6daBDJ7TjQZzwNdeNi8Juoj7MEUi7STCbISwLMYoO4iLjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F8J72gs7OIqGCxvKth4+8QmAalkpO2xoPCm/b6ee6qo=;
 b=V+ZqSaioRV436hv33gaikX5Ra005MQ4EyDAk9/Sanp133T718boglEHmJMeiFg8tXy2o33gk2VqFRBAXMuH1UZ8XbT82/pAjss1XB37sND6pCaQG2gAHNC3NyfJ+YSfNbbcHp7Ut7sW9r3dQtGb7ikZgMTv68G+2Xzk/rFvCbNA=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB7184.eurprd04.prod.outlook.com (10.186.157.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Mon, 27 Jan 2020 20:33:10 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2665.026; Mon, 27 Jan 2020
 20:33:10 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH V3 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V3 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Thread-Index: AQHVzBLhUkGtl3RwMUeoFEsar3ylZA==
Date: Mon, 27 Jan 2020 20:33:10 +0000
Message-ID: <VI1PR04MB7023DD8E3D07543FB8F5CD50EE0B0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1579140562-8060-1-git-send-email-peng.fan@nxp.com>
 <1579140562-8060-3-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB70239267F223F63918362DDCEE320@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <AM0PR04MB4481A8AF4694F539FBED0D54880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f1133360-afdb-4421-6cfc-08d7a3682020
x-ms-traffictypediagnostic: VI1PR04MB7184:|VI1PR04MB7184:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB718444F99491A2FED9727E45EE0B0@VI1PR04MB7184.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(366004)(189003)(199004)(316002)(478600001)(6506007)(4326008)(186003)(44832011)(53546011)(33656002)(81166006)(81156014)(66946007)(71200400001)(5660300002)(8936002)(55016002)(9686003)(52536014)(86362001)(7696005)(110136005)(66476007)(54906003)(2906002)(76116006)(91956017)(26005)(64756008)(66556008)(66446008)(8676002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB7184;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sRrGomf6MyDZBZqkWESTBstJaJfDj88minrwseOESDgK+9N202tUbwZthTSp08OIiCROLPZtEesSeSzlkEHQXgP7bd9q4ssZqgboHJYeBLUv0OpjbcgsOUeffhGxHGqLZlrrxIc9g9uOMzgSfxRSwaXMyxLioaWPVfhaEuETGDLIRTgO105bsLrvw2071L/Cjdju/nk2E7yc+ZYUtSATn3lknYt41OOrQXJ/nCp4Cxxt5H1Ideb4LWksOG/YZbbDog3sja9Z3VEL5OpOCCOSLYSyYBV6s/j0/j6wafojLAVbY+gNmod7RQxiQO2cj9vUJ8SkEaSTfrxqNe7skpSFwf4aiVSYKceFIbjrkHlZXMDGX+LSz4jc4G3uJ1nfrD2Uedu9usGhM6rCPbIE7xUP1ZdooEzkP1oBb7GCRAW1WEm4EK01GzJksCDfTtZOFLW8FQTgev7oUdsBeEpd3dkHYR1OrYl6DfdEVBM617Zh4CGNGORGYzCP1zTbWS7MJAzY
x-ms-exchange-antispam-messagedata: tyd55icAKZT86uJd/gTHY6C67JMiwqXlzIX+8eA34CTlvdW6TWcxuMqAiVj6vwFNsaMloZ9HCOAu5dBJ15BPLT7m4u6QWOh2ZzoRSaIuiYgCFcbu1xR66j56lRCw9HEBiLpkxVwvxE79yPKSmbDTUw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1133360-afdb-4421-6cfc-08d7a3682020
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 20:33:10.5444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W2rGFdWqMTPzIH7fowu/0+omf/fZfM+Y2HJDV3s056AxToIP2tRZ7wOP5oWcn5gv62FFYZldtDD9ie1X3jxAdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_123317_926665_9E5BF994 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.49 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27.01.2020 07:00, Peng Fan wrote:
>> Subject: Re: [PATCH V3 2/4] clk: imx: imx8mq: use
>> imx8m_clk_hw_composite_core
>>
>> On 16.01.2020 04:15, Peng Fan wrote:
>>> From: Peng Fan <peng.fan@nxp.com>
>>>
>>> Use imx8m_clk_hw_composite_core to simplify code.
>>>
>>> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
>>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>>> ---
>>>    drivers/clk/imx/clk-imx8mq.c | 22 ++++++++--------------
>>>    1 file changed, 8 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/drivers/clk/imx/clk-imx8mq.c
>>> b/drivers/clk/imx/clk-imx8mq.c index 4c0edca1a6d0..e928c1355ad8
>> 100644
>>> --- a/drivers/clk/imx/clk-imx8mq.c
>>> +++ b/drivers/clk/imx/clk-imx8mq.c
>>> @@ -403,22 +403,16 @@ static int imx8mq_clocks_probe(struct
>>> platform_device *pdev)
>>>
>>>    	/* CORE */
>>>    	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src",
>> base + 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
>>> -	hws[IMX8MQ_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base
>> + 0x8080, 24, 3, imx8mq_arm_m4_sels, ARRAY_SIZE(imx8mq_arm_m4_sels));
>>> -	hws[IMX8MQ_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base +
>> 0x8100, 24, 3, imx8mq_vpu_sels, ARRAY_SIZE(imx8mq_vpu_sels));
>>> -	hws[IMX8MQ_CLK_GPU_CORE_SRC] =
>> imx_clk_hw_mux2("gpu_core_src", base + 0x8180, 24, 3,
>> imx8mq_gpu_core_sels, ARRAY_SIZE(imx8mq_gpu_core_sels));
>>> -	hws[IMX8MQ_CLK_GPU_SHADER_SRC] =
>> imx_clk_hw_mux2("gpu_shader_src", base + 0x8200, 24, 3,
>> imx8mq_gpu_shader_sels,  ARRAY_SIZE(imx8mq_gpu_shader_sels));
>>> -
>>>    	hws[IMX8MQ_CLK_A53_CG] =
>> imx_clk_hw_gate3_flags("arm_a53_cg", "arm_a53_src", base + 0x8000, 28,
>> CLK_IS_CRITICAL);
>>> -	hws[IMX8MQ_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg",
>> "arm_m4_src", base + 0x8080, 28);
>>> -	hws[IMX8MQ_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src",
>> base + 0x8100, 28);
>>> -	hws[IMX8MQ_CLK_GPU_CORE_CG] = imx_clk_hw_gate3("gpu_core_cg",
>> "gpu_core_src", base + 0x8180, 28);
>>> -	hws[IMX8MQ_CLK_GPU_SHADER_CG] =
>> imx_clk_hw_gate3("gpu_shader_cg", "gpu_shader_src", base + 0x8200, 28);
>>> -
>>>    	hws[IMX8MQ_CLK_A53_DIV] =
>> imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
>>> -	hws[IMX8MQ_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div",
>> "arm_m4_cg", base + 0x8080, 0, 3);
>>> -	hws[IMX8MQ_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div",
>> "vpu_cg", base + 0x8100, 0, 3);
>>> -	hws[IMX8MQ_CLK_GPU_CORE_DIV] =
>> imx_clk_hw_divider2("gpu_core_div", "gpu_core_cg", base + 0x8180, 0, 3);
>>> -	hws[IMX8MQ_CLK_GPU_SHADER_DIV] =
>> imx_clk_hw_divider2("gpu_shader_div", "gpu_shader_cg", base + 0x8200, 0,
>> 3);
>>> +
>>> +	hws[IMX8MQ_CLK_M4_DIV] =
>> imx8m_clk_hw_composite_core("arm_m4_div", imx8mq_arm_m4_sels, base
>> + 0x8080);
>>> +	hws[IMX8MQ_CLK_VPU_DIV] =
>> imx8m_clk_hw_composite_core("vpu_div", imx8mq_vpu_sels, base +
>> 0x8100);
>>> +	hws[IMX8MQ_CLK_GPU_CORE_DIV] =
>> imx8m_clk_hw_composite_core("gpu_core_div", imx8mq_gpu_core_sels,
>> base + 0x8180);
>>> +	hws[IMX8MQ_CLK_GPU_SHADER_DIV] =
>>> +imx8m_clk_hw_composite("gpu_shader_div", imx8mq_gpu_shader_sels,
>> base
>>> ++ 0x8200);
>>
>>> +	/* For DTS which still assign parents for gpu core src clk */
>>> +	hws[IMX8MQ_CLK_GPU_CORE_SRC] =
>> hws[IMX8MQ_CLK_GPU_CORE_DIV];
>>> +	hws[IMX8MQ_CLK_GPU_SHADER_SRC] =
>> hws[IMX8MQ_CLK_GPU_SHADER_DIV];
>>
>> Why not assign to all the old clocks?
> 
> Are those clocks expect the GPU ones needed?
> 
> Currently only the gpu clocks are needed, others are not used in dts.
> 
> For dts update to use the SRC clocks should be avoided in future for Linux,
> DIV clocks should be used.
> 
> How do you think?

In theory backwards compatibility should be supported at the level of 
"DT bindings", not just hacked for a particular DT. In this case it's 
easy to add aliases for everything, just slightly verbose.

It might also make sense to add new defines for the composite clock so 
that IMX8MQ_CLK_GPU_CORE looks like IMX8MQ_CLK_DSI_CORE and all the _SRC 
_DIV _CG stuff is just aliases to the unsuffixed composite.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
