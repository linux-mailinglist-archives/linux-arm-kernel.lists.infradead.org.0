Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8D9143C71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 13:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2AEQK+INvb/exqEUZRUW7m1ywtwSZ7qwPrfaQQyj4I=; b=g1HPBoHxWtMH/C
	I0C2Hf1zzOjS/FZf55U3NHSPn7T3tYAd5V+RDfDADf66Z8qrjqhvCuMUNngQW57BmzztSlupNunuK
	IOBa5W52wPVeEYixdBi9Ft/B+6GAzLV1ekcW/cxHXrVtbDahausstXCL+OkKArt0bz1fDQ+6+RJB9
	Ibtl7aiNasNVQtYrHbQhQC7GMaSEcGRoK4cpg1pfcAbSpCYsdkyUYCue/A4iMewNkS5N0Xyl3jbGY
	0f+5trEQ7zZaFAwIF9Gv6gCXpHnwr+eSd8PdbNEIFQH3t2w/T8T4SLpNOK9vE9uX4v10e2kbkXi4h
	nDh+Y1uOjb4x54MLoCYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itsFG-0005wh-I3; Tue, 21 Jan 2020 12:02:58 +0000
Received: from mail-am6eur05on2053.outbound.protection.outlook.com
 ([40.107.22.53] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itsF2-0005vf-5h
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 12:02:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AM/FBw0XkIqSN4N3ssrMwHOgdKqigRcQUvcqO8NZE/8=;
 b=rB+siPevhIOSbOkK5+FGGZ3r5Mi3LTSGTsX7mr5GTpakowVQv8gou9YIrRcUtH2Tdb+fQ+gwpIbGKU94jkMdWw0BccgNTZvjDg3EA6ob9zXz+39TdAzUkbukhMd/46sKHRJRmRZURyVqR89PZ1XtPNuiyTsvDHTJIh8OmE4eHik=
Received: from AM4PR08CA0075.eurprd08.prod.outlook.com (2603:10a6:205:2::46)
 by VI1PR08MB4030.eurprd08.prod.outlook.com (2603:10a6:803:eb::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.23; Tue, 21 Jan
 2020 12:02:38 +0000
Received: from VE1EUR03FT052.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::209) by AM4PR08CA0075.outlook.office365.com
 (2603:10a6:205:2::46) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.21 via Frontend
 Transport; Tue, 21 Jan 2020 12:02:38 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT052.mail.protection.outlook.com (10.152.19.173) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23 via Frontend Transport; Tue, 21 Jan 2020 12:02:38 +0000
Received: ("Tessian outbound e09e55c05044:v40");
 Tue, 21 Jan 2020 12:02:37 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5f4b518c7b118edf
X-CR-MTA-TID: 64aa7808
Received: from ac3e3775d579.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 43AC234B-3D20-44EB-AC06-BCCE3924D7CC.1; 
 Tue, 21 Jan 2020 12:02:31 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ac3e3775d579.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 21 Jan 2020 12:02:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PMNLHECgUlUSDnXcfrILztGYXqmbwIo23ldb7Fe4zW0yAbjH/E+6X3q8BgXsx+hxsF3nu6M/eAZfV8fjz/kpnG8ID462a2SPrB+MDJAPxgPOgI4T7CB0jvxkldlYPOw+0GepQbNqZoYrLtTeYqQsAWj7ORwvM6MhBTvoOmwNGHJ9mF2SHV9NxrtY6J2y5VP5vPlrrLdLVzVlzqbCS8I8uIV6WQs1VhGoMKlZsAo9Kd96Hmn1vTS5aA4267qUGi7f4OVTJOSUBd1TMOP358PzcJDWu/K5P6Zsj9Xc7DJr2oIXuefq0L6+JY16548Qrst+PRfGwF/L2AuGwkYITl/Q5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cAbXjGuQ+eyzvPfW3pmfFeOx8ZqQDGBiY5wACgOcv00=;
 b=fpUhiaIjRH29KOeyW6inYz4KkhArvXgTxQrvCBybmbtkbTfKEkCIvRqHBEwdQDI4JX4UDYqCgB8Ytp3D2qxFOuslycSY5UFH+vx1vgBMjLsL+ZDSyZelzl6Vf8BOLgH1uTtjQKzuDo5gdgh9wLHrrCvDVCBnx09bTdKh+aIkp+xZITYD6pIU4TC6GI4tWVVV49Vu8oYNMa1BDmTlZVS0Ea2Lr8aNNG8J/ecc4PvuMb6BVF8GsWoVZC6zCJi+Jiak7oWu++VPYqcEsnwgPuwZ0aHpz5OyUj3eXmTRnBy86QksJNa94YDhc46cnNw9W0c+oMb9WKae/kA+pr22JXttqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cAbXjGuQ+eyzvPfW3pmfFeOx8ZqQDGBiY5wACgOcv00=;
 b=o73wOdIO5Hm6U4X7KO2QcaXXwHjBwNi8kZK0m8DR1RsmsCBr/seBHkUvKTAzWBFiXau3s4PEJjSxuUbfH96+aifexQSwPRB/G04diYE09FClbUtvpK1GRAuWdLyqg+6u3e20M8SK5EeJS9NxriM3aZks1hg+4Kw0dF2tFZVfbwU=
Received: from DB6PR08MB2791.eurprd08.prod.outlook.com (10.170.219.160) by
 DB6PR08MB2806.eurprd08.prod.outlook.com (10.175.234.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Tue, 21 Jan 2020 12:02:26 +0000
Received: from DB6PR08MB2791.eurprd08.prod.outlook.com
 ([fe80::c51d:bc86:7692:181]) by DB6PR08MB2791.eurprd08.prod.outlook.com
 ([fe80::c51d:bc86:7692:181%6]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 12:02:26 +0000
Received: from arrakis.emea.arm.com (217.140.106.50) by
 LO2P265CA0023.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:62::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19 via Frontend Transport; Tue, 21 Jan 2020 12:02:25 +0000
From: Catalin Marinas <Catalin.Marinas@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>
Subject: Re: [PATCH V12 2/2] arm64/mm: Enable memory hot remove
Thread-Topic: [PATCH V12 2/2] arm64/mm: Enable memory hot remove
Thread-Index: AQHVzDh01JJgnTWmaE6s7E0reOKvCaf1DNaA
Date: Tue, 21 Jan 2020 12:02:26 +0000
Message-ID: <20200121120223.GB3113562@arrakis.emea.arm.com>
References: <1579157135-10360-1-git-send-email-anshuman.khandual@arm.com>
 <1579157135-10360-3-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1579157135-10360-3-git-send-email-anshuman.khandual@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.50]
x-clientproxiedby: LO2P265CA0023.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::35) To DB6PR08MB2791.eurprd08.prod.outlook.com
 (2603:10a6:6:17::32)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Catalin.Marinas@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ebda8167-c156-4b88-5156-08d79e69cf49
X-MS-TrafficTypeDiagnostic: DB6PR08MB2806:|DB6PR08MB2806:|VI1PR08MB4030:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB40301CB50BE169894C9A137DF20D0@VI1PR08MB4030.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:10000;
x-forefront-prvs: 0289B6431E
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(366004)(199004)(189003)(6862004)(66476007)(81156014)(8936002)(64756008)(66946007)(4326008)(44832011)(66446008)(66556008)(7416002)(81166006)(86362001)(8676002)(6636002)(1076003)(5660300002)(33656002)(55016002)(71200400001)(2906002)(956004)(54906003)(26005)(52116002)(316002)(7696005)(186003)(478600001)(16526019);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR08MB2806;
 H:DB6PR08MB2791.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: XAP/i4zQpZ9wE1msLDDYgqABAFMs1yEnb1iDZXxL23Gm4ugbxD17neATBmpGz3Isk8/y/nvd0bIrKNNwOqaM30/KngZspfKYPwLJfmtYDCinknnDHn6HEX9i1P0nuhjaDIQKxmy41wXw7q9LL0IB6zYK71lyuGRk5uz9GJaLH2CQWmngglKjmPJazIc1M1iN/AeRNPFgS188EvVWmoh67WSFX3gU6yBeah83K+gPpJ5ZkZv9/ZQmBWtGz23mNDcJBjpx8GVLmr+u4L0cImzLl5GnJoKovpc6Upj2f/dvK+zvbUzWmkqzdZOcW0Ixcn4Vro0opZ2699Xq4sJLdzkaOpaKByZoD8Utpyq5Mal5n5uC889CgOOcwHzmyTP3IdW4gYtTXBLsv7PcSD8cME9jq4G4ccF60ikgJ1+kz9gjEdgvS9Imv67aMOgCRGjbn0KI
Content-ID: <460143B401C1874A96BC5C64D967788A@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR08MB2806
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Catalin.Marinas@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT052.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(39860400002)(346002)(189003)(199004)(186003)(55016002)(6636002)(81156014)(16526019)(8936002)(8676002)(81166006)(6862004)(26826003)(36906005)(7696005)(316002)(4326008)(478600001)(26005)(107886003)(33656002)(2906002)(956004)(336012)(54906003)(86362001)(356004)(5660300002)(70586007)(70206006)(1076003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4030;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: e9dd39ac-586d-4797-2ddf-08d79e69c7c0
X-Forefront-PRVS: 0289B6431E
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n9eb8/znskO73tSVyU271+4WfT6ozovCQff+1jQAQRO3TDgCesVniWoDjXr/ufm+h5PzPBk74uvZcvpmbv2H6cCaoO0Wt+OC/ZK0t04XW8wFE/xwwTV/QphvPkhYu7WxdBE9IJ4irNmBhGhhaqqh3JEypCtjVPytIuhX0wzP5Lp8wsDUvF+1GArCrx7UCD8ArgcM/Q9q9HTmHrFOf4mmd7HfF+3qOhs3A7mkuM4ttVneY9PeDiHk4SgEL4Ee69Ppo0aniTD4SmMaZ/Yd058vycwrdBvZSjumK0wtcqkQprrvf2d34kkpnUr2RXjrD0eXLPL+tl+NMF2M2X66v7YApr4jr5z/ZWmD1adxJ15Ls39zaHULhZ0YmPEaCt8FZVYkKkRsZsT+nFHpFTdatVK7RrpdmWTSwTmbyqwb1NQGNE3C/JvxzILZWZoQh6a6kr/r
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2020 12:02:38.1326 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ebda8167-c156-4b88-5156-08d79e69cf49
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_040244_274569_8EF19A9C 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, "david@redhat.com" <david@redhat.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "arunks@codeaurora.org" <arunks@codeaurora.org>,
 "cpandya@codeaurora.org" <cpandya@codeaurora.org>,
 "ira.weiny@intel.com" <ira.weiny@intel.com>,
 "will@kernel.org" <will@kernel.org>, Steven Price <Steven.Price@arm.com>,
 Valentin Schneider <Valentin.Schneider@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Robin Murphy <Robin.Murphy@arm.com>,
 "broonie@kernel.org" <broonie@kernel.org>, "cai@lca.pw" <cai@lca.pw>,
 Ard Biesheuvel <Ard.Biesheuvel@arm.com>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "osalvador@suse.de" <osalvador@suse.de>, Steve Capper <Steve.Capper@arm.com>,
 "logang@deltatee.com" <logang@deltatee.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mgorman@techsingularity.net" <mgorman@techsingularity.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 12:15:35PM +0530, Anshuman Khandual wrote:
> The arch code for hot-remove must tear down portions of the linear map and
> vmemmap corresponding to memory being removed. In both cases the page
> tables mapping these regions must be freed, and when sparse vmemmap is in
> use the memory backing the vmemmap must also be freed.
>
> This patch adds unmap_hotplug_range() and free_empty_tables() helpers which
> can be used to tear down either region and calls it from vmemmap_free() and
> ___remove_pgd_mapping(). The free_mapped argument determines whether the
> backing memory will be freed.
>
> It makes two distinct passes over the kernel page table. In the first pass
> with unmap_hotplug_range() it unmaps, invalidates applicable TLB cache and
> frees backing memory if required (vmemmap) for each mapped leaf entry. In
> the second pass with free_empty_tables() it looks for empty page table
> sections whose page table page can be unmapped, TLB invalidated and freed.
>
> While freeing intermediate level page table pages bail out if any of its
> entries are still valid. This can happen for partially filled kernel page
> table either from a previously attempted failed memory hot add or while
> removing an address range which does not span the entire page table page
> range.
>
> The vmemmap region may share levels of table with the vmalloc region.
> There can be conflicts between hot remove freeing page table pages with
> a concurrent vmalloc() walking the kernel page table. This conflict can
> not just be solved by taking the init_mm ptl because of existing locking
> scheme in vmalloc(). So free_empty_tables() implements a floor and ceiling
> method which is borrowed from user page table tear with free_pgd_range()
> which skips freeing page table pages if intermediate address range is not
> aligned or maximum floor-ceiling might not own the entire page table page.
>
> Boot memory on arm64 cannot be removed. Hence this registers a new memory
> hotplug notifier which prevents boot memory offlining and it's removal.
>
> While here update arch_add_memory() to handle __add_pages() failures by
> just unmapping recently added kernel linear mapping. Now enable memory hot
> remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.
>
> This implementation is overall inspired from kernel page table tear down
> procedure on X86 architecture and user page table tear down method.
>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

With the memory notifier added, my reviewed-by still stands.

--
Catalin
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
