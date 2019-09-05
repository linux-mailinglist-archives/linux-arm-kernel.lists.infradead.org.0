Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A10DAA220
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mwCLFIaqvnCp3Z7KWGuo/+Xp4L74zwBvjtbv5L27kvk=; b=EuXSD2qQohLJ0Q
	/YCJxOcPDO0fO/VCq2eOLds1pSmoM56xyH4HmWhkJ9MZg4FxysAd0UFNhz48J8t6wke852uIIKUVK
	EK50xoEasWUX+Q9X9iZB/VXI1rDWtUQGO49b19Z9oSR99UWxqhJwsw/mQkJ2Pl/TyO8DqZARNsuge
	fpzKq4znjMDTAywn/+BajnVSsTe/sSkWCYzxQIlsDbhTES7tnZ3arJU1SwxjcLGVnXG5vbRPL5ywV
	xU34lzglvTW26yF+9O5wT72mzakw/2TL+jDGObQeAhwv9maaXdEqgUXyLFUjWQkUK1Cat+GKJbEJs
	431SLCI2Mm1D7cRxdfbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qPW-0004VU-Cv; Thu, 05 Sep 2019 11:58:46 +0000
Received: from mail-db5eur03on061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::61f]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qPK-0004UO-GW
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:58:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WUGYsfjM9kyBVUywVeaX6y4zxqZfpujPG3nKRiUE3hziRXuqi7JQkurHbuZGMS/64w1u3TtmBDyIho/qLBpJzPi0Fwnl8/3aGDf5oM1Btk0fPkRMqXXM6QlCI9U2bixoHkmqa7feQKsh4HDVmy7a3O2Yre7DkHXQB7YjeLffB2kq0zW9Z17g+quXlQI1wH76w48Dx4ZLUwgym60ylbsz9PsxmCAprJUt4rXNIgtu97I6WYFGuPm7DF+fz4P7d//33eczwgLTibt4Lgh2cnkrvVcRQ8NP9iMlR8cCKl4EVLgtj/tz4UjXEWLgivIG7wzNJ0+Ed5+XDyHetl+CvKvq5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PG78jPdIsRqfdbqJDjpYA/m/cl7SG+Cj3A67sRT4aAM=;
 b=U5Ak56KckYPPDT5UPluaPBi+h/O6iStiQl48NHVGwS+7C2rKKRS8JYugMk+rt0XRSrWpaSwcye1mhOaWkkHBxOZQepLxHLWw0Qc43DjwwHRL/DZihRVG5sxFzTUuSkwpm0zujsX/LHX6RceWUa3Hk2AGQmVcD1OSJvmeR5vUsP7wgJmwavB/XlVYi8p+pf3i4AMLDxxwvIsWV0KkxSokU+aoDjMxKkl4LuR0KAcWh6YANz89a56ohrAGj1FPqkW9TO5aDKRkg1K9eFuG2HPabGWbsGOuKW9HC1FRDDeMtMKuLgqb3aSmobzNUzmWobcc5nA4S/NUApu3LFJ4dvpi+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PG78jPdIsRqfdbqJDjpYA/m/cl7SG+Cj3A67sRT4aAM=;
 b=bSwmgFFhg+R4vwyCOopvtWycmp5M5N7jvisxl6OUNXGVgqvNXMsrByniTL8F5vlkpka/mdrdTZpnEAJGmLjNRpVidC9oFUZ3VZ5saJEqzOI04W6+Qme7BY2I2KNstDq8LAfNKBxcROlZqAdh9Zy7CRAaj663abKP7pyGIuLVHUE=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3805.eurprd04.prod.outlook.com (52.134.16.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Thu, 5 Sep 2019 11:58:31 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::19cd:9f82:31ce:fbbb]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::19cd:9f82:31ce:fbbb%8]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 11:58:31 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v4 0/6] Add initial support for S32V234-EVB
Thread-Topic: [PATCH v4 0/6] Add initial support for S32V234-EVB
Thread-Index: AQHVY+E86t+wlWIUTUCUMKIcfhpZ8w==
Date: Thu, 5 Sep 2019 11:58:30 +0000
Message-ID: <20190905115803.19565-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM6P193CA0005.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:3e::18) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a16a4018-6fd5-4acd-b6d0-08d731f85ea0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3805; 
x-ms-traffictypediagnostic: VI1PR0402MB3805:|VI1PR0402MB3805:
x-ms-exchange-purlcount: 7
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3805823CD424F90EACD7126CDFBB0@VI1PR0402MB3805.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(396003)(376002)(136003)(199004)(189003)(476003)(81156014)(81166006)(2616005)(486006)(71190400001)(6436002)(1076003)(66574012)(54906003)(71200400001)(110136005)(53936002)(8676002)(7416002)(102836004)(478600001)(36756003)(966005)(14454004)(6512007)(25786009)(2501003)(2201001)(86362001)(256004)(66556008)(64756008)(66446008)(186003)(66946007)(26005)(4326008)(3846002)(7736002)(316002)(6506007)(52116002)(99286004)(8936002)(2906002)(305945005)(6486002)(14444005)(5660300002)(50226002)(66066001)(6306002)(6116002)(66476007)(6636002)(386003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3805;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iYR3QDEvB3VnGN0ntDNFNefGbtcr1Q0w8hjzDtHcdz8x5dp3i4wX1RbTBSYPoKEQZj9Cu8zDO60gbjdStR7wYXjAV4EMBB6Ehlv2aNTT+8zvLwXZkvniENzkbKcAAg1iLsY3xE79JpczToGW70K3VXyd+qxxuJOZlKAJovGtYtn8/xTJEdLnBmzHnGx+XvcFguVlukVUQfFL32tVUAivLtfXJBI7Dah1Zrb84Zpmdu0+guveFLsn5QFINcDLQGowG3Fimajr7+zRQ3si9nLhUJ4wFVXBeXN4sLnyrIGHyfyLESz2y8sOneYJPfeFxmM8IFtYpec+hqljUU/zaO6EnX8c4AoMIdCCBselxSIN2i7q44kWwtwkgM1N2jq29e3NYmoheR4eyWTYSt3Yv7oAcDe4/rS73A/JY6OfydRmBq8=
Content-ID: <26D469F00630354A92CD3F643147C50D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a16a4018-6fd5-4acd-b6d0-08d731f85ea0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 11:58:30.9833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HARod8uDfm8DEsuuN1j503QgkWXyDdsPaZDvTXxQ4znKCzDqDTYXnz/a9vTK1wk3VeK1H3GIHojqPLt+SNdkzGevbNzFMCn55D8mrqSpaZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3805
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_045834_551304_F71A1E24 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:61f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sDQoNCk5YUCdzIFMzMlYyMzRbMV0gKCJUcmVlcnVubmVyIikgdmlzaW9uIG1pY3JvcHJv
Y2Vzc29ycyBhcmUgdGFyZ2V0ZWQgZm9yDQpoaWdoLXBlcmZvcm1hbmNlLCBjb21wdXRhdGlvbmFs
bHkgaW50ZW5zaXZlIHZpc2lvbiBhbmQgc2Vuc29yIGZ1c2lvbg0KYXBwbGljYXRpb25zIHRoYXQg
cmVxdWlyZSBhdXRvbW90aXZlIHNhZmV0eSBsZXZlbHMuIFRoZXkgaW5jbHVkZSBsZWFkaW5nDQpl
ZGdlIENhbWVyYSBWaXNpb24gbW9kdWxlcyBsaWtlIEFQRVgtMiwgSVNQIGFuZCBHUFUuIFRoZSBT
MzJWMjM0LUVWQiBhbmQNClMzMlYyMzQtU0JDIGJvYXJkcyBhcmUgYXZhaWxhYmxlIGZvciBjdXN0
b21lciBldmFsdWF0aW9uLg0KDQpUaGUgZm9sbG93aW5nIHBhdGNoIHNlcmllcyBpbnRyb2R1Y2Vz
IG1pbmltYWwgZW5hYmxlbWVudCBzdXBwb3J0IGZvciB0aGUNCk5YUCBTMzJWMjM0LUVWQjJbMl0g
Ym9hcmQsIHdoaWNoIGxldmVyYWdlcyBtb3N0IG9mIHRoZSBTb0MgY2FwYWJpbGl0aWVzLg0KVXAg
dG8gdjIsIHRoaXMgc2VyaWVzIGFsc28gaW5jbHVkZWQgdGhlIGZzbF9saW5mbGV4dWFydCBkcml2
ZXIsIHdoaWNoIGhhcw0KYmVlbiBpbmNsdWRlZCBpbiBHcmVnIEtyb2FoLUhhcnRtYW4ncyB0dHkg
Z2l0IHRyZWVbM10uDQoNCkluIHRoZSBmdXR1cmUsIHdlIGFpbSB0byBzdWJtaXQgbXVsdGlwbGUg
ZHJpdmVycyB1cHN0cmVhbSwgd2hpY2ggY2FuIGJlDQpmb3VuZCBpbiB0aGUga2VybmVsIG9mIG91
ciBBdXRvIExpbnV4IEJTUFs0XSAoIkFMQiIpLCBzdGFydGluZyB3aXRoIGJhc2ljDQpwaW5tdXhp
bmcsIGNsb2NrIGFuZCB1U0RIQyBkcml2ZXJzLg0KDQpGb3IgdmFsaWRhdGlvbiwgeW91IGNhbiB1
c2UgdGhlIFUtQm9vdCBib290bG9hZGVyIGluIHRoZSBBTEJbNV0sIHdoaWNoIHdlDQpidWlsZCBh
bmQgdGVzdCB3aXRoIG91ciBwYXRjaGVkIHZlcnNpb24gb2YgdGhlIExpbmFybyBHQ0MgNi4zLjEg
MjAxNy4wNQ0KdG9vbGNoYWluIGZvciBBUk0gNjQtYml0LCB3aXRoIHNvdXJjZXMgYXZhaWxhYmxl
IG9uIFs2XS4NCg0KQ2hhbmdlcyBpbiB2NDoNCiogUmVtb3ZlIHRoZSBwYXRjaCAnc2VyaWFsOiBm
c2xfbGluZmxleHVhcnQ6IFVwZGF0ZSBjb21wYXRpYmxlIHN0cmluZycNCiAgZm9sbG93aW5nIGl0
cyBhY2NlcHRhbmNlWzddOw0KKiBSZWJhc2VkIHRoZSBwYXRjaCAnc2VyaWFsOiBmc2xfbGluZmxl
eHVhcnQ6IEJlIGNvbnNpc3RlbnQgd2l0aCB0aGUgbmFtZScNCiAgb24gdGhlIHR0eS1uZXh0IGJy
YW5jaCBpbiBHcmVnJ3MgdHR5IGdpdCB0cmVlLg0KDQpDaGFuZ2VzIGluIHYzOg0KKiBSZW1vdmUg
dGhlIHBhdGNoICd0dHk6IHNlcmlhbDogQWRkIGxpbmZsZXh1YXJ0IGRyaXZlciBmb3IgUzMyVjIz
NCcNCiAgZm9sbG93aW5nIGl0cyBhY2NlcHRhbmNlWzNdOw0KKiBSZXBsYWNlICdGcmVlc2NhbGUn
IHdpdGggJ05YUCcgaW4gdGhlIEFSQ0hfUzMyIGNvbmZpZyBkZWZpbml0aW9uIGFuZCB0aGUNCiAg
J21vZGVsJyBwcm9wZXJ0eSBmcm9tIHRoZSBkZXZpY2UgdHJlZTsNCiogUmVtb3ZlIHRoZSAnZnNs
LScgcHJlZml4ZXMgZnJvbSB0aGUgZHRzaSBhbmQgZHRzIGZpbGUgbmFtZXM7DQoqIE1vdmUgdGhl
ICdtb2RlbCcgcHJvcGVydHkgZnJvbSAoZnNsLSlzMzJ2MjM0LmR0c2kgdG8gczMydjIzNC1ldmIu
ZHRzOw0KKiBBZGQgbmV3bGluZXMgYmV0d2VlbiB0aGUgY3B1IG5vZGVzIGluIHMzMnYyMzQuZHRz
aTsNCiogTWFrZSB1c2Ugb2YgR0lDX1NQSSwgR0lDX1BQSSwgR0lDX0NQVV9NQVNLX1NJTVBMRSBh
bmQgSVJRX1RZUEVfKiBpbiB0aGUNCiAgJ2ludGVycnVwdHMnIHR1cGxlczsNCiogTW92ZSB0aGUg
J3RpbWVyJyBhbmQgJ2ludGVycnVwdC1jb250cm9sbGVyJyBub2RlcyBiZWZvcmUgJ3NvYycgaW4N
CiAgczMydjIzNC5kdHNpOw0KKiBCZSBjb25zaXN0ZW50IHdpdGggdGhlICdMSU5GbGV4RCcgc3Bl
bGxpbmcgaW4gZG9jdW1lbnRhdGlvbiwgc3RyaW5ncyBhbmQNCiAgY29tbWVudHM7IGFkZCBuZXcg
cGF0Y2ggJ3NlcmlhbDogZnNsX2xpbmZsZXh1YXJ0OiBCZSBjb25zaXN0ZW50IHdpdGggdGhlDQog
IG5hbWUnIHRvIHVwZGF0ZSB0aGUgTElORmxleEQgZHJpdmVyIGFzIHdlbGw7DQoqIFJlbW92ZSBm
cm9tIGZzbCxzMzItbGluZmxleHVhcnQudHh0IGEgc3RhdGVtZW50IHJlZ2FyZGluZyB0aGUgbGlt
aXRhdGlvbg0KICB0byBVQVJUIG1vZGU7DQoqIE1ha2UgdGhlIGNvbXBhdGlibGUgc3RyaW5nIFNv
QyBzcGVjaWZpYyAoImZzbCxzMzJ2MjM0LWxpbmZsZXh1YXJ0Iik7IGFkZA0KICBuZXcgcGF0Y2gg
J3NlcmlhbDogZnNsX2xpbmZsZXh1YXJ0OiBVcGRhdGUgY29tcGF0aWJsZSBzdHJpbmcnIHRvIHVw
ZGF0ZQ0KICB0aGUgTElORmxleEQgZHJpdmVyIGFzIHdlbGw7DQoqIEluIHRoZSBMSU5GbGV4RCBi
aW5kaW5nIGRvY3VtZW50YXRpb24sIGluc2VydCBhIHNwYWNlIGJldHdlZW4gbGFiZWwgYW5kDQog
IG5vZGUgbmFtZSBhbmQgcmVtb3ZlIHRoZSAnc3RhdHVzJyBwcm9wZXJ0eS4NCg0KQ2hhbmdlcyBp
biB2MjoNCiogVXBkYXRlIHRoZSBlbnRyeSBpbiBmc2wueWFtbCB0byBhcHBseSB0byBhbGwgUzMy
VjIzNCBiYXNlZCBib2FyZHM7DQoqIEFkZCBjaG9zZW4gbm9kZSB0byBkdHMsIHdpdGggYSAnc3Rk
b3V0LXBhdGgnIHByb3BlcnR5IGZvciBlYXJseWNvbjsNCiogUmVtb3ZlIGxpbmZsZXhfdmVyaWZ5
X3BvcnQoKSwgYmVjYXVzZSBpdCB3YXMgb25seSBjYWxsZWQgZnJvbQ0KICB1YXJ0X3NldF9pbmZv
KCksIHdoaWNoIHdhcyBnb2luZyB0byBhbHdheXMgZmFpbCBhdCB0aGUgImJhdWRfYmFzZSA8IDk2
MDAiDQogIGNoZWNrLCBhcyB3ZSBhcmUgbm90IHVzaW5nIHVhcnRjbGsgZnJvbSB1YXJ0X3BvcnQg
eWV0Ow0KKiBGaXggY29tcGF0aWJsZSBzdHJpbmcgdXNlZCBpbiBPRl9FQVJMWUNPTl9ERUNMQVJF
Lg0KDQpbMV0gaHR0cHM6Ly93d3cubnhwLmNvbS9wcm9kdWN0cy9wcm9jZXNzb3JzLWFuZC1taWNy
b2NvbnRyb2xsZXJzL2FybS1iYXNlZC1wcm9jZXNzb3JzLWFuZC1tY3VzL3MzMi1hdXRvbW90aXZl
LXBsYXRmb3JtL3Zpc2lvbi1wcm9jZXNzb3ItZm9yLWZyb250LWFuZC1zdXJyb3VuZC12aWV3LWNh
bWVyYS1tYWNoaW5lLWxlYXJuaW5nLWFuZC1zZW5zb3ItZnVzaW9uOlMzMlYyMzQNClsyXSBodHRw
czovL3d3dy5ueHAuY29tL3N1cHBvcnQvZGV2ZWxvcGVyLXJlc291cmNlcy9ldmFsdWF0aW9uLWFu
ZC1kZXZlbG9wbWVudC1ib2FyZHMvdWx0cmEtcmVsaWFibGUtZGV2LXBsYXRmb3Jtcy9zMzJ2LW1w
dXMtcGxhdGZvcm1zL3MzMnYtdmlzaW9uLWFuZC1zZW5zb3ItZnVzaW9uLWV2YWx1YXRpb24tc3lz
dGVtOlMzMlYyMzRFVkINClszXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC9ncmVna2gvdHR5LmdpdC9jb21taXQvP2g9dHR5LW5leHQmaWQ9Yjk1MzgxNWI4
MTliMGYzMjdiNTUzOGZlYmEzNjM5ZDUyZGI3MDE3Mg0KWzRdIGh0dHBzOi8vc291cmNlLmNvZGVh
dXJvcmEub3JnL2V4dGVybmFsL2F1dG9ic3BzMzIvbGludXgvDQpbNV0gaHR0cHM6Ly9zb3VyY2Uu
Y29kZWF1cm9yYS5vcmcvZXh0ZXJuYWwvYXV0b2JzcHMzMi91LWJvb3QvDQpbNl0gaHR0cHM6Ly9z
b3VyY2UuY29kZWF1cm9yYS5vcmcvZXh0ZXJuYWwvczMyZHMvY29tcGlsZXIvZ2NjLw0KWzddIGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2dyZWdraC90dHku
Z2l0L2NvbW1pdC8/aD10dHktbmV4dCZpZD0yYmQzNjYxZWEwZWIyMDU2ODUyY2JjNThjNWQ5NmJi
NGRmMmYxNjRmDQoNCkVkZHkgUGV0cmnImW9yICgxKToNCiAgZHQtYmluZGluZ3M6IGFybTogZnNs
OiBBZGQgdGhlIFMzMlYyMzQtRVZCIGJvYXJkDQoNCk1paGFlbGEgTWFydGluYXMgKDIpOg0KICBh
cm02NDogSW50cm9kdWNlIGNvbmZpZyBmb3IgUzMyDQogIGFybTY0OiBkZWZjb25maWc6IEVuYWJs
ZSBjb25maWdzIGZvciBTMzJWMjM0DQoNClN0ZWZhbi1HYWJyaWVsIE1pcmVhICgxKToNCiAgc2Vy
aWFsOiBmc2xfbGluZmxleHVhcnQ6IEJlIGNvbnNpc3RlbnQgd2l0aCB0aGUgbmFtZQ0KDQpTdG9p
Y2EgQ29zbWluLVN0ZWZhbiAoMik6DQogIGFybTY0OiBkdHM6IGZzbDogQWRkIGRldmljZSB0cmVl
IGZvciBTMzJWMjM0LUVWQg0KICBkdC1iaW5kaW5nczogc2VyaWFsOiBEb2N1bWVudCBGcmVlc2Nh
bGUgTElORmxleEQgVUFSVA0KDQogLi4uL2FkbWluLWd1aWRlL2tlcm5lbC1wYXJhbWV0ZXJzLnR4
dCAgICAgICAgIHwgICAyICstDQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1s
ICAgICAgICAgIHwgICA2ICsNCiAuLi4vYmluZGluZ3Mvc2VyaWFsL2ZzbCxzMzItbGluZmxleHVh
cnQudHh0ICAgfCAgMjIgKysrDQogYXJjaC9hcm02NC9LY29uZmlnLnBsYXRmb3JtcyAgICAgICAg
ICAgICAgICAgIHwgICA1ICsNCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9NYWtlZmls
ZSAgICAgICAgfCAgIDIgKw0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL3MzMnYyMzQt
ZXZiLmR0cyB8ICAyNSArKysrDQogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvczMydjIz
NC5kdHNpICAgIHwgMTM5ICsrKysrKysrKysrKysrKysrKw0KIGFyY2gvYXJtNjQvY29uZmlncy9k
ZWZjb25maWcgICAgICAgICAgICAgICAgICB8ICAgMyArDQogZHJpdmVycy90dHkvc2VyaWFsL0tj
b25maWcgICAgICAgICAgICAgICAgICAgIHwgICA4ICstDQogZHJpdmVycy90dHkvc2VyaWFsL2Zz
bF9saW5mbGV4dWFydC5jICAgICAgICAgIHwgICA0ICstDQogaW5jbHVkZS91YXBpL2xpbnV4L3Nl
cmlhbF9jb3JlLmggICAgICAgICAgICAgIHwgICA0ICstDQogMTEgZmlsZXMgY2hhbmdlZCwgMjEx
IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJpYWwvZnNsLHMzMi1saW5mbGV4dWFydC50
eHQNCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvczMy
djIzNC1ldmIuZHRzDQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL3MzMnYyMzQuZHRzaQ0KDQotLSANCjIuMjIuMA0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
