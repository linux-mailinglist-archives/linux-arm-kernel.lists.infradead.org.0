Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEFCD41D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GsckeJv5tUZg1eWiqWYA9k1mUz0doqPPM4i+WSTu/TY=; b=gz5SEgHcAN664z
	R+BI6wKK14d4pugbsKis22j79tXAwLpxKlI6xJ/8I9OqEcFH5bksN5DydRFEhen4KSRUkQmCu406V
	vGfJoey2MPY43PIwrGF0lrgSVRDODkIAdBY1V6j1ePgGPLa+WTAWAr2xFDRjHO+hg46EmK7S7vRmv
	4lsuPADMtHCIwMsmk9vPyPeXw2rx1yCk1ALGGSBOmYT/scdS9UsCYCUVDUPCx+3wdcS3h8dSj28w2
	876HRgacCWcpIRcUv21BuynRHdgb2KhUQ3SMJbniJhb6XFIImPqGH2MOtLdz9GScBzVisrOEDkHAn
	ZYBWr1IbhtguUkhTA+2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvKJ-0004OI-VZ; Fri, 11 Oct 2019 13:51:27 +0000
Received: from mail-eopbgr40061.outbound.protection.outlook.com ([40.107.4.61]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvK9-0004NX-Qg
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:51:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MgL+Jy3wjKTV4DdhtJqxlJIzAG1S5mIBShX5SWP/tL8=;
 b=0ll6BaS+ZPqP18wBb1+GMACX6yzLZp5oLKXusnkCsxcB5NLRlJ4I2RwmhTVInRPWd/xkMLwAhux36bfbrrMaO3NWHjx/az/qx2b/s2hB5aZgMPytyhdLNP5wOxXrOsjDSVTVMQ8bJY92UCWUpYZ2cjm+3aEu5Xu6MxHdBDfh4to=
Received: from AM6PR08CA0011.eurprd08.prod.outlook.com (2603:10a6:20b:b2::23)
 by VE1PR08MB5037.eurprd08.prod.outlook.com (2603:10a6:803:110::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Fri, 11 Oct
 2019 13:51:12 +0000
Received: from AM5EUR03FT028.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::209) by AM6PR08CA0011.outlook.office365.com
 (2603:10a6:20b:b2::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Fri, 11 Oct 2019 13:51:12 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT028.mail.protection.outlook.com (10.152.16.118) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Fri, 11 Oct 2019 13:51:10 +0000
Received: ("Tessian outbound e4042aced47b:v33");
 Fri, 11 Oct 2019 13:51:07 +0000
X-CR-MTA-TID: 64aa7808
Received: from 109d1fc128e0.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.2.52]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 B97160E5-B932-4307-8A84-D455A67856C8.1; 
 Fri, 11 Oct 2019 13:51:02 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur01lp2052.outbound.protection.outlook.com [104.47.2.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 109d1fc128e0.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 11 Oct 2019 13:51:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oSjmn4rJzLtd95RWvjzqWs9Axeopm2IdkWVFXWx8emiImlf381KZV/iJamn4tmpjvd1zLTzeFo6t7rBQwiSfyRimOtDxaDxda+EE2Cr85tfOfz94NYtID+h1ikNfl7EyDhD4xg3vjN9bXFBmpihiwVR5DZ93XgXOz23FypQpra0uFgxnyoz4LcDQyGfs/NMAQEA+8T+TOb6Muz9G3UVw8AL7S4jSV8MPbjJ9jR7AvB7CHcoRBG1iyBx/Y6IMxFJPu5BkJz/vAU7PKhTL328q2ql6jKPrC0E2rJrUGjiOc6sxX5ANJe6WbT4NCps9imiVMGKb2kpmhmY19Qhf96x1Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MgL+Jy3wjKTV4DdhtJqxlJIzAG1S5mIBShX5SWP/tL8=;
 b=mOCrtJPQd+f8x6owbc4clg9yhRS+w7gyOUla4iMlCSf2km9khSzH0tbTtSY/neFTEJNe12IUV0jN5zI/OJbFSZ32hTP6NcSns2FwUkajQS6ZZLM/4iBWB+H1/DKP7TD40e2EXzpy9+lFT12qhRPmP9E+rk2Pr68v5inpyVy41NfPYmLCCg3Z5SQG9inELbJ3rTOw65m/+UXET1a82+qOjeayPx/wZJHh+oTw7+5sSX4bkK5qDV2Q6kJSGVozj5kD3173ikqoAaSlYE8WgHHF2zMmODUb8D7E/UMRarizUThOGK1J9h1AV8Vf8Qn5fAvCDQxejIVYLXQKSpgIWkouHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MgL+Jy3wjKTV4DdhtJqxlJIzAG1S5mIBShX5SWP/tL8=;
 b=0ll6BaS+ZPqP18wBb1+GMACX6yzLZp5oLKXusnkCsxcB5NLRlJ4I2RwmhTVInRPWd/xkMLwAhux36bfbrrMaO3NWHjx/az/qx2b/s2hB5aZgMPytyhdLNP5wOxXrOsjDSVTVMQ8bJY92UCWUpYZ2cjm+3aEu5Xu6MxHdBDfh4to=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3658.eurprd08.prod.outlook.com (20.176.237.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Fri, 11 Oct 2019 13:51:01 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0%6]) with mapi id 15.20.2347.016; Fri, 11 Oct 2019
 13:51:01 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: RE: [PATCH v11 1/4] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Thread-Topic: [PATCH v11 1/4] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Thread-Index: AQHVfn2fVz/WJ52EYEizqdXPogUta6dUFqAAgACNw7CAAJ7OAIAANRzg
Date: Fri, 11 Oct 2019 13:51:01 +0000
Message-ID: <DB7PR08MB3082DDB5E28648F873D23493F7970@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20191009084246.123354-1-justin.he@arm.com>
 <20191009084246.123354-2-justin.he@arm.com>
 <20191010164312.GB40923@arrakis.emea.arm.com>
 <DB7PR08MB3082E71F1FF5FE8462F88B8BF7970@DB7PR08MB3082.eurprd08.prod.outlook.com>
 <20191011103857.GB54842@arrakis.emea.arm.com>
In-Reply-To: <20191011103857.GB54842@arrakis.emea.arm.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 51cc0dae-e2ad-4a87-97e9-8c67649a08d7.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: e8369078-240a-400f-2511-08d74e5212e3
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: DB7PR08MB3658:|DB7PR08MB3658:|VE1PR08MB5037:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VE1PR08MB5037AFCE3D9973492C5B14F5F7970@VE1PR08MB5037.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:421;OLM:421;
x-forefront-prvs: 0187F3EA14
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(39860400002)(376002)(136003)(396003)(346002)(366004)(13464003)(51914003)(189003)(199004)(11346002)(5660300002)(81156014)(7696005)(8676002)(81166006)(55236004)(446003)(76176011)(26005)(25786009)(102836004)(229853002)(53546011)(6506007)(14454004)(55016002)(71190400001)(486006)(99286004)(71200400001)(86362001)(476003)(6636002)(186003)(66066001)(8936002)(6436002)(7736002)(66446008)(6306002)(52536014)(74316002)(66556008)(66476007)(966005)(305945005)(316002)(6862004)(66946007)(76116006)(9686003)(2906002)(6246003)(6116002)(256004)(3846002)(33656002)(478600001)(64756008)(4326008)(54906003)(309714004)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3658;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: bNKoMGHhR5bA+Dv9W7HW4uxPlkPEPx1zQY9+nurjPuQmT87bsBB/Et7xGePq2sEko1BnbN5mA/GogUl7Z/Bp5Qnxz8BKQpINlEe0rl2iRChK0XrIDrdHbMPUEW3EOrQ/NBoi6bH0Kj9B+HqW2tSMX1chsLjWHdpupeVXmioG2PhDpA4Mr2Edg7s9GSGX4nQJ3H61ERTudO30EdOKeYpXsmZq2bDJIEVUUOX4VLixVXcRPzrRXBkgz6+3/lkywxoVXVkHqzgPSibI/Qv73bJL6czcv22yHR6UGY7TqAS3o1zVFWDK+zFY0HwS8azmhPN8w840ZHNpCu6geZCzt6v1VluvUAHXnhdafU3njoXqfB1aaMzIubiX5M3t5whF+DrwXo5b32aL/EsYQWMSfrXe/IV1Y3mR4TNaccbqGdgwiPSmp/qS3uK4ZxlcxLbJJOLJ+jiXYdSkmKu0/AIhyYS09Q==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3658
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT028.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(376002)(39850400004)(346002)(136003)(396003)(13464003)(51914003)(199004)(189003)(6506007)(53546011)(86362001)(2906002)(966005)(229853002)(26826003)(102836004)(478600001)(336012)(6636002)(33656002)(46406003)(8746002)(76130400001)(186003)(99286004)(8936002)(81156014)(81166006)(8676002)(74316002)(66066001)(23726003)(26005)(3846002)(6116002)(63350400001)(70206006)(70586007)(6306002)(9686003)(22756006)(7696005)(7736002)(47776003)(55016002)(5660300002)(52536014)(25786009)(305945005)(6246003)(6862004)(446003)(316002)(36906005)(14454004)(54906003)(11346002)(126002)(97756001)(476003)(50466002)(4326008)(356004)(486006)(76176011)(309714004)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB5037;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 639bb178-45ff-406c-2e81-08d74e520d93
NoDisclaimer: True
X-Forefront-PRVS: 0187F3EA14
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SIxSR1KLYdToxlJaFszW36CP3NFessJAzy+Rl232EPegucfvmxFsHHfsWupFwOluYRT+qabyzmI7uUHeHXc6Lk0Moer2LkFCfteCkQRQAjwmCtL4ySYemUtEealm7nMuwWzt9B/4emAPjUxxgbubdX6BdyuYcCpB8BkaARXG7jyF5nrymZ5RR9M8zKiHvACmAiuQYDFz7qeXJ3VTxFbYev8q0kdLkaeRwCxBe879tr7BC1k5tA/NQuPuHEmAMKZQK02Gmqf3YyBZGofXXN1rnl3RFHwjid4vX/Kvuvv518BtXFMa7aFjoNaiU9m0+2/QrRDdWjWzjg5u5Jrx+6AAicTWyxvGYKNj75xx/Gzu7/snLxmRwqrL4ogzoUjBhbcZBY3/hg55LS4sAdRkqdG3ZtaMtIY5qBHqaWarmkEsE1KNwJB+lK5LC/kNI9NezUqly8GR5p3lpPvNP33ZOmezOw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2019 13:51:10.6834 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e8369078-240a-400f-2511-08d74e5212e3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_065117_912027_30556C77 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "hejianet@gmail.com" <hejianet@gmail.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catanlin
Thanks for the detailed explanation.
Will send out v12 soon after testing

--
Cheers,
Justin (Jia He)

 

> -----Original Message-----
> From: Catalin Marinas <catalin.marinas@arm.com>
> Sent: Friday, October 11, 2019 6:39 PM
> To: Justin He (Arm Technology China) <Justin.He@arm.com>
> Cc: Will Deacon <will@kernel.org>; Mark Rutland
> <Mark.Rutland@arm.com>; James Morse <James.Morse@arm.com>; Marc
> Zyngier <maz@kernel.org>; Matthew Wilcox <willy@infradead.org>; Kirill A.
> Shutemov <kirill.shutemov@linux.intel.com>; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-
> mm@kvack.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; Borislav
> Petkov <bp@alien8.de>; H. Peter Anvin <hpa@zytor.com>; x86@kernel.org;
> Thomas Gleixner <tglx@linutronix.de>; Andrew Morton <akpm@linux-
> foundation.org>; hejianet@gmail.com; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; nd <nd@arm.com>
> Subject: Re: [PATCH v11 1/4] arm64: cpufeature: introduce helper
> cpu_has_hw_af()
> 
> On Fri, Oct 11, 2019 at 01:16:36AM +0000, Justin He (Arm Technology China)
> wrote:
> > From: Catalin Marinas <catalin.marinas@arm.com>
> > > On Wed, Oct 09, 2019 at 04:42:43PM +0800, Jia He wrote:
> > > > +		u64 mmfr1 = read_cpuid(ID_AA64MMFR1_EL1);
> > > > +
> > > > +		return !!cpuid_feature_extract_unsigned_field(mmfr1,
> > > > +
> > > 	ID_AA64MMFR1_HADBS_SHIFT);
> > >
> > > No need for !!, the return type is a bool already.
> >
> > But cpuid_feature_extract_unsigned_field has the return type "unsigned
> int" [1]
> >
> > [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch
> /arm64/include/asm/cpufeature.h#n444
> 
> And the C language gives you the automatic conversion from unsigned int
> to bool without the need for !!. The reason we use !! in some places is
> for converting long to int (not bool) and losing the top 32-bit. See
> commit 84fe6826c28f ("arm64: mm: Add double logical invert to pte
> accessors") for an explanation.
> 
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
