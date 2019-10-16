Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E125DD9212
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KL/8JuLVeOxBfAjISlMbb1Olk65OSJt1e1Glc0++o8w=; b=J0pMEYBPvbfAd4
	1kTioYeAnr7PBKdIPsIUzCxUnfEPaXZQVrOaAXSYp0JGi5n+yChfLyiY0toJLn4Md4n2/A0ZWmnAS
	aqBme8fcAIr8NQopUsqHA+29J0RPGDNNu3jFGgzhpU4yxH2c71B0RwMYC9AyODbrQSggJrH+n5HIM
	l4llMTec2yMdJuMzkfQbnLpoKM443GAdlrvnqFp7r6M9BDTgASo8pkFh9Ucspsc1+nUG+WSHsJCyH
	9Uu4/YoGHx6STJ/HzoxYjSfKnTSoQ8dhI/dowoH6MF1ylU0/wkIUyXkokj55PDrl/XnE3HrE9Nr+8
	RB/FNFZLC6sGOy+fV0KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKj6K-00032O-I5; Wed, 16 Oct 2019 13:12:28 +0000
Received: from mail-vi1eur04on0608.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::608]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKj6A-00031e-9f
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:12:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5KTJzEsvXkIGj5fpsCkVRFoLyq70CAJ17jS/emwToU=;
 b=fk7QF/PnhOXmKlEQL0q4OZmAW1qeH2YAocLmSedEN+zJviH4e+CWq/AMtlTouvdzq0vtS8pRKIQvJpwMOckX0gns/bGXvRRqKFtKC8n0CzxrtpyFGInYH5Krqr+QHKgqw9Se+vFHgRVmgmGu7jzRVMHgk3a8DaWqjy63x1EMCqg=
Received: from VI1PR08CA0257.eurprd08.prod.outlook.com (2603:10a6:803:dc::30)
 by VI1PR08MB3742.eurprd08.prod.outlook.com (2603:10a6:803:bc::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.21; Wed, 16 Oct
 2019 13:12:12 +0000
Received: from AM5EUR03FT010.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::205) by VI1PR08CA0257.outlook.office365.com
 (2603:10a6:803:dc::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 16 Oct 2019 13:12:12 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT010.mail.protection.outlook.com (10.152.16.134) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Wed, 16 Oct 2019 13:12:10 +0000
Received: ("Tessian outbound 3fba803f6da3:v33");
 Wed, 16 Oct 2019 13:12:10 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c1cd315c627d936e
X-CR-MTA-TID: 64aa7808
Received: from ba3ce296719f.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.9.51]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 AB20C85D-85AF-424A-BC22-AF668C3BB748.1; 
 Wed, 16 Oct 2019 13:12:05 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2051.outbound.protection.outlook.com [104.47.9.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ba3ce296719f.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 16 Oct 2019 13:12:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TG0A6eqVsrmMLU19Jw0miyhShUdtyxK8820pD+yUm840coxg5PK0Lj3H1tfjFKmm2LZf7u9ZQc+ZrOsRS0GGVStt7PO3p8UAgyAwoEyfpHWMYb5XZs9cGRdQ9TlQsmYdcNdyQmYswYMhUBX9PXCl4n8fQZvq4dejzVjClYvggTu/IWUhMCgxYKDep845NyS+l9nhsk9xj4ija1cVIvZJm0G7f4NrbzfjS2k6pPWVjRkS10vZ2rwJgaEG/wgZzN30tx304EWZufE4JzDkyjQPvXtoy3OJPm6SRMm0jMs1PnaKfshsB/XzCxa7Q2X+2Y4OTp7w0kzAbVhq0auENMUN9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E9ljSOwcKKW3sClP3TwnfKUJFVMD0w+R6VqXKw6T9uc=;
 b=IIuTpY+HrQCb1GxX41OmPmBLtCwrApHZTsluBPqHrpyphwuy+bkPz4qRaaO6t20AJa0V/l9dSwp++9lUxsgCPXjMDWOANwdxv7kvG3jQXcKOb8RyMgRYzw14GIWUTJU6DC2GRnckql9a2hKe0UriFpDW68mVJqZiJNWTH85OMU7tUDy1fENPkkiRM8+aqW3S0UZg1Uc5x3N1KsjozxXNKU7bpOx2IUWC2KOH8P9e1VsFINsqHBb+Bd727porDL9NPlwCqBhj3lxf2zm8nK+7+VJqEtutKaOYl5lvHR1rUXXVd3qiItePakWJBXSsEfrY4w4aYuqeDerUVJVocShvKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E9ljSOwcKKW3sClP3TwnfKUJFVMD0w+R6VqXKw6T9uc=;
 b=tCyT7ipnpGkgfpuBtJ8S9vbTfcWDjFLUFwZooKEahMWRui9cTLJ1gWX1a+xLT1isRGzN/mCoMslwR6IGM/iv+UeKo1x8PxOVy08wcWn6eYeT6nhQqX0C21BCGAcKz/PfvnInCL2guJMP0XsRVErgXr4slubVZzwBDCGkelhHp5Y=
Received: from VI1PR08MB5471.eurprd08.prod.outlook.com (52.133.246.83) by
 VI1PR08MB4624.eurprd08.prod.outlook.com (20.178.81.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 16 Oct 2019 13:12:03 +0000
Received: from VI1PR08MB5471.eurprd08.prod.outlook.com
 ([fe80::d2a:3ddf:b43c:7681]) by VI1PR08MB5471.eurprd08.prod.outlook.com
 ([fe80::d2a:3ddf:b43c:7681%2]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 13:12:02 +0000
From: Matthew Malcomson <Matthew.Malcomson@arm.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Andrey Konovalov
 <andreyknvl@google.com>
Subject: Makefile kernel address tag sanitizer.
Thread-Topic: Makefile kernel address tag sanitizer.
Thread-Index: AQHVhCNMCNp7EqLSdU27PO4IUuGC7Q==
Date: Wed, 16 Oct 2019 13:12:02 +0000
Message-ID: <15b7c818-1080-c093-1f41-abd5d78a8013@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0030.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::43) To VI1PR08MB5471.eurprd08.prod.outlook.com
 (2603:10a6:803:136::19)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Matthew.Malcomson@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.49]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: f29d57da-ad0e-40f5-0624-08d7523a7443
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: VI1PR08MB4624:|VI1PR08MB3742:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <VI1PR08MB374271C7744BF391A9634342E0920@VI1PR08MB3742.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 0192E812EC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(376002)(136003)(366004)(189003)(199004)(102836004)(52116002)(8676002)(64756008)(66446008)(66556008)(66476007)(81156014)(186003)(66946007)(14444005)(2906002)(36756003)(6436002)(2501003)(81166006)(316002)(386003)(6486002)(256004)(6506007)(99286004)(110136005)(26005)(86362001)(476003)(44832011)(25786009)(66066001)(7736002)(2616005)(486006)(305945005)(31686004)(31696002)(6306002)(6512007)(6116002)(8936002)(3846002)(71190400001)(71200400001)(4744005)(478600001)(5660300002)(14454004)(966005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4624;
 H:VI1PR08MB5471.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: HtZNKN2fQuQuFJhFM0HxBbmY8t97Rp3NFA3TSCh/1eZpdCXzkAqM1nKp+aUo8X/6bipnrBE4IIOEP2f42pbC3731r6C0zDW7LpL5f6RXzHiGxLjoWLTgy7JF0nzjJtsZybYWOrkNB920iIo5RtYKTtqDITp8T9BTNse583zDrjWz0Gc6aFYaTxS6+3HAKz4snYPHWkBu4qKO7imbtLBqqysZRS7vag0JQB1XO/bsB0ZkuqVHGKXk9Z635tgWUtIwnfUvODOheHNZnw5TZ0PzYtvI/lfiW1JEy/ABvLjOMTF8AHZBni4xQ4v0llc8sIhqWlFqqkX+j8rK4wCurbjEiRDg8TFD5Sr8jpR8UAF+FgHgx5TbGEAUcUk9vN/Ur/UR+bkCswdM0sX4hyARLXvtwvnl1yVyfjIP45Ga2BHqk22YrWk0DyKmQaPtSWGe8hR/RtlbzIkEI6qsojgyPZ/new==
x-ms-exchange-transport-forked: True
Content-ID: <2B4699958FC0484DAFE17486B0B29B4A@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4624
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Matthew.Malcomson@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT010.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(376002)(346002)(199004)(189003)(40434004)(31696002)(8676002)(126002)(478600001)(14444005)(5024004)(966005)(66066001)(99286004)(305945005)(81166006)(6512007)(81156014)(86362001)(436003)(31686004)(63350400001)(26826003)(8936002)(2906002)(336012)(6116002)(25786009)(6306002)(3846002)(6486002)(486006)(476003)(5660300002)(2616005)(50466002)(110136005)(36906005)(316002)(47776003)(186003)(2501003)(76130400001)(22756006)(36756003)(70586007)(2486003)(23676004)(26005)(14454004)(7736002)(386003)(70206006)(6506007)(102836004)(356004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3742;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 1be4e3b0-9a36-4133-2b1a-08d7523a6f6a
X-Forefront-PRVS: 0192E812EC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KxXxV6PIjP9rpmVWa57u091jbWcbRomiHa6rTe9b0u6vaxBaEyTTgwq/qvzjsdhaOz+HPh+vaRYJZFe/wjI17YwGFAlZ2MPXPOlCcRE/xn6/7zBOdO9CUwWHUoaWVukEj+ZVRPKlazjxAUwgvn9383CO9kZR8dP1yjVGpPQjM/An+JJcocUSfw6liUkfUMbsDDhsaGgH5THa2FAp6KpJ4udXs+t05y/A1BlP5cLYERUCuCQ05nexUGSzzQrcBDcNJpfxdmV/UkJsQ5McfnQCLgaME7YbUHtjGfE38iHt137MUqU/ryY6lyAGudIxEnIsShlacL8JcQMmodNyhGr3Q6gVYfoMCwZaRyfnNWDpT/B7lpjbpGRdzmGC3Sh1nMd/QfHhu4aeVEoszVhGFBiKJnuhs8+9bRrrvzqXiiUJLQLmNaqaixReDBXUdDyWQTSITXiEbce7/WZa5+k0sP+LwQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2019 13:12:10.7764 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f29d57da-ad0e-40f5-0624-08d7523a7443
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3742
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_061218_363858_60D1077C 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:608 listed in]
 [list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

If this is the wrong list & person to ask I'd appreciate being shown who
to ask.

I'm working on implementing hwasan (software tagging address sanitizer)
for GCC (most recent upstream version here
https://gcc.gnu.org/ml/gcc-patches/2019-09/msg00387.html).

I have a working implementation of hwasan for userspace and am now
looking at trying CONFIG_KASAN_SW_TAGS compiled with gcc (only with
CONFIG_KASAN_OUTLINE for now).

I notice the current scripts/Makefile.kasan hard-codes the parameter
`-mllvm -hwasan-instrument-stack=0` to avoid instrumenting stack
variables, and found an email mentioning that stack instrumentation is
not yet supported.
https://lore.kernel.org/linux-arm-kernel/cover.1544099024.git.andreyknvl@google.com/


What is the support that to be added for stack instrumentation?


Thanks,
Matthew
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
