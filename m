Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0216A1BF5D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a54iYH6owFXupKRUuhkfuR7c9uF6X5SHs1E3iwlUfk8=; b=AotbbU3evRYLeZ
	wk1zzHjEF1ozt0wNizn0PXhhlrHcUM8dSXv1RpaslhYuv0CYwVc/lvSEyKPNXKn0HehNLEW3G2IYd
	C96U+I4zWzD3cR5ShtkX0zmhKaeADn76MdbLN4jLtszcfy1Podr2JRoIydyHBX7s/sUJOgtr1FAIt
	CbcMAv5g6KM4lntrBdnV+DSWe9AmuB4O/BLqK5I6ShTqUUnIT6Buwkhc8WVC8AF9l7wmKYFuYWb03
	eoTx9lG1L3Chp1g/tRj3TqRtdBQTIuwyysGHWLmoi+zsx1MCyJMEQJgPezCc7DqxPrP4vRHv+hroX
	cTa4UI0goN4+mtJyX6fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6kb-0005Uz-9w; Thu, 30 Apr 2020 10:49:05 +0000
Received: from mail-am6eur05on2073.outbound.protection.outlook.com
 ([40.107.22.73] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6kT-0005UH-Mt
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:48:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rtp2GqMFP9Cb5nwaHdlSANbUvU1dFHs9arklfYf3RPo=;
 b=CjaBMuukXhZ/o/pz5nCdMnGbrtE//E6kC6SsMOgpxWUiAsliIkvoZRBIuVCo6J8SMmx1XMOMf0WheMqDwlSvsdgHZOcOXjE7EHPZvLVHz4UnOVque29oWKXUQ8DWA8yfOfMvlZCHTqiuwimMDKJD0cCfYAKrxlg3Rhn6aRWZhdE=
Received: from AM6PR08CA0020.eurprd08.prod.outlook.com (2603:10a6:20b:b2::32)
 by HE1PR0802MB2314.eurprd08.prod.outlook.com (2603:10a6:3:c4::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 30 Apr
 2020 10:48:52 +0000
Received: from AM5EUR03FT059.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:b2:cafe::65) by AM6PR08CA0020.outlook.office365.com
 (2603:10a6:20b:b2::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20 via Frontend
 Transport; Thu, 30 Apr 2020 10:48:52 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT059.mail.protection.outlook.com (10.152.17.193) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Thu, 30 Apr 2020 10:48:52 +0000
Received: ("Tessian outbound 567b75aed2b9:v54");
 Thu, 30 Apr 2020 10:48:52 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ec42828c4a4aa989
X-CR-MTA-TID: 64aa7808
Received: from ac5c8c176cd7.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 FAFB3C07-118C-4518-BBC2-A33C7662F982.1; 
 Thu, 30 Apr 2020 10:48:46 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ac5c8c176cd7.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 30 Apr 2020 10:48:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KcvFej/lTe0eGoEZ5zPBJfjxx8wfMvg2b4AVx/N9MJpsJ1FjwlPEFx4FoD4/I38/yh7xdS+c6v7KlWJyq8DcGTGrcmQSLs53Cmbtl00I8/muvhHoXGqrAtfsyYDqFfPCUzBWJpW6MT9ExatHsTf1T1nelE0jmFuP6Ijzw3pq1Jtw1v8fgBnAMujAfnRiC8Mdfkdx+vmE+t+qQSY8s5s49sfiwQCe7iZuDNp/MCjk+SZZnmH/YVQdL1oXtQBrrTMgRgRnhNe/OoQ5OAjeclwk7gUHEL6HdQ71PUiSQk5FmLwmWDYBBh68nEBHjR5UkSZZSwSLPBGc3RR5s7mufSCLgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rtp2GqMFP9Cb5nwaHdlSANbUvU1dFHs9arklfYf3RPo=;
 b=h6ZbLk6vprluhRaEC2JiNbRF38MXm1W68JpjKVAF8DIi3BXOEmgazk9TXbN7hv/qwzn4DIBXi6GeHLMuSoLMX43U3yHsQsJDzKd4iXhIJ/HWyasN+9IGceyvmRIR6AEUPpshq4z7/QUZO8YxITtRsDcvqFUHktALsAlKNy7BrVHyx2NCSx9YEW21Ig7Qosp9zBlg1PWn3lvCP6Lyusl5lxh+BZHBMZywpNOZBm3dY75ygP6FSivnVBBZ2M6FgyKNqKqu/60/iBeLHz5Ndq1VUKzAPgB+Vjg8+3BqFjiSp+PLtIw2Flg+mH6E0DyqpMDF3/RMLBHhWthqVN/ZoW1Y9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rtp2GqMFP9Cb5nwaHdlSANbUvU1dFHs9arklfYf3RPo=;
 b=CjaBMuukXhZ/o/pz5nCdMnGbrtE//E6kC6SsMOgpxWUiAsliIkvoZRBIuVCo6J8SMmx1XMOMf0WheMqDwlSvsdgHZOcOXjE7EHPZvLVHz4UnOVque29oWKXUQ8DWA8yfOfMvlZCHTqiuwimMDKJD0cCfYAKrxlg3Rhn6aRWZhdE=
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com (2603:10a6:209:4c::23)
 by AM6PR08MB3654.eurprd08.prod.outlook.com (2603:10a6:20b:4d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 30 Apr
 2020 10:48:44 +0000
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862]) by AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862%7]) with mapi id 15.20.2958.020; Thu, 30 Apr 2020
 10:48:44 +0000
Date: Thu, 30 Apr 2020 11:48:42 +0100
From: Szabolcs Nagy <szabolcs.nagy@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2] arm64: vdso: Add -fasynchronous-unwind-tables to cflags
Message-ID: <20200430104841.GU29015@arm.com>
References: <20200429151050.31604-1-vincenzo.frascino@arm.com>
Content-Disposition: inline
In-Reply-To: <20200429151050.31604-1-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: LNXP265CA0061.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::25) To AM6PR08MB3047.eurprd08.prod.outlook.com
 (2603:10a6:209:4c::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from arm.com (217.140.106.55) by
 LNXP265CA0061.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:5d::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Thu, 30 Apr 2020 10:48:44 +0000
X-Originating-IP: [217.140.106.55]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d93c75d9-d0d4-4b14-4f39-08d7ecf41287
X-MS-TrafficTypeDiagnostic: AM6PR08MB3654:|AM6PR08MB3654:|HE1PR0802MB2314:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0802MB23149DBFBBCB1B7947B21F19EDAA0@HE1PR0802MB2314.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;OLM:6430;
X-Forefront-PRVS: 0389EDA07F
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB3047.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(366004)(396003)(136003)(39860400002)(346002)(376002)(186003)(52116002)(44832011)(36756003)(8676002)(2906002)(55016002)(956004)(26005)(2616005)(16526019)(7696005)(66476007)(4326008)(8886007)(316002)(86362001)(478600001)(37006003)(66556008)(6636002)(1076003)(8936002)(54906003)(66946007)(6862004)(33656002)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: dlCaal0Ojzz63UaW7rs2y75KRW4GnLziV+lPer5xZh/gnOBqZWVp68IIKKMVRmFR5MCOM0+Vtx0kj9TyqwNNU6CG9tLgeR5cFt3Gwrq/UHA39AOAHQd+Pi97svBtRiAKTvg2B/Vy6oNFukLhVBPNujV2Iz/urwyKLhiJtSutOIjPBuiU89feXCD9na8dMgkMo4fAw4VgrOyTdv9ZCRk9bXbvUXowEFWsjnzU2f3gHkBtyAM1JfGhzttpL1FzDKBYPonQQl7GVFsmlTd8ebCm2x5qPqQwgG9EKjpgpTipAd7EqfKeMRIQy7r5N21ADnpUKXNbDARnNOcLzcZcycRgzARAWdDHHsnh6b+gcw6x6HJiJuqib65obb1TwzVJedzF5AikLfftvtniTpc69X6pV01rd8o6n9N2RAlwuYRSYVoNBs6PDK1HIEbHMQUb9+v5
X-MS-Exchange-AntiSpam-MessageData: WemzOZK7jn41BhpDpL6SB2BJtOEwy2/KD/wy+m21I9mJQ+knPPOk+aP245O82DmQVpLcUjDgjDj72PQl8M/uUgfcA8lqW+7I3bNycWqiWT3rkG77PoEr9UNoZM8NFRYg7Y5SUPc+IpLXS/I6ZEgqOMF0uM0n6zVnCT+tLNGLfzyyea4PnL1dZntHnk6EHR+AjKCv0C6+W9q8waocyy6KI5N+YsE+j2ycXsWePL1C+Lmx2b0O00eZ4evGS8vmFkhHHRtlppm2PXT6VHSEQjvovoPL8GhtqOveswB52TJreAYZIXLVOB+ZfttTii2i7hOmkCrBhChvhZWbXvhQr3vEHENO3TsA5tMA6GrAb1RVdSHVwU+acSlHyiIaHM0y2BjwGQ/moG9jQqviMplEb0AVsrbMLdF7kGGhaDyMs/QVtmQRvjXz2ieRJsfDbhL9kfn6UmynEAJflSxemE7yRP1AQr0lUL0QStNtqB/uW/be7si04Hn7M6SyOlDEdTaYMuIt9PhhLND8E59gwlVfzMOBzfBje6FkNGwFnTG3NAxtYuVNV/+H2HL7etg+pD+PnuBfwT0x/YTBDgHxctkR6VDPfJv5SRdjOokWapde81UItIpX6MuKpQxlYbFyiPdBdMZA6frHxbcVD9tBq0d199fC6gGe2PmTaMvxgdQEIIweIv9SPUPkTyFzaVY1NOXBXJGmL59LA3GXI64o6lOkG/X3JquSJ+Ik/KyTT3z3eTuXMknsmuIs+BdA2oh7zekfrGUYpc7sXszVgYgXdz4EJIhX25Usv3IefTO0DGzYW6IMIcs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3654
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT059.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(39860400002)(396003)(46966005)(70206006)(70586007)(86362001)(478600001)(26005)(82310400002)(186003)(16526019)(356005)(8886007)(44832011)(2616005)(956004)(336012)(81166007)(36906005)(47076004)(6636002)(82740400003)(36756003)(7696005)(54906003)(37006003)(33656002)(8676002)(316002)(2906002)(6862004)(4326008)(8936002)(55016002)(1076003)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 8225fe03-d3d4-479a-e982-08d7ecf40dc3
X-Forefront-PRVS: 0389EDA07F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LDNgpQxAANVU0XLDWqRF/Eu1VLMYkDL0WpqdaETSIRxmf8WjqVJkFCqXDz+cZqSKkSTNXFRmpnWVFZtUKqc5z6YUg66fe17wqVuLJDxAlGVougqRJ34TUlQpvH4F9DFu8BHljUqyeQVf6umT08TgulLZojeqWYsh87a8oqWX1wv8rdEojIvyVNz7He2GbIjVlehWT6JhFgbF2YqndfRWZrwp63zgwWQdtrO0GQHdO69XEKd0lyza2JAQX1uTTtMNSjliWycg/qQvnK453JKfpapxzNsPDJBqiitrHGtVLuLGefExGgLTRS7T4qkgdQUjC5GEXQ2UY0xesTbppxssjpJRIkaJfxIYTeOPpb4LyEAQJiMrOq8yWfVSSVT+TN5HrXtuBAjRRIpHUGUTPAhezHSF4l9rRay3O2fT6Fff6awoMCchbhC3xN+dRmo+2LSBXeXIl45R5YuU0gFyZ2hwmzpZKWw8eEky6/ICyHpzuRKRg2wdJsk3f8lmu/eLaemRHDcdio7n/Gi7sjYWJ0QVNw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2020 10:48:52.2437 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d93c75d9-d0d4-4b14-4f39-08d7ecf41287
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2314
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_034857_744900_2BB9D947 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.73 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tamas.zsoldos@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 04/29/2020 16:10, Vincenzo Frascino wrote:
> On arm64 linux gcc uses -fasynchronous-unwind-tables -funwind-tables
> by default since gcc-8, so now the de facto platform ABI is to allow
> unwinding from async signal handlers.
> 
> However on bare metal targets (aarch64-none-elf), and on old gcc,
> async and sync unwind tables are not enabled by default to avoid
> runtime memory costs.
> 
> This means if linux is built with a baremetal toolchain the vdso.so
> may not have unwind tables which breaks the gcc platform ABI guarantee
> in userspace.
> 
> Add -fasynchronous-unwind-tables explicitly to the vgettimeofday.o
> cflags to address the ABI change.
> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

thanks, the patch looks good to me.

> ---
>  arch/arm64/kernel/vdso/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index 77ee40f4c8b7..59555612fb1d 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -35,7 +35,7 @@ UBSAN_SANITIZE			:= n
>  OBJECT_FILES_NON_STANDARD	:= y
>  KCOV_INSTRUMENT			:= n
>  
> -CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny
> +CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -fasynchronous-unwind-tables
>  
>  ifneq ($(c-gettimeofday-y),)
>    CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
> -- 
> 2.26.2
> 

-- 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
