Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E9A1A7A5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnTBGv7tqKXv+Ds03wyBGP15V2qU07Ww5za9vQnX3Pg=; b=uKbQsbz8lCluDA
	4GZ6f4or3kM5mNGl5l5MmUjKbydAyHRN0/V4Y7X4dxfnMB60K0f4n4IkMOuPBR34kvvqCBdsWb95B
	MRh93SRM7AWSXcGx/x4gOCv28hD3FClwQ1CeFlZdpNoNrl1ztCx8/nFQ72lC8c+YOZY6XqNt0jQRW
	oZ/MbgX9q359Zc6t+8/BS9o04eKCi4x6R+XI+CaLSK5i4u1lGdlhz97PogcCS9neyDYn4hoBmqUBp
	38jxhPgz+rhqVP27g22PWlappsCNqqSxy2aJ/9Ge4nt85SXwwfhEf7Gav933QtRxQ27lRbPMriu4G
	S1AWixQ6CCrLQ/sQNMnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKNE-0008OT-NC; Tue, 14 Apr 2020 12:09:04 +0000
Received: from mail-eopbgr80043.outbound.protection.outlook.com ([40.107.8.43]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKN6-0008NX-HR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:08:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p4dPZ//XRUkr8qdQ20VWYLXfBX2mSXw+3SIM8qfkBMc=;
 b=dDjXfuNO7jC7Dq/j0J70RZq33DvQTNvnNQFC6WLe7xA82XcA9Fzz2mOY8Y9tVg6CR5CdY3ygSU71ausangRR9Zzhhj8aI1q1Sdyp7ubY+jVjd7cYPTfwfgnnRr1Nk9aXyyMO3ciBrEnNxzUMlL4z2XVL4KOKXmxz4lF/lFxoBJo=
Received: from AM5PR0402CA0012.eurprd04.prod.outlook.com
 (2603:10a6:203:90::22) by DB6PR0801MB2007.eurprd08.prod.outlook.com
 (2603:10a6:4:78::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Tue, 14 Apr
 2020 12:08:50 +0000
Received: from AM5EUR03FT057.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:203:90:cafe::87) by AM5PR0402CA0012.outlook.office365.com
 (2603:10a6:203:90::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17 via Frontend
 Transport; Tue, 14 Apr 2020 12:08:50 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT057.mail.protection.outlook.com (10.152.17.44) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.18 via Frontend Transport; Tue, 14 Apr 2020 12:08:49 +0000
Received: ("Tessian outbound 5345ff401cf8:v50");
 Tue, 14 Apr 2020 12:08:49 +0000
X-CR-MTA-TID: 64aa7808
Received: from becabb1afe38.3
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 C8A84B81-8CD3-45AE-A509-406B11E83AE6.1; 
 Tue, 14 Apr 2020 12:08:44 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id becabb1afe38.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 14 Apr 2020 12:08:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hXkto6Y1ad5BzWmrPBILj3R0mxNP1+IVFVZJUlqklDquqckku7zPWdwrD90RWyXquat4bZfo6Dryhut3I9FOnsaor/3+mxDJZhWAbaUONga6MhuEgQKtJkWAmp0+7VnZkO2owzDw9BOViujwuyMUCetgAhgXbk3pWe6v96Kr+KMv3vVKPnCvj/zw0sV8cSok9ZVVbid+UWf+pyktrl+5XTNrA6+6dRUT/VCGolGx22+/DD2IsSgeYAzTrumYVR1vYlDl5V8RQ9B2fCCT9xsNvCDEBhK1zD9HovTcFKQaRbLMzPqlBJvGD3z3PDrMyFXy2sb/z8JKzWqXwRRw4EM1kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p4dPZ//XRUkr8qdQ20VWYLXfBX2mSXw+3SIM8qfkBMc=;
 b=A36WG5bigcx/aSeVqZ1pEImZ001REmqoAX+I6NJSYlQspxzCbH2lZGfsik4ImcWG5eLnzJbbvyQ/HQl61rZ6NUOnY/NuCsgWUYQo8yFnEX7CnnhJ9VMaRY/Fkwh3xflLRwiCDzu+GkwsWJski5lyQs5/EYs+buOUQpfsu44MH1TcOezA7Y244NMjfAEUQb3gu0w1E8wAgrbZt2G3B2BbQxGX/ZI+AbWEf/C6v08ql1t6DjAWjUHB+JmO+p40Rn6/1rn8gtJ1B1lri1ZJzhkWAhIphbIViAloY/bMqGfm4YFDWuksQOQNJlxmKl+WufpR7dFwQ4mS+hINUaEu3vNSLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p4dPZ//XRUkr8qdQ20VWYLXfBX2mSXw+3SIM8qfkBMc=;
 b=dDjXfuNO7jC7Dq/j0J70RZq33DvQTNvnNQFC6WLe7xA82XcA9Fzz2mOY8Y9tVg6CR5CdY3ygSU71ausangRR9Zzhhj8aI1q1Sdyp7ubY+jVjd7cYPTfwfgnnRr1Nk9aXyyMO3ciBrEnNxzUMlL4z2XVL4KOKXmxz4lF/lFxoBJo=
Received: from DBBPR08MB4790.eurprd08.prod.outlook.com (2603:10a6:10:f4::13)
 by DBBPR08MB4759.eurprd08.prod.outlook.com (2603:10a6:10:f3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Tue, 14 Apr
 2020 12:08:41 +0000
Received: from DBBPR08MB4790.eurprd08.prod.outlook.com
 ([fe80::d0f9:e0b9:cd3c:cc64]) by DBBPR08MB4790.eurprd08.prod.outlook.com
 ([fe80::d0f9:e0b9:cd3c:cc64%5]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 12:08:41 +0000
From: Souvik Chakravarty <Souvik.Chakravarty@arm.com>
To: Sudeep Holla <Sudeep.Holla@arm.com>, "guohanjun@huawei.com"
 <guohanjun@huawei.com>
Subject: RE: ACPI support for System Control and Management Interface (SCMI)
Thread-Topic: ACPI support for System Control and Management Interface (SCMI)
Thread-Index: AQHWEksPPwC6n0gBnkGx309F9kIg4ah4cshw
Date: Tue, 14 Apr 2020 12:08:41 +0000
Message-ID: <DBBPR08MB4790D0779B7933EEF5C1689F82DA0@DBBPR08MB4790.eurprd08.prod.outlook.com>
References: <52a50069-7140-b9b4-31b4-8c99e8c0d991@huawei.com>
 <20200414105424.GB17835@bogus>
In-Reply-To: <20200414105424.GB17835@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 1a746a8b-7b04-4745-aa11-343a8db9df43.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Souvik.Chakravarty@arm.com; 
x-originating-ip: [2a02:c7f:1e0e:1500:6547:6b08:f6ff:c1d8]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b1cf6d3f-e305-4541-cf50-08d7e06c975b
x-ms-traffictypediagnostic: DBBPR08MB4759:|DBBPR08MB4759:|DB6PR0801MB2007:
x-ld-processed: f34e5979-57d9-4aaa-ad4d-b122a662184d,ExtAddr
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0801MB200750BA9F0E2D974C7484DE82DA0@DB6PR0801MB2007.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:10000;
x-forefront-prvs: 0373D94D15
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DBBPR08MB4790.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(39860400002)(366004)(376002)(396003)(136003)(346002)(316002)(110136005)(6506007)(5660300002)(54906003)(71200400001)(52536014)(55016002)(33656002)(9686003)(7696005)(66556008)(8676002)(76116006)(86362001)(2906002)(66476007)(8936002)(4326008)(478600001)(66446008)(64756008)(81156014)(186003)(66946007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: j8YUd3DoNwOFUM8AgP+X9HHJwwPw11GIvEwwrplkXuMkVUmBDXMQEcoG3KwbR1U0SmN69RQWa7QiJ3j9xZvLoKpNK1srjkLOXRXlQUPCBC+YhLEuC1P0WzAbDfPuRYXL3mS5dIsxvb5qYY/bFe3/qft92czGTeN3u26UNMD5UEBbBga5f29GHnMF6EZUtsrVYhChMOt+xxY4MKwD2HqHdm5R3n42Fx+kQbdr3MtgVWMzkMf8fhBQJUqu3txthzTvSgZytyk9OA1l47t7AxfBMQAUCkXQSYHfJ2pkuemvK4CFflbvGAYbyVXAgp92WpPbxLpigpQNyQxPGqMamCwLqWpwlptpREuEbrLm/PLeheSt/H/rON+GHmwCjcejYYbiuqmS5uc0s/7XALCzwVmROXQSOIy9cjMo4Gl/Qsc/0ZZ2ykmZfYmEYhHhM7Rnh02y
x-ms-exchange-antispam-messagedata: NagnE5k/Wkfzc1ycyzGNHjCifuCm+Dchw83fli5EynEiLeaxzdLiW6PPSZFfRn/Ii9Ui85HKqNk6b8jtgIjAMMaDcsHWtmBOS2K0N0HBJnG29uycuCVM830VWLazjIaycox33qQ4HxmHRxP1fwB+CPuEHFK+FCsTp9oCrLFUhKr6MlwbpmSha90fmxznyfcQWvSYB/4qMrHxsusdkWty3A==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4759
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Souvik.Chakravarty@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT057.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(346002)(39860400002)(46966005)(356005)(316002)(33656002)(36906005)(82740400003)(55016002)(81166007)(110136005)(6506007)(5660300002)(9686003)(47076004)(54906003)(52536014)(336012)(8676002)(70206006)(186003)(26826003)(26005)(7696005)(4326008)(70586007)(2906002)(478600001)(8936002)(81156014)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: b8342c40-fff4-411f-da79-08d7e06c926b
X-Forefront-PRVS: 0373D94D15
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FBl4GJTNNuCDt9o59pMko0xGtUc01EV2SUgG19zdxj6Wj1fup8/5fOBDVsJMeqNkm5WHhZclvaw527wSfobifa1JMfOb88ADF6cyE0+ikBXtfZMSB8X067hBdbUZJHmcRovN+lS3QN3DTFqBerUU4d4xUP1S3j2p7qEwQXIzt7/e1GGIHim8+ZR0hyTxrpieE4onUyZEmHawgG9G9WTGAee2rP+0lh+ISvbp9QGcqBKYmkG5xZ2/tL1zNUhH0cF6VLj+WoBtSlaRACIQYIt4bzVxhmZeO6Hk8KLEzagYhII5UbbkTIvfHVSVu/8V0I/UVV3di9Ct/5o4LfU+WHGpwex5g5XWX1Kzd+O9lF1BCF5/m5w8S2Seb4lL1neheuRhU23jh7ecUL09YgleLrWuwxylNnRowVvC8v2pAPj3yJe4BNC3siaaSMhOewPTwBi6IOgvkmA9+boRdXP3PKE8IzvLP6NqYcgbPlql6mG73e34qf55dnFEjaEtZA0moQk8vkA1OA2Cv2OAjmMf3qvhDg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2020 12:08:49.5990 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b1cf6d3f-e305-4541-cf50-08d7e06c975b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB2007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_050856_668876_880C1823 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.43 listed in wl.mailspike.net]
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
Cc: Thanu Rangarajan <Thanu.Rangarajan@arm.com>,
 Sudeep Holla <Sudeep.Holla@arm.com>, John Garry <john.garry@huawei.com>,
 Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Matteo Carlini <Matteo.Carlini@arm.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Charles Garcia-Tobin <Charles.Garcia-Tobin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Sudeep Holla <sudeep.holla@arm.com>
> Subject: Re: ACPI support for System Control and Management Interface
> (SCMI)
>
> On Fri, Apr 10, 2020 at 10:26:41AM +0800, Hanjun Guo wrote:
> > Hi Sudeep,
> >
> > We are working on the enablement of SCMI for Kunepeng920, which is a
> > server chip using ACPI, but I didn't see the ACPI support in the
> > mainline kernel for SCMI.
> >
> > Kunpeng920 and the upcomming Kunpeng930 have thermal sensors and
> other
> > system management features which needs the SCMI for abstraction layer,
> > do we have plan to support ACPI for SCMI?
> >
>
> Yes and No.
>
> Yes, because the same SCMI compliant firmware needs to work with ACPI as
> SCMI is designed so.
>
> No, because we don't plan to add another SCMI layer below ACPI in the
> kernel. ACPI specification was extended to support special PCC types to
> support the same. IIUC things like sensors are supported using power meter
> objects in ACPI and you must be able to use PCC opregion for it or any
> custom mechanism to achieve that. However one need to add PCC opregion
> handler in Linux. The main idea is you must use existing ACPI methods and
> we don't plan to add anything special for SCMI.

Additionally, if you already have an SCMI compliant firmware that uses Shared Memory based transport, it is compatible with PCC Type 3 Channels in ACPI.

>
> SCMI Perf protocol is compatible with CPPC. We can discuss details once you
> explore PCC opregion or any alternative you come up with. I am no ACPI
> firmware expert and I reckon you may have other interesting ideas.
>
> --
> Regards,
> Sudeep
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
