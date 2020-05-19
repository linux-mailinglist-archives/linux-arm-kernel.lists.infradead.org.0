Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B451D9B44
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLf010NsPHwhqQ+2YbdaZpSjd9YoHpEw6CZyl/yUwxQ=; b=ru7udJ1brEAPne
	fj9NycvHgmWU00qh0gEVEDDGp/3TiBTSWbWS0tZLJhwHrQ71txmxGOBH3EVHQW0dlyI8cjayGUeWT
	RWVvgvoLo34zrLk6oqA+xrWUlzN8BBOc7g3shQ1xBsf45rQ0CjooLOo35/m9AGgGDc6nx4CgPH/2C
	0AWrDzHuf8kMoHXx/Iy0AVy3D1S33+XSPDfqyE0gN4UQcWJlZ3l3CiuLwlfPYfp06Ts/2neysQkJf
	F5IwLwspAAY4ywlzwQ+RewV4YMojR83XqoU5Cq6sR55KBcjv6fXv0EgTeQ4dN3Bs38Lzhjz11RpSV
	KFHTEvQlKl5ifgudHImw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4DB-0005Ty-E8; Tue, 19 May 2020 15:31:21 +0000
Received: from mail-eopbgr130052.outbound.protection.outlook.com
 ([40.107.13.52] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4Cz-0005TK-06
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 15:31:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JvYL4lGQ6po99Z1nKGRmxwNUXhf/4SUCxO7qcD7YV/E=;
 b=lI8sm7MhKw4tlSxNTJvFSbBZl15anVFCrET/jpZVCzC7gP93S4wHJhmAOLcWMsGpr829CjU/9yNW0zVmCwuIG44PAeR/4NhXlaRJcKnE5A/A2pUAzKjV5GpQtnDBtJZyB4mKEW77Ri5lkwvzPwl7QncLsn81ubmWDDuoXVVRo1A=
Received: from DB6PR0802CA0043.eurprd08.prod.outlook.com (2603:10a6:4:a3::29)
 by AM0PR08MB3601.eurprd08.prod.outlook.com (2603:10a6:208:e1::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.31; Tue, 19 May
 2020 15:31:05 +0000
Received: from DB5EUR03FT058.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:a3:cafe::89) by DB6PR0802CA0043.outlook.office365.com
 (2603:10a6:4:a3::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25 via Frontend
 Transport; Tue, 19 May 2020 15:31:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT058.mail.protection.outlook.com (10.152.20.255) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.19 via Frontend Transport; Tue, 19 May 2020 15:31:05 +0000
Received: ("Tessian outbound d078647f4174:v57");
 Tue, 19 May 2020 15:31:05 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 27e1640dd20c899a
X-CR-MTA-TID: 64aa7808
Received: from b96ec72e23de.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 90F43981-9340-4C29-94A6-A558C914D0D1.1; 
 Tue, 19 May 2020 15:30:59 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b96ec72e23de.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 19 May 2020 15:30:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gHf7w+lvK/l6V7qf7fuIZLKVATrbi9gdJYnrYH0jgdoTY5Ndp6q88LEFpnfvDSN/5lCnyGSw0GOlBq/NzPIQhRkgUawa4uxR62vBZ8rsmeGiIJDBOnRVxgttFsIbVQJLL5KlEhxAWCdO2ldL79qOUIa2H4KPkYa6Aa3BBRoSOWMVrBEpHA2CJEIoAPzVvA+rYHD769Kaiu+RD6Ox+XGy8KXygOsNo/aOge78IrH0v/o9y0ijyn3Ipxf/fBTk9RKuC04/Ou004opZcVXUn9A6kKgH+xHPmKtbm79o9YNff4jPygM34Ds4fBEsn4gLRF+uzA6uiqXrj0vmV4QOU6etuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JvYL4lGQ6po99Z1nKGRmxwNUXhf/4SUCxO7qcD7YV/E=;
 b=MozZ4gF2xOvS1ac3k7dHfXjlLCHKcqa2UQhY2uM2tpApYdNm1WNWn13IIZyPDvTCD+jt7wRbK0sAE5Soi8/QeTIAX61TAkbUuC/7C/DTazEF5nbfHi64IcRzJNyJCnVbZkcEKa8PXCbFUMEmL2/C2otcHzH1BwY+85Zzbr0/foQLNzBuoyemvyZndywIyi7qydQRLQOi88evsV7DzbArANqwZ28Ip6lG6RdcVQgWQPOyw5WGNKAN7eMlYlNsz4Wc2Wy3Nyeo1XXS6DKztdPPNZHlKm0EhCiYFBjP4h/8ZgEt38GY4Eezql/HmYlhcI0TvUii54T6xC2s9iLaz6pflA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JvYL4lGQ6po99Z1nKGRmxwNUXhf/4SUCxO7qcD7YV/E=;
 b=lI8sm7MhKw4tlSxNTJvFSbBZl15anVFCrET/jpZVCzC7gP93S4wHJhmAOLcWMsGpr829CjU/9yNW0zVmCwuIG44PAeR/4NhXlaRJcKnE5A/A2pUAzKjV5GpQtnDBtJZyB4mKEW77Ri5lkwvzPwl7QncLsn81ubmWDDuoXVVRo1A=
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com (2603:10a6:20b:e7::32)
 by AM6PR08MB3925.eurprd08.prod.outlook.com (2603:10a6:20b:a0::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Tue, 19 May
 2020 15:30:57 +0000
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859]) by AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 15:30:57 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Dave P Martin <Dave.Martin@arm.com>, Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/3] arm64: vdso: Fix CFI directives in sigreturn
 trampoline
Thread-Topic: [PATCH 3/3] arm64: vdso: Fix CFI directives in sigreturn
 trampoline
Thread-Index: AQHWLdeyB/L3jWjYw02NmWvKPd0e16ivYciAgAAIbYCAAAR0gIAAGqIA
Date: Tue, 19 May 2020 15:30:57 +0000
Message-ID: <65A3D0F6-5B38-4624-B2DC-BD21EC2BCB25@arm.com>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-4-will@kernel.org>
 <20200519130930.GO10636@e103592.cambridge.arm.com>
 <20200519133941.GB14570@willie-the-truck> <20200519135537.GG5031@arm.com>
In-Reply-To: <20200519135537.GG5031@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
x-originating-ip: [2001:4c4c:1b20:6f00:849f:59a1:463c:a6ad]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 89f87dc7-2356-4758-d10a-08d7fc09a56c
x-ms-traffictypediagnostic: AM6PR08MB3925:|AM0PR08MB3601:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB360186C2FE63BAAAFDFF1519ECB90@AM0PR08MB3601.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:6790;OLM:6790;
x-forefront-prvs: 040866B734
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: zFNRZMq2+Txoe0PqajAjBdY4iK3HUn9IVDBqg6wB/K9aXz/vvn5j1Xsc33XjkOfNCYeWfb2GcYOM6VqXutNAJ7KWUg/nt41q87IIrtHtjwln+KjNgbqasfQQ5bKuaxopMvQACP9PfnsrfcW+T070gV88kXzX126nUIOn+HHd/bjIXBOt1ZO6BoteRx7ccC+mqEYfYFxFsTG+lEiS2MMOiPyf0IH1t8gA9K8OcZ5XpyyxTuXsejsO9cPuY5zDYc6GcZIuWjwkwWYeyvGXjR9H5zVOTEO2jhZjoQPTdoxecI7Lz6uqFjlrZI6YB13B6Ctp6pwrcuMgngzki6iKvmD+4vulUxwhXjJCxMiqjMzIdsdel8aegpcUgI1jcznpdSSckuUZ77JubN5/Dopt5tDe08R3X5wXkLcQMfb/mhouGNfLq/FMdKM5FCE9JFsFjO2l
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB5256.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(376002)(346002)(136003)(366004)(39860400002)(6506007)(5660300002)(6512007)(66556008)(66946007)(4326008)(91956017)(76116006)(66476007)(64756008)(66446008)(186003)(2616005)(478600001)(110136005)(2906002)(53546011)(71200400001)(316002)(36756003)(54906003)(33656002)(8676002)(8936002)(86362001)(6486002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: pQPpULGVfKLfqzuRwiRiaDjzJMrGlJyulnnSs0VH6EJnRoUNI+e44GtV/ZKPOum9HjjX7fiJvEH0AdsyQUsHjvTC3XtXmDoqLrBPp+ugFi0Hdiin/yU+3JyXOVBB6N9lZvnLILxPmdXwAeYhb/XHFYSkQ7hOrLY6kz2j+6XkwJU7e1gtxbOHtFWzzX36TGW/bIjkFCUhlboLEHtRj6t5EduovdUqyDNN2eTWGiV+PHvUpW4cMmUJ9rgW4ZXe4W5/9uT9XVKy8veg6b4aWmEfQXS3RmG+YLqz0/OyRNgi7pjX7nvlhyPIx+eSo9aHKmh7heNnZroOD7XVdLyHJ6DVYA2T+DaigbS5KMeqj8oiWhuiPbTyTjm0s4KnITosnpItuqtQS2YdTvUyigJsqbxg8XfUWe4VKm9Ad22vhmMkp5FNeJO/4VkeleTJGec8vEaoVyPDRW+f1FzzvkBeT9/RRvhqUrUecfzrg+ZGeaZkVIs9AhefiZrnSfzsPhfqn0Fg8ZAAMAXd60nkyUSn2JE40koJ7ggebvie7GOAqR5mzzhE5DTECJlZ5O+a0E3y0NRK
Content-ID: <47A4CD49636C8D4B84BB92F4F5EBAD98@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3925
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT058.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(346002)(376002)(39860400002)(136003)(46966005)(336012)(8676002)(6506007)(47076004)(86362001)(5660300002)(2616005)(53546011)(33656002)(54906003)(8936002)(82740400003)(186003)(4326008)(6486002)(70586007)(70206006)(478600001)(2906002)(82310400002)(36756003)(316002)(81166007)(26005)(356005)(6512007)(110136005);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 5787412e-9221-428a-00dd-08d7fc09a085
X-Forefront-PRVS: 040866B734
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PuIDlKuJwkjyyQRl5hW6ojp35PJn3C61PbDTh/B8qgBe6uzEf+wkTukeTp5i8lLzXaPi5+F+01nDmsvwxUGGoMG0vhRBP4KqdWYTH0fy6a1uy+bbNqPBvR1A7xQdfgqLwDVhigY3/VgAP5tCeHIPt5r3+yo6kGsXLbyCZcWrFtad5fXmdxvWC+CJrJ+mAMAEEzi7PATg5Li8M4lm9zw+s+yiCP8VoyjXhiw+6Bi6GiBhkv9NBT5ngL56cAHuePYd4IgfaD3CjS9qL+yrcpQ4F0GwDvZKHrys3I6T6KmPwc7SA2xBINCSw4owzFB5SifP84PYsWn6qoxWDrPWaSh+hKD7HL2EhPfRhcaXYThtIzIInc3I4x3FvL4o3SUiApl3AHEMePD4HL3Nf+IfS/QJqsMMPttH9qHB1HiqpmzsL/57722S+7FCqubZHC5QxlqKcNIUAyHcUOPYfIILtz6wwUPYn3GPV3aPHUx1eoO+i9/fDCybJgwKxl61cD7VZAhViMH+JiF6+E8W3H99PiTLVA==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2020 15:31:05.6421 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 89f87dc7-2356-4758-d10a-08d7fc09a56c
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3601
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_083109_277064_D20484B4 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.13.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.52 listed in wl.mailspike.net]
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
Cc: Tamas Zsoldos <Tamas.Zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 "kernel-team@android.com" <kernel-team@android.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gT24gMTkgTWF5IDIwMjAsIGF0IDE1OjU1LCBEYXZlIE1hcnRpbiA8RGF2ZS5NYXJ0aW5A
YXJtLmNvbT4gd3JvdGU6DQo+IA0KPiBPbiBUdWUsIE1heSAxOSwgMjAyMCBhdCAwMjozOTo0MVBN
ICswMTAwLCBXaWxsIERlYWNvbiB3cm90ZToNCj4+IE9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0IDAy
OjA5OjMxUE0gKzAxMDAsIERhdmUgUCBNYXJ0aW4gd3JvdGU6DQo+Pj4gT24gVHVlLCBNYXkgMTks
IDIwMjAgYXQgMDE6MTg6MThQTSArMDEwMCwgV2lsbCBEZWFjb24gd3JvdGU6DQo+Pj4+IERhbmll
bCByZXBvcnRzIHRoYXQgdGhlIC5jZmlfc3RhcnRwcm9jIGlzIG1pc3BsYWNlZCBmb3IgdGhlIHNp
Z3JldHVybg0KPj4+PiB0cmFtcG9saW5lLCB3aGljaCBjYXVzZXMgTExWTSdzIHVud2luZGVyIHRv
IG1pc2JlaGF2ZToNCj4+Pj4gDQo+Pj4+ICB8IEkgcnVuIGludG8gdGhpcyB3aXRoIExMVk3igJlz
IHVud2luZGVyLg0KPj4+PiAgfCBUaGlzIGNvbWJpbmF0aW9uIHdhcyBhbHdheXMgYnJva2VuLg0K
Pj4+PiANCj4+Pj4gVGhpcyBwcm9tcHRlZCBEYXZlIHRvIHJlYWxpc2UgdGhhdCBvdXIgQ0ZJIGRp
cmVjdGl2ZXMgYXJlIGNvbnRyYWRpY3RvcnksDQo+Pj4+IGFzIHdlIHNwZWNpZnkgYm90aCAuY2Zp
X3NpZ25hbF9mcmFtZSAqYW5kKiAuY2ZpX2RlZl9jZmEsIHdpdGggdGhlIGxhdHRlcg0KPj4+PiB1
bmNvbmRpdGlvbmFsbHkgaWRlbnRpZnlpbmcgdGhlIGludGVycnVwdGVkIGNvbnRleHQgYXMgb3Bw
b3NlZCB0byB0aGUNCj4+Pj4gdmFsdWVzIGluIHRoZSBzaWdjb250ZXh0Lg0KPj4+PiANCj4+Pj4g
UmV3b3JrIHRoZSBDRkkgZGlyZWN0aXZlcyBzbyB0aGF0IHdlIG9ubHkgdXNlIC5jZmlfc2lnbmFs
X2ZyYW1lLCBhbmQNCj4+Pj4gaW5jbHVkZSB0aGUgIm15c3RlcmlvdXMgTk9QIiBhcyBwYXJ0IG9m
IHRoZSAuY2ZpX3tzdGFydCxlbmR9cHJvYyBibG9jay4NCj4+Pj4gDQo+Pj4+IENjOiBUYW1hcyBa
c29sZG9zIDx0YW1hcy56c29sZG9zQGFybS5jb20+DQo+Pj4+IFJlcG9ydGVkLWJ5OiBEYXZlIE1h
cnRpbiA8ZGF2ZS5tYXJ0aW5AYXJtLmNvbT4NCj4+Pj4gUmVwb3J0ZWQtYnk6IERhbmllbCBLaXNz
IDxkYW5pZWwua2lzc0Bhcm0uY29tPg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBXaWxsIERlYWNvbiA8
d2lsbEBrZXJuZWwub3JnPg0KPj4+PiAtLS0NCj4+Pj4gYXJjaC9hcm02NC9rZXJuZWwvdmRzby9z
aWdyZXR1cm4uUyB8IDggKysrLS0tLS0NCj4+Pj4gMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkNCj4+Pj4gDQo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5TIGIvYXJjaC9hcm02NC9rZXJuZWwvdmRzby9zaWdyZXR1
cm4uUw0KPj4+PiBpbmRleCA3ODUzZmE5NjkyZjYuLjI4YjMzZjdkMDYwNCAxMDA2NDQNCj4+Pj4g
LS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvdmRzby9zaWdyZXR1cm4uUw0KPj4+PiArKysgYi9hcmNo
L2FybTY0L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5TDQo+Pj4+IEBAIC0xNCw2ICsxNCw5IEBADQo+
Pj4+IA0KPj4+PiAJLnRleHQNCj4+Pj4gDQo+Pj4+ICsvKiBFbnN1cmUgdGhhdCB0aGUgbXlzdGVy
aW91cyBOT1AgY2FuIGJlIGFzc29jaWF0ZWQgd2l0aCBhIGZ1bmN0aW9uLiAqLw0KPj4+PiArCS5j
Zmlfc3RhcnRwcm9jDQo+Pj4+ICsJLmNmaV9zaWduYWxfZnJhbWUNCj4+Pj4gLyoNCj4+Pj4gICog
VGhpcyBteXN0ZXJpb3VzIE5PUCBpcyByZXF1aXJlZCBmb3Igc29tZSB1bndpbmRlcnMgdGhhdCBz
dWJ0cmFjdCBvbmUgZnJvbQ0KPj4+PiAgKiB0aGUgcmV0dXJuIGFkZHJlc3MgaW4gb3JkZXIgdG8g
aWRlbnRpZnkgdGhlIGNhbGxpbmcgZnVuY3Rpb24uDQo+Pj4+IEBAIC0yOCwxMSArMzEsNiBAQA0K
Pj4+PiAgKiBpcyBwZXJmZWN0bHkgZmluZS4NCj4+Pj4gICovDQo+Pj4+IFNZTV9TVEFSVChfX2tl
cm5lbF9ydF9zaWdyZXR1cm4sIFNZTV9MX0dMT0JBTCwgU1lNX0FfQUxJR04pDQo+Pj4+IC0JLmNm
aV9zdGFydHByb2MNCj4+Pj4gLQkuY2ZpX3NpZ25hbF9mcmFtZQ0KPj4+PiAtCS5jZmlfZGVmX2Nm
YQl4MjksIDANCj4+Pj4gLQkuY2ZpX29mZnNldAl4MjksIDAgKiA4DQo+Pj4+IC0JLmNmaV9vZmZz
ZXQJeDMwLCAxICogOA0KTExWTeKAmXMgdW53aW5kZXIgZG9lcyBub3QgbGlrZSB0aGlzIHZlcnNp
b24gb2YgdGhlIENGSS4gSXQgbmVlZHMgYSBiaXQgbW9yZSBpbmZvcm1hdGlvbiwgDQp0aGUgY2Zp
X3NpZ25hbF9mcmFtZSBpcyBub3QgdXNlZCBmb3IgZmluZGluZyB0aGUgZnJhbWUuDQoNCj4+PiAN
Cj4+PiBIYXZpbmcgdGhvdWdodCBhYm91dCB0aGlzIGFnYWluLCBJIHRoaW5rIGl0IG1pZ2h0IGJl
IGJldHRlciB0byBzdGljayB0bw0KPj4+IHRoZSBvcmlnaW5hbCB2ZXJzaW9uLg0KPj4+IA0KPj4+
IElmIHRoZSBzaWduYWwgaGFuZGxlciBpcyBoYWxmd2F5IHRocm91Z2ggbXVuZ2VpbmcgdGhlIHNp
Z2NvbnRleHQgdGhlbg0KPj4+IGJhY2t0cmFjaW5nIHVzaW5nIHNpZ2NvbnRleHQgd29uJ3QgYmUg
cmVsaWFibGUuDQo+PiANCj4+IEkgc3VwcG9zZSwgYnV0IHRoZW4gd2hhdCBkb2VzIC5jZmlfc2ln
bmFsX2ZyYW1lIGRvPyBJJ2xsIHNlZSBpZiBJIGNhbg0KPj4gZmluZCBzb21ldGhpbmcgdGhhdCB1
c2VzIGl0LiBUaGUgZnJhbWUgcmVjb3JkIGlzIHN0aWxsIHNpdHRpbmcgb24gdGhlDQo+PiBzdGFj
aywgc28gaXQgZG9lcyBmZWVsIHJlZHVuZGFudCB0byBzYXkgYm90aCAnLmNmaV9zaWduYWxfZnJh
bWUnIGFuZA0KPj4gJy5jZmlfZGVmX2NmYScgKGFuZCBvdGhlciBhcmNoaXRlY3R1cmVzLCBlLmcu
IHJpc2N2IGRvbid0IGRvIHRoaXMpLg0KPj4gDQo+PiBCdXQgSSdtIGFsc28gaGFwcHkgdG8gcGxh
eSBpdCBzYWZlIGlmIEkgY2FuIHN0aWNrIGEgY29tbWVudCBpbiBoZXJlDQo+PiBzYXlpbmcgd2hh
dCBpdCBkb2VzLg0KU291bmRzIGdvb2QgdG8gbWUuDQoNCj4+IA0KPj4+IFBsdXMsIGluIHRoZSBh
YnNlbmNlIG9mIGFueSBzcGVjIHRoYXQgc2F5cyBleGFjdGx5IHdoYXQNCj4+PiAuY2ZpX3NpZ25h
bF9mcmFtZSBtZWFucyosIHdlIHByb2JhYmx5IGRvbid0IHdhbnQgdG8gcm9jayB0aGUgYm9hdC4N
Cj4+IA0KPj4gVGhlIGdhcyBkb2NzIHNheToNCj4+IA0KPj4gCSJNYXJrIGN1cnJlbnQgZnVuY3Rp
b24gYXMgc2lnbmFsIHRyYW1wb2xpbmUuIg0KPj4gDQo+PiB3aGljaCBpcyByZWFsbHkgaW5mb3Jt
YXRpdmUuDQo+IA0KPiBXZWxsLCB3ZSd2ZSBkZW1vbnN0cmF0ZWQgdGhhdCBpZGVudGlmeWluZyB0
aGUgc2lnbmFsIGZyYW1lIGlzIGEgZ3Jvc3MNCj4gYm9kZ2UuICBUaGUgY2ZpIGFubm90YXRpb24g
c2hvdWxkIHByb3ZpZGUgYSByZWxpYWJsZSB3YXkgdG8gaWRlbnRpZnkgdGhlDQo+IHNpZ25hbCBm
cmFtZSwgYnV0IEkgZ3Vlc3MgaXQgd2FzIHRvbyBwb29ybHkgc3BlY2lmaWVkIG9yIGNhbWUgdG9v
IGxhdGUNCj4gdG8gcHJldmVudCB0aGUgYm9kZ2VzIGZyb20gc3ByZWFkaW5nLg0KPiANCj4gU2lu
Y2UgdGhpcyBzZWVtcyB0byBiZSBhIG5vbnN0YW5kYXJkIGludmVudGlvbiwgSSB3b3VsZG4ndCBo
b2xkIG91dA0KPiBtdWNoIGhvcGUgb2YgZmluZGluZyBhIHVzYWJsZSBzcGVjLg0KPiANCj4gT2Yg
Y291cnNlLCBzb21ldGhpbmcgbWlnaHQgYmUgdXNpbmcgaXQgbm93LCBzbyBJIGd1ZXNzIHdlIGhh
dmUgdG8gbGVhdmUNCj4gaXQuDQo+IA0KPiAtLS1EYXZlDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
