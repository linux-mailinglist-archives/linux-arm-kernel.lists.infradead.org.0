Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D707BA6712
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 13:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FpA0SjjkCxgYCKcHXe+ONIJhMtZnuVeJwTCynjMBuoQ=; b=LJZhAgjOl6AP6e
	YxvhqFw+PlkhTYAUMINr8x73l3D0WxlHZoRgQgZZkwWppekjk/yiSs8Mr3BA1k++Wq8sfOCGbpFDU
	+1hwco9zLzHJy1JG4TwTXftkiPZpUyEBps5qhMCeY94jH4Am7To2fiDgOWX9o8Etqv6s3MwUCNQNM
	+Lu5F67Ha3QTNS9pouOn+urC9Ybqvy2qIfPq6YkCP1MzZYWzVyTMU4B7Vw9oXTCHcbGtScDUXRLT7
	rad5Yo25/xRIFL1cxEZHtmYgSIzi34iS/PoXBxbtYIXVZbHt4JsS378H/g1bV6+gsXYrhGRmweVFx
	jvFOZPuhjvUdDR0yRfPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i56fh-0001rE-Cf; Tue, 03 Sep 2019 11:08:25 +0000
Received: from mail-eopbgr30087.outbound.protection.outlook.com ([40.107.3.87]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i56fT-0001qT-VM
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 11:08:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gp+c3EdgaqBXcsSDrJHEsIS4IdE/EW2H3IQKVVcX2JaxGitFcpSH5BKqUu1ULmZu0D3Wysm613GPIN02dvkh7xwwCI8lk/G9ppDWhUM1kNtLjusOKcuPqTlaEWY7Cr68Boo7pV75divpIKWx1nQOWQzchflZ40YRb1eFG/WkVfpsYS8qeiL2EKN7FBx4BG7pgRyEkpCNi/Y+IG/Ci89nmpnTShsQjtSPFAfIMAs4QOl/BvWCpyZvlF7dcHu1IxRaEoQLSbXhGAPeca9/H5I5GOUtc6XzFsCTzNAv66QYyGqLlNXSsVp3Mqsfc/mxfEvqxXseyVb2Jd/fwtaYJ1fZGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUUjl7Qk2LcRdvxXw6wUbqypIl8HJ39+ZkSbbJrzRh4=;
 b=N8lccngXjUPqcuHrsPG9HLGgT9XO5fDgnu4acKCtxXk/kUSZKYrJYPPjlwct2uZysxw8s+GTuOvnXk8tKy0F7BRnN4bXO/Q86jYvJRVT+UTqU85xgj45EwPkuujQtWPVVp1P1EJYK7MkjnbMku7vUyafNnm6+/8RCs/pmT9t3PPWiMbgdTvp1d41iiAGZ/7GgT56pmJ2Nz84x3O//SbTiyBmarqWuTUL81xIgHc2x5evp5N30KT/WQfZ77ZKRED0EyJdspQ0mIkiulUpWGmFupwEjIsQyqzPLC1SSwkWnoehtQQVXFAFaCCgcGDRIGqsyDG6u0+fXeo24o2pGows7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUUjl7Qk2LcRdvxXw6wUbqypIl8HJ39+ZkSbbJrzRh4=;
 b=BNgLidfJpKXB8KcLi27/FNYpWinw80K6STVTIJQoIt11zZBywIaZNC3ouDYMeUW4gbl8Uv/BEOgBLgvV0ucO4qzejj3h48nNq62GDSK0OU/p+nwpbDWRirbm7/z9EBXUwNedLmylVF6a5kMdkOkn/aRjkfYnvsbwwmzYSzTbzHI=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (10.141.173.142) by
 AM7PR04MB7046.eurprd04.prod.outlook.com (52.135.56.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Tue, 3 Sep 2019 11:08:07 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::78c5:bb0f:88cd:3a2a]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::78c5:bb0f:88cd:3a2a%2]) with mapi id 15.20.2220.021; Tue, 3 Sep 2019
 11:08:06 +0000
From: Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, "Rafael J. Wysocki"
 <rafael@kernel.org>, Chuanhua Han <chuanhua.han@nxp.com>, Wolfram Sang
 <wsa@the-dreams.de>, Andy Shevchenko <andy.shevchenko@gmail.com>, Biwen Li
 <biwen.li@nxp.com>
Subject: RE: [PATCH] ACPI: support for NXP i2c controller
Thread-Topic: [PATCH] ACPI: support for NXP i2c controller
Thread-Index: AQHVN9RWONVodUogYk2tb4fLvCueOacZMhcAgADo7oCAAATh4A==
Date: Tue, 3 Sep 2019 11:08:06 +0000
Message-ID: <AM7PR04MB688567ACF4B42510E6492AC78EB90@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <20190711102601.20582-1-chuanhua.han@nxp.com>
 <CAJZ5v0hY2sL+XfN_4v07_hjvoxgCAt+Q89+wNg5Pky6XKP-mqA@mail.gmail.com>
 <31e7c1bb-d153-5feb-0b86-946caca5206c@pengutronix.de>
In-Reply-To: <31e7c1bb-d153-5feb-0b86-946caca5206c@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=meenakshi.aggarwal@nxp.com; 
x-originating-ip: [92.120.0.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 90c7b93c-ebb5-4f9e-4d63-08d7305eff91
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM7PR04MB7046; 
x-ms-traffictypediagnostic: AM7PR04MB7046:|AM7PR04MB7046:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB704655A6D7E1D2CE95AC108B8EB90@AM7PR04MB7046.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(39860400002)(366004)(13464003)(189003)(199004)(25786009)(6246003)(53936002)(256004)(6116002)(3846002)(86362001)(44832011)(66066001)(66446008)(76116006)(66476007)(74316002)(229853002)(11346002)(9686003)(7736002)(486006)(6436002)(6306002)(305945005)(476003)(446003)(7416002)(6636002)(33656002)(76176011)(81166006)(81156014)(14454004)(8676002)(478600001)(64756008)(66946007)(66556008)(5660300002)(54906003)(71200400001)(110136005)(966005)(71190400001)(6506007)(52536014)(102836004)(316002)(45080400002)(53546011)(26005)(2906002)(186003)(4326008)(66574012)(7696005)(55016002)(8936002)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM7PR04MB7046;
 H:AM7PR04MB6885.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QUVMiLIvHou/2QJWBZ3LGsIdiHiL2NRUo60WXV9LYH3G5o3fHVI275zwXMxqa8l2gSqGl8iDQs6gnV9Nvr+JohFxzfbt43A9gTtD4pKxKDsDkMd/D1rHd/A7kuLA0aJQGWQh7fxjdCWt8vPk4Twf4e/07jjMjPl2eHzQIK6pBIRYJAvOlL7o/kd8XU18snUL7tB+qipZGj+uaXJgl7oqsl1xKJbm1LIGvLVNP3LwajuxfGW6hoJuhFV91p+NmY5PL/qoSQBlL7Koc/qRRpKkZGXTCTg8kBXbNwL+UN7/lzh8w1L+W2dxpS7lYUazjxnMlR/8krFFbs8BoXiFHz1pRUhFJzhXE8BW8XMMxdy2Bx4bmvNZnLIbWB1QGPcxDJ9hXgFHdPsUdRun2IfNirA408+al8SsFgHWfhXthlwg/u8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90c7b93c-ebb5-4f9e-4d63-08d7305eff91
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 11:08:06.7775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uMwPZO6KHFQ5jNbcB3Zgz4HwawDchp12c3+49S0ElSG0CKVkaLYoyZCPxtBQjIm8MPJ9ZiaAY8KyTGCD8eVNi5Qjm8rhmQ1hfPpMXf7ZPWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_040812_229147_77B4930B 
X-CRM114-Status: GOOD (  23.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Udit Kumar <udit.kumar@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 linux-i2c <linux-i2c@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+biwen

> -----Original Message-----
> From: Oleksij Rempel <o.rempel@pengutronix.de>
> Sent: Tuesday, September 3, 2019 4:20 PM
> To: Rafael J. Wysocki <rafael@kernel.org>; Chuanhua Han
> <chuanhua.han@nxp.com>; Wolfram Sang <wsa@the-dreams.de>; Andy
> Shevchenko <andy.shevchenko@gmail.com>
> Cc: Rafael J. Wysocki <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>;
> Shawn Guo <shawnguo@kernel.org>; Sascha Hauer <s.hauer@pengutronix.de>;
> ACPI Devel Maling List <linux-acpi@vger.kernel.org>; Linux Kernel Mailing List
> <linux-kernel@vger.kernel.org>; linux-i2c <linux-i2c@vger.kernel.org>; Linux
> ARM <linux-arm-kernel@lists.infradead.org>; Leo Li <leoyang.li@nxp.com>;
> Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>; Udit Kumar
> <udit.kumar@nxp.com>
> Subject: Re: [PATCH] ACPI: support for NXP i2c controller
> 
> One more question,
> 
> On 02.09.19 22:56, Rafael J. Wysocki wrote:
> > On Thu, Jul 11, 2019 at 12:35 PM Chuanhua Han <chuanhua.han@nxp.com>
> wrote:
> >>
> >> Enable NXP i2c controller to boot with ACPI
> >>
> >> Signed-off-by: Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>
> >> Signed-off-by: Udit Kumar <udit.kumar@nxp.com>
> >> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> >
> > Wolfram, any objections to this from the i2c side?
> >
> >> ---
> >>   drivers/acpi/acpi_apd.c      |  6 ++++++
> >>   drivers/i2c/busses/i2c-imx.c | 15 +++++++++++++++
> >>   2 files changed, 21 insertions(+)
> >>
> >> diff --git a/drivers/acpi/acpi_apd.c b/drivers/acpi/acpi_apd.c index
> >> ff47317..cf8566c 100644
> >> --- a/drivers/acpi/acpi_apd.c
> >> +++ b/drivers/acpi/acpi_apd.c
> >> @@ -165,6 +165,11 @@ static const struct apd_device_desc
> thunderx2_i2c_desc = {
> >>          .fixed_clk_rate = 125000000,
> >>   };
> >>
> >> +static const struct apd_device_desc nxp_i2c_desc = {
> >> +       .setup = acpi_apd_setup,
> >> +       .fixed_clk_rate = 350000000,
> >> +};
> 
> I'm not ACPI expert, so need here some help for understanding. Here is ACPI
> table for
> NXP0001 id (found on the internet):
> +  Device(I2C0) {
> +    Name(_HID, "NXP0001")
> +    Name(_UID, 0)
> +    Name(_CRS, ResourceTemplate() {
> +      Memory32Fixed(ReadWrite, I2C0_BASE, I2C_LEN)
> +      Interrupt(ResourceConsumer, Level, ActiveHigh, Shared) { I2C0_IT }
> +    }) // end of _CRS for i2c0 device
> +    Name (_DSD, Package () {
> +      ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
> +      Package () {
> +         Package () {"clock-frequency", DEFAULT_PLAT_FREQ}, //This is
> + device specific
> data, Need to see how to pass clk stuff
> +      }
> +    })
> 
> Should kernel some how get proper clock-frequency from the ACPI? Or we still
> need to use hard coded .fixed_clk_rate in the kernel?
> 
> 
> >>   static const struct apd_device_desc hip08_spi_desc = {
> >>          .setup = acpi_apd_setup,
> >>          .fixed_clk_rate = 250000000,
> >> @@ -238,6 +243,7 @@ static const struct acpi_device_id
> acpi_apd_device_ids[] = {
> >>          { "HISI02A1", APD_ADDR(hip07_i2c_desc) },
> >>          { "HISI02A2", APD_ADDR(hip08_i2c_desc) },
> >>          { "HISI0173", APD_ADDR(hip08_spi_desc) },
> >> +       { "NXP0001", APD_ADDR(nxp_i2c_desc) },
> >>   #endif
> >>          { }
> >>   };
> >> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> >> index b1b8b93..99f9b96 100644
> >> --- a/drivers/i2c/busses/i2c-imx.c
> >> +++ b/drivers/i2c/busses/i2c-imx.c
> >> @@ -44,6 +44,7 @@
> >>   #include <linux/pm_runtime.h>
> >>   #include <linux/sched.h>
> >>   #include <linux/slab.h>
> >> +#include <linux/acpi.h>
> >>
> >>   /* This will be the driver name the kernel reports */
> >>   #define DRIVER_NAME "imx-i2c"
> >> @@ -255,6 +256,12 @@ static const struct of_device_id i2c_imx_dt_ids[] = {
> >>   };
> >>   MODULE_DEVICE_TABLE(of, i2c_imx_dt_ids);
> >>
> >> +static const struct acpi_device_id i2c_imx_acpi_ids[] = {
> >> +       {"NXP0001", .driver_data = (kernel_ulong_t)&vf610_i2c_hwdata},
> >> +       { }
> >> +};
> >> +MODULE_DEVICE_TABLE(acpi, i2c_imx_acpi_ids);
> >> +
> >>   static inline int is_imx1_i2c(struct imx_i2c_struct *i2c_imx)
> >>   {
> >>          return i2c_imx->hwdata->devtype == IMX1_I2C;
> >> @@ -1052,6 +1059,9 @@ static int i2c_imx_probe(struct platform_device
> *pdev)
> >>   {
> >>          const struct of_device_id *of_id = of_match_device(i2c_imx_dt_ids,
> >>                                                             &pdev->dev);
> >> +       const struct acpi_device_id *acpi_id =
> >> +                       acpi_match_device(i2c_imx_acpi_ids,
> >> +                                         &pdev->dev);
> >>          struct imx_i2c_struct *i2c_imx;
> >>          struct resource *res;
> >>          struct imxi2c_platform_data *pdata = dev_get_platdata(&pdev->dev);
> >> @@ -1079,6 +1089,9 @@ static int i2c_imx_probe(struct platform_device
> *pdev)
> >>
> >>          if (of_id)
> >>                  i2c_imx->hwdata = of_id->data;
> >> +       else if (acpi_id)
> >> +               i2c_imx->hwdata = (struct imx_i2c_hwdata *)
> >> +                               acpi_id->driver_data;
> >>          else
> >>                  i2c_imx->hwdata = (struct imx_i2c_hwdata *)
> >>                                  platform_get_device_id(pdev)->driver_data;
> >> @@ -1091,6 +1104,7 @@ static int i2c_imx_probe(struct platform_device
> *pdev)
> >>          i2c_imx->adapter.nr             = pdev->id;
> >>          i2c_imx->adapter.dev.of_node    = pdev->dev.of_node;
> >>          i2c_imx->base                   = base;
> >> +       ACPI_COMPANION_SET(&i2c_imx->adapter.dev,
> ACPI_COMPANION(&pdev->dev));
> >>
> >>          /* Get I2C clock */
> >>          i2c_imx->clk = devm_clk_get(&pdev->dev, NULL);
> >> @@ -1253,6 +1267,7 @@ static struct platform_driver i2c_imx_driver = {
> >>                  .name = DRIVER_NAME,
> >>                  .pm = &i2c_imx_pm_ops,
> >>                  .of_match_table = i2c_imx_dt_ids,
> >> +               .acpi_match_table = ACPI_PTR(i2c_imx_acpi_ids),
> >>          },
> >>          .id_table = imx_i2c_devtype,
> >>   };
> >> --
> >> 2.9.5
> >>
> >
> 
> Kind regards,
> Oleksij Rempel
> 
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pen
> gutronix.de%2F&amp;data=02%7C01%7Cmeenakshi.aggarwal%40nxp.com%7C
> 53801e593fbc47606f1d08d7305c8024%7C686ea1d3bc2b4c6fa92cd99c5c30163
> 5%7C0%7C0%7C637031046148090453&amp;sdata=PkS19Tph5n4gMcAJaG3sKs
> ROkOm%2BhoUykGRdYy0PUOc%3D&amp;reserved=0  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
