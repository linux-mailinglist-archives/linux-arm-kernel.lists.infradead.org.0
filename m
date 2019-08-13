Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705148C223
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 22:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2kylkg65yQgY4dj+g8EPeEXuAsxgQSOjUtY7BZ3IM4=; b=FRCtCbtJP+JJNr
	44P7yLkvT2H9KZ/0zNewu0tF9qgFiOx/bRJlYdIKEk1Ie2SrfNSRMwYgMLNUbamqxja7O54KDi7OT
	34p30qya6VUDbSlXI67/gjscR6M9nyPmLeg7oM553SgOb0HdTcd9OexFmgsRI/oSJvSYlMThJdQ/h
	oD5IENzIOge0wbepQ3ZZ9AOnEClfIYcOatsToOK5jKHm3npLR1unclmA++lVmtLaShYWU/hemn2uu
	QznXiXrr3+tcYIESb99F4LphGBNZyWiRY4NEoQ0AMmWNug3Drbs8mypzdVUaAnmT4gqY9bsBZC1t7
	t2SwAdv96TCFry7dHfng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxdVD-0005Da-Hn; Tue, 13 Aug 2019 20:34:43 +0000
Received: from mail-eopbgr130042.outbound.protection.outlook.com
 ([40.107.13.42] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxdV3-0005DH-SN
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 20:34:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vJD9fxCXxr8G23EccRnMl9Rteum3kvE4Y9Y9QZJT3yU=;
 b=yHhLEDCgmanSVrL0WeSWFhNm1QxYVHmAkFWBQrjEX/33aMROLHIG3EnxKPCVLmWL44zDjNemzDV12/xKU8Xh2ULkZUPZIKlANQFUcOQoN26bGGvfmwR+SHIXytiybtWzRWhdK3XMMFwIPhY69ZcXxfOzWeqlH2ICegpne8gIvVw=
Received: from VI1PR08CA0192.eurprd08.prod.outlook.com (2603:10a6:800:d2::22)
 by DB8PR08MB4955.eurprd08.prod.outlook.com (2603:10a6:10:38::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.18; Tue, 13 Aug
 2019 20:34:28 +0000
Received: from VE1EUR03FT031.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::204) by VI1PR08CA0192.outlook.office365.com
 (2603:10a6:800:d2::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.15 via Frontend
 Transport; Tue, 13 Aug 2019 20:34:28 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT031.mail.protection.outlook.com (10.152.18.69) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.18 via Frontend Transport; Tue, 13 Aug 2019 20:34:26 +0000
Received: ("Tessian outbound a1fd2c3cfdb0:v26");
 Tue, 13 Aug 2019 20:34:22 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ff0d9c848792305a
X-CR-MTA-TID: 64aa7808
Received: from e6826d24299f.2 (cr-mta-lb-1.cr-mta-net [104.47.13.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 410C158D-AE8A-455C-B8E2-70F975535BF6.1; 
 Tue, 13 Aug 2019 20:34:17 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2058.outbound.protection.outlook.com [104.47.13.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e6826d24299f.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 13 Aug 2019 20:34:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VduMrkb56A3OcQhuS9J1fXqaOPEBRZalbR0wRtHx3rbsVhjj1fewM2aPtBUgHdOcQsySxeEiz2QzVGG+epOwb9j5/AaaxS9ftMvPmQ+SHFUjf9B2ZRacJbRXOuS2bDLsgMCfz6/aQlU4HRRot0cz7MkCeoyF3CYNXh4scgQG1AqpIe9iRxj+wCo1psamxWd/iJZYYqxZbPBfT4dYD/2VVtPog+sQHBGoh/ppfrTxmS4kmYLO341FIWOVZGq4uNhPnN4Luybm7EP3NV8/j6PmYbRw2XXpU6U7u1zini+Xuo4nbIgokqZz5mupJjKNGnVhiPe6N8a5JLoH2Qh/1+Ht2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vJD9fxCXxr8G23EccRnMl9Rteum3kvE4Y9Y9QZJT3yU=;
 b=f46t/8+Nu4FqmI9dKzVMdMkYZ0UyVAWNz1lO60yM5CTMP+TOdJXBV5/DVGR58nnnfVfPMV6delY0tNC5JJcHVvOJp1IYqWto8Cpgvx9B6LpIajXL4jJISLHfFneKxekwm3C4YwQZHdsYkUMxK3t02h8XsfD8XW5nN6Bsh3vdikikB5SAUUtSxESbd6mqa8PFIkUGl/7sf86nQ9XsfmpaG0YWy9NBJhlqgot3GLqlld9nkbYvQufGgsHt4OLDD7ND78Z5/rbj7UdeF0DDlTAwSl8MGUK+sVSwHqSKuVO7kdwgbT5pTxtXB5UrLSQ61epwt4xR2Gh3c5nQ7xhyAx59LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vJD9fxCXxr8G23EccRnMl9Rteum3kvE4Y9Y9QZJT3yU=;
 b=yHhLEDCgmanSVrL0WeSWFhNm1QxYVHmAkFWBQrjEX/33aMROLHIG3EnxKPCVLmWL44zDjNemzDV12/xKU8Xh2ULkZUPZIKlANQFUcOQoN26bGGvfmwR+SHIXytiybtWzRWhdK3XMMFwIPhY69ZcXxfOzWeqlH2ICegpne8gIvVw=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5180.eurprd08.prod.outlook.com (10.255.18.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Tue, 13 Aug 2019 20:34:15 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 20:34:15 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
Thread-Topic: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
Thread-Index: AQHVUfjRHMKvcPQom0acDK7i/DVrpqb5YH4AgAAiHwD///MaAIAAE0aA
Date: Tue, 13 Aug 2019 20:34:14 +0000
Message-ID: <20190813203412.GA22563@capper-ampere.manchester.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-2-will@kernel.org>
 <CAKv+Gu8Gws2MVE5ck1-rjm06X2nOUzRRQL_rCuoXd2Fyp-cOyw@mail.gmail.com>
 <20190813191124.GA21406@capper-ampere.manchester.arm.com>
 <CAKv+Gu-VBwXH+n7A0vr9xXm43HmFqsHOazQA-BuJKSqNhngR2A@mail.gmail.com>
In-Reply-To: <CAKv+Gu-VBwXH+n7A0vr9xXm43HmFqsHOazQA-BuJKSqNhngR2A@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0154.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9::22) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: f9eb87c8-a029-40f1-19f2-08d7202da287
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5180; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5180:|DB8PR08MB4955:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB49557C2B7972CBA8086EFBCD81D20@DB8PR08MB4955.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(39860400002)(136003)(199004)(189003)(4326008)(26005)(2906002)(476003)(14454004)(6116002)(256004)(1076003)(3846002)(8676002)(58126008)(316002)(81166006)(99286004)(81156014)(11346002)(76176011)(6916009)(446003)(6246003)(5660300002)(52116002)(14444005)(8936002)(25786009)(66946007)(305945005)(7736002)(66446008)(66066001)(66476007)(66556008)(86362001)(54906003)(102836004)(71190400001)(53936002)(71200400001)(186003)(486006)(33656002)(64756008)(386003)(6506007)(6436002)(6486002)(44832011)(6512007)(229853002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5180;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: wtOT12DfpDvgj74SBiAvW1DZsjRYAYoYu8hFJINaNPFpFM37u0kqyn2H5q44karRWKgCnMYI0hubp+t2jlSFzC8gGin3OeiS4x9eor83rapLz/dh7nh8NrkCAYWQyrZWN1kpUlnCr/92IMg5xoQ/coWYgMpFuYJAytQZjw5hTolfQbvdtMvxqLz1cAyjnun1/7XNO+N35+blFG2TGB1OmjWQJ9AQ2g4tRHU+x9NcxIieVFejQqjkVI4kW6NvElVKsSHmAwM9pb76MazmtvmRee2OmvgpTV4VBL138APmU8Toxixe1AB1lroMh10RY+YCnObEH3Mtq86/Uj1Ci97IL05AH/v1H4NuWxcnDKOCy95DIOW8fxKTwypMoJRFwN4dYfOzYW0cL0YSJ/wFO1mflFxQFipapUqHX6luoy1XbEs=
Content-ID: <7DC14F3978D59E4885C1A2B29953BD0E@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5180
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT031.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(346002)(39860400002)(2980300002)(199004)(189003)(11346002)(46406003)(5660300002)(1076003)(14444005)(33656002)(70206006)(7736002)(305945005)(99286004)(229853002)(6486002)(36906005)(316002)(58126008)(76130400001)(70586007)(54906003)(6512007)(356004)(14454004)(50466002)(26826003)(47776003)(22756006)(478600001)(97756001)(8936002)(86362001)(66066001)(3846002)(126002)(102836004)(476003)(81166006)(486006)(446003)(8746002)(25786009)(26005)(6506007)(2906002)(6116002)(386003)(76176011)(4326008)(6246003)(8676002)(6862004)(23726003)(63370400001)(63350400001)(186003)(336012)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB4955;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 436733ec-7f4d-453d-f421-08d7202d9b62
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(710020)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB8PR08MB4955; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: 61jdFPBQNRdW5IFMJHU79cO5vSmrFPYyNWTLyWbmxSgjLQMQxZUrMJD9ct5lGme+x5hCLSuiZEjpScnlxSewAl4Y13RY317SAG96+aOL3WbhdMBUsSq4CAiWXD6OSdHq2sRZl9guxGVvWjlhAdZ8P80ZJ0vnEtsExVwkBcM17DQ2iXtfxIiqp2fMFJhV7ZmGv9w7M8yg7ifOTFf24P7LUW8mkVYamkqaN8ptAhKkFJDUX7fzp/QvTJ/+4mf47pA1LAkTk/yG8mn0a8+vhPbCPWo7C49ynTJAWBU+vA+D2FTsQzAr2PUVQzx6wsMbEtJzrbo2cAiAljzGs8SAH9TSd40xXqc/TqFx6BJQcf9LfTYvLRFvJiuq2wfegvPRjj39mYDED1Oik/GbeV/av+AxRnEdROG3uyWFPRUBvieASVI=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 20:34:26.7293 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f9eb87c8-a029-40f1-19f2-08d7202da287
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_133434_109488_9293FAB1 
X-CRM114-Status: GOOD (  28.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.42 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Qian Cai <cai@lca.pw>, Andrey
 Konovalov <andreyknvl@google.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 nd <nd@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 10:25:14PM +0300, Ard Biesheuvel wrote:
> On Tue, 13 Aug 2019 at 22:11, Steve Capper <Steve.Capper@arm.com> wrote:
> >
> > Hi Ard,
> >
> > On Tue, Aug 13, 2019 at 09:09:16PM +0300, Ard Biesheuvel wrote:
> > > On Tue, 13 Aug 2019 at 20:02, Will Deacon <will@kernel.org> wrote:
> > > >
> > > > virt_addr_valid() is intended to test whether or not the passed address
> > > > is a valid linear map address. Unfortunately, it relies on
> > > > _virt_addr_is_linear() which is broken because it assumes the linear
> > > > map is at the top of the address space, which it no longer is.
> > > >
> > > > Reimplement virt_addr_valid() using __is_lm_address() and remove
> > > > _virt_addr_is_linear() entirely. At the same time, ensure we evaluate
> > > > the macro parameter only once and move it within the __ASSEMBLY__ block.
> > > >
> > > > Reported-by: Qian Cai <cai@lca.pw>
> > > > Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > > > Fixes: 14c127c957c1 ("arm64: mm: Flip kernel VA space")
> > > > Signed-off-by: Will Deacon <will@kernel.org>
> > > > ---
> > > >  arch/arm64/include/asm/memory.h | 14 +++++++-------
> > > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > > >
> > > > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > > > index afaf512c0e1b..442ab861cab8 100644
> > > > --- a/arch/arm64/include/asm/memory.h
> > > > +++ b/arch/arm64/include/asm/memory.h
> > > > @@ -244,9 +244,9 @@ static inline const void *__tag_set(const void *addr, u8 tag)
> > > >  /*
> > > >   * The linear kernel range starts in the middle of the virtual adddress
> > > >   * space.
> > >
> > > This is no longer true either.
> > >
> >
> > Whoops agreed.
> >
> > > > Testing the top bit for the start of the region is a
> > > > - * sufficient check.
> > > > + * sufficient check and avoids having to worry about the tag.
> > > >   */
> > > > -#define __is_lm_address(addr)  (!((addr) & BIT(vabits_actual - 1)))
> > > > +#define __is_lm_address(addr)  (!(((u64)addr) & BIT(vabits_actual - 1)))
> > > >
> > >
> > > ... and this assumes that the VA space is split evenly between linear
> > > and vmalloc/vmemmap/etc, which is no longer true when running with
> > > 52-bit VAs
> > >
> >
> > For 52-bit VAs we have two possibilities:
> >   Start                 End                     Size            Use
> >   -----------------------------------------------------------------------
> >   0000000000000000      000fffffffffffff           4PB          user
> >   fff0000000000000      fff7ffffffffffff           2PB          kernel logical memory map
> >   fff8000000000000      fffd9fffffffffff        1440TB          [gap]
> 
> Right. I missed the part where we throw away 1/3 of the VA space:
> IIRC, the idea was that keeping the size of the upper half of the
> 48-bit VA space fixed for 52-bit not only allowed compile time
> constant addresses to be used for many of the things that populate it,
> it also makes a lot more VA space available to the linear region,
> which is where we need it the most.
> 
> >   fffda00000000000      ffff9fffffffffff         512TB          kasan shadow region
> >
> > and
> >   Start                        End                     Size            Use
> >   -----------------------------------------------------------------------
> >   0000000000000000     0000ffffffffffff         256TB          user
> >   ffff000000000000     ffff7fffffffffff         128TB          kernel logical memory map
> >   ffff800000000000     ffff9fffffffffff          32TB          kasan shadow region
> >   ffffa00000000000     ffffa00007ffffff         128MB          bpf jit region
> >
> > IIUC the definition for __is_lm_address is correct for these cases?
> > (it's based off vabits_actual).
> >
> 
> With the gap taken into account, it is correct. But throwing away 1440
> TB of address space seems suboptimal to me.

When getting the 52-bit kernel VA support ready, I was trying to achieve
functional and performant support in as few steps as possible to avoid risk of
breaking things (unfortunately I missed a couple of things between
rebases with the SW KASAN). The big gain from that series is support for
a much larger linear mapping.

The best way I can think of to get rid of the gap is to use it for
vmalloc space which means changes to VMALLOC_START and VMALLOC_END. I
think it would be better to make this change incrementally and I'm more
than happy to get hacking on a patch. Or maybe there's a better use for
the gap in other areas...

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
