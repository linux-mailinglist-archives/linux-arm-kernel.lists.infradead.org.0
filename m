Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6381622B65
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 07:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUUcqgI27yCzXLZXFcqNgjfmLYEiMfrLmikWRj301ZQ=; b=gDABJf0c+oREfF
	crslDqIRtE0A/eD/LSfBWyb4AZ0H0ZpekNyo3J8yz1MEByIvcAD33ywHSqY39EDTy6LokN7E/fqXu
	HtZrO+v0de93J+8JFb47aEnAzmDwzI8O/Y8GWgZp5U6qlVllN3MkYN3qpRe/YNfGRJx9B6ox+tnbI
	4e1htckgLRMFwfE4p1Oi5z7aOdKnevn/Ta8cqPa9Qy8aPzQW/DN1XYJ6VOcx4HFAyIlF/UyZ++M7m
	1nV/78vwWZ4n9DvFL7Spdy1usJIHDj1RzMxbAbtfP40v+bwSzlHgkx9MN9lUa/ip4xzRk3tcm75q+
	OuMvAcIMBVC52NxGnU1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSb9R-0001sf-LW; Mon, 20 May 2019 05:47:57 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSb9I-0001rI-UK; Mon, 20 May 2019 05:47:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558331270; x=1589867270;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OE3L1xsEv1kDNn1e4OTqexBfAyS0AZmf9rnaI8aFf/Y=;
 b=WoUJrPQR/317cpcjaHFdv7LDE2m5h+2BDxERMzaFZGs/L7Hgmlki83D0
 aNWzinY3v7BrATd1tgyCJyBtII8TumGX5yikMlrscfYpyrdkpGWnj3nTv
 9UaDwEu9W41NvJstCEU1WXarmkAsfeTxAx5gJ0UgMsNScDwAQ19bIU1A/
 3gFJ8LEEvzmX+ElBRWbSjXru+CGjer7PGPhCJ+IH/MFo7oNusnVavb9XM
 eagw7nCu5euINYREMACHmhQkGOdEPzSBvLUPsKrjKmxMxImD1kAEWAW7H
 GpQwQYWQ09LGfcAO852KtAgfBx2dGImKALcSPMBmrNeCKD9fPxUfGPsQs A==;
X-IronPort-AV: E=Sophos;i="5.60,490,1549900800"; d="scan'208";a="109875807"
Received: from mail-dm3nam03lp2054.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.54])
 by ob1.hgst.iphmx.com with ESMTP; 20 May 2019 13:47:46 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OE3L1xsEv1kDNn1e4OTqexBfAyS0AZmf9rnaI8aFf/Y=;
 b=G2rJS7hHB/l5t6W62J0RpxZjGk/IwReA/K9XfhvvGj6T09VrbIn7wkfoigIVq3owoFKfyNyoNRHZhG/CFz50tR2K9x9f1f9i5/0LMJ2nvoAHsMPrllXM+o/Q9HU+h60DNJtqP6AT4AXEiw9a2F8jiRM2WV2XCyGMGsQFFRypun0=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB4702.namprd04.prod.outlook.com (52.135.122.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Mon, 20 May 2019 05:47:43 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530%6]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 05:47:43 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, Stanley Chu
 <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v2 1/3] scsi: ufs: Do not overwrite Auto-Hibernate timer
Thread-Topic: [PATCH v2 1/3] scsi: ufs: Do not overwrite Auto-Hibernate timer
Thread-Index: AQHVDsyCIZqpZobCA02Vxl/j/e/uWKZzgTZA
Date: Mon, 20 May 2019 05:47:43 +0000
Message-ID: <SN6PR04MB4925D68D8D8EF2E16FD6525AFC060@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1557912988-26758-1-git-send-email-stanley.chu@mediatek.com>
 <CGME20190515093640epcas2p17e4c3e4545ce5e4e4b59ed7b9a954741@epcas2p1.samsung.com>
 <1557912988-26758-2-git-send-email-stanley.chu@mediatek.com>
 <15a271c6-88c8-b9d5-68a8-dc142afdf224@samsung.com>
In-Reply-To: <15a271c6-88c8-b9d5-68a8-dc142afdf224@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0434ed10-c7f7-4905-1898-08d6dce6ad97
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4702; 
x-ms-traffictypediagnostic: SN6PR04MB4702:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4702D20DA1E13B293355F6FBFC060@SN6PR04MB4702.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39860400002)(346002)(366004)(396003)(376002)(189003)(199004)(446003)(11346002)(86362001)(476003)(7736002)(2201001)(305945005)(3846002)(53936002)(486006)(33656002)(186003)(2501003)(6116002)(52536014)(26005)(14444005)(256004)(102836004)(73956011)(66446008)(64756008)(66946007)(76116006)(8676002)(81166006)(8936002)(81156014)(4326008)(25786009)(2906002)(110136005)(76176011)(7696005)(66066001)(6246003)(54906003)(99286004)(6506007)(53546011)(5660300002)(316002)(7416002)(66476007)(68736007)(478600001)(229853002)(14454004)(55016002)(74316002)(66556008)(6436002)(9686003)(72206003)(71200400001)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4702;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZigZrSoNbpJ4wDTG0i+9jdnfHcpO4rC+NK3c4tPjHLu4IgCXP1IFGuVOCeRA0bX33Wke9qUswu44xUuX/xrTUuoqYmdZ87BKxMBO6IPChvEnpfWLlzVmkaymDUJ9oefxRV7Fni3U+EZBiHkwH1WQQxzZoGgdeK+4/sOKc+Kwofa65f/qZpVT4Fc23YqNZQt66nLWD0Pq0SdywSgU+g/ze9LWr/Th5bp7qZWLEg5ja4qT01aAGVfEP+mPeVHFXTtRe3qP9/n1oFp72ICaR3LWrTim1ZRR0trVaFK7oGhMt9EKgdvPFrYjUz4cXS7N0ZS7bjlwGI24nLpNnw2tzbzT+wfL6VnCWGDk5Nw+nlKsn6+a0rZSQm7Lb6+FNfgVrlXaFdHDTZ9w8827wSa0i18wPe8y4D6YIjiFVtQXXptn6WM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0434ed10-c7f7-4905-1898-08d6dce6ad97
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 05:47:43.1323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_224749_148051_F15522FE 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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


> 
> Hello Stanley,
> 
> On 5/15/19 3:06 PM, Stanley Chu wrote:
> > Some vendor-specific initialization flow may set its own
> > auto-hibernate timer. In this case, do not overwrite timer value
> > as "default value" in ufshcd_init().
> >
> > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> > ---
> >   drivers/scsi/ufs/ufshcd.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> > index e040f9dd9ff3..1665820c22fd 100644
> > --- a/drivers/scsi/ufs/ufshcd.c
> > +++ b/drivers/scsi/ufs/ufshcd.c
> > @@ -8309,7 +8309,7 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem
> *mmio_base, unsigned int irq)
> >   						UIC_LINK_HIBERN8_STATE);
> >
> >   	/* Set the default auto-hiberate idle timer value to 150 ms */
> > -	if (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT) {
> > +	if (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT & !hba->ahit) {
A typo?


> >   		hba->ahit = FIELD_PREP(UFSHCI_AHIBERN8_TIMER_MASK,
> 150) |
> >   			    FIELD_PREP(UFSHCI_AHIBERN8_SCALE_MASK, 3);
> >   	}
> >
> Looks good to me,
> Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
