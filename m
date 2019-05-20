Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FAE230BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCZL59Qt5gbnuX/LgfzHdDLgDAMNh+vQaJl1m67jwqY=; b=h/i48BRfwJvWen
	poyJRe2zb8k1s/7BRlmqBeYigutNCgsiO7AJqryWYn6hmxgeMRE7D1dNbVJUZgB0rI4sXNlNoFE6Q
	Ils3YFJTGmHaSJWwjGKPg5lEvT6aHWiSXHTm85jFRxSUMnSw9CuLC1G9UZJql54z+dq/7o/3HACX0
	LNIVnORFG5/LUVz7na/40U0ms2+VmrWhCLbq74F4qHIwucEl/8//vG4fCbRyq4QPgKNwsHAZWh6lo
	iZb2mKOAwciXNG9kJE0Fk2BZ9oeCJMFDSlFtx8ZuXeaIeSu6ri4RGdXo2vs3Cer8PmLKgnn4BdHgx
	3Te53wRkwI8n5CccymuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSexQ-0005XC-53; Mon, 20 May 2019 09:51:48 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSex3-0005ER-Tx; Mon, 20 May 2019 09:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558345886; x=1589881886;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ONiXodLxp+GVaRxP2xUfIJdeix1cMwDH7j8JEh9ER5U=;
 b=TWLXvGgeML+y6C/3UQ6UA0DWoZyHQRiNaDx/oG+VGLGt2P3OKYNDcvR5
 qsrxKYJ3xIz55fDiI8XMCMc4fR1Lwix2cgIw8jnF68P29zCtCB4K6V2M1
 zC05M57wEvZTbzDvoy3GYfV5gn4+5JgXj8S8nKJEyEJgeerkO5qkpL8Qe
 Ue6OmV22oArVrG4hhinjLAaskIlkEI1KR87UKEtHmV5BYy/ifw24M3AEP
 P146wRLCTsTSjbJ3r/DzF8cHLyl4bL8IVGSJz4HdmRe0B7HnpsIe2Lrkr
 aRGPlGYoc3+i/reRJi7G7Snp++ag/FSDoErlKui1gM9XRtWLWj4tVfvYV g==;
X-IronPort-AV: E=Sophos;i="5.60,491,1549900800"; d="scan'208";a="108652173"
Received: from mail-co1nam05lp2058.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.58])
 by ob1.hgst.iphmx.com with ESMTP; 20 May 2019 17:51:22 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/hGzV09NY+SojrC6gP8qFzzUECwZGJlNPbaa8/k+3k4=;
 b=cVoIBQfJncQAB1BcMPoBQBo5MGlJ5heCSNr7nz7/vG3u9QS0Lv+IqFJelNv/lybFWLdRnZ+Thm+Tp3VdUFcoweLaN+sNVL9Z+kv7tfqBwrfcXEEakkEQuggRNpJkErH+OJqR50aSbAOYrV+wVjsQy/CALOCsZsQErzMvoX9dwAg=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB5150.namprd04.prod.outlook.com (52.135.116.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 09:51:20 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530%6]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 09:51:20 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v3 2/3] scsi: ufs: Add error-handling of Auto-Hibernate
Thread-Topic: [PATCH v3 2/3] scsi: ufs: Add error-handling of Auto-Hibernate
Thread-Index: AQHVDuakhoWPeJmpHES91VdUotSdOqZzvYHw
Date: Mon, 20 May 2019 09:51:20 +0000
Message-ID: <SN6PR04MB4925DE7B66A63ED81EDD9444FC060@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1558341138-18043-1-git-send-email-stanley.chu@mediatek.com>
 <1558341138-18043-3-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1558341138-18043-3-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2b0ba737-1789-4b4b-d67a-08d6dd08b628
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5150; 
x-ms-traffictypediagnostic: SN6PR04MB5150:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB5150F17088DD14E44288BB85FC060@SN6PR04MB5150.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(376002)(346002)(366004)(39860400002)(199004)(189003)(6116002)(99286004)(478600001)(5660300002)(2201001)(6246003)(3846002)(53936002)(52536014)(7696005)(6506007)(14454004)(76176011)(102836004)(86362001)(110136005)(54906003)(8676002)(4326008)(66066001)(81156014)(81166006)(316002)(4744005)(72206003)(256004)(2906002)(14444005)(8936002)(6436002)(71200400001)(71190400001)(26005)(76116006)(73956011)(66946007)(33656002)(25786009)(68736007)(66476007)(186003)(66556008)(64756008)(66446008)(476003)(486006)(7736002)(7416002)(11346002)(305945005)(74316002)(229853002)(55016002)(9686003)(2501003)(446003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5150;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UFvlyx+iK9UBUsLVTCtVgBI7bgBRt/kkKL6dKWuCjbvoFzxxyuKU+kfevWqXvaNYCn9lDQ6qHw6k7bCdRrlsAjhNg/MRqms5snblmXff2tv0+J27I4W12uHfRUoo0vFoHpG2MmvN0dUlCUx0A+5lsf27F1MO9H9wdNtsgwxaEp4+s0D+fkwxePOth8cBIaOF3FLqVWYfRlDJBcriTlJ/ORmrRCjg1eQhv6tTtRAa4giH7mJcEVKyNBY1pZhUbHkHFO5WQ5U3R5aoAYhtMobNsmNXL56E4gcXUaeFCIT0Oz8GJU94Viro9XrrwOjAoW1AydbgomtEHQ+0H1pejw38R6DiEVeKuWl/7GWeWn2PpAaKLhw4bt8PlMO+bhBkVbxq+XgT/jDRGPgObUDrxGWvPf0mL1EW8bid1GHDOtI3F1w=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b0ba737-1789-4b4b-d67a-08d6dd08b628
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 09:51:20.3871 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_025126_194653_6CD193CF 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Aside from some nits - see below, looks fine.

Thanks,
Avri

> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index ecfa898b9ccc..994d73d03207 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -740,6 +740,11 @@ return true;
>  #endif
>  }
> 
> +static inline bool ufshcd_is_auto_hibern8_supported(struct ufs_hba *hba)
> +{
> +	return (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT);
> +}
Maybe use it elsewhere in the driver, preferable in a preparatory patch,
Instead of patch #3.



> diff --git a/drivers/scsi/ufs/ufshci.h b/drivers/scsi/ufs/ufshci.h
> index 6fa889de5ee5..4bcb205f2077 100644
> --- a/drivers/scsi/ufs/ufshci.h
> +++ b/drivers/scsi/ufs/ufshci.h
> @@ -148,6 +148,9 @@ enum {
>  				UIC_HIBERNATE_EXIT |\
>  				UIC_POWER_MODE)
> 
> +#define UFSHCD_UIC_AH8_ERROR_MASK	(UIC_HIBERNATE_ENTER |\
> +					UIC_HIBERNATE_EXIT)
So maybe update UFSHCD_UIC_PWR_MASK above

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
