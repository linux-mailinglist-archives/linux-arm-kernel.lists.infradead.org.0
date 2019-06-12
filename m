Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB9E4238F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ak7DQGPLkTatQ5PPHicC90XPyMIKlCfwq1k1wV5m+kU=; b=HmtS6ymxcF+IbZ
	fvUCKRG55v4bQ5wVWHd7FtLhIhTfZ9kGs5tEWEZ+QU9ZRJbtgtI1jMCat4eiAXGecDZF0+YH748Wm
	SqYtC9zcc3M5pVlpwmNWTglJYpctEe8pC9wFJUELzD6f5KnSr3r6Zi5oSmRn8QEH+nty2ATc/+Fug
	fjiY/D4zvWSs7dnxnFg1eNNzXaHRftB8D8AhUyTcZoAXQgUnMwyvKH9VRPLAaqNOdqUM4jew+3qgn
	KpsWeWPVuYtQK/aasnjycKmsQobxGmti12VqJy7Q3lbyStQPBwvNbTo8YvIl6aroFiO5OlC1r1z31
	en79teFwbE8Y+miSswrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb19p-0004zI-MS; Wed, 12 Jun 2019 11:11:09 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb19d-0004xD-LM; Wed, 12 Jun 2019 11:10:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560337858; x=1591873858;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9C6nIktpk58mQRmm8zfZNQ7uCehIhtK/t7hhQxTYMHw=;
 b=ECsHVJRqfR4AT9KyQHsjeoY0sNHgPFYwnlm23rFaQmqqnwCJTPitYTWb
 h0BPCSyecydQN1hkMEj/GauEmCcFBF7F6VJlv7s9704p/8mpDHKRzzdGg
 srByV4O0nP1FaEf3m4DIR+ZzKvuZ5TnrauIO0/MTpsGnmwJRoUaerFbqS
 IaozUpfunOHkfzfc7J3sBOTs0PBEGUxWijF5xpong2ZLlebNuPj5mPTr+
 3wwsYg4jiTaGyJM3xqVt0vQd8MFu+irMZ4RAKlhsk6PsEn5p/SVyoulsA
 yH0XeeaJbyXtvovBTZyLvwOx2XCQqgK1w3CXLfESgnyahk6SwcnJLwi9g w==;
X-IronPort-AV: E=Sophos;i="5.63,365,1557158400"; d="scan'208";a="112021876"
Received: from mail-sn1nam02lp2058.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.58])
 by ob1.hgst.iphmx.com with ESMTP; 12 Jun 2019 19:10:51 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Rpl6Q+aF8kLDJ4LtRAXjIUXsVHZkf9URmOHSSGWIMI=;
 b=aMNpf06NYMKqToRFSpvwDJyKj5SWcHdwbUeKpACB39F+Si5SwO43bJ6pt0lcbX9f/0jNMUg+q4xLAL6lbk88GDPkOtM6iJuI2aJlqHflm9Boqk1w0J+n6f4HYfT13+E3IDqabaGHzPDh8YwAR2pFZzppDJ57LysLVeGpsJEVdbs=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB4080.namprd04.prod.outlook.com (52.135.82.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.13; Wed, 12 Jun 2019 11:10:49 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530%6]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 11:10:49 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v1] scsi: ufs: Avoid runtime suspend possibly being
 blocked forever
Thread-Topic: [PATCH v1] scsi: ufs: Avoid runtime suspend possibly being
 blocked forever
Thread-Index: AQHVIPJij1mAYSBJOESW3uchKAIpIaaX3D1Q
Date: Wed, 12 Jun 2019 11:10:49 +0000
Message-ID: <SN6PR04MB492546256F8F8635E7EE60C2FCEC0@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1560325326-1598-1-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1560325326-1598-1-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12e24cc3-2da4-43aa-48ac-08d6ef26a03d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4080; 
x-ms-traffictypediagnostic: SN6PR04MB4080:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB40809A3446AEDE13E777B343FCEC0@SN6PR04MB4080.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(39860400002)(346002)(366004)(396003)(199004)(189003)(316002)(2906002)(476003)(33656002)(229853002)(76176011)(15650500001)(11346002)(486006)(446003)(72206003)(7736002)(305945005)(74316002)(6246003)(6506007)(2501003)(3846002)(110136005)(102836004)(5660300002)(6116002)(64756008)(478600001)(66476007)(66446008)(14454004)(66556008)(6436002)(73956011)(2201001)(256004)(66946007)(55016002)(76116006)(25786009)(99286004)(8676002)(14444005)(186003)(7416002)(4326008)(81156014)(52536014)(8936002)(81166006)(54906003)(68736007)(7696005)(66066001)(26005)(53936002)(9686003)(86362001)(71190400001)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4080;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sfHRWHkjg7wmUSjFUIEQlvQXM9Lgy2h3ZWI8AMMON/CsT8oshw7paqCJejmLGRjy9N+q/TNQhAqpkYj5YKPvEdU+VPiEAmQe1djbaZdZjrTmbWD56GVdsQOrQW6LumzTImFp35JJFDoN0i2KntXcJww0/jq/yolMEIuooWeDQkjIr2NUM4q7Io6zHSscg8+GkF0Ud9RNlsj0UJGVYipWeNdjfx3fteMxG8nBz/ffAjs7nz94ulp6MVpSHqzq1PYr+r7YGGtT9yqY5VGPgrC2H2YTVNXHBmKERnAgakD61FguaddKcYK/Is/qoMvGmHXahDYER2VI7byyehtdpqNEyAOv2xXRxrq8DNq0nt74TYmBNpBZKu2uX0Nx6qm2sthznY4Vhvo4O1MYPX3LxvOMDltnH5qV/rq4BMEXMGq5FI4=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12e24cc3-2da4-43aa-48ac-08d6ef26a03d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 11:10:49.3951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Avri.Altman@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_041057_736609_073F2123 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "ygardi@codeaurora.org" <ygardi@codeaurora.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> 
> UFS runtime suspend can be triggered after pm_runtime_enable()
> is invoked in ufshcd_pltfrm_init(). However if the first runtime
> suspend is triggered before binding ufs_hba structure to ufs
> device structure via platform_set_drvdata(), then UFS runtime
> suspend will be no longer triggered in the future because its
> dev->power.runtime_error was set in the first triggering and does
> not have any chance to be cleared.
> 
> To be more clear, dev->power.runtime_error is set if hba is NULL
> in ufshcd_runtime_suspend() which returns -EINVAL to rpm_callback()
> where dev->power.runtime_error is set as -EINVAL. In this case, any
> future rpm_suspend() for UFS device fails because
> rpm_check_suspend_allowed() fails due to non-zero
> dev->power.runtime_error.
> 
> To resolve this issue, make sure the first UFS runtime suspend
> get valid "hba" in ufshcd_runtime_suspend(): Enable UFS runtime PM
> only after hba is successfully bound to UFS device structure.
> 
> Fixes: e3ce73d (scsi: ufs: fix bugs related to null pointer access and array size)
This code was inserted before platform_set_drvdata  in
6269473 [SCSI] ufs: Add runtime PM support for UFS host controller driver.
Why do you point to e3ce73d?

Thanks,
Avri

> Cc: stable@vger.kernel.org
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  drivers/scsi/ufs/ufshcd-pltfrm.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd-pltfrm.c b/drivers/scsi/ufs/ufshcd-pltfrm.c
> index 8a74ec30c3d2..d7d521b394c3 100644
> --- a/drivers/scsi/ufs/ufshcd-pltfrm.c
> +++ b/drivers/scsi/ufs/ufshcd-pltfrm.c
> @@ -430,24 +430,21 @@ int ufshcd_pltfrm_init(struct platform_device
> *pdev,
>  		goto dealloc_host;
>  	}
> 
> -	pm_runtime_set_active(&pdev->dev);
> -	pm_runtime_enable(&pdev->dev);
> -
>  	ufshcd_init_lanes_per_dir(hba);
> 
>  	err = ufshcd_init(hba, mmio_base, irq);
>  	if (err) {
>  		dev_err(dev, "Initialization failed\n");
> -		goto out_disable_rpm;
> +		goto dealloc_host;
>  	}
> 
>  	platform_set_drvdata(pdev, hba);
> 
> +	pm_runtime_set_active(&pdev->dev);
> +	pm_runtime_enable(&pdev->dev);
> +
>  	return 0;
> 
> -out_disable_rpm:
> -	pm_runtime_disable(&pdev->dev);
> -	pm_runtime_set_suspended(&pdev->dev);
>  dealloc_host:
>  	ufshcd_dealloc_host(hba);
>  out:
> --
> 2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
