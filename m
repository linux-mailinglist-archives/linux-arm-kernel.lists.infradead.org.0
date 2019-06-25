Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85494527AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:12:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+HjB/knQOh0b2hqT69nEtCWKIfh0UhL1ClHjg1zkuo=; b=U6f3ORAxkIoAbs
	rchDLS/S56JfRrsuS5RI3P48IPVCUYZBig+wt4+Xmpc0nUXdWGfasOSOSQDyUAG+roXhQWL3ppJYV
	Pk8mp66jVJ32O9j+6SnttEhRKo5vxzzolCDRm2P40z9+VELGmhY8/67I8KBpVRAYB3cGif2Hs0iEK
	eRFDNe5tt0V8Wf/Gs3EI4bStVupcJYDhPrj9+kctieWRicfihU1BPHb2RJVoADHOFSdTpNdvBLlDN
	YyTZkG/6A8wweFOLPL5TG6Mypx09J8/A6dVgG150RgDER0jCsaUczQjEyVaPXNfcALIJjBb/iYEiD
	M07phFxX5KVXnwhYUJTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhV8-0000tf-1W; Tue, 25 Jun 2019 09:12:30 +0000
Received: from mail-eopbgr130050.outbound.protection.outlook.com
 ([40.107.13.50] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhSN-0006Ya-KM
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:09:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o01O/rm7uNyXmnUCSHhr0mM0DkDG2jsNJRRlKUnxSnU=;
 b=QnBbTKE7P0U43cCzl4OqIMW5hIZNXZrFCSxdXBNhoJ3i3dDlIyIN42H48KP7WmcmacWWnWCeSfjymA1IFsXipdzIo3Bxk2vuqozlAwrrWhaubXWD30oKOkWN0BYOrWa4zCBGPJJXwuoQfQLHq3aVtBMY4S6bENsMm17mWQcZgjQ=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB6746.eurprd04.prod.outlook.com (20.179.251.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 09:09:35 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::93a:4344:1120:4ca0]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::93a:4344:1120:4ca0%6]) with mapi id 15.20.2008.017; Tue, 25 Jun 2019
 09:09:35 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "l.subrahmanya@mobiveil.co.in"
 <l.subrahmanya@mobiveil.co.in>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>, Leo Li
 <leoyang.li@nxp.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>
Subject: [PATCHv7 5/7] PCI: mobiveil: Add PCIe Gen4 RC driver for NXP
 Layerscape SoCs
Thread-Topic: [PATCHv7 5/7] PCI: mobiveil: Add PCIe Gen4 RC driver for NXP
 Layerscape SoCs
Thread-Index: AQHVKzW1PuTchjRGkk2emfubeybyLQ==
Date: Tue, 25 Jun 2019 09:09:35 +0000
Message-ID: <20190625091039.18933-6-Zhiqiang.Hou@nxp.com>
References: <20190625091039.18933-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20190625091039.18933-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0116.apcprd03.prod.outlook.com
 (2603:1096:203:b0::32) To DB8PR04MB6747.eurprd04.prod.outlook.com
 (2603:10a6:10:10b::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9431eb9a-04ce-4208-78b0-08d6f94cd781
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB6746; 
x-ms-traffictypediagnostic: DB8PR04MB6746:
x-microsoft-antispam-prvs: <DB8PR04MB67461E7DCAC095B2BF75CB0584E30@DB8PR04MB6746.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:42;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(376002)(136003)(39860400002)(396003)(366004)(346002)(189003)(199004)(4326008)(386003)(446003)(26005)(102836004)(3846002)(478600001)(71190400001)(186003)(11346002)(71200400001)(7416002)(6116002)(25786009)(66946007)(50226002)(110136005)(8936002)(54906003)(81166006)(8676002)(305945005)(81156014)(316002)(2201001)(5660300002)(66556008)(7736002)(66476007)(66446008)(64756008)(1076003)(66066001)(486006)(2616005)(2501003)(73956011)(68736007)(14444005)(6436002)(6486002)(256004)(6512007)(86362001)(6506007)(53936002)(36756003)(14454004)(99286004)(2906002)(52116002)(476003)(76176011)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6746;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TTt667zvStbesX1tEnLCEvF8d5+6etgREgUhNv2X1FvB44He7/9ysGsEupXF/rk52s6C29yGp482m/z420idOjJb3q8y4ndkbQtKxItQISULyqStAbUDG9Amg51DprkR9o9ho/CLbnwna+Y/KgPif7y8w49gCBsXZMvU8PF4rqtNV4BU/2Zc17Hirpx5IpI9+lsJnROgMt9xIpgAsCza349ZYvhg5c/q3IBIngjKXcQTjmTIZ2dRWfgjPkkz7aQPmqqGKZ4XoNRZOjMzjx06ZgMS+DMu8Im6RcQKI74OUfZvc9KmOJv06U2lLp1PRl3+LqojGIgL3oy9pXNFvvJFrCvWnow0m0B71Fw1ppZ66wbb/VYKK6rrHt9hJliLmnnu0csIMrbF4A669el2lhL+EcpjmOsTY3a8cY5QBEeTisY=
Content-ID: <B4FF0D0BAE7CB44FAF651FB95917FC04@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9431eb9a-04ce-4208-78b0-08d6f94cd781
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 09:09:35.0969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_020941_391987_2F9E462A 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "M.h. Lian" <minghuan.lian@nxp.com>, "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSG91IFpoaXFpYW5nIDxaaGlxaWFuZy5Ib3VAbnhwLmNvbT4NCg0KVGhpcyBQQ0llIGNv
bnRyb2xsZXIgaXMgYmFzZWQgb24gdGhlIE1vYml2ZWlsIEdQRVggSVAsIHdoaWNoIGlzDQpjb21w
YXRpYmxlIHdpdGggdGhlIFBDSSBFeHByZXNz4oSiIEJhc2UgU3BlY2lmaWNhdGlvbiwgUmV2aXNp
b24gNC4wLg0KDQpTaWduZWQtb2ZmLWJ5OiBIb3UgWmhpcWlhbmcgPFpoaXFpYW5nLkhvdUBueHAu
Y29tPg0KUmV2aWV3ZWQtYnk6IE1pbmdodWFuIExpYW4gPE1pbmdodWFuLkxpYW5AbnhwLmNvbT4N
Ci0tLQ0KVjc6DQogLSBObyBjaGFuZ2UuDQoNCiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2
ZWlsL0tjb25maWcgICAgICAgfCAgMTAgKw0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZl
aWwvTWFrZWZpbGUgICAgICB8ICAgMSArDQogLi4uL21vYml2ZWlsL3BjaWUtbGF5ZXJzY2FwZS1n
ZW40LmMgICAgICAgICAgIHwgMjU1ICsrKysrKysrKysrKysrKysrKw0KIC4uLi9wY2kvY29udHJv
bGxlci9tb2JpdmVpbC9wY2llLW1vYml2ZWlsLmggICB8ICAxNiArLQ0KIDQgZmlsZXMgY2hhbmdl
ZCwgMjgwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQogY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1sYXllcnNjYXBlLWdlbjQuYw0K
DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9LY29uZmlnIGIv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9LY29uZmlnDQppbmRleCA2NDM0M2MwN2Jm
ZWQuLmM4MjNiZThkYWIxYyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9i
aXZlaWwvS2NvbmZpZw0KKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9LY29u
ZmlnDQpAQCAtMjEsNCArMjEsMTQgQEAgY29uZmlnIFBDSUVfTU9CSVZFSUxfUExBVA0KIAkgIFNv
ZnQgSVAuIEl0IGhhcyB1cCB0byA4IG91dGJvdW5kIGFuZCBpbmJvdW5kIHdpbmRvd3MNCiAJICBm
b3IgYWRkcmVzcyB0cmFuc2xhdGlvbiBhbmQgaXQgaXMgYSBQQ0llIEdlbjQgSVAuDQogDQorY29u
ZmlnIFBDSUVfTEFZRVJTQ0FQRV9HRU40DQorCWJvb2wgIkZyZWVzY2FsZSBMYXllcnNjYXBlIFBD
SWUgR2VuNCBjb250cm9sbGVyIg0KKwlkZXBlbmRzIG9uIFBDSQ0KKwlkZXBlbmRzIG9uIE9GICYm
IChBUk02NCB8fCBBUkNIX0xBWUVSU0NBUEUpDQorCWRlcGVuZHMgb24gUENJX01TSV9JUlFfRE9N
QUlODQorCXNlbGVjdCBQQ0lFX01PQklWRUlMX0hPU1QNCisJaGVscA0KKwkgIFNheSBZIGhlcmUg
aWYgeW91IHdhbnQgUENJZSBHZW40IGNvbnRyb2xsZXIgc3VwcG9ydCBvbg0KKwkgIExheWVyc2Nh
cGUgU29Dcy4gVGhlIFBDSWUgY29udHJvbGxlciBjYW4gd29yayBpbiBSQyBvcg0KKwkgIEVQIG1v
ZGUgYWNjb3JkaW5nIHRvIFJDV1tIT1NUX0FHVF9QRVhdIHNldHRpbmcuDQogZW5kbWVudQ0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvTWFrZWZpbGUgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWlsL01ha2VmaWxlDQppbmRleCA5ZmI2ZDFjNjUwNGQu
Ljk5ZDg3OWRlMzJkNiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZl
aWwvTWFrZWZpbGUNCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvTWFrZWZp
bGUNCkBAIC0yLDMgKzIsNCBAQA0KIG9iai0kKENPTkZJR19QQ0lFX01PQklWRUlMKSArPSBwY2ll
LW1vYml2ZWlsLm8NCiBvYmotJChDT05GSUdfUENJRV9NT0JJVkVJTF9IT1NUKSArPSBwY2llLW1v
Yml2ZWlsLWhvc3Qubw0KIG9iai0kKENPTkZJR19QQ0lFX01PQklWRUlMX1BMQVQpICs9IHBjaWUt
bW9iaXZlaWwtcGxhdC5vDQorb2JqLSQoQ09ORklHX1BDSUVfTEFZRVJTQ0FQRV9HRU40KSArPSBw
Y2llLWxheWVyc2NhcGUtZ2VuNC5vDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9tb2JpdmVpbC9wY2llLWxheWVyc2NhcGUtZ2VuNC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9tb2JpdmVpbC9wY2llLWxheWVyc2NhcGUtZ2VuNC5jDQpuZXcgZmlsZSBtb2RlIDEwMDY0NA0K
aW5kZXggMDAwMDAwMDAwMDAwLi41MTU0MzU1NWM3NWQNCi0tLSAvZGV2L251bGwNCisrKyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1sYXllcnNjYXBlLWdlbjQuYw0KQEAg
LTAsMCArMSwyNTUgQEANCisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMA0KKy8q
DQorICogUENJZSBHZW40IGhvc3QgY29udHJvbGxlciBkcml2ZXIgZm9yIE5YUCBMYXllcnNjYXBl
IFNvQ3MNCisgKg0KKyAqIENvcHlyaWdodCAyMDE5IE5YUA0KKyAqDQorICogQXV0aG9yOiBaaGlx
aWFuZyBIb3UgPFpoaXFpYW5nLkhvdUBueHAuY29tPg0KKyAqLw0KKw0KKyNpbmNsdWRlIDxsaW51
eC9rZXJuZWwuaD4NCisjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+DQorI2luY2x1ZGUgPGxp
bnV4L2luaXQuaD4NCisjaW5jbHVkZSA8bGludXgvb2ZfcGNpLmg+DQorI2luY2x1ZGUgPGxpbnV4
L29mX3BsYXRmb3JtLmg+DQorI2luY2x1ZGUgPGxpbnV4L29mX2lycS5oPg0KKyNpbmNsdWRlIDxs
aW51eC9vZl9hZGRyZXNzLmg+DQorI2luY2x1ZGUgPGxpbnV4L3BjaS5oPg0KKyNpbmNsdWRlIDxs
aW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4NCisjaW5jbHVkZSA8bGludXgvcmVzb3VyY2UuaD4NCisj
aW5jbHVkZSA8bGludXgvbWZkL3N5c2Nvbi5oPg0KKyNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4N
CisNCisjaW5jbHVkZSAicGNpZS1tb2JpdmVpbC5oIg0KKw0KKy8qIExVVCBhbmQgUEYgY29udHJv
bCByZWdpc3RlcnMgKi8NCisjZGVmaW5lIFBDSUVfTFVUX09GRgkJCTB4ODAwMDANCisjZGVmaW5l
IFBDSUVfUEZfT0ZGCQkJMHhjMDAwMA0KKyNkZWZpbmUgUENJRV9QRl9JTlRfU1RBVAkJMHgxOA0K
KyNkZWZpbmUgUEZfSU5UX1NUQVRfUEFCUlNUCQlCSVQoMzEpDQorDQorI2RlZmluZSBQQ0lFX1BG
X0RCRwkJCTB4N2ZjDQorI2RlZmluZSBQRl9EQkdfTFRTU01fTUFTSwkJMHgzZg0KKyNkZWZpbmUg
UEZfREJHX0xUU1NNX0wwCQkJMHgyZCAvKiBMMCBzdGF0ZSAqLw0KKyNkZWZpbmUgUEZfREJHX1dF
CQkJQklUKDMxKQ0KKyNkZWZpbmUgUEZfREJHX1BBQlIJCQlCSVQoMjcpDQorDQorI2RlZmluZSB0
b19sc19wY2llX2c0KHgpCQlwbGF0Zm9ybV9nZXRfZHJ2ZGF0YSgoeCktPnBkZXYpDQorDQorc3Ry
dWN0IGxzX3BjaWVfZzQgew0KKwlzdHJ1Y3QgbW9iaXZlaWxfcGNpZSBwY2k7DQorCXN0cnVjdCBk
ZWxheWVkX3dvcmsgZHdvcms7DQorCWludCBpcnE7DQorfTsNCisNCitzdGF0aWMgaW5saW5lIHUz
MiBsc19wY2llX2c0X2x1dF9yZWFkbChzdHJ1Y3QgbHNfcGNpZV9nNCAqcGNpZSwgdTMyIG9mZikN
Cit7DQorCXJldHVybiBpb3JlYWQzMihwY2llLT5wY2kuY3NyX2F4aV9zbGF2ZV9iYXNlICsgUENJ
RV9MVVRfT0ZGICsgb2ZmKTsNCit9DQorDQorc3RhdGljIGlubGluZSB2b2lkIGxzX3BjaWVfZzRf
bHV0X3dyaXRlbChzdHJ1Y3QgbHNfcGNpZV9nNCAqcGNpZSwNCisJCQkJCSB1MzIgb2ZmLCB1MzIg
dmFsKQ0KK3sNCisJaW93cml0ZTMyKHZhbCwgcGNpZS0+cGNpLmNzcl9heGlfc2xhdmVfYmFzZSAr
IFBDSUVfTFVUX09GRiArIG9mZik7DQorfQ0KKw0KK3N0YXRpYyBpbmxpbmUgdTMyIGxzX3BjaWVf
ZzRfcGZfcmVhZGwoc3RydWN0IGxzX3BjaWVfZzQgKnBjaWUsIHUzMiBvZmYpDQorew0KKwlyZXR1
cm4gaW9yZWFkMzIocGNpZS0+cGNpLmNzcl9heGlfc2xhdmVfYmFzZSArIFBDSUVfUEZfT0ZGICsg
b2ZmKTsNCit9DQorDQorc3RhdGljIGlubGluZSB2b2lkIGxzX3BjaWVfZzRfcGZfd3JpdGVsKHN0
cnVjdCBsc19wY2llX2c0ICpwY2llLA0KKwkJCQkJdTMyIG9mZiwgdTMyIHZhbCkNCit7DQorCWlv
d3JpdGUzMih2YWwsIHBjaWUtPnBjaS5jc3JfYXhpX3NsYXZlX2Jhc2UgKyBQQ0lFX1BGX09GRiAr
IG9mZik7DQorfQ0KKw0KK3N0YXRpYyBib29sIGxzX3BjaWVfZzRfaXNfYnJpZGdlKHN0cnVjdCBs
c19wY2llX2c0ICpwY2llKQ0KK3sNCisJc3RydWN0IG1vYml2ZWlsX3BjaWUgKm12X3BjaSA9ICZw
Y2llLT5wY2k7DQorCXUzMiBoZWFkZXJfdHlwZTsNCisNCisJaGVhZGVyX3R5cGUgPSBjc3JfcmVh
ZGIobXZfcGNpLCBQQ0lfSEVBREVSX1RZUEUpOw0KKwloZWFkZXJfdHlwZSAmPSAweDdmOw0KKw0K
KwlyZXR1cm4gaGVhZGVyX3R5cGUgPT0gUENJX0hFQURFUl9UWVBFX0JSSURHRTsNCit9DQorDQor
c3RhdGljIGludCBsc19wY2llX2c0X2xpbmtfdXAoc3RydWN0IG1vYml2ZWlsX3BjaWUgKnBjaSkN
Cit7DQorCXN0cnVjdCBsc19wY2llX2c0ICpwY2llID0gdG9fbHNfcGNpZV9nNChwY2kpOw0KKwl1
MzIgc3RhdGU7DQorDQorCXN0YXRlID0gbHNfcGNpZV9nNF9wZl9yZWFkbChwY2llLCBQQ0lFX1BG
X0RCRyk7DQorCXN0YXRlID0Jc3RhdGUgJiBQRl9EQkdfTFRTU01fTUFTSzsNCisNCisJaWYgKHN0
YXRlID09IFBGX0RCR19MVFNTTV9MMCkNCisJCXJldHVybiAxOw0KKw0KKwlyZXR1cm4gMDsNCit9
DQorDQorc3RhdGljIHZvaWQgbHNfcGNpZV9nNF9yZWluaXRfaHcoc3RydWN0IGxzX3BjaWVfZzQg
KnBjaWUpDQorew0KKwlzdHJ1Y3QgbW9iaXZlaWxfcGNpZSAqbXZfcGNpID0gJnBjaWUtPnBjaTsN
CisJc3RydWN0IGRldmljZSAqZGV2ID0gJm12X3BjaS0+cGRldi0+ZGV2Ow0KKwl1MzIgdmFsLCBh
Y3Rfc3RhdDsNCisJaW50IHRvID0gMTAwOw0KKw0KKwkvKiBQb2xsIGZvciBwYWJfY3NiX3Jlc2V0
IHRvIHNldCBhbmQgUEFCIGFjdGl2aXR5IHRvIGNsZWFyICovDQorCWRvIHsNCisJCXVzbGVlcF9y
YW5nZSgxMCwgMTUpOw0KKwkJdmFsID0gbHNfcGNpZV9nNF9wZl9yZWFkbChwY2llLCBQQ0lFX1BG
X0lOVF9TVEFUKTsNCisJCWFjdF9zdGF0ID0gY3NyX3JlYWRsKG12X3BjaSwgUEFCX0FDVElWSVRZ
X1NUQVQpOw0KKwl9IHdoaWxlICgoKHZhbCAmIFBGX0lOVF9TVEFUX1BBQlJTVCkgPT0gMCB8fCBh
Y3Rfc3RhdCkgJiYgdG8tLSk7DQorCWlmICh0byA8IDApIHsNCisJCWRldl9lcnIoZGV2LCAiUG9s
bCBQQUJSU1QmUEFCQUNUIHRpbWVvdXRcbiIpOw0KKwkJcmV0dXJuOw0KKwl9DQorDQorCS8qIGNs
ZWFyIFBFWF9SRVNFVCBiaXQgaW4gUEVYX1BGMF9EQkcgcmVnaXN0ZXIgKi8NCisJdmFsID0gbHNf
cGNpZV9nNF9wZl9yZWFkbChwY2llLCBQQ0lFX1BGX0RCRyk7DQorCXZhbCB8PSBQRl9EQkdfV0U7
DQorCWxzX3BjaWVfZzRfcGZfd3JpdGVsKHBjaWUsIFBDSUVfUEZfREJHLCB2YWwpOw0KKw0KKwl2
YWwgPSBsc19wY2llX2c0X3BmX3JlYWRsKHBjaWUsIFBDSUVfUEZfREJHKTsNCisJdmFsIHw9IFBG
X0RCR19QQUJSOw0KKwlsc19wY2llX2c0X3BmX3dyaXRlbChwY2llLCBQQ0lFX1BGX0RCRywgdmFs
KTsNCisNCisJdmFsID0gbHNfcGNpZV9nNF9wZl9yZWFkbChwY2llLCBQQ0lFX1BGX0RCRyk7DQor
CXZhbCAmPSB+UEZfREJHX1dFOw0KKwlsc19wY2llX2c0X3BmX3dyaXRlbChwY2llLCBQQ0lFX1BG
X0RCRywgdmFsKTsNCisNCisJbW9iaXZlaWxfaG9zdF9pbml0KG12X3BjaSwgdHJ1ZSk7DQorDQor
CXRvID0gMTAwOw0KKwl3aGlsZSAoIWxzX3BjaWVfZzRfbGlua191cChtdl9wY2kpICYmIHRvLS0p
DQorCQl1c2xlZXBfcmFuZ2UoMjAwLCAyNTApOw0KKwlpZiAodG8gPCAwKQ0KKwkJZGV2X2Vycihk
ZXYsICJQQ0llIGxpbmsgdHJhaW5pbmcgdGltZW91dFxuIik7DQorfQ0KKw0KK3N0YXRpYyBpcnFy
ZXR1cm5fdCBsc19wY2llX2c0X2lzcihpbnQgaXJxLCB2b2lkICpkZXZfaWQpDQorew0KKwlzdHJ1
Y3QgbHNfcGNpZV9nNCAqcGNpZSA9IChzdHJ1Y3QgbHNfcGNpZV9nNCAqKWRldl9pZDsNCisJc3Ry
dWN0IG1vYml2ZWlsX3BjaWUgKm12X3BjaSA9ICZwY2llLT5wY2k7DQorCXUzMiB2YWw7DQorDQor
CXZhbCA9IGNzcl9yZWFkbChtdl9wY2ksIFBBQl9JTlRQX0FNQkFfTUlTQ19TVEFUKTsNCisJaWYg
KCF2YWwpDQorCQlyZXR1cm4gSVJRX05PTkU7DQorDQorCWlmICh2YWwgJiBQQUJfSU5UUF9SRVNF
VCkNCisJCXNjaGVkdWxlX2RlbGF5ZWRfd29yaygmcGNpZS0+ZHdvcmssIG1zZWNzX3RvX2ppZmZp
ZXMoMSkpOw0KKw0KKwljc3Jfd3JpdGVsKG12X3BjaSwgdmFsLCBQQUJfSU5UUF9BTUJBX01JU0Nf
U1RBVCk7DQorDQorCXJldHVybiBJUlFfSEFORExFRDsNCit9DQorDQorc3RhdGljIGludCBsc19w
Y2llX2c0X2ludGVycnVwdF9pbml0KHN0cnVjdCBtb2JpdmVpbF9wY2llICptdl9wY2kpDQorew0K
KwlzdHJ1Y3QgbHNfcGNpZV9nNCAqcGNpZSA9IHRvX2xzX3BjaWVfZzQobXZfcGNpKTsNCisJc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiA9IG12X3BjaS0+cGRldjsNCisJc3RydWN0IGRldmlj
ZSAqZGV2ID0gJnBkZXYtPmRldjsNCisJdTMyIHZhbDsNCisJaW50IHJldDsNCisNCisJcGNpZS0+
aXJxID0gcGxhdGZvcm1fZ2V0X2lycV9ieW5hbWUocGRldiwgImludHIiKTsNCisJaWYgKHBjaWUt
PmlycSA8IDApIHsNCisJCWRldl9lcnIoZGV2LCAiQ2FuJ3QgZ2V0ICdpbnRyJyBJUlEsIGVycm5v
ID0gJWRcbiIsIHBjaWUtPmlycSk7DQorCQlyZXR1cm4gcGNpZS0+aXJxOw0KKwl9DQorCXJldCA9
IGRldm1fcmVxdWVzdF9pcnEoZGV2LCBwY2llLT5pcnEsIGxzX3BjaWVfZzRfaXNyLA0KKwkJCSAg
ICAgICBJUlFGX1NIQVJFRCwgcGRldi0+bmFtZSwgcGNpZSk7DQorCWlmIChyZXQpIHsNCisJCWRl
dl9lcnIoZGV2LCAiQ2FuJ3QgcmVnaXN0ZXIgUENJZSBJUlEsIGVycm5vID0gJWRcbiIsIHJldCk7
DQorCQlyZXR1cm4gIHJldDsNCisJfQ0KKw0KKwkvKiBFbmFibGUgaW50ZXJydXB0cyAqLw0KKwl2
YWwgPSBQQUJfSU5UUF9JTlRYX01BU0sgfCBQQUJfSU5UUF9NU0kgfCBQQUJfSU5UUF9SRVNFVCB8
DQorCSAgICAgIFBBQl9JTlRQX1BDSUVfVUUgfCBQQUJfSU5UUF9JRV9QTVJFREkgfCBQQUJfSU5U
UF9JRV9FQzsNCisJY3NyX3dyaXRlbChtdl9wY2ksIHZhbCwgUEFCX0lOVFBfQU1CQV9NSVNDX0VO
Qik7DQorDQorCXJldHVybiAwOw0KK30NCisNCitzdGF0aWMgdm9pZCBsc19wY2llX2c0X3Jlc2V0
KHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCit7DQorCXN0cnVjdCBkZWxheWVkX3dvcmsgKmR3
b3JrID0gY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCBkZWxheWVkX3dvcmssDQorCQkJCQkJICB3
b3JrKTsNCisJc3RydWN0IGxzX3BjaWVfZzQgKnBjaWUgPSBjb250YWluZXJfb2YoZHdvcmssIHN0
cnVjdCBsc19wY2llX2c0LCBkd29yayk7DQorCXN0cnVjdCBtb2JpdmVpbF9wY2llICptdl9wY2kg
PSAmcGNpZS0+cGNpOw0KKwl1MTYgY3RybDsNCisNCisJY3RybCA9IGNzcl9yZWFkdyhtdl9wY2ks
IFBDSV9CUklER0VfQ09OVFJPTCk7DQorCWN0cmwgJj0gflBDSV9CUklER0VfQ1RMX0JVU19SRVNF
VDsNCisJY3NyX3dyaXRldyhtdl9wY2ksIGN0cmwsIFBDSV9CUklER0VfQ09OVFJPTCk7DQorCWxz
X3BjaWVfZzRfcmVpbml0X2h3KHBjaWUpOw0KK30NCisNCitzdGF0aWMgc3RydWN0IG1vYml2ZWls
X3JwX29wcyBsc19wY2llX2c0X3JwX29wcyA9IHsNCisJLmludGVycnVwdF9pbml0ID0gbHNfcGNp
ZV9nNF9pbnRlcnJ1cHRfaW5pdCwNCit9Ow0KKw0KK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbW9iaXZl
aWxfcGFiX29wcyBsc19wY2llX2c0X3BhYl9vcHMgPSB7DQorCS5saW5rX3VwID0gbHNfcGNpZV9n
NF9saW5rX3VwLA0KK307DQorDQorc3RhdGljIGludCBfX2luaXQgbHNfcGNpZV9nNF9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KK3sNCisJc3RydWN0IGRldmljZSAqZGV2ID0g
JnBkZXYtPmRldjsNCisJc3RydWN0IHBjaV9ob3N0X2JyaWRnZSAqYnJpZGdlOw0KKwlzdHJ1Y3Qg
bW9iaXZlaWxfcGNpZSAqbXZfcGNpOw0KKwlzdHJ1Y3QgbHNfcGNpZV9nNCAqcGNpZTsNCisJc3Ry
dWN0IGRldmljZV9ub2RlICpucCA9IGRldi0+b2Zfbm9kZTsNCisJaW50IHJldDsNCisNCisJaWYg
KCFvZl9wYXJzZV9waGFuZGxlKG5wLCAibXNpLXBhcmVudCIsIDApKSB7DQorCQlkZXZfZXJyKGRl
diwgIkZhaWxlZCB0byBmaW5kIG1zaS1wYXJlbnRcbiIpOw0KKwkJcmV0dXJuIC1FSU5WQUw7DQor
CX0NCisNCisJYnJpZGdlID0gZGV2bV9wY2lfYWxsb2NfaG9zdF9icmlkZ2UoZGV2LCBzaXplb2Yo
KnBjaWUpKTsNCisJaWYgKCFicmlkZ2UpDQorCQlyZXR1cm4gLUVOT01FTTsNCisNCisJcGNpZSA9
IHBjaV9ob3N0X2JyaWRnZV9wcml2KGJyaWRnZSk7DQorCW12X3BjaSA9ICZwY2llLT5wY2k7DQor
DQorCW12X3BjaS0+cGRldiA9IHBkZXY7DQorCW12X3BjaS0+b3BzID0gJmxzX3BjaWVfZzRfcGFi
X29wczsNCisJbXZfcGNpLT5ycC5vcHMgPSAmbHNfcGNpZV9nNF9ycF9vcHM7DQorCW12X3BjaS0+
YnJpZGdlID0gYnJpZGdlOw0KKw0KKwlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBwY2llKTsN
CisNCisJSU5JVF9ERUxBWUVEX1dPUksoJnBjaWUtPmR3b3JrLCBsc19wY2llX2c0X3Jlc2V0KTsN
CisNCisJcmV0ID0gbW9iaXZlaWxfcGNpZV9ob3N0X3Byb2JlKG12X3BjaSk7DQorCWlmIChyZXQp
IHsNCisJCWRldl9lcnIoZGV2LCAiRmFpbCB0byBwcm9iZVxuIik7DQorCQlyZXR1cm4gIHJldDsN
CisJfQ0KKw0KKwlpZiAoIWxzX3BjaWVfZzRfaXNfYnJpZGdlKHBjaWUpKQ0KKwkJcmV0dXJuIC1F
Tk9ERVY7DQorDQorCXJldHVybiAwOw0KK30NCisNCitzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rl
dmljZV9pZCBsc19wY2llX2c0X29mX21hdGNoW10gPSB7DQorCXsgLmNvbXBhdGlibGUgPSAiZnNs
LGx4MjE2MGEtcGNpZSIsIH0sDQorCXsgfSwNCit9Ow0KKw0KK3N0YXRpYyBzdHJ1Y3QgcGxhdGZv
cm1fZHJpdmVyIGxzX3BjaWVfZzRfZHJpdmVyID0gew0KKwkuZHJpdmVyID0gew0KKwkJLm5hbWUg
PSAibGF5ZXJzY2FwZS1wY2llLWdlbjQiLA0KKwkJLm9mX21hdGNoX3RhYmxlID0gbHNfcGNpZV9n
NF9vZl9tYXRjaCwNCisJCS5zdXBwcmVzc19iaW5kX2F0dHJzID0gdHJ1ZSwNCisJfSwNCit9Ow0K
Kw0KK2J1aWx0aW5fcGxhdGZvcm1fZHJpdmVyX3Byb2JlKGxzX3BjaWVfZzRfZHJpdmVyLCBsc19w
Y2llX2c0X3Byb2JlKTsNCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2
ZWlsL3BjaWUtbW9iaXZlaWwuaCBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNp
ZS1tb2JpdmVpbC5oDQppbmRleCBhNzI5YTRmODc5ZmUuLjkyNThjZWY1NzVjZCAxMDA2NDQNCi0t
LSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1tb2JpdmVpbC5oDQorKysg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwuaA0KQEAgLTQz
LDYgKzQzLDggQEANCiAjZGVmaW5lICBQQUdFX0xPX01BU0sJCQkweDNmZg0KICNkZWZpbmUgIFBB
R0VfU0VMX09GRlNFVF9TSElGVAkJMTANCiANCisjZGVmaW5lIFBBQl9BQ1RJVklUWV9TVEFUCQkw
eDgxYw0KKw0KICNkZWZpbmUgUEFCX0FYSV9QSU9fQ1RSTAkJMHgwODQwDQogI2RlZmluZSAgQVBJ
T19FTl9NQVNLCQkJMHhmDQogDQpAQCAtNTEsOCArNTMsMTggQEANCiANCiAjZGVmaW5lIFBBQl9J
TlRQX0FNQkFfTUlTQ19FTkIJCTB4MGIwYw0KICNkZWZpbmUgUEFCX0lOVFBfQU1CQV9NSVNDX1NU
QVQJCTB4MGIxYw0KLSNkZWZpbmUgIFBBQl9JTlRQX0lOVFhfTUFTSwkJMHgwMWUwDQotI2RlZmlu
ZSAgUEFCX0lOVFBfTVNJX01BU0sJCTB4OA0KKyNkZWZpbmUgIFBBQl9JTlRQX1JFU0VUCQkJQklU
KDEpDQorI2RlZmluZSAgUEFCX0lOVFBfTVNJCQkJQklUKDMpDQorI2RlZmluZSAgUEFCX0lOVFBf
SU5UQQkJCUJJVCg1KQ0KKyNkZWZpbmUgIFBBQl9JTlRQX0lOVEIJCQlCSVQoNikNCisjZGVmaW5l
ICBQQUJfSU5UUF9JTlRDCQkJQklUKDcpDQorI2RlZmluZSAgUEFCX0lOVFBfSU5URAkJCUJJVCg4
KQ0KKyNkZWZpbmUgIFBBQl9JTlRQX1BDSUVfVUUJCUJJVCg5KQ0KKyNkZWZpbmUgIFBBQl9JTlRQ
X0lFX1BNUkVESQkJQklUKDI5KQ0KKyNkZWZpbmUgIFBBQl9JTlRQX0lFX0VDCQkJQklUKDMwKQ0K
KyNkZWZpbmUgIFBBQl9JTlRQX01TSV9NQVNLCQlQQUJfSU5UUF9NU0kNCisjZGVmaW5lICBQQUJf
SU5UUF9JTlRYX01BU0sJCShQQUJfSU5UUF9JTlRBIHwgUEFCX0lOVFBfSU5UQiB8XA0KKwkJCQkJ
UEFCX0lOVFBfSU5UQyB8IFBBQl9JTlRQX0lOVEQpDQogDQogI2RlZmluZSBQQUJfQVhJX0FNQVBf
Q1RSTCh3aW4pCQlQQUJfUkVHX0FERFIoMHgwYmEwLCB3aW4pDQogI2RlZmluZSAgV0lOX0VOQUJM
RV9TSElGVAkJMA0KLS0gDQoyLjE3LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
