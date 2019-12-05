Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF0B113D73
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 09:59:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=i+o4Rs3ISVyBnw9JeJGn4PtRgsIZ090OjANHm9nJFu0=; b=Dpw6wPH+MUAjUj
	59Zb5fq8ko0U9NgNLXZV26deyQ4aszljkp8Hcqv1Bdbh6uM/yKcb8gfcLriMQFgj3NO3VDzdvHRhH
	GwYSARxGovEAUHk1SlvcHfezo/Z88XYD+gmG/vsjUBoX/sLaJjoaTYsBqe1POPLHp1ytzaJwuT3Ox
	5X4mei9iAR+Lr1vX18ZlVc+uA7G6qL3fOcPCxdyz5hCj+L0YjE5wghl5V6QsbPJzozwc2rWshM+Q0
	iBDkRh1yGQjhIBfnR3CYzvrV0bxxSEziTefmQ6NvQqyloem8WjoEtG7Zv/HBk6onHSdrXt+P2uRGJ
	kypaPb1ECTKdHIC5hyYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmzG-0002Dz-Cg; Thu, 05 Dec 2019 08:59:50 +0000
Received: from mail-eopbgr00069.outbound.protection.outlook.com ([40.107.0.69]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icmz7-0002D3-9w
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 08:59:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CyMEvTWTsbAWn+xylzQGh0F/qZP0FUbgIj+R6pAo92Kx7t1rbxfaXSHxDe9m98xdXQtgySq9/XJzZ6c8eEZ1S2T45+P9X9QH1TeCYeWsoExkGabXEj8lexXqQYdtD1YFM1kBPlgBMrf4eZCqm/gC0+kvVZljrqqI3uKBd57RvYaqafaRO08SYCutshKoji09V+L+dhN5tIzf/ZKlEQcR/71KfDZNsCqsKEJtjgecALShMsi+cNPwZpbQdHw0p+CI8tuu9zlSega7g3UAw4FD6cGzR+RF+q/9J4kaYrISiK/h0/z/AIFrMHHh3UpvYLfDqM4Ipy4sTAEbH2bv1/V57g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7CIzxGpWFAUHgxGUGp3tV6qQNKf1oG4y0wMxwBZ7uFA=;
 b=QQVLCBq8jEg7cNdzWSgL+kBM7idjI4mQhGgaFWn6HY+X/GjU3wgxXKUx+Sxr6SG03xBuG0o8fgtgFcxTKzN/DhEs3BjMIR+A/CI9cyxGjs4K2hYd5er0n/kBH9aa8sSIfTqCLtKN0AYK7h7iXGKu2GPEMXJhCW50Tifj8O8RJeuwh06SUdQy+pP3hpO2zGxsLuqjh44XEx48ZgCmaO1GO6LWIwpdyqop7mfKGcqzXY/kmgciuzNexgM79rOuajA58DgwsH2REtBn26KIG17VJM6BBWussvVNqMq3zk3ZqrHG9pxpqd5TVf0rY1D5WhctgSZfnvvRyls0r3y5kQ5nkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7CIzxGpWFAUHgxGUGp3tV6qQNKf1oG4y0wMxwBZ7uFA=;
 b=kAiWMOq35oBUw4VLnSjx1/Q9OZxp3XUO9fqHWSYqiTT/hjcz6otjmksMGnZfVvNewh2InpRKPLwJ0dOMnBtBH02wpmzC1hcrwev6moX3elRyct1Ej/UcHMYwGxi/WaVzq4QCwCMFyyUIV1yW/3h3UWwZP3jUxFVYxNgqZ8Lep/4=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6847.eurprd04.prod.outlook.com (10.255.196.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 08:59:38 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 08:59:38 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 Aisheng Dong <aisheng.dong@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx: imx8qxp-lpcg: use devm_platform_ioremap_resource
Thread-Topic: [PATCH] clk: imx: imx8qxp-lpcg: use
 devm_platform_ioremap_resource
Thread-Index: AQHVqoum7IH7ZRFDgESKl5wnHnxd3Q==
Date: Thu, 5 Dec 2019 08:59:38 +0000
Message-ID: <VI1PR04MB70232C511E4F43360D7533C9EE5C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1575454349-5762-1-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB7023E9790323200A4B122445EE5D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <AM0PR04MB4481FC4A8FD76A01242424B5885C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b31ce410-20ac-4088-1d09-08d77961754b
x-ms-traffictypediagnostic: VI1PR04MB6847:|VI1PR04MB6847:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB68476CEC0AEB3D04F02E371AEE5C0@VI1PR04MB6847.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(136003)(39860400002)(396003)(199004)(189003)(74316002)(44832011)(4326008)(186003)(7736002)(229853002)(33656002)(2501003)(14454004)(6246003)(91956017)(6116002)(6436002)(25786009)(8936002)(86362001)(305945005)(55016002)(966005)(9686003)(52536014)(478600001)(5660300002)(6306002)(53546011)(2906002)(26005)(66446008)(66556008)(54906003)(64756008)(76176011)(3846002)(110136005)(71200400001)(81166006)(81156014)(316002)(6506007)(8676002)(71190400001)(66946007)(66476007)(76116006)(102836004)(7696005)(14444005)(99286004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6847;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hg8xYH2M5qTU1FxCIR7l+mSWvL4UNDVwoXvXgW169zZ0q8S3EyZ5iE+xiM8kllyCHC0DKRd674M56/BtEGItDMhAoDqXWVSER0eQi2jcrkEpcXB415UBG027TDTW/U2xqdtWuQp0qknaGLpRlDx7prbnbySKevvgkEm9TfWNylndW6w9v0q1rYCSm7pZuJj7CO79558sn0BRyAzaUXDk6GUAbgH1q1vLgJfWM72FNRf6rwlvXCRnpB2KB0wLBF8AUOBbR+MQF++wyWLUnDaWRIcO1992RBVrnkGmBNItcnjICAwY5ToGJQKlqKa9Cua274JiJTVL2tAA/cfEY6sndpjg7yWP1+05TJ/XU4KrVMzlzcF/33w87odujCp1tjuGnbBhH3i73uKBuRQP39LFjnapZAI0XMntJP6XwJxFeu0Q2NCmxZR+3/YwvtgHveQGgDIjUCmQ7KeyTSqnSKfnQOm0f7roI01sd8ePy16xb/vT4+Gm1Mfhpt4J/Z3mjLFQmEzUR8t5AAGhZnk+NYU8OQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b31ce410-20ac-4088-1d09-08d77961754b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 08:59:38.2451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lTBLCAqg9wmr6sPl78P10hAiMAACnE1yABwqdEt0A+ONCg41oDoncHn/TZ9oEQC+IAWVoLdGVwxR0IRJ5evboQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_005941_347262_C77496A4 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.69 listed in list.dnswl.org]
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-05 3:38 AM, Peng Fan wrote:
>> Subject: Re: [PATCH] clk: imx: imx8qxp-lpcg: use
>> devm_platform_ioremap_resource
>>
>> On 2019-12-04 12:14 PM, Peng Fan wrote:
>>> From: Peng Fan <peng.fan@nxp.com>
>>>
>>> devm_platform_ioremap_resource() wraps platform_get_resource() and
>>> devm_ioremap_resource(), we could use this API to simplify the code.
>>>
>>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>>
>> This patch has been posted before and it breaks uart on imx8qxp-mek and
>> possibly other things.
>>
>> The old and new paths are not equivalent: devm_platform_ioremap_resource
>> calls devm_ioremap_resource differs from devm_ioremap by also calling
>> devm_request_mem_region.
>>
>> This prevents other mappings in the area; this is not an issue for most drivers
>> but imx8qxp-lpcg maps whole subsystems. For example:
>>
>>                   adma_lpcg: clock-controller@59000000 {
>>                           compatible = "fsl,imx8qxp-lpcg-adma";
>>                           reg = <0x59000000 0x2000000>;
>>                           #clock-cells = <1>;
>>                   };
>>
>>                   adma_lpuart0: serial@5a060000 {
>>                           reg = <0x5a060000 0x1000>;
>> 			...
>> 		};
>>
>> Previously: https://patchwork.kernel.org/patch/10908807/
> 
> Thanks. I think at least need to provide some comments in code.

Yes, comments would help. I think it's actually the 3rd time this 
incorrect cleanup was posted.

But mapping entire subsystems (32mb at a time) for LPCG is deeply 
flawed: the LPCG areas are each 64k and they're interspersed among the 
peripherals. The correct solution is to have many small clock providers.

This is done by a series of patches from Aisheng, I think this is the 
latest one:

https://patchwork.kernel.org/patch/11248235/

If some aspects of that series are dubious perhaps they could be 
discussed and maybe the series could be split into smaller chunks?

That series does brings many essential improvements to imx8 clk support.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
