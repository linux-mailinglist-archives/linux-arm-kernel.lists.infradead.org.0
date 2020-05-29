Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3311E71E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 03:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GX257RoMnd9ujVrdx29y89ngzHHyQw9H4wPXHjx203w=; b=Sn0bLdg2iTSny1
	QzlLt27CtvVMt3Byl3vLe975MPPNXiG0S54vfHserXI22tdmwGG+a1NAMnxL7X07lYlUPOybbGoLq
	8nDcUYKOm4XuskgCTxBgXAHkZ7p4W8uxWKVGtchcMvDJ186ewlOfN4Acul5Oio257saxE9nfeY7oO
	V1BPxLci3xF+l1b7mHlf1HVo0/nyxvJOhcNocFNQnjzIDDEdBykBLEXMpbXVSnO2wuoYGhAy2DiWc
	WHbSlFJlQ4+IqF2ggTn0YjE39X0oKnMO2xCITiS45Q7TypKIvCpECmamHjZPxOAGMV8x7IikkMWJ3
	KhMrUHPEiivYvkeASlww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeTT7-00070u-1M; Fri, 29 May 2020 01:05:53 +0000
Received: from mail-eopbgr30087.outbound.protection.outlook.com ([40.107.3.87]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeTSx-00070J-1G
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 01:05:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pqfAn/hkYxLJ73chCIBA+jSwpnTJdU9kUcXapgmiNjQ=;
 b=wSY/XdxkANV8BCU06ky30C0tkv66kjT6tl5xrDcseVW9h09gNs/PbOGoLPRfzIpJSKM77x5rj1MUcCVwDC+l6xGf2RAdveCu8LL3NWysA59paAjJI0lCn3iTSHz1j+iuAPz5yrtY6nOi/lMo75Ndz9vzwCOyp80x+Uo+spm0Xow=
Received: from AM4PR07CA0007.eurprd07.prod.outlook.com (2603:10a6:205:1::20)
 by AM7PR08MB5462.eurprd08.prod.outlook.com (2603:10a6:20b:10b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Fri, 29 May
 2020 01:05:38 +0000
Received: from AM5EUR03FT006.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:205:1:cafe::c0) by AM4PR07CA0007.outlook.office365.com
 (2603:10a6:205:1::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.7 via Frontend
 Transport; Fri, 29 May 2020 01:05:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT006.mail.protection.outlook.com (10.152.16.122) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Fri, 29 May 2020 01:05:38 +0000
Received: ("Tessian outbound facc38080784:v57");
 Fri, 29 May 2020 01:05:38 +0000
X-CR-MTA-TID: 64aa7808
Received: from 590180419ac9.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 B785AFE7-ECD6-45F8-8CFD-3112B0A46193.1; 
 Fri, 29 May 2020 01:05:33 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 590180419ac9.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 29 May 2020 01:05:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hOU51j0uNdUr3rQqTUennZjvydsWCvjnVoiz+zmpMvY9B/KlxA/isWsF/k6uZmTI3QK98ZkC8VyER5IRiHPMXkTrQxfg/iZQWvFGfvXYJxUH4WtIg8WIySZnCksI5qhA29KjMhI+lGPoga2JNajR7GSgTra4j62U2G+auMtEMnT0Bhb28RMXCaSyvKiVz1vzHBNXzfwR7nk4lbsVkY+2HNnZKljm9nd5U3YLoeTc1tJ9D6ArSSCRd4/pYmXzDG/7ERPTvuZneuavRAOGjxZjALaKKK0JBeq4Ooxv9p6nQyjO4C6jrZlAAy4Z2rlBVuP6HAkqv0b62eMwBLCnnAXU5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pqfAn/hkYxLJ73chCIBA+jSwpnTJdU9kUcXapgmiNjQ=;
 b=msPe4XJL+wTws6dJhh9wMHwtFQA/BoSsJfjADCzrQoRSGe8PQnMmQ8ixF316WlBC891tpJhHAjaNhrYXxpUWyIlNGcLG3xKtOp6N4OS3ThIBEJpZ0zJGfnU6Tx2iF/JK/ekpSECzl/pKCDWx3td2IDw0FYY1CH6fWtqesSM/ur+yHhU9M75UhtYU43qab/oitn0EBaw+bTvO5PrIbIfL4aq4NkETTMPTGeu6BhCWpTe4pJ14rLoTlQs7A17WMzX1aQZrfXK9DFNt3cNftnGMmDj6VfrBpqISc39M6dda7vHdyPbAf8bhNITgXQ7fkA1KMLd8cNKdLSzQuPYeTslDqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pqfAn/hkYxLJ73chCIBA+jSwpnTJdU9kUcXapgmiNjQ=;
 b=wSY/XdxkANV8BCU06ky30C0tkv66kjT6tl5xrDcseVW9h09gNs/PbOGoLPRfzIpJSKM77x5rj1MUcCVwDC+l6xGf2RAdveCu8LL3NWysA59paAjJI0lCn3iTSHz1j+iuAPz5yrtY6nOi/lMo75Ndz9vzwCOyp80x+Uo+spm0Xow=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2491.eurprd08.prod.outlook.com (2603:10a6:3:de::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Fri, 29 May
 2020 01:05:26 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be%6]) with mapi id 15.20.3021.030; Fri, 29 May 2020
 01:05:25 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>, "pbonzini@redhat.com"
 <pbonzini@redhat.com>, "sean.j.christopherson@intel.com"
 <sean.j.christopherson@intel.com>, "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, Mark Rutland
 <Mark.Rutland@arm.com>, "will@kernel.org" <will@kernel.org>, Suzuki Poulose
 <Suzuki.Poulose@arm.com>, Steven Price <Steven.Price@arm.com>
Subject: RE: [RFC PATCH v12 05/11] time: Add mechanism to recognize
 clocksource in time_get_snapshot
Thread-Topic: [RFC PATCH v12 05/11] time: Add mechanism to recognize
 clocksource in time_get_snapshot
Thread-Index: AQHWMBRarnlKRx72O0Ohyt/gOs353ai9vAGAgACN4SA=
Date: Fri, 29 May 2020 01:05:25 +0000
Message-ID: <HE1PR0802MB2555D67ACAF18A52DE8D9278F48F0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-6-jianyong.wu@arm.com>
 <87tv00nhje.fsf@nanos.tec.linutronix.de>
In-Reply-To: <87tv00nhje.fsf@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 92c3abe8-9efe-4ce7-b3d6-85b06a5a27ff.1
x-checkrecipientchecked: true
Authentication-Results-Original: linutronix.de; dkim=none (message not signed)
 header.d=none; linutronix.de;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7868af78-120d-4de5-1214-08d8036c66a7
x-ms-traffictypediagnostic: HE1PR0802MB2491:|AM7PR08MB5462:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM7PR08MB546210E67374FD6ECAE93342F48F0@AM7PR08MB5462.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:2958;OLM:2958;
x-forefront-prvs: 04180B6720
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 4TBFoddbFrAB1xW5jZi42UejDCCNh1LFQqupSblRlYWG3ANav5BlGwQy8WxKs73Aok251e8LTHGlq03fZjTLrW/Hp++6lZxNuvrP4trgg65PBxTBjknNOQO6qa6ujnXDHKm7DjVBWCvo/ZMERnsv1GswLMhdcx+syZErn8humW6wzlrG+I1WSvBv5T/WmYCX2n0BpGtt7V2DLZvW8ZyNfNQ3YFsapVilcSSge1zQVtIZtFww4p1tw4QajBbIXJHoTfBUPy4k6Kx4w2DlrdspTa4BZ2Yj5Y7GJlx44IiYRqY9CYOkwv+BO+IpjWW/q2dcYH4ohGQAEORlHihcVqSBvxA4GB8du2GTu3eWfSC1sB8cCyye8UrEaonaEXILdlWZ
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(39860400002)(366004)(136003)(376002)(346002)(7696005)(54906003)(316002)(110136005)(7416002)(2906002)(478600001)(86362001)(4326008)(76116006)(52536014)(66476007)(66556008)(64756008)(66446008)(66946007)(55016002)(53546011)(6506007)(71200400001)(186003)(26005)(33656002)(8936002)(9686003)(8676002)(6636002)(5660300002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 3HipzhGdsSvBFlegJeI2GC8ZhhOdssEvYAMJikJhEmWGUnhrMKGn9sOPPmPbXxjvcwhO0mA/amkwpVIZU4pJji9fUVmSMJDpBrP7NDck6YuncSjXYj2MBViF9BBBbVpy6ukCWRFvOUwzLhHkaRTEoJj5PwRbTz2RgiJfjkKVHjTGNQ7zbWbLJ+h62Qhp0cLPppTuED0HsSgx5SYtDds6E6PhgDrXgbI62AeyUJhd7fHM+7GSg//V6czKOzfva9AhrbRLvfr/sjD/Zob6wqqOP/CvJxseh2YUmpXfxjPNsLRmjH2ZQErss5zlLh8DyfMgpSr0MKXLhBhsLnepPQ9OfCRaCi214qlumZd/qjkmoYuOMKg41bELcLLOSQYrJyXVSzCIa1FANR5on9mBwkxLyBWJJpVmdyN7wBYE/ADiYzm1KPPhC1MVVZBYGyWEkmcQVjeABh4o1lcvhl/3tqVmDFGbTMucBHl59fA9pHZqklg=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2491
Original-Authentication-Results: linutronix.de; dkim=none (message not signed)
 header.d=none; linutronix.de;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT006.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(39860400002)(376002)(136003)(396003)(346002)(46966005)(5660300002)(55016002)(70586007)(356005)(8936002)(316002)(6636002)(82310400002)(52536014)(33656002)(81166007)(110136005)(54906003)(2906002)(83380400001)(9686003)(47076004)(4326008)(336012)(82740400003)(186003)(8676002)(70206006)(26005)(86362001)(478600001)(7696005)(53546011)(36906005)(6506007)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: cb2116b4-ebc1-45c8-649a-08d8036c5f0b
X-Forefront-PRVS: 04180B6720
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zBfiC+U7pSoIymPm9ecQv9zcn3T4IDPOqd7lQSJd5VtZMXduCC+/6vnBad1Po38nAOJflEPSUeRR7KKiRDlT9GAqZ9JcthL8m8/lXnAe9caoRzqhQRNzAj7slls2LBXI0tSmqaLd4l02B+LiVDRC7PmUS8BIg5pQBuuEIWTaDSjbt1Kv437rvooAQzw4i6mIgDLtjtplUbTbc0+qvkf0r0Lg6GSBVNYVemZvzbO//Sv/IKcERbp7WvAUqkmbXqWuSVDv58MNM3uhalzo4+/YoVU/7y0prl1T1aEoW1xloeDdAljdtCdcLY72F7/AbYlz2QgXM0Mq+oTyh3a/JRv8HcL1H+ScNZCU09/1OYR/s+DOl+tBQCBp2Zhk93KOcOEEmyJ02v6Me8vpBpm+tqxkveK/LwvPX4GVS5z9TX3Hr7w=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2020 01:05:38.5861 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7868af78-120d-4de5-1214-08d8036c66a7
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_180543_134553_F54B5BA9 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.87 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.87 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Justin He <Justin.He@arm.com>, Wei Chen <Wei.Chen@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kaly Xin <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

> -----Original Message-----
> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Friday, May 29, 2020 12:36 AM
> To: Jianyong Wu <Jianyong.Wu@arm.com>; netdev@vger.kernel.org;
> yangbo.lu@nxp.com; john.stultz@linaro.org; pbonzini@redhat.com;
> sean.j.christopherson@intel.com; maz@kernel.org;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; Steven Price
> <Steven.Price@arm.com>
> Cc: linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin <Kaly.Xin@arm.com>; Justin He
> <Justin.He@arm.com>; Wei Chen <Wei.Chen@arm.com>; Jianyong Wu
> <Jianyong.Wu@arm.com>; nd <nd@arm.com>
> Subject: Re: [RFC PATCH v12 05/11] time: Add mechanism to recognize
> clocksource in time_get_snapshot
> 
> Jianyong Wu <jianyong.wu@arm.com> writes:
> > From: Thomas Gleixner <tglx@linutronix.de> diff --git
> > a/kernel/time/clocksource.c b/kernel/time/clocksource.c index
> > 7cb09c4cf21c..a8f65b3e4ec8 100644
> > --- a/kernel/time/clocksource.c
> > +++ b/kernel/time/clocksource.c
> > @@ -928,6 +928,9 @@ int __clocksource_register_scale(struct
> > clocksource *cs, u32 scale, u32 freq)
> >
> >  	clocksource_arch_init(cs);
> >
> > +if (WARN_ON_ONCE((unsigned int)cs->id >= CSID_MAX))
> > +		cs->id = CSID_GENERIC;
> > +
> 
> This is white space damaged and certainly not from me.

Sorry, I will fix it.

Thanks
Jianyong 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
