Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E427C2307D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XApesXXfQyXX5mUdPyznfT+PBXntKEtHMbYTgBswNZY=; b=Wj4vxNYmQs+gp8
	/HkxExqDMDYn//XedwhuxTEYKWdTiZrAWnugrgg5ZoI7VZ+XzZGaz5zvdue7cgDKCoOCQxGR0pyhs
	x+WagnktFMEKBJYxtOyxET6IqOw7qzt5/IQ2cdvRaMV2f6nnjsmCGWH4hl4O3w1mBg2akHuB2fwww
	07utaBqZNIKNX2eySgUrIkx6aTyzIptzb3pjJZdmNh02NXGoOAl1j1usf6TQpko7Jb3z3yGvE3c2t
	iGEePz8WXdXbIhC46mYIANxj8K3XGPtHaUkBTfeXAbqn/WSeB+XrAAV7y5K3gMj5SANUe5CJi/Olg
	dKg4zHl9CHqzybOtlpvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSejN-0007zp-AX; Mon, 20 May 2019 09:37:17 +0000
Received: from mail-eopbgr140050.outbound.protection.outlook.com
 ([40.107.14.50] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSejE-0007zH-LD
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:37:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qo/4lm080txNdB8vZoo7pHmI2Q8NtdG6gVqwj+AIAIY=;
 b=BIhkYpEP7Iy57h06f/4qh2G9Y2wyw6Oygih6uZT/ZYjtA0kXsLUXySPFad8QNAkniOOd4bnzU44BEnX0c+hIO+ETbbFBCZexAq0HQ3z9p9bPxqoo7WYJ+KJfyygbKf+HPK1C1W20mnXAYnsJbNnhueVhetiUKZozkyaDDw+zQQ0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6596.eurprd04.prod.outlook.com (20.179.255.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Mon, 20 May 2019 09:37:05 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 09:37:04 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>
Subject: RE: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
Thread-Topic: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
Thread-Index: AQHVDrkIcB6j+hDf/kC51b4HJvSviKZzwQ2A
Date: Mon, 20 May 2019 09:37:04 +0000
Message-ID: <AM0PR04MB44813D1223FDB9266C9F90D388060@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190520032020.7920-1-peng.fan@nxp.com>
 <AM0PR04MB643466338B440374D97F2805EE060@AM0PR04MB6434.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB643466338B440374D97F2805EE060@AM0PR04MB6434.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fedb471d-2867-4ce1-f3f5-08d6dd06b839
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6596; 
x-ms-traffictypediagnostic: AM0PR04MB6596:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB6596AE3A5D9ABD804AA95EFB88060@AM0PR04MB6596.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(346002)(366004)(39860400002)(189003)(199004)(305945005)(66476007)(64756008)(76116006)(66446008)(66946007)(66556008)(256004)(14444005)(73956011)(2906002)(186003)(316002)(71200400001)(71190400001)(66066001)(26005)(110136005)(7416002)(5660300002)(7736002)(33656002)(102836004)(11346002)(476003)(54906003)(3846002)(6116002)(99286004)(966005)(74316002)(9686003)(76176011)(44832011)(14454004)(486006)(7696005)(53546011)(6506007)(8936002)(68736007)(81166006)(81156014)(6436002)(6246003)(86362001)(8676002)(2201001)(478600001)(53936002)(6306002)(25786009)(52536014)(55016002)(2501003)(446003)(229853002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6596;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nAoXYNwnOcLA/ASD8hstzYykuYIyuFj4NnwIQYO+kkLv9R0Ja4PVGiDrtU1WK5CVutb4JZOebop3wGgp7Tajo8bkZOyCF7f6n+4awpYga6JSA9aky4mb1p0V25/JtpVmVwjjdsAL4VUP5YdNv6QAGjrgSNQmUBt5i4MiczpcT0qQElX+9+BBAjRU+HOW1ErI5nQF7svudm3wAlsMBjUdrmtawoQEJuYQgGJND+8t6qa/tmLvsnOZap2LWn3eReVduJNhmc7snfNDGbNdgEpnGMbsdSbu9hYzK9J/QM+rzLZMUyC+4HOlDdj5jvk/FaSFIOCCM04Ki1LfaJ+8n/XHhcK1oTKTYADci3Vv0R2QyKPFAvPVmYgR1ZkmaUasUjOp2/ZyMIQYybOa2j04sFcmXSv4X7++oTOeHBXn9glMvqI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fedb471d-2867-4ce1-f3f5-08d6dd06b839
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 09:37:04.8992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6596
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_023709_116058_503DE700 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.50 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.50 listed in wl.mailspike.net]
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

> Subject: Re: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
> 
> On 20.05.2019 06:06, Peng Fan wrote:
> > Introduce fusable-node property for i.MX OCOTP driver.
> > The property will only be used by Firmware(eg. U-Boot) to runtime
> > disable the nodes.
> >
> > Take i.MX6ULL for example, there are several parts that only have
> > limited modules enabled controlled by OCOTP fuse. It is not flexible
> > to provide several dts for the serval parts, instead we could provide
> > one device tree and let Firmware to runtime disable the device tree
> > nodes for those modules that are disable(fused).
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >
> > Currently NXP vendor use U-Boot to set status to disabled for devices
> > that could not function,
> >
> https://source.codeaurora.org/external/imx/uboot-imx/tree/arch/arm/mac
> > h-imx/mx6/module_fuse.c?h=imx_v2018.03_4.14.98_2.0.0_ga#n149
> > But this approach is will not work if kernel dts node path changed.
> >
> > There are two approaches to resolve:
> >
> > 1. This patch is to add a fusable-node property, and Firmware will parse
> >     the property and read fuse to decide whether to disable or keeep
> enable
> >     the nodes.
> >
> > 2. There is another approach is that add nvmem-cells for all nodes that
> >     could be disabled(fused). Then in each linux driver to use nvmem
> >     api to detect fused or not, or in linux driver common code to check
> >     device functionable or not with nvmem API.
> >
> >
> > To make it easy to work, we choose [1] here. Please advise whether it
> > is acceptable, because the property is not used by linux driver in
> > approach [1]. Or you prefer [2] or please advise if any better solution.
> 
> Couldn't firmware parse nvmem-cells? Even without a full nvmem subsystem
> it would be possible for imx-specific code to walk the entire device tree, parse
> nvmem-cells and disable nodes which are disabled by fuse.

Firmware could parse nvmem-cells, but there are lots of modules that could
be fused. If using nvmem-cells, that means need to add nvmem property
for all the modules that could be fused. To make is looks cleaner, so introduced
a fusable-node property.

Regards,
Peng.

> 
> --
> Regards,
> Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
