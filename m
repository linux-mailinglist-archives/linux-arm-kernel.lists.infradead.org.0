Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B8F8BB17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIOa044LMbykF5w5ILDVIpOOgZ0COfWh6yog1/9cS7w=; b=MuvfvSXpftGbZm
	aTKxAASAPOTdrVoaYg6q/Qc4BJ/Mhp8wDr/o62CxSFNgNLw9GnYNlJzHSO56icmck/zg/wO/evCXy
	Y4/hitTd2+aKTvEfCAUIn0TmS2H7dnKf6Zan+5NRAseprQ5avdWhLiC9uKowwStXGJhYDRC8a8uIB
	7bRsqubl99rXTiWhmAO0yEIFHkLEOj4Ei8LJpB14TuBb8Sl7tPOX3frHjOYW7Oq6zPPRZnE4/Jeyq
	wNNZ+If5JswAncPy6Go9vKK2Id8PCOK87KoHJyvnlWpc35tzTRFWvBISP/6zKhUYh7H30vteVmqHh
	WglCdVyiZzOtbnvOEEPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXQU-0001SB-Dh; Tue, 13 Aug 2019 14:05:26 +0000
Received: from mail-eopbgr50065.outbound.protection.outlook.com ([40.107.5.65]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXQG-0001RB-8Y
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2vLk9AtWwNFzBHxzwhCrC14Lwh9uUx56lA5pGpSAJVI=;
 b=irMxefLC7OUYqynZGpd2zRGlmpce3XIVFVvaQKlOb77epgsasYfhSxWoUvLPBC7rWc7QEvioZ2jr9z1ADHK73iZmBj1ZuvINyjDSoaMo9r6KZkvxssIjOHDaZRIQiBPRuROLaBFbSLxQcBrbLwmEBbtcTS0mfqMUiNck3Eg3AlQ=
Received: from VI1PR08CA0087.eurprd08.prod.outlook.com (2603:10a6:800:d3::13)
 by DB6PR0801MB1846.eurprd08.prod.outlook.com (2603:10a6:4:35::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.20; Tue, 13 Aug
 2019 14:05:06 +0000
Received: from AM5EUR03FT031.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::209) by VI1PR08CA0087.outlook.office365.com
 (2603:10a6:800:d3::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.13 via Frontend
 Transport; Tue, 13 Aug 2019 14:05:06 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT031.mail.protection.outlook.com (10.152.16.111) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 13 Aug 2019 14:05:04 +0000
Received: ("Tessian outbound a1fd2c3cfdb0:v26");
 Tue, 13 Aug 2019 14:05:00 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: bd824af295dc71e5
X-CR-MTA-TID: 64aa7808
Received: from bd4cb8a1f8c9.2 (cr-mta-lb-1.cr-mta-net [104.47.8.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 A377E8B0-1233-454E-95A0-12427C3ABE1E.1; 
 Tue, 13 Aug 2019 14:04:55 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2055.outbound.protection.outlook.com [104.47.8.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id bd4cb8a1f8c9.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 13 Aug 2019 14:04:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mMeye8J69U4GWfr7Vhk78tUAVnOnK3bep/oTkbe6DQ4klDmmhYsf6mBiFkwnsUDIvfkTSvYiw+65m8H4BSIzG/qQOfNwRP7agKIms8JDYDNi/aB9I0bxxBBLeg99jkg6y2iwrMqRZvMaVntQblgSbCfXAeqHKxDz/V3YVctffkucmtU8e0Mw5xOF/MO2ADnQ8DVyMD9dhMFAequGGUyg1O2VBzaA0S/R7ZDZSmYZQJ69cayT0eEasp67mrd0DzPHPhlgmt5EknFU/V+4RreMwhxa8aIoRvTYV+LRVD2Zca8QLc7IWfJIoEJXuqqJbB/QMomRlYUvfmBMW5IqzswsJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2vLk9AtWwNFzBHxzwhCrC14Lwh9uUx56lA5pGpSAJVI=;
 b=FCLnL+1fTT8wrEkJJNqN/Krd8n9MWDRSn1S8O2/pCUu4AQGxf+cnWs+OSV09CDbjVIHLzVskoqcvouFFvbkAYAnbGSL+NgAzAk2G9hFUXzLKGa0QgaBCFgWFGCL4mCf5m9LS9ns/NSbwj+y1D4JUZRkXEwjKBC3AXdoE3UjcOyhiP87Z1lgkpQdQCG4jzRV/vevBH1LFvPd0d48zQSKA0RzYBFdibb3Rx0sloT1CipWZxfeVi1/FnTC5ASI26c6D8i4KQ9oSDNAM+ISKy+M2UMWbdnOLT4MQCk7y1hO1pGY3yOz9FV2yKTQHFdmqVLNW3dWNp8u8WKkpSA3QL65roQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2vLk9AtWwNFzBHxzwhCrC14Lwh9uUx56lA5pGpSAJVI=;
 b=irMxefLC7OUYqynZGpd2zRGlmpce3XIVFVvaQKlOb77epgsasYfhSxWoUvLPBC7rWc7QEvioZ2jr9z1ADHK73iZmBj1ZuvINyjDSoaMo9r6KZkvxssIjOHDaZRIQiBPRuROLaBFbSLxQcBrbLwmEBbtcTS0mfqMUiNck3Eg3AlQ=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5323.eurprd08.prod.outlook.com (10.255.185.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Tue, 13 Aug 2019 14:04:54 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 14:04:54 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: "arm64/for-next/core" causes boot panic
Thread-Topic: "arm64/for-next/core" causes boot panic
Thread-Index: AQHVUVgl/V1eSqMRPUyufGDCtItMGqb4yNmAgAAgpgCAABL2AIAAIQEA
Date: Tue, 13 Aug 2019 14:04:54 +0000
Message-ID: <20190813140451.GA24579@capper-ampere.manchester.arm.com>
References: <1565646695.8572.6.camel@lca.pw>
 <20190813090200.h2rz4xphgnb5j5bc@willie-the-truck>
 <20190813105852.ovk5gtzddwlsm4ly@willie-the-truck>
 <20190813120643.25y5px4andu6cfwp@willie-the-truck>
In-Reply-To: <20190813120643.25y5px4andu6cfwp@willie-the-truck>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0384.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::36) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: d8477264-7c2e-4e21-edb6-08d71ff73daa
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5323; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5323:|DB6PR0801MB1846:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0801MB1846DD81C0C2A733EC0A1C4581D20@DB6PR0801MB1846.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(346002)(39860400002)(396003)(189003)(199004)(229853002)(6246003)(26005)(76176011)(102836004)(11346002)(53936002)(446003)(6916009)(52116002)(386003)(6506007)(486006)(44832011)(14454004)(476003)(66066001)(81166006)(81156014)(478600001)(8676002)(4326008)(6436002)(6486002)(256004)(6116002)(316002)(2906002)(71200400001)(1076003)(58126008)(71190400001)(5660300002)(6512007)(8936002)(305945005)(54906003)(186003)(33656002)(86362001)(64756008)(66446008)(66946007)(66476007)(99286004)(7736002)(25786009)(3846002)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5323;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: BzASKppWwbJh0SqsW25L0/ttEAd2UWBoMkk/hlENXjtbM7IydycQyVUitq9q0ev6O612jD5DRWYTi6K5wxIyYpNN4WBLvUCDCdQsEOb2G1m9GuKyVFoJ8d1stVXTJJyDrEThRMBuPvayeSZ6fxqwJBHO7ldAZfW3Elmcq585s+KP6AD5uFyFpclXdvoP9FvMxBjO3NSYKs1AmWuq76dG83R7cS9UOiIEZjylIqaWly0Gnauh33t5F61XdSbRYSSp+lfrhuHR2wZRoRY7Do7yBJz2EAnrcD9I5bM/nAIcKdHk1OQTCkpatK2qgLLFd55OICGKGVaizPYAm1X/YjGpWlhPabq+5Km3Lj5SkF1CDA72+POzt2l3yegegzDvlhjNH0hR16KU6DEISSl7KhaTq/wifZcVgogVGKDOiaYm8sY=
Content-ID: <0AEF819D177F3A4E9D18A324B2CFC708@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5323
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT031.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(376002)(2980300002)(199004)(189003)(23726003)(8676002)(6116002)(81166006)(54906003)(81156014)(356004)(3846002)(478600001)(22756006)(6862004)(26826003)(6246003)(25786009)(4326008)(5660300002)(46406003)(305945005)(99286004)(7736002)(58126008)(36906005)(14454004)(316002)(97756001)(76176011)(70586007)(6506007)(50466002)(70206006)(336012)(446003)(126002)(102836004)(8936002)(476003)(86362001)(26005)(186003)(6486002)(2906002)(229853002)(1076003)(47776003)(76130400001)(33656002)(63350400001)(63370400001)(8746002)(6512007)(386003)(66066001)(11346002)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0801MB1846;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 5d9165b1-339e-4f82-eaef-08d71ff73729
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0801MB1846; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: Q+r38rxL5Lxg8Knhp3DQiQlSIhkqk7YyC37T7NFV5HYPArA1B2TJGwfp3OEiVuBYIdTQNEO2B0gP4pkvtG4DhtdCh3Z2Z7Vy/dGC6SnAfNXzIKxK0Z1ZDNXIki8Qai6yG8OA5q1DQmykn+hO6PsOvzyUnIE+XkWUNP0+ukQ2ciS6q3ucDvUikneR0KLnhaFWRpPjmEnPErMEMcTd7IrrRM5hQj5QQrjhBWvot0m14N/hvL6ad4UvaDiQtoFZc8DpzRWlhD6Os/HxBimgIN0+WrBIcKaqI9CZgaRYf0mrGA27nn2r/F5A8WtvSWZr0DCXuGwzMbLiB4XyPkyKrIRGJzmFs1tdfduSlkUmvO1GNDQBIazDnmi17G0DeICt2mKtwGFBRen1Hu+LOANsv2EgYFKI8AsqKHpUYUYE9O3Pmg4=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 14:05:04.7449 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d8477264-7c2e-4e21-edb6-08d71ff73daa
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1846
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_070512_366967_ACB5EF2F 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.65 listed in list.dnswl.org]
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
Cc: Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Qian Cai <cai@lca.pw>, Andrey
 Konovalov <andreyknvl@google.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Tue, Aug 13, 2019 at 01:06:44PM +0100, Will Deacon wrote:
> [+Steve]
> 
> On Tue, Aug 13, 2019 at 11:58:52AM +0100, Will Deacon wrote:
> > On Tue, Aug 13, 2019 at 10:02:01AM +0100, Will Deacon wrote:
> > > On Mon, Aug 12, 2019 at 05:51:35PM -0400, Qian Cai wrote:
> > > > Booting today's linux-next on an arm64 server triggers a panic with
> > > > CONFIG_KASAN_SW_TAGS=y pointing to this line,
> > > 
> > > Is this the only change on top of defconfig? If not, please can you share
> > > your full .config?
> > > 
> > > > kfree()->virt_to_head_page()->compound_head()
> > > > 
> > > > unsigned long head = READ_ONCE(page->compound_head);
> > > > 
> > > > The bisect so far indicates one of those could be bad,
> > > 
> > > I guess that means the issue is reproducible on the arm64 for-next/core
> > > branch. Once I have your .config, I'll give it a go.
> > 
> > FWIW, I've managed to reproduce this using defconfig + SW_TAGS on
> > for-next/core, so I'll keep investigating.

I've installed clang-8 and enabled CONFIG_KASAN_SW_TAGS and was able to
reproduce the problem quite rapidly. Many apologies for missing this
before in my testing.

> 
> Right, hacky diff below seems to resolve this, so I'll split this up into
> some proper patches as there is more than one bug here.
> 
> Thanks,
> 
> Will
> 
> --->8
> 
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
FWIW, this fixed the crashes I experienced, I'll run some additional
tests.

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
