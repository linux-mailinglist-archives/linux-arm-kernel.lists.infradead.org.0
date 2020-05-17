Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DA81D6641
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 08:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6+2pPtecPlK873mHyZW8KFRzqCTSoYntCNZDI8ckik=; b=ilryDsfhhoDE/r
	2Q6Gf9iDsZTIK3mwHMgjR4ny2xn5QRllxeHxV05Rk4r2JPj5KaE1NcF5hmEJ7TYeQ2Or4OL+ceQcy
	Q+DyPg2Knap3wp5SbHbmcJUlprHPn1wxhP8MqFdfqiLztm849jOi0DkGwC6djADxhpAZQZj512Wze
	sjpl96fc/abiUgsP8y9glhO/12G3COxjy+OrKkEqmWdNi8iY3sK77ddxSioYdiJQ+NV0DjIDeNzlp
	RpZL5iFIF4UEMCu15MgGVTEHGieCxQ1v5oh2oUH7wRjDHG4taXVs+1WfxgQAmSPvzVThAieDeDu2R
	OiBr4Y7GIQx6bMKwTMKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaCX3-000076-VO; Sun, 17 May 2020 06:12:17 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaCWv-00005y-7s; Sun, 17 May 2020 06:12:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589695928; x=1621231928;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=loiPjoGL/K0GWdoSAvhxQCP3Bl7VF4z2ACC1jHy90MI=;
 b=irvXgnWiznRLOjBP84VtqJ9uTgsPcmyN9wECSB8YVHMEL0DBXfxC2z6y
 DcWXL9ss7qXRz6m4uy29Yu7YIuI+bhl4tBnBRSxLNnW4d+H/UGqgroQF0
 3kmKby6XuecnSQK25ItT/SKjG+CXqMP9kdSF5OUgBE2wNewEJf4Xad6jH
 6378cNONNPimedyaty7pKWIqRAaNq6wE6YxpifRblxz5PfbCEupKY2rm8
 d5qcGxliloty7vFiT7ve230M/fAJIOfRrqXwLH5OxTCEQo1JOPvq87bKk
 A58DZrfm6NOyHUDY+IJPQvitIZSZpCiwYdQUldkZLHy/LpHJQXVbZL6i1 g==;
IronPort-SDR: xE7P8iA3wWJz9JKe/DOGTagiZH8JfRF4p16oRK2SVQk683SLTw+vjwxCn/L1PycdOtWH1r8nd6
 pRSVrxfrkWOhsemaQ3jBcPLpFV0ZLauEs3a27qSek7TEuwCAOrunzVNfscpNLMUVtSVDdLSnTN
 8MGwfvHHWcDdT3DDPxI24B8heszIqyUhzVsJEwHMcnb+I8jDoN2/m3vGZNaAHYVN8RzWMVSdRN
 0vltq9tjSf9dbM3oYRra/OjCseynG0jp3I8/RznenWyoqj+ek5RBZTKo1edeFXHcEepM61I4DD
 V/A=
X-IronPort-AV: E=Sophos;i="5.73,402,1583164800"; d="scan'208";a="137870747"
Received: from mail-bn8nam11lp2170.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.170])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2020 14:11:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RmgIPYipKLLwlZnUefmmr7PGt4oOLmBU1tgg7amz+GRJsIeWlFZC1R5xjtRQSDQak6Q4fTEb+yeJmn2+ocP5ec5R1f7fG1nAZE97LGYFkoM8/EzgP60xvTRjaNBmY69rr5JhEpI9N7wKLeS/WER4z1E6py0cJIvt7hXfDe/xEdvw7O8jSp93kjqnKfJDybfO1vgQe9khnk5ZFJNS86AKzN1PTQNLkBgT4I2tK8wp/ZU5ny7z0srwB+we/+mPf0kuO/YIdUazKSXXe5Ggw0aU6fZ9fPeH4xqeMBh+RlVIJoLcp6K+6PrhnO0o9RyZ5gjL9BsYyQjtTihcgJP24sgVEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=loiPjoGL/K0GWdoSAvhxQCP3Bl7VF4z2ACC1jHy90MI=;
 b=MBzTAc/LBOp10MXVoxA0Z8pkcNe0EENHIaSpuInap6kkTC8JHAkXDeEYjD49TG0FanO95XupYDZqTRH2ViAhyQ1zX1nzknvbrhqe+m4agS3nEqVd0wRqvXJX8GVedcqw0pkFROjyt6SyL4RtoE1XQ5KLxbejmaBMFTawGwKL2rHwAFZO32faaDJxERCTgpjGQ89MuhuROcRJ4SIrHcYmPPb7DYvYHbUWHnf8lSoaKVNvPcVstte/fazo8AtGhcOEJqCW3LkvASOmwzBVxjPFpiVjSu5TxiwQ8LYnYhCfSwsvcKfd9HlOr4CjFU0JrcoG2rA1CkGOzu6kzKkrQzmQ0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=loiPjoGL/K0GWdoSAvhxQCP3Bl7VF4z2ACC1jHy90MI=;
 b=gxIqU1++RFHvHW6ri2IMw2nw51V6bdHR0fza1M4vQVCoMzsaZrw3+7TJ5c2PIZnCmTiqva5Bv2c1FdDXRwxecqokJvgWba+PykfMU48pDUOPrgoX9pICalTuZu+xeJi/dD+gu2bYipZ1brDCw76kZchTtl2vkb2mb+9ThRfUulc=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4445.namprd04.prod.outlook.com (2603:10b6:805:38::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Sun, 17 May
 2020 06:11:55 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.3000.022; Sun, 17 May 2020
 06:11:55 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v3 1/5] scsi: ufs: Remove unnecessary memset for dev_info
Thread-Topic: [PATCH v3 1/5] scsi: ufs: Remove unnecessary memset for dev_info
Thread-Index: AQHWK6nuXqurl/BcUUuxV/WDX/JmqqirzJRA
Date: Sun, 17 May 2020 06:11:55 +0000
Message-ID: <SN6PR04MB46404F47B61BDB4EC530056DFCBB0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200516174615.15445-1-stanley.chu@mediatek.com>
 <20200516174615.15445-2-stanley.chu@mediatek.com>
In-Reply-To: <20200516174615.15445-2-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: af92f2c0-9966-4d20-50e9-08d7fa293340
x-ms-traffictypediagnostic: SN6PR04MB4445:
x-microsoft-antispam-prvs: <SN6PR04MB4445F8A3D05B0A51DF55F51EFCBB0@SN6PR04MB4445.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 040655413E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zlGMLcvPmDCos8bh2PJNp2fQl0WP7TZ1qG4N8PZpzcZhc6HyQ0/KcQWgrj3lqIHEtSjvafhoarn9g4zJR/BUirquExCgX6ZFstQWtBZem8F3JHMYDLFERimr1bCJTEasTmdHCuSKp/PLF8Hm/2iMxb0kLqD0XAYgYKUw+T7PLEF+2IppjqREbJXoEmJmIF9yvmmSqqEfQw8V5ia76SaYvo6E+rpnzrtXBOSSyVVDB9aPmziRIhF41N1U9YCcL7k9hJ/FKuSdr11LbWnuOU2Wnnh5+jcrwQPpPVNG2u7kh7tmUrZsy5d2Hegmn7KF+SHlZBLw4/Z+9f0eENLqotL3x3DVpidL1d7VrIR5c70Se6NTIqzzBv0GR8DubYl3x83oNqNbCIjnecLKetrsYwaWC1SnWb9QQ8YIkGbdZ5FajZOdNKtNzEaaJbDO+PKuS5nf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(396003)(366004)(136003)(39850400004)(316002)(110136005)(54906003)(33656002)(55016002)(558084003)(9686003)(4326008)(7416002)(2906002)(478600001)(52536014)(186003)(26005)(66476007)(66556008)(66446008)(64756008)(66946007)(76116006)(7696005)(71200400001)(6506007)(8676002)(8936002)(86362001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: E09WxFdNavSPRfbEMqNT8RpxZjIPPZ4Pbedx+ksoyjfOGm1nvBwYhSKht3xxQTaC8uRhs7N42ZBttb4szoVwpazbOgGJj9X0vgNqC/V8qL9JaFMDr0s8Ac+odCGxklYVHqA8JxmTzP3AMfo4IvzJOm1nmmrL/xzhcE4bhmtjSlmMWObLzgp/CvJhTQRCKT65vtI1Fo/sdY8cmucbUFxr17AD6LuSXYTOhE++VMmjpcHuLHBSpeQrxMNCHJWSGqrkEreKcGOCDarrvYssABn/JsG9Gv7C5j9MG/77wQnDiwDGuZLGOA2ZWhTn8x9XJZKQs72FQq/ilnxytN4q0iq6iwC5WPYCi6OtX7HtJ7fBWDaaSPc7Jk8If2kDL9isPRnP+H0BMGvuuSt2OX6GS+4m654z4SpylxoKGIfzHaAdqoeTDH2EaRqMsTyTQzj+HUYcXoyFsS1ehb5jhIB7I9JAtCYlviBw3+cx28K/Nmc/1sg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af92f2c0-9966-4d20-50e9-08d7fa293340
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2020 06:11:55.5791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nLSuHIIeH9PsmyoACJkQxLJtQyibUi6XzPEppdKP8yL8F+sKiYKrqEEvZw1YMOUNM1jUQAiXfXmGVXVLuKCPGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_231209_401510_250E8905 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> The whole UFS host instance has been zero-initialized by
> scsi_host_alloc(), thus UFS driver does not need to clear
> "dev_info" member specifically in ufshcd_device_params_init().
> 
> Simply remove the unnecessary code.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
