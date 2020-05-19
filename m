Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AF81D9781
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 15:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NY3R7Cg0rANi9Jjv21bCBagI3rpDCmXNgtXF8q3fb70=; b=K2rMOMo5PBC0Vp
	ZseT2czJDpt8D9OGSLt6dJ8VuHX5yAduPWm6RrmS7cZfi8XiLXHIN5EbWM4T1yyQIDrTceh1Wqec1
	ATkziqah0g5CBsq2OAvTBgugVa9y+cN15OlM53qkBo9nHVeBLU5SWz9BPwJWGBuLF6OJuw7lWH13j
	+Ug/3DMVw3ccn1pjT4YgjnRC8FaG+hbXF08vEl/9oLiRpI0VZfhqdOQVAX7+M+GP3BIM/vmVPYDsF
	BNGlbbcU/aZNyY65kQ9q3KiSRmkroRJWpkjSxdQwObK9QXoFmvSuP/bgi0YbUP4CoH9IdSeFcMAq8
	CM8OjCtxE2cdxNOgQ+4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb29N-0008S8-8H; Tue, 19 May 2020 13:19:17 +0000
Received: from mail-eopbgr10066.outbound.protection.outlook.com ([40.107.1.66]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb20E-0003i1-7L
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 13:09:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kay4+xE253Qkcmov0ayR8K1et9oTuWtQiI+PdCDsJX8=;
 b=mIimXKxxBy3B1VFRm5gMtewicZuourSkTXar+lpSsd6NsEzEi2NM6bgA3lsGGzPw0tdZ9fwMiX7mvsLdyJ5FmM8dDqBrtDcZNseDRx6NY9GLFO00UohvTnG2AV4M9rz4b5WmY5l0kkCfMKaILoEm2cYbViCGsKyZjPIxBH7tYMw=
Received: from AM5PR0601CA0043.eurprd06.prod.outlook.com
 (2603:10a6:203:68::29) by DBBPR08MB4267.eurprd08.prod.outlook.com
 (2603:10a6:10:cb::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Tue, 19 May
 2020 13:09:42 +0000
Received: from VE1EUR03FT044.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:203:68:cafe::d9) by AM5PR0601CA0043.outlook.office365.com
 (2603:10a6:203:68::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25 via Frontend
 Transport; Tue, 19 May 2020 13:09:42 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT044.mail.protection.outlook.com (10.152.19.106) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.19 via Frontend Transport; Tue, 19 May 2020 13:09:41 +0000
Received: ("Tessian outbound b157666c5529:v57");
 Tue, 19 May 2020 13:09:41 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6d8158d91c6c5816
X-CR-MTA-TID: 64aa7808
Received: from 56697458a3d2.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 A65F8963-E216-48DE-900C-A5BD4B87A2F7.1; 
 Tue, 19 May 2020 13:09:35 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 56697458a3d2.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 19 May 2020 13:09:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K4le9n81zHorTOQ7XuUum0kSmv9Xo5e+3lXM9O8khs4gJCsGNgHzpNNoBog5J1YPE2Uqdh+KppqteXsISaz2SBMbP1XxheBP2rLdWo5gPqS92dvhK9DdPUq+cbRCYX+7cTPgM53KoztGd1DiXDPhNovfTc9sjci+eZdi+F9eAZA5aCL+1JK60ptm3Gte91KYyMgwGkuZkDbc0Jye+0nqMTbyo+DW7hPrnnxsgKoO8nD45cgssZQl+QFEbNFKHoSiV5PtVVvUlueUyJUxBJdqH0qARShDX51wHfdkPLF2NpWBmZeC4NHJKUfzlBCdVGB6uV+4X3r+dzRQp43bPtUKIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kay4+xE253Qkcmov0ayR8K1et9oTuWtQiI+PdCDsJX8=;
 b=XLa+A9GHzwWcZBgSMSBAs61/euzyDDRHO8XBm3RPkBeV4Dm1wFi8LezI9bNtVnd4Xq6fBwYrwMMDcGA9Njk4hc4mS3ai2rtRE8YcowgpUJgm9dFEGIOxyTl+waE8joyM+S9HeNBs26f+9D0zAEX39+/sUdPlHEbYq2R4xL32BM9Ofeny6K36AyusYcg2gpqa6vJfN8Jvp1wqM+jk/vLRQ48sNTjm34D4pZp5NxhMzcx0H/KLTpQrNKtxAtuw9gQjoOZTHqsaczPzdGP4/+5SPOA8L+3E+ba7uB9PlR0UWVvJvNo6n4lkdRgoKzb7RHIfiFa0AwbfNRobjLkRl2A6Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kay4+xE253Qkcmov0ayR8K1et9oTuWtQiI+PdCDsJX8=;
 b=mIimXKxxBy3B1VFRm5gMtewicZuourSkTXar+lpSsd6NsEzEi2NM6bgA3lsGGzPw0tdZ9fwMiX7mvsLdyJ5FmM8dDqBrtDcZNseDRx6NY9GLFO00UohvTnG2AV4M9rz4b5WmY5l0kkCfMKaILoEm2cYbViCGsKyZjPIxBH7tYMw=
Authentication-Results-Original: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
Received: from DB8PR08MB3945.eurprd08.prod.outlook.com (2603:10a6:10:a3::26)
 by DB8PR08MB5017.eurprd08.prod.outlook.com (2603:10a6:10:ef::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Tue, 19 May
 2020 13:09:33 +0000
Received: from DB8PR08MB3945.eurprd08.prod.outlook.com
 ([fe80::a539:c70b:e7ee:aabf]) by DB8PR08MB3945.eurprd08.prod.outlook.com
 ([fe80::a539:c70b:e7ee:aabf%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 13:09:33 +0000
Date: Tue, 19 May 2020 14:09:31 +0100
From: Dave P Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/3] arm64: vdso: Fix CFI directives in sigreturn
 trampoline
Message-ID: <20200519130930.GO10636@e103592.cambridge.arm.com>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-4-will@kernel.org>
Content-Disposition: inline
In-Reply-To: <20200519121818.14511-4-will@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-ClientProxiedBy: LO2P265CA0472.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a2::28) To DB8PR08MB3945.eurprd08.prod.outlook.com
 (2603:10a6:10:a3::26)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from e103592.cambridge.arm.com (217.140.106.50) by
 LO2P265CA0472.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:a2::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Tue, 19 May 2020 13:09:33 +0000
X-Originating-IP: [217.140.106.50]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9d642939-3be2-4416-a5d4-08d7fbf5e4d5
X-MS-TrafficTypeDiagnostic: DB8PR08MB5017:|DBBPR08MB4267:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB426745519CD067747323C104FEB90@DBBPR08MB4267.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;OLM:4502;
X-Forefront-PRVS: 040866B734
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: cd1AUJqLK/2dXuwp1lAD0DDA8JgkBCsLTwiXTO5eeWaIe9TVPMRsHiGZQtJsbmRDdR8vQDAxKyT8NqQzpfzNm9KmV5frQJ+Bt8jXWc169IFBBFZtWmRNcoSG/QJ8mGHON6PQ+Le6iX0hWEgLh7xQRZKs4RnsunxLeSopoiD7Qwx81soxE+eMIpwiWk5oFzrlST+H5ZrbLr1W5E0cnfnfhP5W8UvLPIh6wKoS7uYBUyazmXYiwzeLBc4vBBsctO9qMjK3JhKbb4E+PN3CRUcwgpF+GTyGHzVXQTSo+fOs/dLr7cOVYQ77yzRUek8ABTp6Jl9pK7V6zdcJI64r/9WyXy4tgWX0EqjJ6TNP5jgIqBG3oKAeVaZZ1SouZVd8jeAF5yxzFzW4hDUNwcJGs2Bh03k7hB2BzKROVX6yXhwIJOg4ZBFQi7N9k1PpfEGwT0OX
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DB8PR08MB3945.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(39860400002)(136003)(346002)(366004)(396003)(16526019)(186003)(2906002)(26005)(33656002)(8676002)(1076003)(316002)(54906003)(8936002)(956004)(5660300002)(6916009)(4326008)(86362001)(66946007)(66476007)(478600001)(55016002)(66556008)(7696005)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: SVxEGKlmPoOAfUMC1h337noLDcP/9ATIUtoXxWOW8Ywca8ouqzNPq3i54vqloNQ2pvcFNHqsFMvgqaDQitPZJYf90tGXgcoH2BlwAJ8lD6RD1nL5HkyN7yrq4Dj7T+pAsdW0yLdE+GbkCvo7ax7P/reprEp53ZiFC6JOkOLmwU8srszEbJ8AdR77catMB9faBCrx4QOEjeKXrj+6M6SzPErUBDIcwU5VbtLXZEkuWVzespsbI4crQ7zkom4kD9alOYdiQWSIbQqMh4E7hWIad2KlMwJeyNvykUM1pN9og8qdinrBjv9dNT0QbdKKS7rR1bmcmEpsg6j1UdXFFtVasFfj+P3BJDffDk2Fp/yQqJJDWBcuWB4SBvDjhIEfiPg6WJsRG1C7gp8mfvuX4JWa3f/qxvsTte05NeXSRnhzUE7tu0WAYnKItTUlT3bR/hwVIoJttxqZT+sza01wksHGFjFQBwUTtLmhZO84rSbSoX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5017
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT044.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(136003)(39860400002)(346002)(376002)(46966005)(6862004)(47076004)(478600001)(36906005)(316002)(5660300002)(33656002)(336012)(4326008)(2906002)(956004)(54906003)(186003)(16526019)(86362001)(7696005)(55016002)(26005)(82740400003)(8676002)(356005)(81166007)(8936002)(82310400002)(70206006)(70586007)(107886003)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 4a232ab6-152a-4023-13f8-08d7fbf5dfa4
X-Forefront-PRVS: 040866B734
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dtNW+pQH9zFQlFcDRoFXoNCBbuqzxs81WrVJclv+ho4LEieAgeK9KqMnmSZJ+qoNDqlwbL8pdezLww91a2N0S+Rg7K9+/SvrBNJ2ktBW1tBpRyBVBs9Zg9UaYHltWiO5fjJUKQ/lBiY7qIK1jdoLqT/vML1aOOKNzeN0TQVy7PZIwL1jlQkPdpyOEt5x30JLhLQnVMd8LLex0M48XgICdCAqYsCw8jsg9NxmtQiUjgJQyI7TUHfl1/3kuE7VnEChmL2mYp9Fp2FwWr1liZqFe6ncacbqfnlh82YBF1t1FLqK4vFVvtWkYwCU+MtmEayd3BnjZn91hktcO3AF1uuwrVM2x19O5DUv3VV7JUnvEZdMgyrvETiK9cDB5Xr9IMWyh9wZIMcRA+Pu4790xjUdYeo+wup3jYGwXY9ZyZ368tHyF+Oig7ADh0jNg4kqvDDxP0wkgrImn4T/1oWdg8e4oWVGZK7GeEds7adz5yS6XGsnKmFn2czUg5r+QKOUQln+3gwV6VIPFdufgwFXrnHVeQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2020 13:09:41.9901 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d642939-3be2-4416-a5d4-08d7fbf5e4d5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4267
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_060950_356900_FD2704F0 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Tamas Zsoldos <Tamas.Zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 "kernel-team@android.com" <kernel-team@android.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Daniel Kiss <Daniel.Kiss@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMDE6MTg6MThQTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gRGFuaWVsIHJlcG9ydHMgdGhhdCB0aGUgLmNmaV9zdGFydHByb2MgaXMgbWlzcGxhY2Vk
IGZvciB0aGUgc2lncmV0dXJuCj4gdHJhbXBvbGluZSwgd2hpY2ggY2F1c2VzIExMVk0ncyB1bndp
bmRlciB0byBtaXNiZWhhdmU6Cj4gCj4gICB8IEkgcnVuIGludG8gdGhpcyB3aXRoIExMVk3igJlz
IHVud2luZGVyLgo+ICAgfCBUaGlzIGNvbWJpbmF0aW9uIHdhcyBhbHdheXMgYnJva2VuLgo+IAo+
IFRoaXMgcHJvbXB0ZWQgRGF2ZSB0byByZWFsaXNlIHRoYXQgb3VyIENGSSBkaXJlY3RpdmVzIGFy
ZSBjb250cmFkaWN0b3J5LAo+IGFzIHdlIHNwZWNpZnkgYm90aCAuY2ZpX3NpZ25hbF9mcmFtZSAq
YW5kKiAuY2ZpX2RlZl9jZmEsIHdpdGggdGhlIGxhdHRlcgo+IHVuY29uZGl0aW9uYWxseSBpZGVu
dGlmeWluZyB0aGUgaW50ZXJydXB0ZWQgY29udGV4dCBhcyBvcHBvc2VkIHRvIHRoZQo+IHZhbHVl
cyBpbiB0aGUgc2lnY29udGV4dC4KPiAKPiBSZXdvcmsgdGhlIENGSSBkaXJlY3RpdmVzIHNvIHRo
YXQgd2Ugb25seSB1c2UgLmNmaV9zaWduYWxfZnJhbWUsIGFuZAo+IGluY2x1ZGUgdGhlICJteXN0
ZXJpb3VzIE5PUCIgYXMgcGFydCBvZiB0aGUgLmNmaV97c3RhcnQsZW5kfXByb2MgYmxvY2suCj4g
Cj4gQ2M6IFRhbWFzIFpzb2xkb3MgPHRhbWFzLnpzb2xkb3NAYXJtLmNvbT4KPiBSZXBvcnRlZC1i
eTogRGF2ZSBNYXJ0aW4gPGRhdmUubWFydGluQGFybS5jb20+Cj4gUmVwb3J0ZWQtYnk6IERhbmll
bCBLaXNzIDxkYW5pZWwua2lzc0Bhcm0uY29tPgo+IFNpZ25lZC1vZmYtYnk6IFdpbGwgRGVhY29u
IDx3aWxsQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIGFyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0
dXJuLlMgfCA4ICsrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2ln
cmV0dXJuLlMgYi9hcmNoL2FybTY0L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5TCj4gaW5kZXggNzg1
M2ZhOTY5MmY2Li4yOGIzM2Y3ZDA2MDQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwv
dmRzby9zaWdyZXR1cm4uUwo+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJu
LlMKPiBAQCAtMTQsNiArMTQsOSBAQAo+ICAKPiAgCS50ZXh0Cj4gIAo+ICsvKiBFbnN1cmUgdGhh
dCB0aGUgbXlzdGVyaW91cyBOT1AgY2FuIGJlIGFzc29jaWF0ZWQgd2l0aCBhIGZ1bmN0aW9uLiAq
Lwo+ICsJLmNmaV9zdGFydHByb2MKPiArCS5jZmlfc2lnbmFsX2ZyYW1lCj4gIC8qCj4gICAqIFRo
aXMgbXlzdGVyaW91cyBOT1AgaXMgcmVxdWlyZWQgZm9yIHNvbWUgdW53aW5kZXJzIHRoYXQgc3Vi
dHJhY3Qgb25lIGZyb20KPiAgICogdGhlIHJldHVybiBhZGRyZXNzIGluIG9yZGVyIHRvIGlkZW50
aWZ5IHRoZSBjYWxsaW5nIGZ1bmN0aW9uLgo+IEBAIC0yOCwxMSArMzEsNiBAQAo+ICAgKiBpcyBw
ZXJmZWN0bHkgZmluZS4KPiAgICovCj4gIFNZTV9TVEFSVChfX2tlcm5lbF9ydF9zaWdyZXR1cm4s
IFNZTV9MX0dMT0JBTCwgU1lNX0FfQUxJR04pCj4gLQkuY2ZpX3N0YXJ0cHJvYwo+IC0JLmNmaV9z
aWduYWxfZnJhbWUKPiAtCS5jZmlfZGVmX2NmYQl4MjksIDAKPiAtCS5jZmlfb2Zmc2V0CXgyOSwg
MCAqIDgKPiAtCS5jZmlfb2Zmc2V0CXgzMCwgMSAqIDgKCkhhdmluZyB0aG91Z2h0IGFib3V0IHRo
aXMgYWdhaW4sIEkgdGhpbmsgaXQgbWlnaHQgYmUgYmV0dGVyIHRvIHN0aWNrIHRvCnRoZSBvcmln
aW5hbCB2ZXJzaW9uLgoKSWYgdGhlIHNpZ25hbCBoYW5kbGVyIGlzIGhhbGZ3YXkgdGhyb3VnaCBt
dW5nZWluZyB0aGUgc2lnY29udGV4dCB0aGVuCmJhY2t0cmFjaW5nIHVzaW5nIHNpZ2NvbnRleHQg
d29uJ3QgYmUgcmVsaWFibGUuCgpJbiBhbnkgY2FzZSwgaWYgc29tZXRoaW5nIGluIHRoZSBpbnRl
cnJ1cHRlZCBjb2RlIGNhdXNlZCB0aGUgc2lnbmFsLCB0aGUKYmFja3RyYWNlIG9mIHRoZSBvbGQg
c3RhY2sgaXMgbGlrZWx5IHRvIG1lIG1vcmUgdXNlZnVsLCBhbmQgdGhhdCdzIHdoYXQKeDI5IHdp
bGwgZ2l2ZSB1cy4gIElmIHRoZXJlJ3Mgbm8gb2xkIHN0YWNrIGJlY2F1c2Ugd2UgYmxldyBpdCBh
d2F5LAp0aGF0J3MgdG9vIGJhZC4KCgpQbHVzLCBpbiB0aGUgYWJzZW5jZSBvZiBhbnkgc3BlYyB0
aGF0IHNheXMgZXhhY3RseSB3aGF0Ci5jZmlfc2lnbmFsX2ZyYW1lIG1lYW5zKiwgd2UgcHJvYmFi
bHkgZG9uJ3Qgd2FudCB0byByb2NrIHRoZSBib2F0LgoKQ2hlZXJzCi0tLURhdmUKCgpbKl0gYXNz
dW1wdGlvbiwgYnV0IHRoZSBhcmNoIEFCSSBhbmQgRHdhcmYgc3BlY3MgYXJlIHVubGlrZWx5IHRv
IGNvdmVyCnRoaXMsIGFuZCBMaW51eCBkb2Vzbid0IGdvIGluIGZvciBzcGVjcy4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
