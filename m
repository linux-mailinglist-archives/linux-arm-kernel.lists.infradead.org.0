Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8388D69C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbxU25BUsu6LzW3gl883TzMYiID+1/d9PVZYnlYBrVw=; b=gkYlq4ffuiprE+
	ZtPi8wgbhpfH+P26Dz7qSjYao8CqHpx0egd5t1P+f3rrU8GA2Xg0dXU5GnLq1shtVotUulUh5xioC
	Efs+XK/xRBBftw8MfacDVyg95R3JInv0MpHPTNtrb3fPpU0DiZdKyrcPJAMs+roBU/oDAQXNcS1tB
	Cx02/H8hGvVGHhJpk7Gh1XHBZNNvS5lnovPbXSAy3T2jZSuBAvF7ywrfN92ydOcOgMFXNkwmq2Nck
	g2P15z/X+ZxZwH6h5gZp5LmY6FP1ZXavUkleddNZItpsFHxCAsqZFnW9pr3lO9GTaf88TDDmyRs/w
	zw4pwapU0P5wQKKKBjew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxudT-00019g-6W; Wed, 14 Aug 2019 14:52:23 +0000
Received: from mail-eopbgr130072.outbound.protection.outlook.com
 ([40.107.13.72] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxud9-00011u-KN
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:52:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+/NbnY7p2u3c7qcpw+EwyGAaqpRATfhBOFOTgWFXZv8=;
 b=Z2Meh5sNfsl48POKkQJ6UbvzcRpPBa6LwctlYGZKc17UnHuS+yg1mCzXZh+ybnaka3GYkS2BVZ4NpynjARuwm1ee9cJH4T/9ybB88x17nNSfNwyeKVuEzt0/fAl/q6aI87e2thdzgig9ztCGwJ1ub7EFWbctfkFBwOpJJJTw+Ts=
Received: from VE1PR08CA0010.eurprd08.prod.outlook.com (20.179.29.23) by
 VI1PR0801MB1856.eurprd08.prod.outlook.com (10.168.65.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Wed, 14 Aug 2019 14:51:57 +0000
Received: from AM5EUR03FT019.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::206) by VE1PR08CA0010.outlook.office365.com
 (2603:10a6:803:104::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.14 via Frontend
 Transport; Wed, 14 Aug 2019 14:51:57 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT019.mail.protection.outlook.com (10.152.16.104) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.18 via Frontend Transport; Wed, 14 Aug 2019 14:51:56 +0000
Received: ("Tessian outbound 220137ab7b0b:v26");
 Wed, 14 Aug 2019 14:51:55 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 02ad7fe7ba3efddb
X-CR-MTA-TID: 64aa7808
Received: from 397d22aadcfc.1 (cr-mta-lb-1.cr-mta-net [104.47.5.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D0F4C63D-F9C4-4A11-A590-5A4C66370566.1; 
 Wed, 14 Aug 2019 14:51:50 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2052.outbound.protection.outlook.com [104.47.5.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 397d22aadcfc.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 14 Aug 2019 14:51:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oHyDnRb8j5k0gyzB+W4FaJ23I4VJ2zvlKcw1mSxMZ/R74wjoja9QGg5PKbDlULBWDeRsw7TnFtJIXfjbDD2ftUfKYDyQzU+cZUVlXOBdQVrueEVP+Li9eIpXnhIIk1HeBEq67xXcwajWPDWsSff2M7+hcnW32MDc1H+z5oll20MFM05OdLMSYAqQ67Zldc49NfqIMVufNcb3NgdKfzm2Wk9BeLlHXNMkuhN9lCeWY6qTCynhOtJOYlfBpM734Is+MqwNC/OgMqrNqjma1Zbjl/8lHdVF4GDIRHphbDfXunAYfSnpx3IH3shj/ezbZk/A7Zobamu9qHL6n641FS8wCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+/NbnY7p2u3c7qcpw+EwyGAaqpRATfhBOFOTgWFXZv8=;
 b=baK8rUlvnX3QfjZ5mgJUu+po+gQamzlWM89oUYjNvE5RWVJkb4X7Zycktaqquixh2uEE7XT8Grv98pxT1MqmXroPLgeLys6/oL9kq/lzx7/M0jZ3ULzS+vEBG+K8BMEPch4Ew3EIXPZ79WXI7BAYurTTYPeVY0PkWjxpZCmw+AKq74sokto7Dc5ZO9tHzyfqQfWVe22QkZfPQCyn5E8WW2zJYvjAfcOXn80yi85rjboPG+HotYMGrbTrpUABUCVT9ROw8L3I1klI2EhRWm0Y4LgP0sIlg8is1opre0W413zIzrNhPHZftALnZI89yJTogXagUPaHp6emXjcs/bCyVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+/NbnY7p2u3c7qcpw+EwyGAaqpRATfhBOFOTgWFXZv8=;
 b=Z2Meh5sNfsl48POKkQJ6UbvzcRpPBa6LwctlYGZKc17UnHuS+yg1mCzXZh+ybnaka3GYkS2BVZ4NpynjARuwm1ee9cJH4T/9ybB88x17nNSfNwyeKVuEzt0/fAl/q6aI87e2thdzgig9ztCGwJ1ub7EFWbctfkFBwOpJJJTw+Ts=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5481.eurprd08.prod.outlook.com (52.133.240.201) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Wed, 14 Aug 2019 14:51:48 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 14:51:48 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH 0/2] arm64: memory: VA_START fixups
Thread-Topic: [PATCH 0/2] arm64: memory: VA_START fixups
Thread-Index: AQHVUqRJruBcqjxsZUy5qqOF9F6Qeqb6uk0A
Date: Wed, 14 Aug 2019 14:51:47 +0000
Message-ID: <20190814145145.GC3646@capper-ampere.manchester.arm.com>
References: <20190814132848.24295-1-mark.rutland@arm.com>
In-Reply-To: <20190814132848.24295-1-mark.rutland@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0216.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::36) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 93300ac4-dace-40f0-0aa0-08d720c6f3f1
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5481; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5481:|VI1PR0801MB1856:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB18562BFEAA286D19AD170D7F81AD0@VI1PR0801MB1856.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:8273;
x-forefront-prvs: 01294F875B
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(346002)(136003)(39860400002)(199004)(53754006)(189003)(3846002)(446003)(25786009)(86362001)(4744005)(476003)(6512007)(7736002)(14454004)(316002)(11346002)(229853002)(6246003)(8936002)(6862004)(5660300002)(26005)(66066001)(53936002)(256004)(2906002)(54906003)(58126008)(478600001)(6636002)(386003)(6506007)(71190400001)(81166006)(102836004)(186003)(66476007)(64756008)(71200400001)(44832011)(4326008)(6436002)(66946007)(81156014)(99286004)(8676002)(76176011)(6486002)(52116002)(1076003)(6116002)(66556008)(305945005)(33656002)(486006)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5481;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: E3MubMfXLlOFXZSuHsS6mECYyks/85hN7Y8OXRRR3SVNL7odZHdaspt5CyWaGgdWxFKqsQIU1ijdi5E7R+EP9hNEqKX68hGjaVOI8ZCMj46n0vlN9OT+0hA0aKvge3dP7WaDAfzghQMCjI7LU5Jjt0zr09vIXp/hcjLb/Aim4P5Vfpx67LS7AHBJ9uplhpYdzb/Oq3UJ5FU/1avnIz8YK5/g/sEy8EIfCafkB3WHfmaPLYjBOFzBxSwKC5s4vYggiFhHJp5+Ks8aTRnJHL0Dqtxvox9yQvedUEVYdGGmp7n/TDwQLFqkdhuTllcXAden4jGo18D348kdebSJS/gc98BzBost6TZ1oC5uuFiAbgv1n7ndZoxVBV+kmjBnTrZafDHvPX1NtIdOp1+al3PSqT90P/sXhuYYryvQnQ4yuRc=
Content-ID: <E3222A457E52B94BA027AD25DCF639F2@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5481
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT019.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(376002)(346002)(2980300002)(189003)(199004)(53754006)(476003)(1076003)(336012)(229853002)(25786009)(7736002)(446003)(14454004)(47776003)(102836004)(26826003)(4326008)(33656002)(4744005)(6862004)(305945005)(66066001)(186003)(6116002)(478600001)(63350400001)(486006)(63370400001)(126002)(23726003)(8676002)(386003)(6506007)(22756006)(3846002)(26005)(76176011)(11346002)(58126008)(97756001)(316002)(50466002)(81156014)(70206006)(5660300002)(6486002)(76130400001)(356004)(36906005)(81166006)(8936002)(2906002)(86362001)(46406003)(99286004)(6246003)(54906003)(6512007)(6636002)(70586007)(8746002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1856;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 5761481d-9812-4a64-906d-08d720c6eeb6
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(710020)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0801MB1856; 
NoDisclaimer: True
X-Forefront-PRVS: 01294F875B
X-Microsoft-Antispam-Message-Info: CPyU4SDJrvrGSfbW93E3O6kxpOVHm1ygwoC94jYkQ88ulkmRY7Y5yyW1A+JnEe5DxZ9rlsJDOWFyTTqsL+E8qF24zvUqWXJQZRH7Pf3iwgZi7zPXC6czbb0yfTAz7XGnty8zhiWncZOpIRAjnBqnmykEi3zp4YjX3tPJvFkKPLwXRKYU23OizDw1RkqxW/XC3w+7TzLTAduvvpcTVelsZ7k6tBYlIloNqAIcvMbLb+u2csGRJCa4Ociuna079Szk0YbOAvIXPBMU8SE3Rn5a5XdVvFJTt66KaPGWEroe/XE8zPUytccQLPZxjbDNMlUb86YD6Y7ZTrZfYDiycNg82vy03yie/npG0t3c0cSLmjV3KYIoYzAagUKBgowlbdv75QHnJbmj6jIDRBx2ju4/NAy4t4Bd37ojbLZ5L82DPcI=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 14:51:56.3737 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 93300ac4-dace-40f0-0aa0-08d720c6f3f1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_075203_786214_7E0E7047 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.72 listed in list.dnswl.org]
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

On Wed, Aug 14, 2019 at 02:28:46PM +0100, Mark Rutland wrote:
> Hi all,

Hi Mark,

> 
> These patches address my concerns with the new VA_START semantic as I
> spotted while reviewing Will's 52-bit VA cleanup. The first patch
> corrects the newly broken usage of VA_START, and the second renames
> VA_START to PAGE_END to make the new semantic clearer.
> 
> Both patches are based on the arm64 for-next/52-bit-kva branch, and I've
> given a 52-bit VA configuration a build+boot test (on HW without 52-bit
> VA support).
> 

A big thank you for this!
I have applied this series and tested it with CONFIG_DEBUG_VIRTUAL,
CONFIG_DEBUG_VM and KASAN SW TAGS.

I've tested this with 52-bit and have given the kernel page table dumper
a go too.

FWIW:
Tested-by: Steve Capper <steve.capper@arm.com>

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
