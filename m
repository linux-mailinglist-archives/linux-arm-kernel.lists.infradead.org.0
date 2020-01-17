Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 979A21401AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 03:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sD8OeIFHBUzPyFykY4GzMtwHwtH2mOJL63zbc0eXPQ0=; b=CkMNUuOkxNC15l
	42bQ72XBBzOMJ6ODVUiduLr8GpzbTH+fr7qgr0Gz3HT2w7HalXmg2OzlR5WLAajqIA5FrouGOfeb7
	c+JQ/F+2Pyb9WVBe0Zrx1WsjJp/nOBuvrvpt04atKTJVvwU6kBDUKH2iCDaS5w9xDqA5l5c7+7LEg
	fv5rVXKW9B6DmZHgfeVkPcn92x1XGWvf5n/7K2fTRNwpouyBfBtduRazKtXVbV6uXwtGJvVr71BeP
	NJxc/WvDqryUwyqqhqJ9oirl9t3E4CFgWncBWwRLPvCCvbq0uG5Sx8/8xO98WzVQV7MvWnepUxSZV
	OjvQODW0lhT9IaULueiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isH0J-0003jP-Cr; Fri, 17 Jan 2020 02:04:55 +0000
Received: from mail-eopbgr20074.outbound.protection.outlook.com ([40.107.2.74]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isH0B-0003iN-OT
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 02:04:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jox0UNgoDpXmPZjlZ3+tRUCliHNZJ8BAglnDw2Z/T9ZCFa7xcIV2HTxm9uYfae5vuQTKNGo/afu57mR9AROhivnKK0vr0zMkhy1a+arEoiCpqmivhBnvxVkROHIYf9efWxT8BrjQYM+RH8L6HraPeDr+nyjEYK37a5vQTxTgdOnQV81U7XdaijGtod+B+LwZ+WNmg/Dr40pQFST4jd4p+Ghf8HaJiwz2pj00aQgh1GfBqP0HQ/PCf6xmYzkucMHZpRkcCCXAVpHCGe0DUnlJt6q6dkXFhFQVNdxKAzfv1f8m+n8pfA2+2rNTYE0x9ovMyB3S7fbGcP02ibVIG/XEzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4HLP1KwyGKMpidPGXT9FK3KLJ5SNpTKAOAZTqHHnMOg=;
 b=N91ldCgFz6sH0SxraBkZHy38QprlRro+v12Hz6aJ7Rckl1oMF8iQlRGVKrBmQ/jAuGTT96q5AW256wYCCNhawaWOyOTj3XfmQUeWwEqHDxwEkjgCFArNytAqD8MCm3VaxI+Lp8RgI2kvF1R1YA2DiAiBFgUT625jCFYJmrm6O/AYWAZC6RxgWLrTwO2p36jhPPKJ47b2HIvicz8JqEvoEFPLI2xAsr94Gids/h+Jhad6Bi8Kl732i6OhxOnhRYkY67Xd0FwdX4fqpTOIqB+D2mNKH4diuosl6/12eaIMBPHiIxs+3RKTlx+oE2bWEzNj01Mz2CbzIeDmekvuYReCzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4HLP1KwyGKMpidPGXT9FK3KLJ5SNpTKAOAZTqHHnMOg=;
 b=Yh5Ua7xygHP6kgUlNzyNrHSSMykNaArpSNqJ8w6E5YibZ4VqIz4cjWf+QCszchEDzU3HvLojDKHNviKN1NAfrK5hyfDfO1RkLharJlq4qsR2/dKFuTHdgbGJfeK4Ta7n8Z8zgTCBJ1laJ7XT4ZzNLQDVdwu2hwrK8G/wk6U0tK0=
Received: from AM7PR04MB6981.eurprd04.prod.outlook.com (10.141.171.82) by
 AM7PR04MB7064.eurprd04.prod.outlook.com (52.135.57.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Fri, 17 Jan 2020 02:04:41 +0000
Received: from AM7PR04MB6981.eurprd04.prod.outlook.com
 ([fe80::343c:d1c6:d401:be23]) by AM7PR04MB6981.eurprd04.prod.outlook.com
 ([fe80::343c:d1c6:d401:be23%6]) with mapi id 15.20.2644.021; Fri, 17 Jan 2020
 02:04:40 +0000
From: Jacky Bai <ping.bai@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [RFC 1/4] ARM: imx: use device_initcall for imx_soc_device_init
Thread-Topic: [RFC 1/4] ARM: imx: use device_initcall for imx_soc_device_init
Thread-Index: AQHVzFB5/vCMA7afkUKzLUv0Wdu396fuGsdw
Date: Fri, 17 Jan 2020 02:04:40 +0000
Message-ID: <AM7PR04MB6981B45633536729EBEB427487310@AM7PR04MB6981.eurprd04.prod.outlook.com>
References: <1579167145-1480-1-git-send-email-peng.fan@nxp.com>
 <1579167145-1480-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1579167145-1480-2-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 144f49c6-7f02-4393-2eeb-08d79af19d18
x-ms-traffictypediagnostic: AM7PR04MB7064:|AM7PR04MB7064:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB70640D7047993C298AB0276C87310@AM7PR04MB7064.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:407;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(39860400002)(376002)(396003)(199004)(189003)(478600001)(55016002)(7416002)(66476007)(66446008)(52536014)(66556008)(71200400001)(7696005)(66946007)(64756008)(8936002)(186003)(5660300002)(26005)(110136005)(33656002)(86362001)(53546011)(81166006)(2906002)(4326008)(54906003)(9686003)(81156014)(316002)(76116006)(6506007)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM7PR04MB7064;
 H:AM7PR04MB6981.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H0f0cElmO2JHSoAgkKhXXSJ0IZpFfYIxU8ccPpHXqgENo3O8m0FlPLhaihVVymp2ESNP48DHIJPu751TRoa8hL1uQcH6woVKuQ7yg2XwC4i0WyxwSE88fuydvyi6pWbwOwpGOVgyMo+R/jDlYABnNb81z+pPG8odLf+N34/8+qxfsPatP0WvfqgKtb3kHjQ/aUVHlKmDI3mSpuIq0cbFrAC+AS4A6KJjJFL5QcOQ3gghrpjGJWBzvABRJlTgFh7jNXfA1j/04U2kqFCElpJ5w4G/9eNw3kOcNRxe//N2w8Dx25ELn2X7bXyrx6OcELj12Mq2wFBR3tgs5X+qDez9DyCUmUrt6gIKo6utkufFvn2SohWwCIDAqtJmKBTTaOtOweL6VMj4qLevtFimM5O2a2lWgfFZxaXxIoU0MSEWznPqPntltCsCh5nX44dNQEDH
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 144f49c6-7f02-4393-2eeb-08d79af19d18
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 02:04:40.8214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JWWXAmCS9t3egYXJPyTVg9th+ZT9sdQrB8L+tdDzLCRo/V16np/Wb1VJQm4zkLublNQrA4TYdTD00nzrd7wXSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_180448_031959_69D1C60E 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "git@andred.net" <git@andred.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "info@metux.net" <info@metux.net>, "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Peng Fan <peng.fan@nxp.com>
> Sent: Thursday, January 16, 2020 5:37 PM
> To: shawnguo@kernel.org; s.hauer@pengutronix.de
> Cc: kernel@pengutronix.de; festevam@gmail.com; dl-linux-imx
> <linux-imx@nxp.com>; allison@lohutok.net; info@metux.net; Anson Huang
> <anson.huang@nxp.com>; Leonard Crestez <leonard.crestez@nxp.com>;
> git@andred.net; Abel Vesa <abel.vesa@nxp.com>; ard.biesheuvel@linaro.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Peng Fan
> <peng.fan@nxp.com>
> Subject: [RFC 1/4] ARM: imx: use device_initcall for imx_soc_device_init
> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> This is preparation to move imx_soc_device_init to drivers/soc/imx/
> 
> There is no reason to must put dt devices under /sys/devices/soc0, they could
> also be under /sys/devices/platform, so we could pass NULL as parent when
> calling of_platform_default_populate.
> 

This change will impact various internal test case & userspace lib, I think.
Need to ask test team & other developer to double check the impact.

BR
Jacky Bai
> Following soc-imx8.c soc-imx-scu.c using device_initcall, need to change
> return type to int type for imx_soc_device_init.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm/mach-imx/common.h       | 1 -
>  arch/arm/mach-imx/cpu.c          | 9 +++++----
>  arch/arm/mach-imx/mach-imx6q.c   | 8 +-------
>  arch/arm/mach-imx/mach-imx6sl.c  | 8 +-------
> arch/arm/mach-imx/mach-imx6sx.c  | 8 +-------
> arch/arm/mach-imx/mach-imx6ul.c  | 8 +-------
>  arch/arm/mach-imx/mach-imx7d.c   | 6 ------
>  arch/arm/mach-imx/mach-imx7ulp.c | 2 +-
>  8 files changed, 10 insertions(+), 40 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/common.h b/arch/arm/mach-imx/common.h
> index 912aeceb4ff8..09e89aa7be50 100644
> --- a/arch/arm/mach-imx/common.h
> +++ b/arch/arm/mach-imx/common.h
> @@ -49,7 +49,6 @@ void imx_aips_allow_unprivileged_access(const char
> *compat);  int mxc_device_init(void);  void imx_set_soc_revision(unsigned
> int rev);  void imx_init_revision_from_anatop(void);
> -struct device *imx_soc_device_init(void);  void imx6_enable_rbc(bool
> enable);  void imx_gpc_check_dt(void);  void
> imx_gpc_set_arm_power_in_lpm(bool power_off); diff --git
> a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c index
> 06f8d64b65af..2df649a84697 100644
> --- a/arch/arm/mach-imx/cpu.c
> +++ b/arch/arm/mach-imx/cpu.c
> @@ -83,7 +83,7 @@ void __init imx_aips_allow_unprivileged_access(
>  	}
>  }
> 
> -struct device * __init imx_soc_device_init(void)
> +static int __init imx_soc_device_init(void)
>  {
>  	struct soc_device_attribute *soc_dev_attr;
>  	const char *ocotp_compat = NULL;
> @@ -97,7 +97,7 @@ struct device * __init imx_soc_device_init(void)
> 
>  	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
>  	if (!soc_dev_attr)
> -		return NULL;
> +		return PTR_ERR(soc_dev_attr);
> 
>  	soc_dev_attr->family = "Freescale i.MX";
> 
> @@ -219,7 +219,7 @@ struct device * __init imx_soc_device_init(void)
>  	if (IS_ERR(soc_dev))
>  		goto free_serial_number;
> 
> -	return soc_device_to_device(soc_dev);
> +	return 0;
> 
>  free_serial_number:
>  	kfree(soc_dev_attr->serial_number);
> @@ -227,5 +227,6 @@ struct device * __init imx_soc_device_init(void)
>  	kfree(soc_dev_attr->revision);
>  free_soc:
>  	kfree(soc_dev_attr);
> -	return NULL;
> +	return -ENOMEM;
>  }
> +device_initcall(imx_soc_device_init);
> diff --git a/arch/arm/mach-imx/mach-imx6q.c
> b/arch/arm/mach-imx/mach-imx6q.c index edd26e0ffeec..735da3311320
> 100644
> --- a/arch/arm/mach-imx/mach-imx6q.c
> +++ b/arch/arm/mach-imx/mach-imx6q.c
> @@ -258,21 +258,15 @@ static void __init imx6q_axi_init(void)
> 
>  static void __init imx6q_init_machine(void)  {
> -	struct device *parent;
> -
>  	if (cpu_is_imx6q() && imx_get_soc_revision() ==
> IMX_CHIP_REVISION_2_0)
>  		imx_print_silicon_rev("i.MX6QP", IMX_CHIP_REVISION_1_0);
>  	else
>  		imx_print_silicon_rev(cpu_is_imx6dl() ? "i.MX6DL" : "i.MX6Q",
>  				imx_get_soc_revision());
> 
> -	parent = imx_soc_device_init();
> -	if (parent == NULL)
> -		pr_warn("failed to initialize soc device\n");
> -
>  	imx6q_enet_phy_init();
> 
> -	of_platform_default_populate(NULL, NULL, parent);
> +	of_platform_default_populate(NULL, NULL, NULL);
> 
>  	imx_anatop_init();
>  	cpu_is_imx6q() ?  imx6q_pm_init() : imx6dl_pm_init(); diff --git
> a/arch/arm/mach-imx/mach-imx6sl.c b/arch/arm/mach-imx/mach-imx6sl.c
> index e00818abe54d..0f046a37dc73 100644
> --- a/arch/arm/mach-imx/mach-imx6sl.c
> +++ b/arch/arm/mach-imx/mach-imx6sl.c
> @@ -46,13 +46,7 @@ static void __init imx6sl_init_late(void)
> 
>  static void __init imx6sl_init_machine(void)  {
> -	struct device *parent;
> -
> -	parent = imx_soc_device_init();
> -	if (parent == NULL)
> -		pr_warn("failed to initialize soc device\n");
> -
> -	of_platform_default_populate(NULL, NULL, parent);
> +	of_platform_default_populate(NULL, NULL, NULL);
> 
>  	if (cpu_is_imx6sl())
>  		imx6sl_fec_init();
> diff --git a/arch/arm/mach-imx/mach-imx6sx.c
> b/arch/arm/mach-imx/mach-imx6sx.c index d5310bf307ff..781e2a94fdd7
> 100644
> --- a/arch/arm/mach-imx/mach-imx6sx.c
> +++ b/arch/arm/mach-imx/mach-imx6sx.c
> @@ -63,13 +63,7 @@ static inline void imx6sx_enet_init(void)
> 
>  static void __init imx6sx_init_machine(void)  {
> -	struct device *parent;
> -
> -	parent = imx_soc_device_init();
> -	if (parent == NULL)
> -		pr_warn("failed to initialize soc device\n");
> -
> -	of_platform_default_populate(NULL, NULL, parent);
> +	of_platform_default_populate(NULL, NULL, NULL);
> 
>  	imx6sx_enet_init();
>  	imx_anatop_init();
> diff --git a/arch/arm/mach-imx/mach-imx6ul.c
> b/arch/arm/mach-imx/mach-imx6ul.c index 311f5e4ff723..9db8e567c6b5
> 100644
> --- a/arch/arm/mach-imx/mach-imx6ul.c
> +++ b/arch/arm/mach-imx/mach-imx6ul.c
> @@ -56,13 +56,7 @@ static inline void imx6ul_enet_init(void)
> 
>  static void __init imx6ul_init_machine(void)  {
> -	struct device *parent;
> -
> -	parent = imx_soc_device_init();
> -	if (parent == NULL)
> -		pr_warn("failed to initialize soc device\n");
> -
> -	of_platform_default_populate(NULL, NULL, parent);
> +	of_platform_default_populate(NULL, NULL, NULL);
>  	imx6ul_enet_init();
>  	imx_anatop_init();
>  	imx6ul_pm_init();
> diff --git a/arch/arm/mach-imx/mach-imx7d.c
> b/arch/arm/mach-imx/mach-imx7d.c index ebb27592a9f7..879c35929a13
> 100644
> --- a/arch/arm/mach-imx/mach-imx7d.c
> +++ b/arch/arm/mach-imx/mach-imx7d.c
> @@ -78,12 +78,6 @@ static inline void imx7d_enet_init(void)
> 
>  static void __init imx7d_init_machine(void)  {
> -	struct device *parent;
> -
> -	parent = imx_soc_device_init();
> -	if (parent == NULL)
> -		pr_warn("failed to initialize soc device\n");
> -
>  	imx_anatop_init();
>  	imx7d_enet_init();
>  }
> diff --git a/arch/arm/mach-imx/mach-imx7ulp.c
> b/arch/arm/mach-imx/mach-imx7ulp.c
> index 11ac71aaf965..128cf4c92aab 100644
> --- a/arch/arm/mach-imx/mach-imx7ulp.c
> +++ b/arch/arm/mach-imx/mach-imx7ulp.c
> @@ -57,7 +57,7 @@ static void __init imx7ulp_init_machine(void)
> 
>  	mxc_set_cpu_type(MXC_CPU_IMX7ULP);
>  	imx7ulp_set_revision();
> -	of_platform_default_populate(NULL, NULL, imx_soc_device_init());
> +	of_platform_default_populate(NULL, NULL, NULL);
>  }
> 
>  static const char *const imx7ulp_dt_compat[] __initconst = {
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
