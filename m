Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE9E1E7858
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 10:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10QkivLNdjdK/C8oVps9HS9OX3FccoqUr7+G3FtZDzk=; b=mEfUlOxWeh1RqK
	fAtiEVZYjmJWr+e0HqhSSexT1/05vH65ziROwqtw4/SwHXqLHpbwd+mcIgCNomofH4ur2QukR25yd
	JMXT240TgVDor0uprHQo+IaMx9n79bSeGbzr2S6idF4M6xEvmkPHcASPl8ariSNqeuTXxvcIC8L/5
	00k/ILIfp39eYDoUzYcUQQGjsWMpL8WSyENuazCv4I+vISFY/PQcGqdqk6MlZoZ2IhF7i+hkTqLSS
	+/mKYZTKAvz8nsRFyRf3JrJEk3sDX8hRJo/RYUdB6xJmOoWKOdcXd0JxJakg71PrttobOxAB7lX3O
	Nav8tcEx78ncZJYZ+fMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeaOG-0002bx-SW; Fri, 29 May 2020 08:29:20 +0000
Received: from mail-eopbgr680058.outbound.protection.outlook.com
 ([40.107.68.58] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeaO8-0002ba-L1
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 08:29:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MTuM8aDddsFenAunY4QzQfaNKe/c6R6XCHOvWUJ1FRxT2FE8MCaPblNASxMM0WSifszT37yqppoLXaEJEQNi6fFmyumPsx7Rnn34ONvU/Bk1GTKJ9P7r+/IEBMbnS22EqwST5QrG5uzQYccHicK46wIeg0lf+0htQuriPua50PP6kX53+G0VLhgRio220P7jKWB6RRQp5IVbo/7eqqw5HOT0C8baemG+49A4jGDq9EyTZBckgHJXduP/CNHKYFszl7ahQnyz5s8oFQvr1ICGLzyPt9eT2r/HRgXu7zhS3S9Qdd5jv7uicBE8vuenjYmCIpALEQs4AS8NgPKKoC3Tmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M5f/GHiyAxdGewEwzJoiyJWgBqhudAy9BZ+C1Lp1lEY=;
 b=HGC1cRavAgHENCSnIWF020W8YaVqyHo45B2r7DCKEkadskDKWW4q/6p8YkMQ/FRmFn3mjruMeyJKrlvdQtLJGccRjFXcu3YlzdyregRTUSq4PPRXBkFxBhnm8QPg+JsqYX+R3Uy3+JvLqP3aTxiYN0T31omhvGIlS8Swr2mKpgit9HUsNulpCRgjs0IpGGn03lDGiocmmuPMxuM04XxR56Q5lTn4bA617pCEeGaozRd9Cw1WVTj1CssRxq5dMtnuJPUZr2ZaI4t7cJCX1Lcoh2SQ5u5Po2gJ+/ky9PAzg6X4M+xUsf38lJTaZfS0RFSH1Zbjyl5sboVIRfv6BI/V+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M5f/GHiyAxdGewEwzJoiyJWgBqhudAy9BZ+C1Lp1lEY=;
 b=onCPvNv1gcy3gwn9/Fe/fJfGbfuwIlG+s9PNxBUISKsL/pDN1/QLxDjqn7EGPfZIi9tz9hyNCi7ycevbO/ITCehFjM9/IyZ9zowV+uE9/2CHPr0tkBCpgh5H0KXo5ezC5b2FsjBsj0zovM3jIiurTVpd5rjbyUDI9c5MouOYIQg=
Received: from DM6PR02MB4140.namprd02.prod.outlook.com (2603:10b6:5:97::21) by
 DM6PR02MB6985.namprd02.prod.outlook.com (2603:10b6:5:25d::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Fri, 29 May 2020 08:29:09 +0000
Received: from DM6PR02MB4140.namprd02.prod.outlook.com
 ([fe80::3de9:d192:ff78:5302]) by DM6PR02MB4140.namprd02.prod.outlook.com
 ([fe80::3de9:d192:ff78:5302%5]) with mapi id 15.20.3021.030; Fri, 29 May 2020
 08:29:09 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: John Hubbard <jhubbard@nvidia.com>, LKML <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 0/3] misc: xilinx-sdfec: convert get_user_pages() -->
 pin_user_pages()
Thread-Topic: [PATCH 0/3] misc: xilinx-sdfec: convert get_user_pages() -->
 pin_user_pages()
Thread-Index: AQHWM8XbFH9/8DdNtUSGETogEigyZ6i+vMbg
Date: Fri, 29 May 2020 08:29:09 +0000
Message-ID: <DM6PR02MB41405A1300813F8A511BE449CB8F0@DM6PR02MB4140.namprd02.prod.outlook.com>
References: <20200527012628.1100649-1-jhubbard@nvidia.com>
In-Reply-To: <20200527012628.1100649-1-jhubbard@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: nvidia.com; dkim=none (message not signed)
 header.d=none;nvidia.com; dmarc=none action=none header.from=xilinx.com;
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bb2d2c2c-c441-4bc4-5def-08d803aa5c2e
x-ms-traffictypediagnostic: DM6PR02MB6985:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB6985545487B81FCC9796EA6BCB8F0@DM6PR02MB6985.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04180B6720
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EqK8yBQPOTrwPqQ3ksaSpWAnD0Av1MFaUQJKEA6uwleyoSLURS/d2g+bscN8BYHC1CASwKPpaQOQpApfaJLWsUOOOlPEAmjDaLlHlIFInwbelURukogibzcHqJJTEX3RrGk66kpAPtmCW4iQ6RNef2KMXkyoI/1NojFdQSKek/CI/WDe/gSryRb8QdSGek0cPcNZXPuouHHEcbUfmzM74ZWjOLYxXt1+1e3YMGFKWvpZmiB+5QLG1J8CKL0bjKbbUrL3mQH4LocpTBE7tfb+bj312QEZV7rS1jyArRpHt+xCyrCViatzNKdPPYLrSLJWZMqQ0gxNvwSOtlqRZZsdmQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR02MB4140.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(39860400002)(136003)(396003)(366004)(186003)(26005)(76116006)(66946007)(66476007)(66446008)(9686003)(8676002)(8936002)(55016002)(64756008)(478600001)(4326008)(52536014)(66556008)(83380400001)(316002)(54906003)(6506007)(33656002)(53546011)(7696005)(5660300002)(2906002)(71200400001)(86362001)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ypbHU9TrfTdCAqNnilmXCSiKSBQFt1P+hIz49i8L+jvyyuS0CRobvzejW9Ge0p6nMd9hJWB/OSOfe3U4IMBIXQnHD9Nie8OCYQ93vSz32GMqzabAT+VJkj8baGA7HL53NKLAygDKARmcOCuxSVBNwoFsld2NxgKqDurncLI/h6+h/s1rNPBWUZbn8W2vi0FfRWwC8EbCIOVo/uslZi7ivRDh7I2unptoqf7dONY3utg0ANu0M1AYhMnma+Icj8733t3aNch//X8NdkaIEnAvoUYp1UUfl/RdFe4WGrd85vtbKiAzfTdoGzyItfoYVGygaj/IG/izoVdokiwIddye7qRqlEfa4FQk7UhhPyZn3dWe6XxQ/RFAfUsGlOlM3is+k5O2rhPVgxOmDLMqlUy3Z34TArsB31+GJsNZ3nY3ArfMpeX/EZLpfiD1XucrJ8QQTA0alZ6AgM8p8/HFeTtkGtFYgBIeAr/dr6nOf+kWQsIRhmOmyc+zvX5wTGMVFnn5
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb2d2c2c-c441-4bc4-5def-08d803aa5c2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2020 08:29:09.8231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fhLkLsuTdMv9MorOtqiBVJCwMY4qGr3aaluv2D1aQeMy30aqpTa4/0hI5KcOYvTth3nhgYn2zZFevKFEwF20/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6985
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_012912_690107_836B4FE8 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.68.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.68.58 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michal Simek <michals@xilinx.com>, Souptick Joarder <jrdr.linux@gmail.com>,
 Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

Thank you for the suggestion, please find my comment below: 

> -----Original Message-----
> From: John Hubbard <jhubbard@nvidia.com>
> Sent: Wednesday 27 May 2020 02:26
> To: LKML <linux-kernel@vger.kernel.org>
> Cc: Souptick Joarder <jrdr.linux@gmail.com>; John Hubbard <jhubbard@nvidia.com>; Derek Kiernan <dkiernan@xilinx.com>; Dragan
> Cvetic <draganc@xilinx.com>; Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Michal Simek
> <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org
> Subject: [PATCH 0/3] misc: xilinx-sdfec: convert get_user_pages() --> pin_user_pages()
> 
> Hi,
> 
> There are also a couple of tiny cleanup patches, just to fix up a few
> minor issues that I spotted while converting from get_user_pages_fast()
> to pin_user_pages_fast().
> 
> Note that I have only compile-tested these patches, although that does
> also include cross-compiling for a few other arches. Any run-time
> testing would be greatly appreciated!
> 
> Cc: Derek Kiernan <derek.kiernan@xilinx.com>
> Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Michal Simek <michal.simek@xilinx.com>
> Cc: linux-arm-kernel@lists.infradead.org
> 
> John Hubbard (3):
>   misc: xilinx-sdfec: improve get_user_pages_fast() error handling
>   misc: xilinx-sdfec: cleanup return value in xsdfec_table_write()
>   misc: xilinx-sdfec: convert get_user_pages() --> pin_user_pages()


Reviewed-by:
	Technically there is no problem in this patch, but as you said this should be tested.
	Currently due to Covid-19 I'm not able to access the HW and I cannot validate this suggestion.


> 
>  drivers/misc/xilinx_sdfec.c | 30 +++++++++++++++++-------------
>  1 file changed, 17 insertions(+), 13 deletions(-)
> 
> 
> base-commit: 9cb1fd0efd195590b828b9b865421ad345a4a145
> --
> 2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
