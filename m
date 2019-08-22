Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A7A993E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 14:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=WvdfkyWq3YUq0CJthKCeVJKm8aASRk8MP9pG3wIDNjY=; b=goI16USfX5sLqO
	8ipKbqLGVIs8PUSXOooi8F2GgPTwkXrYvpwvLOGhloqrUpM1rLwDer45VCDj0ZPFEZIObMtcznAAE
	88SEeCYgEfyVCkw65ea5NzjI2IOvLTw2GHW1X1NTMtmghzA5S9rCl7Exx6khY066f8z8h6AUOB55O
	DscYGYfK+45QWwhU/BuxnRp/SAfGHFpJT8sh+GKd1UhHeZfRXsyJxnGh1V2txMEUdAO110VwDdFHl
	5vQTamr903vbm2TCnhec5JeCvFw/kFOmiN6EnluAmEAH1T8s8gb7uR4jC6SFn+zUalM/Q/u2eN1VW
	oMZyTrmywYZU6lEFdYGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0mIW-0002p2-A7; Thu, 22 Aug 2019 12:34:37 +0000
Received: from mail-eopbgr20081.outbound.protection.outlook.com ([40.107.2.81]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mIH-0002ni-Hf
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 12:34:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ne8XkoBsB/m4UUfqjbTPrUe1KrWHXnHyLYtWDjiUnFPH3nyroqUEhLjqPgZVsyU+Bh7bpol9lMCamCu5QDutM+xk1UTnVw5JI5vs/Ro3jGrP2SvDawB6PzQjjGa4xDyDT/IJPO7iq8pTOmMPdaZmD5RKZ156NRuMnhfwteZH7AvjD0VrvYDajJ0OQjDGeZzoK9jApk1DWcWKjClP8AgAClA/eYxe2e+FvlBzWvLN+tYCFPQb/haxDInuB6qACS6SYxcrZr31xr0fwSvG8iMCeV6CMA+XoEoTPwCgtiiIbMw/UgFvy5Hgem5TWe12Bjb+XZshzHkeB4RbdvaKqCBTrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VDnK8p8YZXUFIcCNd9u85VsuBtOMMannter/nOuJwng=;
 b=OjBh6gGvyBaZtlRTENLgobLLPE1Rh1EoHwgR1aA7AY1+AD+D839KyR4X8UjlYOyD0A9lD6DsJSjVfFaL/tXk0+1Bc3wZFgV7JpERH8KLRZYKh0U2Cl9rciisZouoU5D8LJYieayAv66EkHtVD54pHa0hzDAhHQzN8QYsCYVivbuM0ulnEwyF3pzDMojx63eQFrtnnedoJGJI2crEyFTe/rLejIFT6nLJ3kPLNh5+Rh3LGHv11uTXuWk/N1TJ15KVjnO3P8FyKbHY01o9wtWgrv3L546itTZlqXNcLufSWZJZ9K8DQuGJSnN6BDhGixpZtTfebRvVyN0Atj0ssZ3Vrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VDnK8p8YZXUFIcCNd9u85VsuBtOMMannter/nOuJwng=;
 b=YA5QwGD3vDaxiyFjwAcu8Ptf8WbKpeZa23/I1RcDbsQ1FBgng+zPN2xWIo4kVcQeNiIMqd/tm9CCWffs1IkQYGHJTQSxnScBjPzng+od9onRhyM99Y7dKnD0s95DVcj08bBN2Qj1G0CzAu+ngzy8bYm8aPxrYjFSOOPSySahwFU=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5871.eurprd04.prod.outlook.com (20.178.205.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 12:34:17 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 12:34:17 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx: pll14xx: avoid glitch when set rate
Thread-Topic: [PATCH] clk: imx: pll14xx: avoid glitch when set rate
Thread-Index: AQHVVv10E+OF2Euht0ilryFWSAJw8w==
Date: Thu, 22 Aug 2019 12:34:16 +0000
Message-ID: <VI1PR04MB70234B225BC4AC8E909A4C2AEEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1566266337-21597-1-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB7023C1017F60BF132B6A3F8CEEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <AM0PR04MB44818E133AD735E3EB2789E288A50@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 66bdf910-1ee7-404d-563e-08d726fd0c3b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5871; 
x-ms-traffictypediagnostic: VI1PR04MB5871:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB587132A8AFD449B2FE26D99CEEA50@VI1PR04MB5871.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(396003)(376002)(39860400002)(136003)(189003)(199004)(305945005)(5660300002)(76116006)(66946007)(66446008)(64756008)(66556008)(66476007)(14454004)(53936002)(8676002)(102836004)(6246003)(66066001)(9686003)(478600001)(446003)(316002)(33656002)(7736002)(53546011)(6506007)(2906002)(54906003)(71200400001)(256004)(476003)(3846002)(6116002)(25786009)(7696005)(186003)(110136005)(52536014)(81166006)(6436002)(86362001)(76176011)(14444005)(44832011)(99286004)(74316002)(55016002)(486006)(2501003)(4326008)(71190400001)(8936002)(81156014)(26005)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5871;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ggsv6HV2BmM0wgmKqg1eNwIeYNfWZL6jwA3ih7GrZMDDmzT8nWWmQD93BDHZ908o6bYLxiYBDjIEQ5hqDwrDbhAikhdH8XyvqM6XK4DvkVUuKSpZ20wVAcmEU+pUHycgJuHHYWj1sh5vKmOK+AJDZqUQsVks9XNz0SIrIaGaw79UXa1v83cpz3S9UtVKk7azvEt5atwj2QyfXVDMg6MWByrw94IqaiwfIlj2d72O0kMb9ws8ScTsj/xFDZKkwdC7nYyMQK1bPvKQrZzXgejtds9oioC4j5hXnRXWlhbaZcEB+A3jRyZrgPjrTeZ981aEII5r6toDcK7wmbtEuw/vEwd4hv4EPxCgZipHpddGy1QCSwctFkVH/wWecNl7IXPiAzb6HAaMmrFIO/1gEP8qkU1B1NG/FqY0KW0pGtko4PU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66bdf910-1ee7-404d-563e-08d726fd0c3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 12:34:16.8389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dUyg9FnkptF2eQD2A3+brWjj5IZN/Vj0yiQwwVg8scDxqVg2LtOS9/kdq3SCUkWauc/9nkezu9VGhCtcVlKNZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5871
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_053421_585864_20855D60 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22.08.2019 12:18, Peng Fan wrote:
>> Subject: Re: [PATCH] clk: imx: pll14xx: avoid glitch when set rate
>>
>> On 20.08.2019 05:17, Peng Fan wrote:
>>> According to PLL1443XA and PLL1416X spec, "When BYPASS is 0 and RESETB
>>> is changed from 0 to 1, FOUT starts to output unstable clock until
>>> lock time passes. PLL1416X/PLL1443XA may generate a glitch at FOUT."
>>>
>>> So set BYPASS when RESETB is changed from 0 to 1 to avoid glitch.
>>> In the end of set rate, BYPASS will be cleared.
>>>
>>> @@ -191,6 +191,10 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw,
>> unsigned long drate,
>>>    	tmp &= ~RST_MASK;
>>>    	writel_relaxed(tmp, pll->base);
>>>
>>> +	/* Enable BYPASS */
>>> +	tmp |= BYPASS_MASK;
>>> +	writel(tmp, pll->base);
>>> +
>>
>> Shouldn't BYPASS be set before reset?
> 
> No. the glitch happens when RESET changes from 0 to 1, not from 1 to 0.

You're right, sorry.

>> Also, isn't a similar bypass/unbypass dance also needed in
>> clk_pll14xx_prepare? As far as I understand that could also output glitches
>> until the PLL is locked. It could be a separate patch.
> 
> Yes, that might also output glitch. Fix in v2.
> 
>>
>> It's strange that this BYPASS bit is also handled by muxes like
>> audio_pll1_bypass in clk-imx8mm.c but that's a separate issue not strictly
>> related to the glitches you're trying to fix here.
> 
> Yes, need use EXT_BYPASS for the mux usage.

Might make sense to post as a series.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
