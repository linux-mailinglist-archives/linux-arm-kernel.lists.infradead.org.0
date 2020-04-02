Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B9F19C853
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 19:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUdpBLfAtfiVIy5A00p1UGRAHrzEm7+1P7STvPgVJtc=; b=fQCciW9Ro6Ng4F
	3lxVacOhJi22CKTn5DUWfuLg0sxxYMc88Sdc+CCZC55jXiwaAKAHCkiGL8Q70s7r9zJ+VY/SI3/yD
	CYLO3XJlBk/XqPcvCryUamsE8j0rnQdQqTPYtjIiCd3aIOlC38bNKbmhmk0MlmN3OGRMJ1X9CPUvW
	UH0WviFlbH4RkDQ+LXXXyPgrH7BJLMilCMsq7LcLHEg7HO14KQDSHsQfi0hWW45RFjRBtipSBPAjC
	4SUZTbagSdkRioFUSf6ar3XgzvDNWuhDZraZhMKlxcbB7oIwl1f42MBBSeZ8O+RIV6zPrnoX6gfZc
	RUh7VxI7hbSDBrO3TW9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK3yz-00029p-VL; Thu, 02 Apr 2020 17:50:25 +0000
Received: from mail-db5eur01on060c.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::60c]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK3yo-00028s-Nt
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 17:50:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vVMHUfOQgALOiKL8InNQ7Yp4ndl4SN/+rjy/kAAA/iI=;
 b=b4n4Ly0Xm8PLd5P5hMlB2DnkFjzA35DTWgb1l2BybEUhLXbhjzvm4jKHVw4McWieQ6NCEY2piY3cDFsV7P8YSUV91qIdp2LivGSvZ665e4ITX/zdBoVMwXdcugIFOW683vLJ1OrkZ9Foe//1ouALOHccTjsJ4Doq+xn7+zE4MNE=
Received: from AM5PR0202CA0010.eurprd02.prod.outlook.com
 (2603:10a6:203:69::20) by HE1PR0801MB1788.eurprd08.prod.outlook.com
 (2603:10a6:3:88::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Thu, 2 Apr
 2020 17:50:11 +0000
Received: from AM5EUR03FT018.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:203:69:cafe::3f) by AM5PR0202CA0010.outlook.office365.com
 (2603:10a6:203:69::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16 via Frontend
 Transport; Thu, 2 Apr 2020 17:50:11 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT018.mail.protection.outlook.com (10.152.16.114) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Thu, 2 Apr 2020 17:50:11 +0000
Received: ("Tessian outbound 9e48e1321951:v50");
 Thu, 02 Apr 2020 17:50:10 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e3dc6baae79d8492
X-CR-MTA-TID: 64aa7808
Received: from ddd8da16107b.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 43C295ED-E368-40FE-87FC-0E7833B70E44.1; 
 Thu, 02 Apr 2020 17:50:05 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ddd8da16107b.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 02 Apr 2020 17:50:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B6v1MQDq1Gue+AnzFe0SlVlwbu/HjLtxuNgK7lvXOscjiAAo9O/ViOfJnG5w4FrMRVx2Mux0N3xG12EFiGh2FC8EOHprsmzawt/4OwlYaSR5/3MU9dmBG+26vIS7haOjP+URLDdfdc5zVGSufP0VIhu2AH4K8lNUIzrW2RUq0K6o+HzKGGLzoAOONmEJN9XUXrcAo5zvY2DDp42xRP84NXm+nxecZKyDEOr/pGYZlo9qCj5ehwLBUWd9bWUu7q+l00A1s6Ip5VqgROapNQHgEzpBlsVf3gfrBx8aq1Kgci/vZRqEB4mfac83sD7VovWMUVp27s3Q7T6wNJw+OpKKAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vVMHUfOQgALOiKL8InNQ7Yp4ndl4SN/+rjy/kAAA/iI=;
 b=HUs6QddtEZhi2W7XjMG7/FbERhn1YBvQuRf1z/60W3ue3/7b7FKr56Vq5oajPC53FyEPfvzmuR4JxoB+Sx5MJLCO4/BrPl0xf9n2iKZzltXqmPk/k4tc/d/JWbhSHsAFLGMKlXsTZ5lFt0kttO8mJWLM5QBjp0dphCFmlNzYh69C0JJIRiufV3QEibuwq9WePRHC4aZ770GjAnddz5YZgjAvAJx74B4r16GF0Rq1l02p6tzemfU7XPIPickCtl/sIAe0k1plsrx6896pMH9xaL+ca3AzqsCndQERY5WqaZfQ0897ct9ULKdRaCjU0cieWYKZwCPogSKQBGjYI5uSnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vVMHUfOQgALOiKL8InNQ7Yp4ndl4SN/+rjy/kAAA/iI=;
 b=b4n4Ly0Xm8PLd5P5hMlB2DnkFjzA35DTWgb1l2BybEUhLXbhjzvm4jKHVw4McWieQ6NCEY2piY3cDFsV7P8YSUV91qIdp2LivGSvZ665e4ITX/zdBoVMwXdcugIFOW683vLJ1OrkZ9Foe//1ouALOHccTjsJ4Doq+xn7+zE4MNE=
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com (10.255.78.22) by
 DBBPR08MB4839.eurprd08.prod.outlook.com (20.179.46.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.16; Thu, 2 Apr 2020 17:50:04 +0000
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d]) by DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d%6]) with mapi id 15.20.2856.019; Thu, 2 Apr 2020
 17:50:04 +0000
From: Peter Smith <Peter.Smith@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
Thread-Topic: [PATCH] ARM: OMAP2+: drop unnecessary adrl
Thread-Index: AQHWCNPf3/UDtOa4QU2PsSz3b6wtIqhlszgIgAAJCgCAAF834g==
Date: Thu, 2 Apr 2020 17:50:04 +0000
Message-ID: <DBBPR08MB4823463F759E2FFFE92BF9C8F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
 <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
 <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>,
 <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
In-Reply-To: <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Peter.Smith@arm.com; 
x-originating-ip: [217.140.106.52]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0d4d81be-b09d-4fcc-8be5-08d7d72e4a54
x-ms-traffictypediagnostic: DBBPR08MB4839:|HE1PR0801MB1788:
X-Microsoft-Antispam-PRVS: <HE1PR0801MB17883361B3E229936C0DCB6EF8C60@HE1PR0801MB1788.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0361212EA8
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DBBPR08MB4823.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(346002)(39860400002)(376002)(66556008)(33656002)(54906003)(2906002)(4326008)(186003)(5660300002)(316002)(26005)(966005)(71200400001)(52536014)(478600001)(6916009)(6506007)(9686003)(66946007)(55016002)(91956017)(76116006)(86362001)(64756008)(66476007)(66446008)(7696005)(8936002)(8676002)(81166006)(81156014);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Bvk0bPnT7Ke0d0aqT+hbRjgi0yVdvzyvH7dgBYfZwb0K05Ky1e7biVBTYTEwpfPLqZ4FLc5DqZusf1jeVd6vKe8engmCJuQYA3ELg1iwmUvCNyJJciV+viDwDZtcfufvQECHIBSczDYZFkmPIWSQ95NtxLOAFpdGQCSmu2RPoZTRtBaYpm9AakerWCvpKPC69RmdXzRtMKr0Kxy+Ej7l/RY38RMUEhYG+LTeo9+g9ilQJ8v8IGxZiZaIumgR/WnCd62ltu2gWwl/bYfZezW0XRsplAwZbZC2Kh4yLeS977eiI3TpY5mEXCxDvdhjHACTgDRFshsyjk1BH5DiZDOd4mJQ1eIWaapC33uOz0K9X3r6oma1V4ndxR/bYce7vPeduSzLQwijFuL0JZv+lL+3CYN1jh/ORXVqD0t3YR4CRxEZ+BteKCDfZNE41W2cnKCGdllgZIjXta0yDgHlvuUmg4fgwE3kxP/6e1PbMKEx8lJyU3FpDbnq6hq2YlXOjQPYmyiUHp/4L8gKjnzrfx4E3Q==
x-ms-exchange-antispam-messagedata: vmg3ckpM42yEPLgGyDdIIpSo5pFDQPj7HjFYP0sgP+pyvey3n2q0YGQTDiu3ru6TI1XGv6hgiAqVvpu3mJZ++I0MGhFuNh1YbsKr7tQMojh9x+P3kBUptjeLgZmADNNscixLbtt8IBU1uAGlz2FVoA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4839
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Peter.Smith@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT018.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(376002)(46966005)(6506007)(54906003)(7696005)(186003)(70206006)(9686003)(70586007)(4326008)(6862004)(316002)(356004)(55016002)(26005)(966005)(82740400003)(8936002)(86362001)(336012)(478600001)(81166006)(36906005)(81156014)(8676002)(26826003)(52536014)(47076004)(5660300002)(2906002)(33656002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: eae70085-fa11-402a-e384-08d7d72e4652
X-Forefront-PRVS: 0361212EA8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EMkmxCA8GZ7zUu8DINXAsQSLUYmnabzzIiKcd8CbqLRQxsh9UDsTWubYNjnCDkmShUT7ghlF3Pzpg5xW8HFCGk6QFhqRFLsgAiXk7A9PbbtZRVBNXIj5JugN2vh2b9R03JmlUTZHXwUaHUlSpEqdmdCNiccSfePYq6v2djn6NXYAcK0MWnuwmF4yP2PdQSr/bYhnbcZzfSSvEV/sq1UyFS2dMk3VTwn+UL7nebijvW8ddllkwmNBsHp+g1DjUvgOFTQGw2WCi3wC19hoB/wD42tyDjFEvoR64jTX13cVLtp3CzLJzsuYUECoo+keyRBR0LZA49dADbwJffuckMu8o10TqUzCcfbsnbJWx1AY61Wg0lys2LV5tS6kiawrjQET7X17w+gAjgDCymmF1PcZ4pteUXNfsKukFG38zdU2p+k5HjwzgjzVG76Pxw7kzLqIqQo3oEnKRZKWHxCCLuLiDxIDnIMCp0QHWZXEQEayqbsDzTUDtD8Gg/Wby3Xzd0QxagOcVBZYRlh1mlAvG4l3uUzlKRwryfxdkukPVW9VpOkqf9coYv7SB/aoLiD8S0NnyfKgT9jjOn/fTe51YZdPIw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2020 17:50:11.1166 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d4d81be-b09d-4fcc-8be5-08d7d72e4a54
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_105014_842125_F07B5BFC 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:60c listed in]
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
Cc: "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, nd <nd@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org





> On Thu, 2 Apr 2020 at 13:50, Peter Smith <Peter.Smith@arm.com> wrote:
> >
> > > I take it this implies that the LLVM linker does not support the
> > > R_ARM_ALU_PC_Gn relocations? Since otherwise, adrl could simply be
> > > expanded to a pair of adds with the appropriate relocations, letting
> > > the linker fix up the immediates (and the ADD vs SUB bits)
> >
> > Not at the moment. I have a patch in review to add the G0 variants for these in Arm state at reviews.llvm.org/D75349 . As far as I know LLVM MC does not have support for generating the relocations either. This could be added though. I agree that using the G* relocations with a pair of add/sub instructions would be the ideal solution. The adrl psuedo is essentially that but implemented at assembly time. I think it would be possible to implement in LLVM but at the time (4+ years ago) I wasn't confident in finding someone that would think that adrl support was worth the disruption, for example the current Arm assembly backend can only produce 1 instruction as output and adrl requires two.
> >
> > I'd be happy to look at group relocation support in LLD, I haven't got a lot of spare time so progress is likely to be slow though.
> >

> For Linux, I have proposed another approach in the past, which is to
> define a (Linux-local) adr_l macro with unlimited range [0], which
> basically comes down to place relative movw/movt pairs for v7+, and
> something along the lines of

>         ldr <reg>, 222f
> 111:    add <reg>, <reg>, pc
>         .subsection 1
> 222:    .long <sym> - (111b + 8)
>         .previous
>
> for v6 and earlier. Could you comment on whether Clang's integrated
> assembler could support anything like this?

Apologies for the delay in responding.

That looks like it should work. Empirically the following works in both Clang and GNU as. One potential problem here is that if the section is large and the subsections are dumped at the end the ldr is at risk of going out of range.

 .arm
 .macro mylongadrl reg, sym
 ldr \reg, 222f
111:    add \reg, \reg, pc
        .subsection 1
222:    .long \sym - (111b + 8)
 .previous
 .endm       

 .text
foo:     bx lr
bar:     bx lr
 mylongadrl r0 foo
 mylongadrl r0 bar

> Thanks,
> Ard.
>
>
>
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/commit/?h=arm-kaslr-latest&id=fd440f1131553a5201ce3b94905419bd067b93b3

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
