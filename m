Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE79B91A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 16:24:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/mcFhuOfj/ZS7SxZpku5YUEAXGTezbogOyrcWQbYtE=; b=f8JQOn0bIyfB9T
	InnSBLw7DZ4t6i1NlXIsdWLHSaf4LO8ehfDmvVUuychP6Qd+tOBG8mO4WEIfezS0S81jxt325fiZc
	rrQnQX36GLpBhwRMJSFRbafipnJEJQxxuBeJTHx/TfwoGJfYQwyHvykLvpE2QOdsg7Gyf3vY+8d+f
	TCkO8AP2YhLa30THxYdbPe2VKyTb1acO7GvqO3uh6E4qZZDD9rI4Qug5tTy0yYlXqf1xIbLPIzxja
	kR5vLpP9A5h5nyJON1WHc+fQjQaoeeuZ0ThBWNU5vBanT6szSViVqd04k0Alg7RIrBLvRK+zCXsIg
	uLR3sZpim76LcpTXYhnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJpl-0002lO-Su; Fri, 20 Sep 2019 14:24:29 +0000
Received: from mail-eopbgr50046.outbound.protection.outlook.com ([40.107.5.46]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJpd-0002kh-My
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 14:24:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N5ytb+0I/I+il0Yr3WnyX4CihE4CwuhyiaJh0cP4Sns=;
 b=ni7nbs5M01N1w8+hQjF99jdmGwq1AGEtPmzj72XFpbUd3AL6EK4MSesAdFKreob4Lujq75fVRa71tPKWTOPAhiXlyg52XO0fOfQWAuo34Xd/ADWMI6KxiOuoY7hRU0Xa/iQLy0f+xqPWtrcrGx8/K8XexjnUJXR7AbKpfO2C0po=
Received: from VI1PR0802CA0040.eurprd08.prod.outlook.com
 (2603:10a6:800:a9::26) by VE1PR08MB4685.eurprd08.prod.outlook.com
 (2603:10a6:802:ae::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.18; Fri, 20 Sep
 2019 14:24:14 +0000
Received: from AM5EUR03FT051.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::205) by VI1PR0802CA0040.outlook.office365.com
 (2603:10a6:800:a9::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.18 via Frontend
 Transport; Fri, 20 Sep 2019 14:24:14 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT051.mail.protection.outlook.com (10.152.16.246) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20 via Frontend Transport; Fri, 20 Sep 2019 14:24:12 +0000
Received: ("Tessian outbound d5a1f2820a4f:v31");
 Fri, 20 Sep 2019 14:24:10 +0000
X-CR-MTA-TID: 64aa7808
Received: from 10583a20677c.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.12.51]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 4B71E7A5-D560-4E3A-9037-104A8F31A7E2.1; 
 Fri, 20 Sep 2019 14:24:05 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04lp2051.outbound.protection.outlook.com [104.47.12.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 10583a20677c.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 20 Sep 2019 14:24:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YtG757f6Bw1s1rOksLO+aAsaldXIGWOjv8qWZziJxBWbVD3rWADYfzg3VuMGMXGHjlubS08Pf4PAbMAax5nWWJHz8cXFeZueBkR9sKTq+DRwERXHtW/d47X/wSMtjFSKWQel3NttP+x962thHg3vQb1Iwya3vU9TogEOAlwPOha2b7Ukt/wNWe+bTsRHUEzFKfiS0CUK/2W2Lbi05xYOpm+uTsgAzcGjpUtc4bHDBUd3QSquddoLYSPEoAaKZPdrkfFXW66hy5YPKT3F3OjT2b15cM6PxldG16A8o9fD34se8qce4MF+5wRsSYqy1fco6dYmUa0x7f16RGRZcBM0dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N5ytb+0I/I+il0Yr3WnyX4CihE4CwuhyiaJh0cP4Sns=;
 b=GzN/ha5ildakkEIkjPn8QnDAkP9reYcQnN7kvUuQfTVS/jAzq1eeLgfntddaUo/+z8VI6vhfE8PZBs87mCvQneDyWnUYkR0Rdn7JaaN8otqrFTEQ6gN9pui+XoRK+rRqlnfuCNx+m+g3T0bCw81Iwgg/jHKRrOPOe6kIDMH5nc31DaoyVzA/uZ9wLcBaul2xabR9NQrnDOHnWVWYNgst8Ima6npdCloWXcWO+NmE0lnp5DPmREwT2XcNcT2OU4olCl1lxTqkos2waWFfY1X0jWDdcx/aSI0cOev3rInbP2fqwQmMuHc0KTBGk1BtQc1XpPPOkzDEZM3G+51u8drc1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N5ytb+0I/I+il0Yr3WnyX4CihE4CwuhyiaJh0cP4Sns=;
 b=ni7nbs5M01N1w8+hQjF99jdmGwq1AGEtPmzj72XFpbUd3AL6EK4MSesAdFKreob4Lujq75fVRa71tPKWTOPAhiXlyg52XO0fOfQWAuo34Xd/ADWMI6KxiOuoY7hRU0Xa/iQLy0f+xqPWtrcrGx8/K8XexjnUJXR7AbKpfO2C0po=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3324.eurprd08.prod.outlook.com (52.135.128.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.15; Fri, 20 Sep 2019 14:24:04 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::3dcd:d5e4:c17:489d]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::3dcd:d5e4:c17:489d%5]) with mapi id 15.20.2284.023; Fri, 20 Sep 2019
 14:24:04 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: "Kirill A. Shutemov" <kirill@shutemov.name>
Subject: RE: [PATCH v7 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Thread-Topic: [PATCH v7 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Thread-Index: AQHVb7sLaOwb1dEY50+Jn8LDfSzGEKc0ndmAgAAAN+A=
Date: Fri, 20 Sep 2019 14:24:04 +0000
Message-ID: <DB7PR08MB3082D3733CBACE61C50AD13EF7880@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190920135437.25622-1-justin.he@arm.com>
 <20190920135437.25622-4-justin.he@arm.com>
 <20190920142113.52mdiflo4yghlsmu@box>
In-Reply-To: <20190920142113.52mdiflo4yghlsmu@box>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 8c3a65df-0bd5-4fde-8b4c-6568642a7620.0
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 3b5e2e4d-97bd-4f63-d932-08d73dd63593
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR08MB3324; 
X-MS-TrafficTypeDiagnostic: DB7PR08MB3324:|VE1PR08MB4685:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <VE1PR08MB46857A820CA0CD62EEF82B8DF7880@VE1PR08MB4685.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 0166B75B74
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(366004)(136003)(346002)(189003)(199004)(13464003)(76116006)(66066001)(14444005)(25786009)(6436002)(74316002)(6506007)(6916009)(71200400001)(256004)(305945005)(99286004)(186003)(55236004)(7736002)(102836004)(26005)(6306002)(316002)(71190400001)(53546011)(55016002)(8936002)(6246003)(54906003)(5660300002)(66556008)(66476007)(478600001)(64756008)(229853002)(486006)(7696005)(6116002)(11346002)(966005)(476003)(66574012)(4326008)(86362001)(66946007)(3846002)(52536014)(9686003)(76176011)(14454004)(81166006)(446003)(2906002)(33656002)(66446008)(8676002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3324;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: sfjH1eLdOIr+wxLcjOH7XGebrCnzegD42vg1ikq2fFbz95NxAgK42zsCOKgv3AT4ONicbQkuE4JoTt/SRCtRZVRFjkUNn7CgGURakf5/HwmFHkERdT9KDIB7XbAKEGoQGcNeZ39nw5ylTs+HRvE1pMQC12x0wPCJq1b0fvJvW30eVc8Ov0FLqRcjklpBth2mF4GTGRFlflWIeiUnpM1KrJcGciG/6caZD+F4RiaNy912mIXj08H2ZP9y+rmguemnIkzGWoFJcQkwvdLuq1/e4ssdD6iaC9DanwguaqTqx0CDTQfmd04LBXb+hJ4CIuhM3FgIG4FHVwvTocZ4gZhAl9SCHhM4HsjC644EoWr/gTbl67v58G5Bcxk4dBXsO87AvPkDx/y9r6YLk8CT4Q1RCb/zhZYN6k6q80rdW7LOR4M=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3324
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT051.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(376002)(199004)(189003)(13464003)(2906002)(3846002)(6116002)(66574012)(99286004)(14454004)(76176011)(23676004)(2486003)(186003)(53546011)(6506007)(7696005)(26826003)(966005)(102836004)(25786009)(26005)(478600001)(66066001)(33656002)(47776003)(81166006)(81156014)(8676002)(8936002)(86362001)(50466002)(6306002)(9686003)(55016002)(6246003)(70586007)(22756006)(76130400001)(70206006)(107886003)(5660300002)(52536014)(14444005)(4326008)(6862004)(36906005)(356004)(126002)(54906003)(316002)(486006)(63350400001)(436003)(476003)(74316002)(11346002)(229853002)(446003)(305945005)(336012)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4685;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 2532dadd-350c-4375-aeea-08d73dd63097
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR08MB4685; 
NoDisclaimer: True
X-Forefront-PRVS: 0166B75B74
X-Microsoft-Antispam-Message-Info: 88IJh7opLBnom+LH+/A1/ZmnYE8UotejGdKl5tcKj621iySF6moR0Gy+2YlP37eJbGqg7U8KRn7qhouyq8A1e/LTrdR+otS+U/oAE9LOdMevzXs8uhOZV1+xxysizaCu5DRY52wR+jCssyPGIx0aHRMxTnwKynGGucuoIwfOEZpxnNbMShIMHJVf3MwmhotRZJ9cfZR5r79MB8Jwxhdmcw880thWkNGI7m5JlOzCk8girSdXHfQcYzpiCQyG4RDjF4gjX5tdxYM0OpIXgJM3Fd4DCsPnAXxYjhnAc30zvUt8O832MuExCDfC7wgqDNAXZX2YpIGzq+59EURdEyGj9ffTv8YHQZWNC6gcARUDg0O/mkGqznHmspLjvBmLZVdEC98pPoFXKJxHBlpn+jpzhFxL76sYV53LYjeQFXx9s7g=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2019 14:24:12.6831 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b5e2e4d-97bd-4f63-d932-08d73dd63593
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4685
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_072421_812726_CACA41F3 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.46 listed in list.dnswl.org]
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
Cc: "linux-mm@kvack.org" <linux-mm@kvack.org>, nd <nd@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hejianet@gmail.com" <hejianet@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhhbmtzIGZvciB5b3VyIHBhdGVudCByZXZpZXcg8J+Yig0KDQotLQ0KQ2hlZXJzLA0KSnVzdGlu
IChKaWEgSGUpDQoNCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEtp
cmlsbCBBLiBTaHV0ZW1vdiA8a2lyaWxsQHNodXRlbW92Lm5hbWU+DQo+IFNlbnQ6IDIwMTnlubQ5
5pyIMjDml6UgMjI6MjENCj4gVG86IEp1c3RpbiBIZSAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEpIDxK
dXN0aW4uSGVAYXJtLmNvbT4NCj4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8Q2F0YWxpbi5NYXJpbmFz
QGFybS5jb20+OyBXaWxsIERlYWNvbg0KPiA8d2lsbEBrZXJuZWwub3JnPjsgTWFyayBSdXRsYW5k
IDxNYXJrLlJ1dGxhbmRAYXJtLmNvbT47IEphbWVzIE1vcnNlDQo+IDxKYW1lcy5Nb3JzZUBhcm0u
Y29tPjsgTWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz47IE1hdHRoZXcNCj4gV2lsY294IDx3
aWxseUBpbmZyYWRlYWQub3JnPjsgS2lyaWxsIEEuIFNodXRlbW92DQo+IDxraXJpbGwuc2h1dGVt
b3ZAbGludXguaW50ZWwuY29tPjsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Ow0KPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC1tbUBrdmFjay5vcmc7IFN1
enVraSBQb3Vsb3NlDQo+IDxTdXp1a2kuUG91bG9zZUBhcm0uY29tPjsgUHVuaXQgQWdyYXdhbCA8
cHVuaXRhZ3Jhd2FsQGdtYWlsLmNvbT47DQo+IEFuc2h1bWFuIEtoYW5kdWFsIDxBbnNodW1hbi5L
aGFuZHVhbEBhcm0uY29tPjsgQWxleCBWYW4gQnJ1bnQNCj4gPGF2YW5icnVudEBudmlkaWEuY29t
PjsgUm9iaW4gTXVycGh5IDxSb2Jpbi5NdXJwaHlAYXJtLmNvbT47DQo+IFRob21hcyBHbGVpeG5l
ciA8dGdseEBsaW51dHJvbml4LmRlPjsgQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC0NCj4gZm91
bmRhdGlvbi5vcmc+OyBKw6lyw7RtZSBHbGlzc2UgPGpnbGlzc2VAcmVkaGF0LmNvbT47IFJhbHBo
IENhbXBiZWxsDQo+IDxyY2FtcGJlbGxAbnZpZGlhLmNvbT47IGhlamlhbmV0QGdtYWlsLmNvbTsg
S2FseSBYaW4gKEFybSBUZWNobm9sb2d5DQo+IENoaW5hKSA8S2FseS5YaW5AYXJtLmNvbT47IG5k
IDxuZEBhcm0uY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY3IDMvM10gbW06IGZpeCBkb3Vi
bGUgcGFnZSBmYXVsdCBvbiBhcm02NCBpZiBQVEVfQUYgaXMNCj4gY2xlYXJlZA0KPiANCj4gT24g
RnJpLCBTZXAgMjAsIDIwMTkgYXQgMDk6NTQ6MzdQTSArMDgwMCwgSmlhIEhlIHdyb3RlOg0KPiA+
IFdoZW4gd2UgdGVzdGVkIHBtZGsgdW5pdCB0ZXN0IFsxXSB2bW1hbGxvY19mb3JrIFRFU1QxIGlu
IGFybTY0IGd1ZXN0LA0KPiB0aGVyZQ0KPiA+IHdpbGwgYmUgYSBkb3VibGUgcGFnZSBmYXVsdCBp
biBfX2NvcHlfZnJvbV91c2VyX2luYXRvbWljIG9mDQo+IGNvd191c2VyX3BhZ2UuDQo+ID4NCj4g
PiBCZWxvdyBjYWxsIHRyYWNlIGlzIGZyb20gYXJtNjQgZG9fcGFnZV9mYXVsdCBmb3IgZGVidWdn
aW5nIHB1cnBvc2UNCj4gPiBbICAxMTAuMDE2MTk1XSBDYWxsIHRyYWNlOg0KPiA+IFsgIDExMC4w
MTY4MjZdICBkb19wYWdlX2ZhdWx0KzB4NWE0LzB4NjkwDQo+ID4gWyAgMTEwLjAxNzgxMl0gIGRv
X21lbV9hYm9ydCsweDUwLzB4YjANCj4gPiBbICAxMTAuMDE4NzI2XSAgZWwxX2RhKzB4MjAvMHhj
NA0KPiA+IFsgIDExMC4wMTk0OTJdICBfX2FyY2hfY29weV9mcm9tX3VzZXIrMHgxODAvMHgyODAN
Cj4gPiBbICAxMTAuMDIwNjQ2XSAgZG9fd3BfcGFnZSsweGIwLzB4ODYwDQo+ID4gWyAgMTEwLjAy
MTUxN10gIF9faGFuZGxlX21tX2ZhdWx0KzB4OTk0LzB4MTMzOA0KPiA+IFsgIDExMC4wMjI2MDZd
ICBoYW5kbGVfbW1fZmF1bHQrMHhlOC8weDE4MA0KPiA+IFsgIDExMC4wMjM1ODRdICBkb19wYWdl
X2ZhdWx0KzB4MjQwLzB4NjkwDQo+ID4gWyAgMTEwLjAyNDUzNV0gIGRvX21lbV9hYm9ydCsweDUw
LzB4YjANCj4gPiBbICAxMTAuMDI1NDIzXSAgZWwwX2RhKzB4MjAvMHgyNA0KPiA+DQo+ID4gVGhl
IHB0ZSBpbmZvIGJlZm9yZSBfX2NvcHlfZnJvbV91c2VyX2luYXRvbWljIGlzIChQVEVfQUYgaXMg
Y2xlYXJlZCk6DQo+ID4gW2ZmZmY5YjAwNzAwMF0gcGdkPTAwMDAwMDAyM2Q0ZjgwMDMsIHB1ZD0w
MDAwMDAwMjNkYTliMDAzLA0KPiBwbWQ9MDAwMDAwMDIzZDRiMzAwMywgcHRlPTM2MDAwMDI5ODYw
N2JkMw0KPiA+DQo+ID4gQXMgdG9sZCBieSBDYXRhbGluOiAiT24gYXJtNjQgd2l0aG91dCBoYXJk
d2FyZSBBY2Nlc3MgRmxhZywgY29weWluZyBmcm9tDQo+ID4gdXNlciB3aWxsIGZhaWwgYmVjYXVz
ZSB0aGUgcHRlIGlzIG9sZCBhbmQgY2Fubm90IGJlIG1hcmtlZCB5b3VuZy4gU28gd2UNCj4gPiBh
bHdheXMgZW5kIHVwIHdpdGggemVyb2VkIHBhZ2UgYWZ0ZXIgZm9yaygpICsgQ29XIGZvciBwZm4g
bWFwcGluZ3MuIHdlDQo+ID4gZG9uJ3QgYWx3YXlzIGhhdmUgYSBoYXJkd2FyZS1tYW5hZ2VkIGFj
Y2VzcyBmbGFnIG9uIGFybTY0LiINCj4gPg0KPiA+IFRoaXMgcGF0Y2ggZml4IGl0IGJ5IGNhbGxp
bmcgcHRlX21reW91bmcuIEFsc28sIHRoZSBwYXJhbWV0ZXIgaXMNCj4gPiBjaGFuZ2VkIGJlY2F1
c2Ugdm1mIHNob3VsZCBiZSBwYXNzZWQgdG8gY293X3VzZXJfcGFnZSgpDQo+ID4NCj4gPiBBZGQg
YSBXQVJOX09OX09OQ0Ugd2hlbiBfX2NvcHlfZnJvbV91c2VyX2luYXRvbWljKCkgcmV0dXJucyBl
cnJvcg0KPiA+IGluIGNhc2UgdGhlcmUgY2FuIGJlIHNvbWUgb2JzY3VyZSB1c2UtY2FzZS4oYnkg
S2lyaWxsKQ0KPiA+DQo+ID4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9wbWVtL3BtZGsvdHJlZS9t
YXN0ZXIvc3JjL3Rlc3Qvdm1tYWxsb2NfZm9yaw0KPiA+DQo+ID4gUmVwb3J0ZWQtYnk6IFlpYm8g
Q2FpIDxZaWJvLkNhaUBhcm0uY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEppYSBIZSA8anVzdGlu
LmhlQGFybS5jb20+DQo+IA0KPiBBY2tlZC1ieTogS2lyaWxsIEEuIFNodXRlbW92IDxraXJpbGwu
c2h1dGVtb3ZAbGludXguaW50ZWwuY29tPg0KPiANCj4gLS0NCj4gIEtpcmlsbCBBLiBTaHV0ZW1v
dg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
