Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2EA19C080
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 13:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zl/9CCBUcUwNDA9PmMIRq5QH58ONbCZB8qVp9OBKq0k=; b=KYKdRjqbXTUcd4
	iLO3Iq7riBgH5Ku6CiFSBXgz/tZGhm09NHn4wtV2Z2+yEgiyMULoc/4I54jNKqZQYQSO18gbrHmhV
	D/evgtYYYoeoGXM4jOBBwZPyr8J3jD53XoAVkutaef/fMQmOSI8FBAQ/J26O6tF4tMAqG9czTQw0T
	FmJyTbAb1ewjC7wqMYm6pXMwZ88Ohcowf4hIRTXtK0COqngNstgT1nXDdwy2A9UN+2qlR8+7Jta0W
	/8SClMRYNElgivo4+Syuj1XqueBqo4l0c2PVFSmVNVjN2XLDHcaAzaRm8N5eoAXGEmaNmcVdndiRK
	sgC04zBP9DA+DXxMKSKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyMe-0008Le-9z; Thu, 02 Apr 2020 11:50:28 +0000
Received: from mail-am5eur03on0615.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::615]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyMW-0008Kg-1A
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 11:50:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o3SHjzv6VksVqXOwVc86rWwPnhsLVe8wD+7ZocLt60E=;
 b=RQvk5Da/qTz3j7+VTRM1DfAWDhik9Z7yONMIxmqXcMbRnIH82tZjlnpEzQw9Fn5o4zEAT0CAxE/zXV7BvI+nZvCeQJyd9HxdIUmqr4RYzKUuOxc9kLHmzsqt1fZVgpWTAMmnZD8vR8q79/3u41/V4CkIOVp2Q3tqAn+QkreGYNM=
Received: from AM0P190CA0022.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::32)
 by AM0PR08MB4050.eurprd08.prod.outlook.com (2603:10a6:208:12a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Thu, 2 Apr
 2020 11:50:14 +0000
Received: from AM5EUR03FT034.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:208:190:cafe::9) by AM0P190CA0022.outlook.office365.com
 (2603:10a6:208:190::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Thu, 2 Apr 2020 11:50:14 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT034.mail.protection.outlook.com (10.152.16.81) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Thu, 2 Apr 2020 11:50:14 +0000
Received: ("Tessian outbound 4b84da486446:v50");
 Thu, 02 Apr 2020 11:50:14 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6d5784621320604d
X-CR-MTA-TID: 64aa7808
Received: from ba279f4a7043.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 9D05B320-9572-44A6-9603-450B6F14C06A.1; 
 Thu, 02 Apr 2020 11:50:09 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ba279f4a7043.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 02 Apr 2020 11:50:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mMGXJoKHuVuIldI/gvDRnowENj55uq1/yJWnoIoPvcVW7+zum8DF7jzB7dQLeOsq0qu5lOOKJ8IU6DhbxCEeRlxJCZax4sHucPnDALjUlp558joOqjwdYHjnzMN9EJWXd5j3iBnlN/H+gqaE1P/QXgUedTnweY6vnSMOzVfU64s2H1gboX+Mb2x157IMv5NcBlY53Anjl9rse4ydCwXosQHaDccMSGf8D4N+Z35RwXuBTBn9LvDtegtCrbbYOE5AphUlAFlPGys3/ZQrIAhojUYCNm+MSRybpapNFDtCtahxW8/i5YpumQ3syUSsyHVhns30Og+84sbzuKhdWVoR2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o3SHjzv6VksVqXOwVc86rWwPnhsLVe8wD+7ZocLt60E=;
 b=R8bClHl7pAg8ZmsVGS0lG4zMOPAXA+2+qSJCtwffv4SuWXK/uu6YaE0x3NjFWn5ckl/znjppPcnLc2vwOTS0Xg8YIftpzTTuARqpMJ3B3yF2/WBwIBcMae1Xr427or8rbWH2f3v4l8orF2CvgD7ceK2G4zIinEtKUxkOdZEu6Yi1/noh6kDHEad/9CNrjK7VaoWF9WX16ioyuAHXb1x/Vx/aKTSDYnivkrMMvHL6GWXFDQAbIhCYiCK6tA1xWXZw4j5NaVIUQHVOagtJxZ8ZRDUldzg4Mzs61y7MyBObOAUGs6UusiQGBpRmsqy5a+sZLfAtvoOwFZWz2FB5ASKNDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o3SHjzv6VksVqXOwVc86rWwPnhsLVe8wD+7ZocLt60E=;
 b=RQvk5Da/qTz3j7+VTRM1DfAWDhik9Z7yONMIxmqXcMbRnIH82tZjlnpEzQw9Fn5o4zEAT0CAxE/zXV7BvI+nZvCeQJyd9HxdIUmqr4RYzKUuOxc9kLHmzsqt1fZVgpWTAMmnZD8vR8q79/3u41/V4CkIOVp2Q3tqAn+QkreGYNM=
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com (10.255.78.22) by
 DBBPR08MB4235.eurprd08.prod.outlook.com (20.179.40.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15; Thu, 2 Apr 2020 11:50:06 +0000
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d]) by DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d%6]) with mapi id 15.20.2856.019; Thu, 2 Apr 2020
 11:50:06 +0000
From: Peter Smith <Peter.Smith@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
Thread-Topic: [PATCH] ARM: OMAP2+: drop unnecessary adrl
Thread-Index: AQHWCNPf3/UDtOa4QU2PsSz3b6wtIqhlszgI
Date: Thu, 2 Apr 2020 11:50:06 +0000
Message-ID: <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>,
 <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
In-Reply-To: <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Peter.Smith@arm.com; 
x-originating-ip: [217.140.106.52]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 23b50d76-2d49-437a-3961-08d7d6fc01cf
x-ms-traffictypediagnostic: DBBPR08MB4235:|AM0PR08MB4050:
X-Microsoft-Antispam-PRVS: <AM0PR08MB4050AA9240F8AEEB26F4541FF8C60@AM0PR08MB4050.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0361212EA8
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DBBPR08MB4823.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(39860400002)(136003)(346002)(55016002)(9686003)(7696005)(66946007)(186003)(76116006)(86362001)(66446008)(66556008)(26005)(4326008)(66476007)(2906002)(64756008)(91956017)(5660300002)(71200400001)(52536014)(6506007)(8936002)(8676002)(81166006)(54906003)(316002)(110136005)(81156014)(33656002)(478600001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: fAVJyEuS8uPo9WMBLRCpOU1H3irqxGXB76u2wfS6uwoeXIHybtz++ONOi3rQ3NXXbbz4g38PzGVJblxnGSySy2kKx7KAti0yfL5XQXpI/SSm08QxrkJltSM0n6RnWjgX+hVjoWp8sLhr5o6DKxNoe8DiGlsop5if5N2OTDdJUtWjb5ghM6wu9dFV5fSw1/5Czm3RIJzcHdaaK5YfG5Z+wX7WnIk+shKgVJQZCTFvP4DBFcQeRVesAL1T1ME/TKsmu9nfsXXQyuNhAhJEFKIPXrU/5d8ji62PkUD3SEpV9nvOKEi+hlDEO8QtX6dpd2Ry7cHaUWKL74mpVA2mebMvH01JH+pPbL5QhsT23D0m8C03JHAh39KUczYCdoagKx2XjHaiMj9SNEi1d+J8vf1a1s7nb71gxC7s6lO1r2LT4Gj7oCOIdNDbBbo7JCfPTdUb
x-ms-exchange-antispam-messagedata: LF0IVdtaZ71m8SOUI+4+OL/4WdJTMK/Pz2+zTuG0PaVYD1xF0YZ1eyVyrDYeiTEOXZ5UAxG6FUp8/GyECBwByYeauowjJ1ugAutHghp9zIL53HPitLfbiajkkofF3fcMQ72MuPOxRRSpWyFYlOVDgQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4235
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Peter.Smith@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT034.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(39860400002)(46966005)(82740400003)(26005)(47076004)(70586007)(70206006)(36906005)(336012)(55016002)(6506007)(2906002)(86362001)(316002)(33656002)(9686003)(356004)(81156014)(26826003)(8936002)(81166006)(54906003)(52536014)(110136005)(5660300002)(4326008)(478600001)(186003)(7696005)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 218812dc-5b3b-4cc6-4cf2-08d7d6fbfcf7
X-Forefront-PRVS: 0361212EA8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JKGKp+0WP4hXK1AvI5DG95N3/sUiZ8qMAZaDbo2lqjdzTLHn8FRzvsYkU9pjsIsyR/7W+tjq0NHXR7yEkA+lozwsL+lLwM4Nn4JzfH5YQ0kj2kdwj1D68EWW0YRd5kdDfJOaVai81j4dxv9igEw4w8AmrHjC4IeHqZ6wqTmq2D0J0c90Iz7HCx5ECtqfPgNiq1Ry7l0OA/47XlSX3ytu+n9sIBCe3aoyBMO70dn71n2iaCgA95Jl1IJzYVl3Gem3+df2VB6axczDhjCVuGaxz1RlABynEB2lAkl4M+9I+JuMP6rx6e8BQeSoL/6mrd5wb7jl+1LVIV23ZPTImK1GzpNLB2YmwPIxGR2JiLxfco8PYl3Wh3r0scNXsBn5DE7GAi5ffUTbYRQAIpUb4aiOZ0mrpvw/xFjpLlKhbUvnar3Owd/xDanJEU+QjkJtomXrNpSibd2VSKjKIN2sx2SyPNvf5GzeriO4EOCT3FCEro8snDrV5mdd2unfaSCyDwT5hs9jmy73Yt8jEgjz+gX1sg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2020 11:50:14.6094 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 23b50d76-2d49-437a-3961-08d7d6fc01cf
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_045020_141081_0DFFD761 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:615 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nd <nd@arm.com>, Tony Lindgren <tony@atomide.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> I take it this implies that the LLVM linker does not support the
> R_ARM_ALU_PC_Gn relocations? Since otherwise, adrl could simply be
> expanded to a pair of adds with the appropriate relocations, letting
> the linker fix up the immediates (and the ADD vs SUB bits)

Not at the moment. I have a patch in review to add the G0 variants for these in Arm state at reviews.llvm.org/D75349 . As far as I know LLVM MC does not have support for generating the relocations either. This could be added though. I agree that using the G* relocations with a pair of add/sub instructions would be the ideal solution. The adrl psuedo is essentially that but implemented at assembly time. I think it would be possible to implement in LLVM but at the time (4+ years ago) I wasn't confident in finding someone that would think that adrl support was worth the disruption, for example the current Arm assembly backend can only produce 1 instruction as output and adrl requires two.

I'd be happy to look at group relocation support in LLD, I haven't got a lot of spare time so progress is likely to be slow though.

Peter 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
