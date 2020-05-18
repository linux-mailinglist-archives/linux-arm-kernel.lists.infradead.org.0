Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 763801D7F7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 19:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmefrPrttMwkel+SZwx21GkVzwCuAYsZzk5WjgEF1oE=; b=pLB4TUJU+m9oS5
	u8A8TzT6EFUwHqgbTVxm1aZE1Y23yt9XPe22mtxZWqfq62qaZZMhJnvYxyzoaCfj+w81qO5oM0wnk
	mYU7aCSHD6DvzyplDsf5k0iDY2QusmLCfwtUlL+BiD79oAwRGqbSb7hXSVwTF4HdHD0Bo1qzPZBbP
	f5KZjuFUVsoNVl2myar+sYNUgTCJ6vVgnD4xNHxYmDwkDYThKLReYTnuDN6qO42HAv5YyFuks/OTA
	gmgqxSKgjxgM08q/AUsSqeJJElrYuOxrJU4wwxOmNlWBdIGzkl0ZeMhjlEHuxJvvaMOujvG93vOEQ
	1R+FO0bmX6zK4M427ZQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaj8P-0008OX-Tn; Mon, 18 May 2020 17:01:01 +0000
Received: from mail-db8eur05on2041.outbound.protection.outlook.com
 ([40.107.20.41] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaj8A-0008NE-Na
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 17:00:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x4St5SQ/kgakzug95ROFQsXaCISGu0qUT1rT0abUucc=;
 b=9Yy8NGTvwVDLLgXX54X2FSvFm1c3E+v6D+TBWoS2tTRvQzPetMLDmcqHQlmDamDxKUIRm12Peraokm8rUIiT5bqOcWEc9IEBdpfwKD7N8qD1KCL9TZqkGhF/xwokLsfkDhy6Ki5Uec4UdUAX2bX/lOg3u7oDM2gaY4xSVE62nxM=
Received: from DB6PR0601CA0043.eurprd06.prod.outlook.com (2603:10a6:4:17::29)
 by AM6SPR01MB0057.eurprd08.prod.outlook.com (2603:10a6:20b:d1::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Mon, 18 May
 2020 17:00:41 +0000
Received: from DB5EUR03FT025.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:17:cafe::b9) by DB6PR0601CA0043.outlook.office365.com
 (2603:10a6:4:17::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20 via Frontend
 Transport; Mon, 18 May 2020 17:00:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT025.mail.protection.outlook.com (10.152.20.104) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.19 via Frontend Transport; Mon, 18 May 2020 17:00:41 +0000
Received: ("Tessian outbound b3a67fbfbb1f:v54");
 Mon, 18 May 2020 17:00:41 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 82c7d8ced61aa4e8
X-CR-MTA-TID: 64aa7808
Received: from d64a71b1f156.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 C13E941D-41F9-4707-B637-E728678CCCA6.1; 
 Mon, 18 May 2020 17:00:35 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d64a71b1f156.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 18 May 2020 17:00:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mdJd1iBUVWdzJ2UQLnvT2fkEwJvEZWdbyjnBtHjfmx+Tcy6hFI+UPsoQ/cPTPfeHMid5PMzlHm36NwfdK8p8z6CD0Ddw3aPeFbtGgCUDDv59USmsUvztPqTjm50zi6mfzzXjsmrv5gnEOqBIYstF45hOYhdvMoEhbFZZUalnyXwJ6nFWbirLoz9uMaCw986pnWvSCBe1TV7fEWguFB6imSftGcPhikwLr4V+OnBSDkacuJQOCgVizgu26exlg9GW3lZ81zK8hqAHpBs0+9tXrKpdedA4ygrdwuLMOnXMHGVyYQBf4C2DNSM6tlJ5SZPDXe/yGgX5PxRocDP9pGttnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x4St5SQ/kgakzug95ROFQsXaCISGu0qUT1rT0abUucc=;
 b=KoqhOWEAUQqiF8SbWJnh1fsxV3hpeGiVuKJ2uDEIZAVLMzu+RO8LepHM8Fete7gR4NMQjBOulHVSvj+EJyudfdrPAYuZf0dts6PPcRrcz+F5csMipIL/TUbm6/vPpVuLPkPqajX+7cS05l3IXkRYQ91YNgaraMA7xsdsRKdctCxJAdrlRXHzBFb5nL/4TO6zIEaSCzOCf2VD5kHd59JBpuRE/yGzSnHQN9t4THZDlcHn1eDEp2z3i7uMK5L0vneMrEtiOUpcSPpCPgFTIr2gzAV2CVzW7SmEJLD29WOLVgm73lTR172gCIbFrQ7RhDD3fACmYIdztoWhlXWKbASgkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x4St5SQ/kgakzug95ROFQsXaCISGu0qUT1rT0abUucc=;
 b=9Yy8NGTvwVDLLgXX54X2FSvFm1c3E+v6D+TBWoS2tTRvQzPetMLDmcqHQlmDamDxKUIRm12Peraokm8rUIiT5bqOcWEc9IEBdpfwKD7N8qD1KCL9TZqkGhF/xwokLsfkDhy6Ki5Uec4UdUAX2bX/lOg3u7oDM2gaY4xSVE62nxM=
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com (2603:10a6:20b:e7::32)
 by AM6PR08MB3895.eurprd08.prod.outlook.com (2603:10a6:20b:81::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Mon, 18 May
 2020 17:00:33 +0000
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859]) by AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859%7]) with mapi id 15.20.3000.034; Mon, 18 May 2020
 17:00:33 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Dave P Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH] arm64: vdso: Fix CFI info in sigreturn.
Thread-Topic: [PATCH] arm64: vdso: Fix CFI info in sigreturn.
Thread-Index: AQHWKtTHE/D4X3zrrk2Q5gPXdod0r6iuBPOAgAAREIA=
Date: Mon, 18 May 2020 17:00:32 +0000
Message-ID: <AC859EC1-68DE-4E66-9CD6-D4D42F191D1D@arm.com>
References: <20200515162020.78169-1-daniel.kiss@arm.com>
 <20200518155926.GA21779@arm.com>
In-Reply-To: <20200518155926.GA21779@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
x-originating-ip: [2001:4c4c:1b20:6ff0:8441:bc32:37e2:6af6]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 092156b8-a0a3-47da-b32e-08d7fb4cff30
x-ms-traffictypediagnostic: AM6PR08MB3895:|AM6SPR01MB0057:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6SPR01MB00576E5AAB662A76748315D0ECB80@AM6SPR01MB0057.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:6790;OLM:6790;
x-forefront-prvs: 04073E895A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: KFWkb2W5638mqQBn/EGIwYUJx6vMmM1baQUK4UEgJssxMy/aeFzl+Lek9zHhGmf6qc7mQ2EQploGD1yBG32BYj6JHx9ZUz1MDHNkyGVKbZZ6PIdBgrQH7fz4eEVnjc3Hm8c/Kx5wWkKxT2eogRXkR9cdtsJ4k7tShk/f3czrWAa08X3/71u5A/+AgOvXW+VHPSOx+nKDYuoOir4vMf0jQuHePHCxeUwpSSF5nTG8+F7ctSlsqUGRQue/usmNSxtKYb7o2gQ27P0wszk3a+wCo3mW8D22q+Dz4BsRA0/GR+tWr7NslDBd/CxHsWslqAEf37k63YIVCOBpIyks91/dO3GJoimvimBBkqGFAEDfjF61kktFe66DQscnRcRiJZeUYQ+48judmTdwZljn+pJHGA95pBrEAmP7EjhxPhqi5YsOZd1kDu3wBrUgqMFc2WDrsTslY1769gIikvfYpLWMmcMg0peYLedLxTYTYgQEooQfdy1Ab4i5ZWbh/Hf0HU+ouGUZ/RRmRctFKtIj70q5jw==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB5256.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(136003)(346002)(366004)(376002)(39860400002)(6512007)(2906002)(91956017)(5660300002)(966005)(66946007)(76116006)(54906003)(36756003)(33656002)(316002)(37006003)(8676002)(6636002)(186003)(71200400001)(6862004)(8936002)(53546011)(6486002)(478600001)(4326008)(2616005)(86362001)(66556008)(6506007)(66476007)(64756008)(66446008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: zE8gTrKIJdHplbTiTIwwgf3YmpRqb8TwqqvfyBHutVD/DHu4V/8WxV2Xu3gjQoTiDY2MEXDR27+5iR13IHII9NHwVJx9hR69NZCUoBVp6aeq3+s1nlxD3k8OitQc6DvK36wPBAJ7+OllbwUs+wteORhBfuM1FE+HM9hajWBARME5AQt+XO5TXOkdMZ5MsU0bEOAfut54weNz5u2AFN6u3hDrewx3Uso3+EmdrmNF88/rPh8kZC/SdxLBcwujEk1nn+8UqgAtTwTixILDYs6sdmR8MrQs8abSOAjtDVlvEvCc+Wj5OpzozY3rxnLT2oBu4HEWIEsxfftk6GBasDyWPmEa4/DHUICwc4/n0J2It9meq3PomBGxb1OoOfO62nMTX8JNvcMx4z1lxXWKd7R5Y8Y+Z5HOy5UhcxWFIOMLeT2E0q+YWpxgG7NsY8+yBV5h8WeX8VxFnC5lvm7YA2/DcamUA+eGE2xN4dckT0o8txYgXuoPo43xe0tWBNRYnOqfq2HQAsFiZwnlb0MDacaE4n125wCQa6vX2JzGMk7EXQzC7ZPcsGIVDgi6rGM9b8TV
Content-ID: <46D8B76E5087AA4FB63ACD3555B4F331@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3895
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT025.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(39860400002)(136003)(396003)(346002)(376002)(46966005)(6636002)(6506007)(8676002)(33656002)(53546011)(81166007)(356005)(6512007)(2906002)(82310400002)(2616005)(47076004)(336012)(70586007)(70206006)(36756003)(4326008)(6486002)(54906003)(316002)(6862004)(82740400003)(966005)(26005)(478600001)(86362001)(8936002)(5660300002)(37006003)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: b7216678-e047-47ab-44e1-08d7fb4cfa37
X-Forefront-PRVS: 04073E895A
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yL3Y0tigHQS9ye4we/lTAZXTaxbj9m9tBrDWDkGHnGe2pbr0uOYutn1E8wTSKehgtASjjE9Na2cGZYF7ukY8cbA7XNCQTWtTUAT+QL6ONeH/jrueyY+PzzDeNJk/X0F0K9SPMJTPA5rRz81ix85Whu+RuH0Z14ryH0uCZhBLkC+I/P20gxMzpqLDLKyoepi4up6tupEdrLiD4tTNT+UBOUZknXnmo+bFIGTtIymPdFetT1ZThuKw9L16+LuMngkcMV8e6l9gjAM+IPWcyl2gIKMN5nGq7UXh39h+dh+TKnrVYnJRRZey7wHOVwlARxPW0RHHI4cQ2PAbe3TBXrIhwvzsIMTJwlbEnDMKGOG+qfIlhkShbZOiWMteJdhh1vl3TeTFz6fo6wF/gP9VAMUNinJ5MOyN78/spDzTjg3MMaFXYNFitZfmxtqI80581mZwRnHVJORr6BTyxmLPmYdAcW/RZqaQDeEd4ZwjRYQTWTyFmXR6h2L/A9JI1GvGzn0qHM5Tv30bH5A2sWiyDF0b1Tx7IwW1R38hQfRtyhR8/XljXywiZIVsWiGF9BJvTDGEgs1PnQ6p23gHw1SOGF5mzfW3dUWfY50rE5+1GrkINvI=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2020 17:00:41.3622 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 092156b8-a0a3-47da-b32e-08d7fb4cff30
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6SPR01MB0057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_100046_945178_8041272E 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.41 listed in wl.mailspike.net]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Tamas Zsoldos <Tamas.Zsoldos@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gT24gMTggTWF5IDIwMjAsIGF0IDE3OjU5LCBEYXZlIE1hcnRpbiA8RGF2ZS5NYXJ0aW5A
YXJtLmNvbT4gd3JvdGU6DQo+IA0KPiBPbiBGcmksIE1heSAxNSwgMjAyMCBhdCAwNjoyMDoyMFBN
ICswMjAwLCBkYW5raXMwMSB3cm90ZToNCj4+IFdoZW4gdGhlIHNpZ25hbCBoYW5kbGVyIGlzIGNh
bGxlZCB0aGUgcmVnaXN0ZXJzIHNldCB1cCBhcyB0aGUgcmV0dXJuIGFkZHJlc3MNCj4+IHBvaW50
cyB0byB0aGUgX19rZXJuZWxfcnRfc2lncmV0dXJuLiBUaGUgTk9QIGhlcmUgaXMgdGhlIHBsYWNl
aG9sZGVyIG9mIHRoZQ0KPj4gYnJhbmNoIGFuZCBsaW5rIGluc3RydWN0aW9uIHRoYXQgImNhbGxz
IiB0aGUgc2lnbmFsIGhhbmRsZXIuIEluIGNhc2Ugb2YgYQ0KPj4gcmV0dXJuIGFkZHJlc3MgdGhl
IHVud2luZGVyIGlkZW50aWZpZXMgdGhlIGxvY2F0aW9uIG9mIHRoZSBjYWxsZXIgYmVjYXVzZQ0K
Pj4gaW4gc29tZSBjYXNlcyB0aGUgcmV0dXJuIGFkZHJlc3MgbWlnaHQgbm90IGV4aXN0LiBTaW5j
ZSB0aGUgLmNmaV9zdGFydHByb2MNCj4+IGlzIGFmdGVyIHRoZSBOT1AsIGl0IHdvbid0IGJlIGFz
c29jaWF0ZWQgd2l0aCBhbnkgbG9jYXRpb24gYW5kIHRoZQ0KPj4gdW53aW5kZXIgd2lsbCBzdG9w
IHdhbGtpbmcuDQo+PiANCj4+IFRoaXMgY2hhbmdlIGNvcnJlY3RzIHRoZSBnZW5lcmF0ZWQgRUhG
cmFtZXMgb25seS4NCj4gDQo+IFRoaXMgaXMgYSBjYW4gb2Ygd29ybXMuDQo+IA0KPiBXaGljaCB1
bndpbmRlciBhcmUgeW91IGxvb2sgYXQsIGFuZCB3aGF0IGRvIG90aGVyIHVud2luZGVycyBkbz8g
IEFyZSB5b3UNCj4gc3VyZSB0aGUgdW53aW5kZXIgaXMgZG9pbmcgc29tZXRoaW5nIHZhbGlkPyAg
SXMgdGhpcyBhIG5ld2x5IG9ic2VydmVkDQo+IHByb2JsZW0sIG9yIGhhcyBpdCBoYXBwZW5lZCBm
b3JldmVyPw0KSSBydW4gaW50byB0aGlzIHdpdGggTExWTeKAmXMgdW53aW5kZXIuDQpUaGlzIGNv
bWJpbmF0aW9uIHdhcyBhbHdheXMgYnJva2VuLg0KDQo+IFdoeSBzaG91bGQgdGhlcmUgYmUgYW55
IGluc3RydWN0aW9uIHRoYXQgImNhbGxzIiB0aGUgc2lnbmFsIGhhbmRsZXI/DQpJdCBpcyBqdXN0
IGZyb20gdGhlIHVud2luZGVyL3VzZXIgc3BhY2UgcG9pbnQgb2Ygdmlldy4gIE5vcm1hbGx5IHRo
YXQgaW5zdHJ1Y3Rpb24gd291bGQgc2V0IHRoZSByZXR1cm4gYWRkcmVzcywNCmFuZCBzb21lIGNh
c2VzIGluIHRoZSB1c2Vyc3BhY2Ugbm8gaW5zdHJ1Y3Rpb24gaXMgZ2VuZXJhdGVkIGZvciB0aGUg
cmV0dXJuIGFkZHJlc3Mgd2hlbiB0aGUgY29tcGlsZXIga25vd3MgDQppdCBpcyB1bnJlYWNoYWJs
ZS4NCg0KPiBJbiB0aGUgY2FzZSBpcyBhIFNJR1NFR1YgdGhlIGFmZmVjdGVkIGluc3RydWN0aW9u
IGlzIGFmdGVyIHRoZSBwYyBhbmQNCj4gbm90IGJlZm9yZSBpdDsgZm9yIGFuIGFzeW5jaHJvbm91
cyBzaWduYWwgYW5kIG5vdGlvbiBvZiBhICJjYWxsaW5nIg0KPiBpbnN0cnVjdGlvbiBpcyBub25z
ZW5zZS4NCj4gDQo+IA0KPiBDZXJ0YWlubHkgSSd2ZSBzZWVuIGNvcnJlY3QgdW53aW5kaW5nIHRo
cm91Z2ggc2lnbmFsIGhhbmRsZXJzIHdpdGggZ2xpYmMNCj4gYW5kIGdkYiwgYnV0IEkgaGFkbid0
IHRyaWVkIGV2ZXJ5dGhpbmfigKYNCkdEQiByZWNvZ25pc2UgX19rZXJuZWxfcnRfc2lncmV0dXJu
IHRvIHVud2luZCBpdCBjb3JyZWN0bHksIGFzIEkgc2VlIGl0Og0KaHR0cHM6Ly9naXRodWIuY29t
L2JtaW5vci9iaW51dGlscy1nZGIvYmxvYi8zNTgwODEwYzUxYmMxN2M5NDdkMGRkNmE3ZjRlYjM5
OWQ3Y2E0NjE5L2dkYi9pMzg2LWxpbnV4LXRkZXAuYyNMMjY1DQo+IA0KPj4gDQo+PiBTaWduZWQt
b2ZmLWJ5OiBEYW5pZWwgS2lzcyA8ZGFuaWVsLmtpc3NAYXJtLmNvbT4NCj4+IFNpZ25lZC1vZmYt
Ynk6IFRhbWFzIFpzb2xkb3MgPHRhbWFzLnpzb2xkb3NAYXJtLmNvbT4NCj4+IC0tLQ0KPj4gYXJj
aC9hcm02NC9rZXJuZWwvdmRzby9zaWdyZXR1cm4uUyB8IDQgKystLQ0KPj4gMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4+IA0KPj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLlMgYi9hcmNoL2FybTY0L2tlcm5lbC92
ZHNvL3NpZ3JldHVybi5TDQo+PiBpbmRleCAxMjMyNDg2M2Q1YzIuLjVkNTBlZTkyZmFhNCAxMDA2
NDQNCj4+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLlMNCj4+ICsrKyBi
L2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLlMNCj4+IEBAIC0xMywxMyArMTMsMTMg
QEANCj4+IA0KPj4gCS50ZXh0DQo+PiANCj4+IC0Jbm9wDQo+PiAtU1lNX0ZVTkNfU1RBUlQoX19r
ZXJuZWxfcnRfc2lncmV0dXJuKQ0KPj4gCS5jZmlfc3RhcnRwcm9jDQo+PiAJLmNmaV9zaWduYWxf
ZnJhbWUNCj4+IAkuY2ZpX2RlZl9jZmEJeDI5LCAwDQo+PiAJLmNmaV9vZmZzZXQJeDI5LCAwICog
OA0KPj4gCS5jZmlfb2Zmc2V0CXgzMCwgMSAqIDgNCj4gDQo+IEhtbSwgcmVjb3ZlcmluZyB4Mjks
eDMwIGxpa2UgdGhpcyB3aWxsIGJlIHdyb25nIGlmIHRoZSBzaWduYWwgaGFuZGxlcg0KPiBtdW5n
ZXMgc2lnY29udGV4dCBpbiB0aGUgbWVhbnRpbWUgKHNheSwgZG9pbmcgc29tZSBraW5kIG9mIHVz
ZXJzcGFjZQ0KPiBjb250ZXh0IHN3aXRjaCkuDQo+IA0KPiBUaGV5IHNob3VsZCBiZSBwdWxsZWQg
b3V0IG9mIHNpZ2NvbnRleHQgaW5zdGVhZCByZWFsbHkuICBBRkFJSywgdGhhdCdzDQo+IHdoYXQg
Ii5jZmlfc2lnbmFsX2ZyYW1lIiBpcyBzdXBwb3NlZCB0byB0ZWxsIHRoZSB1bndpbmRlci4gIEkn
bSBub3Qgc3VyZQ0KPiB3aHkgd2UgaGF2ZSB0aGVzZSBhZGRpdGlvbmFsLCBjb25mbGljdGluZyBh
bm5vdGF0aW9ucyBoZXJlLg0KVGhlIHVud2luZGVyIHdvbuKAmXQgZmluZCB0aGUg4oCcY2ZpX3Np
Z25hbF9mcmFtZeKAnSB1bnRpbCBpdCBmaWd1cmVzIG91dCB0aGUgdW53aW5kIGVudHJ5Lg0KDQo+
IEFueSBpZGVhcywgV2lsbD8NCj4gDQo+IFRoaXMgcHJvYmFibHkgaXNuJ3QgcmVsYXRlZCB0byB0
aGUgYnVnIGhlcmUsIGJ1dCBpdCB3b3VsZCBiZSBnb29kIHRvDQo+IHVuZGVyc3RhbmQuDQo+IA0K
Pj4gKwlub3AgIC8qIHBsYWNlaG9sZGVyIGZvciBibCBzaWduYWxoYW5kbGVyICovDQo+IA0KPiBX
aWxsIGNhbiBjb3JyZWN0IG1lIG9uIHRoaXMsIGJ1dCBJIHNlZW0gdG8gcmVtZW1iZXIgc29tZXRo
aW5nIGFib3V0IG5vcA0KPiBiZWluZyB0aGVyZSBmb3IgcGFkZGluZywgc28gdGhhdCB0aGVyZSBp
cyBhIGd1YXJhbnRlZWQgZ2FwIGJldHdlZW4NCj4gdW53aW5kIGVudHJpZXMuDQo+IA0KPiBJIGNh
bid0IHJlbWVtYmVyIHRoZSBwcmVjaXNlIHJlYXNvbmluZywgYnV0IHRoZXJlIGFyZSBzb21lIG5h
c3R5IGVkZ2UNCj4gY2FzZXMgY29ubmVjdGVkIHdpdGggdGhlIGZhY3QgdGhhdCB0aGUgbGlua2Vy
IGNhbiBwbGFjZSBhbm90aGVyIHJhbmRvbQ0KPiB1bndpbmQgYmxvY2sgZnJvbSBhbm90aGVyIC5v
IGltbWVkaWF0ZWx5IGJlZm9yZSB0aGlzIG9uZS4NCj4gDQo+IENoZWVycw0KPiAtLS1EYXZlDQo+
IA0KPj4gK1NZTV9GVU5DX1NUQVJUKF9fa2VybmVsX3J0X3NpZ3JldHVybikNCj4+IAltb3YJeDgs
ICNfX05SX3J0X3NpZ3JldHVybg0KPj4gCXN2YwkjMA0KPj4gCS5jZmlfZW5kcHJvYw0KPj4gLS0g
DQo+PiAyLjE3LjENCj4gDQo+IFsuLi5dDQo+IA0KPiBDaGVlcnMNCj4gLS0tRGF2ZQ0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
