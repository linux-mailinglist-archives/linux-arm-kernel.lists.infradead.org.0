Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2194B109A31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 09:31:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsqVm16ufISPCRAW3sBw9oWkYVPqbTa4bshitBQP8rg=; b=nHs+q5+94IbZ4g
	N89Wcw0dFXxowhCnxY2/w7DZXUYCPM7Yi6OOf3aPNTAazsw4ljX2/27DzV7QJDV1vt9IvO38OAZj6
	/Ejr1KkDw7HFLhDIebezV9oBnGmtxKkZqvSyZOtv64WQXjZa7+aPKYzgYzN1sxT90LxwbVmJG0EDL
	7tjH5U3SQKikMHTYKm45SMDOf6pe8Q4iy0wVdMxpB4DzwWrNTzjuVQjOYg+n2UfBqMYS01G7Bo4I/
	WKeiG3Yum1RVHR7jrHoR9RfuskYxNIa9Ro2p9J+r2LmuCb60kIf2Y31ZLPR78zi2k+moaRoytmyyX
	ef/9pqZpxB9DIiNQ5ilA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZWFo-0006D1-Kc; Tue, 26 Nov 2019 08:31:24 +0000
Received: from mail-eopbgr150075.outbound.protection.outlook.com
 ([40.107.15.75] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZWFf-0006CK-1W
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 08:31:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2gh7o1PaB51MDokxlVtsTJm7/H2ENFR/NWoNxMTPOxs=;
 b=DCVKv5M/wH6YlXPtrsh8Dt2sanLV2PkpVMYdW3soc2FK/ZaXznYGWBL2SSRoYvKtyeCdp+NxzaEEAOwMgj2mlS00O/51aDdLcqW9tcScQErb40x9+SBgw52WoWXX1m3CWwRIjW1r839+QLdaozLaXTw0xfyRH6quwDWTRLRvDg4=
Received: from VI1PR08CA0121.eurprd08.prod.outlook.com (2603:10a6:800:d4::23)
 by VE1PR08MB4991.eurprd08.prod.outlook.com (2603:10a6:803:110::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.17; Tue, 26 Nov
 2019 08:31:08 +0000
Received: from DB5EUR03FT006.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::205) by VI1PR08CA0121.outlook.office365.com
 (2603:10a6:800:d4::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.17 via Frontend
 Transport; Tue, 26 Nov 2019 08:31:08 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT006.mail.protection.outlook.com (10.152.20.106) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17 via Frontend Transport; Tue, 26 Nov 2019 08:31:07 +0000
Received: ("Tessian outbound f7868d7ede10:v33");
 Tue, 26 Nov 2019 08:31:04 +0000
X-CR-MTA-TID: 64aa7808
Received: from 473ca04911d7.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.2.50]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 B4020F65-33DE-4F9F-B1FD-73763AF0D7A7.1; 
 Tue, 26 Nov 2019 08:30:59 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur01lp2050.outbound.protection.outlook.com [104.47.2.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 473ca04911d7.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 26 Nov 2019 08:30:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MRyOHXukHH1RgaX9E1kcvZBTzlU7yhZypQYK+Sv6LDmM4qY0IKAGOFQLTastCRE9FjEUkDmjv2sFvFRXX5bRVzRMYIRabjz7wxAlQ24kdcgePubvZDgktoXTsVB97cFz98+zBy386xVAkuNeRmqNl4ejAwdzRN//QEdo/ay+DzfYBcMOJO7HWYVUGzj1DELWsrnTn4dpFGa/mDBF9EpBRPpElGnoYCDuM/flej3glhWk2aylNb3gQhguoFUTsIqrRas/Z/BmoYWXfIcA/PmN4GEf90Y4q9Z1L+34hfUVpPu1an8fUkHNOeO8W8vXuXb0ujfXgFE3isRUs1ulb+e0Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2gh7o1PaB51MDokxlVtsTJm7/H2ENFR/NWoNxMTPOxs=;
 b=TjAXW8tHInpEMrP8lpeX3qtZ5ALjgqzIdmOvxH6gQRIp4Zt19vIMK6xj9CUi7uYT2ArFDngG2oVnUhq5YWdkT+lrQvARLKNdC9WDSv+hI4EMl+JEYttZuUzRcXER/c7yfBgW41EIvOwlzJE7+WND3LlW9Gf69oooGHthhvjwNvZi3Y5Kphl/PoJ8Rb9RISW1xruaEALErLkqUGFSVOJQmiQaVd+0v2Hkm6Egq3GgyBTlB7Yg2tOQUyTJQu/nCrY9vg4pdzQf+7FMuwZmXOVaGbk7yeNa+oZscVCCdt/taX8Doou8MrRabQhnOr/daAl249qkVoHBVbPhIhTJ20eleA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2gh7o1PaB51MDokxlVtsTJm7/H2ENFR/NWoNxMTPOxs=;
 b=DCVKv5M/wH6YlXPtrsh8Dt2sanLV2PkpVMYdW3soc2FK/ZaXznYGWBL2SSRoYvKtyeCdp+NxzaEEAOwMgj2mlS00O/51aDdLcqW9tcScQErb40x9+SBgw52WoWXX1m3CWwRIjW1r839+QLdaozLaXTw0xfyRH6quwDWTRLRvDg4=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB2090.eurprd08.prod.outlook.com (10.168.93.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Tue, 26 Nov 2019 08:30:57 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::453c:d9b6:5398:2294]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::453c:d9b6:5398:2294%8]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 08:30:56 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [RFC PATCH v8 3/8] ptp: Reorganize ptp_kvm modules to make it
 arch-independent.
Thread-Topic: [RFC PATCH v8 3/8] ptp: Reorganize ptp_kvm modules to make it
 arch-independent.
Thread-Index: AQHVo32GHa+cuSKk4Ea1AvmwxiCr5KecCFoAgAEQ+AA=
Date: Tue, 26 Nov 2019 08:30:56 +0000
Message-ID: <HE1PR0801MB1676DCFA2490D1DB58C14A4AF4450@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191125104506.36850-1-jianyong.wu@arm.com>
 <20191125104506.36850-4-jianyong.wu@arm.com>
 <a13a4f9554f36a46781308358fc63519@www.loen.fr>
In-Reply-To: <a13a4f9554f36a46781308358fc63519@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: eab09f93-49f9-45f2-95e1-7cc5d9b54db5.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e1998071-0b37-48d9-84f9-08d7724afc34
X-MS-TrafficTypeDiagnostic: HE1PR0801MB2090:|HE1PR0801MB2090:|VE1PR08MB4991:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VE1PR08MB4991B638DF8DAA1D7AC1B240F4450@VE1PR08MB4991.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:1169;OLM:1169;
x-forefront-prvs: 0233768B38
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(13464003)(189003)(199004)(7696005)(4326008)(5660300002)(76116006)(186003)(76176011)(66476007)(99286004)(66446008)(64756008)(66556008)(66946007)(55016002)(52536014)(9686003)(25786009)(316002)(6436002)(256004)(446003)(11346002)(81156014)(71200400001)(7416002)(8936002)(478600001)(6916009)(54906003)(66066001)(74316002)(3846002)(33656002)(7736002)(6116002)(55236004)(102836004)(6506007)(4001150100001)(53546011)(6246003)(81166006)(8676002)(26005)(14454004)(86362001)(229853002)(305945005)(2906002)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB2090;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: KfWg/d16QuwQByxjM04tH7Spmgy7WBbpSnXmDQaCEVoDPEVb5MKKK1e+Sm6477D0CTkFbgQxI8ZP/UoAcYl+SQImeDlvjf/tErzKpouv32vArq4erj3MQtbP03kuhiDHO51zFogk02JrBmyhDQ83OBYMZbU1ot8J1qEHYaC17WPPkaCw42FuojYx3H3La31DDLp/YgXYYWDnt28nr/nhPqIvD28ttBbRez1TMXTOh+UJQ66v7wlCFyO10KqmbrakBH49nPAvyFidsQwpIvN4UjbKqUBzPXve1O9TOM4B76cPkkXZah3QEAUd8k6pZjbGAmh3CWxFm/7PmpxhwzF2I/e5p17SpswBZAtmha4SbpOtn5n+mCz8KeJ5Kk2l74pUepKHmTjaox2t66bMi2pV9YPB0oLc8wLdqd5xgfxkBboikmScyn4EzPcHy8wWnqLX
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2090
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT006.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(199004)(189003)(13464003)(26005)(22756006)(52536014)(8676002)(6246003)(81166006)(81156014)(47776003)(50466002)(33656002)(70206006)(4326008)(70586007)(6862004)(76130400001)(8936002)(316002)(106002)(54906003)(74316002)(356004)(7736002)(305945005)(5660300002)(25786009)(99286004)(26826003)(478600001)(102836004)(76176011)(6506007)(9686003)(14454004)(66066001)(436003)(229853002)(3846002)(2906002)(6116002)(53546011)(7696005)(23676004)(446003)(55016002)(186003)(336012)(2486003)(11346002)(4001150100001)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4991;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 019346ed-ce47-4a0e-81ff-08d7724af583
NoDisclaimer: True
X-Forefront-PRVS: 0233768B38
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NJc8xDP7UZUo17t6ttoJiNOKaXcphiYbpcTX4I5CXZ1HXYLrdUiNDZ99RuI4PU2mhpq7gZq0W+nZW8ZkjcObvVtIt//1h+VCRFGyQ5TOawwtJ1pzuVbPyrF9sNML/inxbGxHFS7xQTxk9nTQHQ+Xe8kjGetNwfdnb/HUUZFCt0zG0SgMW0kETB1xkcdkqY8V0jFpKi7QVe7uE5+r+/ZouDkAc3dwBEMzWLHTN+fMIdUg/vUCdpWB92yltyaxXwrQ5Xcx/lloKuApQc+5KfK/x3zt1KyLxGBmhp60l9F2SLDM8Yll2QGGaCzHxF5dHNLobtyqP/Jxh9r5TPUhjOwRsB0Heos3O0gnW+eoXowSy/lx/tvUPoKzsKG/BJKFSETQUHgO5ha5gQE5K9kQ3SVoQH6zu49uGUwPNZGjqyMjRGY/fjIRZvRphC5haKpoc/+N
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2019 08:31:07.9540 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e1998071-0b37-48d9-84f9-08d7724afc34
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4991
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_003115_169165_9D5C9726 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.75 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

> -----Original Message-----
> From: Marc Zyngier <maz@kernel.org>
> Sent: Monday, November 25, 2019 11:48 PM
> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>
> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; nd <nd@arm.com>
> Subject: Re: [RFC PATCH v8 3/8] ptp: Reorganize ptp_kvm modules to make it
> arch-independent.
> 
> On 2019-11-25 10:45, Jianyong Wu wrote:
> > Currently, ptp_kvm modules implementation is only for x86 which
> > includs large part of arch-specific code.  This patch move all of
> > those code into new arch related file in the same directory.
> >
> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> > ---
> >  drivers/ptp/Makefile                        |  1 +
> >  drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} | 77 +++++-------------
> >  drivers/ptp/ptp_kvm_x86.c                   | 87
> > +++++++++++++++++++++
> >  include/asm-generic/ptp_kvm.h               | 12 +++
> >  4 files changed, 118 insertions(+), 59 deletions(-)  rename
> > drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} (63%)  create mode
> 100644
> > drivers/ptp/ptp_kvm_x86.c  create mode 100644
> > include/asm-generic/ptp_kvm.h
> 
> [...]
> 
> > diff --git a/include/asm-generic/ptp_kvm.h
> > b/include/asm-generic/ptp_kvm.h new file mode 100644 index
> > 000000000000..e5dd386f6664
> > --- /dev/null
> > +++ b/include/asm-generic/ptp_kvm.h
> > @@ -0,0 +1,12 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + *  Virtual PTP 1588 clock for use with KVM guests
> > + *
> > + *  Copyright (C) 2019 ARM Ltd.
> 
> I think you should live the original copyright assignment here.
> This really isn't anything new.
> 

Ok,

> > + *  All Rights Reserved
> > + */
> > +
> > +int kvm_arch_ptp_init(void);
> > +int kvm_arch_ptp_get_clock(struct timespec64 *ts); int
> > +kvm_arch_ptp_get_crosststamp(unsigned long *cycle,
> > +		struct timespec64 *tspec, void *cs);
> 
> Why is this include file in asm-generic? This isn't a kernel-wide API.
> 
> I think it should be sitting in drivers/ptp, as it is only shared between the
> generic and arch-specific stuff.

Ok, all these APIs used under driver/ptp, so it's better to move that header file into it.

Thanks
Jianyong
> 
> Thanks,
> 
>          M.
> --
> Jazz is not dead. It just smells funny...
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
