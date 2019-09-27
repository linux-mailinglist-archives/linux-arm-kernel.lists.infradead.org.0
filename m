Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397C8C031A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 12:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEEkopHD4t13VgvQd4Is39MJ4G+Yquha+jLTLRQ41RE=; b=Ya4zu1eOQy+pUg
	VuCgy5mNW/U8KzArtSruaZUt5cenVfIrqv8yb5B6druEXGYr4Cahhv/3ebdrhqIz+uO7vg8wIXUDC
	qkQDKcrvtTNQPvrFhgZzav7wkG4c5FOWMOoV3bpqs/l1nFOxcJQp1FsUMepc4g9TWaf0BVESNsTjR
	bIVDVv3pwVfx4lo3DbkL4lGowOwZToY0c3/BnnOUNIWC24OY1mEakAF1m9PS8209HNEqcC3luRh7A
	8F6BOL9HGeGJhgDze3eNRU8XGKJwL0TpzMuVDEy9hwnlRAZJldSaDadNakdm3U7jtR7GjTTYuX+JJ
	gOdZGzsCbz59uPRKH9nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDnH9-0003Ma-Fl; Fri, 27 Sep 2019 10:14:59 +0000
Received: from mail-eopbgr50088.outbound.protection.outlook.com ([40.107.5.88]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDnGz-0003LE-Lh
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 10:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ae2gF2Swg9uwp0X/Fea/eKeMEPpP3YEBWTiwK95iYjc=;
 b=WkjJKGtpXmRLuMMtdysdV/T9BGEOcuxILw8dJgc4g5BrqjT4b8WzBkMd8lbjcxz497rg3CTo+WlLs0Erovv5t+KTyMDcVYxYfBWKl4PE6xh10fZtao5VomzOxmKkB3fobkxTy7EpPEeiM33rbKcn41Q3Q4UVuIP6zl3RfSLq8+4=
Received: from VI1PR08CA0182.eurprd08.prod.outlook.com (2603:10a6:800:d2::12)
 by DBBPR08MB4775.eurprd08.prod.outlook.com (2603:10a6:10:da::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.26; Fri, 27 Sep
 2019 10:14:43 +0000
Received: from AM5EUR03FT031.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::204) by VI1PR08CA0182.outlook.office365.com
 (2603:10a6:800:d2::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.15 via Frontend
 Transport; Fri, 27 Sep 2019 10:14:43 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT031.mail.protection.outlook.com (10.152.16.111) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Fri, 27 Sep 2019 10:14:41 +0000
Received: ("Tessian outbound 3fba803f6da3:v33");
 Fri, 27 Sep 2019 10:14:30 +0000
X-CR-MTA-TID: 64aa7808
Received: from 335722af9282.4 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.14.59]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 942D3DAB-609D-4273-9071-B272EDB697AB.1; 
 Fri, 27 Sep 2019 10:14:25 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2059.outbound.protection.outlook.com [104.47.14.59])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 335722af9282.4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Fri, 27 Sep 2019 10:14:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FBQnLgUc+e6tol24I/TqgNVa4e4/LDRIIZLAUtUtbbnTd5c+LOJ5f0Wafxc6yzzUzVPBoMUgK12mrhdB4xS0N4YoAjElYLOz8kKYUVk43cvgZYd4CAJ4WBxBMmK91P1asSeE7o2xv86kFQ32mERrwmLJNJg8jiRqLURfxBvQ4bf0WDL6d0hjbEGtzBnvsGoax96DR+w4di3PnKlsXMQjweoMOunLYO2Gbz4zLVv1c+6R8Wq+b6YOGay0l1Pz+ViYcOPAY3YKYWTpYD3sFhnWshblvbCQ5R9Ccd+2iptODeDtt5aDDOzIBvzVxdQGc4kQ4qnXQec/jj1ozu0xD9Qw/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ae2gF2Swg9uwp0X/Fea/eKeMEPpP3YEBWTiwK95iYjc=;
 b=YU+SsWHmxl3oUAKiSJgQr5F0xpHJjR0mP9u2o0jGAssKnpChWCBIN0sMtLIbDwaU9fACg3N7XNXl+KM7sbscfshxyzjOTeVEDuuIPpe1sIWvRr2Z+ltYTtPgDoDnsTJKyqknIJw3VCTIWHdeqOCANh1bYGlZxUqrarklOoSZtdFbkmECLMNxJQu5mzI3WX7g2aoEXEZWN18puDOlI2XJdIkRp1laBxjKVvXGqThNrv3u6zrtuYyfMDzHmKpM4ntOkaH5yumRY1mwaS9wpefEb3kqAo74s4cx5m+9tu/Be7XqjWtzkyN3R+ieCoFjiGrXWgkRI9Ihlu62GE1xhjLodg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ae2gF2Swg9uwp0X/Fea/eKeMEPpP3YEBWTiwK95iYjc=;
 b=WkjJKGtpXmRLuMMtdysdV/T9BGEOcuxILw8dJgc4g5BrqjT4b8WzBkMd8lbjcxz497rg3CTo+WlLs0Erovv5t+KTyMDcVYxYfBWKl4PE6xh10fZtao5VomzOxmKkB3fobkxTy7EpPEeiM33rbKcn41Q3Q4UVuIP6zl3RfSLq8+4=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1627.eurprd08.prod.outlook.com (10.168.146.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Fri, 27 Sep 2019 10:14:20 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::4d35:2b8f:1786:84cd]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::4d35:2b8f:1786:84cd%3]) with mapi id 15.20.2284.028; Fri, 27 Sep 2019
 10:14:20 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Suzuki Poulose <Suzuki.Poulose@arm.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "maz@kernel.org" <maz@kernel.org>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, Mark Rutland <Mark.Rutland@arm.com>, Will Deacon
 <Will.Deacon@arm.com>
Subject: RE: [RFC PATCH v4 2/5] ptp: Reorganize ptp_kvm modules to make it
 arch-independent.
Thread-Topic: [RFC PATCH v4 2/5] ptp: Reorganize ptp_kvm modules to make it
 arch-independent.
Thread-Index: AQHVdF+Ft3UnKFEitUOtlQstSNDglqc97ZgAgAFgLECAAAGAgIAAAEGA
Date: Fri, 27 Sep 2019 10:14:20 +0000
Message-ID: <HE1PR0801MB1676139461D06C2E421FA7BAF4810@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20190926114212.5322-1-jianyong.wu@arm.com>
 <20190926114212.5322-3-jianyong.wu@arm.com>
 <2f338b57-b0b2-e439-6089-72e5f5e4f017@arm.com>
 <HE1PR0801MB167630F7B983A7F9DBB473DFF4810@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <4337dcf0-bd60-4db8-6c9f-cd718b89d2a4@arm.com>
In-Reply-To: <4337dcf0-bd60-4db8-6c9f-cd718b89d2a4@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: cf23ba1a-bbd7-4b56-9a4d-63540697cb1e.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 33f5d73e-d382-47a4-36c7-08d7433382f6
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1627:|HE1PR0801MB1627:|DBBPR08MB4775:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB4775BA01C909AF1322CE6F9DF4810@DBBPR08MB4775.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 0173C6D4D5
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(136003)(396003)(366004)(13464003)(189003)(199004)(71190400001)(6246003)(55236004)(6436002)(71200400001)(53546011)(102836004)(26005)(7416002)(186003)(6506007)(81166006)(81156014)(2501003)(52536014)(5660300002)(8936002)(8676002)(74316002)(66476007)(6636002)(66946007)(64756008)(66556008)(229853002)(476003)(11346002)(305945005)(76116006)(76176011)(54906003)(110136005)(478600001)(316002)(14444005)(256004)(14454004)(7736002)(66446008)(486006)(25786009)(66066001)(86362001)(99286004)(6116002)(2906002)(33656002)(3846002)(446003)(4326008)(55016002)(7696005)(2201001)(9686003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1627;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 3rtQeFkR11YtJNa7B8rr2pVOz1j1KNiPoMmWTcnoopAGKt5FPU5Skq3UtG322E5jABVXaHVqx1+dCoHUyxOA3CCnQu0r9RLrT2fx0OC3+ZCdpec4NF+DkGPVzLL3N36H7mbBC/mMCDCM9rMG2E0jtjKUKxTEqMoJh8jj/6SRicyVItbP1SCu5lr/6M9Vn375sKswLhVOBH2dG3O1gaQylddrctiVuUGRIzMMBwktNunEHlg7bMWoPsTi58F7Mbwa3vzvfVyWPkyXk0BZH/VdOm9uoddB+450xDCwLQzttQX2scDzsnwvtuaWWZOTsO1DuVexj2LIv8zSvFL+nPC7KFVeBjKN2cOSFyAItAq41/qP/qNWJ6bUKAra18wDeU3stqIVBYmmr5Lxq1Yc206rBOQhZ5j4gfcx9vDaWrF50B0=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1627
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT031.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(396003)(346002)(39860400002)(13464003)(189003)(199004)(33656002)(478600001)(336012)(5660300002)(229853002)(76130400001)(7736002)(305945005)(316002)(63350400001)(9686003)(446003)(26826003)(476003)(36906005)(2201001)(6116002)(3846002)(76176011)(7696005)(22756006)(47776003)(50466002)(81166006)(2906002)(186003)(6506007)(486006)(26005)(23676004)(11346002)(436003)(54906003)(102836004)(2501003)(110136005)(70586007)(126002)(70206006)(66066001)(53546011)(356004)(8936002)(52536014)(6246003)(6636002)(81156014)(14454004)(74316002)(99286004)(2486003)(14444005)(4326008)(55016002)(25786009)(86362001)(8676002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4775;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 872ef3cd-1b83-4a22-c404-08d743337660
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DBBPR08MB4775; 
NoDisclaimer: True
X-Forefront-PRVS: 0173C6D4D5
X-Microsoft-Antispam-Message-Info: KBrX4ahHkjzPqEI7DIIM2yOhcSmVLtF8SxcsSAR+oF1uLJuJ4jgchgMDDIQnMBuuS7JxOtKUt4gOHW8GjljBdgMLXtGWFjpGQw7HTj7RKbbnt0sLriQuMJEcR9uB+GFNnIgUHb1ZQxvjsWkZBCFgZqdXu3vjfCrajmQ6i14yqWrYk9x/SMlLK3M/qY9QDwemMaGAwvYJgk14mdpyh6bFfa2kNjLeTL5FLSKMSaf+eOmgd7u3ZHQ4r8Ku1PizuwLUt3Xi8TqKaHZMefUO/GSILO6J5ixfZdmA0IjwQLFb5GtnOpV4iMbZAFuLxjd9Q40VmVSS3Qx6YE1+dMAFaZbDDOkw+EsiMqoCSjsZ4mB4GEd2mgDWgoPJoVWoPASN6AO5krroPxpjNevMGyvqNNh6jTLA/+Q9DIwVlZmhCIMiYgI=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2019 10:14:41.5251 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 33f5d73e-d382-47a4-36c7-08d7433382f6
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4775
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_031449_874018_977F97A3 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.88 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Hi Suzuki,

> -----Original Message-----
> From: Suzuki K Poulose <suzuki.poulose@arm.com>
> Sent: Friday, September 27, 2019 6:12 PM
> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>;
> netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> maz@kernel.org; richardcochran@gmail.com; Mark Rutland
> <Mark.Rutland@arm.com>; Will Deacon <Will.Deacon@arm.com>
> Cc: linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; nd <nd@arm.com>
> Subject: Re: [RFC PATCH v4 2/5] ptp: Reorganize ptp_kvm modules to make it
> arch-independent.
> 
> 
> 
> On 27/09/2019 11:10, Jianyong Wu (Arm Technology China) wrote:
> > Hi Suzuki,
> >
> >> -----Original Message-----
> >> From: Suzuki K Poulose <suzuki.poulose@arm.com>
> >> Sent: Thursday, September 26, 2019 9:06 PM
> >> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>;
> >> netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> >> tglx@linutronix.de; pbonzini@redhat.com;
> >> sean.j.christopherson@intel.com; maz@kernel.org;
> >> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> Will
> >> Deacon <Will.Deacon@arm.com>
> >> Cc: linux-kernel@vger.kernel.org;
> >> linux-arm-kernel@lists.infradead.org;
> >> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> >> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> >> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> >> <Justin.He@arm.com>; nd <nd@arm.com>
> >> Subject: Re: [RFC PATCH v4 2/5] ptp: Reorganize ptp_kvm modules to
> >> make it arch-independent.
> >>
> >> Hi Jianyong,
> >>
> >> On 26/09/2019 12:42, Jianyong Wu wrote:
> >>> Currently, ptp_kvm modules implementation is only for x86 which
> >>> includs large part of arch-specific code.  This patch move all of
> >>> those code into new arch related file in the same directory.
> >>>
> >>> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> >>> ---
> >>>    drivers/ptp/Makefile                 |  1 +
> >>>    drivers/ptp/{ptp_kvm.c => kvm_ptp.c} | 77 ++++++------------------
> >>>    drivers/ptp/ptp_kvm_x86.c            | 87
> >> ++++++++++++++++++++++++++++
> >>>    include/asm-generic/ptp_kvm.h        | 12 ++++
> >>>    4 files changed, 118 insertions(+), 59 deletions(-)
> >>>    rename drivers/ptp/{ptp_kvm.c => kvm_ptp.c} (63%)
> >>
> >> minor nit: Could we not skip renaming the file ? Given you are
> >> following the
> >> ptp_kvm_* for the arch specific files and the header files, wouldn't
> >> it be good to keep ptp_kvm.c ?
> >>
> > If the module name ptp_kvm.ko is the same with its dependent object
> > file ptp_kvm.o, warning will be given by compiler, So I change the
> ptp_kvm.c to kvm_ptp.c to avoid that conflict.
> 
> Hmm, ok. How about ptp_kvm_common.c instead of kvm_ptp.c ?

Yeah, it's a better name, I will change it next version.

Thanks
Jianyong Wu
> 
> Suzuki
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
