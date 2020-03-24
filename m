Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5224E191531
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lgio4zC6ci2vYznHWr4w5Tn3FXLlyc/aCgmelE+uWbA=; b=agZyPIMmL8ImEL
	4v6Ycm4daxHkt40Pcq+bQsupstl/NNK4g7L//PAQ2XDBd1+iZHXiVK4fMeU70ufoJRh+XB4/YJUnC
	IT/XIlbYgR/VrE+Dyii3+ZAeV/CxpX0zP+uwd6QDflXkngOBZkHqTS8rSp3rNfgyxE2Jrzcw/JEyR
	rTh9HasBhE4Uq9ruYdk/22P+O8YCGgef53yyFde08aSRv9Wh2vDCKFfd4+ohRz+SfdJMrbBFfskNi
	OOjKQ3j+087ID+n7JU8IMX06+stdAokFx/c9ggfW7+SUSoeQt1uRptGEYzhVuFK3qKB+96g0wRu0p
	1y20zsxaDwhKjousNR1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGliG-0003UA-Sw; Tue, 24 Mar 2020 15:43:32 +0000
Received: from mail-am6eur05on2064.outbound.protection.outlook.com
 ([40.107.22.64] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGli6-0003TT-7U
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:43:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Fla4sXaPad55Nij6ZzXNP1ZOBrwBbcC5iu0t+8KKT4=;
 b=XqiHYJigOLsJh0RvO980q3krI5r1UPuFX+Ge+O7+TmEox9qP1jSeySImy3TiGohVa6TZYnURNBlo7tu80alaBxTWnr2nPhrE6jpRS3jNFN/rm7GC6k57lCqa8yTs8xa6xpEgGEv7ahyJvfdwdDcneA0RQZ0ZCiLPtBTlHByVtmo=
Received: from AM6PR10CA0031.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:89::44)
 by VI1PR08MB4557.eurprd08.prod.outlook.com (2603:10a6:803:f5::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18; Tue, 24 Mar
 2020 15:43:15 +0000
Received: from VE1EUR03FT008.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:89:cafe::c) by AM6PR10CA0031.outlook.office365.com
 (2603:10a6:209:89::44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.15 via Frontend
 Transport; Tue, 24 Mar 2020 15:43:15 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT008.mail.protection.outlook.com (10.152.18.75) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Tue, 24 Mar 2020 15:43:15 +0000
Received: ("Tessian outbound 88ba19940385:v48");
 Tue, 24 Mar 2020 15:43:14 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6690d2a80a708ad5
X-CR-MTA-TID: 64aa7808
Received: from 5c87364f9cf0.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 FC568FD2-1ABD-472A-915C-5C8A3C80FB6C.1; 
 Tue, 24 Mar 2020 15:43:09 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5c87364f9cf0.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 24 Mar 2020 15:43:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/BFiRwrACG7uytRWnw50hjG6bqsUl3chkpD33AO0f4aq9GPIrreBf4DJ3HEgUCeAkBoblutsnlfbfNZbMs/B2975NSwsxRTV4N31Sjcaq1tCPgfS6HReEY8o32apwPAG2EjWJOaosj/reKzHDdTvoUgoc9tKCno8nPr2MsOKzJoO9x8LY8A88NmCQdynTnE/4QsdNM45NoLm1FZ+34/SJdtmPJyi2q8EYNfm3P4dwNAD7Ib0wOJtnfa37AUyMn0sT5OwvP2dFpjqvZHgBfksKwfhjp8vE6zfUe3HWlSlzzEFkVe8nR8CEUwvUmIynAM0M8YEhiQmT5wOJzN5rtX+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Fla4sXaPad55Nij6ZzXNP1ZOBrwBbcC5iu0t+8KKT4=;
 b=BTh7mY+dgL9uc4knbPqz6O2hquD2g/LQlfP1Fn8vejgZskR5A4jLDI5GVjM4himbPP0mx3B+DpxxCo++Xsch+Z8EjphRqMZ2nLa4JPtr6Dj5AOSZ4ecOta0597OMWzy0p4INmNiWfE3orXDyvo6qx1RLYf570wYt9Z4rh+oEgApfVjMCdPaE77LeMY2YCqNB5aJKSq59zOstieAhLpFyEn8heRQJvlffD4J5kRPKzRsSFPLvKTfQA27gwrssft3KTDKealik6kkwz5/51D3/2obTfDM7HOId9Vm5ApFbgT0Zef1MRlaP73V3NoO3fbvIhBV2uqUGTpkWqP1lvya9LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Fla4sXaPad55Nij6ZzXNP1ZOBrwBbcC5iu0t+8KKT4=;
 b=XqiHYJigOLsJh0RvO980q3krI5r1UPuFX+Ge+O7+TmEox9qP1jSeySImy3TiGohVa6TZYnURNBlo7tu80alaBxTWnr2nPhrE6jpRS3jNFN/rm7GC6k57lCqa8yTs8xa6xpEgGEv7ahyJvfdwdDcneA0RQZ0ZCiLPtBTlHByVtmo=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com (52.135.167.23) by
 AM6SPR01MB0057.eurprd08.prod.outlook.com (10.255.22.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Tue, 24 Mar 2020 15:43:06 +0000
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::8937:3724:2930:ee81]) by AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::8937:3724:2930:ee81%3]) with mapi id 15.20.2835.023; Tue, 24 Mar 2020
 15:43:05 +0000
Date: Tue, 24 Mar 2020 15:43:03 +0000
From: Szabolcs Nagy <szabolcs.nagy@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200324154302.GE27072@arm.com>
References: <20200316165055.31179-1-broonie@kernel.org>
 <20200320173945.GC27072@arm.com> <20200323122143.GB4892@mbp>
 <20200323132412.GD4948@sirena.org.uk>
 <20200323135722.GA3959@C02TD0UTHF1T.local>
 <20200323143954.GC4892@mbp>
 <20200323145546.GB3959@C02TD0UTHF1T.local>
Content-Disposition: inline
In-Reply-To: <20200323145546.GB3959@C02TD0UTHF1T.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: LO2P265CA0053.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::17) To AM6PR08MB3047.eurprd08.prod.outlook.com
 (2603:10a6:209:4c::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from arm.com (217.140.106.55) by
 LO2P265CA0053.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:60::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.15 via Frontend Transport; Tue, 24 Mar 2020 15:43:04 +0000
X-Originating-IP: [217.140.106.55]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 475231bc-22b6-4506-fba5-08d7d00a112a
X-MS-TrafficTypeDiagnostic: AM6SPR01MB0057:|AM6SPR01MB0057:|VI1PR08MB4557:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB45575F8608D8FE200BBEDFD0EDF10@VI1PR08MB4557.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-Forefront-PRVS: 03524FBD26
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(39860400002)(346002)(376002)(44832011)(52116002)(2616005)(54906003)(7416002)(186003)(16526019)(5660300002)(956004)(36756003)(316002)(26005)(37006003)(33656002)(66556008)(66476007)(86362001)(55016002)(8886007)(7696005)(66946007)(2906002)(8936002)(6862004)(4326008)(81166006)(6636002)(1076003)(8676002)(81156014)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6SPR01MB0057;
 H:AM6PR08MB3047.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
Received-SPF: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: A1Jtn34/+YB9dSxMHQ7EISovEjQ7jir+WLE3hBXSuQReQjdqF9RlXXb3lNabgDmef8yiyqNucbPOnF/nDn7LKTgvng4RTiC9SwMEeyXnAj1hF9hKDJRvqtxJN5oNuKaPZA+NqxpDgyfrd0Yrtr2mfFhowDpzHjHPiLZCdEPPh3xG/niGXPkHju3Ni/MpCSdngFhc4LLxhrHAWcGSuttKyY5dZuKJOV4IJ9q7pXD57cvmOntZG8ubQfUXAjz3b2UI7QWbICptfLt1Un2FXaBXAfxM3GXuk4O5uxsO2IEaQbM6LkvCsioxJte9cpe8jVcHrvFv+KNrFmPEiavE2XxlMsTSqC/eWXZC53m9rzmmMiGH4mib2wFPKKhUlaliyZmWLkQ3euEH//NDfSNQ/wLOUejSY/fzadWzPYxe4m8XofgK6Rk+Sw3ZkMyjtZxdxZze
X-MS-Exchange-AntiSpam-MessageData: vuWyBS9Xoef4twMPtmolp3Igxu9csJMYAhyDfrBghReZcdLb1dSM3d3mGkgYHDZtcQWM89/xLapLG+iLp//1lhqHhrrjiMfcmL3xuPNQd6HzVQS8Jsn5osafv4HFrP+1Ib664SeIlqTiuurnwzlClA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6SPR01MB0057
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT008.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(396003)(136003)(46966005)(54906003)(336012)(316002)(81166006)(55016002)(37006003)(36906005)(26826003)(70586007)(36756003)(70206006)(1076003)(6636002)(33656002)(81156014)(956004)(2616005)(7696005)(478600001)(356004)(8936002)(16526019)(47076004)(86362001)(44832011)(5660300002)(186003)(4326008)(26005)(2906002)(8676002)(6862004)(8886007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4557;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 4f9842d1-533d-40f9-7bb6-08d7d00a0b5a
X-Forefront-PRVS: 03524FBD26
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SjovVB61J4peei6TkIQs7PBZmCHHumprAEhQN9FU3rGIuaR13xtSgox5QOF758DMUM0Iw3qgsz/MecPy8giwGwFKrwjnO9gylaixvujUPrKs3R1T8xlEHgPlO+8R8z003tOFCABdVKtFO0Yv3tGQXOe+mh95pqDzy3lbXAhUXGmDGQhhSp7sYzumS5p41dHOT1Y1/em8uCnWKKaE/PgXGyXcp8Qbj9pqm8DuvlY+YbwXPYlAL63mFU7cZn3SVX6Lpk1YT4BUSd2rMmBYIl+BqPHnfcA8e1WoLzijyOxnnxF3u0xFD9FHl0tNq8/jOk6/UjRNe9947mLaoKG/z+8+myogRbgHESVSF8ZgGwpXZ0a+JPGSVKDhYius5lqlBgOcgwwpUB+B6COFbof3EhiQ2EE997bLjaEMGC7mUlvKHeu67su09h39YHk1bHk2yur0U+b+EiGb9wZiR9fApuie1nT3MlmwGUfb50pjiDPENer+L0b01nwpjm92GiI6yAaiCWByEGnNAuCNoT54htcMtg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2020 15:43:15.1193 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 475231bc-22b6-4506-fba5-08d7d00a112a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4557
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_084322_328944_D674B833 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.64 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.64 listed in wl.mailspike.net]
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 03/23/2020 14:55, Mark Rutland wrote:
> On Mon, Mar 23, 2020 at 02:39:55PM +0000, Catalin Marinas wrote:
> > On Mon, Mar 23, 2020 at 01:57:22PM +0000, Mark Rutland wrote:
> > > On Mon, Mar 23, 2020 at 01:24:12PM +0000, Mark Brown wrote:
> > > > On Mon, Mar 23, 2020 at 12:21:44PM +0000, Catalin Marinas wrote:
> > > > > On Fri, Mar 20, 2020 at 05:39:46PM +0000, Szabolcs Nagy wrote:
> > > > 
> > > > > +int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
> > > > > +                        bool has_interp, bool is_interp)
> > > > > +{
> > > > > +       if (is_interp != has_interp)
> > > > > +               return prot;
> > > > > +
> > > > > +       if (!(state->flags & ARM64_ELF_BTI))
> > > > > +               return prot;
> > > > > +
> > > > > +       if (prot & PROT_EXEC)
> > > > > +               prot |= PROT_BTI;
> > > > > +
> > > > > +       return prot;
> > > > > +}
> > > > 
> > > > > At a quick look, for dynamic binaries we have has_interp == true and
> > > > > is_interp == false. I don't know why but, either way, the above code
> > > > > needs a comment with some justification.
> > > > 
> > > > I don't really know for certain either, I inherited this code as is with
> > > > the understanding that this was all agreed with the toolchain and libc
> > > > people - the actual discussion that lead to the decisions being made
> > > > happened before I was involved.  My understanding is that the idea was
> > > > that the dynamic linker would be responsible for mapping everything in
> > > > dynamic applications other than itself but other than consistency I
> > > > don't know why.  I guess it defers more decision making to userspace but
> > > > I'm having a hard time thinking of sensible cases where one might wish
> > > > to make a decision other than enabling PROT_BTI.
> > > 
> > > My understanding was this had been agreed with the toolchain folk a
> > > while back -- anything static loaded by the kernel (i.e. a static
> > > executable or the dynamic linker) would get GP set. In other cases the
> > > linker will mess with the permissions on the pages anyhow, and needs to
> > > be aware of BTI in order to do the right thing, so it was better to
> > > leave it to userspace consistently (e.g. as that had the least risk of
> > > subtle changes in behaviour leading to ABI difficulties).
> > 
> > So this means that the interpreter will have to mprotect(PROT_BTI) the
> > text section of the primary executable.
> 
> Yes, but after fixing up any relocations in that section it's going to
> have to call mprotect() on it anyhow (e.g. in order to make it
> read-only), and in doing so would throw away BTI unless it was BTI
> aware.

note: on the main exe only one mprotect is used in case
there is PT_GNU_RELRO (or DF_BIND_NOW) to mark part of
the rw data segment read only. so if PROT_BTI on main
exe is ld.so responsibility that adds one more syscall
to the program startup (not a huge cost).

(currently executable segment can be mprotected by libc
in case of text relocations but those are not fully
supported and won't work under various kernel hardening
schemes that disallow exec+write mappings)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
