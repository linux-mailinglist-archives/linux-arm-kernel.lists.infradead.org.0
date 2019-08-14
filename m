Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8236F8D7C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 18:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDxydSnnl3nnwRgbqR8XRRHftViJdeThTAbbaa8Xn5g=; b=WKYwb3O1Zgh++3
	ydmqPZ4YWKgL3rYELWAtLtg8GALZXH/qjhaPnFzrvjeJOliAxBy0027OYTsJMUznbDV9IfmukvCGr
	T2VN+BLEPjPwdACt+xWMj5lP9g+MaLfu4QTJ/rL7cOyHeu1epXfWJcHF3GBsNh6wSskUlgS4R0BG5
	NwkUXIzPi1z0Q8fmAH9aq5uZ4FHiDBCMU5cRV1CnvGWtCDyHGUHm+68HH0HwT7LdXRhoKPRQ6bIc0
	cQZDBaVLm6S7TMSJlRcRoi5EUy2W4i5lFnvUDXTesCZwcAG0WI/NC3Zu80/Aexrw6MUYqk9D+hHL0
	X8MZpxy7tdxmawgk6SLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxvvP-0004Ke-N2; Wed, 14 Aug 2019 16:14:59 +0000
Received: from mail-eopbgr130040.outbound.protection.outlook.com
 ([40.107.13.40] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxvvE-0004Jy-Ad
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 16:14:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9O6AwhCnxNDBeQSrFQOKGeUwEQ5eH2+X0xIv0Bb8+KQ=;
 b=97iIJfmo97nYg0TOUSO7fpl8IkgBiwRXeMOZBPj1Khn1IlvfVQ+ngNC9xbF7l3ssTY5cKz4jhkcw2fHSH+UIq69+7QVUWnF3L9dDn5G9bT7lJJHdTk/gs+DILcQxgRgpG/Q/MjzLMXapEzmSqT35gHjLDZAJcSUZv5upDdFNCMw=
Received: from DB6PR0802CA0033.eurprd08.prod.outlook.com (10.172.252.147) by
 AM0PR08MB4946.eurprd08.prod.outlook.com (10.255.31.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Wed, 14 Aug 2019 16:14:41 +0000
Received: from DB5EUR03FT044.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::206) by DB6PR0802CA0033.outlook.office365.com
 (2603:10a6:4:a3::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.18 via Frontend
 Transport; Wed, 14 Aug 2019 16:14:41 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT044.mail.protection.outlook.com (10.152.21.167) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2178.16 via Frontend Transport; Wed, 14 Aug 2019 16:14:39 +0000
Received: ("Tessian outbound 71602e13cd49:v26");
 Wed, 14 Aug 2019 16:14:37 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6417961f639f0177
X-CR-MTA-TID: 64aa7808
Received: from 27d89bb220e0.1 (cr-mta-lb-1.cr-mta-net [104.47.4.53])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 1E6E34AB-27A7-4D30-9C4D-2AFF92BF0E66.1; 
 Wed, 14 Aug 2019 16:14:32 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur02lp2053.outbound.protection.outlook.com [104.47.4.53])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 27d89bb220e0.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 14 Aug 2019 16:14:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BuGYTD6htfmny2lEsuuNYZp8z6FNc0TVfbfsM/F7e54Fs3CJWcVdexbKKmMISqwZZdBCc8cn1/PrVbHkmM+aHFYkDoLSx/3m/+OLHM9UvTOPLs+mQ0KDzfm7jNNv0bpSnTvSTpapXVtSC/qQQOSl9bruAXotwUpU5ctIKIxSbbeCrx/8myTtIydZibqSylJojZS/FDdKYv7Uwa1B6rNy5Nlu3rPtQhTpaQvEAsxDC5m3d1dSJq8IQuKpiHyx6JM+FL95p0qO6bUC1AF0rtistq+KsyEUnPNlAy87LJb33guIwgbzMHy7QI0QSxO9bH2/RXcjBuGy3do/tj+qE7h/5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9O6AwhCnxNDBeQSrFQOKGeUwEQ5eH2+X0xIv0Bb8+KQ=;
 b=VCtGj/utmZ1VJ3EBdXcxkq218aOKw4kqi3rPLZEerelrOrZGHzPZvT0y650XjAmTfBnTC6dnZb3KPp+ngTOSUwIX70EJds84it9b2zzRW5tLGLJ9pIia8OIYu1lnjJRKvUwc9bz4DvnbQYmGJe2Ml7/+Puj8zi+RSxQfQ76iUnSLqMwGmMxEWhYuC+VUB0s12y/aE/3NRuZ6mDnIkOm7wkYZqstivG7SIct47SdSnUYEKWaNk5W4D0wrkitoEwffyw5MY7tpSuLhYT/Ltl2KiQDIcjlgfdXmN0I9pQzZUvJmITJ4iu3gvb04AiwQFhC14/VXyJKbG1fEDKLeqnyfnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9O6AwhCnxNDBeQSrFQOKGeUwEQ5eH2+X0xIv0Bb8+KQ=;
 b=97iIJfmo97nYg0TOUSO7fpl8IkgBiwRXeMOZBPj1Khn1IlvfVQ+ngNC9xbF7l3ssTY5cKz4jhkcw2fHSH+UIq69+7QVUWnF3L9dDn5G9bT7lJJHdTk/gs+DILcQxgRgpG/Q/MjzLMXapEzmSqT35gHjLDZAJcSUZv5upDdFNCMw=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5162.eurprd08.prod.outlook.com (10.255.19.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Wed, 14 Aug 2019 16:14:29 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 16:14:29 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH] arm64: fix CONFIG_KASAN_SW_TAGS && CONFIG_KASAN_INLINE
 (was: Re: [PATCH V5 03/12] arm64: kasan: Switch to using) KASAN_SHADOW_OFFSET
Thread-Topic: [PATCH] arm64: fix CONFIG_KASAN_SW_TAGS && CONFIG_KASAN_INLINE
 (was: Re: [PATCH V5 03/12] arm64: kasan: Switch to using) KASAN_SHADOW_OFFSET
Thread-Index: AQHVUrPR87Jl8IRCOE2i9pzbGg2dt6b64AmA///xP4A=
Date: Wed, 14 Aug 2019 16:14:29 +0000
Message-ID: <20190814161427.GA1893@capper-ampere.manchester.arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190807155524.5112-4-steve.capper@arm.com>
 <20190814152017.GD51963@lakrids.cambridge.arm.com>
 <20190814160713.GA1614@capper-ampere.manchester.arm.com>
In-Reply-To: <20190814160713.GA1614@capper-ampere.manchester.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0442.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::22) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 93385d17-97e8-47ab-fcac-08d720d2822f
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5162; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5162:|AM0PR08MB4946:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB49461C2E1FC84FCF5AE263AD81AD0@AM0PR08MB4946.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 01294F875B
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(346002)(39860400002)(366004)(51444003)(189003)(199004)(8676002)(26005)(186003)(6636002)(81156014)(81166006)(6512007)(66066001)(71190400001)(53936002)(86362001)(486006)(71200400001)(44832011)(4326008)(14444005)(3846002)(229853002)(7736002)(6116002)(256004)(8936002)(6862004)(305945005)(25786009)(6246003)(102836004)(54906003)(6436002)(58126008)(1076003)(6486002)(386003)(6506007)(11346002)(66476007)(66556008)(64756008)(66446008)(316002)(2906002)(476003)(14454004)(33656002)(52116002)(99286004)(5660300002)(478600001)(446003)(66946007)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5162;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: ZSrMlAE1onm+urB7Kkk3NCN97vKaKwMhNfvXOcXZVPDFqB7bugd8Cob5y/NxeRIxQQg89ZVC1L0rOnOYw31tJE6ycelH5Qjqu0H8yYlkhIHVp6XZbvh7PSISrbpZQkm2OsYDyFvWThodoXLbUYEmeB9lVLr9QEeCV8+VHy5Bp32DeAFZaBFqIlEPibECxCo1UNJU91PUTt8xF2rW8yEoxaxjh+yo7T56HP8WniwSIXeICLsdpyVvFPc2CxggTce34kBDFNYa44QctR/OiAYVQDTFtcRBXdiDeB0NAul3etrfwlooA+AaW+GO1SX9FeCIhhm8uU1IiYeZAjDxkFeknPSPF+PtvG4kvP1bQPOwqfL33IAFaNDReDA4Ewa47uWzk0F1PwzNcPuNJBUKKu0KdWrR2KIBMVFxz0lA/4gr3PU=
Content-ID: <5499B8C5CEF1E04ABAF90E883DCB9DCD@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5162
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT044.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(39860400002)(136003)(2980300002)(189003)(199004)(51444003)(14454004)(6246003)(386003)(81156014)(86362001)(6512007)(81166006)(102836004)(6116002)(3846002)(478600001)(23726003)(76176011)(76130400001)(6636002)(336012)(25786009)(26826003)(8676002)(126002)(2906002)(476003)(46406003)(11346002)(8746002)(6862004)(446003)(8936002)(229853002)(97756001)(99286004)(47776003)(4326008)(33656002)(22756006)(70586007)(186003)(1076003)(316002)(5660300002)(66066001)(70206006)(14444005)(58126008)(305945005)(486006)(63370400001)(63350400001)(54906003)(6506007)(50466002)(26005)(7736002)(6486002)(356004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4946;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 15e6a880-216e-4669-1eaf-08d720d27c44
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR08MB4946; 
NoDisclaimer: True
X-Forefront-PRVS: 01294F875B
X-Microsoft-Antispam-Message-Info: vUWF8Tb5Lf2Fna8m7tqUzcBU61Hay9Zsh5ky8GYEuOKGoILzzuuek1VVtXJl+PSL5HwypclR3xNha4QgJ76hC8LN/1bWsbMIhE/GvtDkAqOnAlrnJ+yvW0DPVhqZhKSUA/q4zqIrAPoCOjNynb2Ifex6d9zq1QNhlfzWKZDc4QpNvUGdjNTwwmTS/aWX9sBAVtuesVJRXGaB+o3nzrh9AJWZYSD8ur1fr4EEDdBxCdk4/EO9pD8zrm0W4kHOOCrWtDod1ip0NMRUCeZdUfY9YxGvummZ8Y4F+CAncZqR5mZ6I7Jf/9nhzCMh7U6yMusmOVwwVQJtzfHO1i75PqdpPS0UeqRxnT4i+dRKcR7KTqXtOiGXaOvDurLIbWNk27dr6Z14dbwmGaRLe/ybfhJGIpHEe1QHbWjiSOWeNhsVS+Q=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 16:14:39.5068 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 93385d17-97e8-47ab-fcac-08d720d2822f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_091448_375074_849162AE 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.40 listed in list.dnswl.org]
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

On Wed, Aug 14, 2019 at 05:07:15PM +0100, Steve Capper wrote:
> On Wed, Aug 14, 2019 at 04:20:18PM +0100, Mark Rutland wrote:
> > Hi Steve,
> >
> 
> Hi Mark,
> 
> > On Wed, Aug 07, 2019 at 04:55:15PM +0100, Steve Capper wrote:
> > > +config KASAN_SHADOW_OFFSET
> > > +	hex
> > > +	depends on KASAN
> > > +	default 0xdfffa00000000000 if (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52) && !KASAN_SW_TAGS
> > > +	default 0xdfffd00000000000 if ARM64_VA_BITS_47 && !KASAN_SW_TAGS
> > > +	default 0xdffffe8000000000 if ARM64_VA_BITS_42 && !KASAN_SW_TAGS
> > > +	default 0xdfffffd000000000 if ARM64_VA_BITS_39 && !KASAN_SW_TAGS
> > > +	default 0xdffffffa00000000 if ARM64_VA_BITS_36 && !KASAN_SW_TAGS
> > > +	default 0xefff900000000000 if (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52) && KASAN_SW_TAGS
> > > +	default 0xefffc80000000000 if ARM64_VA_BITS_47 && KASAN_SW_TAGS
> > > +	default 0xeffffe4000000000 if ARM64_VA_BITS_42 && KASAN_SW_TAGS
> > > +	default 0xefffffc800000000 if ARM64_VA_BITS_39 && KASAN_SW_TAGS
> > > +	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
> > > +	default 0xffffffffffffffff
> > > +
> > >  source "arch/arm64/Kconfig.platforms"
> > >  
> > >  menu "Kernel Features"
> > > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > > index b2400f9c1213..2b7db0d41498 100644
> > > --- a/arch/arm64/Makefile
> > > +++ b/arch/arm64/Makefile
> > > @@ -126,14 +126,6 @@ KBUILD_CFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
> > >  KBUILD_CPPFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
> > >  KBUILD_AFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
> > >  
> > > -# KASAN_SHADOW_OFFSET = VA_START + (1 << (VA_BITS - KASAN_SHADOW_SCALE_SHIFT))
> > > -#				 - (1 << (64 - KASAN_SHADOW_SCALE_SHIFT))
> > > -# in 32-bit arithmetic
> > > -KASAN_SHADOW_OFFSET := $(shell printf "0x%08x00000000\n" $$(( \
> > > -	(0xffffffff & (-1 << ($(CONFIG_ARM64_VA_BITS) - 1 - 32))) \
> > > -	+ (1 << ($(CONFIG_ARM64_VA_BITS) - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) \
> > > -	- (1 << (64 - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) )) )
> > > -
> > >  export	TEXT_OFFSET GZFLAGS
> > >  
> > >  core-y		+= arch/arm64/kernel/ arch/arm64/mm/
> > 
> > I've just spotted this breaks build using CONFIG_KASAN_SW_TAGS &&
> > CONFIG_KASAN_INLINE, as scripts/Makefile.kasan only propagates
> > CONFIG_KASAN_SHADOW_OFFSET into KASAN_SHADOW_OFFSET when
> > CONFIG_KASAN_GENERIC is selected, but consumes KASAN_SHADOW_OFFSET
> > regardless.
> > 
> > I think that's by accident rather than by design, but to
> > minimize/localize the fixup, how about the below? I can send a cleanup
> > patch for scripts/Makefile.kasan later.
> > 
> > Build and boot tested with CONFIG_KASAN_{SW_TAGS,GENERIC} and
> > VA_BITS_52 (on a 48-bit VA system).
> > 
> 
> I've tested this with VA_BITS_52 (booted with 52-bit) with inline
> SW_TAGS and generic KASAN.
> 
> FWIW:
> Tested-by: Steve Capper <steve.capper@arm.com>
> Reviewed-by: Steve Capper <steve.capper@arm.com>
> 
> Agreed for this small fix now and a bigger fix in Makefile.kasan later.
>

Apologies for the noise, I didn't notice the thread progress as I was
testing. Will test the improved patch :-).

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
