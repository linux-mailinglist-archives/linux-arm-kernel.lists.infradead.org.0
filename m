Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EADCF0B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 03:55:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTpxOZ0K7Vxtger+XOQBTaGoryojLPQxplv7s7PNxoo=; b=RggMdgg7WtRB3S
	bo9ojXwKkoB0nyqtnlbczX+y2V1o7licAH67HJA1j9yNnUB8Aq32YCDWvfgbSLE7GQbEzFDpG3uam
	NXY5SJkF9DeDtrPBRwU9W4mKvuTScP/i0kO5MY5huFZARQ8aP5fdo97qEVyRGG1r0PUoORPvO945k
	v5dmVODpw548eokwaB6upUaw/G6BnNlj45rhcOvMJaN82LAJ1w+lfiiD6aMeHqVmZbVeTKGdkoMjm
	+TdQPrVSZLTFtYlziwlkzfMlmhgtbxp6E0bCPvF6rxVzWqotoZ3L0+YHFX8l8TNh88MLQv1TqMX3s
	uSFOzd7AVmGFV3enF7zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHeiv-0001u6-T0; Tue, 08 Oct 2019 01:55:37 +0000
Received: from mail-eopbgr00067.outbound.protection.outlook.com ([40.107.0.67]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHeil-0001tO-Ip
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 01:55:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TyNo5Bc7lrDxAv2BZZXJU2XzVBZr/nI/mBhlXkRJB74=;
 b=3cyEvYmh57RRaPZWjon2UQ8317/U+BooNxZw05tsrd24/eUvqVlGSHxq+1sQoxCPM8HOGZrnU5aFgLl/N8GmFSSReCkOB4y7yKFyPICUOyxrL+S1vSSJUTqOae+Nm+7Jpr59YZnJ/itmGdrcnCIPMlDjwWxNRZUANKC1zR4I5wc=
Received: from VE1PR08CA0021.eurprd08.prod.outlook.com (2603:10a6:803:104::34)
 by VI1PR0801MB1712.eurprd08.prod.outlook.com (2603:10a6:800:5a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24; Tue, 8 Oct
 2019 01:55:20 +0000
Received: from AM5EUR03FT014.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::207) by VE1PR08CA0021.outlook.office365.com
 (2603:10a6:803:104::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24 via Frontend
 Transport; Tue, 8 Oct 2019 01:55:20 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT014.mail.protection.outlook.com (10.152.16.130) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15 via Frontend Transport; Tue, 8 Oct 2019 01:55:18 +0000
Received: ("Tessian outbound 0939a6bab6b1:v33");
 Tue, 08 Oct 2019 01:55:13 +0000
X-CR-MTA-TID: 64aa7808
Received: from b176a3277a75.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.9.52]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 54B53FAA-71BE-4F47-946D-D693ED3FAF4F.1; 
 Tue, 08 Oct 2019 01:55:08 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2052.outbound.protection.outlook.com [104.47.9.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b176a3277a75.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 08 Oct 2019 01:55:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UkpOmVvBMj1jxouk06GhmvN6dy0Kff/GhEM04fAMeorbnslnpywPFMahqr4GJoxoO8zK2A1glyQsvY2sI53njh7AgX1FzU63oHRM6iYZ9V5YyEPViubkwYLoSC271X3+5V8Mu6vOuee4/k14y4RIhkhTgWBv2p566pKQYLg7dqDVF94j2ajTE9TJamFcYPDoJwzvK3Njpou39BAHXBJnTqXxnncHY9wRwAoRuBEMRtQhiafrCuawq8Q/snAposi5yrkTPcAtFZ4RtvgzM1PuSOowzOGEwGwNq47EQUR4Oj/RlAUZAT+nySTREVGTp+NFIFQjGGI1Y9sreLb79ZzJzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TyNo5Bc7lrDxAv2BZZXJU2XzVBZr/nI/mBhlXkRJB74=;
 b=Eo4wdBorC9X//dCiOZT94ZOBrt6VeIjHdZWxReBZJpbDgBE5TZwpP7Ml0P7J57hLZ14QftLuT/GXUAMK+mfOUKHfRo/mJxdO7RDl6+vY0q+5nrQmxrEAOpxWs1+fWR0JpPX6HCpXXNhF0VDvybCzZq3aco7cLd2clOCpgbat5ScW5eHHJTlyUrezdKYU/c1h38v5hdduDo7HfCY8pH0bikwkbO5AXbnfILsd3N5nGZ9Pjc7SNfdk9Jrg8m2+DKL37xLnR1vzgC9Y583Ha8aeH68KqcV0ufEKjyzQ7vlWuKXDSdL08Ec0a9q2f/HdCrj99BC4JLFXQeuon+G2PIhzyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TyNo5Bc7lrDxAv2BZZXJU2XzVBZr/nI/mBhlXkRJB74=;
 b=3cyEvYmh57RRaPZWjon2UQ8317/U+BooNxZw05tsrd24/eUvqVlGSHxq+1sQoxCPM8HOGZrnU5aFgLl/N8GmFSSReCkOB4y7yKFyPICUOyxrL+S1vSSJUTqOae+Nm+7Jpr59YZnJ/itmGdrcnCIPMlDjwWxNRZUANKC1zR4I5wc=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3404.eurprd08.prod.outlook.com (20.177.121.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.23; Tue, 8 Oct 2019 01:55:04 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0%6]) with mapi id 15.20.2327.023; Tue, 8 Oct 2019
 01:55:04 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Subject: RE: [PATCH v10 2/3] arm64: mm: implement arch_faults_on_old_pte() on
 arm64
Thread-Topic: [PATCH v10 2/3] arm64: mm: implement arch_faults_on_old_pte() on
 arm64
Thread-Index: AQHVdzKGx1YzEK84qECDJFJMWK8dTqdFvzkAgAALrYCACjIy4A==
Date: Tue, 8 Oct 2019 01:55:04 +0000
Message-ID: <DB7PR08MB308265EB3ED2465D2471B492F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-3-justin.he@arm.com>
 <20191001125031.7ddm5dlwss6m3dth@willie-the-truck>
 <20191001143219.018281be@why>
In-Reply-To: <20191001143219.018281be@why>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: fdf33e25-d274-46d6-909d-7dcfd327ee25.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 348f9cd5-85dc-4387-32eb-08d74b92920c
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: DB7PR08MB3404:|DB7PR08MB3404:|VI1PR0801MB1712:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB17124687400E175DD8F1185EF79A0@VI1PR0801MB1712.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 01842C458A
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(346002)(376002)(136003)(13464003)(199004)(189003)(66446008)(2906002)(102836004)(76116006)(4326008)(64756008)(229853002)(66946007)(11346002)(486006)(256004)(14444005)(66556008)(66476007)(6246003)(3846002)(476003)(6436002)(6116002)(86362001)(9686003)(66066001)(186003)(6306002)(26005)(55016002)(446003)(55236004)(6506007)(53546011)(305945005)(8936002)(7416002)(7696005)(76176011)(110136005)(99286004)(25786009)(966005)(33656002)(5660300002)(71200400001)(478600001)(52536014)(74316002)(54906003)(14454004)(71190400001)(8676002)(81156014)(7736002)(316002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3404;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: NN6wi+8zqm4PGN+FXz7E3N5S75V+QCqGGDf8Zt3S0/DUZRRSHisH0q8u9fc9fkR0dbc24r0L6pneRrb5JADNVYkDf6KaV45j5uWdarn4HQoxYWxks8DllqUJmqOYWOlw9C2roBrIv/qJraw51c/U3/NSzXCojnGgqkjJfZ1WERxkIN8A+4FXk7yrIknwKvS8P31W9dNDW5P1KDTb33Kzmu+AJcAe0AzEqGk0ZppejMTM75YlJBsfVsY/VqN5/eSMWfjKnmhTc1IoUuGdTODobz7IDWSjqCZoB5ovSLERbKsnOW1nhBTnSl8TbPPhjJ/f9BFjbhBDk5S+fpJodkMR66IsUyCdJ7MEpFf3rsOL6nJuGKCygpCEomkHQpQdkGBT+oyiFNeGcYKipJmliYZYRpFrx51SDcBh8GHoQzZowMQXhzMrWp5Hcv3voQanSKPvsEt4fPR597+OvPThbByLxA==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3404
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT014.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(376002)(396003)(199004)(189003)(13464003)(5660300002)(23696002)(436003)(305945005)(7736002)(6506007)(52536014)(81166006)(86362001)(76176011)(8676002)(53546011)(76130400001)(70206006)(14444005)(6246003)(81156014)(25786009)(3846002)(4326008)(54906003)(47136003)(6116002)(26005)(70586007)(229853002)(47776003)(2906002)(74316002)(33656002)(356004)(63350400001)(966005)(26826003)(9686003)(336012)(110136005)(11346002)(446003)(8936002)(48336001)(6306002)(66066001)(50466002)(14454004)(7696005)(186003)(126002)(55016002)(316002)(36906005)(99286004)(476003)(486006)(22756006)(102836004)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1712;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 470be971-c57a-4ccd-a9ce-08d74b9289ec
NoDisclaimer: True
X-Forefront-PRVS: 01842C458A
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TGJFWLyIyItOOAbxRVftLlSRv5LhfkBM+gXk66WdiZGSKzJE8IYsxq3hZ+pQsFMdBCdF2uPffdZwH6d/GvIE7UH+QHEJobeK3aNjS9XaPLpPy8MpZWjCrsQ4JEMUGtiMmcEnWPpRPMwyzH4p4TBD2SB/Bzsq9bvRUyb7J0exdq9SIW7XXWa4exDHbo4pmsJy/dOlfqXBPXbnLlC2MGpji6NxAAYqULrWpDvPbIgokrUHThePkBkR9INsu3myWjzNBFRQqMiuTtPekjcnw+RX3ES5Y0VZ117Pzum3Y6iC3PFVlshyTUdffxDo61TlLgO2UNltQ4H9inCYqZzzMkPEwtV+VRtKX3/OnZwBcLX787r/+TmF1lqq1NxxBEmUH5Kx4Bj102sKfWbKGpV5XpkNs3TXYSkLeZDJ0qqJu/bcq3f9aiL3IC4oGA6hoV5sltiyLmPRUghg6/piQq69J7SJTA==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2019 01:55:18.3205 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 348f9cd5-85dc-4387-32eb-08d74b92920c
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1712
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_185527_780509_DA751905 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, nd <nd@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgV2lsbCBhbmQgTWFyYw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnE6jEw1MIxyNUgMjE6
MzINCj4gVG86IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+DQo+IENjOiBKdXN0aW4gSGUg
KEFybSBUZWNobm9sb2d5IENoaW5hKSA8SnVzdGluLkhlQGFybS5jb20+OyBDYXRhbGluDQo+IE1h
cmluYXMgPENhdGFsaW4uTWFyaW5hc0Bhcm0uY29tPjsgTWFyayBSdXRsYW5kDQo+IDxNYXJrLlJ1
dGxhbmRAYXJtLmNvbT47IEphbWVzIE1vcnNlIDxKYW1lcy5Nb3JzZUBhcm0uY29tPjsNCj4gTWF0
dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+OyBLaXJpbGwgQS4gU2h1dGVtb3YNCj4g
PGtpcmlsbC5zaHV0ZW1vdkBsaW51eC5pbnRlbC5jb20+OyBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmc7DQo+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LW1t
QGt2YWNrLm9yZzsgUHVuaXQgQWdyYXdhbA0KPiA8cHVuaXRhZ3Jhd2FsQGdtYWlsLmNvbT47IFRo
b21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPjsNCj4gQW5kcmV3IE1vcnRvbiA8YWtw
bUBsaW51eC1mb3VuZGF0aW9uLm9yZz47IGhlamlhbmV0QGdtYWlsLmNvbTsgS2FseQ0KPiBYaW4g
KEFybSBUZWNobm9sb2d5IENoaW5hKSA8S2FseS5YaW5AYXJtLmNvbT4NCj4gU3ViamVjdDogUmU6
IFtQQVRDSCB2MTAgMi8zXSBhcm02NDogbW06IGltcGxlbWVudA0KPiBhcmNoX2ZhdWx0c19vbl9v
bGRfcHRlKCkgb24gYXJtNjQNCj4gDQo+IE9uIFR1ZSwgMSBPY3QgMjAxOSAxMzo1MDozMiArMDEw
MA0KPiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPiB3cm90ZToNCj4gDQo+ID4gT24gTW9u
LCBTZXAgMzAsIDIwMTkgYXQgMDk6NTc6MzlBTSArMDgwMCwgSmlhIEhlIHdyb3RlOg0KPiA+ID4g
T24gYXJtNjQgd2l0aG91dCBoYXJkd2FyZSBBY2Nlc3MgRmxhZywgY29weWluZyBmcm9tdXNlciB3
aWxsIGZhaWwNCj4gYmVjYXVzZQ0KPiA+ID4gdGhlIHB0ZSBpcyBvbGQgYW5kIGNhbm5vdCBiZSBt
YXJrZWQgeW91bmcuIFNvIHdlIGFsd2F5cyBlbmQgdXAgd2l0aA0KPiB6ZXJvZWQNCj4gPiA+IHBh
Z2UgYWZ0ZXIgZm9yaygpICsgQ29XIGZvciBwZm4gbWFwcGluZ3MuIHdlIGRvbid0IGFsd2F5cyBo
YXZlIGENCj4gPiA+IGhhcmR3YXJlLW1hbmFnZWQgYWNjZXNzIGZsYWcgb24gYXJtNjQuDQo+ID4g
Pg0KPiA+ID4gSGVuY2UgaW1wbGVtZW50IGFyY2hfZmF1bHRzX29uX29sZF9wdGUgb24gYXJtNjQg
dG8gaW5kaWNhdGUgdGhhdCBpdA0KPiBtaWdodA0KPiA+ID4gY2F1c2UgcGFnZSBmYXVsdCB3aGVu
IGFjY2Vzc2luZyBvbGQgcHRlLg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEppYSBIZSA8
anVzdGluLmhlQGFybS5jb20+DQo+ID4gPiBSZXZpZXdlZC1ieTogQ2F0YWxpbiBNYXJpbmFzIDxj
YXRhbGluLm1hcmluYXNAYXJtLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIGFyY2gvYXJtNjQvaW5j
bHVkZS9hc20vcGd0YWJsZS5oIHwgMTQgKysrKysrKysrKysrKysNCj4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMTQgaW5zZXJ0aW9ucygrKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2luY2x1ZGUvYXNtL3BndGFibGUuaA0KPiBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0
YWJsZS5oDQo+ID4gPiBpbmRleCA3NTc2ZGYwMGViNTAuLmU5NmZiODJmNjJkZSAxMDA2NDQNCj4g
PiA+IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS5oDQo+ID4gPiArKysgYi9h
cmNoL2FybTY0L2luY2x1ZGUvYXNtL3BndGFibGUuaA0KPiA+ID4gQEAgLTg4NSw2ICs4ODUsMjAg
QEAgc3RhdGljIGlubGluZSB2b2lkIHVwZGF0ZV9tbXVfY2FjaGUoc3RydWN0DQo+IHZtX2FyZWFf
c3RydWN0ICp2bWEsDQo+ID4gPiAgI2RlZmluZSBwaHlzX3RvX3R0YnIoYWRkcikJKGFkZHIpDQo+
ID4gPiAgI2VuZGlmDQo+ID4gPg0KPiA+ID4gKy8qDQo+ID4gPiArICogT24gYXJtNjQgd2l0aG91
dCBoYXJkd2FyZSBBY2Nlc3MgRmxhZywgY29weWluZyBmcm9tIHVzZXIgd2lsbCBmYWlsDQo+IGJl
Y2F1c2UNCj4gPiA+ICsgKiB0aGUgcHRlIGlzIG9sZCBhbmQgY2Fubm90IGJlIG1hcmtlZCB5b3Vu
Zy4gU28gd2UgYWx3YXlzIGVuZCB1cA0KPiB3aXRoIHplcm9lZA0KPiA+ID4gKyAqIHBhZ2UgYWZ0
ZXIgZm9yaygpICsgQ29XIGZvciBwZm4gbWFwcGluZ3MuIFdlIGRvbid0IGFsd2F5cyBoYXZlIGEN
Cj4gPiA+ICsgKiBoYXJkd2FyZS1tYW5hZ2VkIGFjY2VzcyBmbGFnIG9uIGFybTY0Lg0KPiA+ID4g
KyAqLw0KPiA+ID4gK3N0YXRpYyBpbmxpbmUgYm9vbCBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKHZv
aWQpDQo+ID4gPiArew0KPiA+ID4gKwlXQVJOX09OKHByZWVtcHRpYmxlKCkpOw0KPiA+ID4gKw0K
PiA+ID4gKwlyZXR1cm4gIWNwdV9oYXNfaHdfYWYoKTsNCj4gPiA+ICt9DQo+ID4NCj4gPiBEb2Vz
IHRoaXMgd29yayBjb3JyZWN0bHkgaW4gYSBLVk0gZ3Vlc3Q/IChpLmUuIGlzIHRoZSBNTUZSIHNh
bml0aXNlZCBpbg0KPiB0aGF0DQo+ID4gY2FzZSwgZGVzcGl0ZSBub3QgYmVpbmcgdGhlIGNhc2Ug
b24gdGhlIGhvc3Q/KQ0KPiANCj4gWXVwLCBhbGwgdGhlIDY0Yml0IE1NRlJzIGFyZSB0cmFwcGVk
IChIQ1JfRUwyLlRJRDMgaXMgc2V0IGZvciBhbg0KPiBBQXJjaDY0IGd1ZXN0KSwgYW5kIHdlIHJl
dHVybiB0aGUgc2FuaXRpc2VkIHZlcnNpb24uDQpUaGFua3MgZm9yIE1hcmMncyBleHBsYW5hdGlv
bi4gSSB2ZXJpZmllZCB0aGUgcGF0Y2ggc2VyaWVzIG9uIGEga3ZtIGd1ZXN0ICgtTSB2aXJ0KQ0K
d2l0aCBzaW11bGF0ZWQgbnZkaW1tIGRldmljZSBjcmVhdGVkIGJ5IHFlbXUuIFRoZSBob3N0IGlz
IFRodW5kZXJYMiBhYXJjaDY0Lg0KDQo+IA0KPiBCdXQgdGhhdCdzIGFuIGludGVyZXN0aW5nIHJl
bWFyazogd2UncmUgbm93IHRyYWRpbmcgYW4gZXh0cmEgZmF1bHQgb24NCj4gQ1BVcyB0aGF0IGRv
IG5vdCBzdXBwb3J0IEhXQUZEQlMgZm9yIGEgZ3VhcmFudGVlZCB0cmFwIGZvciBlYWNoIGFuZA0K
PiBldmVyeSBndWVzdCB1bmRlciB0aGUgc3VuIHRoYXQgd2lsbCBoaXQgdGhlIENPVyBwYXRoLi4u
DQo+IA0KPiBNeSBndXQgZmVlbGluZyBpcyB0aGF0IHRoaXMgaXMgZ29pbmcgdG8gYmUgcHJldHR5
IHZpc2libGUuIEppYSwgZG8geW91DQo+IGhhdmUgYW55IG51bWJlcnMgZm9yIHRoaXMga2luZCBv
ZiBiZWhhdmlvdXI/DQpJdCBpcyBub3QgYSBjb21tb24gQ09XIHBhdGgsIGJ1dCBhIENPVyBmb3Ig
UEZOIG1hcHBpbmcgcGFnZXMgb25seS4NCkkgYWRkIGEgZ19jb3VudGVyIGJlZm9yZSBwdGVfbWt5
b3VuZyBpbiBmb3JjZV9ta3lvdW5ne30gd2hlbiB0ZXN0aW5nIA0Kdm1tYWxsb2NfZm9yayBhdCBb
MV0uDQoNCkluIHRoaXMgdGVzdCBjYXNlLCBpdCB3aWxsIHN0YXJ0IE0gZm9yayBwcm9jZXNzZXMg
YW5kIE4gcHRocmVhZHMuIFRoZSBkZWZhdWx0IGlzDQpNPTIsTj00LiB0aGUgZ19jb3VudGVyIGlz
IGFib3V0IDI0MSwgdGhhdCBpcyBpdCB3aWxsIGhpdCBteSBwYXRjaCBzZXJpZXMgZm9yIDI0MQ0K
dGltZXMuDQpJZiBJIHNldCBNPTIwIGFuZCBOPTQwIGZvciBURVNUMywgdGhlIGdfY291bnRlciBp
cyBhYm91dCAxNDkyLg0KICANClsxXSBodHRwczovL2dpdGh1Yi5jb20vcG1lbS9wbWRrL3RyZWUv
bWFzdGVyL3NyYy90ZXN0L3ZtbWFsbG9jX2ZvcmsNCg0KDQotLQ0KQ2hlZXJzLA0KSnVzdGluIChK
aWEgSGUpDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
