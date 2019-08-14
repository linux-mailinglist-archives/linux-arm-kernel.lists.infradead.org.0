Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818A88D7B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 18:08:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xz1p4fiBZS/zpjPkvq+qvXTXi7jTQhbNAUo0ndMT4Sc=; b=DSrMN4kLGeXM+F
	IZGxh76zTODcQK0n7yPENkE52Hy6B3XgFv+SEY5MYGbv5DyQF09eC0al+C/OCnSuLyu3eUzqfpA9v
	s3b3xGroyQ53y/ElTzrKWnYSWoEyT7ZseLCFlul8Np4kHT7CUD/2wXDFnu86oumFhlZ4rPengisfK
	G2fWxH2cMW2hEXEKq4745tPOLK8XCx3G2QBn8OlsV6R4OGMX6cXeStV5MwNO674pKhLNYeGYdhpZs
	PBkyqyuNLnjt0vDZmL+rElwwFFfOAHM/bTv3zTx570Gq/reXat8h9keTKIf99fsM5rmmFlU/SHTNb
	7IulYtN5fX6sN6wPsjGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxvov-0002L7-Bx; Wed, 14 Aug 2019 16:08:17 +0000
Received: from mail-am5eur03on061b.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::61b]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxvoE-00025Y-36
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 16:07:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zSmAuHByiWS5cnEPEp8Cj0u38114pa85HxV1LrABmtk=;
 b=y+DM0kmMvMa8EZ36bLFpC5BoOBsg8tClLy8uJ9Ul49+xW3h3lvjF72K122MKGNC2rcjTglezv6m004D9ohXhQYhvp7bmuV7JqbM2HF3num8FsquXqUT0tZWWrfzgxzKDHQ/+bpp/aHDior1WHM2q78wsKQg3IXaQO7mE/uNpF3c=
Received: from VI1PR0801CA0076.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::20) by AM0PR08MB4945.eurprd08.prod.outlook.com
 (2603:10a6:208:157::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.14; Wed, 14 Aug
 2019 16:07:29 +0000
Received: from VE1EUR03FT025.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::200) by VI1PR0801CA0076.outlook.office365.com
 (2603:10a6:800:7d::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.14 via Frontend
 Transport; Wed, 14 Aug 2019 16:07:29 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT025.mail.protection.outlook.com (10.152.18.74) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.18 via Frontend Transport; Wed, 14 Aug 2019 16:07:28 +0000
Received: ("Tessian outbound 578a71fe5eaa:v26");
 Wed, 14 Aug 2019 16:07:25 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f48c147cf9d380db
X-CR-MTA-TID: 64aa7808
Received: from dbbc5fd7eaa0.2 (cr-mta-lb-1.cr-mta-net [104.47.14.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 FAAD7AB9-3C2B-4496-A266-1C3CC31A826D.1; 
 Wed, 14 Aug 2019 16:07:19 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2056.outbound.protection.outlook.com [104.47.14.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dbbc5fd7eaa0.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 14 Aug 2019 16:07:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y1VCpfP3yaCe6ub0e18ili8ldL+w3YWcs3izXz+AV/FTAzbRKR4DeI1s2nHmhdznWE+s5IhAED5lw/J4DxulOEnMYMQr9b9vZId4I5FtRCFcyVtF6kBZWSd2+ieKCBcapUYJzNzV/0kvuDfUjlc6pagqAiiqobHgrTEhGPKAG4izZNIxz+EMxeJ58OqZBXGunntMs0uxmMcs5nV9s5Tn8KID7F/UWRuPb21C66YjsY17aNoFIa3m/BS11cUkfTbhgVEear7dNUpu3nmlxUYKOGwQGIHgYHUt7yQl5MoNtXxUrR7a7f7UA5fOnydf4Wpi4dWnNuGNkrfTUh0ZC6EAMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zSmAuHByiWS5cnEPEp8Cj0u38114pa85HxV1LrABmtk=;
 b=ZXb4Kj+fuRPWLL6w0HglSuJzGLNox1NYd5ScFoWi+tXQlO15O+DtvbeLtPwgH/bg2CD9A9iJenl3h/Agvmjm1kOFFXF/leyXVXIcZzIoStwgYvBYCzWWsy49Jz7wls7HS+rgCPLkusOFngpw/WYgMnQrJQHYYyKOqGpTvVVG/e+EVWCMyqMRBIgN5eqlwi27QGwO58/3RAh2t2tetgk+IorFJUc1Os6/g9TrZ+jm30/T5UPNT4NKssNuV007jI92/bJpUXiWSXR9MOj3gyA0W+HhmS1u232PKpIdOLn2DArh3VXTlEQfhU2G5BqJMIxcHZCWzsS0aENc5UaaWrCWOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zSmAuHByiWS5cnEPEp8Cj0u38114pa85HxV1LrABmtk=;
 b=y+DM0kmMvMa8EZ36bLFpC5BoOBsg8tClLy8uJ9Ul49+xW3h3lvjF72K122MKGNC2rcjTglezv6m004D9ohXhQYhvp7bmuV7JqbM2HF3num8FsquXqUT0tZWWrfzgxzKDHQ/+bpp/aHDior1WHM2q78wsKQg3IXaQO7mE/uNpF3c=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5404.eurprd08.prod.outlook.com (52.133.240.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Wed, 14 Aug 2019 16:07:17 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 16:07:17 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH] arm64: fix CONFIG_KASAN_SW_TAGS && CONFIG_KASAN_INLINE
 (was: Re: [PATCH V5 03/12] arm64: kasan: Switch to using) KASAN_SHADOW_OFFSET
Thread-Topic: [PATCH] arm64: fix CONFIG_KASAN_SW_TAGS && CONFIG_KASAN_INLINE
 (was: Re: [PATCH V5 03/12] arm64: kasan: Switch to using) KASAN_SHADOW_OFFSET
Thread-Index: AQHVUrPR87Jl8IRCOE2i9pzbGg2dt6b6z0WA
Date: Wed, 14 Aug 2019 16:07:17 +0000
Message-ID: <20190814160713.GA1614@capper-ampere.manchester.arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190807155524.5112-4-steve.capper@arm.com>
 <20190814152017.GD51963@lakrids.cambridge.arm.com>
In-Reply-To: <20190814152017.GD51963@lakrids.cambridge.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0193.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::13) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 92626901-5a1b-4ed5-69de-08d720d18126
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5404; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5404:|AM0PR08MB4945:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB4945F263CD48C303F199895081AD0@AM0PR08MB4945.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 01294F875B
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(51444003)(199004)(189003)(86362001)(3846002)(66066001)(6246003)(478600001)(8676002)(76176011)(4326008)(446003)(6506007)(26005)(386003)(8936002)(52116002)(6862004)(6116002)(2906002)(476003)(53936002)(81156014)(102836004)(81166006)(25786009)(486006)(186003)(64756008)(66556008)(66476007)(7736002)(33656002)(256004)(99286004)(305945005)(6436002)(44832011)(1076003)(71200400001)(66946007)(6512007)(54906003)(66446008)(71190400001)(6636002)(229853002)(11346002)(14454004)(6486002)(58126008)(5660300002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5404;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: A3k6isyobwbEr2rfd35Xvl3upIi/lwJDyWrIEbLp3yD1iMe/B8YQ/MN0t4bWGkoikZCsi47ofzlXRkiIAKZADt9chjqz+bCmCv5Gqwr7Xyg0hGR3zTfu9xH8VZt/LGMoBd+IeB0Me0BT1WRrOaKQ1MBw1vVTiOFhMCz4zGX7STEl+DphQP5bMEFUXo5w9IaP0nEy2Y9XNm8aSbKq5LNnHtdqGDjVqvEWYurnPMSzHd/HSUWuuzAcFT2ks2Jqi/YacRgub8Jl4EcscoL5C3eInTTT8Yj3z3Zvzg8ePLJ4lZ0hhNlcdeAnuX6PQ+rGHTK+4EA8yWxyFMc7t4tYXPfHyDzZSd9yVTwEAS67+L4/BOmOKmAKAELUUzJZn9TmMA3ssnO+DyZ59BZ9jKKGN1ovzEDlEyy6NNKz3O6pAWBPkTo=
Content-ID: <3B58A3A450653F4C99F249E1B17567E0@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5404
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT025.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(2980300002)(199004)(51444003)(189003)(70586007)(58126008)(6116002)(11346002)(476003)(229853002)(4326008)(446003)(5660300002)(6512007)(8676002)(6486002)(54906003)(6246003)(6862004)(3846002)(47776003)(22756006)(81156014)(23726003)(70206006)(126002)(486006)(76130400001)(33656002)(2906002)(81166006)(6636002)(25786009)(36906005)(26005)(86362001)(6506007)(386003)(50466002)(46406003)(14454004)(478600001)(1076003)(8746002)(97756001)(305945005)(66066001)(336012)(356004)(8936002)(63350400001)(26826003)(7736002)(186003)(63370400001)(316002)(76176011)(99286004)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4945;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 753fc077-12f1-4cc0-be2f-08d720d17aa5
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR08MB4945; 
NoDisclaimer: True
X-Forefront-PRVS: 01294F875B
X-Microsoft-Antispam-Message-Info: T2SxQ05xf0e//9U7Ji/LzCe5VLHd+bTpmqkf6aHUPvOsuN690mvA5QMaCQLhDXCNWS0rdhhA8on0RTkw4B2YeYID8jwyr51ny7/0oamvAsDjWXCzLJ1ZAAE/NQOEPN1gQ6YILFXlcwhccdFG/pgFj5skCh/68DwyBgIci+clz6Y7dQCNmkocFKYdJ0F7tMJoXh4HnGBxQkF/vpijVJP+RQIub6vdc3++xZrdKJd9P3c50Nm2O4wHxZK6NzzJWDhjGm3ZYQBvu1UknpBslSZm5kmy7OuL5wKRcUKmgMRxC6U5omndOff2nzKrnqv19yoZ7Xbt9LuXB/g+ztZzcSL2ePctVRX5YkGKnkAReFteuA9HibvHRtUU4ZjhA7AtSMdNjGOckyrATHO6PBLR4vCDhyLAVHug7Pnjw9L8XWchtPQ=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 16:07:28.2015 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 92626901-5a1b-4ed5-69de-08d720d18126
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4945
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_090734_177219_C0F673D9 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:61b listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "bhsharma@redhat.com" <bhsharma@redhat.com>, "maz@kernel.org" <maz@kernel.org>,
 nd <nd@arm.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 04:20:18PM +0100, Mark Rutland wrote:
> Hi Steve,
>

Hi Mark,

> On Wed, Aug 07, 2019 at 04:55:15PM +0100, Steve Capper wrote:
> > +config KASAN_SHADOW_OFFSET
> > +	hex
> > +	depends on KASAN
> > +	default 0xdfffa00000000000 if (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52) && !KASAN_SW_TAGS
> > +	default 0xdfffd00000000000 if ARM64_VA_BITS_47 && !KASAN_SW_TAGS
> > +	default 0xdffffe8000000000 if ARM64_VA_BITS_42 && !KASAN_SW_TAGS
> > +	default 0xdfffffd000000000 if ARM64_VA_BITS_39 && !KASAN_SW_TAGS
> > +	default 0xdffffffa00000000 if ARM64_VA_BITS_36 && !KASAN_SW_TAGS
> > +	default 0xefff900000000000 if (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52) && KASAN_SW_TAGS
> > +	default 0xefffc80000000000 if ARM64_VA_BITS_47 && KASAN_SW_TAGS
> > +	default 0xeffffe4000000000 if ARM64_VA_BITS_42 && KASAN_SW_TAGS
> > +	default 0xefffffc800000000 if ARM64_VA_BITS_39 && KASAN_SW_TAGS
> > +	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
> > +	default 0xffffffffffffffff
> > +
> >  source "arch/arm64/Kconfig.platforms"
> >  
> >  menu "Kernel Features"
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index b2400f9c1213..2b7db0d41498 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -126,14 +126,6 @@ KBUILD_CFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
> >  KBUILD_CPPFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
> >  KBUILD_AFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
> >  
> > -# KASAN_SHADOW_OFFSET = VA_START + (1 << (VA_BITS - KASAN_SHADOW_SCALE_SHIFT))
> > -#				 - (1 << (64 - KASAN_SHADOW_SCALE_SHIFT))
> > -# in 32-bit arithmetic
> > -KASAN_SHADOW_OFFSET := $(shell printf "0x%08x00000000\n" $$(( \
> > -	(0xffffffff & (-1 << ($(CONFIG_ARM64_VA_BITS) - 1 - 32))) \
> > -	+ (1 << ($(CONFIG_ARM64_VA_BITS) - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) \
> > -	- (1 << (64 - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) )) )
> > -
> >  export	TEXT_OFFSET GZFLAGS
> >  
> >  core-y		+= arch/arm64/kernel/ arch/arm64/mm/
> 
> I've just spotted this breaks build using CONFIG_KASAN_SW_TAGS &&
> CONFIG_KASAN_INLINE, as scripts/Makefile.kasan only propagates
> CONFIG_KASAN_SHADOW_OFFSET into KASAN_SHADOW_OFFSET when
> CONFIG_KASAN_GENERIC is selected, but consumes KASAN_SHADOW_OFFSET
> regardless.
> 
> I think that's by accident rather than by design, but to
> minimize/localize the fixup, how about the below? I can send a cleanup
> patch for scripts/Makefile.kasan later.
> 
> Build and boot tested with CONFIG_KASAN_{SW_TAGS,GENERIC} and
> VA_BITS_52 (on a 48-bit VA system).
> 

I've tested this with VA_BITS_52 (booted with 52-bit) with inline
SW_TAGS and generic KASAN.

FWIW:
Tested-by: Steve Capper <steve.capper@arm.com>
Reviewed-by: Steve Capper <steve.capper@arm.com>

Agreed for this small fix now and a bigger fix in Makefile.kasan later.

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
