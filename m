Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7729461BAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 10:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89zAwkOaoq2+ZDLcAA4AbuPVrQjJW1+JHIxE0na4fz0=; b=YNLbZJYgk4htIe
	jQjju/0V1WCKlLIMjpStyDcHD/zqm5AkXBNDf+idnQD72XEhQoGWP+twDSd1f2biMZtSIc2wgA1Uo
	Xo0FxXnVL337JLrk4rSkG7bM7moqy36nJXzAspsdWbCLGCxXPJH7euos3nuC/zAk21TJYYxKSKYlN
	9CWsJf0P9UbI/TsslIzj9bLXTJD3IVbYZnA9Er4IgG6muWCzl6RdOnaYAr37yKxwItYcpJa4uk0s7
	90NJDs6d/HtWyREJeb1JMMh2rBSzHnS8HgbQrHS7i+rGdhMp8DhnXccp6sB0T5t0PBBP/WmQGF00E
	tyKas4LsZU0Vekb7IG2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkOyU-0002A4-2l; Mon, 08 Jul 2019 08:26:14 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkOxd-000204-6K; Mon, 08 Jul 2019 08:25:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562574322; x=1594110322;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EeAMvtubm8m6AUo2sXZ77I2Dsy+XODMO1qbuj5bDVFM=;
 b=L4vqY1yXo4q/G9llsGS3Pgh6orAVL7Vht8BK+pPfq9FB+oMzK3pcqStg
 i+8McvVOAEG0/55nwNA3aFnj+HF2Ux59RPahXB0bZcPmDXMNPTTN38SkU
 VyKxnjb8RXOsGTs4TB4wvMRthcCCmDWijYTnYWYqV01DukV8Yp/oUGiW/
 MV7PJYG2pfUkl6AmgocdCwwA8wRCENySr6u3kM4/34LlhXQBYk1nxfMQq
 C8Q0C0HNT35dOihk/Ep+7INhu6elYVyj5pR434wkV1qnPHskHkRiAwxAl
 fsEuPkKRYGihSt/P+9MpjLw88arlujFNeq33K/4/Tu1GKkOUJJUIQEbD0 w==;
IronPort-SDR: 015//jmaT/OyFFIexnwSyBA/39YSCQfF0diyDgVS7U8/CAP8+U37jlZL1zNOchaRurnK6YgAsJ
 cAu8Ssx2oWk5CiAN6Ng9FxD3hTbIBYcadEHFbhqW8fIxxRR1E+cZSYcCH5djb0VHNDARW618Fp
 a3wvL/xSaMPKNujG5v57BCufAYz8Zq/iU/Ro4K+ZbuwAAnRPk7KL2qfl5yUHWD9meln9sBXV5c
 Q8vOUVK126ozLaRm0Qv9+naoMl22V+P7VcJbLfvRG91eHaYeV9COUprWImt4hdRdlPfgaXabvI
 erg=
X-IronPort-AV: E=Sophos;i="5.63,466,1557158400"; d="scan'208";a="113604800"
Received: from mail-by2nam05lp2053.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.53])
 by ob1.hgst.iphmx.com with ESMTP; 08 Jul 2019 16:25:17 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TZg84IxTBLYMo5t9c5n+F/DXl7NFCUPsGn+7oamzDjg=;
 b=pDIDu8wT2PrOdaBxsPeN3mBx6hizAelPHlrxcbd70aNo+vMIq8yVB3eXnSExQgsTeQWdSGk9HN+UN/cmHd5XmmifLLQT7QAv7eWvnY7D50mv14R6jVpfmBgimmoFFTt78z7jRF3jRxanlIj7ON/Q0DeNR/Yyxes6PcumbSag9gc=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB4766.namprd04.prod.outlook.com (52.135.122.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Mon, 8 Jul 2019 08:25:15 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::541e:d74b:98bf:c319]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::541e:d74b:98bf:c319%5]) with mapi id 15.20.2052.019; Mon, 8 Jul 2019
 08:25:15 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v1 0/3] scsi: ufs: Provide fatal and auto-hibern8 error
 history
Thread-Topic: [PATCH v1 0/3] scsi: ufs: Provide fatal and auto-hibern8 error
 history
Thread-Index: AQHVNUcEuVG9z0acakGMVEiKDaqYPabAYgew
Date: Mon, 8 Jul 2019 08:25:15 +0000
Message-ID: <SN6PR04MB4925ED3707277B9C3E582537FCF60@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1562560677-3985-1-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1562560677-3985-1-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 352fc94a-091a-4f4e-587b-08d7037dce04
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4766; 
x-ms-traffictypediagnostic: SN6PR04MB4766:
x-microsoft-antispam-prvs: <SN6PR04MB4766E74B93EE53494F0F1886FCF60@SN6PR04MB4766.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 00922518D8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(376002)(396003)(136003)(346002)(39860400002)(199004)(189003)(52536014)(68736007)(7736002)(7416002)(486006)(66446008)(3846002)(66556008)(305945005)(4744005)(73956011)(76116006)(66946007)(64756008)(6116002)(66476007)(25786009)(8676002)(476003)(229853002)(446003)(99286004)(14454004)(71200400001)(71190400001)(86362001)(2201001)(2906002)(186003)(66066001)(11346002)(8936002)(54906003)(81156014)(81166006)(9686003)(26005)(256004)(55016002)(6506007)(478600001)(110136005)(4326008)(76176011)(33656002)(102836004)(5660300002)(7696005)(72206003)(2501003)(316002)(6436002)(53936002)(74316002)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4766;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pL7ejLJNtu9OsAAHsPRoLJRZalRmnpviOQrITuDi0mTWlVVkoH5xeVMVEU6SgRVtBdKo1YPIIs/8JPbk7zYyP1k/oXvcRmXxqFuyUSFvSMK0c5/lJ67viyCK/vNQfgMM2v9oUJ0sJj0YM3PyDLM1sqz/glNTn7epjlImUmKpFZBiFh86iHMfZv+vvPAgNKrIYREf6XxQD5a77ChYAWPJqsY6H6IrcfbSz19yjGQdUZoxxEqGt0PODrFZ2vv+uvyc2J2jBFGairm9JTzYlWtXTTfppiqPRSAPOFcylQAjH2W1jnrPdnCtfx0zOXMFao7E8wStXWXEZv5ZqJWXEU/p/AgVUqjGSKiOZB8mp0954eMmz4iBS20IFpD8G7uqj7OblE9/9oBkFMfmY5UFdWNeYMDrE3NRgKcJnWVmVQrYj1o=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 352fc94a-091a-4f4e-587b-08d7037dce04
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2019 08:25:15.6572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Avri.Altman@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4766
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_012521_985177_D5CF9C84 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "sthumma@codeaurora.org" <sthumma@codeaurora.org>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "ygardi@codeaurora.org" <ygardi@codeaurora.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series looks good to me.

Thanks,
Avri

> 
> This patch set provides more information of fatal errros and auto-hibern8
> errors
> to improve debugging by keeping their error history as completed as possible.
> 
> Stanley Chu (3):
>   scsi: ufs: Change names related to error history
>   scsi: ufs: Add fatal and auto-hibern8 error history
>   scsi: ufs: Do not reset error history during host reset
> 
>  drivers/scsi/ufs/ufshcd.c | 57 +++++++++++++++++++--------------------
>  drivers/scsi/ufs/ufshcd.h | 26 +++++++++++-------
>  2 files changed, 44 insertions(+), 39 deletions(-)
> 
> --
> 2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
