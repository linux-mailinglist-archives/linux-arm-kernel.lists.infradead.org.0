Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E44DC21E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:07:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qHFeNiDnb85nTsC+gdeK99orIwTONWQI8X7Q2dkoGo=; b=rBxQN59orMWdBH
	piycdPiz0/QsworDfxYXQpXvVVa7dr5Y6IEwl4ABLR1oXBOMz/t7a7GEqJvyq++RMiin/67hNEo70
	VWVKOHiPC2UEyl2VxX8ZdIrwhcSsNIKWyOfmsT5oCYLOhBfVdm6yOANxut/x5sck6oS0OtblMNRSe
	aBnNc92I7dwY/KBj+JU/hJZbIKiYl2Q/GxmrqCaiRIbTJIBQDr0etLPIUShwtMSVdQxVk+3/wL6p8
	Ur3he51YuJsoXSQXouj/G15xrm/UDB25Cmlbi4BCjrdBUQnL12pQwYGwXZA/mMNajnsMqoTJ3B/+/
	k9eS18gVuUJP+0a2Lmrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPAi-0006lE-Eb; Fri, 18 Oct 2019 10:07:48 +0000
Received: from mail-eopbgr130077.outbound.protection.outlook.com
 ([40.107.13.77] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPAU-0006kD-6l
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:07:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bgys13Hl4F/PqhlPZpTMx3lJ9WN01nb+zzrSOiWvIXU=;
 b=HNz7AyF9cqMnztd7SCOFOEsZIUevWHmWcEayzNc8YwBPR0oXpZBEtMlEVFChQZqIUNNB0rTUdXi826vb5sLnhPkv1Gvqev99q3L9u3KRVH+zkkYZyG/Cop3Rxpoi4IZgvb5y8bmuhReJiZoVN6jCUcZxAomlb/Se65ObzFNV7gM=
Received: from VI1PR08CA0207.eurprd08.prod.outlook.com (2603:10a6:802:15::16)
 by VI1PR0802MB2350.eurprd08.prod.outlook.com (2603:10a6:800:99::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.19; Fri, 18 Oct
 2019 10:07:28 +0000
Received: from DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::200) by VI1PR08CA0207.outlook.office365.com
 (2603:10a6:802:15::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.21 via Frontend
 Transport; Fri, 18 Oct 2019 10:07:28 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT033.mail.protection.outlook.com (10.152.20.76) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Fri, 18 Oct 2019 10:07:26 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Fri, 18 Oct 2019 10:07:19 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8bc05882f65d68ed
X-CR-MTA-TID: 64aa7808
Received: from dc6f4371f55b.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.24.103]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 18473FAA-DA71-452C-8FC0-326976590E70.1; 
 Fri, 18 Oct 2019 10:07:14 +0000
Received: from FRA01-PR2-obe.outbound.protection.outlook.com
 (mail-pr2fra01on0103.outbound.protection.outlook.com [104.47.24.103])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dc6f4371f55b.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Fri, 18 Oct 2019 10:07:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q9JRJTQ54Y3ZMVWBSLHu1SWiqcUwPrLHgyw/01H1KduV0y3cMkngGqdZH1FDm3hGbV0T4Mf7Wox9lsK4aSDve74QdtGu2TamLCIRDhAYcKIf+G4b9X6GEexXNSZC84Y7HwlQYKNN7s3eRH7oTXVBAJ3n2jpiKzlN0Ju4ccSo8TZZ1ir4+MYOE1a7kAle7KVpIqK/0tRR9oEJk8h0H1kHTHjVOyF6V8uI5E5r9S9uD6sHY55YeAnqagtCtw1M0KlowsEqpd8vr4tF5ZUXzgrKAGEtn+Ndfsyn7GQgo/6S74oTzwEgPjckG1FAeZYKfe8sLahrt3R/SO6jQJwVm6+uhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8l1G8/IPym1QyGx5mPSZPBIKpDJ3sgfHDuyCMfIZc40=;
 b=WvzbhmpCPz2iOmsg8DnpYgC3PLRfFzedRpkW+NGGkYBFDP8eXSYkUgD/G1OLmtD0PnO4829ryvsMUinGq4JOK4gZu/KLCR5OMaRHj3cBcBodp5o31JJ9Ec2tlTwNredkjqR5ibzf5GaSUqGHqgI3hjS6r2H+sbvKzqMlUt/9yl8tCuJMp7rEdbp5gsv5wNJZrVdRkZDXjTTmfLVjxcH8apqBapbkzBYUsy6hXgYMr4MnMXbAy0MVDMLn23zBFttcN+cenGTTRil3hxVrTgWdpm0YHhN2f9ZOLJuZqkdue0ZkNTRn7PWYRuThBeXL6qxrg18o7KdOqfkj7f2wM/+cTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8l1G8/IPym1QyGx5mPSZPBIKpDJ3sgfHDuyCMfIZc40=;
 b=90KeTaYdcAC+IYNxolkbLOBeSEMTAfh+zYvEies3dkSsehqxo2Db/f2HgbqQ+prgwrGe47z3kVk5Cfvvioh6tS9lmafmD63vB1v9TH1hvLLicNW0j527KNfZhMXw7hPlBx1PPEjIFH4/fDNCW7nKFlEqUbEWD5M1pXCKjyVa9iY=
Received: from PR2PR08MB4843.eurprd08.prod.outlook.com (52.133.110.76) by
 PR2PR08MB4795.eurprd08.prod.outlook.com (52.133.111.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Fri, 18 Oct 2019 10:07:13 +0000
Received: from PR2PR08MB4843.eurprd08.prod.outlook.com
 ([fe80::5f1:72e0:4bda:6a13]) by PR2PR08MB4843.eurprd08.prod.outlook.com
 ([fe80::5f1:72e0:4bda:6a13%3]) with mapi id 15.20.2347.023; Fri, 18 Oct 2019
 10:07:13 +0000
From: Amit Kachhap <Amit.Kachhap@arm.com>
To: Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 05/11] arm64: enable ptrauth earlier
Thread-Topic: [PATCH 05/11] arm64: enable ptrauth earlier
Thread-Index: AQHVhPUPGZOo+Wpvz02aUGBmuatjLqdgLamA
Date: Fri, 18 Oct 2019 10:07:12 +0000
Message-ID: <7cafdabf-a916-e1de-c3f8-96038ab561f6@arm.com>
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
 <1571300065-10236-6-git-send-email-amit.kachhap@arm.com>
 <ee0a5b0a-196f-1cb4-701b-3295f1932e5d@arm.com>
In-Reply-To: <ee0a5b0a-196f-1cb4-701b-3295f1932e5d@arm.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0069.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:e::31) To PR2PR08MB4843.eurprd08.prod.outlook.com
 (2603:10a6:101:24::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Amit.Kachhap@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.105.40]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 56399288-ccd8-40c5-22b6-08d753b2fa71
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: PR2PR08MB4795:|PR2PR08MB4795:|VI1PR0802MB2350:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0802MB23505334E735C8749E4A0C6F8C6C0@VI1PR0802MB2350.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 01949FE337
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(136003)(366004)(346002)(189003)(199004)(44832011)(102836004)(186003)(52116002)(71200400001)(6246003)(7736002)(71190400001)(4326008)(31686004)(5660300002)(478600001)(14444005)(256004)(76176011)(81156014)(229853002)(8676002)(486006)(14454004)(81166006)(26005)(386003)(2616005)(476003)(8936002)(446003)(305945005)(99286004)(3846002)(53546011)(6116002)(6506007)(11346002)(66476007)(66446008)(66556008)(66946007)(66066001)(64756008)(2501003)(6436002)(6512007)(6486002)(54906003)(31696002)(316002)(25786009)(86362001)(36756003)(110136005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:PR2PR08MB4795;
 H:PR2PR08MB4843.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: N9tHG+yv+L7zTqNAQI2Ew1Oyv3MLejp4mTi06BN2Govvm2y5mMfAbWWadMplLcFomUz27Nyh3k2kz6+pun8Cn92F7xxVVG6YHvAaae45gso8rAhpMjNDTWFgGJ1h0weeETPFq7fWTuwsCY3W4UJDR++dOI6905jYzrslGRcygOWenGxzRpmTdc0E3bRPe7/u1MtC6VKWikvNQtXracHupzsIyIGm/ChpJUW9+NdPdED+8zuO7cBJqQIlPaQaA1643z96zARSxdMlOanPBV94qg83SrFYT9C2Cd+tYA/eTEDNNvjxu6Hkdj0TbfvfmFxJmJxSqfZk32bkW0xOn87dhLZj8TigBa7JF6sDDJ3lg/tRRC3Y8O9KUrCVUIONVRsE8P4pfjBSD4djNIHryFRk+PZX7XmY7W5+3k5BG8p3+I4=
Content-ID: <BA3A70C847087C45AD5BA455CEA560EB@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4795
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Amit.Kachhap@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(346002)(136003)(199004)(189003)(40434004)(186003)(76130400001)(25786009)(54906003)(47776003)(50466002)(8936002)(6246003)(316002)(26005)(229853002)(110136005)(6486002)(22756006)(305945005)(5660300002)(7736002)(14444005)(5024004)(8676002)(86362001)(31696002)(14454004)(36756003)(356004)(66066001)(81156014)(81166006)(478600001)(386003)(99286004)(6506007)(26826003)(11346002)(53546011)(336012)(2486003)(436003)(63350400001)(446003)(102836004)(76176011)(23676004)(2906002)(31686004)(4326008)(3846002)(6116002)(6512007)(70206006)(486006)(2616005)(476003)(126002)(70586007)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0802MB2350;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 731863a2-b11e-4b8a-f1d7-08d753b2f20e
X-Forefront-PRVS: 01949FE337
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wvLYJ1UaNNZFAdjPbJQ23wqamF1yOtIBxFIWPHw0w51AfSeH6Zi2xmoUmHS2v2EKCrwuVWbnbTWHa9FJUOrfq4QEDv2GxBgPyXJu3CQvCttIAmWI5N1b+WDXq9UoRSDV/zzHEsAoRGrZM2PL1ygOs2XrDMc9CjjjnX8qHibqucu43ENkFOTexdkOPQbqOAk7+cOPwmwurzmp/BIZF8SkALK2hecK9RCSNQQ4d00VUqpvRtGPmaimufLrsoBhDqB5qseTAnV/xqotpFoATc79hkTrY55O1huThet9LrS1G8Y/xPiCw5yClT2DEnAZ5H6zJzitu2Yj6vAJIBhF7fIwlyyQHDLYDaNrM3f98z0tiZSoo1PJPG4rRqFCpdLg/yYqbOuo5619A5Mc6SGsXMqj3t3LdFN8smUHWoxkLVLlqrY=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2019 10:07:26.6686 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 56399288-ccd8-40c5-22b6-08d753b2fa71
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2350
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_030734_426225_8F10BA39 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Kristina Martsenko <Kristina.Martsenko@arm.com>,
 James Morse <James.Morse@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksDQoNCk9uIDEwLzE3LzE5IDc6NDMgUE0sIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6DQo+DQo+
IEhpIEFtaXQsDQo+DQo+IE9uIDE3LzEwLzIwMTkgMDk6MTQsIEFtaXQgRGFuaWVsIEthY2hoYXAg
d3JvdGU6DQo+PiBGcm9tOiBLcmlzdGluYSBNYXJ0c2Vua28gPGtyaXN0aW5hLm1hcnRzZW5rb0Bh
cm0uY29tPg0KPj4NCj4+IFdoZW4gdGhlIGtlcm5lbCBpcyBjb21waWxlZCB3aXRoIHBvaW50ZXIg
YXV0aCBpbnN0cnVjdGlvbnMsIHRoZSBib290IENQVQ0KPj4gbmVlZHMgdG8gc3RhcnQgdXNpbmcg
YWRkcmVzcyBhdXRoIHZlcnkgZWFybHksIHNvIGNoYW5nZSB0aGUgY3B1Y2FwIHRvDQo+PiBhY2Nv
dW50IGZvciB0aGlzLg0KPj4NCj4+IFBvaW50ZXIgYXV0aCBtdXN0IGJlIGVuYWJsZWQgYmVmb3Jl
IHdlIGNhbGwgQyBmdW5jdGlvbnMsIGJlY2F1c2UgaXQgaXMNCj4+IG5vdCBwb3NzaWJsZSB0byBl
bnRlciBhIGZ1bmN0aW9uIHdpdGggcG9pbnRlciBhdXRoIGRpc2FibGVkIGFuZCBleGl0IGl0DQo+
PiB3aXRoIHBvaW50ZXIgYXV0aCBlbmFibGVkLiBOb3RlLCBtaXNtYXRjaGVzIGJldHdlZW4gYXJj
aGl0ZWN0ZWQgYW5kDQo+PiBJTVBERUYgYWxnb3JpdGhtcyB3aWxsIHN0aWxsIGJlIGNhdWdodCBi
eSB0aGUgY3B1ZmVhdHVyZSBmcmFtZXdvcmsgKHRoZQ0KPj4gc2VwYXJhdGUgKl9BUkNIIGFuZCAq
X0lNUF9ERUYgY3B1Y2FwcykuDQo+Pg0KPj4gTm90ZSB0aGUgY2hhbmdlIGluIGJlaGF2aW9yOiBp
ZiB0aGUgYm9vdCBDUFUgaGFzIGFkZHJlc3MgYXV0aCBhbmQgYSBsYXRlDQo+PiBDUFUgZG9lcyBu
b3QsIHRoZW4gd2Ugb2ZmbGluZSB0aGUgbGF0ZSBDUFUuIFVudGlsIG5vdyB3ZSB3b3VsZCBoYXZl
IGp1c3QNCj4+IGRpc2FibGVkIGFkZHJlc3MgYXV0aCBpbiB0aGlzIGNhc2UuDQo+Pg0KPj4gTGVh
dmUgZ2VuZXJpYyBhdXRoZW50aWNhdGlvbiBhcyBhICJzeXN0ZW0gc2NvcGUiIGNwdWNhcCBmb3Ig
bm93LCBzaW5jZQ0KPj4gaW5pdGlhbGx5IHRoZSBrZXJuZWwgd2lsbCBvbmx5IHVzZSBhZGRyZXNz
IGF1dGhlbnRpY2F0aW9uLg0KPj4NCj4+IFJldmlld2VkLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29r
QGNocm9taXVtLm9yZz4NCj4+IFNpZ25lZC1vZmYtYnk6IEtyaXN0aW5hIE1hcnRzZW5rbyA8a3Jp
c3RpbmEubWFydHNlbmtvQGFybS5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5OiBBbWl0IERhbmllbCBL
YWNoaGFwIDxhbWl0LmthY2hoYXBAYXJtLmNvbT4NCj4+IC0tLQ0KPj4gQ2hhbmdlcyBzaW5jZSBS
RkMgdjI6DQo+PiAgIC0gTW92ZWQgZWFybHkgZW5hYmxpbmcgZnJvbSBDIHRvIGFzc2VtYmx5LCBh
bmQgbm8gbG9uZ2VyIHVzZSB0aGUNCj4+IHBvaW50ZXIgYXV0aA0KPj4gICAgIEMgZnVuY3Rpb24g
YXR0cmlidXRlIFtTdXp1a2ldDQo+Pg0KPj4gICBhcmNoL2FybTY0L0tjb25maWcgICAgICAgICAg
ICAgICAgICB8wqAgNCArKysrDQo+PiAgIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1ZmVhdHVy
ZS5oIHzCoCA5ICsrKysrKysNCj4+ICAgYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9zbXAuaCAgICAg
ICAgfMKgIDEgKw0KPj4gICBhcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMgICAgICB8IDEz
ICsrKy0tLS0tLS0NCj4+ICAgYXJjaC9hcm02NC9rZXJuZWwvaGVhZC5TICAgICAgICAgICAgfCA0
OA0KPj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPj4gICBhcmNoL2Fy
bTY0L2tlcm5lbC9zbXAuYyAgICAgICAgICAgICB8wqAgMiArKw0KPj4gICA2IGZpbGVzIGNoYW5n
ZWQsIDY3IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L0tjb25maWcgYi9hcmNoL2FybTY0L0tjb25maWcNCj4+IGluZGV4IDQxYTli
NDIuLjI1M2UzYzUgMTAwNjQ0DQo+PiAtLS0gYS9hcmNoL2FybTY0L0tjb25maWcNCj4+ICsrKyBi
L2FyY2gvYXJtNjQvS2NvbmZpZw0KPj4gQEAgLTE0MDgsNiArMTQwOCwxMCBAQCBjb25maWcgQVJN
NjRfUFRSX0FVVEgNCj4+ICAgICAgICAgYmUgZW5hYmxlZC4gSG93ZXZlciwgS1ZNIGd1ZXN0IGFs
c28gcmVxdWlyZSBWSEUgbW9kZSBhbmQgaGVuY2UNCj4+ICAgICAgICAgQ09ORklHX0FSTTY0X1ZI
RT15IG9wdGlvbiB0byB1c2UgdGhpcyBmZWF0dXJlLg0KPj4gKyAgICAgIElmIHRoZSBmZWF0dXJl
IGlzIHByZXNlbnQgb24gdGhlIHByaW1hcnkgQ1BVIGJ1dCBub3QgYQ0KPj4gc2Vjb25kYXJ5IENQ
VSwNCj4+ICsgICAgICB0aGVuIHRoZSBzZWNvbmRhcnkgQ1BVIHdpbGwgYmUgb2ZmbGluZWQuIE9u
IHN1Y2ggYSBzeXN0ZW0sIHRoaXMNCj4+ICsgICAgICBvcHRpb24gc2hvdWxkIG5vdCBiZSBzZWxl
Y3RlZC4NCj4NCj4gV2UgZG9uJ3Qgb2ZmbGluZSB0aGUgQ1BVLCBidXQgc2ltcGx5IHBhcmsgdGhl
bS4gWW91IG1heSB3YW50IHRvIHVwZGF0ZQ0KPiB0aGlzIHRvDQo+IHJlZmxlY3QgdGhlIHJlYWxp
dHkuDQpZZXMgYWdyZWVkLiBJIHdpbGwgZG8gaXQgaW4gbmV4dCBpdGVyYXRpb24gYW5kIGluIGFs
bCBvdGhlciBwbGFjZXMgd2hlcmUNCm9mZmxpbmUgaXMgbWVudGlvbmVkLg0KPg0KPj4gKw0KPj4g
ICBlbmRtZW51DQo+PiAgIGNvbmZpZyBBUk02NF9TVkUNCj4+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2luY2x1ZGUvYXNtL2NwdWZlYXR1cmUuaA0KPj4gYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNt
L2NwdWZlYXR1cmUuaA0KPj4gaW5kZXggMDExYTY2NS4uNWQ2MTc0OSAxMDA2NDQNCj4+IC0tLSBh
L2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1ZmVhdHVyZS5oDQo+PiArKysgYi9hcmNoL2FybTY0
L2luY2x1ZGUvYXNtL2NwdWZlYXR1cmUuaA0KPj4gQEAgLTI5MSw2ICsyOTEsMTUgQEAgZXh0ZXJu
IHN0cnVjdCBhcm02NF9mdHJfcmVnIGFybTY0X2Z0cl9yZWdfY3RyZWwwOw0KPj4gICAjZGVmaW5l
IEFSTTY0X0NQVUNBUF9TVFJJQ1RfQk9PVF9DUFVfRkVBVFVSRSAgICAgICAgXA0KPj4gICAgICAg
KEFSTTY0X0NQVUNBUF9TQ09QRV9CT09UX0NQVSB8IEFSTTY0X0NQVUNBUF9QQU5JQ19PTl9DT05G
TElDVCkNCj4+ICsvKg0KPj4gKyAqIENQVSBmZWF0dXJlIHVzZWQgZWFybHkgaW4gdGhlIGJvb3Qg
YmFzZWQgb24gdGhlIGJvb3QgQ1BVLiBJdCBpcw0KPj4gc2FmZSBmb3IgYQ0KPj4gKyAqIGxhdGUg
Q1BVIHRvIGhhdmUgdGhpcyBmZWF0dXJlIGV2ZW4gdGhvdWdoIHRoZSBib290IENQVSBoYXNuJ3QN
Cj4+IGVuYWJsZWQgaXQsDQo+PiArICogYWx0aG91Z2ggdGhlIGZlYXR1cmUgd2lsbCBub3QgYmUg
dXNlZCBieSBMaW51eCBpbiB0aGlzIGNhc2UuIElmDQo+PiB0aGUgYm9vdCBDUFUNCj4+ICsgKiBo
YXMgZW5hYmxlZCB0aGlzIGZlYXR1cmUgYWxyZWFkeSwgdGhlbiBldmVyeSBsYXRlIENQVSBtdXN0
IGhhdmUgaXQuDQo+PiArICovDQo+PiArI2RlZmluZSBBUk02NF9DUFVDQVBfQk9PVF9DUFVfRkVB
VFVSRSAgICAgICAgICAgIFwNCj4+ICsgICAgIChBUk02NF9DUFVDQVBfU0NPUEVfQk9PVF9DUFUg
fCBBUk02NF9DUFVDQVBfUEVSTUlUVEVEX0ZPUl9MQVRFX0NQVSkNCj4NCj4gQXMgbWVudGlvbmVk
IGluIHRoZSBwcmV2aW91cyBwYXRjaCwgSSB0aGluayB0aGlzIG11c3QgcGFuaWMgdGhlIHN5c3Rl
bQ0KPiBpZiBldmVyIGENCj4gQ1BVIHR1cm5zIHVwIHdpdGhvdXQgdGhlIHB0cl9hdXRoLg0KWWVz
LiBNYWtlcyBzZW5zZS4NCj4NCj4gT3RoZXJ3aXNlIGxvb2tzIGZpbmUgdG8gbWUuDQpUaGFua3Mu
DQpBbWl0DQo+DQo+IENoZWVycw0KPiBTdXp1a2kNCklNUE9SVEFOVCBOT1RJQ0U6IFRoZSBjb250
ZW50cyBvZiB0aGlzIGVtYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgYXJlIGNvbmZpZGVudGlhbCBh
bmQgbWF5IGFsc28gYmUgcHJpdmlsZWdlZC4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJl
Y2lwaWVudCwgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFuZCBkbyBub3Qg
ZGlzY2xvc2UgdGhlIGNvbnRlbnRzIHRvIGFueSBvdGhlciBwZXJzb24sIHVzZSBpdCBmb3IgYW55
IHB1cnBvc2UsIG9yIHN0b3JlIG9yIGNvcHkgdGhlIGluZm9ybWF0aW9uIGluIGFueSBtZWRpdW0u
IFRoYW5rIHlvdS4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
