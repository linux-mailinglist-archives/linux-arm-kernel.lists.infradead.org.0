Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5720084CFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iy5Rsd0UmusLXCvs7VYbTNSa3RzsEEHZCOYO9D2mXeg=; b=LNx+DsgGid+zLg
	8CUtd1LqRNdvsEtMmHOkGRkLH5lUmqAOfsYbrP2fGBRjins8s5gykXf1cil4lgym9bpdwqFxD0Kyc
	os0ZRjfZu7p9M1iAb7zs9IbjLYQiyk5AXksQV2xvt1pc9cg0tUpEmDmJInGQ5dluZDUv/XJ2z3uD9
	Y5vrOojrrAmZUy5MB/T3leAShTg/exnNRtMWakhqqEHfqVDkcAznve7NfXPvTKjZLxumYWWuyl+Df
	Fo2HnzgmO3QIWwenZ5JTPOnZvzAIwLNSLhJw3ZWVu9EF+wfAC+z4vsz2jhI2SmfmxqJX/1+ihMmtk
	H5lz3rBurQ6KiNDZ5Awg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvM17-0006IE-CF; Wed, 07 Aug 2019 13:30:13 +0000
Received: from mail-eopbgr60075.outbound.protection.outlook.com ([40.107.6.75]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvM0r-000673-61
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=njrYdWc+7g7y1dC1rC0N9uC/0IoXQ0UiL7Hmbz7I0wA=;
 b=FDWSCy0mC0XhlZQvzuzw2+vM7JQTU3Jm1q2bfoaM1lr49V4u3yJqbQvYZKANQ1K1J7yYISN/r/Gp77Wd8ZFkIJkWxRFjTLhloSyMPZWf8kubOA3GslH402mr1VAQLj7yp4Ixwm8dXs4c/1sBoyt4G5Oq8J7JqVxabfkq2xZTslk=
Received: from VI1PR0801CA0086.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::30) by AM6PR08MB4952.eurprd08.prod.outlook.com
 (2603:10a6:20b:e1::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.17; Wed, 7 Aug
 2019 13:29:52 +0000
Received: from VE1EUR03FT056.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::200) by VI1PR0801CA0086.outlook.office365.com
 (2603:10a6:800:7d::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.16 via Frontend
 Transport; Wed, 7 Aug 2019 13:29:51 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT056.mail.protection.outlook.com (10.152.19.28) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18 via Frontend Transport; Wed, 7 Aug 2019 13:29:50 +0000
Received: ("Tessian outbound 6d016ca6b65d:v26");
 Wed, 07 Aug 2019 13:29:46 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 4dfe5a8e804e60bc
X-CR-MTA-TID: 64aa7808
Received: from 8007906426a9.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.9.55]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 0E6C31DC-430F-46A4-ADD5-BCB5A240C81C.1; 
 Wed, 07 Aug 2019 13:29:40 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2055.outbound.protection.outlook.com [104.47.9.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 8007906426a9.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 07 Aug 2019 13:29:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tv4IEErldHHLQIzvPyBizXJIVfvSuO7Nshi2FHO/yG/JODeI5vSYxyuHJfk5IutUFGs/o1OZFaYoUcWdTlleJ2jefuDHpijFheKOOI9BeIqjr/3VGEakCI7jZzXrhaBFreTJXSRJy+z5wHKffVCvYZvYegoqHzExCASy3pb4YATOBUOKlgWu2sFGmPetrMlJu1sO7mqxT2q4QxkbklreDGE+aJ3ugbOI3eNukw5ARnCoYQrLv+5K9hq71YNJ2HY/xyvAiOvDwTM+1XWXlrMVRLVSeU1dcCNsmgYQtiYzphCDgQF9dxk2FhuKFsMy9kbPjjPyWdJtulnDmshs27RRxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=njrYdWc+7g7y1dC1rC0N9uC/0IoXQ0UiL7Hmbz7I0wA=;
 b=W2cwcF5aiK80Rv+WrW18Fk5KOrGdsdALpIyxX41lMNXTupX/B6J7uyxUB57e+jdswG9+YH+lzdwVcWPnsvFIfyEDk8l5SufX7PcTZrU41cl0rgwXwwtXPeahLoxzuwsohUvi+QqLJ5DfADbAAlUFSeET+qUgHhQE1AaQcBZ2WRCLrMUKKNjqVLrtXnP3ZIoZ3hHqMq8RX0kN3TFmQ2zFvqcEf7eAMXmJnq/UV0B3Gh2ugTkeMEC5dqKXhmLdvk8yFApn/dtJXRkdFQ22o+jz0QRUVIfw6KNw1RWfPQFNknbIbUG7ySthn+kDSS/DodXtPx1Epf1Ei0jvsA0XrrGMGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=njrYdWc+7g7y1dC1rC0N9uC/0IoXQ0UiL7Hmbz7I0wA=;
 b=FDWSCy0mC0XhlZQvzuzw2+vM7JQTU3Jm1q2bfoaM1lr49V4u3yJqbQvYZKANQ1K1J7yYISN/r/Gp77Wd8ZFkIJkWxRFjTLhloSyMPZWf8kubOA3GslH402mr1VAQLj7yp4Ixwm8dXs4c/1sBoyt4G5Oq8J7JqVxabfkq2xZTslk=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5147.eurprd08.prod.outlook.com (10.255.17.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 13:29:38 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2136.010; Wed, 7 Aug 2019
 13:29:38 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: Re: [PATCH V4 11/11] docs: arm64: Add layout and 52-bit info to
 memory document
Thread-Topic: [PATCH V4 11/11] docs: arm64: Add layout and 52-bit info to
 memory document
Thread-Index: AQHVRinQqqwQFRazNUqPmc5n7tMFdabuSpwAgAFxYAA=
Date: Wed, 7 Aug 2019 13:29:38 +0000
Message-ID: <20190807132935.GB17012@capper-ampere.manchester.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-12-steve.capper@arm.com>
 <20190806152734.GH30716@arrakis.emea.arm.com>
In-Reply-To: <20190806152734.GH30716@arrakis.emea.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0275.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a1::23) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: ac21ec34-9b7e-4caf-0be9-08d71b3b52fe
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5147; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5147:|AM6PR08MB4952:
X-Microsoft-Antispam-PRVS: <AM6PR08MB4952CB8CD4354463B496487081D40@AM6PR08MB4952.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 01221E3973
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(366004)(39860400002)(189003)(199004)(26005)(102836004)(68736007)(6486002)(6246003)(316002)(58126008)(6436002)(66066001)(53936002)(1076003)(66476007)(66556008)(25786009)(14444005)(99286004)(71200400001)(71190400001)(33656002)(386003)(6506007)(64756008)(54906003)(66446008)(4326008)(66946007)(76176011)(256004)(5660300002)(6512007)(478600001)(8936002)(305945005)(229853002)(6636002)(7736002)(476003)(11346002)(2906002)(486006)(3846002)(14454004)(6116002)(8676002)(6862004)(446003)(81156014)(44832011)(81166006)(186003)(52116002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5147;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: /PEC46NSwTck+1Qd0nvo/dCoMFgHNObwF1sybyhVFao1HNS0ov1ew0oNkVpAYD2Iv0lBlh5HdOybGam1QAP8wrg+tgmg/Nbor5Gwm5ZyFM0wInOiDCyh3sC1GfPN7e2Ht6PGStcHnLZkChP+ADojSNsu2YV3ITF8sQefz55Eu+fuDkVwode5C75yBU0DfWHtnExFlJgYC9PsQaoFbbd171AwsXOfTrgVfXqXCqhEs5dLZ/soz2S5OrAGlAJV5uFfwuVmZ8VXvZncRih2qE7vRLeYljW1/WH1sb7sRyLknMmRo3Hr6AANL5kCC+RCgK4/H5mZ9Y51+21UgmWqTMwFG60+iskZ/cUi771E4EIPNT06vIDROyT82QMz24dWSwxYhDiwoqBWhxr5KU0HEAxHDhiqIi1F4kpXDjjIISIgBsg=
Content-ID: <C1DF8D796387714A8B6BC3604AAD7A66@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5147
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT056.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(346002)(39860400002)(2980300002)(199004)(189003)(8676002)(6862004)(6506007)(86362001)(6246003)(7736002)(4326008)(386003)(14444005)(33656002)(46406003)(102836004)(23726003)(50466002)(1076003)(8746002)(2906002)(8936002)(478600001)(81156014)(97756001)(5660300002)(25786009)(305945005)(14454004)(6116002)(81166006)(58126008)(186003)(70206006)(76130400001)(99286004)(70586007)(6636002)(47776003)(22756006)(486006)(316002)(26826003)(54906003)(476003)(356004)(11346002)(126002)(63350400001)(76176011)(3846002)(6512007)(446003)(66066001)(63370400001)(336012)(6486002)(26005)(229853002)(36906005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB4952;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: b99a008b-8d8c-4f53-400c-08d71b3b4bb7
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM6PR08MB4952; 
NoDisclaimer: True
X-Forefront-PRVS: 01221E3973
X-Microsoft-Antispam-Message-Info: aUccr1+7h7FZpfAb93vd5odTFLTJjLkhKgKBz11sXuEX9F/DaWK86+gTC+9Wh85uvy6gobzdyKJXnDCBTgJIr+iSN9QCUvPkPRB6thKTkaQcy12usvfMaQLc4JOnM1WSL+T7ZguKUd1jASsjp53xJOn7ey03xx94E052CHPA0LM3SjoMrQq4E6kgKfh50JganUNMpNADCP8ADMF3ta5HcfGewqgiyeKj9XwevvV2FGpjLEuHmCkLaDpQQf6o+XvfKDkQR3GE5QTYOsQWvnuzHwW0KgJdaBBLfhqlsBrwHv7wQLUJhTrk6QFIJkH2fAUt6g6xx9ojdzkufFcKv6FTqYF5ZbF3jBOd9Ot8pk3N6ByNmqWbo++KOBRWqSFhxJNb9/FPA4tRgWjKv6SVplmM99zmTIQHtdnFLVVA6l8iKN0=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2019 13:29:50.4304 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ac21ec34-9b7e-4caf-0be9-08d71b3b52fe
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4952
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_062957_229230_EBA0551A 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "maz@kernel.org" <maz@kernel.org>, "bhsharma@redhat.com" <bhsharma@redhat.com>,
 nd <nd@arm.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 04:27:34PM +0100, Catalin Marinas wrote:
> On Mon, Jul 29, 2019 at 05:21:17PM +0100, Steve Capper wrote:
> > +AArch64 Linux memory layout with 4KB pages + 4 levels (48-bit)::
> >  
> >    Start			End			Size		Use
> >    -----------------------------------------------------------------------
> >    0000000000000000	0000ffffffffffff	 256TB		user
> > -  ffff000000000000	ffffffffffffffff	 256TB		kernel
> > -
> > -
> > -AArch64 Linux memory layout with 64KB pages + 2 levels::
> > +  ffff000000000000	ffff7fffffffffff	 128TB		kernel logical memory map
> > +  ffff800000000000	ffff9fffffffffff	  32TB		kasan shadow region
> > +  ffffa00000000000	ffffa00007ffffff	 128MB		bpf jit region
> > +  ffffa00008000000	ffffa0000fffffff	 128MB		modules
> > +  ffffa00010000000	fffffdffbffeffff	 ~93TB		vmalloc
> > +  fffffdffbfff0000	fffffdfffe5f8fff	~998MB		[guard region]
> > +  fffffdfffe5f9000	fffffdfffe9fffff	4124KB		fixed mappings
> > +  fffffdfffea00000	fffffdfffebfffff	   2MB		[guard region]
> > +  fffffdfffec00000	fffffdffffbfffff	  16MB		PCI I/O space
> > +  fffffdffffc00000	fffffdffffdfffff	   2MB		[guard region]
> > +  fffffdffffe00000	ffffffffffdfffff	   2TB		vmemmap
> > +  ffffffffffe00000	ffffffffffffffff	   2MB		[guard region]
> [...]
> > +AArch64 Linux memory layout with 64KB pages + 3 levels (52-bit with HW support)::
> >  
> > -For details of the virtual kernel memory layout please see the kernel
> > -booting log.
> > +  Start			End			Size		Use
> > +  -----------------------------------------------------------------------
> > +  0000000000000000	000fffffffffffff	   4PB		user
> > +  fff0000000000000	fff7ffffffffffff	   2PB		kernel logical memory map
> > +  fff8000000000000	fffd9fffffffffff	1440TB		[gap]
> > +  fffda00000000000	ffff9fffffffffff	 512TB		kasan shadow region
> > +  ffffa00000000000	ffffa00007ffffff	 128MB		bpf jit region
> > +  ffffa00008000000	ffffa0000fffffff	 128MB		modules
> > +  ffffa00010000000	fffff81ffffeffff	 ~88TB		vmalloc
> > +  fffff81fffff0000	fffffc1ffe58ffff	  ~3TB		[guard region]
> > +  fffffc1ffe590000	fffffc1ffe9fffff	4544KB		fixed mappings
> > +  fffffc1ffea00000	fffffc1ffebfffff	   2MB		[guard region]
> > +  fffffc1ffec00000	fffffc1fffbfffff	  16MB		PCI I/O space
> > +  fffffc1fffc00000	fffffc1fffdfffff	   2MB		[guard region]
> > +  fffffc1fffe00000	ffffffffffdfffff	3968GB		vmemmap
> > +  ffffffffffe00000	ffffffffffffffff	   2MB		[guard region]
> 
> Since we risk getting these out of sync, I'd rather only maintain two
> entries: defconfig (4K pages, 48-bit VA) and the largest (64K pages,
> 52-bit with HW support).
> 

Sure thing, I've cut down the number of tables to two.

> 
> > +52-bit VA support in the kernel
> > +-------------------------------
> > +If the ARMv8.2-LVA optional feature is present, and we are running
> > +with a 64KB page size; then it is possible to use 52-bits of address
> > +space for both userspace and kernel addresses. However, any kernel
> > +binary that supports 52-bit must also be able to fall back to 48-bit
> > +at early boot time if the hardware feature is not present.
> > +
> > +This fallback mechanism necessitates the kernel .text to be in the
> > +higher addresses s.t. they are invariant to 48/52-bti VAs. Due to
> 
> The 's.t.' abbreviation always confused me. Could you please change it
> to "so that" in the documentation? (I'm not too bothered about the
> commit logs).

Thanks, I've expanded the acronym.

> 
> Also fix s/bti/bit/.

And fixed the typo.

> 
> Otherwise:
> 
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
>

Many thanks for going through this series Catalin. Would you like me to post
a V5 of the series?

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
