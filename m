Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0887C50F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDlTzLDU81msL5zuJAU56kQNk+dduZ+fI6h7Ujpf7NU=; b=u+LaofPe3R5xK/
	bzDE0V4LIg1yyRTR9W3fBLGDz96CHJeglGdMF7IIulkqEi6rf1Hz9mW+cBg2yWhBRG/u6lMhG0fns
	l7K3AdHotCdrGv6a7S59iYI9qRKpq7LcVIf7DkB3ELYdLpjimRgGaDMJRLVvORs2Lmsj97IJ8B1gc
	HMoHZAjWTOCaYuh2s9GfcgLS6eLAxaQRjSsyrjC2y8z/ViIz4hP6Z1q9/k3y5nBHEUlXX7rg2DIOa
	bwWHGo5uZ16JnHCQj3ARkKfEM7NxIaJmQTUomdE1h/iJmQWzoGlbvw3GFPj8et/mrugwi3hZX7lV2
	zv6IJQHgYZHd3OXc5IoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hspjp-0004YD-IJ; Wed, 31 Jul 2019 14:37:57 +0000
Received: from mail-eopbgr00072.outbound.protection.outlook.com ([40.107.0.72]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hspji-0004Xd-5q
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tl6rWn8LsL4bvn3WaozDz6Eg/P2ncA5yim6tCNg4q3o=;
 b=cRj2iM9YKtz/6yw27Ha9CaAWXFHd99tvbQbrZAZD9/1AnHdo1Tlqpp8Gt0LTbOZZty9yfXJ+HJ1K1swxijP2iZjx7VfkiF1zFVtrHRlAIwM4Pb2BHS3ytj/zdsRaA8fCvXP6tEltu3BJzTmj72t4qw4i10JgTl3QfvjdUte3iQg=
Received: from VI1PR08CA0160.eurprd08.prod.outlook.com (2603:10a6:800:d1::14)
 by VI1PR0801MB1854.eurprd08.prod.outlook.com (2603:10a6:800:5c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.14; Wed, 31 Jul
 2019 14:37:43 +0000
Received: from VE1EUR03FT043.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::208) by VI1PR08CA0160.outlook.office365.com
 (2603:10a6:800:d1::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.12 via Frontend
 Transport; Wed, 31 Jul 2019 14:37:43 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT043.mail.protection.outlook.com (10.152.19.122) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18 via Frontend Transport; Wed, 31 Jul 2019 14:37:42 +0000
Received: ("Tessian outbound 40a263b748b4:v26");
 Wed, 31 Jul 2019 14:37:40 +0000
X-CR-MTA-TID: 64aa7808
Received: from 1a02873923b9.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.14.58]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 9340A4C3-3A02-4F1E-8D18-4A3DB2739420.1; 
 Wed, 31 Jul 2019 14:37:35 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2058.outbound.protection.outlook.com [104.47.14.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 1a02873923b9.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 31 Jul 2019 14:37:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bYw46Y0flRO9KJlfBUv+JlhGXy24HXM42lC2y01hUWQtfiJ9sJqAhaR4WY6kPNzKw6H3STyhfKdW7DMYYIDIWKSAbrbdAHzDDeu4I9uy0Nj7Wu1imE6Y4ts9YJHZT8W/tVqv/RnzYPYKwWjf/vZqr6byxi49H/9MfUkimSaPQYkrWGlAwXtGlo+nNRhC1yHilGnrTa+1OrmLyn5ybQwYlmMjePPCpGMzbIYrAjbwlGhAmMaTqrPmVceBHrDelm+defmuMjan1n4Gnzd+F80Eub3ZkyhxtCdZB6thJevvJX+xRAoTkF1ECiNCuKS1jv7E0195Y1m/XD4jeyd7UJrBuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2yyV/JbufuPqu7AKQM3hDaz4iSaWXWI8ijGz6u4a4tM=;
 b=Xf97Fk0eLDOqp2sZIkwdSK46W8ucuLXyMUrpaJxWxXFKXR5xRHXFxIo1TWDNfZWlCaU6wMh6DZmjrmDdlMchEwgSsEIAuJHHh39Nvk7S6dCqKjmdifokjusLK2KNtvNh+HfTXG6Ry/L0cX/sC+f8iDAa/TGXXy/5wG0P64UwBjE43pO+3w8heVTWWOlKTAZsae4jDzH+QLlmdoc5i92LcfWakD4/uFlRrkm8VxShQxDA/2mFvUc7usmIrv8+PdlMMuh7jktrdhfLcr7GkBIqviltE6O1crumHDVs0tQ80GH9hwh+VstLmO7PLr4p0CgOPvvcFWV0Q9Ri2POZP1ZfeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2yyV/JbufuPqu7AKQM3hDaz4iSaWXWI8ijGz6u4a4tM=;
 b=HaeWuQT69UlPU94MTt/UrG+z2lD7+tjmD4yMM1lYjlDCvW33JtatzFGEjHWo+c7C16sP+OE+l+PQVYLYHPUbFIcVkA2FOl+MfMRaJI20iX5JBXwhlk/qOG3ziPsGPfoJFqUwAUrqFseZx4uGHBJ0JyVerapFm9LxEBolAdqxoDM=
Received: from DBBPR08MB4678.eurprd08.prod.outlook.com (10.255.78.151) by
 DBBPR08MB4362.eurprd08.prod.outlook.com (20.179.42.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14; Wed, 31 Jul 2019 14:37:34 +0000
Received: from DBBPR08MB4678.eurprd08.prod.outlook.com
 ([fe80::604c:b27f:b6bb:6f96]) by DBBPR08MB4678.eurprd08.prod.outlook.com
 ([fe80::604c:b27f:b6bb:6f96%4]) with mapi id 15.20.2136.010; Wed, 31 Jul 2019
 14:37:34 +0000
From: Guillaume Gardet <Guillaume.Gardet@arm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: RE: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
 exynos5250
Thread-Topic: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
 exynos5250
Thread-Index: AQHVQsPd2Ory/uMusEic8k7RRdTNRabbMAoAgAABPkCAABGsAIAAAMlwgAFzwoCAB/sC4A==
Date: Wed, 31 Jul 2019 14:37:33 +0000
Message-ID: <DBBPR08MB4678D2A9A042269A8934E84183DF0@DBBPR08MB4678.eurprd08.prod.outlook.com>
References: <20190724072008.6272-1-guillaume.gardet@free.fr>
 <20190725083433.6505-1-guillaume.gardet@arm.com>
 <CAJKOXPejSxxH5DJPyEHTt=VEOdVgiXOm1c3MKKir-qRxtDcLLA@mail.gmail.com>
 <DBBPR08MB4678546DF9EE76EE6427DBB783C10@DBBPR08MB4678.eurprd08.prod.outlook.com>
 <CAJKOXPdLd5C0FPwijGwTWW9t46exysdqgeb07txPhp-f_b5DFA@mail.gmail.com>
 <DBBPR08MB46788EBBB3BF3BB8C54FAD1283C10@DBBPR08MB4678.eurprd08.prod.outlook.com>
 <CAJKOXPevC8GN=te7ub5Voq=dfn2HgJBbb=niVdD-gtWDUsq3Ow@mail.gmail.com>
In-Reply-To: <CAJKOXPevC8GN=te7ub5Voq=dfn2HgJBbb=niVdD-gtWDUsq3Ow@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: ad7012e2-0d06-4c66-acc6-62e51f34eeb4.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Guillaume.Gardet@arm.com; 
x-originating-ip: [2a01:e0a:d7:1620:9c42:54a9:8a93:a8f1]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 24a341e2-fbaf-4f79-c166-08d715c4a537
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DBBPR08MB4362; 
X-MS-TrafficTypeDiagnostic: DBBPR08MB4362:|VI1PR0801MB1854:
X-Microsoft-Antispam-PRVS: <VI1PR0801MB1854BCF4FFE2DF07B3B9287A83DF0@VI1PR0801MB1854.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 011579F31F
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(136003)(346002)(376002)(396003)(199004)(189003)(13464003)(66476007)(64756008)(66556008)(99286004)(186003)(6436002)(66946007)(102836004)(478600001)(66446008)(2906002)(52536014)(25786009)(74316002)(7736002)(76176011)(68736007)(305945005)(53546011)(4326008)(7696005)(486006)(6506007)(9686003)(476003)(8676002)(76116006)(46003)(5660300002)(33656002)(55016002)(229853002)(316002)(54906003)(11346002)(6916009)(53936002)(446003)(6246003)(8936002)(14454004)(81156014)(6116002)(81166006)(86362001)(71200400001)(71190400001)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4362;
 H:DBBPR08MB4678.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: 8tL+ypk0khDvv/GVZ4o812012g42vL392cOVMH5C3z3KADYDw9C4kq8P4vXu3u7mZkRebOyyPosS1WWe4jhr1JdnIswKN+iT2L2OQbcpeItXtSxDoRnVux8F1j4/JyxqM4q5Ew+xEL6F50vERFnXmFLt4vx33qhBD3Lc7usxjviB3T/60UVKM0dwYMFHmEGRyWR8iRBJT4Eddn6dh71tSw5HguEqK93I+HOCf4B9hCjmlcJYHsNEhfdepAnVtcmgHFf7DCK9U2FnhJhZ4YXtrGmcT848F2mhM8JrK9fyoopxMPhcacdZJ49Ebn/IXFdTvacAjeM/jaCHu0yyTQkn36jCYoUdUIg7bBjsbdjj+cs96G87Yt21nttycTdjiGsVHaG+VAwiuqxv5j1us/fPi1n2dttCw+qKOwGx7UaW6nU=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4362
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Guillaume.Gardet@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT043.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(376002)(39860400002)(2980300002)(40434004)(189003)(199004)(13464003)(55016002)(5024004)(14444005)(70586007)(14454004)(6506007)(53546011)(9686003)(36906005)(4326008)(316002)(22756006)(356004)(54906003)(26005)(102836004)(47776003)(76176011)(2906002)(50466002)(229853002)(6116002)(33656002)(74316002)(25786009)(126002)(7696005)(7736002)(52536014)(476003)(5660300002)(6246003)(81166006)(305945005)(436003)(8936002)(81156014)(2486003)(23676004)(486006)(11346002)(86362001)(186003)(63350400001)(63370400001)(446003)(478600001)(6862004)(70206006)(76130400001)(8676002)(26826003)(99286004)(336012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1854;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 2c67a4bc-d1ab-4634-f60a-08d715c4a01b
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(710020)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0801MB1854; 
X-Forefront-PRVS: 011579F31F
X-Microsoft-Antispam-Message-Info: ValDXJnLVY6A4+P718vnmX1pKiy286Va5ImYGEDYXlEoZkmiwbHavRVv0Q/jQOWA6z6hsYXF2i22VCVxBP/aqxOza0KO6xzDdEq2VV8ctICI6c69rbxMzvA5ZGJOygZxaVY5OmiJZI+MsSeYGzXwONSWjwUpjcyW1mMuxqAnvtVAXdTyjWHoFyH1RMOdpqtBVJEGGQJKG1zA3wTSf6yuIagfjBJEIdM/6Ee/PEl0qblIcn+be1aPERieBjpztDiWnf2VB7qgDideZm8YGagII9FbPr3Ajkk0E5+yXhHwNqrPzN0P9gJf14N8nyK46lsZGl/Suk0ngelqtyT8Ov5WPJYSpzMg2euDH8dzyxeKT8DgPwoycOfQ15iMiiInNWjuIiWjBBpIQSr00cDXQw1VRsqWCGttDqxudqWW6yLL4Rw=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2019 14:37:42.4541 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 24a341e2-fbaf-4f79-c166-08d715c4a537
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1854
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_073750_276572_0AE44C90 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
> Sent: 26 July 2019 12:40
> To: Guillaume Gardet <Guillaume.Gardet@arm.com>
> Cc: linux-samsung-soc@vger.kernel.org; Kukjin Kim <kgene@kernel.org>;
> linux-arm-kernel@lists.infradead.org
> Subject: Re: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
> exynos5250
>
> On Thu, 25 Jul 2019 at 14:37, Guillaume Gardet <Guillaume.Gardet@arm.com>
> wrote:
> > > No, regulator is not provided. On all Exynos boards Mali uses its
> > > own dedicated regulator (and sometimes additional one). It worked in
> > > your case because the regulator was set as always-on but this is a
> workaround for lack of consumers.
> > > Once there is a consumer, the regulator should not be always-on to
> > > save the energy when not used.
> >
> > I do not have the required info here. Do you have it, or could I skip the
> mali-supply for now?
>
> You can guess from regulator name :)
> For the Arndale, the schematics are saying it is buck4.

Thanks. This is buck4 as well for snow.

On Arndale board, buck4 has a fixed voltage of 1V contrary to snow, which leads to the following error:
[   21.131930] panfrost 11800000.gpu: Cannot set voltage 925000 uV

The following change fixes the previous error:
-                               regulator-min-microvolt = <1000000>;
-                               regulator-max-microvolt = <1000000>;
+                               regulator-min-microvolt = <850000>;
+                               regulator-max-microvolt = <1300000>;

Should I remove arndale enablement for now until this is fixed separately, or could I add this fixup in this patch serie, as it is related?

Regards,
Guillaume


>
> Best regards,
> Krzysztof
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
