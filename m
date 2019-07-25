Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5240374D2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 13:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVl6uooHj69W9H8vFpIz34tKbjqihQfNpH8Bt/HXS20=; b=gF03hKcMmiGGle
	EccwSpLzi6F0nB+yIon5/khHT55DNPXflfq1eHobWmbRon+/FZzkJdYDILhxA9vTNfQ1IRJ8+3UDr
	mGGcSgAKf6nJMhG8SKANRv9IRhYFNGe19yxsjAd2JlYgbZb6f3ACdZYs/lOcwJMPpu81j0XjI+Opk
	HOgOHMrgMbNxybstgT3sVeZTO95KVvwRvFPkScucotwnaOUwIXoZxFfG8qh851uEH4PVhp/+XiQoy
	O4SeihpMb/KGDgpCeoamaEAyvUz/4ennzZgHDpHS+VbRNoecbym614Q+Dd2xokSGFgVhfyDkdv/wH
	wTOa0eedb4vsQFg0C1Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqc2S-0005W0-Iv; Thu, 25 Jul 2019 11:36:00 +0000
Received: from mail-eopbgr140058.outbound.protection.outlook.com
 ([40.107.14.58] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqc2I-0005Ui-QT
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 11:35:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vPLPZHbswebneZpYR7tUOaXhakSlgF8HIGmqvp3+a9Y=;
 b=VgHoPOW3P41m3qJWEmTv0DR5UlmPDUNKCyS/cTU+pfLP7+oOCr7hsi4mD1ibL7wkmpa2x2Fzf8LM4GNYilDN2poFw5beGtzMyVzieSO1mx5V0oVq4DdlBnM6TnyVjmk3KfV9fxfWaFymO4K1PpZLageTy+J3DKXjSBkCwNX1mxQ=
Received: from DB6PR0801CA0056.eurprd08.prod.outlook.com (2603:10a6:4:2b::24)
 by HE1PR0801MB1852.eurprd08.prod.outlook.com (2603:10a6:3:7c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2115.10; Thu, 25 Jul
 2019 11:35:41 +0000
Received: from DB5EUR03FT063.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::200) by DB6PR0801CA0056.outlook.office365.com
 (2603:10a6:4:2b::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2094.12 via Frontend
 Transport; Thu, 25 Jul 2019 11:35:41 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT063.mail.protection.outlook.com (10.152.20.209) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Thu, 25 Jul 2019 11:35:40 +0000
Received: ("Tessian outbound 1e6e633a5b56:v26");
 Thu, 25 Jul 2019 11:35:39 +0000
X-CR-MTA-TID: 64aa7808
Received: from 586fe86e435c.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.4.57]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 37EA1FD9-D6C1-4EF1-85C3-0BA5AA661F31.1; 
 Thu, 25 Jul 2019 11:35:34 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur02lp2057.outbound.protection.outlook.com [104.47.4.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 586fe86e435c.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 25 Jul 2019 11:35:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LbwLIH7xwrSaAjFar9s1lbn/XE+PB6aPOdnuDvYJQtLc8/aJKRfzLBLA/fkV5JxkDRNGSba41JkxrqeKVoxSsZNLHCko6D3pXYYgZAdwyQAdwKpR/bIAcryG6jcS7ufAeURYqi7Xp2z1G7GOyfC04Fx6Suppt+KN/phyejN+j0DuWtl1P2XqFJ6X25jGofIvszhrN+LdeAYOwD6t0u2eZ18KXuyI1ZJrzvvEwwUn3mF2ETctLLTyajfl60BeNM5Tl3QXhb6HLynxQPlc1WYxFEmYnkyA9TjW4iPhQ+lqkKeP2sJ8yhJC7UmLaMns9a+xNErBm57XXtjQP1XdBvUhng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tlaojCevQ+oD0BSnnu8LsnmbYk/RnABLQb+DuWJMqIM=;
 b=nawg+5ftOB0vRUL3TXhJHXsIaiL2IrN0BsVpl8gXW9ergvcxegn0pCUXlZl21Og9/62Thoi0Q2qnaQlP24VtS+wZlkCWDyyEfc38aZFuPmohrou5ZVZE9DF/9hss5K6oUfSz2IQ8ygrc4rKr7QULgSivswEy4qxMf3zDCIT1ZrJgas5KbidxqfkMwEyVS6HWNCJ/EDoq/BLVi1JAfEcHVprGwu0Btl1QZxrV3RSypoSFpgeQyq98Nf30nKBZJRCrUszYzgafNBEOmM4SU6jO6zVyz75q3NMAcsbj0jmiQthhh54EZyaBKLFGes0pIoh6Y+mzhuRpEYdCbikg8Fzk3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tlaojCevQ+oD0BSnnu8LsnmbYk/RnABLQb+DuWJMqIM=;
 b=X6rfyIU8QkwqE5g2Rc2f26Z1XKm1zKBEwPyfSsQUfrXvxw5VzoxLQh2WxaS4kQFRHLPfN2Inktll8sl7R5EcfNNwwTwKNWBj9QNVfZdCiVS+hdFerlO6IMrnVcFZk0uNnWmuaMqAWaaRN+I6VemUE1gm+FwrUc0QJe5IV6bbCX0=
Received: from DBBPR08MB4678.eurprd08.prod.outlook.com (10.255.78.151) by
 DBBPR08MB4394.eurprd08.prod.outlook.com (20.179.42.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Thu, 25 Jul 2019 11:35:33 +0000
Received: from DBBPR08MB4678.eurprd08.prod.outlook.com
 ([fe80::604c:b27f:b6bb:6f96]) by DBBPR08MB4678.eurprd08.prod.outlook.com
 ([fe80::604c:b27f:b6bb:6f96%4]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 11:35:33 +0000
From: Guillaume Gardet <Guillaume.Gardet@arm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: RE: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
 exynos5250
Thread-Topic: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
 exynos5250
Thread-Index: AQHVQsPd2Ory/uMusEic8k7RRdTNRabbMAoAgAABPkA=
Date: Thu, 25 Jul 2019 11:35:33 +0000
Message-ID: <DBBPR08MB4678546DF9EE76EE6427DBB783C10@DBBPR08MB4678.eurprd08.prod.outlook.com>
References: <20190724072008.6272-1-guillaume.gardet@free.fr>
 <20190725083433.6505-1-guillaume.gardet@arm.com>
 <CAJKOXPejSxxH5DJPyEHTt=VEOdVgiXOm1c3MKKir-qRxtDcLLA@mail.gmail.com>
In-Reply-To: <CAJKOXPejSxxH5DJPyEHTt=VEOdVgiXOm1c3MKKir-qRxtDcLLA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 04d9e3e1-5b5d-4148-95e4-48c8e4e62f7d.0
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Guillaume.Gardet@arm.com; 
x-originating-ip: [2a01:e0a:d7:1620:a088:a1e8:d605:49de]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: ab59baa3-84f8-4bb8-1afb-08d710f43883
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DBBPR08MB4394; 
X-MS-TrafficTypeDiagnostic: DBBPR08MB4394:|HE1PR0801MB1852:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <HE1PR0801MB1852FE26D7755143650713FF83C10@HE1PR0801MB1852.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0109D382B0
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(376002)(39860400002)(346002)(199004)(189003)(13464003)(11346002)(86362001)(5660300002)(102836004)(476003)(8936002)(81166006)(81156014)(46003)(71200400001)(71190400001)(7736002)(53936002)(25786009)(305945005)(9686003)(74316002)(8676002)(486006)(446003)(6436002)(6916009)(53546011)(6306002)(14444005)(6506007)(68736007)(186003)(229853002)(55016002)(99286004)(316002)(966005)(478600001)(54906003)(76116006)(64756008)(66946007)(66446008)(52536014)(6116002)(76176011)(7696005)(66476007)(6246003)(66556008)(2906002)(256004)(33656002)(4326008)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4394;
 H:DBBPR08MB4678.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: TU67XyfN4Qr1U3TqmamOxKamSLfH0zdBcoxgotSr3bl9ckpmOy+jS5pBURv6Vf2PfcZeryDPVP70CizcLQWNb33tMSkNU5Zh45jJeJhWIiJFK9WrRr460JH0Aqm6gPK/SGHsya9BYSAd6F4sJcXMdhzKZiTjzlJ5RFYBiynL2tfkaNIyyGupbxn8NOEzzFTjkwjPkSbiEzriDbtPaNy691kI94P5Y2+O4KlRH4vvW1PoI0Uy9jdVsaG6Hom/XjodHmxboK12wiMcmqNj30SMiLRF39mskHryYmY0RRfs5pgx3rXrDKaNGjEayqyLVY2VDplEtNdyPNAgR4K2cIztI7qOMiihk6HMzF22q4tZEgil5DDeXvZugW0DLre7mm0n4ni+zYsrOHjRFljUs9CMhPV0qgDnao88/+GtLSt/V6U=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4394
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Guillaume.Gardet@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT063.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(39860400002)(396003)(2980300002)(199004)(189003)(40434004)(13464003)(54906003)(86362001)(5660300002)(25786009)(81156014)(8936002)(81166006)(52536014)(7696005)(23676004)(478600001)(2486003)(76176011)(14454004)(102836004)(47776003)(316002)(33656002)(966005)(70586007)(70206006)(99286004)(76130400001)(356004)(26005)(2906002)(26826003)(6506007)(6116002)(305945005)(6246003)(7736002)(186003)(22756006)(446003)(55016002)(53546011)(74316002)(6306002)(9686003)(14444005)(486006)(5024004)(476003)(11346002)(336012)(229853002)(50466002)(4326008)(436003)(126002)(63350400001)(6862004)(8676002)(63370400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1852;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 158996c7-8bfc-4177-a636-08d710f43454
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:HE1PR0801MB1852; 
X-Forefront-PRVS: 0109D382B0
X-Microsoft-Antispam-Message-Info: 7WW9GdjO3gjK6pTkOCg9VibhqfdMbXV/saE5BptxcIkZ3D/sCvx8R9zEOGshxcDLcrn3Q0AgNUEVT6gLPdTINavquKeuf+gewhndPq4qTSoDNF8wsiSZJ0SO7b7eCW/w3aCAfPmv0aNYiSA73Eowsl6+LUr/R/kdpMaoSVKWIwbDDtG6hkIelC6gbzB8zD7sdPDI0LOwkyt/Q9BPTrb5x9NincF8uBgxMbj2P2zRoMRPbun73OkHDbVgYXG4PQs3+E24oVnc7rH9Z+NBsc4jbBQ7/jSsOcMmtjB+znICY27IpkrZ9iF/ddsl0IMPYJah/l7QkVwT3GImyOsz2Te3OLgqLd31MkYj1UT3kfprtf3GyxqgoPN9gcwiMB983uly1DN+0p8n/HyiLEH4iyDw2n7/jFcFNrp7y0W19tTgMN4=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2019 11:35:40.1784 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ab59baa3-84f8-4bb8-1afb-08d710f43883
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1852
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_043551_074701_A0F36AED 
X-CRM114-Status: GOOD (  24.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: 25 July 2019 13:19
> To: Guillaume Gardet <Guillaume.Gardet@arm.com>
> Cc: linux-samsung-soc@vger.kernel.org; Kukjin Kim <kgene@kernel.org>; linux-
> arm-kernel@lists.infradead.org
> Subject: Re: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
> exynos5250
>
> On Thu, 25 Jul 2019 at 10:34, Guillaume <guillaume.gardet@arm.com> wrote:
> >
> > From: Guillaume GARDET <guillaume.gardet@arm.com>
> >
> > Add nodes for GPU (Mali T604) to Exynos5250.
> > Tested with kmscube and glmark2-es2-drm on Chromebook snow.
> > Load tested on arndale board.
> >
> > Signed-off-by: Guillaume GARDET <guillaume.gardet@arm.com>
> >
> > Cc: Kukjin Kim <kgene@kernel.org>
> > Cc: Krzysztof Kozlowski <krzk@kernel.org>
> > Cc: linux-arm-kernel@lists.infradead.org
> > ---
> > V2 changes:
> >   * move mali node as /soc sub-node
> >   * move gpu_opp_table as mali sub-node
> >   * minor style updates
> >   * test on arndale board
> >   * enable by default
>
> I was not specific enough. It can stay disabled in the DTSI because not all
> resources are provided. The board DTSes (all or ones which are
> tested) will enable it and provide missing resources - mali-supply.

I think all resources are provided, since no mali-supply property is needed here.
So, I can either enable it by default for all exynos5250 platforms there, or I can enable it only for Arndale board and Chromebook snow. What do you prefer?

> Just like:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f
> 0a6208b90bdd44f48f5718c8bb0eb1e763d14c0
>
> >   * add dt bindings, in a separate patch
>
> Put the bindings before DTS change.

Yes, makes sense.

>
> >
> >  arch/arm/boot/dts/exynos5250.dtsi | 47
> > +++++++++++++++++++++++++++++++
> >  1 file changed, 47 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/exynos5250.dtsi
> > b/arch/arm/boot/dts/exynos5250.dtsi
> > index d5e0392b409e..f7f34d469bde 100644
> > --- a/arch/arm/boot/dts/exynos5250.dtsi
> > +++ b/arch/arm/boot/dts/exynos5250.dtsi
> > @@ -328,6 +328,52 @@
> >                         iommus = <&sysmmu_rotator>;
> >                 };
> >
> > +               mali: gpu@11800000 {
> > +                       compatible = "samsung,exynos5250-mali", "arm,mali-t604";
> > +                       reg = <0x11800000 0x5000>;
> > +                       interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
> > +                                    <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> > +                                    <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> > +                       interrupt-names = "job", "mmu", "gpu";
> > +                       clocks = <&clock CLK_G3D>;
> > +                       clock-names = "g3d";
>
> According to bindings this is not proper clock name. I wonder why it was
> working... it seems the driver expects first clock to be always the core clock.

Yes, it works, because 1st clock is assumed to be the core clock.
Clock names are optional and could be omitted as in https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/rk3288.dtsi?h=v5.3-rc1#n1284
Not sure if it would be better to rename it to 'core', or  just skip it? Any opinion?

Thanks,
Guillaume

>
> Best regards,
> Krzysztof
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
