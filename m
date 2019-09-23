Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D31DBACD0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 05:20:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mp14APxg+DFXfJEML4+/BVhWmgYr+XIvX9RAsn0rr6Y=; b=GbNEogjkG9UKwN
	eAhxDSBbDGI8y2DUCmxmz3EBR1tWKVZM/EKI1z3p4sqsoiBNeh1Tuo76w4wh6GqQ+Y0hVOM7pNLvg
	aJIlNebvqYGtXJj+fUrVbccwR2y4UPtxHRTFnViTg0yBJ2ZWcKptMSl38P9vUy1Tg0RSHggzrgiyL
	hIGh46Kn3JRt6eixKrv1N3gghpi9o9T6x5tQn/PDCmMT6BSJyuJPU91hi2hR1oMvcIbn3C/tGN8g2
	WLaQHfjwfb7Y4Ij21y/6zDp2zgGtZYBg+3rKkDvVhekHubDW+Vy3WYrVNVGcMCKzK6iC3JmBG3Lo4
	+sJWPU+WCuXJ7sR5aR0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCEtC-0006le-5V; Mon, 23 Sep 2019 03:19:50 +0000
Received: from mail-eopbgr40073.outbound.protection.outlook.com ([40.107.4.73]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCEt0-0006kZ-2U
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 03:19:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=taNXCqQBFyE75iJZhTnpCdm9XED6QdeXfjxzBfwcx4g=;
 b=88FzB8OSY+kX4B8aKYWYl9jI7VLG3T2T6L5bahpMGzAyNaDdm4VjJ2E3ZVKAL/Q4PYyDtTyZ+xrCGK7ILbE/MtXPIE9uHxyvmfKlgZWy3DZHAlVp0ZJrPNlN0v57ZUV+yZkzHvl7A4aTkjeee0yqNW2HYuf1uQW17twSvVufCGQ=
Received: from VI1PR08CA0104.eurprd08.prod.outlook.com (2603:10a6:800:d3::30)
 by AM6PR08MB4310.eurprd08.prod.outlook.com (2603:10a6:20b:b8::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.18; Mon, 23 Sep
 2019 03:19:26 +0000
Received: from VE1EUR03FT031.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::205) by VI1PR08CA0104.outlook.office365.com
 (2603:10a6:800:d3::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2284.22 via Frontend
 Transport; Mon, 23 Sep 2019 03:19:25 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT031.mail.protection.outlook.com (10.152.18.69) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2284.20 via Frontend Transport; Mon, 23 Sep 2019 03:19:24 +0000
Received: ("Tessian outbound d5a1f2820a4f:v31");
 Mon, 23 Sep 2019 03:19:13 +0000
X-CR-MTA-TID: 64aa7808
Received: from 48af42da8a99.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.13.57]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 A41A4DF8-44B5-45BE-956E-DB6BFA8EA492.1; 
 Mon, 23 Sep 2019 03:19:08 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2057.outbound.protection.outlook.com [104.47.13.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 48af42da8a99.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 23 Sep 2019 03:19:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O3fiu8P14kfpMSMEd14a1+IzMyjoxsPKYwLMuPnEmIjFBPHm8Na61GMvyoyCfwdANh4OXviVikGXrVWdSSpZ8388Nd32+jr3gtLehtHosJZhzniV7hHYPrRABVE8FFwnVTgjL+EaAMEmkAXtnYxaxC6sYOk8cZRect/Ru+tEPvBuHS/uBDPZVqEAgCkqrSoRhmPJZ2BTKihCCFT9c3+8vmjjIcuq3av1Tev2/+gzcPRoNF/VhiqehgVOmofBqALU/9hRkDJmzVBbq2J0nwOQp/8KXonL8uU1poyD6rPiqgi7LlubziJ8g/J7a7faJPeqje+ww80aaMzQfkWVWu3gdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=taNXCqQBFyE75iJZhTnpCdm9XED6QdeXfjxzBfwcx4g=;
 b=QoIIiFutQ3dqDdm0z4IL8Ac0hM2WNQcgwevFOxeDCIOTOi4HLDjJfrkw3/GdIPLl2Pet7L3HmpxCcxVvSYifBNmIeE5Lr3f8Q9xqzRsGvKjT3XfHR6wI/DN39+co0sewdkVXJnYQfb8SIIlCaI9O90AHvlrxWKhAh2WPtSbuuX3zexr3Dim68shjhtmkTZ0jqTnJ44Cw9eAbUYZ4k7T6WKBk6V9Zb34EfY0YRYUVglYfFXr15X8/brSineodsJ9FcdVdI0b6p7MW2ISyhCL7S+oAMIzGK/cAlbnL+iDrPp9YkGX6W3UfSniQymlcbX4gNC3qtvsu//5KiPZ0PbNC4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=taNXCqQBFyE75iJZhTnpCdm9XED6QdeXfjxzBfwcx4g=;
 b=88FzB8OSY+kX4B8aKYWYl9jI7VLG3T2T6L5bahpMGzAyNaDdm4VjJ2E3ZVKAL/Q4PYyDtTyZ+xrCGK7ILbE/MtXPIE9uHxyvmfKlgZWy3DZHAlVp0ZJrPNlN0v57ZUV+yZkzHvl7A4aTkjeee0yqNW2HYuf1uQW17twSvVufCGQ=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1771.eurprd08.prod.outlook.com (10.168.150.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Mon, 23 Sep 2019 03:19:06 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::4d35:2b8f:1786:84cd]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::4d35:2b8f:1786:84cd%3]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 03:19:06 +0000
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
Thread-Index: AQHVbfg5HjMQ+p5UhEyfzqBy9sDEZacxGVuAgAAQMICAABDUgIABdZhAgAAo7ACAAAjcAIAACYiAgAWnltA=
Date: Mon, 23 Sep 2019 03:19:06 +0000
Message-ID: <HE1PR0801MB1676A0D2B90A52997DD15675F4850@HE1PR0801MB1676.eurprd08.prod.outlook.com>
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
x-ts-tracking-id: 57bd5335-da55-4975-aa8c-df24a27510eb.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 3d66ad12-901b-4a92-3f7c-08d73fd4d587
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:HE1PR0801MB1771; 
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1771:|HE1PR0801MB1771:|AM6PR08MB4310:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB43104AEFC6399488F39697FDF4850@AM6PR08MB4310.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 0169092318
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(366004)(376002)(396003)(199004)(189003)(13464003)(305945005)(476003)(11346002)(53546011)(6506007)(66556008)(66446008)(64756008)(66476007)(66946007)(6436002)(99286004)(7696005)(186003)(7416002)(26005)(6636002)(229853002)(2501003)(55016002)(55236004)(76116006)(102836004)(9686003)(71190400001)(71200400001)(54906003)(4326008)(110136005)(7736002)(66066001)(25786009)(2906002)(446003)(5660300002)(256004)(14444005)(2201001)(86362001)(33656002)(486006)(3846002)(6246003)(8936002)(316002)(81156014)(6116002)(81166006)(14454004)(52536014)(8676002)(74316002)(76176011)(478600001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1771;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: +LXHKWscQ0TP1vxu0T0WnWRg15B1Nc21iA1ut1Ln7m53L4HaN/mGbhcO5VoxBODU2zfTzBMF5CaHoJi6CmHS4k4pxIfX+Q5vBI9Lu34FdWTQ+YKUHPEGChGemhUmapbv6oXBRUKzmSJTZVqb088ZmtEpWy2R6XwVsDRMLIlzEtKMzKgdFuH4VIutB7mUJoR6jYCvgXKY9eEW/pP/cS/oV1jbke9pHgOZPxRp5ard635nJWUvtN2egj/uci4C4KLZldzEQnY83ww5VgzBJs8COH8fmIRUM9bjG4aAKJsXDPveI4g69Zq7Q04Upjfl5Pbd2QZ7iTkCUtUpWnKxOw2bzgddRZ6Ed5YrBZmAqo5CzF46IxvCNcmbe6WSCH0XZ42/DOQPkARZnACsEHulUhk/3bhIzAlb3w5u5tR5PKZ2Y9w=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1771
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT031.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39850400004)(396003)(136003)(199004)(13464003)(189003)(126002)(6246003)(5660300002)(9686003)(7736002)(2501003)(336012)(356004)(305945005)(55016002)(6506007)(6116002)(2201001)(2906002)(102836004)(3846002)(14444005)(86362001)(6636002)(53546011)(74316002)(63350400001)(22756006)(70206006)(26826003)(11346002)(446003)(50466002)(229853002)(186003)(81156014)(81166006)(8676002)(4326008)(76130400001)(436003)(33656002)(52536014)(316002)(478600001)(70586007)(486006)(23676004)(2486003)(8936002)(36906005)(110136005)(14454004)(25786009)(47776003)(7696005)(99286004)(66066001)(26005)(76176011)(476003)(54906003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB4310;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d4b9ffe9-218d-4103-b01a-08d73fd4cacd
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR08MB4310; 
NoDisclaimer: True
X-Forefront-PRVS: 0169092318
X-Microsoft-Antispam-Message-Info: /LWkWUKhqQBxDMS1Nx7YhmyDeq4z9z7zTYNul/4ZJIbHI9Ryfbpx/WvfwQcBLeSl0eeZsuWAzgZ+tcKoo7JVJcNctMWJxTG7S89W/BzIwJJ1KBVezoWH+6AtbsOpJcB8zoM+xvVwPX7ORSsfk8/yP3m4nk2ahZDm0Js//s8v62ef7qBelTlYPm1S2Il6YczA0K8knWwc/GEiBEuPPa8f3vHEtk8hcQC3LTI8YodbtcLyJhKEYgosgNjonMKdfRFcHWVi2gYHHhy2IPV8J5uUhA7SrWDGVr9bnSf34CZ5O0nmVej7VoXSxp9seLUlQH/dfojMS8dVrTTfvnoAPNpYERf0NSp2qbpSicoSIv5edkzZz6bRPauFA70A/Cuwkp3F0v8HRM9dQBNHsuYiAsaI1Ufsdddsls6a+L6pkehB9ww=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2019 03:19:24.3180 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d66ad12-901b-4a92-3f7c-08d73fd4d587
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4310
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_201938_255344_F4AE0202 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.73 listed in list.dnswl.org]
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc, Paolo,

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

After day's reflection on this, I'm a little clear about this issue, let me clarify it.
I think there is three principles for this issue:
(1): guest and host can use different clocksouces as their current clocksouce at the same time
and we can't  or it's not easy to probe that if they use the same one.
(2): the cycle value and the clocksouce which passed to get_device_system_crosststamp must be match.
(3): ptp_kvm target to increase the time sync precision so we should choose a high rate clocksource as ptp_kvm clocksource.
Base on (1) and (2) we can deduce that the ptp_kvm clocksource should be better a fixed one. So we can test if the cycle and
clocksource is match. 
Base on (3) the arch_sys_timer should be chosen, as it's the best clocksource by far for arm.

Thanks
Jianyong Wu

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
