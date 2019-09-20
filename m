Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30ECAB88D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 03:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgGPe/i6K4YhHHIn5XMH3fY1v0IF+BTUHQtsmbZP/KU=; b=Qf/fUyXv4IQ2UC
	kuyA8TEnj5+UCgqC5Yhk+01zat7eEm9w75D0DxXYpwPxWKPHdyFNqWlFgdcQHJhfyjqk2eFqkekLp
	xewVZupBl/dmJQb0CP4JJjbWUdK1CRUSXPgoEjW/KF6VKUfJByb5lI/wDsRTxts/G0G7XxMcnL34L
	xz7ujqor+2Ei58YBEH47/nb0+r4tjt7ceAq0ha9LFFNHxkJl8xl1mQjr3AoknijVzIivwMR9DRbsM
	QQAGRjzrnMqIJ/W54krqOa+E0gd+uo0C7wK4BY7kWNmZQksFR1sP754H0cCQoKjO3Rfnl0nYFD8Yj
	asUqKIHa7f5a+h2PnqvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB7VV-0006Kh-K5; Fri, 20 Sep 2019 01:14:45 +0000
Received: from mail-mr2fra01on061f.outbound.protection.outlook.com
 ([2a01:111:f400:7e19::61f]
 helo=FRA01-MR2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB7VL-0006Jk-5R
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 01:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hASZ5lnA2fMYdbqtg2sSaBgIx1wRhRqbQ65d08lGlcM=;
 b=49gy/304BmQk4EIYIQRyUo3Lp1+QTNoU+A4OQKNfFhfyt73SY8ioqWyxHW8RgSZMFcBp/tKmcfidICIYoLHEIrWSNba7Tc7t1NYn49vZNA3Byu4voS6spMHh2TTN7q8C1bAHvy34a5o1ryW7rnzjK1/hMFqNsyKaLTme9uO4HIA=
Received: from HE1PR08CA0045.eurprd08.prod.outlook.com (2603:10a6:7:2a::16) by
 PR2PR08MB4811.eurprd08.prod.outlook.com (2603:10a6:101:21::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Fri, 20 Sep 2019 01:14:29 +0000
Received: from DB5EUR03FT036.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::205) by HE1PR08CA0045.outlook.office365.com
 (2603:10a6:7:2a::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20 via Frontend
 Transport; Fri, 20 Sep 2019 01:14:29 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT036.mail.protection.outlook.com (10.152.20.185) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20 via Frontend Transport; Fri, 20 Sep 2019 01:14:28 +0000
Received: ("Tessian outbound 5061e1b5386c:v31");
 Fri, 20 Sep 2019 01:14:23 +0000
X-CR-MTA-TID: 64aa7808
Received: from 5e7f0a330a35.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.1.56]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 3818456F-3F5B-41C3-9122-10F9A371D00A.1; 
 Fri, 20 Sep 2019 01:14:18 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01lp2056.outbound.protection.outlook.com [104.47.1.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5e7f0a330a35.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 20 Sep 2019 01:14:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J/8T7usVNZIh/RwbBmw3A3Z/zWRpFUSXS0/xvPDmd3PcS5zH4OjpSrkWPoOKoGhGI42qgjQyqvFf+4kRstSiUrOvx9OwCxnirbFZRA5OuIFPBf893TqKJUQxbU07JoupYl3io9KZ6cF79gOx8FGZ3kqE5SqyVjZN/h3MwoAewFAFMlWrJ+82xfPz6ksFumJq+lsFWmWh10FwQpIo+zL49hyUqwfqI3PWcSme3BzgBDWefYhEHpLRvKhwQ1lDrxF8diCgT2bbxXmOznhWorggCjLfUNxwizc7F0zC3csUG4axGOQ6rjfqm4obJlUDF6Cc8hp8oWBp61e4/UMO0a7ReQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HdwA5JR3lk+jkz/qW0qE0D9SduBsjQjieMfu1RVWDaI=;
 b=Kw0eCL98D55OOyyq0EIdCGOfOa4fMUFZOd9dk9grHUWC9++/xPxBCZjII55nhsu0QAuvI9lMWJsVqTBjLtxlkOmMLQMe/3C7Big2SntvqOq9KW4usYJN/Gp6mQD9TNQGZGFh/Lcv2MSN1FWaSnTgtQ+7lMNft+lNiBs9+BerpzXSbfoHJuB+58sMs8m1BuG2AM3pZbSu7W5MHLo2Z5AUCIumr9Y8wYjV56D2GG75/zoKTANvc/SceLTp0GiHNQBUQRc6cFsCxlkbUG3p8yOW7pKdmJP+H75ZeMUwL372VRDRVOeG/d0WIvVG/FTPl+StAaqKqMbpUt6GuhF/UCQelw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HdwA5JR3lk+jkz/qW0qE0D9SduBsjQjieMfu1RVWDaI=;
 b=KGPQVJaqzHl1rYlf0iKCCawCq2dl5AYta2m7Z0i8ueUa6VbFuPIxaChp+izgQLDc+g3kleKBRK05vhKMGN21dwgRw+Fu60Qz97WcyXyKnAoEQu81jMaJ+kwIzuPm6N7Zfv961pUXJA92cjX6h06r9Zv3iy/992tI8WSI7VqDs4Q=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3738.eurprd08.prod.outlook.com (20.178.46.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Fri, 20 Sep 2019 01:14:16 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::3dcd:d5e4:c17:489d]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::3dcd:d5e4:c17:489d%5]) with mapi id 15.20.2284.023; Fri, 20 Sep 2019
 01:14:16 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: RE: [PATCH v5 1/3] arm64: cpufeature: introduce helper cpu_has_hw_af()
Thread-Topic: [PATCH v5 1/3] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Thread-Index: AQHVbwUNnLlX77/LA0SD3jlpnLQKQKczMs0AgACQdBA=
Date: Fri, 20 Sep 2019 01:14:15 +0000
Message-ID: <DB7PR08MB3082C2800CC612FCF57242A4F7880@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190919161204.142796-1-justin.he@arm.com>
 <20190919161204.142796-2-justin.he@arm.com>
 <20190919163644.GD6472@arrakis.emea.arm.com>
In-Reply-To: <20190919163644.GD6472@arrakis.emea.arm.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 5986a0ef-d7e0-49a5-ba7a-06443398ca8a.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 49eaa102-cffe-4716-69c0-08d73d67e224
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR08MB3738; 
X-MS-TrafficTypeDiagnostic: DB7PR08MB3738:|DB7PR08MB3738:|PR2PR08MB4811:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <PR2PR08MB4811F89166557BF0D024B775F7880@PR2PR08MB4811.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:605;OLM:605;
x-forefront-prvs: 0166B75B74
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(376002)(39860400002)(13464003)(189003)(199004)(229853002)(2906002)(86362001)(54906003)(76116006)(7696005)(76176011)(71200400001)(81156014)(71190400001)(14454004)(66476007)(66946007)(8676002)(6116002)(81166006)(3846002)(25786009)(8936002)(6636002)(99286004)(478600001)(316002)(33656002)(446003)(53546011)(476003)(5660300002)(7736002)(11346002)(6506007)(305945005)(7416002)(55016002)(6246003)(256004)(66066001)(26005)(6862004)(6436002)(52536014)(102836004)(55236004)(186003)(486006)(74316002)(66556008)(64756008)(66446008)(4326008)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3738;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: PTkOyixXLXkIZpgXfQ1NdN7ALmXczU8NgNT8TvwQIDKqwfabzJWT30nZV0Od3CpVbudI7NfAqtNdgJ5iW6mpMywtmw20iadYd2kn16rlgwL22WT/fmfWNSg6KuNWETuZ0RKCEX0JbMflB4n9nggRhnZii4i9IwBvVzeu5w8N3LVktCoUxy7uiRI+eN7I2RsOpbj3O2k/HlBnclnsc5rRcKHae1t2/ESiGYPGGeZaF+8HyCxYKEW8OSqyycXHnuKuM7IbIRBZjdnKWfROPCk/RZ9GpLuMcN2s/rCPrZjFqIu20gIqeJCaP7e77TeZjHOVn3YjzeTKRQ+Q6aK44NJtTEDp93jCKx59HlknRJEAWvNkIZ8qv/osEPl3QLbsSpgOJXIQUf7AEIAwYpVv501Ig7VaEXE2uOGtNntboZvCRL0=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3738
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT036.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(346002)(376002)(199004)(189003)(40434004)(13464003)(81166006)(8676002)(336012)(9686003)(6116002)(26826003)(3846002)(22756006)(2906002)(4326008)(66066001)(74316002)(6246003)(55016002)(356004)(66574012)(5660300002)(7736002)(305945005)(316002)(54906003)(8936002)(99286004)(70586007)(102836004)(6636002)(25786009)(47776003)(6862004)(486006)(70206006)(76130400001)(478600001)(126002)(14444005)(52536014)(229853002)(33656002)(86362001)(5024004)(76176011)(81156014)(14454004)(7696005)(2486003)(6506007)(436003)(446003)(476003)(63350400001)(26005)(50466002)(11346002)(53546011)(186003)(23676004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:PR2PR08MB4811;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 35da8c21-1d57-4787-a947-08d73d67daef
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:PR2PR08MB4811; 
X-Forefront-PRVS: 0166B75B74
X-Microsoft-Antispam-Message-Info: /9MGX2v4FdkFWLOooDz14gsAcJc5IuZFP6oyWIjm+894ZiZAglaUNL/r/6TLlqYIU8lb0VF48qiQGJPG42CEU9tQkJoOFzbs1jcO8shSkC3DWXsMRYKT32BnX1mlWncbL7O87qGxbcft4dG1plTgIkN6nsqUAXinmjmxBnfJ4hlYzis5wp8oEhL3jvf3VLOhBsJ4uzxX03/Hw8xacXu6nc42eAeC8lQVQcYhLAP7+eGXaKwo94xe6yYkMRUlyrZ3k5f44AvXsSV6o/QAzhkpCLTVjClqldeVb7RSvdmdDLgS9b/Y3T8yQae6SiuDL7+Zt3OAKpW9ADBad3ltkeSETTLb9+BTKyeRBdgWnt7I3SAJqCN0zhjRxeJqNyOLpOJb2eo7SheIH2aJjNNn2SNM3mDKJP1rZmVqe7PwbWmt2mY=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2019 01:14:28.0687 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 49eaa102-cffe-4716-69c0-08d73d67e224
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4811
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_181435_208678_BCC7F836 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, "Kaly Xin
 \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 =?utf-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpIaSBDYXRhbGluDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IENhdGFs
aW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+DQo+IFNlbnQ6IDIwMTnlubQ55pyI
MjDml6UgMDozNw0KPiBUbzogSnVzdGluIEhlIChBcm0gVGVjaG5vbG9neSBDaGluYSkgPEp1c3Rp
bi5IZUBhcm0uY29tPg0KPiBDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz47IE1hcmsg
UnV0bGFuZA0KPiA8TWFyay5SdXRsYW5kQGFybS5jb20+OyBKYW1lcyBNb3JzZSA8SmFtZXMuTW9y
c2VAYXJtLmNvbT47IE1hcmMNCj4gWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+OyBNYXR0aGV3IFdp
bGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz47IEtpcmlsbCBBLg0KPiBTaHV0ZW1vdiA8a2lyaWxs
LnNodXRlbW92QGxpbnV4LmludGVsLmNvbT47IGxpbnV4LWFybS0NCj4ga2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LQ0KPiBtbUBr
dmFjay5vcmc7IFN1enVraSBQb3Vsb3NlIDxTdXp1a2kuUG91bG9zZUBhcm0uY29tPjsgUHVuaXQN
Cj4gQWdyYXdhbCA8cHVuaXRhZ3Jhd2FsQGdtYWlsLmNvbT47IEFuc2h1bWFuIEtoYW5kdWFsDQo+
IDxBbnNodW1hbi5LaGFuZHVhbEBhcm0uY29tPjsgQWxleCBWYW4gQnJ1bnQNCj4gPGF2YW5icnVu
dEBudmlkaWEuY29tPjsgUm9iaW4gTXVycGh5IDxSb2Jpbi5NdXJwaHlAYXJtLmNvbT47DQo+IFRo
b21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPjsgQW5kcmV3IE1vcnRvbiA8YWtwbUBs
aW51eC0NCj4gZm91bmRhdGlvbi5vcmc+OyBKw6lyw7RtZSBHbGlzc2UgPGpnbGlzc2VAcmVkaGF0
LmNvbT47IFJhbHBoIENhbXBiZWxsDQo+IDxyY2FtcGJlbGxAbnZpZGlhLmNvbT47IGhlamlhbmV0
QGdtYWlsLmNvbTsgS2FseSBYaW4gKEFybSBUZWNobm9sb2d5DQo+IENoaW5hKSA8S2FseS5YaW5A
YXJtLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2NSAxLzNdIGFybTY0OiBjcHVmZWF0dXJl
OiBpbnRyb2R1Y2UgaGVscGVyDQo+IGNwdV9oYXNfaHdfYWYoKQ0KPg0KPiBPbiBGcmksIFNlcCAy
MCwgMjAxOSBhdCAxMjoxMjowMkFNICswODAwLCBKaWEgSGUgd3JvdGU6DQo+ID4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYw0KPiBiL2FyY2gvYXJtNjQva2VybmVs
L2NwdWZlYXR1cmUuYw0KPiA+IGluZGV4IGIxZmRjNDg2YWVkOC4uZmIwZTk0MjVkMjg2IDEwMDY0
NA0KPiA+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYw0KPiA+ICsrKyBiL2Fy
Y2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYw0KPiA+IEBAIC0xMTQxLDYgKzExNDEsMTYgQEAg
c3RhdGljIGJvb2wgaGFzX2h3X2RibShjb25zdCBzdHJ1Y3QNCj4gYXJtNjRfY3B1X2NhcGFiaWxp
dGllcyAqY2FwLA0KPiA+ICAgICByZXR1cm4gdHJ1ZTsNCj4gPiAgfQ0KPiA+DQo+ID4gKy8qIERl
Y291cGxlIEFGIGZyb20gQUZEQk0uICovDQo+ID4gK2Jvb2wgY3B1X2hhc19od19hZih2b2lkKQ0K
PiA+ICt7DQo+ID4gKyAgIHJldHVybiAocmVhZF9jcHVpZChJRF9BQTY0TU1GUjFfRUwxKSAmIDB4
Zik7DQo+ID4gK30NCj4gPiArI2Vsc2UgLyogQ09ORklHX0FSTTY0X0hXX0FGREJNICovDQo+ID4g
K2Jvb2wgY3B1X2hhc19od19hZih2b2lkKQ0KPiA+ICt7DQo+ID4gKyAgIHJldHVybiBmYWxzZTsN
Cj4gPiArfQ0KPiA+ICAjZW5kaWYNCj4NCj4gUGxlYXNlIHBsYWNlIHRoaXMgZnVuY3Rpb24gaW4g
Y3B1ZmVhdHVyZS5oIGRpcmVjdGx5LCBubyBuZWVkIGZvciBhbg0KPiBhZGRpdGlvbmFsIGZ1bmN0
aW9uIGNhbGwuIFNvbWV0aGluZyBsaWtlOg0KPg0KPiBzdGF0aWMgaW5saW5lIGJvb2wgY3B1X2hh
c19od19hZih2b2lkKQ0KPiB7DQo+ICAgICAgIGlmIChJU19FTkFCTEVEKENPTkZJR19BUk02NF9I
V19BRkRCTSkpDQo+ICAgICAgICAgICAgICAgcmV0dXJuIHJlYWRfY3B1aWQoSURfQUE2NE1NRlIx
X0VMMSkgJiAweGY7DQo+ICAgICAgIHJldHVybiBmYWxzZTsNCj4gfQ0KPg0KT2ssIHRoYW5rcw0K
DQotLQ0KQ2hlZXJzLA0KSnVzdGluIChKaWEgSGUpDQoNCg0KPiAtLQ0KPiBDYXRhbGluDQpJTVBP
UlRBTlQgTk9USUNFOiBUaGUgY29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IGF0dGFjaG1l
bnRzIGFyZSBjb25maWRlbnRpYWwgYW5kIG1heSBhbHNvIGJlIHByaXZpbGVnZWQuIElmIHlvdSBh
cmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBub3RpZnkgdGhlIHNlbmRlciBp
bW1lZGlhdGVseSBhbmQgZG8gbm90IGRpc2Nsb3NlIHRoZSBjb250ZW50cyB0byBhbnkgb3RoZXIg
cGVyc29uLCB1c2UgaXQgZm9yIGFueSBwdXJwb3NlLCBvciBzdG9yZSBvciBjb3B5IHRoZSBpbmZv
cm1hdGlvbiBpbiBhbnkgbWVkaXVtLiBUaGFuayB5b3UuDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
