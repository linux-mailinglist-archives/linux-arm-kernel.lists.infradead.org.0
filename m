Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F5A16A324
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:53:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2axtPiACPyDQV3kDV3DPgkmYJBlmy+ajX8xy6k8X4k=; b=TkrhrWz6Ln5jfq
	p7tk27w1rde6kj6mpujKb6ZdxiemusocUvtzPrQGanrTIIC3mt4G1aqI0qkZAjDRQis6EKoqKu1eY
	H8s9LKyLxoC11bjhR0+KaiA8DYvoPb8whp0x9/XKp6ahw0vg8455KWxBQdxmRQGvX48pGvzodSEqu
	5030B0AewxL63HQYb3AIVZjomB+c92rRuo11s/y81iUOcumL7UIZY3bB7O68xNbEg2jDQ/4bPxYm5
	UjGzfXHEq3bfT4//GdF3JuCCCDDUMMukseSMHpNyJNjoS1vbiSfXGvIDSo/i2tHMJJAmpfUF4kGr8
	sACF+JDLj2DkKVPBEhgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AQq-00087f-0F; Mon, 24 Feb 2020 09:53:44 +0000
Received: from mail-eopbgr140054.outbound.protection.outlook.com
 ([40.107.14.54] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69wx-0006Iz-7z
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:22:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IR5bmWyjoSZtYDIjpU+uGCV6x3DD82ehKArV0tHGd+WKg+BKAsmF0dQZ7RGnqEN1eQwFe9B9hgp0E4eKQp4YqjMlwU8uoLS9JUaFc4+johYURjFHPr5o28GLc+3hydr437yECONlwKgogKLqiJeVN5qRsngiwqTrlQIxnavW/hawGqQhrpyWxx0x2YxMCZGZhxOJQoO3/YuY5KZjhTqAgoDkaaKSubhdddDuYCY4OApVys5lnI2nCZfRKGio9lg/2Fy5FYgOkBmZIG1AXgI49Yds+viDlynbJTWC7KXFgnxFmNMn4HSiqf9ikePWF9K+cQgNkVD8smLr+3E8zIRGmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=de1aR3MFLCX7Yz5h5aV2dNt/PB6gDlUvr9xuHi6g/Kg=;
 b=KfooYzX42txGeCCCJh0QJjbONCO0ofZzvSdsBhA203tbdDOoo9ZRKOoWD+RHo1Xc7p2d91+0n7lBCK72tvnM76Hv4OH2SeMWWvhOu8XnLWtlnHqYiWel2yBC1KkC6XYWKBbUWhSiuwy4cWegXqdrRRMSh1dHKh+NXnMWA8vQ3Jaj0n9tm4oai3b19inPhpgP9SD9EmEqt4wXrXbceuxjVLFI2h574Xk/CWexV3vTJeOw/uYJi5QdeeZ/aiqwlsQhOztv+MbIopLFlx8TZBtzJR6/PTeSnOvab0LsJK4SZ1eQfLqpXVxTc6hLnxB7wFG3pNeYWgDj9jju0hHZhGkLZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=de1aR3MFLCX7Yz5h5aV2dNt/PB6gDlUvr9xuHi6g/Kg=;
 b=pITX30SeeFFups8+DfN1kNyZ2/CWHfnVcvsc0XvmbzKvWKWlQsiU2pA0sva+f9Ys8mi1H7arjA5BkaYcgxfduSC4JMHhfOqwdjXbHDb3p3ZLiNs1vJ9jg/+9ZhmlPW1sCUIDbq11ZeG2U2n6OK3Nj7OHBzNwkzToJ6+QpixZImU=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB6907.eurprd04.prod.outlook.com (52.133.242.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18; Mon, 24 Feb 2020 09:22:48 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa%4]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 09:22:48 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Michael Walle <michael@walle.cc>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v6 2/3] arm64: dts: ls1028a: Add PCIe controller DT nodes
Thread-Topic: [PATCH v6 2/3] arm64: dts: ls1028a: Add PCIe controller DT nodes
Thread-Index: AQHVYUIA2y+cYTzIk0ebobZ1u8h9/agrEWeAgAAI9wCAAALoAIAAB6mw
Date: Mon, 24 Feb 2020 09:22:47 +0000
Message-ID: <DB8PR04MB67474FF5451A647C4495526F84EC0@DB8PR04MB6747.eurprd04.prod.outlook.com>
References: <20190902034319.14026-2-xiaowei.bao@nxp.com>
 <20200224081105.13878-1-michael@walle.cc> <20200224084307.GD27688@dragon>
 <a3aeabddc82ca86e3dca9c26081a0077@walle.cc>
In-Reply-To: <a3aeabddc82ca86e3dca9c26081a0077@walle.cc>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [223.72.66.225]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ca9c9c18-6fe0-4b13-f624-08d7b90b1d51
x-ms-traffictypediagnostic: DB8PR04MB6907:|DB8PR04MB6907:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB6907C3D2C62A2BECF5EC59FA84EC0@DB8PR04MB6907.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 032334F434
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(376002)(136003)(396003)(39860400002)(199004)(189003)(7416002)(5660300002)(86362001)(55016002)(9686003)(8676002)(81156014)(81166006)(8936002)(6506007)(53546011)(7696005)(33656002)(52536014)(66476007)(478600001)(66556008)(110136005)(66446008)(316002)(64756008)(4326008)(54906003)(2906002)(71200400001)(26005)(186003)(76116006)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6907;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZLC5LPh151g4wdlqKVWYmB6xZrbqy8oRG5AL708l4N2PZlbdrJirG+vQpviXR0IAFSesM9C4IdL5RfcR7LjDZkVQn5YPB/RqSEmg1u4t/32jcVQ+cN6n/qo+NHEXqhoP5B6cA+e2aQOj2pKxUS6JiY5baCUobcu4d6Wy7JDsw5Ag0RlBNzF7T58Md5D2l+uheka0mm02rjtKXdCBLVbeVMDZdzY9U8uXFoumaXdckRqyO5sBu5yS7+XE5YuVa5qonTr/jIUGPHnqCJzuocSiHSuodQLwlMM0LVPFHndWVpAKND9nuS2V/+igNj32HzX+jwG8YSPaL0bQ2q7/edeRMTA22Gabhi59tTWTB42MTecLxg+wtAIClVL+1HqHFKqN3fIr0iY6pZLipa3XWY1xacm7Z9CgOKBTKI/i18LV37RehNrJyWoYfofpNhYkNv/Z
x-ms-exchange-antispam-messagedata: imaKY1Jdo5rbJ3B5eMwzk84/xhMgymnR7hYn8mBOLH20nKyi+MKJuGrz0zmpHeMrjqA3TnwuIXs1kzekNmY4KYKjDabSUeh99hEczcBJTSDhj6+at1EBsQPdoGU5/VLNzk7kGFgvsbGXuHY8dWh0YQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca9c9c18-6fe0-4b13-f624-08d7b90b1d51
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 09:22:48.2924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aRHElNM7C0zIZEpnbQHcYXwE7AGqhUrY0LIN+IWSSzYxLUFQDqj7qrX/t6g23l2WLRBFeDg61J4+kWrdnyBj8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6907
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_012251_317034_3D7B2E41 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Roy Zang <roy.zang@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWljaGFlbCBhbmQgU2hhd24sDQoNCkknbGwgdXBkYXRlIHRoZSBwYXRjaCB3aXRoIGlvbW11
LW1hcCBwcm9wZXJ0eS4NCg0KVGhhbmtzLA0KWmhpcWlhbmcNCg0KPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPiBGcm9tOiBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNjPg0KPiBT
ZW50OiAyMDIwxOoy1MIyNMjVIDE2OjU0DQo+IFRvOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5l
bC5vcmc+DQo+IENjOiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT47IFoucS4gSG91
DQo+IDx6aGlxaWFuZy5ob3VAbnhwLmNvbT47IGJoZWxnYWFzQGdvb2dsZS5jb207DQo+IGRldmlj
ZXRyZWVAdmdlci5rZXJuZWwub3JnOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47DQo+IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsNCj4gbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsgbGludXhwcGMtZGV2QGxpc3Rz
Lm96bGFicy5vcmc7DQo+IGxvcmVuem8ucGllcmFsaXNpQGFybS5jb207IG1hcmsucnV0bGFuZEBh
cm0uY29tOyBNLmguIExpYW4NCj4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IE1pbmdrYWkgSHUg
PG1pbmdrYWkuaHVAbnhwLmNvbT47DQo+IHJvYmgrZHRAa2VybmVsLm9yZzsgUm95IFphbmcgPHJv
eS56YW5nQG54cC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjYgMi8zXSBhcm02NDogZHRz
OiBsczEwMjhhOiBBZGQgUENJZSBjb250cm9sbGVyIERUDQo+IG5vZGVzDQo+IA0KPiBIaSBTaGF3
biwgYWxsLA0KPiANCj4gQW0gMjAyMC0wMi0yNCAwOTo0Mywgc2NocmllYiBTaGF3biBHdW86DQo+
ID4gT24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgMDk6MTE6MDVBTSArMDEwMCwgTWljaGFlbCBXYWxs
ZSB3cm90ZToNCj4gPj4gSGkgWGlhb3dlaSwgSGkgU2hhd24sDQo+ID4+DQo+ID4+ID4gTFMxMDI4
YSBpbXBsZW1lbnRzIDIgUENJZSAzLjAgY29udHJvbGxlcnMuDQo+ID4+DQo+ID4+IFBhdGNoIDEv
MyBhbmQgMy8zIGFyZSBpbiBMaW51cycgdHJlZSBidXQgbm9ib2R5IHNlZW1zIHRvIGNhcmUgYWJv
dXQNCj4gPj4gdGhpcyBwYXRjaCBhbnltb3JlIDooDQo+ID4+DQo+ID4+IFRoaXMgZG9lc24ndCB3
b3JrIHdlbGwgd2l0aCB0aGUgSU9NTVUsIGJlY2F1c2UgdGhlIGlvbW11LW1hcCBwcm9wZXJ0eQ0K
PiA+PiBpcyBtaXNzaW5nLiBUaGUgYm9vdGxvYWRlciBuZWVkcyB0aGUgJnNtbXUgcGhhbmRsZSB0
byBmaXh1cCB0aGUNCj4gPj4gZW50cnkuDQo+ID4+IFNlZQ0KPiA+PiBiZWxvdy4NCj4gPj4NCj4g
Pj4gU2hhd24sIHdpbGwgeW91IGFkZCB0aGlzIHBhdGNoIHRvIHlvdXIgdHJlZSBvbmNlIGl0cyBm
aXhlZCwNCj4gPj4gY29uc2lkZXJpbmcgaXQganVzdCBhZGRzIHRoZSBkZXZpY2UgdHJlZSBub2Rl
IGZvciB0aGUgTFMxMDI4QT8NCj4gPg0KPiA+IFRoZSBwYXRjaC90aHJlYWQgaXMgYSBiaXQgYWdl
ZC4gIFlvdSBtYXkgd2FudCB0byBzZW5kIGFuIHVwZGF0ZWQgcGF0Y2gNCj4gPiBmb3IgZGlzY3Vz
c2lvbi4NCj4gDQo+IFNvIHNob3VsZCBJIGp1c3QgcGljayB1cCB0aGUgcGF0Y2ggYWRkIG15IHR3
byBmaXhlcyBhbmQgc2VuZCBpdCBhZ2Fpbj8NCj4gV2hhdCBhYm91dA0KPiB0aGUgU2lnbmVkLW9m
Zi1ieSB0YWdzPyBMZWF2ZSB0aGVtPyBSZXBsYWNlIHRoZW0/IEFkZCBtaW5lPw0KPiANCj4gLW1p
Y2hhZWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
