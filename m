Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD211A989A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GZBBdFHC8+edIc0qetVDgfChBubL+UzKLPayeUTvLpE=; b=uYNS56U+Ij6/gN
	sKQbkNPwwXGviJeeuLgkcXU6JPsZ/gIZmcS0+M11ASJsZS07Deyx8Qv3T6YlMAbNuOAZdTH7UTcp5
	zs1kpef483JI1BUF9hTgFzmQOVjkA9P6MNh75rYF5kId4BdJF4AxobDOoPQ555Y+C6ewU2SFHriU3
	ZgrSUM/BMCRSLXvx4Mh83YVn9qyQ0E33ZiBzo6ngNLuhcPlhihk+2n400Igd/fQgsjHQccMLRxTxU
	ZWPlzFWLKAftrYeez2J7qpQUtH5ZdfA1HrZpZXmdJKJ9IWQPPi7NesV80Z2n9SQ+cJoAA4iunB8nK
	2DuDKORicFcUNkoyyvgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOeH7-0005KQ-OP; Wed, 15 Apr 2020 09:24:05 +0000
Received: from mail-eopbgr80045.outbound.protection.outlook.com ([40.107.8.45]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeGt-0005GT-Lw
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 09:23:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6g19CI1ah0Ang2c7hYCtP9SBjJ3joNBVedPl6wMxpeg=;
 b=4OceXN/+t4xoDR2etz1zsWN4QhdUZfVf0bsLbPGc+Fkay8Ai0AHqW9qtkv1XxWb8Bl57Ya7ha8k/wLiqEfJ9SXPvPauKqwkwGsQs2vlT4wjhs3gZqiFIAFbwS0ENj62m24k29hFLaD5CEDClVTKF6vw5tgcU4v+cc+MIQDcvPEg=
Received: from VI1PR07CA0229.eurprd07.prod.outlook.com (2603:10a6:802:58::32)
 by AM6PR08MB3013.eurprd08.prod.outlook.com (2603:10a6:209:4e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.24; Wed, 15 Apr
 2020 09:23:46 +0000
Received: from VE1EUR03FT030.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:802:58:cafe::98) by VI1PR07CA0229.outlook.office365.com
 (2603:10a6:802:58::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.14 via Frontend
 Transport; Wed, 15 Apr 2020 09:23:46 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT030.mail.protection.outlook.com (10.152.18.66) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.18 via Frontend Transport; Wed, 15 Apr 2020 09:23:46 +0000
Received: ("Tessian outbound 9e48e1321951:v50");
 Wed, 15 Apr 2020 09:23:46 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e397267ed52099e7
X-CR-MTA-TID: 64aa7808
Received: from dfdbdd55292f.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 021278A8-2954-42DD-9338-AD570431632F.1; 
 Wed, 15 Apr 2020 09:23:40 +0000
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dfdbdd55292f.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 15 Apr 2020 09:23:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h0en16j1aH3e1TDG1RPoLQHDxAGI+c6JEEXJV1cGhQk2y3Axes8B4oIY2n/mdE0SZBo68iiAsYxqoxVRT7r3SDa99En+vrMy+tyZPVFai5GVoVRWaDKFHZt37Or29/lb6u0WJg9Z1BNtMdvv94Ryerc0C8nOAtcljkTMEE51FR1WogZfIedo7x8ZRaNuckP0I5TkK2w67uf+/iLY0vQFz7BBKm0tafIirrD9DowHI9PbUhXG8XPql/ZU1ed8tMo1xFaJyZXQpGh7f5+deY0nDIip8P4i3A7gg6Txw+PX8Y3o1HJHISC3na/j0jsRadBd70soxlxgZmYgyWb4eEh27g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6g19CI1ah0Ang2c7hYCtP9SBjJ3joNBVedPl6wMxpeg=;
 b=fc0HW07sZ5umW/5jPEpOSCOE55mG7WFjUs88cta5pUHW8CsR7G5kXhSZQP+HavvxOT4Bwn4HESVMK1kRfrvkhkTn2mIC5JhkYZ/tkAtBZjdJt94yrUHN2cAkUiF0ryorRo5uBOhOjQyo1GuhozTVMhifv2paOAAsHtbNjxNROBs7vdtnemQDEzAybw1jf55JxU5w+5ChyWh2lyLwdAyF7U9igR/RYpFERe+RHpMrUL/HG8cI932ZxUOWvVaNQSz1nEXKN9BrJMZVAwdphQMhmQZv9vrKNvFwsRX2Fh/zR0S01aSHB/MAZVN8CH2JUWrLUrGdtW4tLch68gVgAvWefw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6g19CI1ah0Ang2c7hYCtP9SBjJ3joNBVedPl6wMxpeg=;
 b=4OceXN/+t4xoDR2etz1zsWN4QhdUZfVf0bsLbPGc+Fkay8Ai0AHqW9qtkv1XxWb8Bl57Ya7ha8k/wLiqEfJ9SXPvPauKqwkwGsQs2vlT4wjhs3gZqiFIAFbwS0ENj62m24k29hFLaD5CEDClVTKF6vw5tgcU4v+cc+MIQDcvPEg=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com (2603:10a6:209:4c::23)
 by AM6PR08MB4359.eurprd08.prod.outlook.com (2603:10a6:20b:b9::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Wed, 15 Apr
 2020 09:23:38 +0000
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862]) by AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862%7]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 09:23:38 +0000
Date: Wed, 15 Apr 2020 10:23:36 +0100
From: Szabolcs Nagy <szabolcs.nagy@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: arm64 vdso might miss .eh_frame
Message-ID: <20200415092336.GK987@arm.com>
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: LO2P265CA0307.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a5::31) To AM6PR08MB3047.eurprd08.prod.outlook.com
 (2603:10a6:209:4c::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from arm.com (217.140.106.55) by
 LO2P265CA0307.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:a5::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.25 via Frontend Transport; Wed, 15 Apr 2020 09:23:38 +0000
X-Originating-IP: [217.140.106.55]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 876bb4d9-cbe9-4c95-8512-08d7e11eb2ec
X-MS-TrafficTypeDiagnostic: AM6PR08MB4359:|AM6PR08MB4359:|AM6PR08MB3013:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB301313E0BE8BA85686437580EDDB0@AM6PR08MB3013.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;OLM:10000;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB3047.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(39860400002)(396003)(136003)(6916009)(33656002)(5660300002)(55016002)(7696005)(8886007)(956004)(316002)(54906003)(2616005)(2906002)(66556008)(1076003)(186003)(8676002)(44832011)(4326008)(478600001)(66476007)(66946007)(26005)(52116002)(16526019)(36756003)(8936002)(81156014)(86362001)(142923001);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: NgLoqHHGTQ9A/bBTyK8wYBfg3U4mck5CxMfhQtZrqqZ45pydrm6CCJZjBXWjzQSi9zFaWcAuA6dzryGdeG+737eTgyUR6BnCjP61cNTi8wor8aC4DcOEfCpNHuXniQ/vjrAJ5DiF82O+t7geJP2PsTjszE5AsXsT1mLGo3xRdXXFXyJR23FUb8r80/fmbsGby4BwW6nN2XV4+PnpyKLDyjwVew+BJcvTy//Nc7wh+93eVXtH6YhKndY3hQ0hbMsmARbWeLgy+egd85Zml5MMV99Aha5V0WS5g7G3TjIvewRHh52LpjbN0owDT2je+S5aAcSHbbhuJgPdfij6b8pYJXD8+DmKRROmgFsFsdqNymSsmKxAMLtJTFFR2iRUnffXmJm6H45HVm7eQGMKEo3vzr93j9mZqs9BaQQTvsw9/O9JXH/9kPdeNGGUdahFqTk4hML7ykptLB/40S5I47O7oI+CzkSSA2W0zFujHj2vi17ANT+92xyBOX67KVWDggZ+
X-MS-Exchange-AntiSpam-MessageData: 5uCAa7bzs6EDiQNOctweG7DuV2I58NgxXL1WqcIyq3Z0Zhlj20CPqOR1XRm9VcLLTOCO26/Fhmhg243og/BBwuH0ZBJF2lZKsGKb6gkgt8TVoi6Ahg2KNBkn1SPmIYXPDJ27dRCIW5okp7Pq+U0B1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4359
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT030.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(136003)(376002)(46966005)(82740400003)(81156014)(86362001)(478600001)(7696005)(186003)(47076004)(70206006)(26005)(44832011)(8936002)(316002)(36756003)(356005)(55016002)(5660300002)(2616005)(956004)(8886007)(70586007)(8676002)(1076003)(336012)(2906002)(26826003)(6916009)(36906005)(33656002)(4326008)(54906003)(81166007)(16526019)(142923001);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: f4d98345-e80f-4489-ec26-08d7e11eae53
X-Forefront-PRVS: 0374433C81
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: deIgWKXo5epb9CtccTS+bRaiKk+o9Ejrc3RQOJkyw1MmVUev0MFzcG1/DSYyYnS5l3insIvXzr2EDrv9YzfxpofvZdg6WOgTOjfk3PuX1s7898YHwEPdjYPXgqmeXZ1a5im+cwRToA9hAWu8vqoCEbVcWm0E6snZAr49demPKSAUIzqUTzLmkwNdWmLL3w0cYUoYdoTVVfiUQwkZj02ITvLHjXqtf+WskcdxcRHQvH3YsY3L/12wusu6d41SCBcYzXoc/Bd9KoMDoWshF8ievdzSY0wdEyo4YZFghoJfT8W+hBELtQsxrGXAIGsryxH5AblZRuFbFBgs6FkL5tcTkB0wkLeamCjltkEYJuIkzVqQ5YhNHjYQx+NHeC9uhZH6dA46xiogdx+/0qr9+/lszjDEwhbmNPbkIQgPR1xMSDv9isVZhut7EHSOTxkj0I1sxjlGSnWWDGCVyXc/Mb5dF6Kpv5bu6ocTtrnrDebgNeckQgm7DRO2p2T/nw7kFrRFrTGdhBfhVGp8a8sZREJzgQMTXVo6E9Ci+TQMVfNH/08=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 09:23:46.2277 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 876bb4d9-cbe9-4c95-8512-08d7e11eb2ec
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_022351_785690_02F8B4B4 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.45 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.45 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Tamas Zsoldos <tamas.zsoldos@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On aarch64 linux gcc uses -fasynchronous-unwind-tables -funwind-tables
by default since gcc-8, so now the de facto platform ABI is to allow
unwinding from async signal handlers.

However on bare metal targets (aarch64-none-elf), and on old gcc,
async and sync unwind tables are not enabled by default to avoid
runtime memory costs.

This means if linux is built with a baremetal toolchain the vdso.so
may not have unwind tables which breaks our (undocumented) platform
ABI guarantee in userspace. So adding -fasynchronous-unwind-tables
explicitly to the vgettimeofday.o cflags would be nice (the other
objects in the vdso seem to be asm).

There was also a report that android clang built linux vdso.so lacks
.eh_frame completely, that may be a missing --eh-frame-hdr or different
platform ABI on android, Tamas on cc may be able to verify this.
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
