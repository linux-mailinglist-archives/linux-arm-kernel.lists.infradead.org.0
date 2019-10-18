Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242FFDC1FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 11:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZveoriz0dLouCx+fhbyx9WHW58/PQpCBRZNbl1awSQ=; b=kZzFzeuRGZ3jlR
	OK4gc7aD58jnI1xwGwm1o/kJ5VjOn5x/841bZ8rNCHfZwVegqSCunpM7BQ86cul3Jv0Jvr3JPAt5g
	5mM7mh/SMWdYZe1u28/UMiXhuR4ErZLie1D/7bk+G0leAr2tthQ1jLQhx1kAQy+9dxd/Lpnyv8zw1
	wgDqxhKD9DxsarOAeGFlEv61QYccul34S8I2YyLrYvLiClf0pYoJeTtjSmkhuG5UV8+QFG6YPrKzA
	JUI9VJdaEMshG1lE6SvvBnlyG+BCIFfwsZlnIVOWkxqzA8+f78HJVIZEMAJofJS0Wfx2lkyiXuWSN
	S81FunEM0es0XCNzVE0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLP35-0002pK-6M; Fri, 18 Oct 2019 09:59:55 +0000
Received: from mail-eopbgr40064.outbound.protection.outlook.com ([40.107.4.64]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLP2v-0002mZ-G2
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 09:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0rvowMxGd+I1l3JWyYinyR6vGzQNThtYmsCfMY5JwxA=;
 b=nIsUGN5qIc0MngDfK0K2KIsR3bDSBGFG4vkAkfJ6cwVBcCfhkSL4nfL51lTHBYQAU2Niqb/inst/OJKbC8E8MRmt8mDC3+NaTYJVOfZPPKqd4f0xAUD8hXImZJHBdW29ze5mXjyfxoILPv0+/YA8S2QOvqwQRoyDOgSAJYKXM0A=
Received: from AM4PR08CA0043.eurprd08.prod.outlook.com (2603:10a6:205:2::14)
 by DB8PR08MB5177.eurprd08.prod.outlook.com (2603:10a6:10:e3::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Fri, 18 Oct
 2019 09:59:35 +0000
Received: from DB5EUR03FT016.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::208) by AM4PR08CA0043.outlook.office365.com
 (2603:10a6:205:2::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2367.20 via Frontend
 Transport; Fri, 18 Oct 2019 09:59:35 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT016.mail.protection.outlook.com (10.152.20.141) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Fri, 18 Oct 2019 09:59:34 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Fri, 18 Oct 2019 09:59:29 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: feb16667125e57bb
X-CR-MTA-TID: 64aa7808
Received: from 220ef7f3b972.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.24.109]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 073F4B1F-878C-497F-A3AB-8713435D7A64.1; 
 Fri, 18 Oct 2019 09:59:24 +0000
Received: from FRA01-PR2-obe.outbound.protection.outlook.com
 (mail-pr2fra01on0109.outbound.protection.outlook.com [104.47.24.109])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 220ef7f3b972.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Fri, 18 Oct 2019 09:59:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/k7e15bCJ9QIY+aHoiqevI8Ie2HxNSeaVWGuQnnT/4RrNn+0CdPCY7GofyYnezRAM4y+JCMLwfkZtP0d8noD1g1BfXq+Th2Yqu6nvAK6iMvSpZTD39hkwLuSMMi044vX/FS7ZupAva92dTzJDPJ9w3KAbIqoG3zt2YtxjQdqWJ9IO+783WF6XnqG41pOec4WZ30kjfdXLBFPDLfYppLLDV4UErknqGo4kvt2v1nWDC5rzjjBBaC9+elMYaNsaA8MBbppu+gEBuio1x/kjFPERkuVexEdIelzZ4H8IEFg/D2OkY8HUD/UlK/TeyLXOOGEddACTGxMoZPziJlJ8fMXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C1+fBGdUv959XHsRDIjwTW9+N3PMJDUX4lfV7enN078=;
 b=Z/knoqxtzkTPelZALsXnHi9mzDLyDmMMMG2eevcq2St5DUjbpGk4pbTu5gNY38TGn141AHbkpmKePKNk+C1UWBf5SPphb//fO4IXL9fVA3xUJgcOa4aUudxiCHy3tA+Ybsfv4r67IP/2LSs73L1s4vyFI8VqwUcrwElaa+DqC+/W4ohhlROjplJrSUDLCKYMrzsYUw2xJEE6VNDeJlrZWGqXHCx2rUiqcG8ndyAs8a5leDCTU38bOVWjJv03ttHSYmkelkUXyqG8TXxI0S/iObS9zyX0MwshaQtMYMTo+yZZYDGmFC53H66WNzz2WgK4ezSUGeS2nAL5LCP2eFs3Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C1+fBGdUv959XHsRDIjwTW9+N3PMJDUX4lfV7enN078=;
 b=CP0rR+Mz5Zw8Zkf5jMZ6RIlHpFamNB1UClbegvOiz3D4XmLAtlBt1lA2bv7qTHYHMc2sT+SDzTuKTFzp+okvj2orsbijh26BsNhhD2KHK24Imronqi+boZ0pYzOG/dejKGA2SHm9IPfYJX1Ohyx+6JN+9ZGPehZ1FSIr4Pg8WHY=
Received: from PR2PR08MB4843.eurprd08.prod.outlook.com (52.133.110.76) by
 PR2PR08MB5228.eurprd08.prod.outlook.com (52.133.109.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Fri, 18 Oct 2019 09:59:22 +0000
Received: from PR2PR08MB4843.eurprd08.prod.outlook.com
 ([fe80::5f1:72e0:4bda:6a13]) by PR2PR08MB4843.eurprd08.prod.outlook.com
 ([fe80::5f1:72e0:4bda:6a13%3]) with mapi id 15.20.2347.023; Fri, 18 Oct 2019
 09:59:22 +0000
From: Amit Kachhap <Amit.Kachhap@arm.com>
To: Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 03/11] arm64: cpufeature: handle conflicts based on
 capability
Thread-Topic: [PATCH 03/11] arm64: cpufeature: handle conflicts based on
 capability
Thread-Index: AQHVhPQsaofKhZ8QkkiaLuoG5SoiqadgK3kA
Date: Fri, 18 Oct 2019 09:59:22 +0000
Message-ID: <7e913248-f78f-88a8-c5cc-c44d2c5ae6d3@arm.com>
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
 <1571300065-10236-4-git-send-email-amit.kachhap@arm.com>
 <eff8aa9a-103c-af64-d3de-dad5629cdb65@arm.com>
In-Reply-To: <eff8aa9a-103c-af64-d3de-dad5629cdb65@arm.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR0101CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::22) To PR2PR08MB4843.eurprd08.prod.outlook.com
 (2603:10a6:101:24::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Amit.Kachhap@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.105.40]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 1b9557f8-36cc-4a49-76b3-08d753b1e0d3
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: PR2PR08MB5228:|PR2PR08MB5228:|DB8PR08MB5177:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB517739A7E38EC61E97A5937A8C6C0@DB8PR08MB5177.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 01949FE337
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(366004)(136003)(39860400002)(199004)(189003)(6512007)(110136005)(66946007)(66066001)(316002)(4326008)(3846002)(31686004)(6116002)(25786009)(14444005)(256004)(66476007)(6246003)(5660300002)(66556008)(66446008)(14454004)(44832011)(486006)(99286004)(476003)(52116002)(2616005)(446003)(305945005)(11346002)(7736002)(76176011)(6436002)(2501003)(478600001)(31696002)(2906002)(102836004)(71200400001)(8676002)(36756003)(64756008)(186003)(81166006)(81156014)(8936002)(6486002)(229853002)(53546011)(86362001)(6506007)(26005)(386003)(54906003)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:PR2PR08MB5228;
 H:PR2PR08MB4843.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 5WsNf1VlV/B2CIzmD6Up0gaqU/BuTFr9VBQU+lBNVOkNzYm8d5haLlDjJFUR+Fz+YEXtIQ74NjKGakpTsMhcnfBsUn9oQ6mYOvsUP2DvhIv7X3iczrJEwqYxZwIr5/V1PK7BeQ83Ux9kq1sI162XwUyvwwQbrj6TadB/8n18K3BJeLBy8jMYQ+TC2uT5gjwMIWDumaq1oq3urTSsCrO7SC5pyDoP6wTlkKd79XT9sWDI9TAZjxiAvJdeLu8zcXLIeUt2KW69gDwLvrIsNSGPthIcLxuxyXHeGVNIbQwxa6n/KHIA3BDZ14nUwjH+vIzI3Qdjl+yVgt8kAC7zkYdv5A+pXGoCekjUTdTEPAIESxOyyf9+cdV4xEiiA0i4ITMvo50OHkh3fkedMZvMx0ZuHYYdTCB4n8ZCQfRFgd6hS7c=
Content-ID: <2981F7EE805F33419D20B4B0F50B08D7@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB5228
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Amit.Kachhap@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT016.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(346002)(136003)(40434004)(189003)(199004)(476003)(70206006)(5024004)(6116002)(14444005)(2906002)(2501003)(7736002)(6486002)(336012)(66066001)(3846002)(110136005)(47776003)(76130400001)(86362001)(486006)(70586007)(81166006)(316002)(81156014)(31696002)(356004)(8676002)(26826003)(54906003)(478600001)(8936002)(102836004)(126002)(53546011)(26005)(186003)(229853002)(6506007)(2486003)(386003)(6246003)(22756006)(76176011)(36756003)(31686004)(305945005)(5660300002)(99286004)(63350400001)(14454004)(6512007)(25786009)(436003)(11346002)(50466002)(2616005)(446003)(4326008)(23676004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5177;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: a4bfdf1a-e2ee-48a2-b096-08d753b1d9c0
X-Forefront-PRVS: 01949FE337
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pfbkUlmMGg8he3aJ/5aWTQos3kGFapVk21u/goZdqRF3iVgQuhpojnFn3gRLa/OBAs4i2UoyvTFABc2QApAGVg/IybgRcIHVQ0JK3wi4OB49Wdtmpbj+Dn+u6ptFCvY0Zz74mJ/3OSXfiWYbM6F29XquaVERhdiZYB/IvMBeoA3v4K7chYd8GWq4nMK9eGlARGrsoWKwENV4WoHOfW7+94EncB/Auwc90pHkM8SywBrc0hl4xRLif23jz5iwxu5kJTGU22OO8Gh2nMsDE8MEgJxK5n31mp2ZotRCWA8ei/qymGtAp/c8AhruAd3JLW06dukjjjaSRlbxGh6Mu95Y8K9aspcZ177vA57PTV0teUMUD/mgdS+zTtgFH52fiHPr0feJ7ZJS/km1x67wKRJOaaKIKooHxfhOVtL9Ksh6Bfk=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2019 09:59:34.1975 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b9557f8-36cc-4a49-76b3-08d753b1e0d3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_025945_540712_05A56A4B 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.64 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Kristina Martsenko <Kristina.Martsenko@arm.com>,
 James Morse <James.Morse@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/17/19 7:36 PM, Suzuki K Poulose wrote:
> Hi Amit,
>
> On 17/10/2019 09:14, Amit Daniel Kachhap wrote:
>> From: Kristina Martsenko <kristina.martsenko@arm.com>
>>
>> Each system capability can be of either boot, local, or system scope,
>> depending on when the state of the capability is finalized. When we
>> detect a conflict on a late CPU, we either offline the CPU or panic the
>> system. We currently always panic if the conflict is caused by a boot
>> scope capability, and offline the CPU if the conflict is caused by a
>> local or system scope capability.
>>
>> We're going to want to add a new capability (for pointer authentication)
>> which needs to be boot scope but doesn't need to panic the system when a
>> conflict is detected. So add a new flag to specify whether the
>> capability requires the system to panic or not. Current boot scope
>> capabilities are updated to set the flag, so there should be no
>> functional change as a result of this patch.
>>
>> Reviewed-by: Kees Cook <keescook@chromium.org>
>> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> ---
>
> With the early parking of the CPUs without ptr_auth, I believe this
> change is not needed, as long as we use ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU
> flag for the ptr_auth capability. Moreover, we may want to retain
> the "panic" situation, as we don't expect a secondary CPU to turn
> up without the ptr_auth and have a "conflict".
Yes you are right that this patch is not required and panic better for
error scenario. I will drop it in next iteration.

Thanks,
Amit
>
> Cheers
> Suzuki
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
