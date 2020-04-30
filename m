Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C5A1BF2D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dwO0103mMIHqTcg3dzUoQK51StaoCMXg3yiHQfPfbvw=; b=qX2YbDg8tm1jsl
	dJZllCHNWFtGFX70FU0PxatrCI2yMjYZV2vrhocMum4Dkh8MEl+hFwbfLR60Uc4tuyGxPvT+TmaOx
	Q8I2a6YmDFPGJpZcUhobyPkoZZjZYuXMffyhPvc31I68PH4U95dfZHAPCuQHNr3LA/1S6iPeQrN3p
	+YMXwUrduSa8i2rG5+3Vy1dR/5gSLVw9ac1gQm3VtJ+8grDA5AIZm9iGgoR/gncOjT1pbo+TRYmk2
	q/PtY2KveyXzWyaRHqw2zNGpnUBfyN5D/XveOKuXFO+MqPiPSkoPe0RHIaFdzw2em5R6b4oX1d7c4
	y0UQY1KU7g6ltwSeqx0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4aU-0002Ar-Gu; Thu, 30 Apr 2020 08:30:30 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4aE-00028B-FR; Thu, 30 Apr 2020 08:30:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588235414; x=1619771414;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oVpdg/wx+Nvu2QCAx9UYgdpiWP7Xc7XEdDIjCIlKXhQ=;
 b=hAdKspriFQn9SHOb+ykrvNhPlSGZ6UiiHGxLB+aVsDDCAw3UgHfFRax1
 A6ezUa8gQ0LaERzAnUQeani5hyU7BK5lLONoHn8TDmp4AeKpiRNegy3LW
 NLwmyI5PvIjAo/QuDHDgSyq7gQQ/jLu/DMiJQCyLnJRnGzXMHDecGPKH+
 lOndMHFi+7IY1REhD3iPkKUukzWH9BYAwWSBjSX/WKEUtaYFGegncybAE
 QEHQ+hkpR024sNrpahriFZtm8YX99b7QPASM4LiOBZxNRE6zxvsIXmKjD
 p2NqR8rfuBVJ7qa3z9VMtJ4w3EorSzP4DuigR4VbukohGg3dO9aW25YTP w==;
IronPort-SDR: CLB6CoY1MejbSeSV255aIdD3BHyUH8IQZrmGBt+R1pKoBWhNRYuoSZ6hpQNGdug+y5CwvFEBaw
 rpNCqJPPpTCzjCARhFmJAvJ15imyQckJV5H9pe7Ddk2q3vN8gWMukX+qtvD/9pppT9fN7+V/3u
 u9k2MG8CsDgFR+3hlCaU6hAgcZVFTza6QQ9JWgGYPUp5ou+Z2RLp9WqFtkovLpInQeMp7ZYo45
 wJC+xGL4fl5/UapSL3HkG7cHjylKGiUCEF/c2QpPHP8Zf4sFyBzYyA3OpVrgbJ/RUqacurXHPn
 wb8=
X-IronPort-AV: E=Sophos;i="5.73,334,1583164800"; d="scan'208";a="136549215"
Received: from mail-mw2nam12lp2043.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.43])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2020 16:30:11 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AuaforvADCasWLh/ZgfxJ7V+wNAFl46JjyOy+XxFmpnIUGEmACM5d5412Zu7mI6ZHRCBoPt/S2BAWdVzfdU93dFLkDbOfAIKSzwfn6Yw7FAFBvXT+Pt9555rHqQ8cxc7cpIJ3TVsXFtkxPAxMGyfyDRYUxdlNbY6sHjnF+GWd9oo7wR/EU5rs72mIqbDIhU3/Z2NBTY+q62q5uY2D7xTqnJacQd20NvlXjvPyhtaxsxFBjCa7yq4HpTZGw5WQVehQsteULc0ueeeeW6ndoh+aZlumoUrlDXQECT2HizwHx82I/cuorgzLuw/tl2URoNU2srpHd+lFcYY8fNWhyg+qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WMJ5fGI/5e2a6Oc8yvBo0YAsguyDt/IJdxxElZUxaaU=;
 b=XfbKHvlGIH/k4pTUtAW1b9MRwtVxpeWa77knKZSJP45oimOeyvbUF5NoHEKwNZYQ21LiDTbgjs3P9Ev/tuLxKoortvvuwYaoyhEln2NCLDKzmSxRo7j+JbDmQnEYLB9q/OfRHrw4XabwJmx+njgSFYlo0qz4wLwNeKMCMFoSlq4ffODllKlr50awFRgTeprhC2DjBLcl5RLCyHhLlMVWhKJrNpluhtOv0Uzdpe+4C0gBUKh7JJ8Ay536zNmV+kDlMQ3INFAmnGXkeExbZlhwq3803i+dOLViBwWZ/hb+pJgVTp4r4limujLOSWBDAE+08oea/FGZw51tPDHoKPBXlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WMJ5fGI/5e2a6Oc8yvBo0YAsguyDt/IJdxxElZUxaaU=;
 b=xkmePLoCXW88+jNPEXZ0+NYgS1wEyIs7n810ZQV/XnCdtfPMZEYbIhD4GvzhGbs2dz34pUNnkaNIMTl1XCMykhGkT95MFXzF1h5DRYhCncRyxW0TKJfTdsN2xkfcEkRIRTv8NJN+T6y3E/oxsKMV7tMIFFV60A8uyclsXtD2+2Y=
Received: from BYAPR04MB4629.namprd04.prod.outlook.com (2603:10b6:a03:14::14)
 by BYAPR04MB5479.namprd04.prod.outlook.com (2603:10b6:a03:e4::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 30 Apr
 2020 08:30:10 +0000
Received: from BYAPR04MB4629.namprd04.prod.outlook.com
 ([fe80::75ba:5d7d:364c:5ae1]) by BYAPR04MB4629.namprd04.prod.outlook.com
 ([fe80::75ba:5d7d:364c:5ae1%6]) with mapi id 15.20.2958.019; Thu, 30 Apr 2020
 08:30:10 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v2 3/5] scsi: ufs: add LU Dedicated buffer mode support
 for WriteBooster
Thread-Topic: [PATCH v2 3/5] scsi: ufs: add LU Dedicated buffer mode support
 for WriteBooster
Thread-Index: AQHWHi4FlIkQZ2baIkef+pv5Sc/dHqiRVdPw
Date: Thu, 30 Apr 2020 08:30:08 +0000
Message-ID: <BYAPR04MB462991CBE166B51BFAF2E6B3FCAA0@BYAPR04MB4629.namprd04.prod.outlook.com>
References: <20200429135610.23750-1-stanley.chu@mediatek.com>
 <20200429135610.23750-4-stanley.chu@mediatek.com>
In-Reply-To: <20200429135610.23750-4-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a36fa33d-f75b-42be-5efa-08d7ece0b20d
x-ms-traffictypediagnostic: BYAPR04MB5479:
x-microsoft-antispam-prvs: <BYAPR04MB5479BA1FD0465E5B0493B4FEFCAA0@BYAPR04MB5479.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:298;
x-forefront-prvs: 0389EDA07F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1cQLY+bET6fmeU7rF2MTLnJfiZc1bwmdqJ/NN79/esly29XD1k/yyyYc2hJGXOb+KLk47oIKfTL/vBXrrMTuLTkjsJoTUKZDEWEUR9bvEGxm+xYhILmt29J5fZnb4avF+jZS/cmFyTE9MiSU2gWaOzhawVr6Acv9O4VNqzBjrwozDEenpRT672BsUWdY2FEj4R6dA+Y4iduqXxjdL/yaeBFs/G8XZyGSGOeL2KZgZYwYaD+8Nn1suxtxTIB+XbGZUACK/YFaqhe2KDjzFKNg2WHX1mu91WHQBEC3VDp+Xpet2ny9axOpURImDUz4waSDTY22hckx5YHvefJe3CfH6sCnCckS0KdxQwjJ7nwRgnL6gp46/wKbLcMc4VgzMY92ADazSpaEO7WyEPfGNtSH95hHqWTQeOOic9XnAnGKi1Ul5VqoIRkzrG5yDKDYBxmZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR04MB4629.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(366004)(346002)(39860400002)(396003)(7416002)(5660300002)(316002)(86362001)(478600001)(6506007)(71200400001)(54906003)(186003)(7696005)(26005)(110136005)(2906002)(4326008)(66946007)(8936002)(76116006)(66476007)(55016002)(64756008)(66446008)(66556008)(33656002)(8676002)(52536014)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: pArTEOo/dNlKWEYilW9jj/HOvn/jSLoxAC4ep61+3A2AHAWmd3Dpy4KpOthIGitz0vLHX76HWonfTt1ujf2K17PPrhuCHDy6E3lx1T3Pv9v1YJ3pIsCLpx7Js+edKw0XBswGTrm0R3KNyHLJB5tXpzeJGtu3uiD4N+/XHaucUZgq8/KoooUjzwZ7I6BTNE/DkElSk5tj5VqStLL3sl9Z8TyzgWZ5iuSi/d9SOeKg/20NY6fN4gq8Ndc0Qt4jekK356OJ2dCfJ+wQwRcLIH8r7m9sygDOpIwwEUF/6JvV++HwuQ6XS+MCjVnL+akpBO3xf7ca/8J6M6htNq041sD8VbKw0v0nt+Thu/kCBHQp3YJdOdSgI5UthF1m1OuBurdUjNv9f2ndB8qz5tj94CiGkniQsDFXzP/C184b482Kuj4PVe2BZbUFqos1rqNu85rYSiEtR7qHgLNaIXDHclfkhx5aeqPPpbuiB22HQ+87tvXLJQu/06Y9X7aSJuAM2bp/hXGBLfIudW1J5FFUmJu61qT0CV3dY5452UbUj8KZJHEcdk76SHeds67C9T1FdROghBd1x8c7NwRxmDXU0YsKiD9baihc1lZYYud5YHhmWcftT/DxUXx86+B9Y0ANEqKwiKGcRfNzO1WXuCSASIZSyE2V22OoebHWyIall4/N7wGAbGxwAfagUOVhIHS/7EK03nY8W/xZej9FWTXd4uUUgCXYWR3vDsb/DF07pj6+tL2R9umt1KRsYWaRQj+3KBroa5UY8CaOAhY5q+LbPjpK4tn9SWcxxO9uY8NIltazHp0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a36fa33d-f75b-42be-5efa-08d7ece0b20d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 08:30:09.8545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g3hwngfnP7bpNhsRpqHLulqD52LygxPy51xdB45NQv0T9Y/F7+kaSFUpyfPLwML+v+188LA8NaDAP2Fj9BDc3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5479
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_013014_685370_D4FDC279 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
>  static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
>  {
> +       int ret;
> +       u8 lun;
> +       u32 d_lu_wb_buf_alloc = 0;
> +
>         if (hba->desc_size.dev_desc <=
> DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP)
>                 goto wb_disabled;
> 
> @@ -6821,15 +6842,35 @@ static void ufshcd_wb_probe(struct ufs_hba
> *hba, u8 *desc_buf)
>         hba->dev_info.b_wb_buffer_type =
>                 desc_buf[DEVICE_DESC_PARAM_WB_TYPE];
> 
> -       hba->dev_info.d_wb_alloc_units =
> -               get_unaligned_be32(desc_buf +
> -                                  DEVICE_DESC_PARAM_WB_SHARED_ALLOC_UNITS);
>         hba->dev_info.b_presrv_uspc_en =
>                 desc_buf[DEVICE_DESC_PARAM_WB_PRESRV_USRSPC_EN];
> 
> -       if (!(hba->dev_info.b_wb_buffer_type &&
> -             hba->dev_info.d_wb_alloc_units))
> -               goto wb_disabled;
> +       if (hba->dev_info.b_wb_buffer_type == WB_BUF_MODE_SHARED) {
> +               hba->dev_info.d_wb_alloc_units =
> +               get_unaligned_be32(desc_buf +
> +                                  DEVICE_DESC_PARAM_WB_SHARED_ALLOC_UNITS);
> +               if (!hba->dev_info.d_wb_alloc_units)
> +                       goto wb_disabled;
> +       } else {
> +               for (lun = 0; lun < hba->dev_info.max_lu_supported; lun++) {
> +                       ret = ufshcd_read_unit_desc_param(hba,
> +                                       lun,
> +                                       UNIT_DESC_PARAM_WB_BUF_ALLOC_UNITS,
> +                                       (u8 *)&d_lu_wb_buf_alloc,
> +                                       sizeof(d_lu_wb_buf_alloc));
> +                       if (ret)
> +                               goto wb_disabled;
> +                       if (d_lu_wb_buf_alloc) {
> +                               hba->dev_info.wb_dedicated_lu = lun;
> +                               break;
Why are you allowing only a single WB lun?
You should allow those buffers for lun0..lun7

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
