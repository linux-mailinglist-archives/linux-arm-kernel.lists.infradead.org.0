Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2B2143C76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 13:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhcy/sWgTqT1zRs4i+1HTk4XCYWLdV0kpKBu4oaM4ik=; b=A9COVHxUD5PUZ/
	vUzHDDiO6kcuiB3uKYubKjpPjWHXRvmyrGF0yJqn17Pfd69mUQv+qRmM3HnVp35zY4ndx5WhOHAu3
	mYE1HlCCpwXkV98hpZ0kieGcU/jcWrSte2VDD/9WLhy/SuUnZ7TkI5ZcwwbBvTRjdS2NgccDpLgVc
	VqIQ1HB0CvKZ6qP72BMQrsmYNAhF4ZsscxNlc9LtB5J2h5aIcnlcS8nSk/A3Y+UeFIkE1IqO9JxKw
	WDj7qwd/To5X01pLZmVMFiusoKfhPXGLFj0ipRoD6OsbNSHnPHVd4Op/E5u+kkkblr5ovwETY5QSX
	9+1PauaqmsLzHGGXQ/OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itsFk-00069u-GX; Tue, 21 Jan 2020 12:03:28 +0000
Received: from mail-vi1eur05on2062d.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::62d]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itsFD-0005ya-6U
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 12:03:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dhR/GsAHelNuqLxfcvIwjqAH8w16NadYjld4l9BFA4U=;
 b=Hu1QEPDjts9iUyWZhq/8w83BiPUxEL2F6+S6mu72QU5Sny7KlP5PlcPtF9JjiRxv4+/d1dPQBNGmqeOj0cJ2FdE6UJGRXkGqzyeCoPxrIFdOApDN7Itb2CxVB+3YcmM/lOhX9Az7vjbMwA2YnswYkK2b7XOvDhqRJ7GDXCgBiMM=
Received: from VE1PR08CA0001.eurprd08.prod.outlook.com (2603:10a6:803:104::14)
 by AM4PR0802MB2275.eurprd08.prod.outlook.com (2603:10a6:200:63::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.25; Tue, 21 Jan
 2020 12:02:51 +0000
Received: from DB5EUR03FT041.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::202) by VE1PR08CA0001.outlook.office365.com
 (2603:10a6:803:104::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.18 via Frontend
 Transport; Tue, 21 Jan 2020 12:02:51 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT041.mail.protection.outlook.com (10.152.21.4) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23 via Frontend Transport; Tue, 21 Jan 2020 12:02:50 +0000
Received: ("Tessian outbound 4f3bc9719026:v40");
 Tue, 21 Jan 2020 12:02:50 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f9ea57a3a814276a
X-CR-MTA-TID: 64aa7808
Received: from 4a701ace8b15.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 50BB5AFF-1979-4477-A789-DDBE7B757623.1; 
 Tue, 21 Jan 2020 12:02:45 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4a701ace8b15.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 21 Jan 2020 12:02:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZISvCu4JEoQZ45KcdLjQaCSpeN8kxyF6F/WVPLzLO8hpAKHvjYnhNknvmSYZgVsSAC+f6AcTUMtoCg+lD5989+BjYCe43zZKU4ZgCHC1yQ0lVniB8TB3UvJkiHywsL8NrmE02n6VdweX24jG7HDoVtlFdBu2unrK9Z75RjFBavMdBWxPfHiWRO+ZJVxbUTh0y3rh4gCtsaSmv3Ni3XBfw81E6dFtf/z/0y5dGyKC19qAqpfGJ02OmBs09NG9RVT26JCLIS6MLrYmx4ebkWDP5mCZsEwyAgo0Y5DEjN3FNcAcahOtFFieaje4BmojQuDLnAK0jZalEJ3RiRlHneKn+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TqXDE1eW5PtBSR2KUk+XDmRDH2qjzhkghm+iDk26JNY=;
 b=XvJA/QcBzifrmmJrvVIzPcxP7kJNz8PWrEIZWJDc8cqweLYVIJ5GoiuwY104N+w/f6mZ97zCeuAM7bpemJnSup5arK2Jx0mpHF5VnlzLbD/svB32qSXHQtLlGTTTUR1yN4o15fHdev4kZvkxFvMl2Rn3gVXiUhmJaqbaA8Hlo4YyFNr2OYPafUeAwzgN6bIR5kUBp8J27CGupm4ja5CYrDLBoEHMIe+/mngfZx//hGE5yflEGPJJV8+fNjyYU/lLpB/qlYAqnNZlT3hgHYvN3S86IhPxHzA61jmEP9S03E8NMnAluT0W+BQPE9kVgxFW/dq/V0cW3MMNK5/hJg/lCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TqXDE1eW5PtBSR2KUk+XDmRDH2qjzhkghm+iDk26JNY=;
 b=cz7NU88t5XphSVyihIrOFFlU1XG+Av8GGGUwUDp05inEqr+5BPkBrVJxjN2M8uKOi4kHfBRWw1ka9WYduCMDvGKKvYI7aAUUvfr0pwCH8XafT7mPeiSjVTZ6bFbVRAXV2It/pIXxqo47F3on3Ajh9HoNBXeqK2MXZRyyPreGyrc=
Received: from DB6PR08MB2791.eurprd08.prod.outlook.com (10.170.219.160) by
 DB6PR08MB2806.eurprd08.prod.outlook.com (10.175.234.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Tue, 21 Jan 2020 12:02:41 +0000
Received: from DB6PR08MB2791.eurprd08.prod.outlook.com
 ([fe80::c51d:bc86:7692:181]) by DB6PR08MB2791.eurprd08.prod.outlook.com
 ([fe80::c51d:bc86:7692:181%6]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 12:02:41 +0000
Received: from arrakis.emea.arm.com (217.140.106.50) by
 LO2P265CA0134.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:9f::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20 via Frontend Transport; Tue, 21 Jan 2020 12:02:40 +0000
From: Catalin Marinas <Catalin.Marinas@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>
Subject: Re: [PATCH V12 1/2] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
Thread-Topic: [PATCH V12 1/2] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
Thread-Index: AQHVzDhxBbGg9NtlH0u/OUhHsvtVxKf1DOgA
Date: Tue, 21 Jan 2020 12:02:41 +0000
Message-ID: <20200121120238.GC3113562@arrakis.emea.arm.com>
References: <1579157135-10360-1-git-send-email-anshuman.khandual@arm.com>
 <1579157135-10360-2-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1579157135-10360-2-git-send-email-anshuman.khandual@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.50]
x-clientproxiedby: LO2P265CA0134.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9f::26) To DB6PR08MB2791.eurprd08.prod.outlook.com
 (2603:10a6:6:17::32)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Catalin.Marinas@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fbcd0013-265c-4710-9010-08d79e69d6d5
X-MS-TrafficTypeDiagnostic: DB6PR08MB2806:|DB6PR08MB2806:|AM4PR0802MB2275:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM4PR0802MB227521548AEDCBDA1BBE449DF20D0@AM4PR0802MB2275.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:10000;
x-forefront-prvs: 0289B6431E
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(376002)(346002)(396003)(189003)(199004)(956004)(54906003)(2906002)(71200400001)(55016002)(186003)(16526019)(478600001)(26005)(316002)(7696005)(52116002)(4326008)(66446008)(44832011)(86362001)(8676002)(66556008)(7416002)(81166006)(66476007)(6862004)(66946007)(64756008)(81156014)(8936002)(33656002)(1076003)(6636002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR08MB2806;
 H:DB6PR08MB2791.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: mq8Q7/tmEBK4HQD8oQ4bG9ZupMVFijIa/XqI8LPmOFtelGt2DaZx29k+azWf4Fm6+qRN0dnBrEzoW+GOe+BiT1irtZKKPLzoShNkk2ez1mRYpY/9dsRWq+niLJqU1bIzCC/mpWwH1kCH1lNw/PdVX0XifPhoqVPoSQtcSCrGsgdNE2TtInAz9Z1Zwj0P1KFwBsm7tH6hUtWFUzgvbLBAZlNlDPoq1IubANkKYxGNgyzZNWp0VsywRV7baAAV2eGR0SY7kHC14tAsbFSIv9KsHFKDE8oTOS5SSOIcghTfuHy7xBK/bVT1bENlYBdb4aJxdl0zIDk99ZzODfK6Lmm4ReRX89uAKFND0qi2xt4+KJsALJMHeoGZevINSQ6gyo33ANnAmLntNiXte29G+Kw9O+GYN+xAjLOgY/OfyNAgUqeqtRrXEGmGAua4iCPNN8HY
Content-ID: <69B17A45438A7B4DAEAFE6038470BFB9@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR08MB2806
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Catalin.Marinas@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT041.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(189003)(199004)(54906003)(107886003)(55016002)(86362001)(16526019)(1076003)(26005)(186003)(6862004)(70206006)(70586007)(316002)(4326008)(81166006)(5660300002)(8676002)(956004)(356004)(81156014)(26826003)(478600001)(6636002)(7696005)(336012)(33656002)(2906002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR0802MB2275;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 20543342-6879-4001-2ed0-08d79e69d0be
X-Forefront-PRVS: 0289B6431E
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x3u6rtCzIAUfCB3yKJmGGYED2C85ZYn89iYQbxda7QoT+SKahMBJ/yaJ2sBTEKke8UgbxRHjIG3di83nNZhQ7eBI8yASeJ0LR3b39HJjEiW9dPPa5w+7ob1gKbHytYvLmQF/RUV01ZcS3BxkvK4Mi6WiipgJwNGqYrVLpcuNJIH2QWmIx+quokwCihgNrVMYudYhdgkfiY/lTXsxgjARoJpycpAjhFUAXPQNmBcOpIe8pzWuuJfy6hOxJWeeB7b5lwIks4ktjst6tj7tAbISd/HgbP8GrWS6CYsCVN6HWQn8G85rUeUV1/mszA5nbcYXgsdrrG/oDQmH/yAk0oHnl9Dc2Ai7a/pJ5gk6a0dRoulC/CE23nCAN0ExNmbItrVq7+MQ9lMuGpaMO0p2U38804y19hhX41lSJ6I6C6440VFJrZ0FvWpE+GJ6UNFCYVLx
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2020 12:02:50.8548 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fbcd0013-265c-4710-9010-08d79e69d6d5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0802MB2275
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_040255_266966_4521EEA0 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Thu, Jan 16, 2020 at 12:15:34PM +0530, Anshuman Khandual wrote:
> The arm64 page table dump code can race with concurrent modification of the
> kernel page tables. When a leaf entries are modified concurrently, the dump
> code may log stale or inconsistent information for a VA range, but this is
> otherwise not harmful.
>
> When intermediate levels of table are freed, the dump code will continue to
> use memory which has been freed and potentially reallocated for another
> purpose. In such cases, the dump code may dereference bogus addresses,
> leading to a number of potential problems.
>
> Intermediate levels of table may by freed during memory hot-remove,
> which will be enabled by a subsequent patch. To avoid racing with
> this, take the memory hotplug lock when walking the kernel page table.
>
> Acked-by: David Hildenbrand <david@redhat.com>
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
