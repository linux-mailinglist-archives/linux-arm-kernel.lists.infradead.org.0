Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344B0D06E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 07:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mVeDMxSuzIOcNE5qOA2/1VRMgbFFC13s+y5bjoYVSC8=; b=R89S1QIgIrY4vU
	9jA2QgahkvJ0qlMc6UITCVPNjGt/1ttHBVP/gbn1IHPv6Dxr7FnPO0nSEvnKSk4SDrwMAqpLPL2m5
	SMGvcqbySOkpFhs8W91xaWKQnyRgSGcYSR1HZXQl7Xxbf7Mlh3JNFnExsj7ysdnswAWXk3v6SPeW2
	SalRruWUdRii8nfWcaQCoqyqoyS1bYM4jHsOy7lazFjiBL+RwvVoKpDeLm4hiBDxLNV4LGDEz70uC
	/zLz52LkrigidKf3BXQjr7SsbV7cy3eiRu7LIvkRyC7f/v+C1f9o7Me5iRsJYT8wkcuGrjyDypxLM
	ASlAyyksASOXf0I+LKqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI4Q2-0006Qg-Hu; Wed, 09 Oct 2019 05:21:50 +0000
Received: from mail-eopbgr130075.outbound.protection.outlook.com
 ([40.107.13.75] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI4Pt-0006PQ-U0
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 05:21:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hq7LDTR4q0a5CpQhZSSxUkA+16ZVMblXsMozmdy6nnk=;
 b=bM0Ds8iFXU+3dB2YKOV9qv4TAtnUXYEYI7tEdu1ZXg3O7fCw4lVCHcU+SpvfbBKLNGgDgRjq0KchNUrfsmPn2Qz2rGSbtucVMqD4jPnQTngzxTVv+3tEk56j9jCkX8gn66wmDI326Xkme3FxvC/y0i0gsJJnJzWdwWFcOzGKprI=
Received: from VI1PR08CA0218.eurprd08.prod.outlook.com (2603:10a6:802:15::27)
 by VI1PR08MB2976.eurprd08.prod.outlook.com (2603:10a6:803:44::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Wed, 9 Oct
 2019 05:21:34 +0000
Received: from VE1EUR03FT008.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::201) by VI1PR08CA0218.outlook.office365.com
 (2603:10a6:802:15::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 05:21:34 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT008.mail.protection.outlook.com (10.152.18.75) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Wed, 9 Oct 2019 05:21:32 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Wed, 09 Oct 2019 05:21:22 +0000
X-CR-MTA-TID: 64aa7808
Received: from a16d394a8436.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.0.52]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 029B9617-B73E-42CF-89E0-13040C75A9DD.1; 
 Wed, 09 Oct 2019 05:21:17 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur01lp2052.outbound.protection.outlook.com [104.47.0.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a16d394a8436.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 09 Oct 2019 05:21:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kJ5e1WPh/NhwgKIs77TaJKxdGIZRt2sgIBcb3nBXeq3FHqf4cV9QagAN8OR/OjstGyJYvOgWKHpiJbOqokE1MqJdYyTUrka798w5oUY9urbQX2Y8QtJPSCxMrag78rUKttSWnziL/8O0E9kHOFRMvFhcmmkX5SI+SBit0NiEUFDqa3ICTEuNXE8dFKtoUYuxwmUusvCqWx+6aikvS6vMe0TBzFvRUiBfwIaG2KCUQiqTWN/D/UVH+HKTJJmkTcWhpJ3KmYW4UPBAnsAF+JOgPOUHlvAO1kuUTHWehgweGyX/lNt1QUDag1TXGJv4cgeD7gEVUNQ77G8EgVM54tMgzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hq7LDTR4q0a5CpQhZSSxUkA+16ZVMblXsMozmdy6nnk=;
 b=V/hWFwc1GYsuEO5PrpzM38Kr5CcAF+26NJnLWMminSyTd6YeGal6VA4+n1XRo7fIdjm+Ero+qqKwGB9inaxI+R8IkzzEDIl6mdUqInQYsZcAwE//Jav2bhHQpQSS6+Asbs0zh7w2cDoWRYWSYC935bRKPkvrRyoKpCgjVNAAzMQOhiCIDn2JFuHrfkBKC0bsTEHxk0HiKV2QzNatmFhe5KiplKdSBGO+t5GGc7R2xRGG+f0ujBWhGKSeds1qSvvT8ym0AYL2tspNbVajltWfew2IDKiKMBQJ11wHPW4/BhNRuGnDz2HqhDEE0Nr2xfTqOz0GBlTyysa3gw8eFUNyNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hq7LDTR4q0a5CpQhZSSxUkA+16ZVMblXsMozmdy6nnk=;
 b=bM0Ds8iFXU+3dB2YKOV9qv4TAtnUXYEYI7tEdu1ZXg3O7fCw4lVCHcU+SpvfbBKLNGgDgRjq0KchNUrfsmPn2Qz2rGSbtucVMqD4jPnQTngzxTVv+3tEk56j9jCkX8gn66wmDI326Xkme3FxvC/y0i0gsJJnJzWdwWFcOzGKprI=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB2091.eurprd08.prod.outlook.com (10.168.95.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 9 Oct 2019 05:21:14 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d%6]) with mapi id 15.20.2327.026; Wed, 9 Oct 2019
 05:21:14 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>, Marc Zyngier <maz@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "yangbo.lu@nxp.com"
 <yangbo.lu@nxp.com>, "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "sean.j.christopherson@intel.com"
 <sean.j.christopherson@intel.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, Mark Rutland <Mark.Rutland@arm.com>, Will Deacon
 <Will.Deacon@arm.com>, Suzuki Poulose <Suzuki.Poulose@arm.com>
Subject: RE: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
Thread-Topic: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
Thread-Index: AQHVbfg5HjMQ+p5UhEyfzqBy9sDEZacxGVuAgAAQMICAABDUgIABdZhAgAAo7ACAAAjcAIAACYiAgB7418A=
Date: Wed, 9 Oct 2019 05:21:13 +0000
Message-ID: <HE1PR0801MB1676115C248E6DF09F9DD5A6F4950@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-5-jianyong.wu@arm.com>
 <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
 <HE1PR0801MB1676F57B317AE85E3B934B32F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <629538ea-13fb-e666-8df6-8ad23f114755@redhat.com>
 <HE1PR0801MB167639E2F025998058A77F86F4890@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ef6ab8bd-41ad-88f8-9cfd-dc749ca65310@redhat.com>
 <a1b554b8-4417-5305-3419-fe71a8c50842@kernel.org>
 <56a5b885-62c8-c4ef-e2f8-e945c0eb700e@redhat.com>
In-Reply-To: <56a5b885-62c8-c4ef-e2f8-e945c0eb700e@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 0332c8ce-b1c2-4bf0-a0fd-3e5ad07cc41a.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: a9bdcd4d-10bd-4603-a96d-08d74c788c62
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: HE1PR0801MB2091:|HE1PR0801MB2091:|VI1PR08MB2976:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB2976846E4701AC4032128314F4950@VI1PR08MB2976.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:6430;OLM:6430;
x-forefront-prvs: 018577E36E
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(366004)(376002)(346002)(199004)(189003)(13464003)(102836004)(86362001)(66476007)(99286004)(64756008)(66446008)(66556008)(6246003)(71190400001)(71200400001)(76176011)(6506007)(7696005)(55236004)(33656002)(66946007)(229853002)(305945005)(54906003)(110136005)(5660300002)(74316002)(316002)(53546011)(7736002)(2906002)(2201001)(52536014)(66066001)(4326008)(478600001)(25786009)(7416002)(6116002)(3846002)(14454004)(6636002)(9686003)(6436002)(55016002)(256004)(14444005)(2501003)(8936002)(81156014)(81166006)(186003)(26005)(486006)(11346002)(8676002)(446003)(476003)(76116006)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB2091;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: sbakS9+zkJJj313GZmp0zA1UXPN+KS03akwHlvplmNYnSFdtjqojqQy/oCkmLkz1MUhxIrwQEEXdTPbtwo3TWPQP1UbYoXgGdyxZC9S7rO7d+f4d3/I0kSxyjUHgbFItGI/8O8I2/FOJjLcBjiaKmrx6ZxZEiX39amsLXLwj0jaKXKJKk9w5cIBGne1ny5goMyifBsnzs6MEzH94ehUoUpbnaz87tBA7XxjcVoZQP1GQHSfFNtJXfw1coZ7ir7VOMzULyIdr1QaimIHYURHd9Y+eXZMOiv7SLWlBCwVsFmYkNKwTEM0mP3ikllL5YgWIxYCdS77cOO1e8UYTJX4uf7R43q3Z8ogkevJTesuOnoaSGoNOD/q9OQdLmTOFMfXey83aDjDnEtrGARabzqGVaQbgD+HwYsqhH9TwLaA89/c=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2091
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT008.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(346002)(13464003)(199004)(189003)(22756006)(70586007)(70206006)(2501003)(336012)(478600001)(76130400001)(66066001)(2906002)(2201001)(33656002)(26826003)(126002)(47776003)(9686003)(486006)(86362001)(55016002)(476003)(229853002)(74316002)(6636002)(446003)(11346002)(436003)(6116002)(76176011)(3846002)(52536014)(14444005)(25786009)(26005)(6506007)(7736002)(186003)(316002)(63350400001)(305945005)(99286004)(81166006)(14454004)(81156014)(7696005)(4326008)(110136005)(54906003)(23676004)(50466002)(8936002)(53546011)(356004)(8676002)(2486003)(5660300002)(102836004)(36906005)(6246003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB2976;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 83a25e0e-af9f-4ac9-8595-08d74c788102
NoDisclaimer: True
X-Forefront-PRVS: 018577E36E
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IGI7Zz6cv/Itqu6W3FHHTIntDJYCb80U2nVXGChpNR635bUKSY1veUQaV5SzBWhz0mGVbQHZD2Kxk7NnrfrrKF1HbGtqUqxwBXgAbWvIwDpLnDCupxnCn9Ui2hYi0E9RpgEgs56V7BpvYl9VSN/5OcBz5U6mkRzUzJrfyobVNbmWhgdD5IWQMTGIAdmtFmvETmGdzDQd92KVLmFPTlxUJfHf25gVMr0yYKM1WdPhTKg1bvAwQ31d2uyMIbV+HUojPCV5bselAVMFGzlQwkUbcQi2M5nwEv0y16agajzze87V+MN2Esh+I85PzMh3UBx1mLrj/YMr1ADpkFxrAv3J6DXH5P2iGNmLk7sRbeAnWcvVSowVxCqFodP0kiV9i6Q3U//eTGu67iOmAomnKBXK8Y+vYcU4azhrDC0bVXFuYv4=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 05:21:32.9916 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a9bdcd4d-10bd-4603-a96d-08d74c788c62
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2976
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_222141_969925_2B6ED4BC 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.75 listed in list.dnswl.org]
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paolo,

> -----Original Message-----
> From: Paolo Bonzini <pbonzini@redhat.com>
> Sent: Thursday, September 19, 2019 8:13 PM
> To: Marc Zyngier <maz@kernel.org>; Jianyong Wu (Arm Technology China)
> <Jianyong.Wu@arm.com>; netdev@vger.kernel.org; yangbo.lu@nxp.com;
> john.stultz@linaro.org; tglx@linutronix.de; sean.j.christopherson@intel.com;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>; Will
> Deacon <Will.Deacon@arm.com>; Suzuki Poulose
> <Suzuki.Poulose@arm.com>
> Cc: linux-kernel@vger.kernel.org; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; nd <nd@arm.com>; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
> 
> On 19/09/19 13:39, Marc Zyngier wrote:
> >> I don't think it's ugly but more important, using tk->tkr_mono.clock
> >> is incorrect.  See how the x86 code hardcodes &kvm_clock, it's the
> >> same for ARM.
> > Not really. The guest kernel is free to use any clocksource it wishes.
> 
> Understood, in fact it's the same on x86.
> 
> However, for PTP to work, the cycles value returned by the clocksource must
> match the one returned by the hypercall.  So for ARM
> get_device_system_crosststamp must receive the arch timer clocksource, so
> that it will return -ENODEV if the active clocksource is anything else.
> 
As ptp_kvm clock has fixed to arm arch system counter in patch set v4, we need check if the current clocksource is system counter when return clock cycle in host,
so a helper needed to return the current clocksource.
Could I add this helper in next patch set?

Thanks
Jianyong wu

> Paolo
> 
> > In some cases, it is actually desirable (like these broken systems
> > that cannot use an in-kernel irqchip...). Maybe it is that on x86 the
> > guest only uses the kvm_clock, but that's a much harder sell on ARM.
> > The fact that ptp_kvm assumes that the clocksource is fixed doesn't
> > seem correct in that case.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
