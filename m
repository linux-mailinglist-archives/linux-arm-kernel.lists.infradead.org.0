Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1581E9608
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 09:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VghD5T2mkxqxuVN6xn1PHeLO2nyhYepDC21YOhAPojY=; b=e7JyeFztINCeW7
	3W5LQd6l06zmuJ5kjo1TvONXGCnIJAolOy3/ZAr9kLCSpbKBdljC9gyjmURl4MgNScT2EQjvRUxkL
	PGWdYvmqvCpXclG2/bcHd+VvtA6rAeZ7cNUfTJZdSJy87JxZ4NQRPalRgu1d8Ns/l26ToRddYuxzy
	f6LNRxZRewfIdVatFv8sGx3683DNEpj42V6gT+M/0OWSqlvzVxEAbqgKrU8yMRu4x8CBVg/38a43f
	mnhX/EzprT7mt3YUD1VycTKB+W1Hcy3PuXeFAEG2QVjhvfEb9e/dc0SZsooW7J8tluiZ0XgdN0Isa
	4KH/t7O+u3iscgFfYTGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfI7G-0000nm-Vm; Sun, 31 May 2020 07:10:43 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfI78-0000mm-BQ; Sun, 31 May 2020 07:10:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590909034; x=1622445034;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fG0JEIqXnV4y9i65wTBe4BIVP3DkW9SRn4rn99xTo84=;
 b=iqwy57cvOCMxP0gaKPxqvqi1khN6L+PdP9oxnAHCqryfRD7xX0G2Xnzn
 vTwfoBOWJAAJjy6k3Xk8mGM8wfAdMb/HD216+JelMyXVaKj75TUS9NOQi
 GjMWFBYZssDC1d0C4PdNoWHQQbnZBhKcsuNy9IXwG1BWDYsozPqIFiKvn
 0G+z5q3l2ESfNBfL7ShX7kLbyoe1jjZjsWjqWWlxpAwV9t/MTTXrj9Uw7
 YW8HKaaQY4d1oP+aiZpqVno+bXjPBE5HXHL7TTdYjp6H4zjC2alu9Z6MJ
 pCm2zA27Al7oZUTkVyIuQkx4ICed1AUmGBH8LhaNwRykgCNiqZZ+KRcW9 Q==;
IronPort-SDR: XJjxKy93/8U+s3QHfR4OYzyPFoBcuZ+h9h+vFmoXVlf9p/jY24q+QSGh7vtw8Ct1JTR5VfqcA9
 0kopqxfJmuJG/3SKoqqoiWTmd4BGTk/WOP0rIMZS2l8oh9VW4VLx1NVhZ2I9/qZuLLsRBzj2wi
 BTBrgoI2j3YWkGv4us5Nf+i6b25S3hbSdfZSynnNYlqr0UJT6mBGddu7rLWgbews/M3ycsCxKi
 4Rk1rYYSEFfo8xi/vH7zDFo+lGNMRqYztM5pS1b/NDAWgp1nphpepzSd+Y9bOQmTxWhUfQRMQC
 uA8=
X-IronPort-AV: E=Sophos;i="5.73,455,1583164800"; d="scan'208";a="143207807"
Received: from mail-dm6nam11lp2175.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.175])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2020 15:10:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TI5b/L5PsKcsBOCoiefuCR5zPFUHKuWutd0uOn+a8PeHuAKzCKCT+lxWrfQEgxb+L7fNMY2d2Pz4GxBEZLUBuffY+doY0uNJAMMZHgxkjLJ64aYZk/Ur3fbmq0mfKrGRQrEscPTTTjQisVUYT2qq455Hcnuf8/36YOfGPm+saPs0u9Qaisn8cLcj9WSajLcuDIAcrQL1RbSEl89Xr004y5ULfnKM7FXkdvyJOc7lYHLpnkxBPCCGXdXWIdiYF4COwkfHM/yuyNT6M4Dl/QZv17KaP+Q0DeJM62PUWK6iWcXMqxNGeZecROBWy0f0EMWQJMXCq8D08gpyI6x5JlZ5Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kDsm991YBM5V6T+/nY1mlYwBIeM8ixosoK0GhYvrE0M=;
 b=U9VYRdFtomgwZ4xv7XgR3RrlhVMU5hRFx8Ed60ZcT7s7EH6bzjSdPMKTGKRx9o4cU4pBhHSDkmcFPx3pzgBQdbxA2qvPU2QmDlUV3CZJcp7NpZ5YeM+dcBE7CG69+PdDdCXgeroB006VOPsg3sERw4j5FjjWrt6UFko2lQjUJtqtanGj8htsm39iP3k1OZ0jVdEIe8HRNS9c9oC9M6ssvvVtlnMAM+x9H21FqSK+BvKjp6LhPfYiUkoEK2V/A2j9g5xADZi5q42NwghNpnXuqe/R1mFYhrVKN6SqW5m3M2VDf00krVSh486/nbZpXKiCw/4UoeL/YxuKw0HcNdEYJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kDsm991YBM5V6T+/nY1mlYwBIeM8ixosoK0GhYvrE0M=;
 b=aQ5f3tsdgub5hA8Pkql40/exgtxxvWj2GNUyfzOp48lffvP09/G5ledPe8RyIo+SYF5IlxRkwWBjlJo2NF0/MsBuNimtaBPnGRfZuzOI1cVPlGXPn86J4EMpZldjhTFGVCXsQn9bTMW16jdtj8uMECiLjEPdhEnJ9VazVEEJuuY=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4960.namprd04.prod.outlook.com (2603:10b6:805:98::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Sun, 31 May
 2020 07:10:23 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.3045.022; Sun, 31 May 2020
 07:10:23 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>
Subject: RE: [PATCH v2 1/5] scsi: ufs-mediatek: Fix imprecise waiting time for
 ref-clk control
Thread-Topic: [PATCH v2 1/5] scsi: ufs-mediatek: Fix imprecise waiting time
 for ref-clk control
Thread-Index: AQHWNZrO/+hW/sT/fkuA3Q4XuyNplKjByVwQ
Date: Sun, 31 May 2020 07:10:23 +0000
Message-ID: <SN6PR04MB464015BDF84DF7A9779BEB41FC8D0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200529092310.1106-1-stanley.chu@mediatek.com>
 <20200529092310.1106-2-stanley.chu@mediatek.com>
In-Reply-To: <20200529092310.1106-2-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4dcef128-856b-40b5-c5d1-08d80531b000
x-ms-traffictypediagnostic: SN6PR04MB4960:
x-microsoft-antispam-prvs: <SN6PR04MB49607C408C43D7E830FC9217FC8D0@SN6PR04MB4960.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0420213CCD
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /+tI1TaDy5PDCJlBW+NWsqLw4ZAkXTWcJE6vWif7TAgHxtnQjgXt9ZoEB0imLj6nZp9d43BcMVGW8MvWOjy5q+AYPxH83W+z0chv5UdqZhSC/nfnQvmsnMH/M1Nv4tz1Ons0GG+5YmARvYeEcE2QbPIkV9LXL6jK7OsK0c4X8yXfPgXr7TotrJJs4yKMuDo+kxk0jvp/xotS1SyCffSH8iyeKKUfaxUsFoyFiizdU3WXTdwLEmLK0WJJwU2gJLWuuOqolVv3eIU0Wjoz7pgCnniab0YrvWnMOqpNcraiM6uYogxD0x2uYVGmozX1Sorf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(396003)(376002)(346002)(136003)(478600001)(4326008)(8936002)(2906002)(186003)(33656002)(83380400001)(7416002)(54906003)(110136005)(26005)(86362001)(316002)(66556008)(6506007)(7696005)(66446008)(8676002)(64756008)(52536014)(76116006)(71200400001)(5660300002)(55016002)(9686003)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: gJ1Ag+p1/IyicQn8bNSp7Cu2mT2JJy/Y/du03DZ1v4eLbBW3Hq9KmjrIQbqvlsu/NrKRbywVSctwO8h7TwtqmlhvaWMJNsYNpOx+DjoSeIAJlM0QJ2cla5/oVg8isC5yDG4XF5hBW1zwPK2M6G+DC7tKdKlfKY/Zv3L6Bg74fsmhz644TjJOc/CFwNp/P/jq2LZ/f5WP8Af40TbC8FIPpV/No60jzWuX7z8RYSURrKTiw2/CuND2qqtMWwTMCnB2a5AQopO3SiX0DOCYwrXP5iFWi0HAX1H1eENvfj0AbYTviuBblg2nKTjCfq/1aKQVNELZPSdFnfbOmb4y821+k1uEJsE6+fIqTUJzo19W0brxqSVVD/Iw+ln73ZU/bSGa0Ap6F7E1fxR9mdl7nHD+2HHLREseKcB3ZFQSnZL2W7zLIC8BsZklK6ssnEHKAvLXXGa/Md4HoeyKg3fPAWZKhR265yeFF0ro1aDjx1qNacc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dcef128-856b-40b5-c5d1-08d80531b000
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2020 07:10:23.5663 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AtPQ7jNFvbtqPlu22JJcyQsyM2SHFu88wMCZzkss7H9SDsjyBNOwmQXDJh+iqa+lMZaDj2y8TpyO/G/LJsLnWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_001034_432482_6890B009 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "pengshun.zhao@mediatek.com" <pengshun.zhao@mediatek.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "cc.chou@mediatek.com" <cc.chou@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "chaotian.jing@mediatek.com" <chaotian.jing@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> 
> Currently ref-clk control timeout is implemented by Jiffies. However
> jiffies is not accurate enough thus "false timeout" may happen.
> 
> Use more accurate delay mechanism instead, for example, ktime.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> Reviewed-by: Andy Teng <andy.teng@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

> ---
>  drivers/scsi/ufs/ufs-mediatek.c | 7 ++++---
>  drivers/scsi/ufs/ufs-mediatek.h | 2 +-
>  2 files changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index d56ce8d97d4e..523ee5573921 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -120,7 +120,7 @@ static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba,
> bool on)
>  {
>         struct ufs_mtk_host *host = ufshcd_get_variant(hba);
>         struct arm_smccc_res res;
> -       unsigned long timeout;
> +       ktime_t timeout, time_checked;
>         u32 value;
> 
>         if (host->ref_clk_enabled == on)
> @@ -135,8 +135,9 @@ static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba,
> bool on)
>         }
> 
>         /* Wait for ack */
> -       timeout = jiffies + msecs_to_jiffies(REFCLK_REQ_TIMEOUT_MS);
> +       timeout = ktime_add_us(ktime_get(), REFCLK_REQ_TIMEOUT_US);
>         do {
> +               time_checked = ktime_get();
>                 value = ufshcd_readl(hba, REG_UFS_REFCLK_CTRL);
> 
>                 /* Wait until ack bit equals to req bit */
> @@ -144,7 +145,7 @@ static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba,
> bool on)
>                         goto out;
> 
>                 usleep_range(100, 200);
> -       } while (time_before(jiffies, timeout));
> +       } while (ktime_before(time_checked, timeout));
Nit: you could get rid of time_checked if you would use ktime_compare(ktime_get(), timeout) > 0

Thanks,
Avri

> 
>         dev_err(hba->dev, "missing ack of refclk req, reg: 0x%x\n", value);
> 
> diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
> index 5bbd3e9cbae2..fc42dcbfd800 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.h
> +++ b/drivers/scsi/ufs/ufs-mediatek.h
> @@ -28,7 +28,7 @@
>  #define REFCLK_REQUEST              BIT(0)
>  #define REFCLK_ACK                  BIT(1)
> 
> -#define REFCLK_REQ_TIMEOUT_MS       3
> +#define REFCLK_REQ_TIMEOUT_US       3000
> 
>  /*
>   * Vendor specific pre-defined parameters
> --
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
