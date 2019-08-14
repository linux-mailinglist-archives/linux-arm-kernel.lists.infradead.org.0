Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1357B8DC67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 19:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7z33K84It3dRpnHFhxaAymExtdLsEQUxOtjnfaalWQM=; b=iTwQuuD3HnR36h
	I5aCCMgR9MGAZ+07kXjjeAtfibaBkIgelcbWPJH62yK7xtxxkfey/W4krTCwNHK0dj9UhD283cu9z
	vwoqqHx/EH8zpCj4BGXoTneUoHjOCRxVe+9p1kCL7d8tUxNFSf06915DSbKTtwuf0dU5/MO+atPXO
	UYlXio55D0mKq7LT4NLq3GoAvfp/hyxdlB/tcvKIyXidFitey1PdOiFz4kM1HqJABQX2IOj00p8zJ
	DsqsqWUfojrdpcaJgjuw5mJcMOupHCvQ5+qWlS07U+SF5Vick8Ltz0VDPtq6ZZSxT1A+g+G5aukJT
	QnV/U3mtKtiafwPPwCcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxxTD-0004p2-GD; Wed, 14 Aug 2019 17:53:59 +0000
Received: from mail-eopbgr70075.outbound.protection.outlook.com ([40.107.7.75]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxxSw-0004oZ-JJ
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 17:53:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8gxplTI3ACjVmHI0jF6r19+SFuO+gsOvM6iLhRAwpPo=;
 b=KXz82jxOU+eMbz1pD6D3qlDUY3N9Z4iev37lOT7JGFBDY4ZUv1V7nLRGY6BJkKu2mATKNVmrX/T0yGYdvo02LddIR0gxrWuWbJCjPM4RKtPo60UW2S5UMQf4rskXFoeVyNTuqDcJgkWzIcdHHiHllmIULNrrg12s5YVKwAqLFxU=
Received: from VI1PR08CA0104.eurprd08.prod.outlook.com (2603:10a6:800:d3::30)
 by AM0PR08MB4946.eurprd08.prod.outlook.com (2603:10a6:208:165::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.13; Wed, 14 Aug
 2019 17:53:37 +0000
Received: from AM5EUR03FT030.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::206) by VI1PR08CA0104.outlook.office365.com
 (2603:10a6:800:d3::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.14 via Frontend
 Transport; Wed, 14 Aug 2019 17:53:37 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT030.mail.protection.outlook.com (10.152.16.117) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.18 via Frontend Transport; Wed, 14 Aug 2019 17:53:36 +0000
Received: ("Tessian outbound 1e6e633a5b56:v26");
 Wed, 14 Aug 2019 17:53:34 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: cdc5ed3a6e697ce5
X-CR-MTA-TID: 64aa7808
Received: from 0abb30cac493.2 (cr-mta-lb-1.cr-mta-net [104.47.0.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 6266F710-1901-479C-A3D9-97AFA5A93F00.1; 
 Wed, 14 Aug 2019 17:53:28 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur01lp2056.outbound.protection.outlook.com [104.47.0.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 0abb30cac493.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 14 Aug 2019 17:53:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gr6S0YFhI7cvTb0fY44AfMc7HtmrBzjVYTw1wpITXQRhxlPpXLOksPGbfrQTce9T5yW48irEJScubVF/n236L7PtOc1Dxtfm75o+QUJyHXdaRXL/DPFaNcWRzYZopL/PWLh3Hvd1OkKMJxFXI3+5mM3Nrz0c/nGiyVQjwFU1ikTzxo/Ofl54aE+RXkBUL2xCKhGBTbEcMp75L5KW5lZNqDpNz+3t6znZiW2LEmU5WZ841+nw9TQHxQLREbd2JS8RXpc3avndEC30gKBIDh7+WmgV+qL0CO1z+YbIKk2URmv3lKqR6LO+p2RMri1IF/7cl2Iex5OtdTETFJCDFJ4y/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8gxplTI3ACjVmHI0jF6r19+SFuO+gsOvM6iLhRAwpPo=;
 b=ewYWg5y+0Lju3IZqwiy+JPlWyarC+MmrBrEKOxuzIiENBXIkU59ltC/krIQPpg8ifxvGoymDRoI8vHgpc05zWAjmYALTjNhKEFyEHzE8kFgowm4pZXPsPjTcEdE8YAV8I7A/cQgR6VP6EafkgCX48CjsiPlnuojEajA1QbiTLPqoEpVjjri592hMFA+r9KlYNZkvdoHmNYaOTMDcX5O+zMKlg1WhVHcJVrFOW1h24EgvKdXbvhvbIXOvlW5HVKw0rCFbfTxq3UDg/nncQ2kKExUEo/ZMGVeQTdKsb0ip4Raxv5y9B9MtRFbSCt08FZH5jS5VZZVGN8HIfNW6ogMhKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8gxplTI3ACjVmHI0jF6r19+SFuO+gsOvM6iLhRAwpPo=;
 b=KXz82jxOU+eMbz1pD6D3qlDUY3N9Z4iev37lOT7JGFBDY4ZUv1V7nLRGY6BJkKu2mATKNVmrX/T0yGYdvo02LddIR0gxrWuWbJCjPM4RKtPo60UW2S5UMQf4rskXFoeVyNTuqDcJgkWzIcdHHiHllmIULNrrg12s5YVKwAqLFxU=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5353.eurprd08.prod.outlook.com (52.133.240.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Wed, 14 Aug 2019 17:53:26 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 17:53:26 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH] arm64: fix CONFIG_KASAN_SW_TAGS && CONFIG_KASAN_INLINE
 (was: Re: [PATCH V5 03/12] arm64: kasan: Switch to using) KASAN_SHADOW_OFFSET
Thread-Topic: [PATCH] arm64: fix CONFIG_KASAN_SW_TAGS && CONFIG_KASAN_INLINE
 (was: Re: [PATCH V5 03/12] arm64: kasan: Switch to using) KASAN_SHADOW_OFFSET
Thread-Index: AQHVUrPR87Jl8IRCOE2i9pzbGg2dt6b6zHWAgAABvQCAAB68AA==
Date: Wed, 14 Aug 2019 17:53:26 +0000
Message-ID: <20190814175324.GA12635@capper-ampere.manchester.arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190807155524.5112-4-steve.capper@arm.com>
 <20190814152017.GD51963@lakrids.cambridge.arm.com>
 <20190814155711.ldwot7ezrrqjlswc@willie-the-truck>
 <20190814160324.GE51963@lakrids.cambridge.arm.com>
In-Reply-To: <20190814160324.GE51963@lakrids.cambridge.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0339.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:d::15) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: f926fa98-5c17-4a57-ce5a-08d720e054e3
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5353; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5353:|AM0PR08MB4946:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB49461EFAFC09FCDCCB9A98F981AD0@AM0PR08MB4946.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 01294F875B
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(39860400002)(396003)(136003)(51444003)(189003)(199004)(99286004)(33656002)(316002)(305945005)(1076003)(7736002)(71190400001)(71200400001)(6512007)(6436002)(86362001)(58126008)(54906003)(5660300002)(6636002)(6486002)(8676002)(476003)(446003)(66556008)(53936002)(2906002)(81166006)(4326008)(81156014)(66446008)(44832011)(25786009)(66066001)(229853002)(6862004)(486006)(26005)(11346002)(52116002)(256004)(102836004)(386003)(14454004)(64756008)(6116002)(6246003)(3846002)(478600001)(76176011)(6506007)(8936002)(66946007)(66476007)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5353;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: o0Xj6e9JJkH1kFZhiu9E4OLkTWk8KSi+XNhAAC4VYUkQiLHEUPYZim7g50x17/z3vRSYtkLBmpeCVhwQdrx9P2x/fuK1ZvHTvYDQZYB+uQq9/SvF9qRI8EBP2Yhun8NvzRKvLXg9u8+GKGGWfZcqguDZj9JPrw0BMn8JrKGK2TQxi6spUvz2nk//oFYcteAi0He4uJ36+0iPaOSlj5+bLDkXNnvLs2FJr+2i8EYgDhdJpJrNIMOGjtwUGUD5yKUZIFmvHF2V2djte1sokCbtXGZPVGSsp/4xXlXr4SDaW/4WPVGO9AkaTW/mqc3vb1O5DSsLK6K1D7Ye1ME/sFFFBirSENwd3Y3CdH4G26bgwrDFrlH145qngGLSutkQuQN6b7FHR2y/u0wD25x+qVA82ld7CIOqWxh96VWc7qtkA14=
Content-ID: <987382ACB00AB249899D5BFDB1E53FBD@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5353
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT030.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(376002)(2980300002)(199004)(189003)(51444003)(14454004)(6246003)(386003)(81156014)(86362001)(6512007)(81166006)(102836004)(6116002)(3846002)(478600001)(23726003)(76176011)(76130400001)(6636002)(336012)(25786009)(26826003)(8676002)(126002)(2906002)(46406003)(476003)(11346002)(8746002)(6862004)(446003)(8936002)(229853002)(97756001)(99286004)(47776003)(4326008)(36906005)(33656002)(22756006)(186003)(70586007)(1076003)(316002)(5660300002)(66066001)(70206006)(58126008)(305945005)(486006)(63370400001)(63350400001)(54906003)(6506007)(50466002)(26005)(7736002)(6486002)(356004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4946;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 2919d27b-6109-4c90-667f-08d720e04ecd
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR08MB4946; 
NoDisclaimer: True
X-Forefront-PRVS: 01294F875B
X-Microsoft-Antispam-Message-Info: EVGkmtSgeq7wkl6XjG+qXyRnjFAPkyll533Ey0pWkkm0ByWcdALwXNUXrTetWpJA43ccecew88YF0nZVWeMSxXDTUSkS06miAvEYPUDKyzCHVBKTwaXfAkqvvo3cOmxyjcBd0MEHWFLhEm6LDwjPT3jpr9CcmCJAmgCxISgqhwRXt8ZDo08yH2IUyLM0DTZ0dvk/dt1t548otedEGyT0DE05TQ+IJzRqbdw9NDEOizftdD3Le8DfJ8tbvF0oXJ1ytuHWqayg8HVmxH/xz2DVRTviX7lvgqUucPZm216uFsO7Gf3Rc7OBaC/iMpN74wJwG/6hBNsLHBurUxZF89gM0cYmJgn/4OyLr9lpNMz7RdfjzPYGL1NAKaUiMWuhuViVlZfNk8u2CvoqqGusy39SqqoFzKVX8cUB8urTI76Xmfo=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 17:53:36.4442 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f926fa98-5c17-4a57-ce5a-08d720e054e3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_105342_704603_933465F7 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.75 listed in list.dnswl.org]
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
 Andrey Ryabinin <aryabinin@virtuozzo.com>, nd <nd@arm.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 05:03:24PM +0100, Mark Rutland wrote:
> On Wed, Aug 14, 2019 at 04:57:11PM +0100, Will Deacon wrote:
> > On Wed, Aug 14, 2019 at 04:20:18PM +0100, Mark Rutland wrote:
> > > On Wed, Aug 07, 2019 at 04:55:15PM +0100, Steve Capper wrote:
> > > > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > > > index b2400f9c1213..2b7db0d41498 100644
> > > > --- a/arch/arm64/Makefile
> > > > +++ b/arch/arm64/Makefile
> > > > @@ -126,14 +126,6 @@ KBUILD_CFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
> > > >  KBUILD_CPPFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
> > > >  KBUILD_AFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
> > > >  
> > > > -# KASAN_SHADOW_OFFSET = VA_START + (1 << (VA_BITS - KASAN_SHADOW_SCALE_SHIFT))
> > > > -#				 - (1 << (64 - KASAN_SHADOW_SCALE_SHIFT))
> > > > -# in 32-bit arithmetic
> > > > -KASAN_SHADOW_OFFSET := $(shell printf "0x%08x00000000\n" $$(( \
> > > > -	(0xffffffff & (-1 << ($(CONFIG_ARM64_VA_BITS) - 1 - 32))) \
> > > > -	+ (1 << ($(CONFIG_ARM64_VA_BITS) - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) \
> > > > -	- (1 << (64 - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) )) )
> > > > -
> > > >  export	TEXT_OFFSET GZFLAGS
> > > >  
> > > >  core-y		+= arch/arm64/kernel/ arch/arm64/mm/
> > > 
> > > I've just spotted this breaks build using CONFIG_KASAN_SW_TAGS &&
> > > CONFIG_KASAN_INLINE, as scripts/Makefile.kasan only propagates
> > > CONFIG_KASAN_SHADOW_OFFSET into KASAN_SHADOW_OFFSET when
> > > CONFIG_KASAN_GENERIC is selected, but consumes KASAN_SHADOW_OFFSET
> > > regardless.
> > > 
> > > I think that's by accident rather than by design, but to
> > > minimize/localize the fixup, how about the below? I can send a cleanup
> > > patch for scripts/Makefile.kasan later.
> > 
> > How much work is that? I've dropped this stuff from -next for now, so we
> > have time to fix it properly as long as it's not going to take weeks.
> 
> I wrote it first, so no effort; patch below.
> 
> Andrey, would you be happy with this?
> 
> Thanks,
> Mark.

FWIW, this one worked well for me too (52-bit VA runtime, SW TAGS +
GENERIC both inlined).

Tested-by: Steve Capper <steve.capper@arm.com>

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
