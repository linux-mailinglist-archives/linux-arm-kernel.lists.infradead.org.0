Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BE5F3E3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 03:52:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WTvfIo/4Jrz4BObTjXgsFUkgTqqhXCN6anUMFSmjhM=; b=vDjRCDLbOzTVBz
	y5mw2xm3gAKGBgiYMz74TGJWE8EBkEjPghxqQzw3YJzDHuwf+gfCaTopIVujDuANqi8v5QIhTJ3Do
	BVYePVyp7lxkr3W357kOd/vz5g2yYDqc/J4tLDja+91f6fa7Zul3QZeSFVcmFb1BLnVtPTu6Cmlgj
	U/EZpZxKMupfg1Ccj/uagW6EUVs53i6zcDIWLAlhocZIgtJV5IEPiy0ut82Pc77kzks3DzXQ8zckL
	zpqkTM8Ol6FBJifdkxXREwPcKdl4UI+djlo6VMG0h/peWIJSq9YKlwHJF3nIngGhDNmoXprS5szx+
	WZRUaEFg95N+pg4UT6vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSuNb-0007rU-4u; Fri, 08 Nov 2019 02:52:07 +0000
Received: from mail-eopbgr40062.outbound.protection.outlook.com ([40.107.4.62]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSuNR-0007qn-SE
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 02:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BdTY0JbhkY6/6eskSvqk2yfJ3IFG65hthmmAev67c2w=;
 b=raumMO49Ya+iI7QERym2Udjz/EuNaJD74/vYPiyhuIbUctYbK+GJyciCRjRCuNFKZj74JQWB1hKZoxCbHmXfSbELYH8BB8/zVaDMq8peYYiSDL9irxgLFM9DKUr18uljosJu4LWtgPq/xUaOmAY5FNXJxrmASkViB4EkyUB47u0=
Received: from AM6PR08CA0045.eurprd08.prod.outlook.com (2603:10a6:20b:c0::33)
 by DB8SPR01MB0006.eurprd08.prod.outlook.com (2603:10a6:10:38::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20; Fri, 8 Nov
 2019 02:51:54 +0000
Received: from VE1EUR03FT048.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::201) by AM6PR08CA0045.outlook.office365.com
 (2603:10a6:20b:c0::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20 via Frontend
 Transport; Fri, 8 Nov 2019 02:51:53 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT048.mail.protection.outlook.com (10.152.19.8) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.21 via Frontend Transport; Fri, 8 Nov 2019 02:51:53 +0000
Received: ("Tessian outbound 851a1162fca7:v33");
 Fri, 08 Nov 2019 02:51:51 +0000
X-CR-MTA-TID: 64aa7808
Received: from ebff76385b05.2 (cr-mta-lb-1.cr-mta-net [104.47.4.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 9EA17CD6-723F-47F5-95A8-1B85579A6C74.1; 
 Fri, 08 Nov 2019 02:51:46 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur02lp2056.outbound.protection.outlook.com [104.47.4.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ebff76385b05.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 08 Nov 2019 02:51:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U6DVogRnMm2XlW2YryYoDspufVFhEGFBiTI5hTCaeyb+ddVtlkQDD0tfvEf9KRHsaFGJNSGAGFJWQ6raRWBhI/7DqdkrS0z6QvFor32IZpLDU4yp43v30sQCR2cxWtnrWFqxFjwQvyWy/T+mVkykkVY0R4Gk4Oiqdhvew1sRTqmUY7rlefoFOpwieu2gB2P7xUkQmUu2BMaQ9UZhWHOgnzQ/MwXf7aiHq7rb/GyVydeYlbFhUTGGyFQT5o7sY0h38zN/lf/TfZnwOF1aYNoXwKY1mNKQ/IFNMUvvU7SHtZqx/oxAEboH6cNlfwQz5cBXuzDHdbdRkeIXkayUbPdBcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BdTY0JbhkY6/6eskSvqk2yfJ3IFG65hthmmAev67c2w=;
 b=iMB8mpRykImGGNF5hXhC7SoDWc7yTkLJlOCAaOsmpn+ck6Qb6yxkBZWsLW/OXXDUyOrJKV4m6iOn7nZumt/pcY7QjnJDQCh+5rMAjRrNZC+0v1y6rOfxldqdb4Q/jTTjF5F3tBhnBJqTqHJZBKTFgL77/iW+Qxwfoxe50XCGpRhhEdk9ZTmd5imvA5BeEd10/ekbixeJItUfwrAjgodgkzyhTJpHCUqNNfBS2guu1odxwOuBQLP9UfnMGo5XowudAVYekqmATjr2CLQ4t3vByJZRFQXfPsKrcwcrjWWCLZMHvNuar7LzwSPorI0aKDdyX4qREDsRnR+LRefIZbU41A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BdTY0JbhkY6/6eskSvqk2yfJ3IFG65hthmmAev67c2w=;
 b=raumMO49Ya+iI7QERym2Udjz/EuNaJD74/vYPiyhuIbUctYbK+GJyciCRjRCuNFKZj74JQWB1hKZoxCbHmXfSbELYH8BB8/zVaDMq8peYYiSDL9irxgLFM9DKUr18uljosJu4LWtgPq/xUaOmAY5FNXJxrmASkViB4EkyUB47u0=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1690.eurprd08.prod.outlook.com (10.168.145.141) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Fri, 8 Nov 2019 02:51:44 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::453c:d9b6:5398:2294]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::453c:d9b6:5398:2294%8]) with mapi id 15.20.2430.023; Fri, 8 Nov 2019
 02:51:44 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [RFC PATCH v6 5/7] psci: Add hvc call service for ptp_kvm.
Thread-Topic: [RFC PATCH v6 5/7] psci: Add hvc call service for ptp_kvm.
Thread-Index: AQHVilqZVMoUcaXKbE+vr/6AIRo8jKd/bmYAgAE3LOA=
Date: Fri, 8 Nov 2019 02:51:44 +0000
Message-ID: <HE1PR0801MB16766C7E11CF88D32BC0A4BAF47B0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191024110209.21328-1-jianyong.wu@arm.com>
 <20191024110209.21328-6-jianyong.wu@arm.com>
 <alpine.DEB.2.21.1911070856100.1869@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1911070856100.1869@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 90748d83-4bdb-4ee3-aed4-fb4cce270c7c.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ceb873c6-eba2-411d-848d-08d763f69ca5
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1690:|HE1PR0801MB1690:|DB8SPR01MB0006:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB8SPR01MB00060C843165E56F8F67CCA8F47B0@DB8SPR01MB0006.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 0215D7173F
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(39860400002)(366004)(396003)(13464003)(189003)(199004)(5660300002)(81156014)(6436002)(6916009)(99286004)(55016002)(74316002)(186003)(2906002)(66556008)(6246003)(4326008)(446003)(14444005)(102836004)(476003)(26005)(25786009)(66476007)(86362001)(229853002)(478600001)(14454004)(3846002)(55236004)(256004)(6116002)(52536014)(76176011)(7736002)(7696005)(33656002)(7416002)(316002)(11346002)(54906003)(486006)(53546011)(6506007)(9686003)(66066001)(64756008)(76116006)(66946007)(305945005)(8936002)(66446008)(81166006)(8676002)(71190400001)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1690;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Mz3B7tgT2kLk+3X18+7ilYUfs/eJ7lPDIUpwZloBt4yrhDBr8+ZwtNlYp/RfG4m44QyEIdoYob2PjeiVRyG+GDMEbWFlYXRJvmycV94T0ULTIvsdl4Qp6q55XdUlt1s08YRJ0dzhkw/TtL0P/n+mL7JNIhsrgtCXkdvs/BhScjNyHT42HfO9y5ApjNBf8PM8IuVn2sTbf8fd4JWXzF0bzwjbq05cx49glvS6pdvdscpnEKe1r8mccPOo7xQ0kwu04XWGwep/4gkzwRj2hBrlJ98IKEl3XN/qox79Kn6fqb+yF7VidN1aMW1NPa+AN2voq0kx/KM+/sTcLVAtyTjhkh2d/B1M27eijD1I7gd4b3U708bwS6+yZbYqpwGXS8b5YvrDxOSeAH1vHpTRuYYQb1xkJbTJZ871zAKtc6MFMV5qUqwP1G+XWs5wyUe4v0We
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1690
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT048.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(376002)(346002)(1110001)(339900001)(13464003)(189003)(199004)(6246003)(11346002)(4326008)(305945005)(14444005)(74316002)(7736002)(99286004)(50466002)(14454004)(52536014)(5660300002)(105606002)(54906003)(316002)(26005)(70586007)(76130400001)(25786009)(2906002)(229853002)(8936002)(3846002)(6116002)(7696005)(356004)(70206006)(486006)(8746002)(46406003)(102836004)(66066001)(47776003)(81166006)(478600001)(446003)(26826003)(186003)(476003)(97756001)(23726003)(6506007)(22756006)(33656002)(53546011)(76176011)(8676002)(336012)(36906005)(9686003)(81156014)(126002)(55016002)(86362001)(6862004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8SPR01MB0006;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 87832ef8-58bd-44d4-5366-08d763f696f8
NoDisclaimer: True
X-Forefront-PRVS: 0215D7173F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IXZ7v3mojv5e4RzQHCJNRvWMnjn+/krI7sqgGc/QKmwpJ1GNunCKsPgqR8dAn0ZBGIsZPU7VeECCa78j+ujOmhuRGy1QXOTY/ALPMZna/P0k0oRNhOfhGpqIDjQajwwLbjYG4+ayDOVj7hrhnEvG6bIKG8rWDeIFT6GmSFu882nir4M/xbuegRtMkvv5XqEM3EDPSsHkKbHSLhrd0A2bAXxdB7Mkcjrk2kz8IBTNCJVsDguy+XTUB1srDCHRra9STiy9PhOrikQ9LhOF//c67v97WHh04vOrb02tQpKZSwMH082C2SRC7a2XGP9CSiTFOWFV3F87IrV73xjfPlgEJDEcToOC4VuW2DBHnkpe0RFnp/99kiw6ew8phKRt6AEVSG9AQ6P68SgRinjI64Da3qoQ237w7vWZ+LCebH2Uc1NB/uJDoeXdQMlS1dFHdveQ
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2019 02:51:53.6311 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ceb873c6-eba2-411d-848d-08d763f69ca5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8SPR01MB0006
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_185157_915256_3F84AABD 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.62 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.62 listed in wl.mailspike.net]
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
 Suzuki Poulose <Suzuki.Poulose@arm.com>, "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <Steve.Capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi tglx,

> -----Original Message-----
> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Thursday, November 7, 2019 4:01 PM
> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>
> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> pbonzini@redhat.com; sean.j.christopherson@intel.com; maz@kernel.org;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; nd <nd@arm.com>
> Subject: Re: [RFC PATCH v6 5/7] psci: Add hvc call service for ptp_kvm.
> 
> On Thu, 24 Oct 2019, Jianyong Wu wrote:
> 
> > This patch is the base of ptp_kvm for arm64.
> 
> This patch ...
> 

Yeah, avoid subjective expression.

> > ptp_kvm modules will call hvc to get this service.
> > The service offers real time and counter cycle of host for guest.
> >
> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> > ---
> >  drivers/clocksource/arm_arch_timer.c |  2 ++
> > include/clocksource/arm_arch_timer.h |  4 ++++
> >  include/linux/arm-smccc.h            | 12 ++++++++++++
> >  virt/kvm/arm/psci.c                  | 22 ++++++++++++++++++++++
> >  4 files changed, 40 insertions(+)
> >
> > diff --git a/drivers/clocksource/arm_arch_timer.c
> > b/drivers/clocksource/arm_arch_timer.c
> > index 07e57a49d1e8..e4ad38042ef6 100644
> > --- a/drivers/clocksource/arm_arch_timer.c
> > +++ b/drivers/clocksource/arm_arch_timer.c
> > @@ -29,6 +29,7 @@
> >  #include <asm/virt.h>
> >
> >  #include <clocksource/arm_arch_timer.h>
> > +#include <linux/clocksource_ids.h>
> 
> Same ordering issue and lack of file.
> 
OK,

> > diff --git a/include/clocksource/arm_arch_timer.h
> > b/include/clocksource/arm_arch_timer.h
> > index 1d68d5613dae..426d749e8cf8 100644
> > --- a/include/clocksource/arm_arch_timer.h
> > +++ b/include/clocksource/arm_arch_timer.h
> > @@ -104,6 +104,10 @@ static inline bool
> arch_timer_evtstrm_available(void)
> >  	return false;
> >  }
> >
> > +bool is_arm_arch_counter(void *unuse)
> 
> A global function in a header file? You might want to make this static inline.
> And while at it please s/unuse/unused/
> 

Should remove this residue line from v5 in v6.

> > +{
> > +	return false;
> > +}
> >  #endif
> >  #include <linux/linkage.h>
> > diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c index
> > 0debf49bf259..339bcbafac7b 100644
> > --- a/virt/kvm/arm/psci.c
> > +++ b/virt/kvm/arm/psci.c
> > @@ -15,6 +15,7 @@
> >  #include <asm/kvm_host.h>
> >
> >  #include <kvm/arm_psci.h>
> > +#include <linux/clocksource_ids.h>
> 
> Sigh.
> 
Yeah,

> >  /*
> >   * This is an implementation of the Power State Coordination
> > Interface @@ -392,6 +393,8 @@ int kvm_hvc_call_handler(struct
> kvm_vcpu *vcpu)
> >  	u32 func_id = smccc_get_function(vcpu);
> >  	u32 val[4] = {};
> >  	u32 option;
> > +	u64 cycles;
> > +	struct system_time_snapshot systime_snapshot;
> 
> Also here you might notice that the variables are not randomly ordered.
>
Do you mean considering the alignment then put "struct system_time_snapshot  systime_snapshot" as the top one and u64 cycles as the second?

Thanks 
Jianyong
 
> Thanks,
> 
> 	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
