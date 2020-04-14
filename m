Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C82A1A7142
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 04:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2bsAU4b85fHTe5SSkOyX/JfhUnGnWmJ588JLcF66Uk=; b=Uzp2/Zxs/K/Rp8
	WqjWKvgi7MeSXTg8Sr9hCmFUU4zoSsrb05EnWPSGbNB8s1ZQ0sZT/at1uF151u7UemqCv9O5x3w9P
	oUGQnXzaF3HaMFYZJz0PoMaAKfr2FZJefv+FvWbRI33C3peLsYH9G5mnjR4qzlLq3B4Qy2cDP6+Nb
	DPWyD2ckd3GHDo+lffY3s9oSRGR6pJkWpWMTHPWAU+U6olensSl2BSc36E1YkssFSRqLiBmXCwhMe
	tRsn8AcnvkJXtPkAZ1HJ2VRejqKKKpPkGl6ZHknzC7q+kQZ81es5mkMUQQEFvr0VFB9HJg+bvHAGm
	RoSFCzJKrwo1S6MFY1fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOBji-0001Ch-CB; Tue, 14 Apr 2020 02:55:42 +0000
Received: from mail-db3eur04on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::618]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOBja-0001C9-5w
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 02:55:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8mZ/0hKKi74myme4WdcQ1QeXox2fDmEoq4M5IZOAAc=;
 b=wfKYwBbjHNDaLhFFXtNT0Y0ZK+5DNZpqV8wTKX0N+w+JmcS6H3Frb6lk2DoDKW3otP6t0CCpfoueRu+ecVRtqy1y8VY9CHrZTSvnBqiRhuybxaITP+TJVsUOHoJ4ZACSBbiSdXBa4l6QnJlFe6WnRnGecQ9HrdnKbc12LuTv6Sk=
Received: from DBBPR09CA0007.eurprd09.prod.outlook.com (2603:10a6:10:c0::19)
 by AM6PR08MB5000.eurprd08.prod.outlook.com (2603:10a6:20b:e6::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Tue, 14 Apr
 2020 02:55:27 +0000
Received: from DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:c0:cafe::4b) by DBBPR09CA0007.outlook.office365.com
 (2603:10a6:10:c0::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17 via Frontend
 Transport; Tue, 14 Apr 2020 02:55:27 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT033.mail.protection.outlook.com (10.152.20.76) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.18 via Frontend Transport; Tue, 14 Apr 2020 02:55:27 +0000
Received: ("Tessian outbound e2c88df8bbbe:v50");
 Tue, 14 Apr 2020 02:55:27 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: b0185b55d7c53be9
X-CR-MTA-TID: 64aa7808
Received: from 4bd286d2b798.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 7094C647-C717-4F5E-8E0A-08A2565C6895.1; 
 Tue, 14 Apr 2020 02:55:21 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4bd286d2b798.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 14 Apr 2020 02:55:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XR5+dp7bm6ziTU7HyZrK1zw8noSSvxvb17iJrMO14LiM7eeKG+CEUyvsBBD+N5MR1xd7xmKaK4SKfC+R/RZ8WRXVU7dQy4tb8S4Y894EksSpztpxQiEmCbMjjO3kXoQm661ywN70WrLmx0yvvqeyGCZydrxhEF76cYxVltaCurrGfiyrTCHpCjlRSVhj+r30q0czSmfWkxguLvlTFRqUek1mccCWTMVAvL0baQkkkxR35ED2fu+xe1epp2LHCgxmYKLwADIBy0huvJMKOzUWlJe137pXBka4iwhDT0loLae6lVMBDl2wfFbEuiPzS2sIFPw6oKsuA1djHa5OPhqsPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8mZ/0hKKi74myme4WdcQ1QeXox2fDmEoq4M5IZOAAc=;
 b=RTC9JgBjAi4sExDusulcR7SwzjiwoamZ8pzQRIu3cRqdfSApdvOK2z1kuJGthDym0JJ8/QE/T6MUsOy0ROabsvz7DozGEA1ZyxINpfc/itIvAn+lOOsW2fNcGB10v6yZmgITyq4wHJNbM8ttOjbXjjZ29kfqacybA6b9Bx4S6+9wfiRw00V7fn2UQ6J4rVL8xpaya39NZgs3BbrCWmB9MvBz7FFEDKi9v0hSwOFvLmw0oAixJy4qPQoxvWshhCw8mcV3JVXwiGZ1ANYqEkWdMvkJpIUzBvLL4NjhNkHd1tqu8U1Mw7hYbjQ48c2M2cSltSW7GJj/wYSRC2Z3GhVfGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8mZ/0hKKi74myme4WdcQ1QeXox2fDmEoq4M5IZOAAc=;
 b=wfKYwBbjHNDaLhFFXtNT0Y0ZK+5DNZpqV8wTKX0N+w+JmcS6H3Frb6lk2DoDKW3otP6t0CCpfoueRu+ecVRtqy1y8VY9CHrZTSvnBqiRhuybxaITP+TJVsUOHoJ4ZACSBbiSdXBa4l6QnJlFe6WnRnGecQ9HrdnKbc12LuTv6Sk=
Received: from DB8PR08MB5465.eurprd08.prod.outlook.com (2603:10a6:10:118::15)
 by DB8PR08MB5419.eurprd08.prod.outlook.com (2603:10a6:10:118::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.24; Tue, 14 Apr
 2020 02:55:18 +0000
Received: from DB8PR08MB5465.eurprd08.prod.outlook.com
 ([fe80::8c5b:a1f0:4345:4a0a]) by DB8PR08MB5465.eurprd08.prod.outlook.com
 ([fe80::8c5b:a1f0:4345:4a0a%6]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 02:55:18 +0000
From: Thanu Rangarajan <Thanu.Rangarajan@arm.com>
To: "guohanjun@huawei.com" <guohanjun@huawei.com>, Sudeep Holla
 <Sudeep.Holla@arm.com>, Charles Garcia-Tobin <Charles.Garcia-Tobin@arm.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>
Subject: Re: ACPI support for System Control and Management Interface (SCMI)
Thread-Topic: ACPI support for System Control and Management Interface (SCMI)
Thread-Index: AQHWDt+FPwC6n0gBnkGx309F9kIg4ah4TrYA
Date: Tue, 14 Apr 2020 02:55:18 +0000
Message-ID: <9CAF1E7E-C6A9-4ABF-8353-D8C9D4D331F8@arm.com>
References: <52a50069-7140-b9b4-31b4-8c99e8c0d991@huawei.com>
In-Reply-To: <52a50069-7140-b9b4-31b4-8c99e8c0d991@huawei.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.14.200307
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Thanu.Rangarajan@arm.com; 
x-originating-ip: [217.140.105.40]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 399a62aa-09d4-4b70-a931-08d7e01f4950
x-ms-traffictypediagnostic: DB8PR08MB5419:|DB8PR08MB5419:|AM6PR08MB5000:
x-ld-processed: f34e5979-57d9-4aaa-ad4d-b122a662184d,ExtAddr
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB5000478AA83C127D8B354AA78EDA0@AM6PR08MB5000.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:10000;
x-forefront-prvs: 0373D94D15
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DB8PR08MB5465.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(366004)(346002)(136003)(8936002)(66446008)(81156014)(8676002)(5660300002)(2906002)(91956017)(66946007)(66556008)(64756008)(4744005)(86362001)(26005)(6636002)(71200400001)(6506007)(110136005)(478600001)(6486002)(316002)(76116006)(33656002)(186003)(66476007)(6512007)(54906003)(36756003)(4326008)(2616005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 7jVAHCo5KwNLdOQiRIV1vyQSA3OL7o66dKxRX/CpLcW4c0b4Utl5Eye9PPFI/aXQi/KrBvxpvbBY0MBHaWUmktkS5jn2BDnaXe/mWSq148KQiLQn3EHbT5r47a8+PDkL1LzTO0gQF2hvjAmOalJW8cQJ1o9hV0Y0NSzBELdKHuuGFe33Ca9/0WZErVt4XVfHG5lXVAfjlaM3BhFxYNeq1CVtUCHSOB/m2pLBKd3hTGtMTxsmGw8lw0Y/IgHV2VgfK3g5TCupRgpwD/aO4L7hJyVQjv3xJTHtN90XsL6wUxo4O/MiAQPBfL/OdvDUo4cyhgM4Gdz3WgfGjezQ13eTkN+sPSs//kWrekaixgo5lNtG9NDpi2LS8tnBwaAqQ+lk+r/0Ihq0MicoygNpfwtaWPi8KGvDGTIbOZpwqnOmjSGnZjO6lWU7DUZe/zkgZXPL
x-ms-exchange-antispam-messagedata: HNaegwve+xWD3KIY9p0HartitVJGEJP5p1UTgG0A0p0+gX251nhNVcWMWirEgP6vLy0P4vHu/lI4QxsjHWqkVh3Xz6tCjnuPg/+rZmLJYjeYvXJ+HnxwLwhz0B4LYb16CnN32AHBsQcXdRWhZ6uNZA==
Content-ID: <315807311C816341ABD24496761363A8@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5419
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Thanu.Rangarajan@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(39860400002)(346002)(46966005)(336012)(316002)(2616005)(47076004)(356005)(82740400003)(6636002)(70206006)(70586007)(4326008)(81166007)(186003)(4744005)(6512007)(33656002)(2906002)(26005)(6506007)(5660300002)(26826003)(8936002)(81156014)(36756003)(110136005)(6486002)(86362001)(478600001)(54906003)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 643f28fa-6501-4af3-e6dc-08d7e01f4431
X-Forefront-PRVS: 0373D94D15
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sAgiHvRZXA3zIQRJG9LoaxUBMwBxzKrEnpMZ8K87n7Jrts0PQAREeGcXHN6FzW3+Ow2FMq3mIxFA8dCxtG6taGKX/j4H2d8hcxrY85zGl3bE8dK54nr9+qnsvOBBInVE/tsVjfVwTBnxtFPggb6Db1Bk6bwPWSY7sHEorsFuY+FvJi8B0K9iMB0H5OGKivmd/9UWSkG4q44sdciT4fdOMc/dQpIW6s1GZYak8kaTuoFKfo7HS+H5inRQ8EfvBS3x/8zxC8WmlgGV74wdZtdqmv123fa7xM8vJtVIR3IY6UX57rohbhDnt7bQydYBLuFpsSIAl1MB3PN5M4PYxgel4YZYn2fOKiD1uEENmZ0Wmh1+ZwFVVuxrmD1UYtJTC8iGwSIp91fnIGrKNqkbMQDzgOLoyYRhGykruyVJyT8pgfxbtqEcejJfWDJzUeXDtkdV+TNIKwXvBQknkI775c3auYhSMIWtZyky/civfT9/Ehr3xeCZkOo8ClGN0Y6tnMbiKoPHFr/JdpfIqtCcCI4+cQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2020 02:55:27.4595 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 399a62aa-09d4-4b70-a931-08d7e01f4950
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB5000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_195534_277804_ACFAD6E5 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:618 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: John Garry <john.garry@huawei.com>, Matteo Carlini <Matteo.Carlini@arm.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, Jonathan Cameron <jonathan.cameron@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KyBTb3V2aWsNCg0K77u/T24gMTAvMDQvMjAyMCwgMDc6NTcsICJIYW5qdW4gR3VvIiA8Z3VvaGFu
anVuQGh1YXdlaS5jb20+IHdyb3RlOg0KDQogICAgSGkgU3VkZWVwLA0KDQogICAgV2UgYXJlIHdv
cmtpbmcgb24gdGhlIGVuYWJsZW1lbnQgb2YgU0NNSSBmb3IgS3VuZXBlbmc5MjAsDQogICAgd2hp
Y2ggaXMgYSBzZXJ2ZXIgY2hpcCB1c2luZyBBQ1BJLCBidXQgSSBkaWRuJ3Qgc2VlIHRoZQ0KICAg
IEFDUEkgc3VwcG9ydCBpbiB0aGUgbWFpbmxpbmUga2VybmVsIGZvciBTQ01JLg0KDQogICAgS3Vu
cGVuZzkyMCBhbmQgdGhlIHVwY29tbWluZyBLdW5wZW5nOTMwIGhhdmUgdGhlcm1hbA0KICAgIHNl
bnNvcnMgYW5kIG90aGVyIHN5c3RlbSBtYW5hZ2VtZW50IGZlYXR1cmVzIHdoaWNoDQogICAgbmVl
ZHMgdGhlIFNDTUkgZm9yIGFic3RyYWN0aW9uIGxheWVyLCBkbyB3ZSBoYXZlIHBsYW4NCiAgICB0
byBzdXBwb3J0IEFDUEkgZm9yIFNDTUk/DQoNCiAgICBIYXBweSBlYXN0ZXIhDQoNCiAgICBUaGFu
a3MNCiAgICBIYW5qdW4NCg0KDQoNCklNUE9SVEFOVCBOT1RJQ0U6IFRoZSBjb250ZW50cyBvZiB0
aGlzIGVtYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgYXJlIGNvbmZpZGVudGlhbCBhbmQgbWF5IGFs
c28gYmUgcHJpdmlsZWdlZC4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwg
cGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFuZCBkbyBub3QgZGlzY2xvc2Ug
dGhlIGNvbnRlbnRzIHRvIGFueSBvdGhlciBwZXJzb24sIHVzZSBpdCBmb3IgYW55IHB1cnBvc2Us
IG9yIHN0b3JlIG9yIGNvcHkgdGhlIGluZm9ybWF0aW9uIGluIGFueSBtZWRpdW0uIFRoYW5rIHlv
dS4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
