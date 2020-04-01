Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF28A19A347
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 03:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MkU91yP6PzgRU3Z74WXtAvXoljVsxXI9YL2rdHJKdOo=; b=uLL8uIaRo0xV1l
	iYxhxkc8CM0gGzFPV6lvOXswsgJLi1zwAaVmaCcG8b6lh9Bxi+4iOuZ/uiYy2Fih4AcEi84yDxn6w
	PAU3sYwOu6P0FF9rmX5ACI3NCoKi7cBJ5J8hRO/rG1j4IQNLYoOlHcvuYYosdrcq8xLRTz5l1yn9B
	KH/RNE46EXGqw3gc2g4S4ZzKAwED4K4qQqdqoz3zE3xFk7X0yqXf9j+aY/mqOMM+edvQzsClflA+E
	bUb7WjKKUCyI50XPdjWlJE3gpJw3fVNJh0nstO/vFzqJ4qjVd4Z6TKjD3ZKCWitcOf6jeTlS+UE1c
	ekUvVSxJbkeweVQLtDhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJSA0-0007Dr-19; Wed, 01 Apr 2020 01:27:16 +0000
Received: from mail-am6eur05on2067.outbound.protection.outlook.com
 ([40.107.22.67] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJS9o-0007DF-Cl
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 01:27:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mpavwc1R/b2+3B7lb8ig2iCv5iSE4f1NSDKQgrLONpWTnbe+2FJU2qs9H6PerBWAFgHMz0QQ85LCb/idVaYAxDrz12FX46WCBKTe5OeAZyFZGDZNWEBxadFC4NWJhe+dnS54tN38Nme788zctPU0rXFQ/8YzcaXlY2ekYQnbKTcQCc89RH7QKYCoGiuSoWoxJsUcm5wfUa3IFoo12mjU6zyUI1r9mJPWcKY166RSwumTeheI5EAAtkLX7dbq1D2V2benQi4g9G636EV32U4iy9jvdWtlXi5T1pu+hhdf8FHZYsdOPwWuWjKKbAEQtLp0VNxmY1KbA3FuVo0OUhJ9nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9vA2uh24i0zwuZqHhKT9b1LHe0KC6f6ABSJGKPU3j4=;
 b=M+GuyqIMtS/A3ETtsVCJlxyyvtsdjYXpp7r+ztHtU/9VV1Xp+dcgIyYy35Rpjgq7LB36xMWFAqo1wIeQV8S8h8ETX3jeQ5UgkLBpHFS18wuz4znsV5fksDU0kd1q6cneQaumrjVgf5lERPe+tIyAYYuk0O44nJa37fu1mKSP5mKW669beIImx5czANGXDKVaZVSzraW8EbdofrqqxGv3/fqAMnrGmfkhlEZJNL4+zyb37PXMbqhU8On4XPMfXx7/sskvbjMdeuTocKQWfy/nS3nDlV9kBih4rhPchbvpo0tDdhBwBrayBwyA7TXD49EJazFsvI5/wGTTyM8Gf0NpXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9vA2uh24i0zwuZqHhKT9b1LHe0KC6f6ABSJGKPU3j4=;
 b=UNAwPc+wvZu2t24c4hkCwmRe4qfBoKcMVb7zGnc7KoVJSPhyy3zui07WdMB8XiZsvk/gwH+Prz6n4lqLpv6tdHKHf7nQ6NAmM5va/q6wpLpmFwuDqqDNavvGgih6nwZnd91rYu5JN8FKMkpIk2lrgb9JdPCRCoFRTb5KNeE15WQ=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5363.eurprd04.prod.outlook.com (20.178.114.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Wed, 1 Apr 2020 01:12:37 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 01:12:37 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: RE: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
Thread-Topic: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
Thread-Index: AQHWBFX27nJMU2DyaUm7ucC0dRZvA6hje9AQ
Date: Wed, 1 Apr 2020 01:12:37 +0000
Message-ID: <AM0PR04MB4481562E2A31386752F92C4488C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 689cf461-4d5a-4ef8-6ec9-08d7d5d9c43b
x-ms-traffictypediagnostic: AM0PR04MB5363:|AM0PR04MB5363:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5363CAA0925C47F6F8DE4EA988C90@AM0PR04MB5363.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03607C04F0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(376002)(39860400002)(396003)(66556008)(55016002)(66476007)(66946007)(81156014)(8936002)(86362001)(4326008)(76116006)(7696005)(81166006)(66446008)(64756008)(9686003)(478600001)(8676002)(6506007)(33656002)(54906003)(316002)(2906002)(186003)(52536014)(26005)(71200400001)(5660300002)(110136005)(44832011);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0xS5eu5cv3eUzrSiZh44f8kCjfa+fQtmCBkcb/E7cUzq99VR6/xs0E5UxXK0lQWrkp2Tp+5hxOa8Czlt4BLSzxM7hW6+ZsyTcFk4TEWYoyZyrSnel9dSc0ZI5Fag2mcvs1ukmJyZd+1ECMgCkIvC/++nA24ltU5ySzezZnff+YTH9Z6WraZr38nxo+Uodgf9vxb2i21w8/LV40DGMGa51nSFueTXQtjmgUSe0i7hfrFgFf3On7gkeCimPmCjZU8ECjCIfpeBlImRGCFOMp6zwaWpJ+zYUWf6aF07yFNtLu9F2PNNgA/PynjzbeTZTCsmERpoMhgUJ6Ho84EME57yr3RpaOPiqmiKgw2vNhj8s2MholuZlvmgIN0JdQdbFec0YE5Bs5fjVH14gwZztjuqjQQEtz5jk01ldgqmzcqvN6unie/YxkNlOqiK5ZchKocX
x-ms-exchange-antispam-messagedata: QoTexNhzkvZ5tq6cAX51Na7eZnPDcD3eIItK0VkluMvzE6gsN+Kv29q+8Jj0v4FGyx054mEddLw6qE6wE7rjdCAVzxbfz6ZjhQuoHFPueRZnJX4F8CfIt86zaKyaWjmfsB2y4NekU5QmltHW51SqJg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 689cf461-4d5a-4ef8-6ec9-08d7d5d9c43b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 01:12:37.2313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GJRDfPnyJppKBmJGs2t0GgFyQMWXdtf5wX2trprjP9xTbz5ONvvyXS/24wFmE+XZTEEUFMnAqP9NDF+yKfYWuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5363
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_182704_434724_265495B5 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.67 listed in wl.mailspike.net]
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

Hi Sudeep,

> Subject: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
> 
> In order to support multiple SMC/HVC transport channels with associated
> shared memory, 

Does this mean each channel will have its own shared memory? Or
All channels share the same shared memory?

it is better to maintain the mutex per channel instead of
> existing global one.

If all channels shared the same memory, use per channel mutex lock
will not be able to prevent other channels accessing shared memory
at the same time.  

Thanks,
Peng.
> 
> Move the smc_mutex into the scmi_smc structure and also rename it to
> shmem_lock which is more appropriate for it's use.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
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
