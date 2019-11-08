Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D5CF3DE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 03:09:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hwZ12wivNlC9lnyA42gWmvJVxDhPm36Jm8RHM/uQR0=; b=LzNl+/0ZKzskSV
	QO4ifTlv87w7Z9OW/y7myYq1SxGPIbQJN4oOq0GaYe6tB1wUyDbS3u8C+BhDQ5ckPvlPLneNORC0A
	b/LeSJ+2Bsee7dVl+KZ0WFYBv6G6AbTrT0tLrZC55d4c7aBEb14p7wThkHGRF6LSc7nJTx/Yo7aC4
	QL+T7BBBRJoi8ou+xXY8ThAiAFvQqz3MUSF5g2BTqkgas8iLEF4sUPxWf0Y3TiCpzPexc2ANZBCwM
	iT3XJA4k3CrTsDygU+2Wxj5G/2SP6Qh6kI04aPaPSNlS2VG3paNY8mr0YLikVz2zGk2j4Xal3e/Jr
	k7Rw7T0OcWPrCtYMQ6Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iStiH-0008Tn-KQ; Fri, 08 Nov 2019 02:09:25 +0000
Received: from mail-eopbgr10049.outbound.protection.outlook.com ([40.107.1.49]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSti5-0008ST-S0
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 02:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2rbYfTcFYleKu07uvJFnwOiy99ur0l2yUJ1UfStZvwI=;
 b=PD9LeN/lSs051eRkwM21z54N2GUAwfONX3In9BsSJjTGCg7OSnnlQdX8CwLnI6mFn9f+9CCfv0zfzGqI3of+/x20Iz4+inboQHlnVZCq+J7PTFOKHNEKocvEqw2EP04zLxUt+Oa4iAFJKNsM9YInErj+QFfvb8OktgeCg47pFOk=
Received: from AM4PR08CA0074.eurprd08.prod.outlook.com (2603:10a6:205:2::45)
 by VI1PR0801MB1838.eurprd08.prod.outlook.com (2603:10a6:800:56::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22; Fri, 8 Nov
 2019 02:09:05 +0000
Received: from VE1EUR03FT029.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::200) by AM4PR08CA0074.outlook.office365.com
 (2603:10a6:205:2::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22 via Frontend
 Transport; Fri, 8 Nov 2019 02:09:05 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT029.mail.protection.outlook.com (10.152.18.107) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.21 via Frontend Transport; Fri, 8 Nov 2019 02:09:05 +0000
Received: ("Tessian outbound 6481c7fa5a3c:v33");
 Fri, 08 Nov 2019 02:09:04 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a1f50c2345ecc833
X-CR-MTA-TID: 64aa7808
Received: from 1b7daffd9eac.2 (cr-mta-lb-1.cr-mta-net [104.47.9.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 06FBCD60-DD8E-4E12-88A3-C672034ACAC4.1; 
 Fri, 08 Nov 2019 02:08:58 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2055.outbound.protection.outlook.com [104.47.9.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 1b7daffd9eac.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 08 Nov 2019 02:08:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GvXDpocF0Veh7FrJBZ1I01Y9yiL0CeReXnAPGoSKxca3F5iQILtj+H1hyN5pW3VFiqTsyYBtB5IHMuJ3hg1Ap0gO5rP69zXgO+o1lBjG1FS9btXe0zgqXVjnb/quiJFhq47dZLQy3xOm9IYjXlCSb3Y2x+KyaOwl7grATCQnBcc5PV6eAM5zyWDTBed3avluSYK1kgRr4zjMiK1IgsHARaJBxBIbXMJbDU2UZkULyjv87afl4hQIfYptj44PhwU8GqiG1j46WpNU5tHeEuk1a+4rxnTJ3sWeyrtoJcD8x8yDrYDWvZ6LUG0qj7IOD+hppDnWeiMwbX1AM999AEIIDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jAN73sRGrDO7SG5jsmdvpWXiExKS8NyBSi2tIXqGDno=;
 b=KLl6hPIvFs6rL1gq9r3D+N34a+rAwJkjLIAL0Z1BbrOYn54/A6oB4QTUNUkWupQP9vi5kcAN0j86tFMXoVEII22IkPpchi9qTNYG5QXAW6aJW5kPHnU4y7v1yh4/5zmkXkaT5M+PRR371hMqOujN0l1F3yqN9JsujK6sBKJT6rToLLhJ7d1bi9rmZEB/iCoONZlwdP1EOSqvzoAT2UM4WVyR6nKuwEDPx2DoEMHsPoBxw2Y6EQqzxpl1S+ebsfHPQONwKbGdEztTj39vHCBB2V2/VL0pIvR32ec1JSDMbPNvZfwuTpDyN9NcoqERrUfCeMgkRPjd/BuUKEQNnAIRqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jAN73sRGrDO7SG5jsmdvpWXiExKS8NyBSi2tIXqGDno=;
 b=xB2Nqzl+U3Cv0hHMUy9xnU7tp7PucYAd6fE+T3wZsvavV82Ol2Hg5/IWdXQ8sgBQZqd4u2WDVVonPLp9/GA5YhjSqN88WllPnhYzM5IK11ZD9A9UcSU++JpoHVvBhJ1tMfiv8KqM/xWur+xR6w5MXiS4GSpPiD9d2A4FNq2vZag=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB4939.eurprd08.prod.outlook.com (10.255.4.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Fri, 8 Nov 2019 02:08:57 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::d8b5:2886:72ff:123b]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::d8b5:2886:72ff:123b%5]) with mapi id 15.20.2430.023; Fri, 8 Nov 2019
 02:08:57 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Do not mask out PTE_RDONLY in pte_same()
Thread-Topic: [PATCH] arm64: Do not mask out PTE_RDONLY in pte_same()
Thread-Index: AQHVlLiiWzqD9uSahEyLDDEQR8UtU6d/mRYAgADwaQA=
Date: Fri, 8 Nov 2019 02:08:56 +0000
Message-ID: <20191108020854.GA22491@capper-ampere.manchester.arm.com>
References: <20191106154105.15176-1-catalin.marinas@arm.com>
 <20191107114826.GC11587@willie-the-truck>
In-Reply-To: <20191107114826.GC11587@willie-the-truck>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [213.86.15.71]
x-clientproxiedby: LNXP265CA0046.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5c::34) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 259f4505-8452-4ffe-d5aa-08d763f0a1be
X-MS-TrafficTypeDiagnostic: DB8PR08MB4939:|DB8PR08MB4939:|VI1PR0801MB1838:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB1838C86711BFE056AEAAE30E817B0@VI1PR0801MB1838.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:8273;
x-forefront-prvs: 0215D7173F
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(396003)(39860400002)(136003)(189003)(199004)(55674003)(7736002)(6246003)(6436002)(316002)(6116002)(86362001)(71190400001)(71200400001)(4326008)(14454004)(478600001)(8676002)(81156014)(5660300002)(256004)(8936002)(66066001)(99286004)(81166006)(3846002)(58126008)(102836004)(25786009)(52116002)(2906002)(6512007)(1076003)(54906003)(26005)(486006)(6506007)(386003)(55236004)(6916009)(33656002)(44832011)(66946007)(229853002)(66476007)(11346002)(76176011)(66556008)(186003)(476003)(64756008)(446003)(66446008)(6486002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB4939;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: /4BLhZxUV5fJQRS3d6lKE8rQ3DMab0pZ+COd0xiPgJeRzPeDyYbtQsX0tqxqJmEIGHuW/TO9XNPZ0n1drPHhwTuWnCXEkiETmwfanXvX3UFzbKcYhv5EbtpbnIiehvCW3rSEupOcj7MKYrwzb1fxZ7OOUzx1mMSmYpSdgEsu8udxwy1x13/SNaYpfXVQGB4VuBORMDqeYQ+xz+j7QaZ8tlcSy5NRX8buFDhCdSfc2nfc3Ra+ybKOZtfcPoj8jDcQzJPJQGlpfQ/MAqSjvmvHj1oMA9ysrMj3N1hYZvhkUdBFhO3AvskM9MFOoYgMnt9i6pg60Rq/yJ6qhOA4th0yQllK4R6ujeifPaSq28Jxz+ZsbJnQgiVEaAWm3+jUK2niO4tLHAl8DD/XfRutrlo437jxpxfdjiGmFCCzuzW2l1umrHH8RPDOEecq5J11u+4x
Content-ID: <B8AC726722C6344FB10C37B80CA464DA@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4939
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT029.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(396003)(1110001)(339900001)(55674003)(199004)(189003)(40434004)(6506007)(386003)(126002)(486006)(14444005)(5024004)(50466002)(76176011)(8746002)(356004)(8936002)(7736002)(336012)(107886003)(6486002)(33656002)(305945005)(105606002)(6116002)(3846002)(99286004)(102836004)(23726003)(11346002)(446003)(186003)(476003)(36906005)(66066001)(76130400001)(81156014)(81166006)(22756006)(316002)(478600001)(4326008)(26005)(6246003)(8676002)(26826003)(6512007)(54906003)(70206006)(70586007)(97756001)(14454004)(1076003)(2906002)(25786009)(46406003)(5660300002)(229853002)(86362001)(47776003)(6862004)(58126008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1838;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: c1722728-1d0d-4f56-6608-08d763f09c92
X-Forefront-PRVS: 0215D7173F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7F/s1Iy1P2lSB190Dg/DWAfw3Ux8OhIrW3n9yC2c8vbGnh1TxOI5Jbj7m0n21QLdK16J9/OPc9lasoxxICuDhLdi3ckluWMwKyzjEDSg6589kOvW/dK/pWIVeUHJOFQ3bTaNmhgHgMFgIVcEqv13OJYa3iRWoM9JSqXD6S6YWi2ENiTXDM2laiWJ0q6zvNJsdbiFOcnZPnMqZ879ezCXVcHwrhVSD/dkJ+NHhEiLGrNd6JucDsuMNwlv+V4Apg7JisKPyKm2ZAiT9BLquL8yLkHT//ZcV6yspiVr62yUWg6/E4HoEtlVH5XFsvriSAJyY/o2UimbAtMRaZL99eJ5n7B4A+PmWAlmyo2CBN7Al9BlKrbiK60l1LhXhsBGk3JgWkv4IcbdmbjmpcMMb0o1jV5QVSpJk60jp1x/+YPgXyZgTWR4sfNiCIJlkFX3LyfW
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2019 02:09:05.2092 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 259f4505-8452-4ffe-d5aa-08d763f0a1be
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1838
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_180913_967848_C7F955B7 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.49 listed in list.dnswl.org]
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
Cc: Catalin Marinas <Catalin.Marinas@arm.com>,
 John Stultz <john.stultz@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 11:48:26AM +0000, Will Deacon wrote:
> On Wed, Nov 06, 2019 at 03:41:05PM +0000, Catalin Marinas wrote:
> > Following commit 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out
> > of set_pte_at()"), the PTE_RDONLY bit is no longer managed by
> > set_pte_at() but built into the PAGE_* attribute definitions.
> > Consequently, pte_same() must include this bit when checking two PTEs
> > for equality.
> >
> > Remove the arm64-specific pte_same() function, practically reverting
> > commit 747a70e60b72 ("arm64: Fix copy-on-write referencing in HugeTLB")
> >
> > Fixes: 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out of set_pte_at()")
> > Cc: <stable@vger.kernel.org> # 4.14.x-
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Steve Capper <steve.capper@arm.com>
> > Reported-by: John Stultz <john.stultz@linaro.org>
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > ---
> >
> > Steve,
> >
> > Could you please check that the original problem fixed by commit
> > 747a70e60b72 no longer exists after reverting it in 4.14 onwards?
>
> In the meantime, I've pushed this out to for-next/fixes since the CI came
> back clean and it fixes John's issue (which I've confirmed locally too).
> Interestingly, I'm not at all sure the problem is related to the Mali
> driver. Some tracing suggests that the ART JIT thread is stuck on a write
> fault, which could be explained by a broken pte_same().
>
> Steve -- if you could please run the libhugetlbfs test suite as described
> in 747a70e60b72 before tomorrow, that would be really great.
>

Hey Will, Catalin,
Apologies for my late reply, I've been travelling longer than originally
planned.

I have tested for-next/fixes (with the pte_same removed), under
libhugetlbfs and I have been unable to reproduce the original memory
leak that prompted the pte_same logic in the first place. So this patch
looks good to me.

Will check this out for 4.14 too now.

Cheers,
--
Steve
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
