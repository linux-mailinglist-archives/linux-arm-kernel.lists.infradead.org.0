Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C85E41AD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 05:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kvKgddLbbrBxrcjX03wC/qntditadxulVgHTfDEGlHw=; b=IuOu8ZpK/R7z+k
	M812mhLOzl2d7/08g6943utXPzMU45cCv8QS1Qhn60VoA3abzDHa0s0i17Lv0mhGuafgafTiqQ+Up
	6gFILW3+NJNJvf3ANY/G+vzQNfWPQKTnINeGLyUwhuDg2D/KBhLHf/noQFwK03UyNAaC49jxIBoI1
	SZYJVajUeLasgsz+ziwJ16AwEM3Pe2cCLIpM+2IpQEV/g/QWg8q1Y7NPQHMSz89F9sU5ZnfY5vWN1
	Zy/UG8cTAxTJQ6tInCxVAIL2iO8LHjdA3qsX/b6VgREwObjEQDeEm7kuvyvhXCbKCgaNZxTAjpWni
	IQAtWv8lU1kXg/lMhgCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hauE0-0003w4-ET; Wed, 12 Jun 2019 03:47:00 +0000
Received: from mail-eopbgr20056.outbound.protection.outlook.com ([40.107.2.56]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hauDq-0003vI-9o
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 03:46:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VdY7hsZbWZKxAbFSKFsk8E+i6gmZGDjwfnykV2S/czI=;
 b=c/RE0R8sdXYhYl0WCWGQhrNl5+MTho/gLGfmtrBwRqRBoiqLTNuKScJY8meABYFf+6c/j09+uDFrisdfBXhHcK6hi+09ilNEir6ZR9IlSYhcTySolH6Jj21Ry+k5IfLM2Ms+Uf9do+jUsN2Nt5S1r57+spoHGJDM8qMuA96RdUU=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5188.eurprd04.prod.outlook.com (20.177.42.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Wed, 12 Jun 2019 03:46:41 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4%3]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 03:46:41 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>,
 =?utf-8?B?R3VpZG8gR8O8bnRoZXI=?= <agx@sigxcpu.org>, Shawn Guo
 <shawnguo@kernel.org>
Subject: RE: [PATCH] soc: imx: Move imx_get_soc_revision from mach-imx
Thread-Topic: [PATCH] soc: imx: Move imx_get_soc_revision from mach-imx
Thread-Index: AQHVIIbCiBMqC6Ogx0KwWO5dVTQBtKaXXAlQ
Date: Wed, 12 Jun 2019 03:46:41 +0000
Message-ID: <AM0PR04MB42116526B0ACA090499A33DE80EC0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <084f934192b7d245034ddd507f348fa13ae840ac.1560279028.git.leonard.crestez@nxp.com>
In-Reply-To: <084f934192b7d245034ddd507f348fa13ae840ac.1560279028.git.leonard.crestez@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d964ec0-75f8-48c1-6216-08d6eee894a6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5188; 
x-ms-traffictypediagnostic: AM0PR04MB5188:
x-microsoft-antispam-prvs: <AM0PR04MB518812E5C7ECF458C15CF23280EC0@AM0PR04MB5188.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(396003)(366004)(136003)(376002)(199004)(189003)(14454004)(478600001)(6506007)(33656002)(66066001)(76176011)(26005)(8676002)(66476007)(66946007)(66556008)(64756008)(66446008)(76116006)(102836004)(73956011)(5660300002)(55016002)(9686003)(3846002)(4326008)(6116002)(6436002)(110136005)(74316002)(44832011)(316002)(8936002)(54906003)(71200400001)(7736002)(2906002)(186003)(71190400001)(229853002)(25786009)(53936002)(99286004)(68736007)(81156014)(6246003)(305945005)(7696005)(86362001)(14444005)(52536014)(476003)(81166006)(11346002)(486006)(256004)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5188;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nl9/wL+ntba3wRxAAqfOQD9JykX+HMMpEWHH8RVjzamT12mn1tB076zMYZ3AXoLUAtgFKDGXGpvxO1Ekv4C5gl/arBrzAqK8LiFm4iikxgNznj9Q9Nz4tc/QfEaNPrc/rT5uKDmJ/fnwsQGeFW1pGjIHb80Hxqoq9knOoOpAKQ10nmFmE61e2pQexkjRvee/YtqsKJinzpMJw6JTiKhbmWPajPbMThshFR4VI1H0UFjvOZEPQA8zpX6lRefSej1UJ4d953+2C39zscuzqLcd8kqQAR1AQHYSNYxWtTY/aTBIxX+oFolJTdng0Z0DVW78FO43gSheY3NVTgD4SgQtf8Y0UJbAorZ0wjdcGBIspfAomXtkhAysjBY8fA/5RkkCoQSUWd02jHYwDp41K0D01k2MmkOrRUFr6+vceeT3b/o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d964ec0-75f8-48c1-6216-08d6eee894a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 03:46:41.1970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_204650_441247_6DF80433 
X-CRM114-Status: GOOD (  23.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.56 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Leonard Crestez [mailto:leonard.crestez@nxp.com]
> Sent: Wednesday, June 12, 2019 2:52 AM
> 
> There are a few drivers which call imx_get_soc_revision in order to enable
> errata workarounds but this is only available on 32-bit arm.
> 
> Move the current globals to drivers/soc/imx/revision.c so that they're also
> accessible on all imx8 with same name and semantics.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

The idea looks good to me.

Only a few minor comments,
otherwise:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

> 
> ---
> This is not very pretty.
> 
>  arch/arm/mach-imx/common.h    |  1 -
>  arch/arm/mach-imx/cpu.c       | 17 ++++-------------
>  drivers/soc/imx/Makefile      |  1 +
>  drivers/soc/imx/revision.c    | 19 +++++++++++++++++++
>  drivers/soc/imx/soc-imx-scu.c |  2 ++
>  drivers/soc/imx/soc-imx8.c    |  5 ++++-
>  include/soc/imx/revision.h    |  1 +
>  7 files changed, 31 insertions(+), 15 deletions(-)  create mode 100644
> drivers/soc/imx/revision.c
> 
> diff --git a/arch/arm/mach-imx/common.h b/arch/arm/mach-imx/common.h
> index c51764a85fd7..5c06224986f4 100644
> --- a/arch/arm/mach-imx/common.h
> +++ b/arch/arm/mach-imx/common.h
> @@ -49,11 +49,10 @@ void mxc_restart(enum reboot_mode, const char *);
> void mxc_arch_reset_init(void __iomem *);  void imx1_reset_init(void
> __iomem *);  void imx_set_aips(void __iomem *);  void
> imx_aips_allow_unprivileged_access(const char *compat);  int
> mxc_device_init(void); -void imx_set_soc_revision(unsigned int rev);  void
> imx_init_revision_from_anatop(void);
>  struct device *imx_soc_device_init(void);  void imx6_enable_rbc(bool
> enable);  void imx_gpc_check_dt(void);  void
> imx_gpc_set_arm_power_in_lpm(bool power_off); diff --git
> a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c index
> 0b137eeffb61..bfc84f5a1312 100644
> --- a/arch/arm/mach-imx/cpu.c
> +++ b/arch/arm/mach-imx/cpu.c
> @@ -9,27 +9,16 @@
> 
>  #include "hardware.h"
>  #include "common.h"
> 
>  unsigned int __mxc_cpu_type;
> -static unsigned int imx_soc_revision;
> 
>  void mxc_set_cpu_type(unsigned int type)  {
>  	__mxc_cpu_type = type;
>  }
> 
> -void imx_set_soc_revision(unsigned int rev) -{
> -	imx_soc_revision = rev;
> -}
> -
> -unsigned int imx_get_soc_revision(void) -{
> -	return imx_soc_revision;
> -}
> -
>  void imx_print_silicon_rev(const char *cpu, int srev)  {
>  	if (srev == IMX_CHIP_REVISION_UNKNOWN)
>  		pr_info("CPU identified as %s, unknown revision\n", cpu);
>  	else
> @@ -77,10 +66,11 @@ struct device * __init imx_soc_device_init(void)  {
>  	struct soc_device_attribute *soc_dev_attr;
>  	struct soc_device *soc_dev;
>  	struct device_node *root;
>  	const char *soc_id;
> +	int soc_rev;
>  	int ret;
> 
>  	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
>  	if (!soc_dev_attr)
>  		return NULL;
> @@ -151,13 +141,14 @@ struct device * __init imx_soc_device_init(void)
>  	default:
>  		soc_id = "Unknown";
>  	}
>  	soc_dev_attr->soc_id = soc_id;
> 
> +	soc_rev = imx_get_soc_revision();
>  	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%d.%d",
> -					   (imx_soc_revision >> 4) & 0xf,
> -					   imx_soc_revision & 0xf);
> +					   (soc_rev >> 4) & 0xf,
> +					   soc_rev & 0xf);
>  	if (!soc_dev_attr->revision)
>  		goto free_soc;
> 
>  	soc_dev = soc_device_register(soc_dev_attr);
>  	if (IS_ERR(soc_dev))
> diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile index
> cf9ca42ff739..293a771127dd 100644
> --- a/drivers/soc/imx/Makefile
> +++ b/drivers/soc/imx/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +obj-y += revision.o
>  obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
>  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
>  obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
>  obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o diff --git
> a/drivers/soc/imx/revision.c b/drivers/soc/imx/revision.c new file mode
> 100644 index 000000000000..fc4cea2f25bd
> --- /dev/null
> +++ b/drivers/soc/imx/revision.c
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP.
> + */
> +#include <linux/module.h>

Maybe replaced by <linux/export.h>?

> +#include <soc/imx/revision.h>
> +
> +static unsigned int imx_soc_revision = IMX_CHIP_REVISION_UNKNOWN;
> +
> +void imx_set_soc_revision(unsigned int rev) {
> +	imx_soc_revision = rev;
> +}
> +
> +unsigned int imx_get_soc_revision(void) {
> +	return imx_soc_revision;
> +}
> +EXPORT_SYMBOL(imx_get_soc_revision);
> diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c index
> 676f612f6488..7c4106ff3e0f 100644
> --- a/drivers/soc/imx/soc-imx-scu.c
> +++ b/drivers/soc/imx/soc-imx-scu.c
> @@ -7,10 +7,11 @@
>  #include <linux/firmware/imx/sci.h>
>  #include <linux/slab.h>
>  #include <linux/sys_soc.h>
>  #include <linux/platform_device.h>
>  #include <linux/of.h>
> +#include <soc/imx/revision.h>
> 
>  #define IMX_SCU_SOC_DRIVER_NAME		"imx-scu-soc"
> 
>  static struct imx_sc_ipc *soc_ipc_handle;
> 
> @@ -85,10 +86,11 @@ static int imx_scu_soc_probe(struct platform_device
> *pdev)
>  		return -ENOMEM;
> 
>  	/* format revision value passed from SCU firmware */
>  	val = (id >> 5) & 0xf;
>  	val = (((val >> 2) + 1) << 4) | (val & 0x3);
> +	imx_set_soc_revision(val);
>  	soc_dev_attr->revision = kasprintf(GFP_KERNEL,
>  					   "%d.%d",
>  					   (val >> 4) & 0xf,
>  					   val & 0xf);
>  	if (!soc_dev_attr->revision) {
> diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c index
> 3842d096daf0..465d2c6c6905 100644
> --- a/drivers/soc/imx/soc-imx8.c
> +++ b/drivers/soc/imx/soc-imx8.c
> @@ -8,10 +8,11 @@
>  #include <linux/of_address.h>
>  #include <linux/slab.h>
>  #include <linux/sys_soc.h>
>  #include <linux/platform_device.h>
>  #include <linux/of.h>
> +#include <soc/imx/revision.h>
> 
>  #define REV_B1				0x21
> 
>  #define IMX8MQ_SW_INFO_B1		0x40
>  #define IMX8MQ_SW_MAGIC_B1		0xff0055aa
> @@ -118,12 +119,14 @@ static int __init imx8_soc_init(void)
>  	}
> 
>  	data = id->data;
>  	if (data) {
>  		soc_dev_attr->soc_id = data->name;
> -		if (data->soc_revision)
> +		if (data->soc_revision) {
>  			soc_rev = data->soc_revision();
> +			imx_set_soc_revision(soc_rev & 0xFF);

s/0xFF/0xff

BTW if we really need a mask, maybe move it into imx_set_soc_revision().

> +		}
>  	}
> 
>  	soc_dev_attr->revision = imx8_revision(soc_rev);
>  	if (!soc_dev_attr->revision) {
>  		ret = -ENOMEM;
> diff --git a/include/soc/imx/revision.h b/include/soc/imx/revision.h index
> 9ea346924c35..5e7e2aea10ff 100644
> --- a/include/soc/imx/revision.h
> +++ b/include/soc/imx/revision.h
> @@ -30,8 +30,9 @@ int mx31_revision(void);  int mx35_revision(void);  int
> mx51_revision(void);  int mx53_revision(void);
> 
>  unsigned int imx_get_soc_revision(void);
> +void imx_set_soc_revision(unsigned int rev);
>  void imx_print_silicon_rev(const char *cpu, int srev);
> 
>  #endif /* __SOC_IMX_REVISION_H__ */
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
