Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E741B2342
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 11:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0wHTa+B6xEaiksmlyY2IVT0DMK2H0MbbvKcY2ZwDwzQ=; b=RaMbWMqa5IoxLe
	kygBS14fpo5/ziMESbWzSKNoYA3ecu+CCn9J6+VrlDYFQDM4rzm+r+58rPYW5FsNutgZceHH10X/E
	w1BPuQu4sM9LXg5pOlGqGu93iWMX6mO8q/BjpGQsDJ9vTUMKqWbw8cnWXb4njuSNMTIEaF7rD3R3o
	PXjgVFv610MczmX/vN4RmwplhcIbrY74jaWsm7l06QqzSnhGQp0nDsXPBIOk2FZdvpCBAiEhlOHRG
	gc5Z66Y+QAxcVHYrEscx2bMxNMdBCZVnSly+8edd8DAfZd5hEPvAVywmeaWabSFaPM0wrcN/ky5UQ
	9ACTdcKHh83buNPKfZQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQpZK-0004Gr-F3; Tue, 21 Apr 2020 09:51:54 +0000
Received: from mail-eopbgr30088.outbound.protection.outlook.com ([40.107.3.88]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQpZA-0004Dt-3D
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 09:51:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X7hWKv4QbqZsJauysmPOco3Vxi3w0XxAAvCTb9O+6Hc=;
 b=VvcFFvUt2tDtuM76TpKw0Mr+yt5/mKvjTh5ETbPvQ5uBu4ACiE584w0rXJrValmdrwLLGUl+xO+gyu4qBwVEE0W6fW6DQFp7MQrR1cXJxtKJxfw2aIgDkKS64NV6vLtOUCIQoQr/Ab5+P4dGZJDlBp6/GWyuyVvtlbuCXlaY6i8=
Received: from AM6P194CA0023.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:90::36)
 by DB6PR0802MB2599.eurprd08.prod.outlook.com (2603:10a6:4:a2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Tue, 21 Apr
 2020 09:51:34 +0000
Received: from AM5EUR03FT056.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:90:cafe::ed) by AM6P194CA0023.outlook.office365.com
 (2603:10a6:209:90::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.26 via Frontend
 Transport; Tue, 21 Apr 2020 09:51:34 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT056.mail.protection.outlook.com (10.152.17.224) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.18 via Frontend Transport; Tue, 21 Apr 2020 09:51:33 +0000
Received: ("Tessian outbound ecb846ece464:v53");
 Tue, 21 Apr 2020 09:51:33 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5f959d203d53682b
X-CR-MTA-TID: 64aa7808
Received: from a26fae153160.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 C404701D-2669-471C-9EE8-A3AD6B44AD70.1; 
 Tue, 21 Apr 2020 09:51:27 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a26fae153160.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 21 Apr 2020 09:51:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UiSKc3kKFl7i7aTFhy9IENfL96RAvpf9MHLZLX627l1nBDlhiqcF0vJ+9aC55M5HwmEvR5KBegeXfPNzY1GjR3v4X0VSaEC1eUAFq3KRHvpnhOEzTzAPHuE5xVFtADSExa9/S5l/LwjK+yLW6TpeqXrVByHBg/TbMHcQw1TGOua5m5uHYl9e9uiZJhHAO5nGnL7Hnnt/oLxjf2j1uS+xFvueDXFQZ8+jAIIcOM7FbTtUJjn/Vl8GgBmMtDVx/tN3XjUt73hpm0C+DI3qPqYvvHzrZxniWRmpXtq012v/2OYjxxRNNXEG7tQ/a7nbYBvneS6hG7W7ntb+J6NBuhZlQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X7hWKv4QbqZsJauysmPOco3Vxi3w0XxAAvCTb9O+6Hc=;
 b=NYA6aj/e0t8/5zosrBoYMczFsUNnRa/O7xt+sC3PKzNEuUgkxhjV40F0sQZv/8I5M8D6rGniP2rq1dum7U0FSe1sQvUqS0tarTSbymUZ/AlG6x+alilxj+HjbcAEO/IwA3NzTuC2Ph5Hhu8hZmg5yCJrHLCP8XEkijzeH0QJF1o3W1CdGGl7BGd4r3T/5QpgibSH8IG7Jjfk2Xil+nIclJv342mHL48yWLXeAWx6YT0xWSTjo5HRtegkbXz0LRPsGMvoi839Detpy7w9MFWIaVVcX2KMAG5u/lKD6YVQZC0NefCFrCyA+tAttG7kI2ZvQCYCoHwHD1CYkdQd4a3Dig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X7hWKv4QbqZsJauysmPOco3Vxi3w0XxAAvCTb9O+6Hc=;
 b=VvcFFvUt2tDtuM76TpKw0Mr+yt5/mKvjTh5ETbPvQ5uBu4ACiE584w0rXJrValmdrwLLGUl+xO+gyu4qBwVEE0W6fW6DQFp7MQrR1cXJxtKJxfw2aIgDkKS64NV6vLtOUCIQoQr/Ab5+P4dGZJDlBp6/GWyuyVvtlbuCXlaY6i8=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2251.eurprd08.prod.outlook.com (2603:10a6:3:cc::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Tue, 21 Apr
 2020 09:51:25 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be%6]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 09:51:25 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [RFC PATCH v11 1/9] psci: export psci conduit get helper.
Thread-Topic: [RFC PATCH v11 1/9] psci: export psci conduit get helper.
Thread-Index: AQHWF4xCog26uJuT5UavVEF5u0ShTaiDUtMAgACJBgA=
Date: Tue, 21 Apr 2020 09:51:25 +0000
Message-ID: <3F1930C1-5CBA-4401-9595-1432C16EE750@arm.com>
References: <20200421032304.26300-1-jianyong.wu@arm.com>
 <20200421032304.26300-2-jianyong.wu@arm.com>
 <20200421094058.GA16306@C02TD0UTHF1T.local>
In-Reply-To: <20200421094058.GA16306@C02TD0UTHF1T.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 92d9db57-9c6c-4413-778f-08d7e5d9932b
x-ms-traffictypediagnostic: HE1PR0802MB2251:|HE1PR0802MB2251:|DB6PR0802MB2599:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0802MB2599A4393749FF7D9CE39746F4D50@DB6PR0802MB2599.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:4941;OLM:4941;
x-forefront-prvs: 038002787A
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(136003)(376002)(396003)(39860400002)(366004)(346002)(26005)(7416002)(6486002)(8676002)(54906003)(4326008)(55236004)(6862004)(2616005)(6506007)(37006003)(2906002)(316002)(33656002)(6512007)(478600001)(76116006)(66556008)(66476007)(66946007)(64756008)(66446008)(81156014)(5660300002)(91956017)(86362001)(186003)(8936002)(71200400001)(6636002)(36756003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: +I4oOEzo61Vtp+ZY1LfM7pyFg25HxJvp3daQD2KkT+bwUL69m5N1/ZRFCt7d1O7fsDQzJqcGfCIQ11lcvLiBEAbXZhRpIlU0R9jWGBfuR9ybl4GSS/q+/h713fhE9O6Cj7zZYaRUbkz5j429BTnHs3cp0vwp2WtHMA278GeZ/Ba+9MFTdfLbH9bJs2PvvzWcVTcK6nLYggWQqgvw8Ng0sOUfy1nGnX+0rD/PR3QE2PKCj1rNK7og1/86AOM8uHCLAxZ8JzMY4cMhCyFoBv0KRrBhEJN0wwNYVgQHMu8AIL4Xz5X/X4ATMYZDCkXNDyws2wK+ExZwUdW8VGCfkECqzlrvNSvCOzigykn4GrrovA9CfBhweTUIUXWFIVvI7BXzh7JgaZ7IYRIT+ZNrKJJ0HNlHiu/SOsuynpgQvKNrkVHzrOvdGqIFHctyQ6Jb0yMo
x-ms-exchange-antispam-messagedata: Umxn/qEG7j66i589fh1wWJxDSlGUrYM2daF2MoYiZWPLvL7OMuzxkYSnmMWuyPaCuGmWapHwbZFzf4vHXdE2zsH2AD2HnNNtB9pBVzf7p7tt6kkAhuMLm979PlUs7L1uEqTPRl8GwmylDTBAhPFlYw==
Content-ID: <2C3C9D2110CAC3499E56C274878C1D4D@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2251
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT056.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(46966005)(6636002)(81166007)(5660300002)(4326008)(336012)(37006003)(54906003)(82740400003)(478600001)(2906002)(6486002)(356005)(70206006)(70586007)(6862004)(6512007)(36756003)(47076004)(36906005)(2616005)(316002)(186003)(81156014)(6506007)(86362001)(8936002)(33656002)(8676002)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: e7985c54-5911-48bf-967b-08d7e5d98e7f
X-Forefront-PRVS: 038002787A
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7GwIb8HxZw1lfPHaJaHuOD1+x3fsy4Qyd0ugdaqx8mH+J7CS/ZHdFVU85s4McxP1JMxe0WRarPdsx5mEfsV9tt2U58zn4jTvD6dL4DBYhmxCIiLLm6hc7pL8Do1tEB55pxFZLb7CpzHdvqOYf2rEtkHdAyUJ5NGD/UnAYrZRZhXZ3b2B58iFVENwmfrTEJlac+agDHrLyFAdy6yyLvPagmExLOTL4zhHk3oxCJo7naI+jsH6j08ow47SW9cOda7zP4STAIHaMtrpoAUoUBb1+1JqUhhxJyNut8QqY7O+Z2NfZGJX0777qEUzfSzLb+1a1IKTW4Xv/hOdQKMRlPcbNamaLfxiCGdAU0IJA8L/pcF9fl6o0XeqlaMW+aroUG8v9Pdr2jAFxDGpyYnXxLHvpMLLHKNpJp00ec2LfT4/MoGrKqhBkRILu9F/J2JFDZhgzDSzDYWWjSpI+1GZSf8Sa91gBjNq4Od2Doq/U/4jQljPLLoKNN/biiLrjuuSSAcdfcBiRis17ZVJhTIsf5o46A==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2020 09:51:33.5357 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 92d9db57-9c6c-4413-778f-08d7e5d9932b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2599
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_025144_215054_DC0AFB51 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "maz@kernel.org" <maz@kernel.org>, Justin He <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 Steven Price <Steven.Price@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyaywNCg0KDQrvu79PbiAyMDIwLzQvMjEsIDU6NDEgUE0sICJNYXJrIFJ1dGxhbmQiIDxt
YXJrLnJ1dGxhbmRAYXJtLmNvbT4gd3JvdGU6DQoNCiAgICBPbiBUdWUsIEFwciAyMSwgMjAyMCBh
dCAxMToyMjo1NkFNICswODAwLCBKaWFueW9uZyBXdSB3cm90ZToNCiAgICA+IEV4cG9ydCBhcm1f
c21jY2NfMV8xX2dldF9jb25kdWl0IHRoZW4gbW9kdWxlcyBjYW4gdXNlIHNtY2NjIGhlbHBlciB3
aGljaA0KICAgID4gYWRvcHRzIGl0Lg0KICAgID4gDQogICAgPiBTaWduZWQtb2ZmLWJ5OiBKaWFu
eW9uZyBXdSA8amlhbnlvbmcud3VAYXJtLmNvbT4NCg0KICAgIE5pdDogcGxlYXNlIHNheSAnc21j
Y2MgY29uZHVpdCcgaW4gdGhlIGNvbW1pdCB0aXRsZS4NCg0KT2ssIEkgd2lsbCBmaXggaXQgbmV4
dCB2ZXJzaW9uLg0KDQogICAgT3RoZXJ3aXNlLCBJIHNlZSBub3QgcHJvYmxlbSB3aXRoIHRoaXMg
cHJvdmlkZWQgYW4gaW4tdHJlZSBtb2R1bGUgdXNlcw0KICAgIHRoaXMsIHNvOg0KDQogICAgQWNr
ZWQtYnk6IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+DQoNClRoYW5rcyEgR2xh
ZCB0byBnZXQgdGhpcy4NCg0KQmVzdCByZWdhcmRzDQpKaWFueW9uZyANCg0KICAgIE1hcmsuDQoN
CiAgICA+IC0tLQ0KICAgID4gIGRyaXZlcnMvZmlybXdhcmUvcHNjaS9wc2NpLmMgfCAxICsNCiAg
ICA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCiAgICA+IA0KICAgID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZmlybXdhcmUvcHNjaS9wc2NpLmMgYi9kcml2ZXJzL2Zpcm13YXJlL3Bz
Y2kvcHNjaS5jDQogICAgPiBpbmRleCAyOTM3ZDQ0YjVkZjQuLmZkM2M4OGYyMWI2YSAxMDA2NDQN
CiAgICA+IC0tLSBhL2RyaXZlcnMvZmlybXdhcmUvcHNjaS9wc2NpLmMNCiAgICA+ICsrKyBiL2Ry
aXZlcnMvZmlybXdhcmUvcHNjaS9wc2NpLmMNCiAgICA+IEBAIC02NCw2ICs2NCw3IEBAIGVudW0g
YXJtX3NtY2NjX2NvbmR1aXQgYXJtX3NtY2NjXzFfMV9nZXRfY29uZHVpdCh2b2lkKQ0KICAgID4g
IA0KICAgID4gIAlyZXR1cm4gcHNjaV9vcHMuY29uZHVpdDsNCiAgICA+ICB9DQogICAgPiArRVhQ
T1JUX1NZTUJPTChhcm1fc21jY2NfMV8xX2dldF9jb25kdWl0KTsNCiAgICA+ICANCiAgICA+ICB0
eXBlZGVmIHVuc2lnbmVkIGxvbmcgKHBzY2lfZm4pKHVuc2lnbmVkIGxvbmcsIHVuc2lnbmVkIGxv
bmcsDQogICAgPiAgCQkJCXVuc2lnbmVkIGxvbmcsIHVuc2lnbmVkIGxvbmcpOw0KICAgID4gLS0g
DQogICAgPiAyLjE3LjENCiAgICA+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
