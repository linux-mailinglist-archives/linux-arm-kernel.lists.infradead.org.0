Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E0E1921DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 08:45:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYPeAWGkEd/sZE6y9mp0tgSP+15+1CzCA5IQkX1fa7E=; b=Rz1POkbLwSy03Y
	C8wZjHOpG1rRd6lAWdRoMPdwfN0Jcips645XLM0eqnp4dm3krbJLBjKVgLa9CoR7xj3hz5MLTOR3S
	6lLuLW6ArgvH2lYwxXgDLTHz+/IzC3VCraXKH2PR1suRQQ31IVpdgLYs9JPQd5ks6JIXqbjkSy8dH
	IulIpCqkqAkX9r37iPTFs8WVRvvD9Ha7u45miW4y5AsRfXhfxoeiqx83rjQsGwCD0iY4kB4LAG1LI
	vSKWt/FxEh0c98RPyacH8yVfEpiJIbcnu7LAt1VE5BF220PaO3ZvJIPu6lchz+9Ot3ghC2kkT7n/C
	qbDcNDaz+fGZ1ALvUzlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH0ii-0008Lb-5q; Wed, 25 Mar 2020 07:45:00 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH0iY-0008L6-9H
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 07:44:54 +0000
IronPort-SDR: YzhPeM1DXNoq5M+qu7uC9jC5fpSV13nNcAZGxmBPk4vs+IQjhcWsHgbQNSlGrRRm/BUcf2Naf+
 Aar9D7pghTFHXfYIg5lZ04EKev+cqzbPgZmlTgD/cNmpnDR5q/3xLEriIw4gV4TLQ5ocXXW5r+
 RwBiEtW6R011o5R6Z+vlBpdv5m7KjD8//CW0t+2w6ML6sDrBP61cLmpvdSAOw7GBC2IF134AYW
 2Mmwelh5X4MNNWIAasoKfMPCVZ87AmIvLcaO5YaDfjQVXvEkR0/ulNDGKcPoL0SqSDTq23jKeL
 aFc=
X-IronPort-AV: E=Sophos;i="5.72,303,1580799600"; d="scan'208";a="70184605"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Mar 2020 00:44:48 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Mar 2020 00:44:45 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 25 Mar 2020 00:44:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hTvZ7nwgHeGly3P6RAPJ+kmu2nU4gDCF7DKRNi7y+f/hKq2xOAxsU4r0h/F3id5KALso+rlgtxjHzbA9AncFGXOdzmb9LoHwf2R1IgoJi4ewYNcisbO/aH8QSNaICWA0VNx5rc1h4cwEINjlvRh7ui0ZI5SeevigAh0ceC8UZHk7nKEZMWChhY5SpcAVg6Xaq82G8p+QvcM8YYnZt9uBfNkGpbVx9BF9MGZGIk5641TSwmUUA524wOV00+IFUdxyF2Nhj1VB94SRcIC+C3gZnZx0Wxt7VRfwSqn4Ya1+zYcEvw5JEjzNhxWC6wB9Xk9Flmopji8LDuezuuYMY7xQow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UfCHewV2Hwd2RpTKWRzMpLIR1+0STZThd2xWBJpoKys=;
 b=HuIseVMWfAO5XCxbsQmGoF6NXOB5jMdI5DQyOYKV9HlvbbSX3vrJZGebMqu5u9DLob1P9QFeZI2ayisSQ2Zml4056mPSeGlAUr5KjL5gmXegz31Kasn5bE6E8RgWX8GlXPtMMZ4oguu/n9KLIITtJpdL2q1DTOvZzpx9XAVGfkXU/TW9m8pNNN4fgUPW8qUhEej7/4ej26APj3gsjpeO5dYNP8TVW9Go0Z3FEVjp07m0Gt9wxa+xgSPx8PJcs9n7dTwKNB1JPcxPX4KzevVNswbAaj6/k6Z2fopTGnE2AhoOXtQk7jzsWDg4MbQ5VKBlJma43j079LqQs/xmfcmgWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UfCHewV2Hwd2RpTKWRzMpLIR1+0STZThd2xWBJpoKys=;
 b=fF1OtzDDBGBnKKCMuXxXDkLT2mmhu8ckKZEO1K9h1WsZbuULTSIYeQe1Ak2OfpZJY/NlVbZI8Gt2haE4l+R9CKeHO/2PoKplZsD3j43FMuBusc+62axXNme1dmSIeM7OfHaK8YsQea3kdBz7sPEZ2mnfilVbQPzx7XkHOUTiy8Y=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4227.namprd11.prod.outlook.com (2603:10b6:a03:1c3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18; Wed, 25 Mar
 2020 07:44:44 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::e918:9196:b47e:9692]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::e918:9196:b47e:9692%3]) with mapi id 15.20.2835.023; Wed, 25 Mar 2020
 07:44:44 +0000
From: <Tudor.Ambarus@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] spi: atmel-quadspi: Add verbose debug facilities to
 monitor register accesses
Thread-Topic: [PATCH] spi: atmel-quadspi: Add verbose debug facilities to
 monitor register accesses
Thread-Index: AQHV/oPqtOj7WQwUUkKT39YwyDGkQw==
Date: Wed, 25 Mar 2020 07:44:43 +0000
Message-ID: <8737481.hkyJJAYeat@192.168.0.120>
References: <20200320065058.891221-1-tudor.ambarus@microchip.com>
 <20200320121117.GA3961@sirena.org.uk>
In-Reply-To: <20200320121117.GA3961@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tudor.Ambarus@microchip.com; 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 42e2f742-4831-4e25-2921-08d7d0906286
x-ms-traffictypediagnostic: BY5PR11MB4227:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB42274C77A3E10F3C8CF91BBCF0CE0@BY5PR11MB4227.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0353563E2B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(396003)(136003)(39860400002)(71200400001)(6506007)(53546011)(478600001)(4326008)(54906003)(14286002)(81166006)(81156014)(316002)(86362001)(8676002)(2906002)(8936002)(6916009)(186003)(91956017)(66476007)(76116006)(66446008)(6486002)(6512007)(9686003)(26005)(5660300002)(66556008)(4744005)(64756008)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4227;
 H:BY5PR11MB4419.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FzDlSE42DAat2OLoF7MBQW2+L9FZfF+EaRE3/pua0f/dEQmPE06RxUImGtf9EhmXYd8H4VeGPZjzwpDG8Cm85pVf58KH9uCYvwxLRuMiqouFzfF2L72Mko9os7Mz0F6RXKLrk/US6wwb5KyoXnLaMxLM4FOcxoMyr+wud4LhyH2nct/3dDUG+crgcmONDF5z02Sgz6npq7dzTV42woLvNBnzsiWuQJgkQlZ9jRwvPWasS7sq5+tJJ7NR3EUKv5jWYlG8jgmffW/1OlGWEjaArHFr3CnXZriB+0FyL8wD/MWlgyJEjIPd83hknW8AdanfFBmvTgWATI0zdT+xN+mCwOsw31z1Yi8Ms+pD6iAKgzQgESpPJZhvGOF/nHO2sboiEH86dRp/aWMoG6IUYXUJTJCS/nHm9J+7zKvf2zyq0vQsw0MPMMe4ug61IE2+h0Jl
x-ms-exchange-antispam-messagedata: l8n2m40f3pewsdaEox4jsDiP5u6CbWuV95vxMOa5CyRPEkS8SVAhmPBPORuhgHugahsxoAmAq+X+RpjD1a1hnV5Yi6jnST5mpJTMkt04kiFRCIwhwegHO2Zw46vwCgfgRolsJW5a1k5AW6P1ByeuqQ==
Content-ID: <CFB022B61935FA42B24AAFB6ACDE1E35@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 42e2f742-4831-4e25-2921-08d7d0906286
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2020 07:44:44.1293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZPUWliRIcSl0+pfsHYH2zJagXRUzSA4irGpIs38/g+pMCzJhiqik9OWlZS9tQrWgN0oj4Xzo3VgcyQxA1OaJLvtpU7E6PzRQbNLg82txkqE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4227
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_004450_358455_96355775 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, broonie@kernel.org,
 Ludovic.Desroches@microchip.com, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday, March 20, 2020 2:11:17 PM EET Mark Brown wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> On Fri, Mar 20, 2020 at 06:51:01AM +0000, Tudor.Ambarus@microchip.com wrote:
> > From: Tudor Ambarus <tudor.ambarus@microchip.com>
> > 
> > This feature should not be enabled in release but can be useful for
> > developers who need to monitor register accesses at some specific places.
> 
> Looks a lot like the trace regmap would give you....

oh, I wasn't aware of that, I'll take a look. Thanks for the suggestion.
ta



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
