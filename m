Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5015C29A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 20:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3TJnAG+n0hFQuK3+LnTivMy5SVpma0YCfZRgmUZqxg=; b=tljh2wnp+B976k
	IZjeki7N0vY98kyTmmX7m4oetW/DlNWndRl6ea2DeB5p/8dAXEfu//8PvhRr701zTdzs6V6gaXnhq
	38m+jX51CDSQjZyznrDolKDBLxDRpVbX9g/cS88iqDqThJ4WOZGcKfGAokAd2F8raKsvty+ByPJkc
	Mxxs2jj269MN6xHyNON+sqavC2uaMgayE22+ubHo+ovK5o6Q0CXoEdSHK6BbR9TCprDvfM9GSOuCX
	kpcDytz6nVhgJdPaU96ooJkEGDXeTWMUxRR9Y1rZ/HlOJ62wz7PCicqgTGS8Dq40EHRP3X/LaNaIE
	radSgNKA3u6+q5RaqpBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi0hE-0002rv-As; Mon, 01 Jul 2019 18:06:32 +0000
Received: from mail-eopbgr700064.outbound.protection.outlook.com
 ([40.107.70.64] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi0h6-0002rC-W6; Mon, 01 Jul 2019 18:06:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A0GErOmXWvzZBnCzwVTs8ZusGUhRN06T0PRYmCTIm1o=;
 b=ny3tuhDW2/vwmiWWxY4oFGwJh/kMPU/7MT0GLNRWt4i8u+hRdqm8oR1VNHOCsfYybyslAEBBp3ksRW3WsQdPBxyknWcO0HxGd+r7BOSV7tw198DytbAueY0zmH6Hx6ogUy4cb/efQDiYAJ5rv2mlFVdR/4W2UTGvfnKeeziEl0E=
Received: from BYAPR02MB5992.namprd02.prod.outlook.com (20.179.89.80) by
 BYAPR02MB5925.namprd02.prod.outlook.com (20.179.88.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.17; Mon, 1 Jul 2019 18:06:19 +0000
Received: from BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::7d51:4070:6fa5:ad63]) by BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::7d51:4070:6fa5:ad63%6]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 18:06:19 +0000
From: Jolly Shah <JOLLYS@xilinx.com>
To: Manish Narani <MNARANI@xilinx.com>, "ulf.hansson@linaro.org"
 <ulf.hansson@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "heiko@sntech.de"
 <heiko@sntech.de>, Michal Simek <michals@xilinx.com>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "christoph.muellner@theobroma-systems.com"
 <christoph.muellner@theobroma-systems.com>,
 "philipp.tomsich@theobroma-systems.com"
 <philipp.tomsich@theobroma-systems.com>, "viresh.kumar@linaro.org"
 <viresh.kumar@linaro.org>, "scott.branden@broadcom.com"
 <scott.branden@broadcom.com>, "ayaka@soulik.info" <ayaka@soulik.info>,
 "kernel@esmil.dk" <kernel@esmil.dk>, "tony.xie@rock-chips.com"
 <tony.xie@rock-chips.com>, Rajan Vaja <RAJANV@xilinx.com>, Nava kishore Manne
 <navam@xilinx.com>, "mdf@kernel.org" <mdf@kernel.org>, Manish Narani
 <MNARANI@xilinx.com>, "olof@lixom.net" <olof@lixom.net>
Subject: RE: [PATCH v2 09/11] firmware: xilinx: Add SDIO Tap Delay APIs
Thread-Topic: [PATCH v2 09/11] firmware: xilinx: Add SDIO Tap Delay APIs
Thread-Index: AQHVL84JY2ud08ZOekGksOuZgwbNtaa2D3KQ
Date: Mon, 1 Jul 2019 18:06:19 +0000
Message-ID: <BYAPR02MB599224BA6280EDF56870E1D8B8F90@BYAPR02MB5992.namprd02.prod.outlook.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <1561958991-21935-10-git-send-email-manish.narani@xilinx.com>
In-Reply-To: <1561958991-21935-10-git-send-email-manish.narani@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=JOLLYS@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab625af0-dafc-46da-7bad-08d6fe4ed178
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR02MB5925; 
x-ms-traffictypediagnostic: BYAPR02MB5925:
x-microsoft-antispam-prvs: <BYAPR02MB592513AE55DD28A437424BCBB8F90@BYAPR02MB5925.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(346002)(39860400002)(396003)(199004)(189003)(13464003)(73956011)(68736007)(316002)(14454004)(86362001)(446003)(14444005)(66946007)(2201001)(6246003)(76116006)(256004)(66476007)(66446008)(64756008)(66556008)(7696005)(71190400001)(486006)(66066001)(102836004)(476003)(11346002)(74316002)(305945005)(53546011)(81156014)(81166006)(6506007)(7736002)(2906002)(52536014)(8676002)(478600001)(99286004)(33656002)(229853002)(7416002)(53936002)(76176011)(186003)(5660300002)(55016002)(9686003)(26005)(4326008)(3846002)(2501003)(25786009)(6116002)(6436002)(8936002)(54906003)(110136005)(71200400001)(72206003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5925;
 H:BYAPR02MB5992.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4njsNdeEFYZIs3xM5jaOMl2Q0bqnmGl7nohzZQeljFBW9B+GMSlr+lMTwjjMRSC4MPm/2xFwnzr/nsZC3EmPDHVvRGrT2E/Eyu/80LpnCmVih47yUyv+ZhKlcOcgwn5QtKz7filXzUjwQtM/NdKP6b/yxyxvfXfgpKkh6mY2PCouIj/IGfkCa8BZqnfcxv94AJOAdPrs90hIc3zsiADhdCfqxewzoFJ+KSiHd8Wek1qzP+3VuuK9pXVR7nJCfrV33u/AU+SzW7qmzZnfmzH6hGS/gHCkZJPCHmP0dJJcI15HUMw6ZKkwPbcXdURc45qy09XAcCs9wP3DuB+SOzfHPR6jCR6n43mz9lpTEfDgHxE3JAYKfl5y3YwTqPk8QtL+vY5C0tQRjo/IL7evfBtEKXG4v2pB1+/9DozD64DNdsk=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab625af0-dafc-46da-7bad-08d6fe4ed178
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 18:06:19.0874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jollys@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5925
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_110625_091360_DA274680 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manish,

> -----Original Message-----
> From: Manish Narani <manish.narani@xilinx.com>
> Sent: Sunday, June 30, 2019 10:30 PM
> To: ulf.hansson@linaro.org; robh+dt@kernel.org; mark.rutland@arm.com;
> heiko@sntech.de; Michal Simek <michals@xilinx.com>;
> adrian.hunter@intel.com; christoph.muellner@theobroma-systems.com;
> philipp.tomsich@theobroma-systems.com; viresh.kumar@linaro.org;
> scott.branden@broadcom.com; ayaka@soulik.info; kernel@esmil.dk;
> tony.xie@rock-chips.com; Rajan Vaja <RAJANV@xilinx.com>; Jolly Shah
> <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>;
> mdf@kernel.org; Manish Narani <MNARANI@xilinx.com>; olof@lixom.net
> Cc: linux-mmc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> rockchip@lists.infradead.org
> Subject: [PATCH v2 09/11] firmware: xilinx: Add SDIO Tap Delay APIs
> 
> Add APIs for setting SDIO Tap Delays on ZynqMP platform.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  drivers/firmware/xilinx/zynqmp.c     | 48
> ++++++++++++++++++++++++++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h | 15 ++++++++++-
>  2 files changed, 62 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index fd3d837..b81f1be 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -664,6 +664,52 @@ static int zynqmp_pm_set_requirement(const u32
> node, const u32 capabilities,
>  				   qos, ack, NULL);
>  }
> 
> +/**
> + * zynqmp_pm_sdio_out_setphase() - PM call to set clock output delays for SD
> + * @device_id:		Device ID of the SD controller
> + * @tap_delay:		Tap Delay value for output clock
> + *
> + * This API function is to be used for setting the clock output delays for SD
> + * clock.
> + *
> + * Return: Returns status, either success or error+reason
> + */
> +static int zynqmp_pm_sdio_out_setphase(u32 device_id, u8 tap_delay)
> +{
> +	u32 node_id = (!device_id) ? NODE_SD_0 : NODE_SD_1;
> +	int ret;
> +
> +	ret = zynqmp_pm_ioctl(node_id, IOCTL_SET_SD_TAPDELAY,
> +			      PM_TAPDELAY_OUTPUT, tap_delay, NULL);
> +	if (ret)
> +		pr_err("Error setting Output Tap Delay\n");
> +
> +	return ret;
> +}
> +
> +/**
> + * zynqmp_pm_sdio_in_setphase() - PM call to set clock input delays for SD
> + * @device_id:		Device ID of the SD controller
> + * @tap_delay:		Tap Delay value for input clock
> + *
> + * This API function is to be used for setting the clock input delays for SD
> + * clock.
> + *
> + * Return: Returns status, either success or error+reason
> + */
> +static int zynqmp_pm_sdio_in_setphase(u32 device_id, u8 tap_delay)
> +{
> +	u32 node_id = (!device_id) ? NODE_SD_0 : NODE_SD_1;
> +	int ret;
> +
> +	ret = zynqmp_pm_ioctl(node_id, IOCTL_SET_SD_TAPDELAY,
> +			      PM_TAPDELAY_INPUT, tap_delay, NULL);
> +	if (ret)
> +		pr_err("Error setting Input Tap Delay\n");
> +
> +	return ret;
> +}
> +
>  static const struct zynqmp_eemi_ops eemi_ops = {
>  	.get_api_version = zynqmp_pm_get_api_version,
>  	.get_chipid = zynqmp_pm_get_chipid,
> @@ -687,6 +733,8 @@ static const struct zynqmp_eemi_ops eemi_ops = {
>  	.set_requirement = zynqmp_pm_set_requirement,
>  	.fpga_load = zynqmp_pm_fpga_load,
>  	.fpga_get_status = zynqmp_pm_fpga_get_status,
> +	.sdio_out_setphase = zynqmp_pm_sdio_out_setphase,
> +	.sdio_in_setphase = zynqmp_pm_sdio_in_setphase,

Are these eemi APIs? You are using ioctl eemi api to set the delay.

Thanks,
Jolly Shah

>  };
> 
>  /**
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-
> zynqmp.h
> index 1262ea6..d9b53e5 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -92,7 +92,8 @@ enum pm_ret_status {
>  };
> 
>  enum pm_ioctl_id {
> -	IOCTL_SET_PLL_FRAC_MODE = 8,
> +	IOCTL_SET_SD_TAPDELAY = 7,
> +	IOCTL_SET_PLL_FRAC_MODE,
>  	IOCTL_GET_PLL_FRAC_MODE,
>  	IOCTL_SET_PLL_FRAC_DATA,
>  	IOCTL_GET_PLL_FRAC_DATA,
> @@ -251,6 +252,16 @@ enum zynqmp_pm_request_ack {
>  	ZYNQMP_PM_REQUEST_ACK_NON_BLOCKING,
>  };
> 
> +enum pm_node_id {
> +	NODE_SD_0 = 39,
> +	NODE_SD_1,
> +};
> +
> +enum tap_delay_type {
> +	PM_TAPDELAY_INPUT = 0,
> +	PM_TAPDELAY_OUTPUT,
> +};
> +
>  /**
>   * struct zynqmp_pm_query_data - PM query data
>   * @qid:	query ID
> @@ -295,6 +306,8 @@ struct zynqmp_eemi_ops {
>  			       const u32 capabilities,
>  			       const u32 qos,
>  			       const enum zynqmp_pm_request_ack ack);
> +	int (*sdio_out_setphase)(u32 device_id, u8 tap_delay);
> +	int (*sdio_in_setphase)(u32 device_id, u8 tap_delay);
>  };
> 
>  int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
> --
> 2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
