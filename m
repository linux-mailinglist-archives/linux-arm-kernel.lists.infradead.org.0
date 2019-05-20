Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A402306A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=i1R1ORrg6ifg98H7fKn8U3y2DHTU3j5Zs3bIcpVDyk4=; b=Nxhzxhf9MRLSR2
	qi3KLQl022FDD/ojOp/6T975VExDh9x4gba/nZtPK86UqhlFZI9HTeeuR9xQty3r5nwFeuCfB/L9x
	xAd4NBy45s5ZOZBCBAZnSfzKUqWn42a8CT/SiY5LGO1wb73tIS9CDesu81VD+fKOWzc3a25leDNRE
	Ur43uZKRtLI9rASHmCddZ0yaDatCViMvRxjwXEfpngvjpU+RKYGmkltr/dWSL/wpxzRhuoMZFEL6T
	ex87ZNRr4+hNPumAM1HJM/EBLi0UkKk+G7FknG+eQl2BAsQmWbhkqXAJ5sqQgCiQAkH3R0AKppP9L
	24j/eN7qxlnw2J+RxzTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeg0-0006Ns-0q; Mon, 20 May 2019 09:33:48 +0000
Received: from mail-eopbgr40062.outbound.protection.outlook.com ([40.107.4.62]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSefr-0006NO-Ea
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:33:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bC1v7WL/In1X8Bj8Y7sCQQm/Z+fLIAOQv2tt/i/palw=;
 b=jfFCNwKM2i5w/KAF+j2xYcPZCsoPV1LqRQExzjOp8kIvSbWGCG0BtEtG8vSD1BrM/487+fsY4f6SglES/Xk09bc6AjeYdrkD6zG5V9X7+HAXpxM/wR07/lc2iWrxhU0KsA02LEKrbr/QxRpzjuxxSknT/6BShrrlI8PmcxHyhfo=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4225.eurprd04.prod.outlook.com (52.134.91.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Mon, 20 May 2019 09:33:36 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 09:33:36 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: Re: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
Thread-Topic: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
Thread-Index: AQHVDrkIcB6j+hDf/kC51b4HJvSviA==
Date: Mon, 20 May 2019 09:33:36 +0000
Message-ID: <AM0PR04MB643466338B440374D97F2805EE060@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <20190520032020.7920-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ec81502-04ff-42b7-bbd5-08d6dd063bd0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4225; 
x-ms-traffictypediagnostic: AM0PR04MB4225:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB4225EF76794F0A4A3CCD3ADFEE060@AM0PR04MB4225.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(366004)(376002)(136003)(199004)(189003)(316002)(52536014)(7416002)(8936002)(86362001)(81156014)(81166006)(8676002)(446003)(486006)(6306002)(53936002)(6246003)(9686003)(110136005)(44832011)(66066001)(476003)(6436002)(7696005)(26005)(102836004)(99286004)(33656002)(71190400001)(76176011)(54906003)(7736002)(74316002)(71200400001)(186003)(305945005)(66946007)(73956011)(76116006)(91956017)(55016002)(66476007)(66556008)(64756008)(66446008)(4326008)(25786009)(6506007)(53546011)(68736007)(256004)(14444005)(229853002)(478600001)(966005)(5660300002)(2501003)(2201001)(6116002)(3846002)(14454004)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4225;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xocE+hJKpi6ZmBJ1cS8ppTdyiP3gdUnzjUqU8kFuJFltkZGYmKv+nNRfVc0MkJUDhuP2Qxu3/G+WTjul9uIvTiw6eU/f8CZlsv1rWRNrlOvvWVhLMEcahpRgNsbkpsL+Fxw6fedSUpaFb2Z7N1WLlmEsf6lG/8p4lO7CHeTHgo6w12YnJ4Gp8pOE8PcQXwPqd6V5FNhSN5BDCmHcc9M0+cEf08YtkIaiVA+DtbpeOsJ52klyZhMvQNhed1fp7pmdg7d3NSMGflDmI9wbRsNwCxyTfmi6zUfo/RNH6vLvVRkPwSJaUur8ny9cEVhNuHSQlfVvdcy1g31iP/l61EzBJ2mD8Bo7bjaha/4So3v//QVsFfYOXKTCDKJDZcfX36eS5F2IabednVfTTrMxUTi+ngXXi5nEqzCDzBqCMMY8O4E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ec81502-04ff-42b7-bbd5-08d6dd063bd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 09:33:36.1372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_023339_495764_853E3A3F 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 20.05.2019 06:06, Peng Fan wrote:
> Introduce fusable-node property for i.MX OCOTP driver.
> The property will only be used by Firmware(eg. U-Boot) to
> runtime disable the nodes.
> 
> Take i.MX6ULL for example, there are several parts that only
> have limited modules enabled controlled by OCOTP fuse. It is
> not flexible to provide several dts for the serval parts, instead
> we could provide one device tree and let Firmware to runtime disable
> the device tree nodes for those modules that are disable(fused).
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> Currently NXP vendor use U-Boot to set status to disabled for devices
> that could not function,
> https://source.codeaurora.org/external/imx/uboot-imx/tree/arch/arm/mach-imx/mx6/module_fuse.c?h=imx_v2018.03_4.14.98_2.0.0_ga#n149
> But this approach is will not work if kernel dts node path changed.
> 
> There are two approaches to resolve:
> 
> 1. This patch is to add a fusable-node property, and Firmware will parse
>     the property and read fuse to decide whether to disable or keeep enable
>     the nodes.
> 
> 2. There is another approach is that add nvmem-cells for all nodes that
>     could be disabled(fused). Then in each linux driver to use nvmem
>     api to detect fused or not, or in linux driver common code to check
>     device functionable or not with nvmem API.
> 
> 
> To make it easy to work, we choose [1] here. Please advise whether
> it is acceptable, because the property is not used by linux driver in
> approach [1]. Or you prefer [2] or please advise if any better solution.

Couldn't firmware parse nvmem-cells? Even without a full nvmem subsystem 
it would be possible for imx-specific code to walk the entire device 
tree, parse nvmem-cells and disable nodes which are disabled by fuse.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
