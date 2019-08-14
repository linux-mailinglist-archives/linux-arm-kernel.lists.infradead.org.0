Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A5C8D698
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugncoR24Us4IwISVnGIce2zzQnttF/9wayEf/CgiSmw=; b=Z2vShmFKswvyiY
	TLuAsHgepHaMZ8prWPexqU8D8mrEdfOAYa0jJdx77RIAtR/UUApVAqMdEjc5uYJOZ3ynpSDxr5WxU
	i6nxZXs+4vhiV5IghFM0+qfT7hNgFT9UBNXglyc8gcsMbo1uH21ONumLDD+dfHfdkgbRs+9hzKxNi
	wFgVcSfvSlrQy9YgZr/MOTLdd6r06La7oDvwLU7gr71cB9UNz0IqBhJ52PND1erxMqn4l1gbX43/6
	ICi/AMd+ppXrzRjunyxSxkEoFQoQ8I4086xxV+Wn/mSuPq6nR5RGrDL5D7HQg2I+AYFB9R2/aDrex
	GW82IGJW6JRFSfcnrugQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuct-0000an-Fv; Wed, 14 Aug 2019 14:51:47 +0000
Received: from mail-eopbgr00068.outbound.protection.outlook.com ([40.107.0.68]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuci-0000a1-Hp
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:51:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yndoc3kOnLU0073fIA4UQOwUBzLuiNC/SBlMD7aiqgo=;
 b=p8lNHO8vApfw9S6rK5E8+h/obKManwSrH58yhE8bVYX4OkvxY1FKgaq/cIOkz+nGWkQmydQjGUFFV5wMbgjtNilA2SORoM7Ln7ZifU07mc9s8AJiJy3w34DcNTWw/fhxZl/fQu0ZCkDC0frNB1zNYikDSoS2TmBPD77cVtALzZA=
Received: from DB6PR0801CA0043.eurprd08.prod.outlook.com (2603:10a6:4:2b::11)
 by VI1PR0801MB1853.eurprd08.prod.outlook.com (2603:10a6:800:5a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.13; Wed, 14 Aug
 2019 14:51:30 +0000
Received: from DB5EUR03FT031.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::204) by DB6PR0801CA0043.outlook.office365.com
 (2603:10a6:4:2b::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.13 via Frontend
 Transport; Wed, 14 Aug 2019 14:51:30 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT031.mail.protection.outlook.com (10.152.20.142) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.18 via Frontend Transport; Wed, 14 Aug 2019 14:51:28 +0000
Received: ("Tessian outbound 40a263b748b4:v26");
 Wed, 14 Aug 2019 14:51:28 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ee504a690902edb8
X-CR-MTA-TID: 64aa7808
Received: from b8e9777af518.2 (cr-mta-lb-1.cr-mta-net [104.47.5.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 E563A78E-8D7C-467F-A848-5265B1E5A329.1; 
 Wed, 14 Aug 2019 14:51:23 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2057.outbound.protection.outlook.com [104.47.5.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b8e9777af518.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 14 Aug 2019 14:51:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=brjawiY8S+/IbfdRxQsC02rk7K6UxCR5PSzICHdZGNIR6VKPfiWDaonxyQ7OPV/A3eE14BPTfsg22TZ4jZCicvDw+DaC2cxj0gXlcvo78vi2YiKShYu3sFLaNuqrDwCCXXJAU3KSVXWPjUWVTU5Dz4VGd0RWoBcqPh3gPajMW4vfv8LgXkFUa93Atfb9HPZPAEIBCgEMP5n3BARlBt/89OX5+YlltWWk/jBf8gUpxw+LfpHxgPLlFBE/FfdTTf9j8XH/V04vMWsQ52GCgw37OX8YB+MASGTMcsiJ/jOkzhi1e4iLAuOC1x/CKzapYZ3TMih7XUU8UK7e/KetAkF3Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yndoc3kOnLU0073fIA4UQOwUBzLuiNC/SBlMD7aiqgo=;
 b=oJYv1chzpWWwPqtBpqy0i6dZ3eQ01wUqbgdL0y9k25TEgqIVjh6YB/4Bqq9sctWBEDGOdJLrXx2FqqAJ+Cl3BeTbDqE2HHdh0Md6WGXOnZ6gw7nqAwD/MpSG5VHydtiIEgcGNi7Nj3AqsewNzioqX1tdYiB4rFRsoVMALRq6nKXH2foFNY5+CtQJPQZN2Wu7MZ+hsCI9qkTp9XT+/CcAAVmJlWBe53nwJKc3HIsqqMiY7IfTi0QiqPEv5iMr9tFLrdEyTFq1EmYdhgFBNDGipOJ5ieCbp/wcLHP96xkYLmSXszudp5NKgxUiFpEdz633qXek7tQgcFRIY8wxdCvAHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yndoc3kOnLU0073fIA4UQOwUBzLuiNC/SBlMD7aiqgo=;
 b=p8lNHO8vApfw9S6rK5E8+h/obKManwSrH58yhE8bVYX4OkvxY1FKgaq/cIOkz+nGWkQmydQjGUFFV5wMbgjtNilA2SORoM7Ln7ZifU07mc9s8AJiJy3w34DcNTWw/fhxZl/fQu0ZCkDC0frNB1zNYikDSoS2TmBPD77cVtALzZA=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5481.eurprd08.prod.outlook.com (52.133.240.201) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Wed, 14 Aug 2019 14:51:21 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 14:51:21 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH 2/2] arm64: memory: rename VA_START to PAGE_END
Thread-Topic: [PATCH 2/2] arm64: memory: rename VA_START to PAGE_END
Thread-Index: AQHVUqRLs+m3lHK3LEeYqyRwdQ1wZqb6ui2A
Date: Wed, 14 Aug 2019 14:51:21 +0000
Message-ID: <20190814145119.GA3646@capper-ampere.manchester.arm.com>
References: <20190814132848.24295-1-mark.rutland@arm.com>
 <20190814132848.24295-3-mark.rutland@arm.com>
In-Reply-To: <20190814132848.24295-3-mark.rutland@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0438.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::18) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: b8120470-22ba-4bef-934d-08d720c6e380
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5481; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5481:|VI1PR0801MB1853:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB185309760C0A9AB8E5123C2581AD0@VI1PR0801MB1853.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:1186;OLM:1186;
x-forefront-prvs: 01294F875B
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(346002)(136003)(39860400002)(199004)(189003)(3846002)(446003)(25786009)(86362001)(4744005)(476003)(6512007)(7736002)(14454004)(316002)(11346002)(229853002)(6246003)(8936002)(6862004)(5660300002)(26005)(66066001)(53936002)(256004)(2906002)(54906003)(58126008)(478600001)(6636002)(386003)(6506007)(71190400001)(81166006)(102836004)(186003)(66476007)(64756008)(71200400001)(44832011)(4326008)(6436002)(66946007)(81156014)(99286004)(8676002)(76176011)(6486002)(52116002)(1076003)(6116002)(66556008)(305945005)(33656002)(486006)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5481;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: AEKxaXq3lOAQdwWAfjU4fUJ30Y3cue7c7WhBoJFuFaFJUz7CvVFn+mI6iqX+I+47IddlsdhHUNkY4iZ35aCex41/CpX8H12ySZFLCrPo8v0w3Pc6qWmnmBWv/KFSieDg/wS8GVTc3J2QtQVZXiLvLlqNmvQgxyW20P6edSojR1uWOOcEV0fmKvMZqfST4FK+dOvvjkLiWnb/6WyJkBY1RKaJpDXWCLlZOA6jmdfH5dI/V+PuCNcN6QX0z2sIWS6mS1O9trBb9UpUamYfugKRDIg9IPkFK1JKLUyYNWfXMLyq407z/bAulPiC1sd3HCzxwbPHb46vqzJRl/nCGxRQDavgEb3C5wEA5EJpWJTGs4BQcQkK2hQnBT2GYfkXOC0RgNoFPkAMfy5OchR75Pd1ezNh2vMwAWlv4gqjcKfilrI=
Content-ID: <982E1860DE51B64A8BE6D4C30297A00F@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5481
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT031.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(396003)(376002)(2980300002)(199004)(189003)(6246003)(76176011)(102836004)(14454004)(6862004)(5660300002)(6512007)(3846002)(23726003)(81166006)(229853002)(81156014)(6116002)(86362001)(8936002)(336012)(6636002)(25786009)(76130400001)(2906002)(8676002)(26826003)(46406003)(126002)(476003)(11346002)(446003)(8746002)(97756001)(99286004)(478600001)(316002)(47776003)(33656002)(22756006)(70206006)(4326008)(70586007)(186003)(66066001)(58126008)(63370400001)(63350400001)(1076003)(486006)(54906003)(386003)(6506007)(356004)(26005)(305945005)(50466002)(7736002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1853;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 92181cc6-43de-40f5-b02e-08d720c6df06
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0801MB1853; 
NoDisclaimer: True
X-Forefront-PRVS: 01294F875B
X-Microsoft-Antispam-Message-Info: 5ZLUDbq4++6adwSD8j4D+v7ATo/uPOUmbsIcFXehiduebAZ+/eHrOxY+ZPz4v2HxSLkYu0juyyCgJn7AIsqo4zDyWpJmhh3ZjfPGtHDUYIYi87GQiiRmgRgE2+d6k2hUyl8eaP6Zw0CB79d3pFzHDT43WbKAYRCEQ2Zoid6PVIwPRQ2/78LK02YLUVtAfh3xtsKpv1zaemeNlPfOyuTwdENaoTPEIZLMLONKamcksizY4IAuhdGFKF9EFzp6ONnLUw8DVm4uTmvE+zxotlzCZJhYOfrIPQTPFOfLJa0i/P+8CsXdla7EvGnvwQ4XlttW0us/NA5DRgENrqN1Q/ioG6+YeqyCC5nx5CUOuaCHbwwd8q9BErQJ7IMlSZ7cqVSgH04UenC6f2AJ1FRep9RCS5NIonySiZyWGSoANM05lhA=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 14:51:28.8141 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b8120470-22ba-4bef-934d-08d720c6e380
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1853
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_075136_662795_3D95BBCA 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.68 listed in list.dnswl.org]
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
Cc: Catalin Marinas <Catalin.Marinas@arm.com>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 02:28:48PM +0100, Mark Rutland wrote:
> Prior to commit:
> 
>   14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
> 
> ... VA_START described the start of the TTBR1 address space for a given
> VA size described by VA_BITS, where all kernel mappings began.
> 
> Since that commit, VA_START described a portion midway through the
> address space, where the linear map ends and other kernel mappings
> begin.
> 
> To avoid confusion, let's rename VA_START to PAGE_END, making it clear
> that it's not the start of the TTBR1 address space and implying that
> it's related to PAGE_OFFSET. Comments and other mnemonics are updated
> accordingly, along with a typo fix in the decription of VMEMMAP_SIZE.
> 
> There should be no functional change as a result of this patch.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Steve Capper <steve.capper@arm.com>
> Cc: Will Deacon <will@kernel.org>

This looks a lot better, and avoids future use of "VA_START", thanks Mark!

Reviewed-by: Steve Capper <steve.capper@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
