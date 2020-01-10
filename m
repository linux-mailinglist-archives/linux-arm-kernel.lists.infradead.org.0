Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE71136A43
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 10:51:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+z53GzlPj0taF9AmRf+ZDAS7EC97TOw6NCqYlQ63lg=; b=Ei/B/UqFTJqq4A
	LMnokm2OvcMrKLot/zO9WsTshTG9hZ3/eiz4RyJyFRWI1/HzpAMNOdhkR4xLPsn3w1Ej0K/ET/kXz
	xUjbeN+TXqFTA/MDVvHgCluhtWrf1SzYcMZXQi+JlhurZWBxb+LXKuSFULyfU0OJhrTtz636xnNEK
	PXUz6pZi8dujBwUy2noJ6JnHSVUCGC+PIfmVMcONAIJg4CrWI8tM50kxAHbxg8JgwwBxrONFIH+l0
	ARLx3/jpROx1NVOO6pmxlxSSklI4/4EPjoFj/owwcv5sEHevVr31LsUHYNl2e7HXds2EllGStk1pX
	tweAAZSzQqqUnQJnFOMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipqwz-0006Jg-WE; Fri, 10 Jan 2020 09:51:30 +0000
Received: from mail-eopbgr60051.outbound.protection.outlook.com ([40.107.6.51]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipqwp-0006Ij-2e
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 09:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RpOxh8Ck9WWCfMNgHMOLPoOZgn4b+fCTsO88KvX3vfQ=;
 b=8FQ7PeEm7yBB4SBI4hGg24Yd+x5kvAHSrcrlWSQU6JpLUb4n3wAtxPMJ1j5aYS/n9wXjq3cNeJ0irPy88A9ju19x5821y6eWkhwsNwGMLlWK365a5/Ghs8xoMkLynugC2V4LJYqdfilrN7jcYT8HniPhIJ7ox/OqUZO3AJwevTY=
Received: from VI1PR08CA0132.eurprd08.prod.outlook.com (2603:10a6:800:d4::34)
 by AM7PR08MB5477.eurprd08.prod.outlook.com (2603:10a6:20b:10f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Fri, 10 Jan
 2020 09:51:11 +0000
Received: from VE1EUR03FT016.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::204) by VI1PR08CA0132.outlook.office365.com
 (2603:10a6:800:d4::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.10 via Frontend
 Transport; Fri, 10 Jan 2020 09:51:10 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT016.mail.protection.outlook.com (10.152.18.115) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Fri, 10 Jan 2020 09:51:10 +0000
Received: ("Tessian outbound 28955e0c1ca8:v40");
 Fri, 10 Jan 2020 09:51:10 +0000
X-CR-MTA-TID: 64aa7808
Received: from ef822ac32c86.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 7423F90E-C564-4349-B2A7-0CD8414F21D6.1; 
 Fri, 10 Jan 2020 09:51:05 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ef822ac32c86.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 10 Jan 2020 09:51:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XqaNw3gGyUGsLAV6nwkgaY6w+Hs7SxgkC2FKckmAh/+K7fgOuVhfZo9rcXxH9Aj33kUEQByuFbKOIAzlHP2t4Xutyxqg5tiRj7gSBQrzUtwoHVB57cUmoNGZlpRFgq2XaeNrIXuh34LNe5JBEPVz49N6hkteivifsR0c7Z1Q/mGeqc5VpBNjNv0RqJhjn1hXZcozQN5eb2q3Otpc404B2yZfu6aZaZlmjGYxKFQLrdyo3jwq0HNzyckrAr43QnkIxZn4tSJMmIrm1mpO/n1KnpqD0c5UYVYji9sM6Kgx5ztOw6dlNQ9gqkiGQ61/TbL5iD/k6mnYwgvgPkq8c8IUNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RpOxh8Ck9WWCfMNgHMOLPoOZgn4b+fCTsO88KvX3vfQ=;
 b=mx0BWR002S7DA9ed95LDbyEvWtxVXY8PCAyiGE3rNNHPXwMvUC9MmRF34pQyzjsTOUVlH0EUtQrxA4YsedUOdejrfTXbOXnHWmuDcpcjACFztXFryZT0UmlLUrOPEmvHb23fZiknldSQ36+bbO+tUFmt/S3/cqm6dAM0s4fVDhoNELxs7WxfYCQ7s9nffGWA/4BzRPfF6Pq8weaefAZFjBpv1hmQ9Syc7+qX9hSW5MYxa+HTrb4ShZnR0S3Q4DTJMPUuz/xywdKp2aDmPqT3nZP7xPdUfEAu2osyovTEiK1memsBRUIA2jsagNEaV91JZw36rp9WZjzJ/x0Omqy4Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RpOxh8Ck9WWCfMNgHMOLPoOZgn4b+fCTsO88KvX3vfQ=;
 b=8FQ7PeEm7yBB4SBI4hGg24Yd+x5kvAHSrcrlWSQU6JpLUb4n3wAtxPMJ1j5aYS/n9wXjq3cNeJ0irPy88A9ju19x5821y6eWkhwsNwGMLlWK365a5/Ghs8xoMkLynugC2V4LJYqdfilrN7jcYT8HniPhIJ7ox/OqUZO3AJwevTY=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1978.eurprd08.prod.outlook.com (10.168.96.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Fri, 10 Jan 2020 09:51:01 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f%8]) with mapi id 15.20.2623.013; Fri, 10 Jan 2020
 09:51:01 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [RFC PATCH v9 6/8] psci: Add hvc call service for ptp_kvm.
Thread-Topic: [RFC PATCH v9 6/8] psci: Add hvc call service for ptp_kvm.
Thread-Index: AQHVrwuxR+1ZEaCriEa+CGCL3lP4K6ffGBkAgALhg9CAAEMegIABkMMA
Date: Fri, 10 Jan 2020 09:51:01 +0000
Message-ID: <HE1PR0801MB16765B507D9B5A1A7827078BF4380@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <20191210034026.45229-7-jianyong.wu@arm.com>
 <7383dc06897bba253f174cd21a19b5c0@kernel.org>
 <HE1PR0801MB1676AB738138AB24E2158AD4F4390@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <099a26ffef5d554b88a5e33d7f2a6e3a@kernel.org>
In-Reply-To: <099a26ffef5d554b88a5e33d7f2a6e3a@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 7d87b698-0ad5-49aa-adcb-f8ae0f578508.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5ba949c4-64ca-43f5-092d-08d795b29f66
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1978:|HE1PR0801MB1978:|AM7PR08MB5477:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM7PR08MB54775906BB9C52FB077D0D61F4380@AM7PR08MB5477.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: True
x-ms-oob-tlc-oobclassifiers: OLM:1850;OLM:1850;
x-forefront-prvs: 02788FF38E
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(13464003)(199004)(189003)(7696005)(53546011)(55016002)(86362001)(6506007)(7416002)(6916009)(52536014)(9686003)(316002)(71200400001)(55236004)(8936002)(66446008)(966005)(4001150100001)(33656002)(81156014)(76116006)(54906003)(66556008)(186003)(2906002)(4326008)(26005)(81166006)(66946007)(64756008)(8676002)(5660300002)(478600001)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1978;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: oRkGsVNMjxE5Gdp7ZfbaWvlBB14kjc0n/fYhBVzWLvJ0Mfm1F9QVPgMmS026Hzu6tpeyo+v7lOFdl9QhTU3pc46wLRgYv2SahhF2+1nhyQDG/pS/s8Pv+uuIls2gd5LPVm7u7RDpncWbNkmhSQcd5WgUykRiGS8WAILuQdbfugnVQrIM9TX0k2rRpOHB1Zuclx3sn76b5WB7mNPmRXNGz4Kj6JmK51g6kqbZdXxDNlWVaXimUHx6eTVqT/AgaSGSSYP5PP7FbQQ4xMKn422f6+b6uXiOY9p2ZSH8OVti4R6EQtkFqxXT4f0HThpc2lttLf5TqP1NYsEZFilenMSLhSCEm4oLkIYzokoAB1X1yQNOWbgk7n8A9L7xHb9xACa346iaIscRPykkQFCb8NPl0OAqrSFNrOwj7FGfCnFHkS2d66K66XNklosr8ZIopXJHdaG76/EJutpZgppODt+qStriVpOGEEeFkdsSv5wlQssYOqeSB2MoCKhy+0cLOHzvs4M8czfV8jdZsptk83spcPPqBfbuBkthViDF7x4Mx3s=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1978
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT016.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(376002)(39860400002)(13464003)(199004)(189003)(478600001)(33656002)(356004)(26005)(186003)(7696005)(2906002)(86362001)(316002)(36906005)(53546011)(4001150100001)(6506007)(966005)(26826003)(8936002)(6862004)(9686003)(4326008)(81156014)(336012)(8676002)(54906003)(52536014)(70586007)(81166006)(70206006)(5660300002)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM7PR08MB5477;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: c104dbeb-b2ac-474d-5662-08d795b299d0
X-Forefront-PRVS: 02788FF38E
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MQJo5YScrXYy1si/qSOdJKr1PgSsy+D0DXR/k7EdS055bgLBeVCwZkXBAXmRqPDOevMB4Rj7dJx5Q+C6/nsKHXRmcIBZvOZRkcTZ5lvyjHeSF0/SZ6F+5GUK/ePVh0L9wmF04fowWobNErDVllTYecexNCBC0dd1H4CtCN7m6G9T1eSBIi2gc6C88uTA4kOkhYU7tcFplv9Oac2WZjSDzWPhiZLFFXldxneh4GFrjzmyl/wqP5m1QMzsYYWFtGHV4N/28UyWLQ2JZtnHCQGduC3fQgogq17jBVCCio4mVscS1jVWzsHwROTW7Er+TINhKW8q2hfzxR7bRAbMLZ2oY5ztCe8ntvRmICor2VS0U7Qk4js5yQW86CgCyzCsUnMic+UbgTlqNR8lrTFmZZHNr0BZd7N6cciHdV9eP4CrxeJLEOESOUDwwm8AIfphtHmmuD9NMIYFclI0K68HZ9HsWrSh9kzKPnGiPaycrtp3m9jtfJAUhYwyCt9Ja/zvcWRDmxSMGTUtqW7CxRnd17JVRwVDLiUx4isBOGCg2yVdGIw=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2020 09:51:10.5815 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ba949c4-64ca-43f5-092d-08d795b29f66
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5477
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_015120_197057_13464262 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
> Sent: Thursday, January 9, 2020 5:16 PM
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
> On 2020-01-09 05:45, Jianyong Wu wrote:
> > Hi Marc,
> >
> >> -----Original Message-----
> >> From: Marc Zyngier <maz@kernel.org>
> >> Sent: Tuesday, January 7, 2020 5:16 PM
> >> To: Jianyong Wu <Jianyong.Wu@arm.com>
> >> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com;
> >> john.stultz@linaro.org; tglx@linutronix.de; pbonzini@redhat.com;
> >> sean.j.christopherson@intel.com; richardcochran@gmail.com; Mark
> >> Rutland <Mark.Rutland@arm.com>; will@kernel.org; Suzuki Poulose
> >> <Suzuki.Poulose@arm.com>; Steven Price <Steven.Price@arm.com>;
> >> linux-kernel@vger.kernel.org; linux-arm- kernel@lists.infradead.org;
> >> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> >> <Steve.Capper@arm.com>; Kaly Xin <Kaly.Xin@arm.com>; Justin He
> >> <Justin.He@arm.com>; nd <nd@arm.com>
> >> Subject: Re: [RFC PATCH v9 6/8] psci: Add hvc call service for
> >> ptp_kvm.
> >>
> >> On 2019-12-10 03:40, Jianyong Wu wrote:
> >> > ptp_kvm modules will call hvc to get this service.
> >> > The service offers real time and counter cycle of host for guest.
> >> >
> >> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> >> > ---
> >> >  include/linux/arm-smccc.h | 12 ++++++++++++
> >> >  virt/kvm/arm/psci.c       | 22 ++++++++++++++++++++++
> >> >  2 files changed, 34 insertions(+)
> >> >
> >> > diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> >> > index 6f82c87308ed..aafb6bac167d 100644
> >> > --- a/include/linux/arm-smccc.h
> >> > +++ b/include/linux/arm-smccc.h
> >> > @@ -94,6 +94,7 @@
> >> >
> >> >  /* KVM "vendor specific" services */
> >> >  #define ARM_SMCCC_KVM_FUNC_FEATURES		0
> >> > +#define ARM_SMCCC_KVM_PTP			1
> >> >  #define ARM_SMCCC_KVM_FUNC_FEATURES_2		127
> >> >  #define ARM_SMCCC_KVM_NUM_FUNCS			128
> >> >
> >> > @@ -103,6 +104,17 @@
> >> >  			   ARM_SMCCC_OWNER_VENDOR_HYP,
> >> 		\
> >> >  			   ARM_SMCCC_KVM_FUNC_FEATURES)
> >> >
> >> > +/*
> >> > + * This ID used for virtual ptp kvm clock and it will pass second
> >> > value
> >> > + * and nanosecond value of host real time and system counter by
> >> > +vcpu
> >> > + * register to guest.
> >> > + */
> >> > +#define ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID
> >> 		\
> >> > +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,
> >> 		\
> >> > +			   ARM_SMCCC_SMC_32,
> >> 	\
> >> > +			   ARM_SMCCC_OWNER_VENDOR_HYP,
> >> 		\
> >> > +			   ARM_SMCCC_KVM_PTP)
> >> > +
> >>
> >> All of this depends on patches that have never need posted to any ML,
> >> and just linger in Will's tree. You need to pick them up and post
> >> them as part of this series so that they can at least be reviewed.
> >>
> > Ok, I will add them next version.
> >
> >> >  #ifndef __ASSEMBLY__
> >> >
> >> >  #include <linux/linkage.h>
> >> > diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c index
> >> > 0debf49bf259..682d892d6717 100644
> >> > --- a/virt/kvm/arm/psci.c
> >> > +++ b/virt/kvm/arm/psci.c
> >> > @@ -9,6 +9,7 @@
> >> >  #include <linux/kvm_host.h>
> >> >  #include <linux/uaccess.h>
> >> >  #include <linux/wait.h>
> >> > +#include <linux/clocksource_ids.h>
> >> >
> >> >  #include <asm/cputype.h>
> >> >  #include <asm/kvm_emulate.h>
> >> > @@ -389,6 +390,8 @@ static int kvm_psci_call(struct kvm_vcpu *vcpu)
> >> >
> >> >  int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)  {
> >> > +	struct system_time_snapshot systime_snapshot;
> >> > +	u64 cycles;
> >> >  	u32 func_id = smccc_get_function(vcpu);
> >> >  	u32 val[4] = {};
> >> >  	u32 option;
> >> > @@ -431,6 +434,25 @@ int kvm_hvc_call_handler(struct kvm_vcpu
> *vcpu)
> >> >  	case ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID:
> >> >  		val[0] = BIT(ARM_SMCCC_KVM_FUNC_FEATURES);
> >> >  		break;
> >> > +	/*
> >> > +	 * This will used for virtual ptp kvm clock. three
> >> > +	 * values will be passed back.
> >> > +	 * reg0 stores high 32-bit host ktime;
> >> > +	 * reg1 stores low 32-bit host ktime;
> >> > +	 * reg2 stores high 32-bit difference of host cycles and cntvoff;
> >> > +	 * reg3 stores low 32-bit difference of host cycles and cntvoff.
> >>
> >> That's either two or four values, and not three as you claim above.
> >>
> > Sorry, I'm not sure what do you mean "three", the registers here is 4
> > from reg0 to reg3.
> 
> Please read the comment you have written above...

oh, I see it.

> 
> >> Also, I fail to understand the meaning of the host cycle vs cntvoff
> >> comparison.
> >> This is something that guest can perform on its own (it has access to
> >> both physical and virtual timers, and can compute cntvoff without
> >> intervention of the hypervisor).
> >>
> > To keep consistency and precision, clock time and counter cycle must
> > captured at the same time. It will perform at ktime_get_snapshot.
> 
> Fair enough. It would vertainly help if you documented it. It would also help if
> you explained why it is so much worse to read the counter in the guest
> before *and* after the call, and assume that the clock time read happened
> right in the middle?
> 
ok, I will give explain in comments.

> That aside, what you are returning is something that *looks* like the virtual
> counter. What if the guest is using the physical counter, which is likely to be
> the case with nested virt? Do you expect the guest to always use the virtual
> counter? This isn't going to fly.

To be honest, I have little knowledge of nested virtualization for arm and I'm confused with that
guest'guest will use physical counter.

IMO, ptp_kvm will call hvc to trap to its hypervisor adjacent to it. So guest'guest will trap to hypervisor in guest and will
get guest's counter cycle then calculate guest'guest's counter cycle by something like offset to sync time with it. So only if the
guest's hypervisor can calculate the guest'guest's counter value, can ptp_kvm works.

the implementation of calculating the return value of counter cycle vary with the way deriving counter cycle from hypervisor to guest.

If considering nested virt here, we need the basic knowledge of how guest'guest's counter cycle is calculated from its hypervisor and how to determine 
we are in guest's hypervisor or guest'guest's hypervisor.
If it is the case, can you give me some knowledge, something like a document, about that?

> 
> >> Finally, how does it work with nested virt, where cntvoff is for the
> >> the vEL2 guest?
> >>
> > For now, I have not considered ptp_kvm in nested virtualization. Also
> > I'm not sure about if nested virtualization is ready on arm64 , as I
> > need test ptp_kvm on it. If so, I can consider it.
> 
> It is not about testing. It is about taking the architecture into account.
> And ready or not doesn't come into play here. What you're defining here is
> an ABI, and it better be totally future proof.
> 
Yeah, should included it in design.

> But if you want to test, help yourself to [1] and have fun!
> >
Thanks

> >> > +	 */
> >> > +	case ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID:
> >> > +		ktime_get_snapshot(&systime_snapshot);
> >> > +		if (systime_snapshot.cs_id != CSID_ARM_ARCH_COUNTER)
> >> > +			return kvm_psci_call(vcpu);
> >>
> >> What does this mean? Calling PSCI because you've failed to identify
> >> the clock source? What result do you expect from this? Hint: this
> >> isn't a PSCI call.
> >>
> > Sorry, what I want to do here is that return to guest with the error
> > info.
> > Maybe I should set val[0] to -1 and break to let the guest know that
> > error comes, as the guest will check if val[0] is positive to
> > determine the next step.
> 
> What you should do is handle it like a normal SMCCC failure.
> 
Yeah, I will fix it.

Thanks
Jianyong 

>          M.
> 
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-
> platforms.git/log/?h=kvm-arm64/nv-5.5-rc4-WIP
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
