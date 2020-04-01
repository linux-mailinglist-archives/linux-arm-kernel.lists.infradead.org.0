Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4E919A86B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOYXR6YHL8GUeV73yWOvFXDJ6liax51bmJihXPyowss=; b=csHQrufmRnl+9a
	Y43en9uQjMOjngF4WAi36RXmn1b1eJVuRkBQEnV0qkxZU5v5BisOi9mrQxVqS8XCGO1MMttsAd7r/
	JHL1sbTZGKvB35Vd/xxwkzjeNqmU6a3gwHWzm23mJf7pkOiLT9zCz3BJsrGSyBUJSHfwfesztVKS1
	tXSXdphZHxUaxZOM7dykIqCU+k2m3hPM7mFEfpEgYm735OrOTqfd3OW74/bzzYBkrcHwXv0Htm6M6
	HlGfqKo4NZ0DSRte3tHTQpL8hqjpOUWWEtOTD4f+IE8RZw4yKbRcoFEz/Y85mIN+eWZq85AeVclbp
	MEMHHfCog1tQXHWuR81g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZT1-0006hb-K5; Wed, 01 Apr 2020 09:15:23 +0000
Received: from mail-eopbgr50080.outbound.protection.outlook.com ([40.107.5.80]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZSf-0005sO-PE
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:15:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qi/N1vgkLWwb14+uk/Akjw9WCc7/C233Aujxn10SGKd3tAAHEN0VlSQyLK2TLAicc1NYzy8/rSFJlhdEm+1lR9mAGvVlN/0vTSHHNqgPaUxX2Loz6Rbd3TWePH85K6u6KRNNFpxU3KOkMq0I4o2+vJIVBvLY82IVtnpMyNtzoP9d4OXF5CeLlDzVQiPSQ4bV/+MiPT62TgOz68ls6yyKMrcIR+2hvkPIvEyEs5lznwY5RrNhMCpjQXM7YAgz1uo/jRcvNCuTAi+RzzqwX+nLpkdZD/W7iMJtAi2p0kyxJ8pnyZyMdpLLs76AQ3Qw6G3fNzqDoeAGwsuu/deH3Ho7fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=34PtxPYZuL/fgtgYD3K4LX6UvbqcV4OJeuW4+Ro4pew=;
 b=f7xLquayGq+9usUMhZjuiNhEJPDrt0LXmJcG/hNmuNr8+8zqUjx8tMrkYOw7qr6XwNvXUrT2Ty7PUsVt1UIycvjwWG8CrnDHqYtsj8q+lnRdTbuR5wwZ/HaW6JZ7OmQd9BTLc8pnkB9crOp9pz9wNodqOIbCE4rI2RDqlgLys0HZwsqWyWYFEklWfkhxcyGLUs/BLAMBUqr8+XzrRoD4URBbQ+w+ZKw/4pyVAZSIs+I8hKF102QhB6VX9/wdX5KT5CpeCTSvIWG7+uoXE9qqTh7dGUYwZDmiaghv8NkeEC3oTDZHkI49Y5iHtM/ulzxgUbgDnJiSJQu3rFioRtG80A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=34PtxPYZuL/fgtgYD3K4LX6UvbqcV4OJeuW4+Ro4pew=;
 b=hQXkreA/R8KA3OBiPJDtTOM2OtGQpUG+gOqKWnHimWxgMDbcxQ5RNVh/V3YhYxzuZMClongVHmrDGajkJAdkeGw9s3R6sljxYNCYPyTVRb/WCUbSNHn42flb4zNsjrlnqrugEMw/9wkAc4y1U7xBYFUGtUAl5a1NWIAgr77k+hE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6324.eurprd04.prod.outlook.com (20.179.34.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.18; Wed, 1 Apr 2020 09:14:58 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 09:14:58 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: RE: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
Thread-Topic: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
Thread-Index: AQHWBFX27nJMU2DyaUm7ucC0dRZvA6hkA0GQ
Date: Wed, 1 Apr 2020 09:14:58 +0000
Message-ID: <AM0PR04MB44810BFD8448E450AD0D833F88C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
 <20200327163654.13389-2-sudeep.holla@arm.com>
In-Reply-To: <20200327163654.13389-2-sudeep.holla@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 33ed5842-52be-43ff-f4a6-08d7d61d26be
x-ms-traffictypediagnostic: AM0PR04MB6324:|AM0PR04MB6324:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB632431C27D3E6DB89B36BAFA88C90@AM0PR04MB6324.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 03607C04F0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(52536014)(26005)(5660300002)(66946007)(71200400001)(66446008)(4326008)(2906002)(33656002)(76116006)(186003)(316002)(8936002)(44832011)(86362001)(66556008)(7696005)(110136005)(54906003)(66476007)(81156014)(9686003)(55016002)(6506007)(478600001)(64756008)(81166006)(8676002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H5SYaxfGw6sm1pNUuZZ8vonm9p8SOchVIhW8UGLZ04IMTEmCgeuW7010EwKl/xCQsy7lngxWDqtYP2vzUIorKeLyz6T4/3pdGu8vEQ1qnWXZ29Z4zdL2wgAhT0vUk4LksWlxmztEarZnL3aZ7Cct2OpG4daDEl4iMlGpDg284YXDYdqTNXZ2RxzFJs43X102/3RFkfUPR1XnIEAnVgdCd9fbKIn1xSmWOzGWRZaBLtCGX6NPsWYDeeFkG71tIHihKTc9o4wBt0JltL3AFJmHql2CTZospA4WPpEbTnu7zVD9IZ7FLMD/+WvPZURt5dR+1qykWJudSwpI61/pXlz3k304nyDWwhvFPO//Ms1uuD5Rs0sXf318TMGCFJmNARq2eIr6jvHOo9xCEH7pXCYmJC99AMlDnuDW/BUvIepzZMMTv4FHI1OME1y7k29JYics
x-ms-exchange-antispam-messagedata: uZRQinW8RKmX0c2BhbMOLUzDzvNKVWX2aApra2w9WeC9TNgn8cmO7Ju0yea9OHAEe+1DzJcJ+yh+lIHh4MsLY69NRDXbV1fv2aOXp3uJ/OB/kWLC69xcMkX8MMsy0TZ5c2YHqseQadMNlv0piTdf8Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33ed5842-52be-43ff-f4a6-08d7d61d26be
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 09:14:58.7739 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mrR108zEi1uLqaeWWrmf3FKhW/N+WTobjo0ZTYC4tXa/EDZyhZt9wg5+teT76y0lyZDB6mRVEOps5tWv9orRtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6324
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_021501_880299_B1CCCA1A 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.80 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
> 
> In order to support multiple SMC/HVC transport channels with associated
> shared memory, it is better to maintain the mutex per channel instead of
> existing global one.
> 
> Move the smc_mutex into the scmi_smc structure and also rename it to
> shmem_lock which is more appropriate for it's use.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
>  drivers/firmware/arm_scmi/smc.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/smc.c
> b/drivers/firmware/arm_scmi/smc.c index 336168e40f49..6dc8a88cc91b
> 100644
> --- a/drivers/firmware/arm_scmi/smc.c
> +++ b/drivers/firmware/arm_scmi/smc.c
> @@ -27,11 +27,10 @@
>  struct scmi_smc {
>  	struct scmi_chan_info *cinfo;
>  	struct scmi_shared_mem __iomem *shmem;
> +	struct mutex shmem_lock;
>  	u32 func_id;
>  };
> 
> -static DEFINE_MUTEX(smc_mutex);
> -
>  static bool smc_chan_available(struct device *dev, int idx)  {
>  	return true;
> @@ -78,6 +77,7 @@ static int smc_chan_setup(struct scmi_chan_info *cinfo,
> struct device *dev,
> 
>  	scmi_info->func_id = func_id;
>  	scmi_info->cinfo = cinfo;
> +	mutex_init(&scmi_info->shmem_lock);
>  	cinfo->transport_info = scmi_info;
> 
>  	return 0;
> @@ -102,14 +102,14 @@ static int smc_send_message(struct
> scmi_chan_info *cinfo,
>  	struct scmi_smc *scmi_info = cinfo->transport_info;
>  	struct arm_smccc_res res;
> 
> -	mutex_lock(&smc_mutex);
> +	mutex_lock(&scmi_info->shmem_lock);
> 
>  	shmem_tx_prepare(scmi_info->shmem, xfer);
> 
>  	arm_smccc_1_1_invoke(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);
>  	scmi_rx_callback(scmi_info->cinfo,
> shmem_read_header(scmi_info->shmem));
> 
> -	mutex_unlock(&smc_mutex);
> +	mutex_unlock(&scmi_info->shmem_lock);
> 
>  	return res.a0;
>  }
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
