Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 997D3CF0D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 04:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KlxdrNP3L6ZiO3ocaStTOKXHe/JLv6mvscOXDqPmqXA=; b=hM9LRRyrAbEukq
	ppcH3Q9jCBD+/g/964eTm91SLXgjZ/Dcz8nBjBazIQIp+Yxhn00n7FzW90TmDfLTXSa8QpCDZxqVQ
	zKvMOGmZfgfCOrzjnZJtxqFaKOg2QBCK25OGuQSlBMGgjzkM7FqXtwRyFzblKjrsnI9AqQAFhEAp8
	uu3ZaGTiGL/5KMtVgiMNBzEEKeGmpos9GoNnEYzYw+cNgtns/sAZgFSsKfRr0d4rxUItBQAOxQWgS
	XktdkqXQwTdJ7nSrrqattS4lHMoxTZfeK09mzgdptL0tqP6HTuPqV/1MGtH4n5+wsdej0l2Cn/B/j
	WyFqC39lRRFpdmU6HbZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHfGr-0005uP-R4; Tue, 08 Oct 2019 02:30:41 +0000
Received: from mail-eopbgr90078.outbound.protection.outlook.com ([40.107.9.78]
 helo=FRA01-MR2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHfGX-0005oi-0C
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 02:30:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bo9tMP1LoKiXv8RH6gi8Lld3ch4Wavtz5eGRg3OCE4Q=;
 b=de4L8RV1I5v5BC+iffUe5tcHh5PgVjl/VM4pquwwFUKW7o5jt6GwFQUfdHyWX5DmRA8MWg4D3xzk3jxphIZufa1pQ3jEYKLvO4W2PXqTlnGOSb8XiAPkj7zYsUozALjS0u7bFVFqczz4/uHEV9nX8fQVRqAohuvLNBQ3PfqD6Ho=
Received: from VE1PR08CA0021.eurprd08.prod.outlook.com (2603:10a6:803:104::34)
 by PR2PR08MB4649.eurprd08.prod.outlook.com (2603:10a6:101:1f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24; Tue, 8 Oct
 2019 02:30:16 +0000
Received: from AM5EUR03FT058.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::208) by VE1PR08CA0021.outlook.office365.com
 (2603:10a6:803:104::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24 via Frontend
 Transport; Tue, 8 Oct 2019 02:30:16 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT058.mail.protection.outlook.com (10.152.17.48) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15 via Frontend Transport; Tue, 8 Oct 2019 02:30:15 +0000
Received: ("Tessian outbound e4042aced47b:v33");
 Tue, 08 Oct 2019 02:30:15 +0000
X-CR-MTA-TID: 64aa7808
Received: from cba4b006a3a0.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.5.53]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 04EEDE0E-56ED-4BAD-97FF-23D01500AB5B.1; 
 Tue, 08 Oct 2019 02:30:10 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2053.outbound.protection.outlook.com [104.47.5.53])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id cba4b006a3a0.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 08 Oct 2019 02:30:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SgpLu2ej8HM+NzVZw68ah8BHfcAvXjR+WHeIbz3z5nABY1fYWytGX2RFrE/DAh17a+sl00b6E0KQLBAGlW3OkzzN/0Rh9iwoqFK8vnMhtDRAvFAl4d1ez8AGaWNFoezL/xVpq89Fg3bUq34uXp5IAwc9peeLJRNzl97er+yzvm+lRQx9nGH+eTTDG/VVuwcqtPuvg8mVcA0j/W/tqtpwFtJlq/Lu0LD+mBgCSkkL/584vUxjz8HKAqr3/zOU0+S+QQIKp1coQB1KezcHJ4K3JdJa5WgmWBtvw/3okBCzFz19Vg8/CDfW4HFpCPjEEkQ68hh1bzPhooX6w7+a1OWswg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bo9tMP1LoKiXv8RH6gi8Lld3ch4Wavtz5eGRg3OCE4Q=;
 b=oers6eJYJUCzNyZnXSIF+F+/iCuF2X76RsxzrI3FgMAHOyZAcNC5SAKEsuOTkgvMSyaM24kHEKfZglkRNeKhZBI7Q3znBKvxFIjdDDs1QgJRc6Zl6EI8AwwmW5YVCOo7NxWZ9vg44sjA6zU669MH37WUM96oX5dPzXfKfDI2XH9k3PmB2L11wAFgCPienbYoxyc9s055GYdlTmYd3h8FUJ/vxsZvuvc/yoTVSLzBsk2t0mpx1bbapz/qhtBw/4sNxvm+QE2usjskHsygoGEpw8L+rk4v2k7F/kWgDShwveqWmbypJnGfQLPO5pR3T1hF4Btihxrf3mjPMtLg6680iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bo9tMP1LoKiXv8RH6gi8Lld3ch4Wavtz5eGRg3OCE4Q=;
 b=de4L8RV1I5v5BC+iffUe5tcHh5PgVjl/VM4pquwwFUKW7o5jt6GwFQUfdHyWX5DmRA8MWg4D3xzk3jxphIZufa1pQ3jEYKLvO4W2PXqTlnGOSb8XiAPkj7zYsUozALjS0u7bFVFqczz4/uHEV9nX8fQVRqAohuvLNBQ3PfqD6Ho=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3354.eurprd08.prod.outlook.com (52.134.110.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Tue, 8 Oct 2019 02:30:07 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0%6]) with mapi id 15.20.2327.023; Tue, 8 Oct 2019
 02:30:07 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Subject: RE: [PATCH v10 2/3] arm64: mm: implement arch_faults_on_old_pte() on
 arm64
Thread-Topic: [PATCH v10 2/3] arm64: mm: implement arch_faults_on_old_pte() on
 arm64
Thread-Index: AQHVdzKGx1YzEK84qECDJFJMWK8dTqdFvzkAgAALrYCACjIy4IAAFPPA
Date: Tue, 8 Oct 2019 02:30:06 +0000
Message-ID: <DB7PR08MB30821ADF14E35443D0FCEA14F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-3-justin.he@arm.com>
 <20191001125031.7ddm5dlwss6m3dth@willie-the-truck>
 <20191001143219.018281be@why>
 <DB7PR08MB308265EB3ED2465D2471B492F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
In-Reply-To: <DB7PR08MB308265EB3ED2465D2471B492F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 33ffc2c4-3f30-4163-9612-aa78e6c701de.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 8e84ec06-74fc-4771-c5fc-08d74b9773f3
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: DB7PR08MB3354:|DB7PR08MB3354:|PR2PR08MB4649:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <PR2PR08MB4649D36970D5F088AF7ADF53F79A0@PR2PR08MB4649.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 01842C458A
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(366004)(376002)(189003)(199004)(13464003)(7736002)(25786009)(14444005)(2940100002)(76116006)(102836004)(64756008)(99286004)(66476007)(66946007)(66556008)(305945005)(55236004)(33656002)(74316002)(4326008)(7416002)(6246003)(256004)(66446008)(229853002)(316002)(6506007)(76176011)(53546011)(14454004)(52536014)(186003)(6436002)(11346002)(26005)(9686003)(81156014)(8676002)(81166006)(71200400001)(71190400001)(54906003)(110136005)(66066001)(6116002)(478600001)(6306002)(5660300002)(3846002)(476003)(446003)(7696005)(486006)(55016002)(86362001)(8936002)(966005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3354;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Pkg4Ofp7A49PSe/0Opi5dnVet9FIMvoo7zFWnyK1BbTS0r8bkdgRr1+DDxB9nXrdzm7Xw2Qgq7xj6qU3XEP2sZR6ZmctIUQhc16UPFkqOpcyB5K5nMyqfrpcneVWW/KAenyyFWjldCqhJAiewsau9rgI7PBhfECQloenamhziipNbqd6UxVHjuRMak9QBfvQSwVLSjopye+oWKnGw9Ut+1wcJMaIqAc5woz1pGzfAiicZ5IEMy9zpGnv9sv639E5P90EXKoagp+bKO5jWWjUkdo0WQzFG4pGuD4vEzo3e6pMjgZFmHjKu+Ub2n9da9aCmei4s9qCudyq5DOiNGFAgqV6ZLt39wYK/fG2lX98iiiOZST2RqIipxN6Fp+P5Fhm7I88i7w1cFXg9UHrZD6CemEfChjO6d7naJWL4zaEZxNYMOMGZE0Q+XrHSZYCg53fwLYmpgLbKDpVBQsHqPetrQ==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3354
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT058.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(376002)(136003)(199004)(189003)(13464003)(6116002)(3846002)(126002)(26005)(14444005)(76176011)(486006)(305945005)(47136003)(336012)(74316002)(102836004)(11346002)(63350400001)(6506007)(186003)(476003)(33656002)(436003)(446003)(53546011)(229853002)(356004)(7736002)(7696005)(2940100002)(66066001)(47776003)(22756006)(6246003)(4326008)(86362001)(70206006)(478600001)(8676002)(70586007)(81166006)(76130400001)(99286004)(26826003)(81156014)(55016002)(966005)(8936002)(25786009)(14454004)(316002)(110136005)(9686003)(6306002)(54906003)(5660300002)(2906002)(52536014)(48336001)(50466002)(36906005)(23696002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:PR2PR08MB4649;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 17415548-a14b-44a3-e765-08d74b976f20
NoDisclaimer: True
X-Forefront-PRVS: 01842C458A
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JfzpMjDlGP+Eiv6Vr0+d9RCPN5p/rZ1ZYO7EGohY+8g1PqA3jj6iIMoTc9jKrl8o9m8E2nTb77PssdsFEFRDWFn4iEGMVMCLX6+yOC0VdjCJKei6FzuhOpJMGyWyk2GwZecbzQqMIUTNl/qS+WuX+sxz8sqSKywQhq8SkwQui9I9rxZozD2mhx5nhuoirYXHZvRwjIzgu9yupkHRwKjsAVql1UOlALKBrPbzqe2BLBeZ3o8Rd72nna5M3RO75b4urPwxI+zvmdHzzKVs5g1aYEeNmU2AdTSzwZ9DMmlLaZE8xTGEM2vmFTDwioIeU1L4BRNLjMlPof1KqbXxKyMW88TPFAvIPdVNoNiB8cn8YwByQ2Y1D91QFm9Djjne4iju1lU0IX1pBzX6HpAuPv7Qem+3hpPz3+7jmjFyZ/Su9IntLtpXQAukZhQnOCxvcRJUAGMjuQInmU4Otwt9iSFUtg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2019 02:30:15.3124 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e84ec06-74fc-4771-c5fc-08d74b9773f3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4649
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_193021_284119_F1A5CAB3 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.9.78 listed in list.dnswl.org]
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSnVzdGluIEhlIChBcm0g
VGVjaG5vbG9neSBDaGluYSkNCj4gU2VudDogMjAxOcTqMTDUwjjI1SA5OjU1DQo+IFRvOiBNYXJj
IFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPjsgV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4N
Cj4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8Q2F0YWxpbi5NYXJpbmFzQGFybS5jb20+OyBNYXJrIFJ1
dGxhbmQNCj4gPE1hcmsuUnV0bGFuZEBhcm0uY29tPjsgSmFtZXMgTW9yc2UgPEphbWVzLk1vcnNl
QGFybS5jb20+Ow0KPiBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz47IEtpcmls
bCBBLiBTaHV0ZW1vdg0KPiA8a2lyaWxsLnNodXRlbW92QGxpbnV4LmludGVsLmNvbT47IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsgbGludXgtbW1Aa3ZhY2sub3JnOyBQdW5pdCBBZ3Jhd2FsDQo+IDxwdW5pdGFncmF3
YWxAZ21haWwuY29tPjsgVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Ow0KPiBB
bmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPjsgaGVqaWFuZXRAZ21haWwu
Y29tOyBLYWx5DQo+IFhpbiAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEpIDxLYWx5LlhpbkBhcm0uY29t
PjsgbmQgPG5kQGFybS5jb20+DQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggdjEwIDIvM10gYXJtNjQ6
IG1tOiBpbXBsZW1lbnQNCj4gYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSgpIG9uIGFybTY0DQo+IA0K
PiBIaSBXaWxsIGFuZCBNYXJjDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
ID4gRnJvbTogTWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4NCj4gPiBTZW50OiAyMDE5xOox
MNTCMcjVIDIxOjMyDQo+ID4gVG86IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+DQo+ID4g
Q2M6IEp1c3RpbiBIZSAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEpIDxKdXN0aW4uSGVAYXJtLmNvbT47
IENhdGFsaW4NCj4gPiBNYXJpbmFzIDxDYXRhbGluLk1hcmluYXNAYXJtLmNvbT47IE1hcmsgUnV0
bGFuZA0KPiA+IDxNYXJrLlJ1dGxhbmRAYXJtLmNvbT47IEphbWVzIE1vcnNlIDxKYW1lcy5Nb3Jz
ZUBhcm0uY29tPjsNCj4gPiBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz47IEtp
cmlsbCBBLiBTaHV0ZW1vdg0KPiA+IDxraXJpbGwuc2h1dGVtb3ZAbGludXguaW50ZWwuY29tPjsg
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiA+IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LW1tQGt2YWNrLm9yZzsgUHVuaXQgQWdyYXdhbA0KPiA+IDxw
dW5pdGFncmF3YWxAZ21haWwuY29tPjsgVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXgu
ZGU+Ow0KPiA+IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+OyBoZWpp
YW5ldEBnbWFpbC5jb207DQo+IEthbHkNCj4gPiBYaW4gKEFybSBUZWNobm9sb2d5IENoaW5hKSA8
S2FseS5YaW5AYXJtLmNvbT4NCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHYxMCAyLzNdIGFybTY0
OiBtbTogaW1wbGVtZW50DQo+ID4gYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSgpIG9uIGFybTY0DQo+
ID4NCj4gPiBPbiBUdWUsIDEgT2N0IDIwMTkgMTM6NTA6MzIgKzAxMDANCj4gPiBXaWxsIERlYWNv
biA8d2lsbEBrZXJuZWwub3JnPiB3cm90ZToNCj4gPg0KPiA+ID4gT24gTW9uLCBTZXAgMzAsIDIw
MTkgYXQgMDk6NTc6MzlBTSArMDgwMCwgSmlhIEhlIHdyb3RlOg0KPiA+ID4gPiBPbiBhcm02NCB3
aXRob3V0IGhhcmR3YXJlIEFjY2VzcyBGbGFnLCBjb3B5aW5nIGZyb211c2VyIHdpbGwgZmFpbA0K
PiA+IGJlY2F1c2UNCj4gPiA+ID4gdGhlIHB0ZSBpcyBvbGQgYW5kIGNhbm5vdCBiZSBtYXJrZWQg
eW91bmcuIFNvIHdlIGFsd2F5cyBlbmQgdXAgd2l0aA0KPiA+IHplcm9lZA0KPiA+ID4gPiBwYWdl
IGFmdGVyIGZvcmsoKSArIENvVyBmb3IgcGZuIG1hcHBpbmdzLiB3ZSBkb24ndCBhbHdheXMgaGF2
ZSBhDQo+ID4gPiA+IGhhcmR3YXJlLW1hbmFnZWQgYWNjZXNzIGZsYWcgb24gYXJtNjQuDQo+ID4g
PiA+DQo+ID4gPiA+IEhlbmNlIGltcGxlbWVudCBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlIG9uIGFy
bTY0IHRvIGluZGljYXRlIHRoYXQNCj4gaXQNCj4gPiBtaWdodA0KPiA+ID4gPiBjYXVzZSBwYWdl
IGZhdWx0IHdoZW4gYWNjZXNzaW5nIG9sZCBwdGUuDQo+ID4gPiA+DQo+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IEppYSBIZSA8anVzdGluLmhlQGFybS5jb20+DQo+ID4gPiA+IFJldmlld2VkLWJ5OiBD
YXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPg0KPiA+ID4gPiAtLS0NCj4g
PiA+ID4gIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS5oIHwgMTQgKysrKysrKysrKysr
KysNCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspDQo+ID4gPiA+DQo+
ID4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BndGFibGUuaA0KPiA+
IGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3RhYmxlLmgNCj4gPiA+ID4gaW5kZXggNzU3NmRm
MDBlYjUwLi5lOTZmYjgyZjYyZGUgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvaW5j
bHVkZS9hc20vcGd0YWJsZS5oDQo+ID4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20v
cGd0YWJsZS5oDQo+ID4gPiA+IEBAIC04ODUsNiArODg1LDIwIEBAIHN0YXRpYyBpbmxpbmUgdm9p
ZCB1cGRhdGVfbW11X2NhY2hlKHN0cnVjdA0KPiA+IHZtX2FyZWFfc3RydWN0ICp2bWEsDQo+ID4g
PiA+ICAjZGVmaW5lIHBoeXNfdG9fdHRicihhZGRyKQkoYWRkcikNCj4gPiA+ID4gICNlbmRpZg0K
PiA+ID4gPg0KPiA+ID4gPiArLyoNCj4gPiA+ID4gKyAqIE9uIGFybTY0IHdpdGhvdXQgaGFyZHdh
cmUgQWNjZXNzIEZsYWcsIGNvcHlpbmcgZnJvbSB1c2VyIHdpbGwNCj4gZmFpbA0KPiA+IGJlY2F1
c2UNCj4gPiA+ID4gKyAqIHRoZSBwdGUgaXMgb2xkIGFuZCBjYW5ub3QgYmUgbWFya2VkIHlvdW5n
LiBTbyB3ZSBhbHdheXMgZW5kIHVwDQo+ID4gd2l0aCB6ZXJvZWQNCj4gPiA+ID4gKyAqIHBhZ2Ug
YWZ0ZXIgZm9yaygpICsgQ29XIGZvciBwZm4gbWFwcGluZ3MuIFdlIGRvbid0IGFsd2F5cyBoYXZl
IGENCj4gPiA+ID4gKyAqIGhhcmR3YXJlLW1hbmFnZWQgYWNjZXNzIGZsYWcgb24gYXJtNjQuDQo+
ID4gPiA+ICsgKi8NCj4gPiA+ID4gK3N0YXRpYyBpbmxpbmUgYm9vbCBhcmNoX2ZhdWx0c19vbl9v
bGRfcHRlKHZvaWQpDQo+ID4gPiA+ICt7DQo+ID4gPiA+ICsJV0FSTl9PTihwcmVlbXB0aWJsZSgp
KTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCXJldHVybiAhY3B1X2hhc19od19hZigpOw0KPiA+ID4g
PiArfQ0KPiA+ID4NCj4gPiA+IERvZXMgdGhpcyB3b3JrIGNvcnJlY3RseSBpbiBhIEtWTSBndWVz
dD8gKGkuZS4gaXMgdGhlIE1NRlIgc2FuaXRpc2VkIGluDQo+ID4gdGhhdA0KPiA+ID4gY2FzZSwg
ZGVzcGl0ZSBub3QgYmVpbmcgdGhlIGNhc2Ugb24gdGhlIGhvc3Q/KQ0KPiA+DQo+ID4gWXVwLCBh
bGwgdGhlIDY0Yml0IE1NRlJzIGFyZSB0cmFwcGVkIChIQ1JfRUwyLlRJRDMgaXMgc2V0IGZvciBh
bg0KPiA+IEFBcmNoNjQgZ3Vlc3QpLCBhbmQgd2UgcmV0dXJuIHRoZSBzYW5pdGlzZWQgdmVyc2lv
bi4NCj4gVGhhbmtzIGZvciBNYXJjJ3MgZXhwbGFuYXRpb24uIEkgdmVyaWZpZWQgdGhlIHBhdGNo
IHNlcmllcyBvbiBhIGt2bSBndWVzdCAoLQ0KPiBNIHZpcnQpDQo+IHdpdGggc2ltdWxhdGVkIG52
ZGltbSBkZXZpY2UgY3JlYXRlZCBieSBxZW11LiBUaGUgaG9zdCBpcyBUaHVuZGVyWDINCj4gYWFy
Y2g2NC4NCj4gDQo+ID4NCj4gPiBCdXQgdGhhdCdzIGFuIGludGVyZXN0aW5nIHJlbWFyazogd2Un
cmUgbm93IHRyYWRpbmcgYW4gZXh0cmEgZmF1bHQgb24NCj4gPiBDUFVzIHRoYXQgZG8gbm90IHN1
cHBvcnQgSFdBRkRCUyBmb3IgYSBndWFyYW50ZWVkIHRyYXAgZm9yIGVhY2ggYW5kDQo+ID4gZXZl
cnkgZ3Vlc3QgdW5kZXIgdGhlIHN1biB0aGF0IHdpbGwgaGl0IHRoZSBDT1cgcGF0aC4uLg0KPiA+
DQo+ID4gTXkgZ3V0IGZlZWxpbmcgaXMgdGhhdCB0aGlzIGlzIGdvaW5nIHRvIGJlIHByZXR0eSB2
aXNpYmxlLiBKaWEsIGRvIHlvdQ0KPiA+IGhhdmUgYW55IG51bWJlcnMgZm9yIHRoaXMga2luZCBv
ZiBiZWhhdmlvdXI/DQo+IEl0IGlzIG5vdCBhIGNvbW1vbiBDT1cgcGF0aCwgYnV0IGEgQ09XIGZv
ciBQRk4gbWFwcGluZyBwYWdlcyBvbmx5Lg0KPiBJIGFkZCBhIGdfY291bnRlciBiZWZvcmUgcHRl
X21reW91bmcgaW4gZm9yY2VfbWt5b3VuZ3t9IHdoZW4gdGVzdGluZw0KPiB2bW1hbGxvY19mb3Jr
IGF0IFsxXS4NCj4gDQo+IEluIHRoaXMgdGVzdCBjYXNlLCBpdCB3aWxsIHN0YXJ0IE0gZm9yayBw
cm9jZXNzZXMgYW5kIE4gcHRocmVhZHMuIFRoZSBkZWZhdWx0IGlzDQo+IE09MixOPTQuIHRoZSBn
X2NvdW50ZXIgaXMgYWJvdXQgMjQxLCB0aGF0IGlzIGl0IHdpbGwgaGl0IG15IHBhdGNoIHNlcmll
cyBmb3INCj4gMjQxDQo+IHRpbWVzLg0KPiBJZiBJIHNldCBNPTIwIGFuZCBOPTQwIGZvciBURVNU
MywgdGhlIGdfY291bnRlciBpcyBhYm91dCAxNDkyLg0KDQpUaGUgdGltZSBvdmVyaGVhZCBvZiB0
ZXN0IHZtbWFsbG9jX2ZvcmsgaXM6DQpyZWFsICAgIDBtNS40MTFzDQp1c2VyICAgIDBtNC4yMDZz
DQpzeXMgICAgIDBtMi42OTlzDQoNCj4gDQo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vcG1lbS9w
bWRrL3RyZWUvbWFzdGVyL3NyYy90ZXN0L3ZtbWFsbG9jX2ZvcmsNCj4gDQo+IA0KPiAtLQ0KPiBD
aGVlcnMsDQo+IEp1c3RpbiAoSmlhIEhlKQ0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
