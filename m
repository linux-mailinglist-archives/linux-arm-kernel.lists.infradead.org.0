Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A92216A3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 20:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+55mNf2ZUF8Rovl17wZVmQK5rBFtl/6iI0VSCp8WHPw=; b=DxvsGEMGOILBzb
	fhh9VB7lhRRc+VQ0tnh8USyjyS8NhehxftjCYrWh5he1uOKVsiuWVMDirhH0s+GXtyQxhJC7oBYSO
	KP1enrRymLpqY0w9bakpYg+/NJLRrnA6lqaIESqmxNv30/9ALOAq5uStYIE8BhvF/Zz9D9xNHfwEa
	jDfsTumyWLzw6+eg6XRitHz11X5Hm7y3eFnmWHGygJCC5SwwfRylF+MWZqZrHT7O7KGjO9WNZlC/6
	hRO3qXYGFjoCcYIi/l8fT4h1yOOT988D0CyboLBej6QLjZeqy+9ymbukeQ1pQZql3MCaZEG+jpzd1
	yUumMHJhwacewK4m/7pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4uI-0007N4-4s; Tue, 07 May 2019 18:33:38 +0000
Received: from mail-eopbgr140040.outbound.protection.outlook.com
 ([40.107.14.40] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4u1-0007F0-N8; Tue, 07 May 2019 18:33:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vq/WP10A+sinh1xf3kCKBoiZHCgadiRc8ZUU3lqnzxQ=;
 b=PoowSsx07jQTqmdCQtQN69MyfqVW9bb35OkV339vfWDiTfHtlzBpy2wknXz4zNoq/6EDhGsd38kZy0lMhBP0192oySYUepqwI3Ze+aOb+znVGQrzgFU6/RSzsBUJjX5vb9DVkiTqRi9aepel4EiRC9r6eScqxxh1fAXyARuJQQw=
Received: from VI1PR04MB5871.eurprd04.prod.outlook.com (20.178.205.13) by
 VI1PR04MB3200.eurprd04.prod.outlook.com (10.170.229.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Tue, 7 May 2019 18:33:14 +0000
Received: from VI1PR04MB5871.eurprd04.prod.outlook.com
 ([fe80::f0ec:9ba8:16da:1d28]) by VI1PR04MB5871.eurprd04.prod.outlook.com
 ([fe80::f0ec:9ba8:16da:1d28%2]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 18:33:14 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Jagdish Gediya <jagdish.gediya@nxp.com>, "linux-mtd@lists.infradead.org"
 <linux-mtd@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>, Arnd
 Bergmann <arnd@arndb.de>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: RE: [PATCH v2 2/2] arm64: defconfig: Enable access to CFI-compliant
 memory mapped NOR flash
Thread-Topic: [PATCH v2 2/2] arm64: defconfig: Enable access to CFI-compliant
 memory mapped NOR flash
Thread-Index: AQHVBM6mpvzRI8sFlUSX3WYj8ye056Zf9TKw
Date: Tue, 7 May 2019 18:33:14 +0000
Message-ID: <VI1PR04MB58713BD7F9C3468F29E2D58A8F310@VI1PR04MB5871.eurprd04.prod.outlook.com>
References: <1557231354-11758-1-git-send-email-jagdish.gediya@nxp.com>
 <1557231354-11758-2-git-send-email-jagdish.gediya@nxp.com>
In-Reply-To: <1557231354-11758-2-git-send-email-jagdish.gediya@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 207e26bd-b303-49f5-e442-08d6d31a7780
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3200; 
x-ms-traffictypediagnostic: VI1PR04MB3200:
x-microsoft-antispam-prvs: <VI1PR04MB320005802DBFAE17D0EEC0D08F310@VI1PR04MB3200.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:350;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(396003)(346002)(366004)(136003)(13464003)(189003)(199004)(66446008)(64756008)(66556008)(5660300002)(66476007)(186003)(256004)(86362001)(14444005)(6506007)(53546011)(71200400001)(55016002)(71190400001)(66946007)(73956011)(76116006)(2501003)(26005)(66066001)(476003)(478600001)(486006)(11346002)(446003)(2201001)(6436002)(102836004)(3846002)(54906003)(4326008)(7736002)(8936002)(6116002)(110136005)(81156014)(81166006)(74316002)(229853002)(9686003)(68736007)(14454004)(305945005)(8676002)(7696005)(52536014)(2906002)(76176011)(316002)(33656002)(99286004)(25786009)(53936002)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3200;
 H:VI1PR04MB5871.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BWubCbHIUiyZlJIyp4Jkjf/RD8edXLihv5zUUzVMzcWPaS/KbCxpot1X1WHafFicNIGJTOFg+RcQHl8b6MZBRLyb65HZ8Gd3H9Ri5gXcCL/DxRCkNId1e7fDxPoCbNID/Q1mMucpMVSkFTcflln4vLN2D8lrR9ryCLy2vWFwFz5PCFWROQBU4FM+YJ0tht9BPgV+sX7cA2BGnEFDRKoO49jVsqhJNTjhI2ZhIHWnO91WMznoFT9t7OzdPcugcSwUjO6z4rqL3vaQ/nKyOFP/tMLw53WOZ1MnTPejQePU16/VmEXyX//vhnUAg/BZGFox1hIll747UnRx72uPMBHcFwrlrU/HVo9Alwq8EzWelGQWaQ7//g2aYfC5E7Brv0UREvZvRMCvZcfU4NN+HH1MeOzUt9+H9iFS/EeBIBtmvL0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 207e26bd-b303-49f5-e442-08d6d31a7780
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 18:33:14.6579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_113321_818144_A058A107 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Prabhakar Kushwaha <prabhakar.kushwaha@nxp.com>,
 Jagdish Gediya <jagdish.gediya@nxp.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Jagdish Gediya <jagdish.gediya@nxp.com>
> Sent: Tuesday, May 7, 2019 7:16 AM
> To: linux-mtd@lists.infradead.org
> Cc: bbrezillon@kernel.org; Leo Li <leoyang.li@nxp.com>; Prabhakar
> Kushwaha <prabhakar.kushwaha@nxp.com>; Jagdish Gediya
> <jagdish.gediya@nxp.com>
> Subject: [PATCH v2 2/2] arm64: defconfig: Enable access to CFI-compliant
> memory mapped NOR flash

This should be sent to arm mailing list and arm maintainers(added for you), and cc the MTD owners.

> 
> Enable below configs in arm64 defconfig file,
> CONFIG_MTD_CFI=y
> CONFIG_MTD_CFI_INTELEXT=y
> CONFIG_MTD_CFI_AMDSTD=y
> CONFIG_MTD_CFI_STAA=y
> CONFIG_MTD_PHYSMAP=y
> CONFIG_MTD_PHYSMAP_OF=y

This include both CFI and PHYSMAP changes, and probably better to be separate.  And it will be good to mention that CONFIG_MTD_PHYSMAP_OF has been enabled previously in the defconfig.  It is because of the following change to the driver that it is no longer selectable alone but need CONFIG_MTD_PHYSMAP to be selectable.

commit 642b1e8dbed7bbbf8c4deb3c9a0496f17278badc
Author: Boris Brezillon <boris.brezillon@bootlin.com>
Date:   Fri Oct 19 09:49:04 2018 +0200

    mtd: maps: Merge physmap_of.c into physmap-core.c

    There's no real reason to have two separate driver for the DT and pdata
    case. Just do what we do everywhere else and handle DT and pdata
    parsing in the same driver.

    Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
    Reviewed-by: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
    Acked-by: Linus Walleij <linus.walleij@linaro.org>

> 
> These configs are needed to access CFI compliant memory mapped NOR
> flashes e.g. NOR flash connected over Freescale IFC.
> 
> Signed-off-by: Jagdish Gediya <jagdish.gediya@nxp.com>
> ---
> Change since v2:
>  Split the defconfig changes between,
>  1. Changes as a result of 'make savedefconfig' command
>  2. Enablement of actually needed configs
> 
>  arch/arm64/configs/defconfig | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index aff014e..ac06501 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -193,6 +193,12 @@ CONFIG_HISILICON_LPC=y
>  CONFIG_SIMPLE_PM_BUS=y
>  CONFIG_MTD=y
>  CONFIG_MTD_BLOCK=y
> +CONFIG_MTD_CFI=y
> +CONFIG_MTD_CFI_INTELEXT=y
> +CONFIG_MTD_CFI_AMDSTD=y
> +CONFIG_MTD_CFI_STAA=y
> +CONFIG_MTD_PHYSMAP=y
> +CONFIG_MTD_PHYSMAP_OF=y
>  CONFIG_MTD_M25P80=y
>  CONFIG_MTD_NAND=y
>  CONFIG_MTD_NAND_DENALI_DT=y
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
