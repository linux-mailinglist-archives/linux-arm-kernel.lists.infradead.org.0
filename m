Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656171E3F3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 12:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Me8NBLBpgoYm8DYogQ/wobx68YkxL5zKBryer/M8z2g=; b=DaXKcHD7A9CsTv
	Bk0NA9kiENpuLo0/zekbKfQknS55B/7OCfdxirr9ZIcoZ7iGR43sgS2e/Re5N/WDO94T/JWy8xGDN
	/mTs4l256NnS4+jPhHj/tBlHT++4F9NsCyoAxUayJ8AB1by5Lk3wMc+MnsrhBODDMMtbJ9mjwvXP/
	5yi55k5tev3U4dCWiVYHK1S9U5Vu/yZb7e0pM9bvP1AzXMPKCtoLgsQb+L/AujwVldX2Au0bSA/q4
	HAFkKiDHixlSY7bH2kH1PKnezkkb7/1FsBYixIOjGUYPqX+O34qv+NfNok712XAyVZvGKGQZEwybD
	axu0UK9ovEm4HpFZZQCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdtRt-0005Xe-MN; Wed, 27 May 2020 10:38:13 +0000
Received: from mail-eopbgr130055.outbound.protection.outlook.com
 ([40.107.13.55] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdtRh-0005WY-To
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 10:38:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uC8hu/BFQIM7H4j/7IxzeLC11M3CPA3knApPExMqh5o=;
 b=OuSDJehM9/2x73TsGXFhJUdZg1fictz+TS21pGGoFuYcW2GZRhEqB+mqUjlNiO5BI7oe8ywuhitVFOEaUvI/xsggsC1KRg5eu7Ary1PdbER6KOPK0/y+V6GFbCOw0BfxnolRcRhikPHVLgdn5q9aL+zw7UEOlQxeO3arcrBF1eE=
Received: from AM5PR0402CA0011.eurprd04.prod.outlook.com
 (2603:10a6:203:90::21) by VI1PR08MB5454.eurprd08.prod.outlook.com
 (2603:10a6:803:13d::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Wed, 27 May
 2020 10:37:56 +0000
Received: from AM5EUR03FT057.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:203:90:cafe::36) by AM5PR0402CA0011.outlook.office365.com
 (2603:10a6:203:90::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17 via Frontend
 Transport; Wed, 27 May 2020 10:37:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT057.mail.protection.outlook.com (10.152.17.44) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Wed, 27 May 2020 10:37:54 +0000
Received: ("Tessian outbound cff7dd4de28a:v57");
 Wed, 27 May 2020 10:37:54 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: fd040cad52335522
X-CR-MTA-TID: 64aa7808
Received: from 172cffbdcd5a.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 01E3EC68-FE3A-429D-9424-4D5CCE0DDFCE.1; 
 Wed, 27 May 2020 10:37:48 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 172cffbdcd5a.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 27 May 2020 10:37:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RgxfJkHG3oCxKmHQ5pAS5YNhV+g2y8CsR7jA7uaY+L/XPlh82l2iLHvAukFis0MA13AKwEeF4q0JzOJRTlvCjtcYHQ/qYc+V6sV2qPpPLfB7avegO48JV4IE1YngNzjtHVXl3dRF8SDRHNicFz0E0JTCmi9aRvOAwwnhBkWsv70vS0FJIkekb4hN6ar3JJm9pxdLrLiszaF6YrF4KiMlsVg4qVHQwXyNgmcEuafCUFAVF5DtyolfMSp0lw1TdC+WqcYmssWJI+sBZe7tq138DUHP1qPYzUL6FJKn7CDZsXV97HDUieCbyS7h3CKjWdeoXg8gAj6yOPO1r0GRjpuYKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uC8hu/BFQIM7H4j/7IxzeLC11M3CPA3knApPExMqh5o=;
 b=V48bEE2f7QqRa34fHI4uxbem4RvSrLWr95H6qqAbi8JIUwC12uuoZG2YNJVio5J90mKT1wdzuFdTK5GUKd0joyON59QWGM6ZPaY0FXzLJtppPShLEiGR7sy6T8vxY1p7P2eTEYgSYPjueLS4bzNc2X8zd06ZVyBO5yM9mccQoZUG7c57UI21nsbmxHoPJv+sMqZk2OqQcQUKjpLhFq5qnYO7IJjV3n22Gqs5Fdtc05hWT9GZU3lwUlzYvNLFiuUQd256Kc34MPkPBY1bspdkyXnzG6H7KJYsySofv+CcQtrqAfKR9TMoQY7LOxTPbdUNdBsHYyCq+2qRFYhlyR/POA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uC8hu/BFQIM7H4j/7IxzeLC11M3CPA3knApPExMqh5o=;
 b=OuSDJehM9/2x73TsGXFhJUdZg1fictz+TS21pGGoFuYcW2GZRhEqB+mqUjlNiO5BI7oe8ywuhitVFOEaUvI/xsggsC1KRg5eu7Ary1PdbER6KOPK0/y+V6GFbCOw0BfxnolRcRhikPHVLgdn5q9aL+zw7UEOlQxeO3arcrBF1eE=
Authentication-Results-Original: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com (2603:10a6:209:4c::23)
 by AM6PR08MB4150.eurprd08.prod.outlook.com (2603:10a6:20b:ac::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Wed, 27 May
 2020 10:37:44 +0000
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862]) by AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862%7]) with mapi id 15.20.3045.018; Wed, 27 May 2020
 10:37:44 +0000
Date: Wed, 27 May 2020 11:37:42 +0100
From: Szabolcs Nagy <szabolcs.nagy@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 24/26] arm64: mte: Introduce early param to disable
 MTE support
Message-ID: <20200527103741.GB24512@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-25-catalin.marinas@arm.com>
 <a2ad6cbf-2632-3cda-eb49-74ddfbed2cec@arm.com>
 <20200518113103.GA32394@willie-the-truck>
 <20200518172054.GL9862@gaia>
 <20200522055710.GA25791@pdaly-linux.qualcomm.com>
 <20200522103714.GA26492@gaia>
 <20200527021153.GA24439@pdaly-linux.qualcomm.com>
 <20200527095504.GB11111@willie-the-truck>
Content-Disposition: inline
In-Reply-To: <20200527095504.GB11111@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: LO2P265CA0445.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::25) To AM6PR08MB3047.eurprd08.prod.outlook.com
 (2603:10a6:209:4c::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from arm.com (217.140.106.55) by
 LO2P265CA0445.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:e::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17 via Frontend Transport; Wed, 27 May 2020 10:37:43 +0000
X-Originating-IP: [217.140.106.55]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5ae0b493-e8a0-4536-a3e0-08d8022a03c0
X-MS-TrafficTypeDiagnostic: AM6PR08MB4150:|VI1PR08MB5454:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB5454C71CDD58A8DF74263635EDB10@VI1PR08MB5454.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;OLM:8882;
X-Forefront-PRVS: 04163EF38A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: XHvcw5wLFxQljxNlGP2UKVy8VNcEuwmnFZVuY6UKtgh4F0IynNrj+TudEYO4M105GmmFB9uw2WTspFUYGObV/EX1wiWyBwC1P2gdVNsAC35kaQgOXq5ZdyQGiQQyj+fVEfmqMAxIvMDdpEVSDM0lV54wIOBrrExeH9FWhGmh730t12NU6ncHb3zRMu/8vpsl0qijnUBEzEpIxQkQowl4VptMw/GIsw+xK+yZNM2ourXO40vS1QAGemrOeRXAFIwOxowRU0DtySgmjMf05Zu9NyD0wY4oOgnCCCowSv3lKGUZHKoyux2x35C/yDOtSrsMXfVtvgf2eNm7LBTfVvFvsw==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB3047.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(346002)(376002)(136003)(39860400002)(396003)(366004)(8936002)(36756003)(55016002)(478600001)(8886007)(6916009)(83380400001)(1076003)(86362001)(66476007)(66946007)(66556008)(5660300002)(8676002)(44832011)(2616005)(956004)(4326008)(16526019)(316002)(33656002)(26005)(186003)(52116002)(7696005)(54906003)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: WU5/LU97yIkZ2I/dQRNtktSaeffzR3B4ITIqJp3W75hWS+e6EiqDeLVk1ctV8obtN/qSFzHxtF172eakKM6UPy57diYeNX5xvEvXznL//JGX1W2LA3Gy5fmepbpTd0l6IKOO38qqdbS2nfRItNXoAl6rUdygJAqKgeDQh/3oaZ2GhDJvPLCuciFrLk4jevjtIR0NxGg1UVUtH0acTspQ66IuHnKM0ufn5aDfk5sGC6vWxOANq7OErTUon366W5QDCBSSg/si7hnRHFC23334qlgaCAdIyN9tZZADab/ag7Sm6COfoTXY4f8JcDQJwvhj2sqAOKB0s1TqqTnuuzySePNioQAazAh5vKDR8w5im0u47QbvpgcDX0TE+GzRlfSIQdycP7IjmLBElwS2zkB1ygErUNB9utqJQegBuUxqCyB25mvt1nebdjUIa42eOR2Gdsy/iqmic47vFPfBdf1Ls8BZ9iYRG86x1Dkvx8GqtJgOAY5F/Lj2+H6ge+xCGAmP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4150
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT057.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(136003)(39860400002)(396003)(346002)(46966005)(70586007)(2616005)(956004)(70206006)(7696005)(186003)(26005)(1076003)(6862004)(8886007)(81166007)(36756003)(47076004)(478600001)(83380400001)(4326008)(82740400003)(336012)(316002)(16526019)(2906002)(44832011)(356005)(82310400002)(5660300002)(33656002)(36906005)(86362001)(8936002)(54906003)(55016002)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 2235684d-8977-4109-faf9-08d80229fd41
X-Forefront-PRVS: 04163EF38A
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WpxCTUqMScC07MNLpjvcStfXEoj528ksZ1I5EoMBxQIqfQ/lRloQHrn5MjjB2SjUYjnA0qMa//9U9aIF8iLFxCfc2MCB2i2HwyAgc17ITaVGyiElKhvZ4YhLO8JMetPktmMvlo96ys3aw2HZksonm4mu0FGrZ8mquQYA0ont2SKmjL9DjwyCqC80NDlqBlTz7IvGSKCc3Nm3V5JBwpuqOYP6kYgYLWkZ6nmf8kWbFx5zVq4XVMYru7psnd45UesBGDs/fcfGGqH9IaUesnWMequeaia8BzU/9zeausyBDXuKR6vLAxSPkJS5Msu8AcjlV2PqxbfBawSoMSs7rlixYUocdOEcsx3nAVmdSxIBcthskcKVGBvXbH5ZeVHwKgxQoyZtUmxdDEN+FMtqD5Xw+w==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2020 10:37:54.7193 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ae0b493-e8a0-4536-a3e0-08d8022a03c0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB5454
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_033802_020965_9479343B 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.13.55 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.55 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: linux-arch@vger.kernel.org, nd@arm.com,
 Vladimir Murzin <vladimir.murzin@arm.com>, Patrick Daly <pdaly@codeaurora.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Dave P Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 05/27/2020 10:55, Will Deacon wrote:
> On Tue, May 26, 2020 at 07:11:53PM -0700, Patrick Daly wrote:
> > On Fri, May 22, 2020 at 11:37:15AM +0100, Catalin Marinas wrote:
> > > The actual question here is what the on/off behaviour is needed for. We
> > > can figure out the best mechanism for this once we know what we want to
> > > achieve. My wild guess above was performance analysis but that can be
> > > toggled by either kernel boot parameter or run-time sysctl (or just the
> > > Kconfig option).
> > > 
> > > If it is about forcing user space not to use MTE, we may look into some
> > > other sysctl controls (we already have one for the tagged address ABI).
> > 
> > We want to allow the end user to be able to easily "opt out" of MTE in favour
> > of better power, perf and battery life.
> 
> Who is "the end user" in this case?
> 
> If MTE is bad enough for power, performance and battery life that we need a
> kill switch, then perhaps we shouldn't enable it by default and the few
> people that want to use it can build a kernel with it enabled. However, then
> I don't really see what MTE buys you over the existing KASAN implementations.
> 
> I thought the general idea was that you could run in the (cheap) "async"
> mode, and then re-run in the more expensive "sync" mode to further diagnose
> any failures. That model seems to work well with these patches, since
> reporting is disabled by default. Are you saying that there is a
> significant penalty incurred even when reporting is not enabled?
> 
> Anyway, we don't offer global runtime/cmdline switches for the vast majority
> of other architectural features -- instead, we choose a sensible default,
> and I think we should do the same here.

i would not expect mte overhead if userspace processes
don't map anything with PROT_MTE and don't enable tag
checking with prctl. (i.e. userspace runtimes can "opt
out" of mte for better power, perf and battery)

is that not the case?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
