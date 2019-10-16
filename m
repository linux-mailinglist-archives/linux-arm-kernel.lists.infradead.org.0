Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0877D8CE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1dnpJ2SyLo0AVb60W3BKQVwhKpEITonBii+3H8XNbU=; b=uc40fWLEszq0IG
	CxPHIWEIooJBEbIWILD6kRrU+WvHIGMEYRL2YBM0s2sWQWKJhKWAznl5E7AuRQv8fL1muFOZLbAG/
	F3sZVvaE+ZRHTVBxHOjAlBwa/iN5v/2A90/dO0GTExyRONnnEElSIVtz/SSrCYo2Yxre7X+3ZUsrN
	namHriXvyfgy9qMexrPSNyZR6v0RUnl7hgvU4z0eMYj8xIGR2rm9gLKFw4LFvoD6OnMba2pkCRAsO
	PQyxxdx/oEq8D4bmHAn+NW02Ym9SjJP0dCcAoouj57srNoqWhqod6bG3kZGb9XzWzA24FA37E53jw
	atfKVY0Cbtk9SVLMTOWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKfvh-0005NP-Iy; Wed, 16 Oct 2019 09:49:17 +0000
Received: from mail-eopbgr20067.outbound.protection.outlook.com ([40.107.2.67]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfvW-0005MI-N5
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 09:49:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=md1nR1RKcd65vE73GmnLziOpKuVHsxBM/wC6YDptQMQ=;
 b=rJzxmKhToi3XOP7o48OaaNb6pmwjkemOR8HNU9P4fqjBPg27dsAEiuvqAVGjfxdhekI3+WY+wmtwl8nFj/chL7f21kiL4ES/+1PioBdTERoKbtpRoqLWKiTUUMzUNmWV2VeJq8TPRKjYmp+hKq0kEu6mb/kWOjElEhSiRL1uohk=
Received: from VI1PR0802CA0038.eurprd08.prod.outlook.com
 (2603:10a6:800:a9::24) by DBBPR08MB4300.eurprd08.prod.outlook.com
 (2603:10a6:10:c5::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Wed, 16 Oct
 2019 09:49:02 +0000
Received: from DB5EUR03FT007.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::205) by VI1PR0802CA0038.outlook.office365.com
 (2603:10a6:800:a9::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.18 via Frontend
 Transport; Wed, 16 Oct 2019 09:49:02 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT007.mail.protection.outlook.com (10.152.20.148) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Wed, 16 Oct 2019 09:49:00 +0000
Received: ("Tessian outbound e4042aced47b:v33");
 Wed, 16 Oct 2019 09:48:52 +0000
X-CR-MTA-TID: 64aa7808
Received: from a94b262de10b.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.10.51]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 EE9EE450-8095-41AA-A1E6-80ECD47E18E2.1; 
 Wed, 16 Oct 2019 09:48:47 +0000
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur03lp2051.outbound.protection.outlook.com [104.47.10.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a94b262de10b.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 16 Oct 2019 09:48:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C80+LbR2D9qOnBYC3+CHdrKI3OWh7f7ktLkeXRcVnm4mvRDArA+0f+LKsv2qxXWY5DlTtMK7/7/A3efA90bJSSLQVb49gvZfFwoCc4N44zHsKg48i2amwY7xsksu1c3C91BFzKTOgKZgTH9tttiutCc3HO9w3VUoBlJXSAzOLq2cYIcGZMJvXggHFaI66S30TKp/jG9S++2sMC3UXfpMLq87zYijY5AVcPP5v2vg6ZifqS67BxMne8PDXSp4ITkakfPT7FFzt5gyx4Ys5C+UCwiQUjHAZxmGm/rGZ8t4M6TWpWqy/JxhXmNjyVNTrlCry59zIdSNroLffF3HXOulUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=md1nR1RKcd65vE73GmnLziOpKuVHsxBM/wC6YDptQMQ=;
 b=VwomxDPEapQkiBfO5XAftvOwoen8mOgtu997BtA3tlVXudDsguS2H8pRx2vFG9xWH+rBxEYO6gPWVfeYGtMFsTA1h3HKvqImASgkcdUHMQ+liR2MxtRLCIQTfVnD6JLX1KPpx1jgs8qtL1uyTBTATaS22ihA5AgUPdwOIdTE6l12lVYHoC1KK0/UDo8jDcjaU+/V+Ci3c/efbAwIV63r7ZVOxwy/FQ09Rv3ZlGj8cW5uu1cEeVN3kgsztowvtG7vagM4o7TMjNI4eS+lp5eAjoU5ILRBPyaPVKP3dz2DdKE6yjpxio4dXXm0UFSRf1t/WObJKTJONWnbQIZfwgrmtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=md1nR1RKcd65vE73GmnLziOpKuVHsxBM/wC6YDptQMQ=;
 b=rJzxmKhToi3XOP7o48OaaNb6pmwjkemOR8HNU9P4fqjBPg27dsAEiuvqAVGjfxdhekI3+WY+wmtwl8nFj/chL7f21kiL4ES/+1PioBdTERoKbtpRoqLWKiTUUMzUNmWV2VeJq8TPRKjYmp+hKq0kEu6mb/kWOjElEhSiRL1uohk=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1996.eurprd08.prod.outlook.com (10.168.97.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 16 Oct 2019 09:48:43 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d%6]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 09:48:43 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>, Paolo Bonzini <pbonzini@redhat.com>
Subject: RE: [PATCH v5 3/6] timekeeping: Add clocksource to
 system_time_snapshot
Thread-Topic: [PATCH v5 3/6] timekeeping: Add clocksource to
 system_time_snapshot
Thread-Index: AQHVg0Y1dymHk2OcFEiql6VhclDWladb5yqAgAA8TwCAACgCAIAAlJeAgAAfkWA=
Date: Wed, 16 Oct 2019 09:48:43 +0000
Message-ID: <HE1PR0801MB1676EC775B7BFA5FC7E4F9D5F4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-4-jianyong.wu@arm.com>
 <9274d21c-2c43-2e0d-f086-6aaba3863603@redhat.com>
 <alpine.DEB.2.21.1910152212580.2518@nanos.tec.linutronix.de>
 <aa1ec910-b7b6-2568-4583-5fa47aac367f@redhat.com>
 <alpine.DEB.2.21.1910160914230.2518@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1910160914230.2518@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: ad2c70a2-bd34-4e39-aaa2-98de92e436d4.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: df38e70a-f5df-49a4-fa18-08d7521e1268
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1996:|HE1PR0801MB1996:|DBBPR08MB4300:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB43005E19EE793B61B9939214F4920@DBBPR08MB4300.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 0192E812EC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(366004)(54534003)(13464003)(199004)(189003)(7416002)(66446008)(66556008)(14454004)(64756008)(33656002)(2906002)(11346002)(9686003)(66476007)(66066001)(7696005)(6246003)(74316002)(99286004)(446003)(186003)(76116006)(66946007)(76176011)(26005)(14444005)(256004)(6436002)(55016002)(25786009)(71200400001)(229853002)(81166006)(8676002)(102836004)(81156014)(6506007)(5660300002)(6116002)(8936002)(478600001)(53546011)(86362001)(4326008)(71190400001)(316002)(110136005)(54906003)(55236004)(486006)(305945005)(476003)(7736002)(52536014)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1996;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 9Snvoq8lL1JLJMP+38lHxCRE+PIej1tuIP3XSAk+w1B9yoRP10Mc3lTXjeM7kREmMYyJWLTOaWQxlgTc+2Cgex76TEnTUQugZ6SWKbnQUM8eiKnmspeoknnIR2n58axsJ8rgmVx23zlIZYY1eCXiX3tEnEjvllFjijiDThP6ecpVGAxeUP+waa7ZaHWLxtUx8inxkzbuGYN1xICYNOO/Drm1tAX1VmRNNEjjTwLV2BWo1WY9haRX0gcktRFELFylO1LEQejf0z8nmvGpbXyffc97mgRH5bravTWXdH0cpZ+pWUPWOnaCS3QVUtAuMZM7DbZDMyeU/3uM6u2EPa1ohIzXH3jay9YSpQ1LQmwfkLyKibraHW/tbUCyw3esRjUCRwLBMhz30r8wouFVBdJXUwTKhZoCkfeWwUMOI3G8vfM=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1996
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT007.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(136003)(376002)(13464003)(199004)(54534003)(189003)(99286004)(53546011)(52536014)(47776003)(7696005)(76176011)(186003)(8676002)(81156014)(81166006)(229853002)(76130400001)(33656002)(8936002)(9686003)(8746002)(25786009)(26005)(4326008)(55016002)(70206006)(70586007)(102836004)(66066001)(6506007)(6246003)(63350400001)(486006)(356004)(126002)(476003)(5660300002)(446003)(11346002)(336012)(6116002)(3846002)(23726003)(305945005)(74316002)(7736002)(14454004)(478600001)(26826003)(86362001)(54906003)(2906002)(22756006)(110136005)(50466002)(316002)(97756001)(14444005)(46406003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4300;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: f9a840f1-f54a-4c21-bd4a-08d7521e0821
NoDisclaimer: True
X-Forefront-PRVS: 0192E812EC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3s/2mndNGkmrNJapKeTlA/lloEBmBHKbZT45ND9nmvRF87b53bnVaAhiOzntLRO/BX0khYh6Mw4QCz557JcW/YfiDjZmTrUEpwwLsZAoY1n73kArszPWPPgYbqc8wIw0yNqkH0uSY6WxWV+hqbLyNNzz2yReoKlyQT1ldWIiJZt4vrCpE/9FU2KXZi5p7Udfhdquy6iNAKjfAKlN0JEo/qvDicD0ou/FD+DdVzFKPKK2zNv5saNvSc3fD8TDT/Neqx9a0cHP20AZuyvY/ELwI4cgCyyfOwagESoZVofOtQpJYbqM2A6nA60mM8gvfpBs5Pluvqfrp2EHHQFyitoL+hQv7RtsExvPauRflL2KGtJBxcy0XgdKB7B1gTIC/6gKugtO1oQDQ7Y18CNIB4eRfYW6y2U+wg9QgV71vAhbUxA=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2019 09:49:00.7090 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: df38e70a-f5df-49a4-fa18-08d7521e1268
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4300
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_024906_781299_46657D4B 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.67 listed in list.dnswl.org]
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
 "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, nd <nd@arm.com>,
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
> Sent: Wednesday, October 16, 2019 3:29 PM
> To: Paolo Bonzini <pbonzini@redhat.com>
> Cc: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>;
> netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> sean.j.christopherson@intel.com; maz@kernel.org;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; nd <nd@arm.com>
> Subject: Re: [PATCH v5 3/6] timekeeping: Add clocksource to
> system_time_snapshot
> 
> On Wed, 16 Oct 2019, Paolo Bonzini wrote:
> > On 15/10/19 22:13, Thomas Gleixner wrote:
> > > On Tue, 15 Oct 2019, Paolo Bonzini wrote:
> > >> On 15/10/19 12:48, Jianyong Wu wrote:
> > >>>
> > >>>
> > >>
> > >> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> > >
> > > You're sure about having reviewed that in detail?
> >
> > I did review the patch; the void* ugliness is not in this one, and I
> > do have some other qualms on that one.
> >
> > > This changelog is telling absolutely nothing WHY anything outside of
> > > the timekeeping core code needs access to the current clocksource.
> > > Neither does it tell why it is safe to provide the pointer to random callers.
> >
> > Agreed on the changelog, but the pointer to a clocksource is already
> > part of the timekeeping external API via struct system_counterval_t.
> > get_device_system_crosststamp for example expects a clocksource
> > pointer but provides no way to get such a pointer.
> 
> That's a completely different beast, really.
> 
> The clocksource pointer is handed in by the caller and the core code validates
> if the clocksource is the same as the current system clocksource and not the
> other way round.
> 
> So there is no need for getting that pointer from the core code because the
> caller knows already which clocksource needs to be active to make.the whole
> cross device timestamp correlation work. And in that case it's the callers
> responsibility to ensure that the pointer is valid which is the case for the
> current use cases.
> 
I thinks there is something misunderstanding of my patch. See patch 4/6, the reason why I add clocksource is that I want to check if the current clocksouce is
arm_arch_counter in virt/kvm/arm/psci.c and nothing to do with get_device_system_crosststamp.

So I really need a mechanism to do that check.

Thanks
Jianyong

> From your other reply:
> 
> > Why add a global id?  ARM can add it to archdata similar to how x86
> > has vclock_mode.  But I still think the right thing to do is to
> > include the full system_counterval_t in the result of
> > ktime_get_snapshot.  (More in a second, feel free to reply to the other
> email only).
> 
> No, the clocksource pointer is not going to be exposed as there is no
> guarantee that it will be still around after the call returns.
> 
> It's not even guaranteed to be correct when the store happens in Wu's patch
> simply because the store is done outside of the seqcount protected region.

Yeah, all of the elements in system_time_snapshot should be captured in consistency. So
I think the consistency will be guaranteed if the store ops added in the seqcount region.

> 
> Vs. arch data: arch data is an opaque struct, so you'd need to store a pointer
> which has the same issue as the clocksource pointer itself.
> 
> If we want to convey information then it has to be in the generic part of
> struct clocksource.
> 
> In fact we could even simplify the existing get_device_system_crosststamp()
> use case by using the ID field.
> 
> Thanks,
> 
> 	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
