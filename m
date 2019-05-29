Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5628A2DC23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 13:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPIwZjDXCMBZ35QKkeEcS6Oca6ZIewxRmUkDCKqfoxI=; b=eNQROCT2jzHT2n
	HxaDdpGh+BFw16Il8pUBOEyW4EnlnwwLJFw0bBhBOk8CHsbjjQ70+D7jT9LT1vsJuHxEjHHmP0aSR
	UyVwaWeeLMzD1WCRHX7r2Zd/3yv1ZHY6i2mOXKN2d/c3AwgP1nywIY+4uTHMotmYOgq5KO0Leezjr
	04HrSCeIOuSb8ao+IrLQLEilrQtweoQwA9qdgV0vVXcL6Fy1JD3K9EPuMsYsOhOOv0UvVocX+qISa
	PBXXJiB7DOeiNeGkW8y+dxx3hI75lrMexXPtm6lVQOVjYtbs3cN2TII8YVUuCaITnQQbTKsAIaVsf
	levqpDubSKmC9PJZm4CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVx4W-0006Vv-8b; Wed, 29 May 2019 11:48:44 +0000
Received: from mail-ve1eur02on0616.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::616]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVx4O-0006V6-QK
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 11:48:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cIiSuFGTVl9m/ZTNoQ/FCHYPKxVgP6vxQTjp2VbdnMU=;
 b=coO59u9dqTCJrfNqWgP4RLmuZEGK0SL58ZBtzn4ByJBkZ4Jveoq7koB4FHKOXkt6S6xwTyjlzUjafw7kW4TPCOeSLFmD/PRgn/0oye18MxIixaUVslBGM34M0op+/L5JF5AVjOBU48tcQPR/3/qhYXoS1FIgEJhg1pglRG0IXXI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4065.eurprd04.prod.outlook.com (52.134.90.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Wed, 29 May 2019 11:48:30 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 11:48:30 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: RE: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
Thread-Topic: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
Thread-Index: AQHVDrkIcB6j+hDf/kC51b4HJvSviKaCCwCg
Date: Wed, 29 May 2019 11:48:29 +0000
Message-ID: <AM0PR04MB44810069F874677C6A2DE795881F0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190520032020.7920-1-peng.fan@nxp.com>
In-Reply-To: <20190520032020.7920-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [180.110.22.24]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e8061f8-c6bb-4868-b89c-08d6e42b91e4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB4065; 
x-ms-traffictypediagnostic: AM0PR04MB4065:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB4065767687E27F78D7B9D080881F0@AM0PR04MB4065.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(396003)(136003)(39860400002)(346002)(199004)(189003)(4326008)(2201001)(110136005)(54906003)(68736007)(102836004)(76116006)(7416002)(8936002)(71200400001)(256004)(44832011)(6436002)(33656002)(73956011)(66066001)(305945005)(26005)(14444005)(71190400001)(25786009)(53936002)(2501003)(7736002)(52536014)(9686003)(55016002)(186003)(6306002)(14454004)(99286004)(86362001)(6506007)(81166006)(2906002)(81156014)(5660300002)(11346002)(7696005)(76176011)(3846002)(316002)(478600001)(6116002)(229853002)(966005)(64756008)(66556008)(74316002)(8676002)(476003)(446003)(66476007)(66446008)(486006)(6246003)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4065;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yxkVRGT4pg0n6za3JUiANNNdkcEtPnVhRutj6kBt/l+JExpKOfmt7P+jyeAi2HTxL82A8FEY9zabUR6uvqatee26d+NOMW48EajsCqBewzNketENMIF6nVLu1yI2Mr5obew/c8MIPyqDtPv8nZDYugNGsyGyc2/enR8COl8qmdvjsoG2JB6ESDi7J8fpUxsx+h1+LTIUJIT4F1/0exD+I/Xu+UKtuq9G04Z+Ui0nq8hD1c7CkXH449JsvR/6DAamO9DSu7Aw8NeutEPRFSGLPTB8h7JzAsOraEn/zS/kJWeNIAdLMOJrdsZpfexcmvfXsWQBFg+cG/1a7a/FPlvNgjDXj7ayQapTiw/uD556R3Cg266YgxEmMSGD/jzb7udggogoh9jxJ5jSUJBTlI6UX3Y46Cpq8kjLK36wDJ6uV7M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e8061f8-c6bb-4868-b89c-08d6e42b91e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 11:48:30.1316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_044836_857071_DB308326 
X-CRM114-Status: GOOD (  23.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:616 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob, Srinivas

> Subject: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property

Do you have any comments about this patch?

Thanks,
Peng.

> 
> Introduce fusable-node property for i.MX OCOTP driver.
> The property will only be used by Firmware(eg. U-Boot) to runtime disable the
> nodes.
> 
> Take i.MX6ULL for example, there are several parts that only have limited
> modules enabled controlled by OCOTP fuse. It is not flexible to provide several
> dts for the serval parts, instead we could provide one device tree and let
> Firmware to runtime disable the device tree nodes for those modules that are
> disable(fused).
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> Currently NXP vendor use U-Boot to set status to disabled for devices that
> could not function,
> https://source.codeaurora.org/external/imx/uboot-imx/tree/arch/arm/mach
> -imx/mx6/module_fuse.c?h=imx_v2018.03_4.14.98_2.0.0_ga#n149
> But this approach is will not work if kernel dts node path changed.
> 
> There are two approaches to resolve:
> 
> 1. This patch is to add a fusable-node property, and Firmware will parse
>    the property and read fuse to decide whether to disable or keeep enable
>    the nodes.
> 
> 2. There is another approach is that add nvmem-cells for all nodes that
>    could be disabled(fused). Then in each linux driver to use nvmem
>    api to detect fused or not, or in linux driver common code to check
>    device functionable or not with nvmem API.
> 
> 
> To make it easy to work, we choose [1] here. Please advise whether it is
> acceptable, because the property is not used by linux driver in approach [1].
> Or you prefer [2] or please advise if any better solution.
> 
> Thanks.
> 
>  Documentation/devicetree/bindings/nvmem/imx-ocotp.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> index 7a999a135e56..e9a998588dbd 100644
> --- a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> +++ b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> @@ -21,6 +21,8 @@ Required properties:
> 
>  Optional properties:
>  - read-only: disable write access
> +- fusable-node: array of phandles with reg base and bit offset, this
> +		property is used by Firmware to runtime disable nodes.
> 
>  Optional Child nodes:
> 
> @@ -42,4 +44,7 @@ Example:
>  		tempmon_temp_grade: temp-grade@20 {
>  			reg = <0x20 4>;
>  		};
> +
> +		fusable-node = <&usdhc1 0x10 4
> +				&usdhc2 0x10 5>;
>  	};
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
