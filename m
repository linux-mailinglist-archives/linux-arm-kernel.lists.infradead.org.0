Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73A9130FA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 10:39:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtiHicRvCuEap2SWK5lHe5umjX/yQcN3zIUTOb/RZIU=; b=rF+snFqMgBznfs
	8LKEy08FaDyFszv7eyJMqWzRuCRfzJi+wn+DwdT63Oxoh0Dvw/kGq1XytyFr07xJjoIuCElkkbQ7C
	+VlsLujUnVxNJ2cAlleeekodalLHdX4Q6SBwaIoyToC057lFxHAGb8nMmqEJwUwuJeJNSPx4AfdNt
	6vBL7o5hEkfxwSaJGYheHNCsTiJSr7G2JKH6rszRptr7rxI8fYlPhbccpa3z4Wl3T7Y+KoLBC4edp
	DqofLkSTzGQwsriirFtl9Zc3XAJm6R+Yo58bFzbA4ZcDsbURFuPkk/lPoTErUTelWsVuUZZJrPnpp
	AUsVakGXea6Fxb/PO7YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOqm-0004nY-PJ; Mon, 06 Jan 2020 09:39:04 +0000
Received: from mail-db5eur03on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::614]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOqN-0004b7-8e
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 09:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=djocfirhzmhJQvd59TuTbrosbtG78jIi5XugV6h2C7Y=;
 b=S0QRa7eZI5RN7KLzdLJtPjD+nIjYk48A5aAEgotw6v4sd0Mkpy417KiHB5K8NngbWi6gMkpg1yzhbUjI87qlAlauvp72e4YRFct7ORaQH3Nt/Ja4nFyjyzkFvmA0aX2FEAqRjrm9cFXxlcoRykuYAPgibnCEA4OV7oOd+OYe+d8=
Received: from VI1PR08CA0107.eurprd08.prod.outlook.com (2603:10a6:800:d3::33)
 by AM0PR08MB3457.eurprd08.prod.outlook.com (2603:10a6:208:d7::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12; Mon, 6 Jan
 2020 09:38:31 +0000
Received: from VE1EUR03FT058.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::208) by VI1PR08CA0107.outlook.office365.com
 (2603:10a6:800:d3::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12 via Frontend
 Transport; Mon, 6 Jan 2020 09:38:31 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT058.mail.protection.outlook.com (10.152.19.86) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 6 Jan 2020 09:38:31 +0000
Received: ("Tessian outbound 121a58c8f9bf:v40");
 Mon, 06 Jan 2020 09:38:31 +0000
X-CR-MTA-TID: 64aa7808
Received: from e43061101c0c.3
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 2BD791F8-5EE3-4CC3-B029-6D7EEBED4FC2.1; 
 Mon, 06 Jan 2020 09:38:26 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e43061101c0c.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 06 Jan 2020 09:38:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VkwJbIV7Hs1coFr04nzxyo6w6ueAHVRqjs1WBcKCOU5twzHyeQU7xG5yeIZKrq1PTaOAIpoUgcu46BUFadt4lGnrr70SRx7ki05iNDh1vr88Ah0JH+tet+dsIgwbv+c42lefB1rm3qA+bnn/hV5W/RNXGnxGxNMdEOMr4YrfQr1Y0JY5CHqML4SOoyWRqYxp0EvtBk53wrJuCQBPCOK+QvX930poAdPCg7m2fb105+hQqFUFClGAfx0QvFU7J+bhD/w8Xhv1UxTbSoIaqhpYCCYVL4/97/KI7pWcE+JGQhelLT/IpByJKs8GpzLswFrgtbcNpPCcBJvbvs7R1afjJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=djocfirhzmhJQvd59TuTbrosbtG78jIi5XugV6h2C7Y=;
 b=ezkMy/EhSl2PD+MsfjitpeFXx6FYhvuD9L3i0rctU2YuqclT5B4arURCO9wwU4LJRH1AxWgNmrY5MXc7fjcmIFdJUJ7qxKRyig7sxRfVc6jV5IR/LBbzwk8TGchvDN/ug+H+LHvZoI9tzUOWNpJ/OTjN2IJ4Rxo8DO8bQeOVzxaGWHkJtrhKvMJrUGLjdW5XJHjmji4jQOTEBdpyJQP45pijDpaM091oJEJaxG3KBkH39igX3ntoBmuhGNUWjEdrRkZBhqiw+tc1bLHUsQuR1/7Ff4N+y00AGrohzvn7dB3LTbOSF5oWQDgYmlNtsSW2Yw83Laq8dqli3j7yMKcdnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=djocfirhzmhJQvd59TuTbrosbtG78jIi5XugV6h2C7Y=;
 b=S0QRa7eZI5RN7KLzdLJtPjD+nIjYk48A5aAEgotw6v4sd0Mkpy417KiHB5K8NngbWi6gMkpg1yzhbUjI87qlAlauvp72e4YRFct7ORaQH3Nt/Ja4nFyjyzkFvmA0aX2FEAqRjrm9cFXxlcoRykuYAPgibnCEA4OV7oOd+OYe+d8=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.13; Mon, 6 Jan 2020 09:38:23 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f%8]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 09:38:23 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Jianyong Wu <Jianyong.Wu@arm.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "maz@kernel.org" <maz@kernel.org>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, Mark Rutland <Mark.Rutland@arm.com>,
 "will@kernel.org" <will@kernel.org>, Suzuki Poulose <Suzuki.Poulose@arm.com>, 
 Steven Price <Steven.Price@arm.com>
Subject: RE: [RFC PATCH v9 0/8] Enable ptp_kvm for arm64
Thread-Topic: [RFC PATCH v9 0/8] Enable ptp_kvm for arm64
Thread-Index: AQHVrwud8SegGZT1xEaXm5olRDI0YKfdi6wQ
Date: Mon, 6 Jan 2020 09:38:23 +0000
Message-ID: <HE1PR0801MB1676CFC9A06B6CE800052A99F43C0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
In-Reply-To: <20191210034026.45229-1-jianyong.wu@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: f9bb946e-2fac-45b3-8d7a-614d056b8cb3.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e15305f0-3bc2-4fdd-b135-08d7928c3150
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1676:|HE1PR0801MB1676:|AM0PR08MB3457:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB3457797F520A01E8400FC8E6F43C0@AM0PR08MB3457.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:514;OLM:514;
x-forefront-prvs: 0274272F87
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(396003)(366004)(189003)(199004)(54534003)(13464003)(86362001)(7416002)(8936002)(6636002)(6506007)(53546011)(55236004)(316002)(55016002)(9686003)(66476007)(66946007)(2906002)(81156014)(81166006)(8676002)(76116006)(66556008)(64756008)(66446008)(71200400001)(4326008)(26005)(33656002)(478600001)(5660300002)(52536014)(7696005)(186003)(54906003)(110136005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1676;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: +2eIumdff2/S32oNf3M8lXYZfon6EsJJDymXWTz6rf6jTTSE3N1l6lhPrKDb4nu7knQQMBXjrBbf51U+4AedJZgLvLttcLDJQ+waJrvGowa/yqr6bAkZLYf3l7OfiRJOpt1cOLF8Gs2Oktr/iCudYzSj3TFs8MeVyTY6xgLSDBeSkuM1OMHnQyZYkNs+yc8sAQaLzxMtR0aCN3/qa1wvFUH1KTIuCHLP7JdPDqGhGnpGja5vkPPh4iyecYUuHjJtBJzJwtXe482LBrdCdle/me4HBv5DLftQj1vErcFLaZZvbmqQIK+HLgKIJy635Xs+STPTWvWDqPLE+OLGK551PVNpjyhuj6jz45Z7GPbjStvG1U+SnayrmtyztEgxIzZpiBTiVnQ2MK3deiOAe7pe5Bf2QTxPpy7sX60VlHVTgLR1nH9K5GMQSrm33xc3xDoUeBSK5D9l7t6RVB+5CIoM1MBqjA8Ox1m1YyJXgIsAD6rTz7q0g4KnWnfUN87TqX0movMeJnFoWCxgEwqrEQwwqT7K29EMZv05h3gc3WSbEeW6Il6CVJtm3AMXT7WeQr7TXHgkPHOOEFjvOHQMKLquXsxcfU6NsGtDJO2N0xfwDI4jKGS4YfHojsWD20UOCSND
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1676
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT058.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(39860400002)(13464003)(54534003)(189003)(199004)(186003)(33656002)(26005)(70206006)(336012)(7696005)(53546011)(6506007)(70586007)(8676002)(81166006)(8936002)(86362001)(81156014)(2906002)(4326008)(478600001)(26826003)(9686003)(316002)(54906003)(6636002)(52536014)(55016002)(5660300002)(36906005)(110136005)(356004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB3457;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: ce035416-9974-4cc3-2547-08d7928c2c66
NoDisclaimer: True
X-Forefront-PRVS: 0274272F87
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P9R1UpSJwTu/k8HRkwcMlF3K/kl7V8JL+ij+2AYQ1pADRrLXm03kAk3OIumq+RLAaVtKqo14ppVNpYh2kRRbOnZ08mXHoACYM5EDKyuhZW+6ogqYdJY4yV1+iyAy+XK1B1YU2KZ8KUpxJLPqKdbWKAI8zAGQNyu41Hcn4rDpoCvcYBAUd25G12tvKL3yZH1Boba1VsAEISFOu12HNEBgrOF1wFqbmImue5bnna/Ks5f3BlJorMbaKAliaygqjdhJTBvV7vRHgOp3lu9/yPlNQNmFH0WZ5BXdVwzNhX7Ef6ush+mA9y77UdaiHbesjR/HTUJZVCZJT/YR7qgkXaunjsiUyKCemasCWROBpIj/CL9jQnrWjABVuRVSt3XpnQa/3nmOB80/Z68abdB0ooa6wlLGzULzkYvA6Dp3VHkukV64/0j679b1Yt9GsHd4FvHL68Y3XbYAZn2X668GHR9LhjRAL8p8IEEkB8b9yUU0ZBMMRlVeLi6oUtTEH3s9AJl1dPXtsxGGVY2VP6F7qokcIz4oxf2BecahiV3IKn+n/Gu6wQ/+y3+WZA+C1kRaeqZHDzoIRYdDAX2hYLHqz82nbg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2020 09:38:31.5582 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e15305f0-3bc2-4fdd-b135-08d7928c3150
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3457
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_013839_665097_DF14B513 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:614 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Justin He <Justin.He@arm.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kaly Xin <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping ...
Any comments to this patch set?

> -----Original Message-----
> From: Jianyong Wu <jianyong.wu@arm.com>
> Sent: Tuesday, December 10, 2019 11:40 AM
> To: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> maz@kernel.org; richardcochran@gmail.com; Mark Rutland
> <Mark.Rutland@arm.com>; will@kernel.org; Suzuki Poulose
> <Suzuki.Poulose@arm.com>; Steven Price <Steven.Price@arm.com>
> Cc: linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; Jianyong Wu (Arm Technology China)
> <Jianyong.Wu@arm.com>; nd <nd@arm.com>
> Subject: [RFC PATCH v9 0/8] Enable ptp_kvm for arm64
> 
> kvm ptp targets to provide high precision time sync between guest and host
> in virtualization environment. Here, we enable kvm ptp for arm64.
> This patch set base on [1][2][3]
> 
> change log:
> 
> from v8 to v9:
> 	(1) move ptp_kvm.h to driver/ptp/
> 	(2) replace license declaration of ptp_kvm.h the same with other
> header files in the same directory.
> 
> from v7 to v8:
>         (1) separate adding clocksource id for arm_arch_counter as a single patch.
>         (2) update commit message for patch 4/8.
>         (3) refine patch 7/8 and patch 8/8 to make them more independent.
> 
> from v6 to v7:
>         (1) include the omitted clocksource_id.h in last version.
>         (2) reorder the header file in patch.
>         (3) refine some words in commit message to make it more impersonal.
> 
> from v5 to v6:
>         (1) apply Mark's patch[4] to get SMCCC conduit.
>         (2) add mechanism to recognize current clocksource by add
> clocksouce_id value into struct clocksource instead of method in patch-v5.
>         (3) rename kvm_arch_ptp_get_clock_fn into
> kvm_arch_ptp_get_crosststamp.
> 
> from v4 to v5:
>         (1) remove hvc delay compensasion as it should leave to userspace.
>         (2) check current clocksource in hvc call service.
>         (3) expose current clocksource by adding it to system_time_snapshot.
>         (4) add helper to check if clocksource is arm_arch_counter.
>         (5) rename kvm_ptp.c to ptp_kvm_common.c
> 
> from v3 to v4:
>         (1) fix clocksource of ptp_kvm to arch_sys_counter.
>         (2) move kvm_arch_ptp_get_clock_fn into arm_arch_timer.c
>         (3) subtract cntvoff before return cycles from host.
>         (4) use ktime_get_snapshot instead of getnstimeofday and
> get_current_counterval to return time and counter value.
>         (5) split ktime and counter into two 32-bit block respectively to avoid
> Y2038-safe issue.
>         (6) set time compensation to device time as half of the delay of hvc call.
>         (7) add ARM_ARCH_TIMER as dependency of ptp_kvm for arm64.
> 
> from v2 to v3:
>         (1) fix some issues in commit log.
>         (2) add some receivers in send list.
> 
> from v1 to v2:
>         (1) move arch-specific code from arch/ to driver/ptp/
>         (2) offer mechanism to inform userspace if ptp_kvm service is available.
>         (3) separate ptp_kvm code for arm64 into hypervisor part and guest part.
>         (4) add API to expose monotonic clock and counter value.
>         (5) refine code: remove no necessary part and reconsitution.
> 
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/
> commit/?h=kvm/hvc&id=125ea89e4a21e2fc5235410f966a996a1a7148bf
> [2]https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/
> commit/?h=kvm/hvc&id=464f5a1741e5959c3e4d2be1966ae0093b4dce06
> [3]https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/
> commit/?h=kvm/hvc&id=6597490e005d0eeca8ed8c1c1d7b4318ee014681
> [4]https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/
> commit/?h=for-next/smccc-conduit-
> cleanup&id=6b7fe77c334ae59fed9500140e08f4f896b36871
> 
> Jianyong Wu (6):
>   psci: let arm_smccc_1_1_invoke available by modules
>   ptp: Reorganize ptp_kvm modules to make it arch-independent.
>   clocksource: Add clocksource id for arm arch counter
>   psci: Add hvc call service for ptp_kvm.
>   ptp: arm64: Enable ptp_kvm for arm64
>   kvm: arm64: Add capability check extension for ptp_kvm
> 
> Mark Rutland (1):
>   arm/arm64: smccc/psci: add arm_smccc_1_1_get_conduit()
> 
> Thomas Gleixner (1):
>   time: Add mechanism to recognize clocksource in time_get_snapshot
> 
>  drivers/clocksource/arm_arch_timer.c        | 24 ++++++
>  drivers/firmware/psci/psci.c                | 16 ++++
>  drivers/ptp/Kconfig                         |  2 +-
>  drivers/ptp/Makefile                        |  1 +
>  drivers/ptp/ptp_kvm.h                       | 11 +++
>  drivers/ptp/ptp_kvm_arm64.c                 | 53 +++++++++++++
>  drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} | 77 +++++-------------
>  drivers/ptp/ptp_kvm_x86.c                   | 87 +++++++++++++++++++++
>  include/linux/arm-smccc.h                   | 30 ++++++-
>  include/linux/clocksource.h                 |  6 ++
>  include/linux/clocksource_ids.h             | 13 +++
>  include/linux/timekeeping.h                 | 12 +--
>  include/uapi/linux/kvm.h                    |  1 +
>  kernel/time/clocksource.c                   |  3 +
>  kernel/time/timekeeping.c                   |  1 +
>  virt/kvm/arm/arm.c                          |  1 +
>  virt/kvm/arm/psci.c                         | 22 ++++++
>  17 files changed, 294 insertions(+), 66 deletions(-)  create mode 100644
> drivers/ptp/ptp_kvm.h  create mode 100644 drivers/ptp/ptp_kvm_arm64.c
> rename drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} (63%)  create
> mode 100644 drivers/ptp/ptp_kvm_x86.c  create mode 100644
> include/linux/clocksource_ids.h
> 
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
