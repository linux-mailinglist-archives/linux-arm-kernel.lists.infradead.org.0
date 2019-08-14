Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CAF8CD59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 09:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWsA8bMKItE2BjFprYIuKGdr8HihZYBGgz9rwmeaMT8=; b=enpshe0JXmKfua
	UXA9e50Z9Ky6ghicDcKJa4xeBIcffRrYBMpBJHXtN6a76Bwq7IgVk++5t2JLOOt6tOCkhmCv0y/Y0
	85HgEI9uUn/shW2vMiQOmraHr4UbIYmkPWKukw5X1kdItqWpkOVG3rQWytNS++4cOHnUxezxHs76v
	SWCYmlL+8b1+pVdmtr44qRe/lj7DEJ7UOB/6TiATdRm3mFKFzZ7qiLHnTHPuE8IAcoA3bSFF2DZUX
	4bXeLUOi8Gx6Tj+90DY+IRIne+1xL3oEOluKiJbQnNpBOL/HwQ4FR1JT1/F7vnFT5i2U41zoOZ0pY
	QZrPDYpNBwWNhDxB/maQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoBv-0007le-KE; Wed, 14 Aug 2019 07:59:32 +0000
Received: from mail-eopbgr130045.outbound.protection.outlook.com
 ([40.107.13.45] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoBa-0007lA-FZ
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 07:59:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ygDwrTkMA6vN2PDjMyXBr3b1Ws3kAxKrY9WBm935roc=;
 b=eZSJBh2dghVEUG5frwYvKyHZ0pI0AOL4vR+jdo8WIQIM9z6MgUMJOUjF2ZpDJ7Yp0rtGn06EkuchCry2b1Y9CDEwQtkizbeN+qbxCVcNwIhRPmx72PkciDbROEM6wSuT8ECyJ2XR1IwLc0BLfB9CUBtLeJnlVCdX+pAAH/RPiyw=
Received: from DB7PR08CA0067.eurprd08.prod.outlook.com (2603:10a6:10:26::44)
 by DB6PR0802MB2600.eurprd08.prod.outlook.com (2603:10a6:4:a1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.20; Wed, 14 Aug
 2019 07:59:04 +0000
Received: from VE1EUR03FT011.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::200) by DB7PR08CA0067.outlook.office365.com
 (2603:10a6:10:26::44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.20 via Frontend
 Transport; Wed, 14 Aug 2019 07:59:04 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT011.mail.protection.outlook.com (10.152.18.134) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.18 via Frontend Transport; Wed, 14 Aug 2019 07:59:02 +0000
Received: ("Tessian outbound 220137ab7b0b:v26");
 Wed, 14 Aug 2019 07:58:51 +0000
X-CR-MTA-TID: 64aa7808
Received: from 677307678570.1 (cr-mta-lb-1.cr-mta-net [104.47.13.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 3D2D8684-A502-4890-8541-0E94EACEDD83.1; 
 Wed, 14 Aug 2019 07:58:46 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2051.outbound.protection.outlook.com [104.47.13.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 677307678570.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 14 Aug 2019 07:58:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B6gPrLY92t7q4wnmJMWIIdspTcy3PKHslrtQxDHdRhDCDeDW7CWOjFqVWUkHnYHemQ6phlwexvu+afkWd7/ZZCU4Ivt0wEpFowOUaj/gGviYZ9TFskg06Es9vgOW0Y6GUgSSlwg1fUcFIxIuD2HjftmAa6cVsQJG4epASiLTI4xhHSmM5Boo+MqWIW/PMhC2XcrSDRmavlFYlQ8a3ickM0peFS29PMGXLFD344zMhat7+xHvgh3hKOgHlnr0HWANR5aeUG4Qimz+VH2tH7zMkIP5h3SyGHMPrMQaEqagxeTDuPrkBhqpO4lG2dGvWM64YruN+ApqWMvw5pFYQ5Wlmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CgF3Ql8Ry6htNOZDhrxZDHQvIQbYmhVdYJou1G8pfn8=;
 b=nWyydFoF+XhrF4CVJYuAPtP3nKX6Z/SC7/czvMaSfVRfqppxfW35rkGdyp6SAhHZKY+SbpoouoThssZTotWrwYkhwMGaSaSpdEuGz6fQkcZ47HCrN1DZBf8WzsN8BboLF9dphx/iFLM94K1ZL2kXv9x1PD07wIM7xN5K0iw+oRGTAc41Abwjl5A63N3zpqCzYf9Ptp03eudG2S6Rje5/JAyECQxjTzGP1J2GD1mELl/drnghq4YSXLGc3EQWaqKnnHO0CJfPMxiDOQrao1tlizJ113ljzecNZ3ef11ijTzw1NdA3mI9yJKar8qTzSKUo8JiQaziBLlVNf9naTbaaWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CgF3Ql8Ry6htNOZDhrxZDHQvIQbYmhVdYJou1G8pfn8=;
 b=Q9O/kjxDtOXm4OqbdvcWXRL9WmR/wzHoKW13lx2zJeV/EKhFWaRrkJHhfENU8lnrv1tP0ifmYh2GBGwRNHlixMoqng+NeHgdfBPgwRJhIFaRa0+8V9ZcZj+tptfu93rU1wW7EfVs4CKZaiwtmt05F7ueKV2z2NAQWmK7Ppsep68=
Received: from DBBPR08MB4678.eurprd08.prod.outlook.com (10.255.78.151) by
 DBBPR08MB4315.eurprd08.prod.outlook.com (20.179.41.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Wed, 14 Aug 2019 07:58:43 +0000
Received: from DBBPR08MB4678.eurprd08.prod.outlook.com
 ([fe80::604c:b27f:b6bb:6f96]) by DBBPR08MB4678.eurprd08.prod.outlook.com
 ([fe80::604c:b27f:b6bb:6f96%4]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 07:58:43 +0000
From: Guillaume Gardet <Guillaume.Gardet@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Chester Lin <clin@suse.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>
Subject: RE: [PATCH] efi/arm: fix allocation failure when reserving the kernel
 base
Thread-Topic: [PATCH] efi/arm: fix allocation failure when reserving the
 kernel base
Thread-Index: AQHVSPSS9nx4lee000qskpi0lgLxmKbqonoAgA+3GZA=
Date: Wed, 14 Aug 2019 07:58:43 +0000
Message-ID: <DBBPR08MB4678A0D02561CD90F8EB088A83AD0@DBBPR08MB4678.eurprd08.prod.outlook.com>
References: <20190802053744.5519-1-clin@suse.com>
 <CAKv+Gu-yaNYsLQOOcr8srW91-nt-w0e+RBqxXGOagiGGT69n1Q@mail.gmail.com>
In-Reply-To: <CAKv+Gu-yaNYsLQOOcr8srW91-nt-w0e+RBqxXGOagiGGT69n1Q@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 8dab6588-b089-418a-8ce0-0cf91e12923d.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Guillaume.Gardet@arm.com; 
x-originating-ip: [217.140.96.140]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: a2cca436-69b9-4ff9-2d99-08d7208d45b5
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DBBPR08MB4315; 
X-MS-TrafficTypeDiagnostic: DBBPR08MB4315:|DB6PR0802MB2600:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <DB6PR0802MB26007B89EE976180356E5C1F83AD0@DB6PR0802MB2600.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 01294F875B
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(199004)(189003)(13464003)(66476007)(102836004)(6436002)(6506007)(53936002)(86362001)(53546011)(55016002)(476003)(54906003)(110136005)(76176011)(8936002)(14444005)(33656002)(2906002)(478600001)(14454004)(81156014)(486006)(4326008)(66556008)(64756008)(76116006)(256004)(6116002)(2501003)(66946007)(11346002)(446003)(66446008)(26005)(8676002)(3846002)(25786009)(6306002)(966005)(74316002)(7736002)(81166006)(5660300002)(186003)(305945005)(316002)(7416002)(9686003)(71190400001)(6246003)(7696005)(66066001)(71200400001)(52536014)(229853002)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4315;
 H:DBBPR08MB4678.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: qtRNSvQzyh6hPMLjg64pei+XOCdd7BSCIkVx65eWF6ULcNtBqrQ59bv0yhoHiTkK0w+c/1qvZuKqnN1o91eivIGBWdt3rWtDP0yApMyJbJ/Hcp2dsOW6PdDCJ7wq+pMWBJnLVmcAwNgjwICAycxj5foCbqp0P+H8ZbIORxCbd3MaSPdTEW1+6hPJvTdeQUuwguJUoKoRYvs2Pkszq6RPdhDgbjdjo8rrI3ah8aY8PhiMPPqyICUO7WIza3PYt30rXCi2BBpT6VGSqi0W2Ti8S5MbyanB1BsjQgg4EANQxPfHfpWlyx0UJ1A9y/fcEUA0XzqlZXDCruZcp4ip1IAyjx1lVyBE52K0GmROznVjrMiLOgeBnfvZDcw8851/+XzkBY4UCyQSvXWsLw/U9+CVDjJabuH+QKZtTduv8brS02s=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4315
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Guillaume.Gardet@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT011.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(39860400002)(136003)(2980300002)(40434004)(199004)(189003)(13464003)(7736002)(52536014)(74316002)(33656002)(229853002)(9686003)(66066001)(50466002)(8936002)(76130400001)(6306002)(2501003)(55016002)(47776003)(305945005)(5660300002)(356004)(70206006)(70586007)(8676002)(14454004)(86362001)(336012)(446003)(126002)(23676004)(53546011)(14444005)(102836004)(966005)(81166006)(63370400001)(5024004)(436003)(6506007)(476003)(76176011)(2486003)(81156014)(63350400001)(54906003)(7696005)(486006)(25786009)(186003)(99286004)(26826003)(478600001)(22756006)(316002)(110136005)(2906002)(107886003)(6246003)(3846002)(36906005)(6116002)(4326008)(11346002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0802MB2600;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 610e8b30-a140-47d5-743a-08d7208d3a50
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0802MB2600; 
X-Forefront-PRVS: 01294F875B
X-Microsoft-Antispam-Message-Info: Jxjty5tsVoC+RnOd6Pf9TlqXNBR7fccnW3o//aqA4adIP/4HURdlrwJDX4kLIaUtYjZvbmErFBr0yfBUekTBqatjpNIh2ySRAYvNoQUbOIJ41v5JYRENMDlELMyYHw+pcN/dPracsXG6kkM0gbQDR1q/fHD5iPmujQgonhGqybrGVxhpsegOeIs89gBlrlFxSNetQWbQlY72avErN/TsOysKtt39KjNz93fiDNSHV9yguI7ZGxckapkJaO6YiHn02NpyOv12EOk+k+X7QQvnWB7g128HoVEhyRZ21X6yNWdSVi/eCm/KKsSq88xJaebGembKxi4wN7g+AhhYM87T5XWYF1AclY0YYTXx9Ijpkcjw+gOZdDBHoOzSH3aNu2VLADs9xNPlz71lgqb4UN2GXDU2cJ0Bl1PWuin5a4DaoDM=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 07:59:02.6532 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a2cca436-69b9-4ff9-2d99-08d7208d45b5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_005910_700792_CA6E1AC5 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.45 listed in list.dnswl.org]
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
Cc: Juergen Gross <JGross@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>, Joey Lee <JLee@suse.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Sent: 04 August 2019 09:57
> To: Chester Lin <clin@suse.com>; linux@armlinux.org.uk
> Cc: akpm@linux-foundation.org; rppt@linux.ibm.com; ren_guo@c-sky.com;
> Juergen Gross <JGross@suse.com>; geert@linux-m68k.org; mingo@kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-
> efi@vger.kernel.org; Guillaume Gardet <Guillaume.Gardet@arm.com>; Joey Lee
> <JLee@suse.com>; Gary Lin <GLin@suse.com>
> Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the kernel
> base
>
> Hello Chester,
>
> On Fri, 2 Aug 2019 at 08:40, Chester Lin <clin@suse.com> wrote:
> >
> > In some cases the arm32 efistub could fail to allocate memory for
> > uncompressed kernel. For example, we got the following error message
> > when verifying EFI stub on Raspberry Pi-2 [kernel-5.2.1 + grub-2.04] :
> >
> >   EFI stub: Booting Linux Kernel...
> >   EFI stub: ERROR: Unable to allocate memory for uncompressed kernel.
> >   EFI stub: ERROR: Failed to relocate kernel
> >
> > After checking the EFI memory map we found that the first page [0 -
> > 0xfff] had been reserved by Raspberry Pi-2's firmware, and the efistub
> > tried to set the dram base at 0, which was actually in a reserved region.
> >
>
> This by itself is a violation of the Linux boot protocol for 32-bit ARM when using
> the decompressor. The decompressor rounds down its own base address to a
> multiple of 128 MB, and assumes the whole area is available for the
> decompressed kernel and related data structures.
> (The first TEXT_OFFSET bytes are no longer used in practice, which is why putting
> a reserved region of 4 KB bytes works at the moment, but this is fragile). Note
> that the decompressor does not look at any DT or EFI provided memory maps
> *at all*.
>
> So unfortunately, this is not something we can fix in the kernel, but we should fix
> it in the bootloader or in GRUB, so it does not put any reserved regions in the
> first 128 MB of memory,

FYI, this is in Raspberry Pi firmware: https://github.com/raspberrypi/firmware/issues/1199


>
>
> >   grub> lsefimmap
> >   Type      Physical start  - end             #Pages        Size Attributes
> >   reserved  0000000000000000-0000000000000fff 00000001      4KiB WB
> >   conv-mem  0000000000001000-0000000007ef5fff 00007ef5 130004KiB WB
> >   RT-data   0000000007ef6000-0000000007f09fff 00000014     80KiB RT WB
> >   conv-mem  0000000007f0a000-000000002d871fff 00025968 615840KiB WB
> >   .....
> >
> > To avoid a reserved address, we have to ignore the memory regions
> > which are marked as EFI_RESERVED_TYPE, and only conventional memory
> > regions can be chosen. If the region before the kernel base is
> > unaligned, it will be marked as EFI_RESERVED_TYPE and let kernel
> > ignore it so that memblock_limit will not be sticked with a very low address
> such as 0x1000.
> >
> > Signed-off-by: Chester Lin <clin@suse.com>
> > ---
> >  arch/arm/mm/mmu.c                         |  3 ++
> >  drivers/firmware/efi/libstub/arm32-stub.c | 43
> > ++++++++++++++++++-----
> >  2 files changed, 37 insertions(+), 9 deletions(-)
> >
> > diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c index
> > f3ce34113f89..909b11ba48d8 100644
> > --- a/arch/arm/mm/mmu.c
> > +++ b/arch/arm/mm/mmu.c
> > @@ -1184,6 +1184,9 @@ void __init adjust_lowmem_bounds(void)
> >                 phys_addr_t block_start = reg->base;
> >                 phys_addr_t block_end = reg->base + reg->size;
> >
> > +               if (memblock_is_nomap(reg))
> > +                       continue;
> > +
> >                 if (reg->base < vmalloc_limit) {
> >                         if (block_end > lowmem_limit)
> >                                 /*
> > diff --git a/drivers/firmware/efi/libstub/arm32-stub.c
> > b/drivers/firmware/efi/libstub/arm32-stub.c
> > index e8f7aefb6813..10d33d36df00 100644
> > --- a/drivers/firmware/efi/libstub/arm32-stub.c
> > +++ b/drivers/firmware/efi/libstub/arm32-stub.c
> > @@ -128,7 +128,7 @@ static efi_status_t
> > reserve_kernel_base(efi_system_table_t *sys_table_arg,
> >
> >         for (l = 0; l < map_size; l += desc_size) {
> >                 efi_memory_desc_t *desc;
> > -               u64 start, end;
> > +               u64 start, end, spare, kernel_base;
> >
> >                 desc = (void *)memory_map + l;
> >                 start = desc->phys_addr; @@ -144,27 +144,52 @@ static
> > efi_status_t reserve_kernel_base(efi_system_table_t *sys_table_arg,
> >                 case EFI_BOOT_SERVICES_DATA:
> >                         /* Ignore types that are released to the OS anyway */
> >                         continue;
> > -
> > +               case EFI_RESERVED_TYPE:
> > +                       /* Ignore reserved regions */
> > +                       continue;
> >                 case EFI_CONVENTIONAL_MEMORY:
> >                         /*
> >                          * Reserve the intersection between this entry and the
> >                          * region.
> >                          */
> >                         start = max(start, (u64)dram_base);
> > -                       end = min(end, (u64)dram_base + MAX_UNCOMP_KERNEL_SIZE);
> > +                       kernel_base = round_up(start, PMD_SIZE);
> > +                       spare = kernel_base - start;
> > +                       end = min(end, kernel_base +
> > + MAX_UNCOMP_KERNEL_SIZE);
> > +
> > +                       status = efi_call_early(allocate_pages,
> > +                                       EFI_ALLOCATE_ADDRESS,
> > +                                       EFI_LOADER_DATA,
> > +                                       MAX_UNCOMP_KERNEL_SIZE / EFI_PAGE_SIZE,
> > +                                       &kernel_base);
> > +                       if (status != EFI_SUCCESS) {
> > +                               pr_efi_err(sys_table_arg,
> > +                                       "reserve_kernel_base: alloc failed.\n");
> > +                               goto out;
> > +                       }
> > +                       *reserve_addr = kernel_base;
> >
> > +                       if (!spare)
> > +                               break;
> > +                       /*
> > +                        * If there's a gap between start and kernel_base,
> > +                        * it needs be reserved so that the memblock_limit
> > +                        * will not fall on a very low address when running
> > +                        * adjust_lowmem_bounds(), wchich could eventually
> > +                        * cause CMA reservation issue.
> > +                        */
> >                         status = efi_call_early(allocate_pages,
> >                                                 EFI_ALLOCATE_ADDRESS,
> > -                                               EFI_LOADER_DATA,
> > -                                               (end - start) / EFI_PAGE_SIZE,
> > +                                               EFI_RESERVED_TYPE,
> > +                                               spare / EFI_PAGE_SIZE,
> >                                                 &start);
> >                         if (status != EFI_SUCCESS) {
> >                                 pr_efi_err(sys_table_arg,
> > -                                       "reserve_kernel_base(): alloc failed.\n");
> > +                                       "reserve spare-region
> > + failed\n");
> >                                 goto out;
> >                         }
> > -                       break;
> >
> > +                       break;
> >                 case EFI_LOADER_CODE:
> >                 case EFI_LOADER_DATA:
> >                         /*
> > @@ -220,7 +245,7 @@ efi_status_t handle_kernel_image(efi_system_table_t
> *sys_table,
> >         *image_size = image->image_size;
> >         status = efi_relocate_kernel(sys_table, image_addr, *image_size,
> >                                      *image_size,
> > -                                    dram_base + MAX_UNCOMP_KERNEL_SIZE, 0);
> > +                                    *reserve_addr +
> > + MAX_UNCOMP_KERNEL_SIZE, 0);
> >         if (status != EFI_SUCCESS) {
> >                 pr_efi_err(sys_table, "Failed to relocate kernel.\n");
> >                 efi_free(sys_table, *reserve_size, *reserve_addr); @@
> > -233,7 +258,7 @@ efi_status_t handle_kernel_image(efi_system_table_t
> *sys_table,
> >          * in memory. The kernel determines the base of DRAM from the
> >          * address at which the zImage is loaded.
> >          */
> > -       if (*image_addr + *image_size > dram_base + ZIMAGE_OFFSET_LIMIT) {
> > +       if (*image_addr + *image_size > *reserve_addr +
> > + ZIMAGE_OFFSET_LIMIT) {
> >                 pr_efi_err(sys_table, "Failed to relocate kernel, no low memory
> available.\n");
> >                 efi_free(sys_table, *reserve_size, *reserve_addr);
> >                 *reserve_size = 0;
> > --
> > 2.22.0
> >
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
