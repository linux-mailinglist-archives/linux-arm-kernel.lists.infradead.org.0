Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61E21F53B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 13:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNckvNUQGHozRhlxAo05LTonfjMF8cwI6zsUJlQRWxU=; b=ej96Uqao1KurFX
	j2OzKiXuyEsnzoHnxrochIg4FXQOUdmyoXotdVZTMF2onp8uO6ppq2L047iMhhXW4xQju1jeXYMZD
	92hIdhBv33oszE8TzjH5eZDN8COFVijH1xY9s5QMm53/E/ZnceybqT74VBny8sSvGBllYDVjLx78i
	jIvhT6DNhoiYd9dG/DSfGhtgtU3o1h3fVzcul2u3EXn6Mz50l7ozQzC7KSbBVRQgqJjvFvoUJQAEi
	y86RiwyNKDFEcSGDKhfUO6Id7X+GNsNSTWecfZN4tO1t52h1N2ArLxCbmzF8EGiyuTbW3tQah2Itu
	vH9cVO/T27xfnhns4R2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiz8x-0005bd-CW; Wed, 10 Jun 2020 11:43:43 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiz8o-0005aX-9j; Wed, 10 Jun 2020 11:43:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591789419; x=1623325419;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RwGIVo/SIFbxkIwmOhvkD7Ispx+EsW1REghSRzXFvuM=;
 b=UjSBEBpmrzQbhiF+YzO8ob+zlpV3piOX6b/e8r6i1ZyZewgCH4x9Ng8I
 DxoRSM8TccSDIS4ysJPZRjeLAY9Rlt3jGmmsnvsXY5IPQ1kql7ZrSaOVh
 0Hz4Yf9d0oG5cUCEHYLtpoCQsAQUiKLnx1EsGswisbEU2ShtdV1hMnjyh
 rc1iBEhDAKoSZBttKpQFVP7ozW85THbrg696bqVX+EpaMM0AacZ0MtEQW
 dQMTOwDMftLxrv4qt2z4XWEO+5YfP606qklXOK2tGwmxO8aqKz39uenbk
 mjUDE3CEOd+IBqcQEsRzIa/D9HyohGJ6tVnCqciThE+2vvBT4Lr57GJb9 g==;
IronPort-SDR: Ul2WS3s9LlLnzfbTSiLutU9nr33B4lpNBO0IYeyG9QtzREVP3KXsxxzEduL7KWsmDB9R/XFn0M
 fDsVyOTn4SiAYP6blUotuCIFdAcaAV6OaZ8q5boAPQexIHsP+EThmzDBIE7i/Zr44CsVGp6Wnj
 voVZpiKrB/SXuF4q+Vg+IY4x5XjBTZbxui0xUSm5NcWrUXUmzXDw+YwPw0qfrZLoQTN30HqmxL
 KElBDjz/WvW4aqCo9hCw1XiRotuiR5zJFVa9bnUKAZ3pzJiYZXEISJEGNWwmoOnGqEnmTG8oTV
 bA8=
X-IronPort-AV: E=Sophos;i="5.73,495,1583164800"; d="scan'208";a="242543504"
Received: from mail-cys01nam02lp2057.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.57])
 by ob1.hgst.iphmx.com with ESMTP; 10 Jun 2020 19:43:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=khq9RJhZI0ve3XPmAkTfAHSEAyFnBG/R964fXVS7HWct10pn9ZMDSDZ1n767uiMAEpn+t4FEpi1jQ0XmP6j/2NglB1SH0LFuzxNCIUP7f6eiEfako99StmnxGhm6fSxD8dMsz6MKqSIDwmuKmz2F6KTX+bYf5fl8zhji0q5GHjYR3RapKoMcdZM0vVexv89FR8ZohZMylq8O06gMWxB3nIbK/tx+kwRDhQhcFFbn3x/QtSyY4Vix+KibfSe1oAa5Wl6GvPnqbe13ILiavP4dNZWNMHyaSAawxrMLzgJZmlu8ZZbNQR06Nk++Ptv/47BLi5EeUIExvWjrfo0JviM4lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RwGIVo/SIFbxkIwmOhvkD7Ispx+EsW1REghSRzXFvuM=;
 b=OCnnoqMDT7Mn3eRNaDjCBBDXWt9umupbg1LIsoJS+moth1hvYEm3vcdiIJ4nNJVf8lsqq/LiHyzBBoi75iO6cpJAYSbheE6iHd5jUAkkEII6LG2FCgQPPrWpVFka1mrpcj2xdhGtEzt7s8rfzRRDmxNQOxz6D9bJ8YygI/rqxmhB2aPREkd0sg4i11/Bb0MnCwiGUgFFl489aVILuNutllEEsawEIaHORWbM+xisUzbgmUusJHdiKLcbj3S9jR6yVl1XXHDbXhwNd7xzMQLVf5rAY5sxRpW9OyjvDzAzlmf6ElwZtneWWmENuh3TGSmciqmP0ebzogVqspYlxRjt5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RwGIVo/SIFbxkIwmOhvkD7Ispx+EsW1REghSRzXFvuM=;
 b=jP5BhHxZVnJxkyf4uzQoJylK3lasFTrvdUQcik3qBFTbLjn0rB1CunDLG2Y81Kj2GDISN8CfuwcASboJInNN5XKisfBX87oPgxyff21k1ctbzaRdU4ZK1alyu6ASu+m+SJyIe+HGYAFUE1PHnF9hfMFbUmYm1jS4m1J9+5Inu8k=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB5293.namprd04.prod.outlook.com (2603:10b6:805:f9::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Wed, 10 Jun
 2020 11:43:23 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.3088.018; Wed, 10 Jun 2020
 11:43:23 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v2] scsi: ufs: Fix imprecise time in devfreq window
Thread-Topic: [PATCH v2] scsi: ufs: Fix imprecise time in devfreq window
Thread-Index: AQHWPnRZa+zdhsMCpEaxMSGGJmSl4qjRuhfw
Date: Wed, 10 Jun 2020 11:43:23 +0000
Message-ID: <SN6PR04MB46404C13248B105082BFE8E3FC830@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200609154035.1950-1-stanley.chu@mediatek.com>
In-Reply-To: <20200609154035.1950-1-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7d4d2ddb-6674-4e3c-015b-08d80d337b23
x-ms-traffictypediagnostic: SN6PR04MB5293:
x-microsoft-antispam-prvs: <SN6PR04MB5293441525BDAE7524F53AE2FC830@SN6PR04MB5293.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QTNZTWmeVcbCM/n6Avin+JN8sk5gYqgbJuGDGNl5o+2CazDF2xO+ScS4cUr7jfA7gqSj3Hrys+3vmvE0f4m9AcRGbnV5wSU28CmpsBR5MJ0ulfVv/kLk6c6oaV6+zql9yL1xgOF5PJEQw49R1FaBDbIu/J2bVw1+PhHrkg09AELr8FMVICWNRfIbcoAtlJPCdQw7nI6jM+2SGpUnjG1aMahOeYyg7oroBgwjHfliNtfk0+18DP7MMkTblpG6t8iJDqy+rLSxDoqZ8zofXg92SJP24P6BgUajF4OZi8Kr50jAKsZqHXQsIq9an7DleaMdh2DatbrRpzaht8Pj3SwOOQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(8676002)(55016002)(2906002)(71200400001)(64756008)(76116006)(5660300002)(66476007)(52536014)(66556008)(54906003)(4326008)(26005)(6506007)(9686003)(558084003)(7696005)(186003)(66946007)(7416002)(33656002)(8936002)(316002)(478600001)(86362001)(110136005)(66446008)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 93r3yewk0Bod+U+MnOSQW63SmGOgarJl68UYjeBlSJRm6iKNJ+wZf8an3S/fFM3dWLPZ30SM6iV0i74A4I3y9aWV1b9Xd15UQmajKlHUTZPynnGTgM+8o6n7W0tAE6BLfDNJTzbAUCY1wJNDJcUqcorD64ESod4t+MLYNHAp5EVQJVXb+YsXO2iZddYrNYOUqUerYnjUmLBOVzjr04ME4lvAE5mhvJbggCz0aMZKj34y2zhwPP6QscoHqO1NhxKBqpGeKD9sbvt2ig6MFxgDkgQtOgJn/fufuGeoVLLFJx1L/F1hZE/cAJhI/2Nb3D58RAody7SXHEIYEPZ7QWp1iwWoPA9uLzhyysVtVS2+bsSUkdUr7tF0DLLbGCfAVdulVNNILe1qwMC8rxQl3rvPbPMxccaCMT5KkzyyvMPpr2Vl/gySLFjTINytMJqT8p2qos52Bvo1DDaa99Qciao1EcQIrB9Dw9uv+niKg3cixI8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d4d2ddb-6674-4e3c-015b-08d80d337b23
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 11:43:23.1760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5iUZv9LUNQp/S/XZQ3K3YQ1MD8clxzOhkquCxg/Pz7dIR7m7M/wkQU0jHIv5FNqkWGcAlp7FOhiOj3oG+aFTEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5293
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_044334_403447_6953E02A 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Stanley,

> 
> 
> Promise precision of devfreq windows by
Promise -> guarantee / assure / verify that the?
Can you please also elaborate why the current window isn't accurate enough?
And add a fixes tag?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
