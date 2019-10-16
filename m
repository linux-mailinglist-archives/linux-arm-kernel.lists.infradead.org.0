Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E74D8D42
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6ss1C/hDw6D3+JY+qPzI23O10U7dji4bSf5HdKItQ0=; b=bv7PRQ8mxGcz1P
	Thn6wXJBYr61dLdfU+BxtSCTiVqoXZvxLkMmlqOzDX+uW/Xyokqu2EbManc9nCd7VBJqC1R/jnuXs
	CRaMiK5/eZgEWsETcAve5DgJ5Jn6jerItPp4FxtklRxEavkIV7DTS9XggIGR4FSURBCwU2d9cQgd6
	zuD7Wd+7qN0G9za07knulp/Ml2lTsOSLXJmhpdsSYhSJ0YBQBZ+QqVTyHz6cf7xxrq0OEGj1TMkj/
	cA7xNGe1WzCQr8a3X5GYcBgXafZe5qZoyO2NxYFVrdyFmtEBJdawONXADOHaTKQeHmsaZNI/N+bfp
	EKX1TwSfxlIK6196dbPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgBT-0007Pl-FY; Wed, 16 Oct 2019 10:05:35 +0000
Received: from mail-eopbgr40083.outbound.protection.outlook.com ([40.107.4.83]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgAz-00067s-AU
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lJQGczWTScr5w+6CN4LiAycC4W1vCOYvima47Au+h8Y=;
 b=VnZlvFbCFOalu0ZgqPwQYzXCpT3Ds+mHvNprLVJ529f2aubOeCLB9UsWP8JnkCRGhtc9co9LrpIHN0frzWPFwn7NraOZvG5SNVQOTpgLpk7th7IlDJwt1Fl5EkNepRbYVtJPLKha8KhsKudmhXWNJuRymP8rTduGvD6kVd2Pses=
Received: from DB6PR0802CA0047.eurprd08.prod.outlook.com (2603:10a6:4:a3::33)
 by AM4PR0802MB2145.eurprd08.prod.outlook.com (2603:10a6:200:5d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.21; Wed, 16 Oct
 2019 10:05:01 +0000
Received: from AM5EUR03FT052.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::200) by DB6PR0802CA0047.outlook.office365.com
 (2603:10a6:4:a3::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 16 Oct 2019 10:05:01 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT052.mail.protection.outlook.com (10.152.17.161) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15 via Frontend Transport; Wed, 16 Oct 2019 10:04:59 +0000
Received: ("Tessian outbound 851a1162fca7:v33");
 Wed, 16 Oct 2019 10:04:51 +0000
X-CR-MTA-TID: 64aa7808
Received: from 826696268afc.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.14.59]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 890A5724-0D73-4B48-9524-DA7DF9F4AD28.1; 
 Wed, 16 Oct 2019 10:04:46 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2059.outbound.protection.outlook.com [104.47.14.59])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 826696268afc.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 16 Oct 2019 10:04:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pa9wSs6v2ufdWB+TzQ26BgiClPtKSEtk7UJlA7RV0aRbla4eCY0RtAcLg/dLTWM+kuUjcyp4V+24oW9iJzJQy5NC8q+c+AdyAN1ia2Yeu9i/mHL7ngjzfj4iSg675TReWSNxwj+j1bkhkNv2iretEQ/4PYJFk2lIk092ZqVMJ2UCX7zr+ncX6pplh6tncMnhbvNGXuqCLtr+7nEuWawQ9H3iF5s7vx3lqDe+dY4zVzYcKvyj3zupAdRQTTgMvc4ZQtl5eX8QZORDlEgI8FBCJWNMmwiXrS5Un7o1lJflANUfLxZ+YN+6Qzqb4R6tXKM7szw9XaqFF/+9vnQW4wiPaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lJQGczWTScr5w+6CN4LiAycC4W1vCOYvima47Au+h8Y=;
 b=ofdSrNLzR7e69S+3PjyjcZcGf5EF8CgFZSkv5R9DOmp8C+UXuOxN8OBo3mhAVELMKm9vG8uV0rbZ2uMqtmYQ4ZiKfqMvKCOsYE7DOfPAItohJXTTljy5vWVwSXGhM5O14U9A88PqzCnqd0lfCiDakoBB95lD58NcmebKPtqtTFHCe2Q/0bZksysncKXBUdS16VJVErSYFCELA3j/m2nW7fNmk5xl8Gnlymc8FF9RBTgDwtbonQ/7EAdPgANjMUQ0Qd86tGV7DZQwfudUiHGAwZ6zTwB5dCkFMCZ2TcouG0Av3MYassHYWJS3YyKc1M7v4/osM0zgeOzreamNWt9qjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lJQGczWTScr5w+6CN4LiAycC4W1vCOYvima47Au+h8Y=;
 b=VnZlvFbCFOalu0ZgqPwQYzXCpT3Ds+mHvNprLVJ529f2aubOeCLB9UsWP8JnkCRGhtc9co9LrpIHN0frzWPFwn7NraOZvG5SNVQOTpgLpk7th7IlDJwt1Fl5EkNepRbYVtJPLKha8KhsKudmhXWNJuRymP8rTduGvD6kVd2Pses=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1865.eurprd08.prod.outlook.com (10.168.94.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.22; Wed, 16 Oct 2019 10:04:43 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d%6]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 10:04:43 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "sean.j.christopherson@intel.com"
 <sean.j.christopherson@intel.com>, "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, Mark Rutland
 <Mark.Rutland@arm.com>, "will@kernel.org" <will@kernel.org>, Suzuki Poulose
 <Suzuki.Poulose@arm.com>
Subject: RE: [PATCH v5 2/6] ptp: Reorganize ptp_kvm modules to make it
 arch-independent.
Thread-Topic: [PATCH v5 2/6] ptp: Reorganize ptp_kvm modules to make it
 arch-independent.
Thread-Index: AQHVg0Yy3IKxJp51oU6H7J1V0yQ+3Kdc2u8AgAAwgwA=
Date: Wed, 16 Oct 2019 10:04:43 +0000
Message-ID: <HE1PR0801MB1676A5DA4C0B996FEDB2D47BF4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-3-jianyong.wu@arm.com>
 <e0260f51-ad29-02ba-a46f-ebaa68f7a9ea@redhat.com>
In-Reply-To: <e0260f51-ad29-02ba-a46f-ebaa68f7a9ea@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 224ccb43-40ba-42fe-bb9c-f48f986e50d3.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 1c4344ee-4ee5-4f5c-18dc-08d752204e32
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1865:|HE1PR0801MB1865:|AM4PR0802MB2145:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM4PR0802MB21453B4D49D85B7D93E4187EF4920@AM4PR0802MB2145.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7219;OLM:7219;
x-forefront-prvs: 0192E812EC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(13464003)(189003)(199004)(9686003)(86362001)(6436002)(55016002)(316002)(2201001)(3846002)(71200400001)(229853002)(11346002)(486006)(446003)(6116002)(66066001)(476003)(71190400001)(6636002)(76176011)(186003)(55236004)(6506007)(110136005)(99286004)(53546011)(54906003)(2501003)(7696005)(256004)(102836004)(26005)(4744005)(33656002)(7736002)(7416002)(74316002)(305945005)(52536014)(5660300002)(25786009)(2906002)(478600001)(8936002)(76116006)(66946007)(4326008)(66556008)(66446008)(64756008)(6246003)(14454004)(81166006)(66476007)(81156014)(8676002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1865;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: KA8atxduN7y7VJWTypMr4oOoPQJZK2+A9jCrfRzSjua2VSCl8wHq+yYTUZSB+H/gVmvq3HPl3Hj8ZU3WbHggWain+8An8Lkr3LYXLVsrBAplNSwiKbE326TKuTCTbeQnEL4mfcBgECDsxJxIWTZ9pzY/ZLqoi1qJ8NwVt1nxIcqzr28pRu2qx6SjRAPrW3LhTi66EPg/jOJt67NiSD9np/LHbUQjg78YRgvOjQxR7nxJWrsqW53LD/rDcxbRjpgMMFm9WoS/3I9xsTD0hRpfG6j5vxk3YL/FGnVD35Oo9QIxNT+VjR1h0mSENWMNFS748u580xmf3ERPW+pDcyC/ehhIvtrumAK8ni9iPfD8N2QR7i4HEo++sGKk+X8uxMPfFfb6zTm84EHwwajZau3NOiT5InCH9QVEGjvdqJNeOWA=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1865
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT052.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(136003)(346002)(13464003)(199004)(189003)(186003)(66066001)(47776003)(2501003)(26005)(7696005)(7736002)(2486003)(74316002)(76176011)(52536014)(23676004)(356004)(6246003)(9686003)(99286004)(478600001)(6116002)(14454004)(5660300002)(53546011)(6506007)(3846002)(2906002)(102836004)(26826003)(6636002)(126002)(25786009)(2201001)(4326008)(336012)(86362001)(55016002)(305945005)(36906005)(8676002)(76130400001)(50466002)(63350400001)(436003)(70586007)(446003)(11346002)(70206006)(229853002)(22756006)(33656002)(81156014)(316002)(81166006)(8936002)(476003)(54906003)(486006)(110136005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR0802MB2145;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 89cf402e-eeb9-4982-23dd-08d752204445
NoDisclaimer: True
X-Forefront-PRVS: 0192E812EC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lJu9ZybhV8EpDULu1088Tu4g7o6EChD0bpQsHGwazZTQjQlDtTydvK89htKPpR6NTYU8MAIr5fWdKyP7mfiig9Hu7GMJyxFRmmHFtCT5wOQh1W4cpqHiDA9wmgaqzBbD8panF8x4jRrZi2JzZV0dntJs9D6BK/jRGcduN9iAu0nGilZLdzy5NhNdnwhYZKP4cgIH5Atjn2qaq1VolDNdBiPcUofwl6/o2BPIFAp9kJow+ibmshPCSvM74xEfxCotkmIjPJEXmIpw07ZZf1zjBsegirg5RatU9yBe2ztaQ5Rzj0JT0MshrQh8TW5DGbMsR7s655VUSgPCNLy4+PQo4hgsRR8HRweq2zBm1upKU4geTkjaWRzJn31vZCvt0TpbuzzMI59jZdi0FsAB529OD33BMqENMzF2Ll2dAiD1I1Y=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2019 10:04:59.9991 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c4344ee-4ee5-4f5c-18dc-08d752204e32
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0802MB2145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_030505_956564_79AF32A1 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.83 listed in list.dnswl.org]
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
> Sent: Wednesday, October 16, 2019 3:10 PM
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
> Subject: Re: [PATCH v5 2/6] ptp: Reorganize ptp_kvm modules to make it
> arch-independent.
> 
> On 15/10/19 12:48, Jianyong Wu wrote:
> > +	ret = kvm_arch_ptp_init();
> > +	if (!ret)
> > +		return -EOPNOTSUPP;
> 
> This should be "if (ret)".
> 

Yeah, I change this at patch 5/6, but need change it here.

Thanks
Jianyong

> Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
