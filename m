Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61A4D86F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 05:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cGSoiEJqbm3q9VEzVjXh3sc2F5W3fukCmJffYVMkBc=; b=syZpxIqJuKoEA3
	QgXDIUvprCBEWe7+0070fdW7ZNxl+0pMFeKxzN7gKO5cPnkNT6e60ZFp/5HVpyZa/e3VygR2liPjV
	3YEr0/bZ/xknqi4iK4k/mp59hy88wi8Hl28JZhs9S56suxPl/ahTfBXjPxRng3tVO27uiFj1f+sJ1
	Gyc0C6fzZecFGNsTZKacFfFdmz7aPYNZCpY5nwMGoWwryXdeMILXTBMAbmeFj2lg3ofXlbhlW4rip
	2mtU4lATgr80urAGxFIOQgfUrK45TpWOs2UIiI6TGVWSoxsfVbNnJyqZXCEckoLBPlMgFX9u8JSRF
	DZFzA+CvXibyb12PCOAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKaMq-00064H-A3; Wed, 16 Oct 2019 03:52:56 +0000
Received: from mail-he1eur02on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::62a]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKaMf-00063A-UR
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 03:52:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Hl8etiZDmKfpa+NAQsVrHee7fMzkNj8HZZVi7E0Lzk=;
 b=py/zl2cJEdDzmik7xGHO3Q1V1crQi/AnEXqChSEm/gk+msEq/L8pZfLCpWmqbPW/Enr4v4QCTin9iAHHm6Y66pyfZ2uQKX7g1ltbAvO4/YPOtaK1vjv0oABSA6wcxhzn/b05yz/20ftWcXderaftBfEipXvKAVkvDtGfCMbTuzs=
Received: from VI1PR08CA0130.eurprd08.prod.outlook.com (2603:10a6:800:d4::32)
 by HE1PR0802MB2249.eurprd08.prod.outlook.com (2603:10a6:3:c2::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.18; Wed, 16 Oct
 2019 03:52:36 +0000
Received: from AM5EUR03FT042.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::201) by VI1PR08CA0130.outlook.office365.com
 (2603:10a6:800:d4::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.18 via Frontend
 Transport; Wed, 16 Oct 2019 03:52:36 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT042.mail.protection.outlook.com (10.152.17.168) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Wed, 16 Oct 2019 03:52:34 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Wed, 16 Oct 2019 03:52:26 +0000
X-CR-MTA-TID: 64aa7808
Received: from c7fb7a3fb8cd.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.14.58]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 3ECE13BA-B552-43D5-A38C-55A8FDE17978.1; 
 Wed, 16 Oct 2019 03:52:21 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2058.outbound.protection.outlook.com [104.47.14.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c7fb7a3fb8cd.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 16 Oct 2019 03:52:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I0TbVXG8sfPJFObAAbieW+na4zDrPyTdNZbR3lSoTBEzZqCp8Aue1sNRPP7U+czJsqHYEsrZpdm3R3YEs5X/vSVe0RrbWdpsbTY35UyQaRZa0izDkU1U+84OSAZ+UtmG7rikPnDUCbFyXGHOoqb8eFzLWt8/ul+DbM6rkfnh9CINupMEyZL5Aq2owAuLSXsKX5uLqE1cErI+vuABxcutA0L5R0H8FG4kiYoxu2noPtvmsDn519nxMuTflFZGSRoCGIwk4eZh73UBb87VwxSwuCFMLKI2HoRjYqfG7+zuHYMlERZsPjGmYpH7jVQFlDBjERECo5ntGmGI1FJbcDDn1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Hl8etiZDmKfpa+NAQsVrHee7fMzkNj8HZZVi7E0Lzk=;
 b=A8ZWRWC0QX6SmkytpCb14kAq5BZszqD1iQ5lhnWaIx79MiCsDhk2HNWjptwypvt472jaL+wR4ufl8OKU7e6RXCCiv/Dv3TIyt9P+Q7lNgFDUU7Ac2k1BLVPxxGYjE/ufU2WdmshKEoZkak9ljkROf/D5LKFMU//x8tTyHKft/kuVuAtumYFdvK0V85GdL1ys5rWfwd4ElQksbDde7xMolAFWMM6XmF4N7cnPRICotujQyIwySw5oYs7cOipZZzXrj/dDgbXSAIjt2YscfBTCXFiENAy9fPqFAo9rIbqXJJqxf8l4RD7mR1hMHXKm5J2waZkCjMxq1cNPO8zf5c40YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Hl8etiZDmKfpa+NAQsVrHee7fMzkNj8HZZVi7E0Lzk=;
 b=py/zl2cJEdDzmik7xGHO3Q1V1crQi/AnEXqChSEm/gk+msEq/L8pZfLCpWmqbPW/Enr4v4QCTin9iAHHm6Y66pyfZ2uQKX7g1ltbAvO4/YPOtaK1vjv0oABSA6wcxhzn/b05yz/20ftWcXderaftBfEipXvKAVkvDtGfCMbTuzs=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB2122.eurprd08.prod.outlook.com (10.168.150.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Wed, 16 Oct 2019 03:52:17 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d%6]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 03:52:17 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "sean.j.christopherson@intel.com"
 <sean.j.christopherson@intel.com>, "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, Mark Rutland
 <Mark.Rutland@arm.com>, "will@kernel.org" <will@kernel.org>, Suzuki Poulose
 <Suzuki.Poulose@arm.com>
Subject: RE: [PATCH v5 5/6] ptp: arm64: Enable ptp_kvm for arm64
Thread-Topic: [PATCH v5 5/6] ptp: arm64: Enable ptp_kvm for arm64
Thread-Index: AQHVg0Y6A4wUAbusSUOkn5f/2HpSwadb56wAgAC7jVA=
Date: Wed, 16 Oct 2019 03:52:17 +0000
Message-ID: <HE1PR0801MB167654440A67AF072E28FFFDF4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-6-jianyong.wu@arm.com>
 <da62c327-9402-9a5c-d694-c1a4378822e0@redhat.com>
In-Reply-To: <da62c327-9402-9a5c-d694-c1a4378822e0@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: a44c36d3-bcd2-4cf3-924a-6fc36127fde1.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: b1f964b4-0145-4e2c-0552-08d751ec474a
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: HE1PR0801MB2122:|HE1PR0801MB2122:|HE1PR0802MB2249:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0802MB2249DE7F0760EA26CDFEDD3AF4920@HE1PR0802MB2249.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:2657;OLM:2657;
x-forefront-prvs: 0192E812EC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(136003)(396003)(376002)(13464003)(199004)(189003)(229853002)(76176011)(256004)(7696005)(2906002)(8936002)(33656002)(9686003)(316002)(478600001)(53546011)(6506007)(3846002)(6116002)(8676002)(55016002)(6436002)(81166006)(102836004)(4326008)(55236004)(81156014)(6246003)(11346002)(52536014)(446003)(476003)(25786009)(486006)(74316002)(99286004)(86362001)(186003)(26005)(305945005)(7416002)(71200400001)(71190400001)(54906003)(6636002)(110136005)(7736002)(2201001)(5660300002)(14454004)(76116006)(66446008)(2501003)(66946007)(66476007)(64756008)(66556008)(66066001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB2122;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: aU1JMWWTxT808qT8BjGNWrwfRgUS/bk5rOoy5/srOXs7T35IXOOENSrj+VTBeFgu/tFr/500a3xdwgQvMlVOvmWR0bwvWAlOwpBza+mEwPv66bxxzVuloARo7dE1HcO9H2pWOjymuONAi3aefbV7JCkUpT21KI7mJXqbyk99ZzLnz7PG1sirYzGMWm06CxOddhUQQje8mzH6aS3aZ0ZDolVw3TVyDVPnzuEeX98W4YJUCGGz1p3stR8Bpd7otCVKYyVhHpc9OkqvLMF9ZenFRz789/k0ktLYLCbG87VoKD2133YHGfT3qhVV4Ck0Gbm9awI/AplVNsIZ2jfWxYcjAD3Rl25KkFMpi82qhiqAXYwHBm3FHJ64p6odh7j0wHJcENTumfX13sI1prtYefdrR2+d8S/1I7u0xKvOd9U7+WM=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2122
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT042.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(396003)(376002)(199004)(189003)(13464003)(6506007)(102836004)(356004)(436003)(4326008)(126002)(336012)(11346002)(26005)(63350400001)(446003)(186003)(476003)(86362001)(316002)(70586007)(76176011)(70206006)(47776003)(53546011)(9686003)(2501003)(55016002)(7696005)(66066001)(76130400001)(6116002)(3846002)(2486003)(23676004)(5660300002)(25786009)(8676002)(52536014)(6636002)(2906002)(305945005)(7736002)(81156014)(74316002)(229853002)(110136005)(6246003)(2201001)(54906003)(486006)(36906005)(99286004)(14454004)(33656002)(478600001)(50466002)(8936002)(22756006)(81166006)(26826003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0802MB2249;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 8f059bff-4640-4875-c0a8-08d751ec3d36
NoDisclaimer: True
X-Forefront-PRVS: 0192E812EC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JJcf68WxBlJJ83xhOlwqZroIICw9+0ZXBI1rDLDh5TrMjgJCnZ5hB0raiZRkYSUFUxjxrbmLBvkSyNa9eE5Pa9OPztfaf27Qw0roh1PZvzAnZEvHku1tED9rPOzDXhOq7YzHWCeR7xRjsQ5WbDa9bAZMxFc2FKu+souCYJzUuoYUQEh5GoarZRHjitY0pBOxdtpKMj8n2OayVjMfdo23b1jCGrkFAacjOPOoOD1VDI9sy9h991Oae3aF4FT0uorhYocRWiPpJYcTm69jTrQEGle2AJwBgL0dQOADIdkzZYhHo+vee5PizISJxqMxQEIHhJkg6ZXT9HEWlyH4cBDgH8lt31ieoE1XvyYUNoAyI5yKzzZUqzRE+PAgk5BzR0w4R46WfydjN12x/ZZ+DPiLTmYpLgIDuUrHZPatHl+p9HU=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2019 03:52:34.5819 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f964b4-0145-4e2c-0552-08d751ec474a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2249
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_205245_987704_614BAB09 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:62a listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paolo,

> -----Original Message-----
> From: Paolo Bonzini <pbonzini@redhat.com>
> Sent: Wednesday, October 16, 2019 12:39 AM
> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>;
> netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; sean.j.christopherson@intel.com; maz@kernel.org;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>
> Cc: linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; nd <nd@arm.com>
> Subject: Re: [PATCH v5 5/6] ptp: arm64: Enable ptp_kvm for arm64
> 
> On 15/10/19 12:48, Jianyong Wu wrote:
> > +int kvm_arch_ptp_get_clock_generic(struct timespec64 *ts,
> > +				   struct arm_smccc_res *hvc_res) {
> > +	u64 ns;
> > +	ktime_t ktime_overall;
> > +
> > +
> 	arm_smccc_1_1_invoke(ARM_SMCCC_VENDOR_HYP_KVM_PTP_FU
> NC_ID,
> > +				  hvc_res);
> > +	if ((long)(hvc_res->a0) < 0)
> > +		return -EOPNOTSUPP;
> > +
> > +	ktime_overall = hvc_res->a0 << 32 | hvc_res->a1;
> > +	*ts = ktime_to_timespec64(ktime_overall);
> > +
> > +	return 0;
> > +}
> > +
> 
> This seems wrong, who uses kvm_arch_ptp_get_clock_fn?
> 
This func used only by kvm_arch_ptp_get_clock and nothing to do with kvm_arch_ptp_get_clock_fn.
Also it can be merged into kvm_arch_ptp_get_clock.

> Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
