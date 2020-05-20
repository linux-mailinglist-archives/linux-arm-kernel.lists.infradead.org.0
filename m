Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A36D81DAFB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 12:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VqnnUgCsvAJsgBc4q3c8UTCgOAu2KHl4Dz8/lbJvHUA=; b=asHSiME1X36dN7
	FAvYQ7f90gFyfZvulMVk5fA1X2vvXaVRnuFlDeIagb0H93XuYWFp1qwlw/L5FKAyRcE+JM84A1WfY
	Wwg77il4whj+/QLcJ/4dF7UYeUtCzn9VnzduRLMKgX8SFuaHhJPM33R8Dhj4KcivVpIgRbCDk5BQi
	QC3mMeH35Hx3UMSe3qkM1EZk6FzbgL+54vtmBoCcMUQtJporH1+jBOhxVJZYWYPYTo67Idk+miC03
	LAvG+oFdeDsrkje/q7Tw9zeboFdwc5OUP1OfqO0WjjlEt7WoscJOtYCvxZnyviAWW8ZZSejmi8if9
	6vPCnjV29PdUXm0Bv3og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLda-0002Qp-L3; Wed, 20 May 2020 10:07:46 +0000
Received: from mail-eopbgr60051.outbound.protection.outlook.com ([40.107.6.51]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLdN-0002Po-4w
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 10:07:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QdAeB+RAV7jqQV3puDYgGshAs4qXz6s42mpASm9I70k=;
 b=KzXj9jjoYpzyUOE3KygwRGV/FXUOGwdysz6VUd8bBmAC5RyUbk4IUzvvZgOs3uLOYviviFIBC40dz8QXiJt508hS5wL5OJ7FxLC0EgzcV5QzFQfplCtW3+mo2qHYnJm7WyXcNNJYXdhKmB49EeFHHeO0hi3e/tc6o9izZqFAmds=
Received: from DB8PR06CA0013.eurprd06.prod.outlook.com (2603:10a6:10:100::26)
 by AM0PR08MB3891.eurprd08.prod.outlook.com (2603:10a6:208:109::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Wed, 20 May
 2020 10:07:28 +0000
Received: from DB5EUR03FT034.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:100:cafe::d3) by DB8PR06CA0013.outlook.office365.com
 (2603:10a6:10:100::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Wed, 20 May 2020 10:07:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT034.mail.protection.outlook.com (10.152.20.87) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Wed, 20 May 2020 10:07:28 +0000
Received: ("Tessian outbound 444e8e881ac1:v57");
 Wed, 20 May 2020 10:07:28 +0000
X-CR-MTA-TID: 64aa7808
Received: from 5febd3cb9f55.4
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 B2ED1853-0182-41BE-B82D-C9A978437169.1; 
 Wed, 20 May 2020 10:07:23 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5febd3cb9f55.4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 20 May 2020 10:07:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e1AxzWJSNir+pchGE7xwxxi7727oNcRAL0zSGcNWTkjShGnz26pp/IYVX/jVnkhSyNRVPZNsT9Wdq6d918FBtY89XwujPu8mJiD1u4OXCuk7Oo3OiuBR43lCEfNTGcptchMgU1Q5iItOybGQAQSqg9lCmBfR0Sfu/NFhd/hvC4hTPfM/nrZ7qrJaSR3filCzT9lmyd6yuaO5/OvekZ+6x5DSLcZcPZEo+SXmCzciW+E6+q4NC30iGp5g8FAZx/XsKx3Ujw8yvnDt9cgLUrRLMouXFqSvwUEbMn1WfacIGWYAoyhwB3SD7bl2RQOQOvxcT51OdVVEt5v8pI9M0T4erQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QdAeB+RAV7jqQV3puDYgGshAs4qXz6s42mpASm9I70k=;
 b=Ds+jZDF2pxcLt8o4pgaHPU0aQy/u6ojRaeg/y81G8AB0kvoMde9/SnoYXY8L3pyIYvLtMryvyQxMhf0GzTphm2pYMyM3BNlEPh58imid33t0fIP8Cis1n5hXaWQQGNjwjg36PWrB2GwvOozRONcs6FSPqCRIXB1uwV1M6Dyt/CUd+lie8k/K+MAW6nqfqPtPUDLaeh/2wRrRfEZZY/kAIxxAQ84xae1UzTww0CKz5dHniJkyC0UD3GEn14KdHMNPw9+IxIJZjTA6CImWC/i/6QOeQfosaV+l86cYI8woUyPOXQUy89JAVfTJwx4drP/guuKVl+8rBDNzCy5IJwofWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QdAeB+RAV7jqQV3puDYgGshAs4qXz6s42mpASm9I70k=;
 b=KzXj9jjoYpzyUOE3KygwRGV/FXUOGwdysz6VUd8bBmAC5RyUbk4IUzvvZgOs3uLOYviviFIBC40dz8QXiJt508hS5wL5OJ7FxLC0EgzcV5QzFQfplCtW3+mo2qHYnJm7WyXcNNJYXdhKmB49EeFHHeO0hi3e/tc6o9izZqFAmds=
Received: from VI1PR08MB2862.eurprd08.prod.outlook.com (2603:10a6:802:22::22)
 by VI1PR08MB2672.eurprd08.prod.outlook.com (2603:10a6:802:1c::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Wed, 20 May
 2020 10:07:21 +0000
Received: from VI1PR08MB2862.eurprd08.prod.outlook.com
 ([fe80::6964:ec47:8a03:7e66]) by VI1PR08MB2862.eurprd08.prod.outlook.com
 ([fe80::6964:ec47:8a03:7e66%3]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 10:07:21 +0000
From: Bin Lu <Bin.Lu@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: =?utf-8?B?5Zue5aSNOiBbUEFUQ0hdIGFybTY0OiBGaXggUFRSQUNFX1NZU0VNVSBzZW1h?=
 =?utf-8?Q?ntics?=
Thread-Topic: [PATCH] arm64: Fix PTRACE_SYSEMU semantics
Thread-Index: AQHWKwd8l+lfexMahE2h4yzxyHqlbKitvHAAgAGZoYCAAWYEsA==
Date: Wed, 20 May 2020 10:07:21 +0000
Message-ID: <VI1PR08MB28629CB1D6C8F9BDFBD101D099B60@VI1PR08MB2862.eurprd08.prod.outlook.com>
References: <20200515222253.GA38408@juliacomputing.com>
 <20200518114119.GB32394@willie-the-truck> <20200519120725.GA20313@gaia>
In-Reply-To: <20200519120725.GA20313@gaia>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 3a970724-c917-4c8c-8d23-550c00a25e4c.0
x-checkrecipientchecked: true
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0dd8579c-24d3-40d4-d00b-08d7fca59a31
x-ms-traffictypediagnostic: VI1PR08MB2672:|AM0PR08MB3891:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB38916F83C5DF356B8202FCFF99B60@AM0PR08MB3891.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: +rqQyKbEy5n7yatRlR9KKoF0uTyjQZjJ642fZGDc6KqVAiQxiL4orqgXLgvEqVm++Jg63AtE7/5CEKEgSwHXtEp2nnSFHPyApBMQVzR/YpZc9UiqS7iwFiBfdH+29T1iw8+GgMyYSjfmcpqd+Uoiq+YnZX7mXwvRZyjEhxQ1wHhIMQf38Uaw0gLwSWT09efB3EVhNSaK3yH+xgKNTTYhUJMqbVbCZM6nPUG7jbJQGbR2yqIAbQc6nhsN3hsw3S5GAk2Y/HPs8G0FAs7XRhhGX0NT/XtWkPCTtt8n/hwmI/Zk2S6/5XuF4nkqhQwTPIMESs2lpVSkQ5F/qyQ+Hf3mYQUMUg2SbVg3o8bTptsxYcj7iwD3bL94DLTWATn2RKy5qwFVlJGB9aFepsx4uCg3uqprWx5X5chcT0VQdGzkiTpXGEJzNk8CcCNMek/qNaTYdWLIC6CEeD1vF7x9/76lgNsfgwmIOn1cjkF5NfJhvdaKOc8tLYmfifaEEj0au2E5YEUfKpI7Lg6OSxV2rweXFA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:VI1PR08MB2862.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(346002)(136003)(39860400002)(376002)(396003)(366004)(7696005)(26005)(33656002)(55236004)(9686003)(186003)(966005)(71200400001)(86362001)(5660300002)(54906003)(2906002)(64756008)(55016002)(316002)(66556008)(478600001)(6506007)(224303003)(66446008)(66946007)(4326008)(66476007)(76116006)(110136005)(8936002)(52536014);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 9ifOLRu/pigbNY2/RukDMqr4YcqDMN2ATFB3zmBfZRcALoCwMM/Bi078rFSgEYvEN13LHW573zAoubFKMEzcpMK7kYbpfT6EPXcDH75X4r5j9jTkObN5aSp2AuTwBSjqI+2fQpALYGX0FfsJ4665Htys5eTBgjkZIrVGWSCb+xQf7JU8IKN60mQ/jk1NgZmjBQTJRh+ey7eZLKcldD3Ysix09ZHIKP/DC7OnZiEhZnQxQC9j2S1CSHXiVmoHnHt+RedydL0qZZrlTAp+QJR/klUFO51nAZ4+ajq5KAHarR1DMg0jVkSSrTAIs254iBdYcTW+H5IOELZNjBVcLq5gRsUNz9Ly3F8Eu1+c30n3lPeo1yBn6mhPPXFTuX5DQ+fXFwfMbB4qW0PNkOuH7QLF0YlakfNKRlbyPOrjwBYjBNs5ouH/asCQt8Jif5MBilzF7obpuKYSdrMipeGvWkLluIEiMUDlyD6MmLwjT5+u8Zg=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2672
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT034.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(346002)(396003)(136003)(39860400002)(46966005)(47076004)(7696005)(82740400003)(52536014)(224303003)(26005)(186003)(336012)(2906002)(81166007)(356005)(82310400002)(6506007)(70206006)(316002)(5660300002)(966005)(70586007)(478600001)(55016002)(86362001)(54906003)(110136005)(4326008)(8936002)(9686003)(33656002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 9dd465ad-413a-4f01-abe7-08d7fca595f7
X-Forefront-PRVS: 04097B7F7F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sQs8rVKx5FJtwanW/6ZLMkIllbB+AVS62Ift+ZhTy5K1OY9zuZ9N/wdNEOyEhWyuB5+tDJ4ivSDGAekF6SYEeYfgALTCkAZ4+sLuwng82gDDEWai2l15//KMCvanViZqa/glIscA4eO36WenYJmrOZ65zFotPZnCD1XnRDni3pFAuxyDKwLIPcnuk0K1VD8ReBtkQmGfwdkZZKXp+s24FUN9opSfLBZHCmaj24EZG6k1iZAikxPtPiYaOzylZ66/p94Bd+cmcRSd422u6XWAUwRxUZlZIO1oQA7AYKGtyDNOAL+5M5+GJ1Nak8hXUV/gOYU6y2FJ6i8ub8XpXU2ixq/i90YxczETepAtQtPNtQGmEfjhKaQoJGfbIkyTWn2dmSoKChitmfzRyO8UMiH4wva8XYVGV51lI0HWXSeynlDrmfWzB2sBdZQhBmxM7cbzkspCq2UTFepFntzFtxQNEQvg8bG+HEIgGi0Q3SptcdxlBbWSmdbWAHQxZmzSSjYUb61cURfV1ZKx6m0279l/bvQYlVtBi8nnuKFUmPmOQuBLMuMIZbFZazxJzuuVfx3d83S9G6MMBKJm8s+LPB0PIhGW3ES4AyLKanBCJSVkN+o=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 10:07:28.2903 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dd8579c-24d3-40d4-d00b-08d7fca59a31
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3891
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_030733_396355_658C555A 
X-CRM114-Status: GOOD (  26.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.51 listed in wl.mailspike.net]
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
Cc: Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "oleg@redhat.com" <oleg@redhat.com>, Keno Fischer <keno@juliacomputing.com>,
 Sudeep Holla <Sudeep.Holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGVzdGVkLWJ5OiBCaW4gTHUgPGJpbi5sdUBhcm0uY29tID4NCg0KSSBoYXZlIGp1c3QgdGVzdGVk
IGFsbCBnVmlzb3Igc3lzY2FsbCB0ZXN0IGNhc2VzIHdpdGggcHRyYWNlKFJlZ3MsIEZQUmVncywg
VExTKSBvbiBBcm02NCBwbGF0Zm9ybS4NClRoZSB0ZXN0IHJlc3VsdHMgYXJlIHRoZSBzYW1lIGFz
IGJlZm9yZSB0aGVyZSB3YXMgbm8gcGF0Y2guDQoNCk15IGlkZWEgaXMgdGhhdCB0aGlzIGtlcm5l
bCBwYXRjaCBoYXMgbm8gYmFkIGVmZmVjdHMgb24gZ1Zpc29yLg0KTGludXggS2VybmVsIHZlcnNp
b246IDUuNy4wLXJjNisNCmdWaXNvciB2ZXJzaW9uOiByZWxlYXNlLTIwMjAwNTExLjANCg0KPiAt
LS0tLemCruS7tuWOn+S7ti0tLS0tDQo+IOWPkeS7tuS6ujogbGludXgtYXJtLWtlcm5lbCA8bGlu
dXgtYXJtLWtlcm5lbC1ib3VuY2VzQGxpc3RzLmluZnJhZGVhZC5vcmc+IOS7ow0KPiDooaggQ2F0
YWxpbiBNYXJpbmFzDQo+IOWPkemAgeaXtumXtDogMjAyMOW5tDXmnIgxOeaXpSAyMDowNw0KPiDm
lLbku7bkuro6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+DQo+IOaKhOmAgTogV2lsbCBE
ZWFjb24gPFdpbGwuRGVhY29uQGFybS5jb20+OyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
Ow0KPiBvbGVnQHJlZGhhdC5jb207IEtlbm8gRmlzY2hlciA8a2Vub0BqdWxpYWNvbXB1dGluZy5j
b20+OyBTdWRlZXAgSG9sbGENCj4gPFN1ZGVlcC5Ib2xsYUBhcm0uY29tPjsgbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IOS4u+mimDogUmU6IFtQQVRDSF0gYXJtNjQ6IEZp
eCBQVFJBQ0VfU1lTRU1VIHNlbWFudGljcw0KPiANCj4gT24gTW9uLCBNYXkgMTgsIDIwMjAgYXQg
MTI6NDE6MjBQTSArMDEwMCwgV2lsbCBEZWFjb24gd3JvdGU6DQo+ID4gT24gRnJpLCBNYXkgMTUs
IDIwMjAgYXQgMDY6MjI6NTNQTSAtMDQwMCwgS2VubyBGaXNjaGVyIHdyb3RlOg0KPiA+ID4gUXVv
dGggdGhlIG1hbiBwYWdlOg0KPiA+ID4gYGBgDQo+ID4gPiAgICAgICAgSWYgdGhlIHRyYWNlZSB3
YXMgcmVzdGFydGVkIGJ5IFBUUkFDRV9TWVNDQUxMIG9yIFBUUkFDRV9TWVNFTVUsDQo+IHRoZQ0K
PiA+ID4gICAgICAgIHRyYWNlZSBlbnRlcnMgc3lzY2FsbC1lbnRlci1zdG9wIGp1c3QgcHJpb3Ig
dG8gZW50ZXJpbmcgYW55IHN5c3RlbQ0KPiA+ID4gICAgICAgIGNhbGwgKHdoaWNoIHdpbGwgbm90
IGJlIGV4ZWN1dGVkIGlmIHRoZSByZXN0YXJ0IHdhcyB1c2luZw0KPiA+ID4gICAgICAgIFBUUkFD
RV9TWVNFTVUsIHJlZ2FyZGxlc3Mgb2YgYW55IGNoYW5nZSBtYWRlIHRvIHJlZ2lzdGVycyBhdCB0
aGlzDQo+ID4gPiAgICAgICAgcG9pbnQgb3IgaG93IHRoZSB0cmFjZWUgaXMgcmVzdGFydGVkIGFm
dGVyIHRoaXMgc3RvcCkuDQo+ID4gPiBgYGANCj4gPiA+DQo+ID4gPiBUaGUgcGFyZW50aGV0aWNh
bCBjb21tZW50IGlzIGN1cnJlbnRseSB0cnVlIG9uIHg4NiBhbmQgcG93ZXJwYywgYnV0DQo+ID4g
PiBub3QgY3VycmVudGx5IHRydWUgb24gYXJtNjQuIGFybTY0IHJlLWNoZWNrcyB0aGUgX1RJRl9T
WVNDQUxMX0VNVQ0KPiA+ID4gZmxhZyBhZnRlciB0aGUgc3lzY2FsbCBlbnRyeSBwdHJhY2Ugc3Rv
cC4gSG93ZXZlciwgYXQgdGhpcyBwb2ludCwgaXQNCj4gPiA+IHJlZmxlY3RzIHdoaWNoIG1ldGhv
ZCB3YXMgdXNlZCB0byByZS1zdGFydCB0aGUgc3lzY2FsbCBhdCB0aGUgZW50cnkNCj4gPiA+IHN0
b3AsIHJhdGhlciB0aGFuIHRoZSBtZXRob2QgdGhhdCB3YXMgdXNlZCB0byByZWFjaCBpdC4NCj4g
PiA+IEZpeCB0aGF0IGJ5IHJlY29yZGluZyB0aGUgb3JpZ2luYWwgZmxhZyBiZWZvcmUgcGVyZm9y
bWluZyB0aGUgcHRyYWNlDQo+ID4gPiBzdG9wLCBicmluZ2luZyB0aGUgYmVoYXZpb3IgaW4gbGlu
ZSB3aXRoIGRvY3VtZW50YXRpb24gYW5kIHg4Ni9wb3dlcnBjLg0KPiA+ID4NCj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEtlbm8gRmlzY2hlciA8a2Vub0BqdWxpYWNvbXB1dGluZy5jb20+DQo+ID4gPiAt
LS0NCj4gPiA+ICBhcmNoL2FybTY0L2tlcm5lbC9wdHJhY2UuYyB8IDggKysrKystLS0NCj4gPiA+
ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+ID4N
Cj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9wdHJhY2UuYyBiL2FyY2gvYXJt
NjQva2VybmVsL3B0cmFjZS5jDQo+ID4gPiBpbmRleCBiM2QzMDA1ZDk1MTUuLmI2N2I0ZDE0YWEx
NyAxMDA2NDQNCj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL3B0cmFjZS5jDQo+ID4gPiAr
KysgYi9hcmNoL2FybTY0L2tlcm5lbC9wdHJhY2UuYw0KPiA+ID4gQEAgLTE4MjksMTAgKzE4Mjks
MTIgQEAgc3RhdGljIHZvaWQgdHJhY2Vob29rX3JlcG9ydF9zeXNjYWxsKHN0cnVjdA0KPiA+ID4g
cHRfcmVncyAqcmVncywNCj4gPiA+DQo+ID4gPiAgaW50IHN5c2NhbGxfdHJhY2VfZW50ZXIoc3Ry
dWN0IHB0X3JlZ3MgKnJlZ3MpICB7DQo+ID4gPiAtCWlmICh0ZXN0X3RocmVhZF9mbGFnKFRJRl9T
WVNDQUxMX1RSQUNFKSB8fA0KPiA+ID4gLQkJdGVzdF90aHJlYWRfZmxhZyhUSUZfU1lTQ0FMTF9F
TVUpKSB7DQo+ID4gPiArCXUzMiBmbGFncyA9IFJFQURfT05DRShjdXJyZW50X3RocmVhZF9pbmZv
KCktPmZsYWdzKSAmDQo+ID4gPiArCQkoX1RJRl9TWVNDQUxMX0VNVSB8IF9USUZfU1lTQ0FMTF9U
UkFDRSk7DQo+ID4gPiArDQo+ID4gPiArCWlmIChmbGFncykgew0KPiA+DQo+ID4gbml0OiBidXQg
SSdkIHJhdGhlciB0aGUgJyYnIG9wZXJhdGlvbiB3YXMgaW4gdGhlIGNvbmRpdGlvbmFsIHNvIHRo
YXQNCj4gPiB0aGUgJ2ZsYWdzJyB2YXJpYWJsZSBob2xkcyBhbGwgb2YgdGhlIGZsYWdzLg0KPiA+
DQo+ID4gV2l0aCB0aGF0Og0KPiA+DQo+ID4gQWNrZWQtYnk6IFdpbGwgRGVhY29uIDx3aWxsQGtl
cm5lbC5vcmc+DQo+ID4NCj4gPiBBbHNvIG5lZWRzOg0KPiA+DQo+ID4gQ2M6IDxzdGFibGVAdmdl
ci5rZXJuZWwub3JnPg0KPiA+IEZpeGVzOiBmMDg2ZjY3NDg1YzUgKCJhcm02NDogcHRyYWNlOiBh
ZGQgc3VwcG9ydCBmb3Igc3lzY2FsbA0KPiA+IGVtdWxhdGlvbiIpDQo+ID4NCj4gPiBDYXRhbGlu
IC0tIGNhbiB5b3UgcGljayB0aGlzIHVwIGZvciA1LjcgcGxlYXNlLCB3aXRoIG15ICduaXQnIGFk
ZHJlc3NlZD8NCj4gDQo+IEknbGwgcXVldWUgaXQgd2l0aCB0aGUgYWJvdmUgYWRkcmVzc2VkLiBJ
IHRoaW5rIGZsYWdzIGFsc28gbmVlZHMgdG8gYmUgdW5zaWduZWQNCj4gbG9uZyByYXRoZXIgdGhh
biB1MzIuDQo+IA0KPiBIb3dldmVyLCBiZWZvcmUgc2VuZGluZyB0aGUgcHVsbCByZXF1ZXN0LCBJ
J2QgbGlrZSBTdWRlZXAgdG8gY29uZmlybSB0aGF0IGl0DQo+IGRvZXNuJ3QgYnJlYWsgaGlzIG9y
aWdpbmFsIHVzZS1jYXNlIGZvciB0aGlzIGZlYXR1cmUuDQo+IA0KPiAtLQ0KPiBDYXRhbGluDQo+
IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBs
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdA0KPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcNCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
