Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9C713A773
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 11:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+YLCPXnKKN3PxBoYzmK/w7sMGprIMrJKAt5EigVrDo=; b=E3SvQSojj6HGQM
	GC1ioLmxnmiNUaz4v2GEn9d3zThTV+hl1+qFzm7qBoEFQ7Eb+Ka1YseQazPT6X9llvRiIXsS2GQk2
	IrXpan4MpVgiI47osqyVRUC6ibCRFRZdh2Fn11c3JRit8hF2ViNaO4XVoEDdKwwBS2EOs8+USvcfc
	G6OPeASKCcIkZyyDStS289+VN+CMe/KTQ5UBoILsQY39oRknjIWFSprAg/gJPMvVcKzuB04fc9lrM
	v69fXyt360WnXopKs9bql1MsvDgqNinQtYAWecRWcqdSiTxITr+KxaIqscmxHm5cYf6N+BFDGQUwW
	Yn/y4sBIs12u/aU/FO1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJXz-00030O-50; Tue, 14 Jan 2020 10:35:43 +0000
Received: from mail-eopbgr30073.outbound.protection.outlook.com ([40.107.3.73]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJXO-0001Wq-5n
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 10:35:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uMcY0I41udNF+2uESqSRzcDBBUmCzMhHhGmFdsv3MdU=;
 b=TtzYkCofO4VWT/73TqESbF5XVqA0cmdObMMDm1zloZN5CGruOZw3gcJSNRHcrvwRuOaB/JuSoC2qpogMlvo8zTQrjCc88Se0c+CYUhN9qJC+oreFTfwghSxx7/220/2cvhoY5OPrHf2AzQV2M9shHGrBRCt0R1t0ML/8aMp7hsQ=
Received: from DB6PR0802CA0031.eurprd08.prod.outlook.com (2603:10a6:4:a3::17)
 by DB7PR08MB4585.eurprd08.prod.outlook.com (2603:10a6:10:7b::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.18; Tue, 14 Jan
 2020 10:34:59 +0000
Received: from VE1EUR03FT041.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::208) by DB6PR0802CA0031.outlook.office365.com
 (2603:10a6:4:a3::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.10 via Frontend
 Transport; Tue, 14 Jan 2020 10:34:59 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT041.mail.protection.outlook.com (10.152.19.163) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Tue, 14 Jan 2020 10:34:58 +0000
Received: ("Tessian outbound 121a58c8f9bf:v40");
 Tue, 14 Jan 2020 10:34:58 +0000
X-CR-MTA-TID: 64aa7808
Received: from b6e565f55bc2.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 59396DE5-C495-44D7-AF14-D39CA66F96DF.1; 
 Tue, 14 Jan 2020 10:34:53 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b6e565f55bc2.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 14 Jan 2020 10:34:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GO9NFD1Wgc9hOaWhJZQg7pfIdVdflKJHZdodQPiryEm/jLbb5UEeeNkkaWnUkTjBv7Ex0vb6HigTxqwdfkoV8H5mgpl/kQ+133LT+/J7NRgg2iaTmDD1pD/aIoIQyjcJ8r2fLZw7i0JVMKwm2gQpx5G0ZG5xP4mbSRtt3suWf13AVxf0BJcEN8n3KCPlvaNGFZa/z/2xqJwhFHBEZpUFF/jnrZvBGLSiyqhyvo4PNEgUXEgsiZZFBJ8ZoogF3q/UeQr2eD/5lI7n9urGkH1SNqmaHzBU7zh2uXiHM4CpDtLvsKa7UI53gi5MiVkeyxmezHk+zPrYpEe/pDmT/YXtWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uMcY0I41udNF+2uESqSRzcDBBUmCzMhHhGmFdsv3MdU=;
 b=bbC2TeA32a8IqyhgVRlO86yhEtc86oH87FhV11Vvx94+VYsGUfwkAnjCQiv7D9Fcg0UgHpkwM/KXwI2bfzUqkFYohe1uj3aCSp0esnurVWejf6+2neD8dIOKOXl9IvUBTKrQsRo82yJVB09n2t0c6Lg57ZgduVEW1QFi6Oj9chjUvkn5/N4a15cH3ZzrwETNpNxen0qr80F0Ci+ggfDg3Sjsb0RDr58dZ3hJfXnndo5yA8wfHAfJlsaWzPmG8nwiHZN4DwDFcZhgidXhQHJRxhhQcN3/pO/+puMN7+Uj3oy982w8sE2+uiI0Ok92Ta1GagnejjhQRu5wizOmLNszxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uMcY0I41udNF+2uESqSRzcDBBUmCzMhHhGmFdsv3MdU=;
 b=TtzYkCofO4VWT/73TqESbF5XVqA0cmdObMMDm1zloZN5CGruOZw3gcJSNRHcrvwRuOaB/JuSoC2qpogMlvo8zTQrjCc88Se0c+CYUhN9qJC+oreFTfwghSxx7/220/2cvhoY5OPrHf2AzQV2M9shHGrBRCt0R1t0ML/8aMp7hsQ=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Tue, 14 Jan 2020 10:34:51 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f%8]) with mapi id 15.20.2623.017; Tue, 14 Jan 2020
 10:34:51 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [RFC PATCH v9 6/8] psci: Add hvc call service for ptp_kvm.
Thread-Topic: [RFC PATCH v9 6/8] psci: Add hvc call service for ptp_kvm.
Thread-Index: AQHVrwuxR+1ZEaCriEa+CGCL3lP4K6ffGBkAgALhg9CAAEMegIABkMMAgAAdn4CABKu08IAAEOIAgAGFg8A=
Date: Tue, 14 Jan 2020 10:34:51 +0000
Message-ID: <HE1PR0801MB1676C93AF0AA7980F4A79B3FF4340@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <20191210034026.45229-7-jianyong.wu@arm.com>
 <7383dc06897bba253f174cd21a19b5c0@kernel.org>
 <HE1PR0801MB1676AB738138AB24E2158AD4F4390@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <099a26ffef5d554b88a5e33d7f2a6e3a@kernel.org>
 <HE1PR0801MB16765B507D9B5A1A7827078BF4380@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ca80d88f5e00937fca7ee80be8f5c962@kernel.org>
 <HE1PR0801MB167693BFB769ACEEA8A6B007F4350@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <22ba1283a7b82f018c1fdf85414e5bfe@kernel.org>
In-Reply-To: <22ba1283a7b82f018c1fdf85414e5bfe@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 30ff59ce-40fd-40e8-bd50-0c283624fabb.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b68858e5-85dd-4648-23a9-08d798dd6782
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1676:|HE1PR0801MB1676:|DB7PR08MB4585:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB45859DC1D4D7FE6FA287DFBFF4340@DB7PR08MB4585.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: True
x-ms-oob-tlc-oobclassifiers: OLM:6430;OLM:6430;
x-forefront-prvs: 028256169F
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(376002)(396003)(39860400002)(199004)(189003)(2906002)(54906003)(316002)(5660300002)(52536014)(478600001)(33656002)(86362001)(4326008)(6916009)(55016002)(7416002)(7696005)(71200400001)(8936002)(81156014)(186003)(81166006)(9686003)(8676002)(66556008)(6506007)(53546011)(26005)(64756008)(66476007)(66946007)(76116006)(55236004)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1676;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Nk98rnE1mlVgCWC4ypXsAgy0trOdNDzrcZiAu/NaxJ3DsQlyHH6L65mWmQwU39jlk1XSScG0tLjPQwEy6KGvt2bgBRYSrabd1K5v49CH/fa68rmxwjJpBOmaTwLIp0BWyeibB5CD99qx6ZMTiG4S7vL4oQvR59ZsVwJvGB4Ik098VYKF8pdVlAEWSYmb6dDo0/FxIqcwGoh1W3HhCffQqGddMgHBy3/qFtfUfTVTpFY0NQLuDE9yEvvqTh42L+kqyehggiiwo4xtXk8HaKtd5CHRatpkH2ykpykbHbCFbn2SEVsyPwuVLorK+KoCgsjVLMwiWnF9ANMc4vgsetZFbwMlKLrOUUHS5mJiHwCmsRJjurgQic02erBcnhAe0R4NAe6AGx3076vWtQPxmwIMgLIdHIo0oNVoHbRy+LnMP4v3/TaeBGxDpNnnwOfAfi45
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1676
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT041.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(136003)(396003)(199004)(189003)(55016002)(9686003)(70586007)(26005)(7696005)(70206006)(6506007)(36906005)(316002)(54906003)(2906002)(86362001)(52536014)(26826003)(5660300002)(6862004)(4326008)(33656002)(356004)(478600001)(186003)(336012)(8676002)(81156014)(53546011)(8936002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB4585;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: bfcdd766-b44b-487a-a34b-08d798dd6320
X-Forefront-PRVS: 028256169F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rRiTISIHiDBG6AeMvWpLg5oHzhO5gvoBrZ8U+FN2tK244yZvPZlkyenhB7uz0NrGLb5SgpOvsD7KeYMpqIasWjVauZ/6BWBkZ0ijbn7E5b7vRDp8RGV1uyCDmoBSf0uMhR2+Eyufl/C+O6COAn3C9Wf4QHtQGmSOPN4uMeX+S9UrZhE9QzNbGfsL9doRQsK/FmYd4ZyZDiDNzgoBkyKTKUCFwJWLgVnwfGYuIJa6Z47OZb3Yn/9YDF1uhrwTImEIpbNLZlz64vGJx4SLAQMzCES9wuXr/lx+cq3kbXuSD7QWN1hDkiRpXhyfjoiYgX4KK5vyIpkDrwVpYOm7Er06ReRXQgRN0TH9NCABI80rajSW7bhxO3wzGh+BWr4pCEaJWC0cZedEbZOUaRKp1AYuvs4aCZlFnz938Q3aIJ6r7KFTZ76Yr5di2aZyZ/v1/K4e
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2020 10:34:58.6860 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b68858e5-85dd-4648-23a9-08d798dd6782
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB4585
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_023506_312595_31B13E93 
X-CRM114-Status: GOOD (  21.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Justin He <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 Steven Price <Steven.Price@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
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
> Sent: Monday, January 13, 2020 7:16 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; Steven Price
> <Steven.Price@arm.com>; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; kvmarm@lists.cs.columbia.edu;
> kvm@vger.kernel.org; Steve Capper <Steve.Capper@arm.com>; Kaly Xin
> <Kaly.Xin@arm.com>; Justin He <Justin.He@arm.com>; nd <nd@arm.com>
> Subject: Re: [RFC PATCH v9 6/8] psci: Add hvc call service for ptp_kvm.
> 
> Hi Jianyong,
> 
> On 2020-01-13 10:30, Jianyong Wu wrote:
> > Hi Marc,
> >
> >> -----Original Message-----
> >> From: Marc Zyngier <maz@kernel.org>
> >> Sent: Friday, January 10, 2020 6:56 PM NV breaks that assumtion,
> >> because the guest hypervisor is using the physical counter. Also,
> >> let's not forget that the hypercall isn't Linux specific.
> >> I can write my own non-Linux guest and still use this hypercall.
> >> Nothing in
> >> there says that I can't use the physical counter if I want to.
> >>
> >> So somehow, you need to convey the the hypervisor the notion of
> >> *which*
> >> counter the guest uses.
> >>
> >> Does it make sense? Or am I missing something?
> >>
> > I know what you say. Let me try to solve this problem.
> > 	Step 0, summary out all the conditions we should process, which will
> > sever as branch condition.(now only normal virt and nested virt, I
> > think)
> 
> No. You shouldn't think of the various use cases, but of which time
> references a guest can use. You don't need nested virt to use the physical
> counter, for example.
Ok,

> 
> > 	Step 1, figure out the set of reference counter value used by guest
> > in all condition.
> 
> That should be for the guest to tell you when it calls into the PV service.
> 
Yeah

> > 	Step 2, determine which reference counter value will be used by
> guest
> > in a certain condition in hypercall.
> > In step 1, can we give the set only 2 elements that one is physical
> > counter the other is virtual counter?
> 
> I don't think returning the two values is useful. Just return what the guest
> asks for.
> 
> > For step 2, I have no idea for that now. can you give me some hint
> > about it?
> 
> Just expand your SMC call to take a parameter indicating the reference
> counter, and return the sampled (or computed) value corresponding to that
> counter.
Get it, I'll try it.

Thanks
Jianyong 

> 
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
