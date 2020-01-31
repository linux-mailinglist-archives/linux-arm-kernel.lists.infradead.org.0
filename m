Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B36AF14E9E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 10:05:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6S+dYAo7AQVx8mCNiN9OP3yAQH0NU4uFhhNyR9Ur5w=; b=AErphykUkJEoqf
	AiA1RFrQgD43S3omyRM66tIiPr5oz01hROSc79a1HGXGbvDgdgwlUsu7Zs3v3e36PuaE18jitELUe
	kBTOvjXG5iGBwrdGo/ZTxjgPhalhMVKo2/yorOZ1KUHX1Joot8oag6PH7AKpzDNknmC4oUS8l2pqE
	POz8552gw9QVqfAxSewH56GjP8JKZDk5o5Wp3LouoBsrIa1NkEYpJ6U0lSvzCnRElc8DkquHtuq/U
	8q0jkVBjdi4+ki3QEW2HuAh851nxYpAjRLbjSZGm/VyhsRYvySbvR4YyMicw7dTe/Z3Z0LjlBpD85
	S8BFTiDa804VQlbV4mNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixSF4-0008Ih-Ph; Fri, 31 Jan 2020 09:05:34 +0000
Received: from mail-eopbgr700068.outbound.protection.outlook.com
 ([40.107.70.68] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixSEw-0008Hg-E2
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 09:05:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G8eCRjfpMSn9uexLmZtEBc/HgnrF6jPS5mBrjyLCIrFFk6wSpVxiIeOXkF1LzkOWy/JsjECBgwwrpHf8mCpY/2MG1fVUx4tPlbRex34VvceG3SQ01cFwB95Z0sOWDmZm7vFcrxEpDHQlQu4oLU6m5EMpmDd/WPulC/H5VsVFgDkhG9PMU6PNCMZhMJpcKz1Vf4JxgrxA5bZ7nUx+hSgIg4h0bl9MwO843EtA1wWQnafIwEsxRx2SagBGfdRQ2HVT7FZrfbJEcJxZRxigemfYtIZFnxsWWdrEY1ONC4BU3+ofWyMsofgx5Rbtl0jjwGIh9aDw/7El5bGnPvBSmCUYoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EoMY+DD3Gi5KrRQvMeWmD5Pqw0Z1uaFGWjyXD5keux0=;
 b=cfO+x6VjSHHh02+7+N5/BhEwQ+tc6IsPyj5u3eS2bWXc/0Jvjf7HuLBu5pKX8tkL6JFFYl0XPHLv+Vaw5n0r+iG+T7wIEmhpBXe/mkG5XYGvvzaAPOkmgzk7ue8nrkPmv87ejek8Hr9meRx/jSr9d58QjM3dsHe4GTESRKA8o/d/trQP2HVcA2wIWRuUczLruKKA7aqtGG89R3lNwpSVgqD1CTpdwYQpC2LhFmEst8ixY6BudJuMihhDJrGQn4df2rbf1xhTprkkxzrlBzYJvnO76HB/kSm2+Wx1acC3Zn6O+5E4+CN5xBLCsjepzdMncascDg6A+wWZ4BOugVCz7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EoMY+DD3Gi5KrRQvMeWmD5Pqw0Z1uaFGWjyXD5keux0=;
 b=LbdN1X4vUYYj/Lhj/is6qhv93GXnOI37FyPzJiSN3veMjvMbbqBQlCIJCX1StzLRfndQEXJX1luAl0n1qS/1VmnChR7uEOJKO5kpgGLFcxTOjnNdHMUSPRgAxROhrf2NOtZ/uPCwRc2jXJZiKMweYKz2Ju0y58YXWUsUE2P+/p8=
Received: from BYAPR02MB4055.namprd02.prod.outlook.com (52.135.202.143) by
 BYAPR02MB5527.namprd02.prod.outlook.com (20.178.0.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.20; Fri, 31 Jan 2020 09:05:15 +0000
Received: from BYAPR02MB4055.namprd02.prod.outlook.com
 ([fe80::f964:6ae7:834b:8fa7]) by BYAPR02MB4055.namprd02.prod.outlook.com
 ([fe80::f964:6ae7:834b:8fa7%5]) with mapi id 15.20.2665.027; Fri, 31 Jan 2020
 09:05:15 +0000
From: Rajan Vaja <RAJANV@xilinx.com>
To: 'Greg KH' <gregkh@linuxfoundation.org>, Jolly Shah <JOLLYS@xilinx.com>
Subject: RE: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Thread-Topic: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Thread-Index: AQHVxn8DnBw0JFqpKEaXLWLXNeC/N6fqR5+AgA66doCAAGj4gIAF012AgAB81ACABEpCgIAAZ9IAgAAAWyA=
Date: Fri, 31 Jan 2020 09:05:15 +0000
Message-ID: <BYAPR02MB40559D6B62C4532C0EAD0281B7070@BYAPR02MB4055.namprd02.prod.outlook.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
 <1578527663-10243-2-git-send-email-jolly.shah@xilinx.com>
 <20200114145257.GA1910108@kroah.com>
 <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
 <20200124060339.GB2906795@kroah.com>
 <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
 <20200128062814.GA2097606@kroah.com>
 <4EF659A1-2844-46B9-9ED6-5A6A20401D9D@xilinx.com>
 <20200131061038.GA2180358@kroah.com>
In-Reply-To: <20200131061038.GA2180358@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=RAJANV@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a1e6e1d1-2abb-4af0-a19e-08d7a62cafd0
x-ms-traffictypediagnostic: BYAPR02MB5527:|BYAPR02MB5527:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB5527FF4FE983EA688660DAE5B7070@BYAPR02MB5527.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 029976C540
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39850400004)(136003)(376002)(366004)(199004)(189003)(86362001)(71200400001)(66556008)(5660300002)(9686003)(8676002)(6636002)(7696005)(4326008)(110136005)(55016002)(54906003)(7416002)(52536014)(66446008)(81166006)(81156014)(66476007)(26005)(478600001)(53546011)(316002)(76116006)(6506007)(66946007)(33656002)(64756008)(186003)(2906002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5527;
 H:BYAPR02MB4055.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rFfQk6MsC0n1q32D5u+QadihZ5jGUiMBGrYCLdWUT/1AfC5wbBI+mztJb9heQ1P9DFiKLdLob0qgpB+haUFNxZkhHBGUxBgsh5qfb8C95e2Qlv62owF6Uiwv2P56WwIsFv+nYW7u7MnC9Qo9oc8cqlyxhOrL0V8oE9RYnCgEe29Cf+dURLst8pZHxWxUjKLAeCMihS9DvgRVaS0LlXrdNQ0bZKKx2S5sO4FTPxQHy+WfYSz+kX3ZndwCIYFe2e1ewtI5ZMncTavbmOL2JPHDwD3m8/f5ApTBCxpC6aDAFwR4rx+Kgqx4A7TGa/HSd/GDzeFG5t7GSG1ya7BHqgE50SEmmGesG1OGM1jLiI+tPXnwoKOTWwbVuqAYqZUmTXDns76CTXItS9PuiGWVuJIrtKYKTfYhSXwyS159/CdTsEzTLQR6UWfIuK6ivlxn+yqg
x-ms-exchange-antispam-messagedata: 00eZ6hw7JCEKFuAhD8aJ+qEypySpzvXlRAIguftPU6XsrYWA8bJE8VxIn35ktCQtkUx8Cv7bd32Kjp1kRg//mCBx4Wx8J9m2WXvmI9Fe5LVgbaQM3fyabI5SqNQUlo2AEVmEvVW5VZYoxFbyq/kDjw==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1e6e1d1-2abb-4af0-a19e-08d7a62cafd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2020 09:05:15.3072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YjSp+bntp4OO9Ho8H22mIDQTRnivvDfUJKfzGwG4kkTY7bACd1TxO1hi9/YKqW2j6gwN6cmTa9NFal8nbpJmwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5527
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_010526_478694_214C033F 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.68 listed in list.dnswl.org]
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3JlZywNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBHcmVnIEtI
IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCj4gU2VudDogMzEgSmFudWFyeSAyMDIwIDEx
OjQxIEFNDQo+IFRvOiBKb2xseSBTaGFoIDxKT0xMWVNAeGlsaW54LmNvbT4NCj4gQ2M6IGFyZC5i
aWVzaGV1dmVsQGxpbmFyby5vcmc7IG1pbmdvQGtlcm5lbC5vcmc7IG1hdHRAY29kZWJsdWVwcmlu
dC5jby51azsNCj4gc3VkZWVwLmhvbGxhQGFybS5jb207IGhrYWxsd2VpdDFAZ21haWwuY29tOyBr
ZWVzY29va0BjaHJvbWl1bS5vcmc7DQo+IGRtaXRyeS50b3Jva2hvdkBnbWFpbC5jb207IE1pY2hh
bCBTaW1layA8bWljaGFsc0B4aWxpbnguY29tPjsgUmFqYW4gVmFqYQ0KPiA8UkFKQU5WQHhpbGlu
eC5jb20+OyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LQ0KPiBr
ZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMS80XSBmaXJt
d2FyZTogeGlsaW54OiBBZGQgc3lzZnMgaW50ZXJmYWNlDQo+IA0KPiBFWFRFUk5BTCBFTUFJTA0K
PiANCj4gT24gVGh1LCBKYW4gMzAsIDIwMjAgYXQgMTE6NTk6MDNQTSArMDAwMCwgSm9sbHkgU2hh
aCB3cm90ZToNCj4gPiBIaSBHcmVnLA0KPiA+DQo+ID4g77u/T24gMS8yNy8yMCwgMTA6MjggUE0s
ICJsaW51eC1rZXJuZWwtb3duZXJAdmdlci5rZXJuZWwub3JnIG9uIGJlaGFsZiBvZiBHcmVnDQo+
IEtIIiA8bGludXgta2VybmVsLW93bmVyQHZnZXIua2VybmVsLm9yZyBvbiBiZWhhbGYgb2YNCj4g
Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOg0KPiA+DQo+ID4gICAgIE9uIE1vbiwg
SmFuIDI3LCAyMDIwIGF0IDExOjAxOjI3UE0gKzAwMDAsIEpvbGx5IFNoYWggd3JvdGU6DQo+ID4g
ICAgID4gICAgID4gPiA+ICsgICAgIHJldCA9IGtzdHJ0b2wodG9rLCAxNiwgJnZhbHVlKTsNCj4g
PiAgICAgPiAgICAgPiA+ID4gKyAgICAgaWYgKHJldCkgew0KPiA+ICAgICA+ICAgICA+ID4gPiAr
ICAgICAgICAgICAgIHJldCA9IC1FRkFVTFQ7DQo+ID4gICAgID4gICAgID4gPiA+ICsgICAgICAg
ICAgICAgZ290byBlcnI7DQo+ID4gICAgID4gICAgID4gPiA+ICsgICAgIH0NCj4gPiAgICAgPiAg
ICAgPiA+ID4gKw0KPiA+ICAgICA+ICAgICA+ID4gPiArICAgICByZXQgPSBlZW1pX29wcy0+aW9j
dGwoMCwgcmVhZF9pb2N0bCwgcmVnLCAwLCByZXRfcGF5bG9hZCk7DQo+ID4gICAgID4gICAgID4g
Pg0KPiA+ICAgICA+ICAgICA+ID4gVGhpcyBmZWVscyAidHJpY2t5IiwgaWYgeW91IHRpZSB0aGlz
IHRvIHRoZSBkZXZpY2UgeW91IGhhdmUgeW91ciBkcml2ZXINCj4gPiAgICAgPiAgICAgPiA+IGJv
dW5kIHRvLCB3aWxsIHRoaXMgbWFrZSBpdCBlYXNpZXIgaW5zdGVhZCBvZiBoYXZpbmcgdG8gZ28g
dGhyb3VnaCB0aGUNCj4gPiAgICAgPiAgICAgPiA+IGlvY3RsIGNhbGxiYWNrPw0KPiA+ICAgICA+
ICAgICA+ID4NCj4gPiAgICAgPiAgICAgPg0KPiA+ICAgICA+ICAgICA+IEdHUyhnZW5lcmFsIGds
b2JhbCBzdG9yYWdlKSByZWdpc3RlcnMgYXJlIGluIFBNVSBzcGFjZSBhbmQgbGludXgNCj4gZG9l
c24ndCBoYXZlIGFjY2VzcyB0byBpdA0KPiA+ICAgICA+ICAgICA+IEhlbmNlIGlvY3RsIGlzIHVz
ZWQuDQo+ID4gICAgID4NCj4gPiAgICAgPiAgICAgV2h5IG5vdCBqdXN0IGEgInJlYWwiIGNhbGwg
dG8gdGhlIGRyaXZlciB0byBtYWtlIHRoaXMgdHlwZSBvZiByZWFkaW5nPw0KPiA+ICAgICA+ICAg
ICBZb3UgZG9uJ3QgaGF2ZSBpb2N0bHMgd2l0aGluIHRoZSBrZXJuZWwgZm9yIG90aGVyIGRyaXZl
cnMgdG8gY2FsbCwNCj4gPiAgICAgPiAgICAgdGhhdCdzIG5vdCBuZWVkZWQgYXQgYWxsLg0KPiA+
ICAgICA+DQo+ID4gICAgID4gdGhlc2UgcmVnaXN0ZXJzIGFyZSBmb3IgdXNlcnMgIGFuZCBmb3Ig
c3BlY2lhbCBuZWVkcyB3aGVyZSB1c2VycyB3YW50cw0KPiA+ICAgICA+IHRvIHJldGFpbiB2YWx1
ZXMgb3ZlciByZXNldHMuIGJ1dCBhcyB0aGV5IGJlbG9uZyB0byBQTVUgYWRkcmVzcyBzcGFjZSwN
Cj4gPiAgICAgPiB0aGVzZSBpbnRlcmZhY2UgQVBJcyBhcmUgcHJvdmlkZWQuIFRoZXkgZG9u4oCZ
dCBhbGxvdyBhY2Nlc3MgdG8gYW55DQo+ID4gICAgID4gb3RoZXIgcmVnaXN0ZXJzLg0KPiA+DQo+
ID4gICAgIFRoYXQncyBub3QgdGhlIGlzc3VlIGhlcmUuICBUaGUgaXNzdWUgaXMgeW91IGFyZSB1
c2luZyBhbiAiaW50ZXJuYWwiDQo+ID4gICAgIGlvY3RsLCBpbnN0ZWFkIGp1c3QgbWFrZSBhICJy
ZWFsIiBjYWxsLg0KPiA+DQo+ID4gU29ycnkgSSBhbSBub3QgY2xlYXIuIERvIHlvdSBtZWFuIHRo
YXQgd2Ugc2hvdWxkIHVzZSBsaW51eCBzdGFuZGFyZA0KPiA+IGlvY3RsIGludGVyZmFjZSBpbnN0
ZWFkIG9mIGludGVybmFsIGlvY3RsIGJ5IG1lbnRpb25pbmcgInJlYWwiID8NCj4gDQo+IE5vLCB5
b3Ugc2hvdWxkIGp1c3QgbWFrZSBhICJyZWFsIiBmdW5jdGlvbiBjYWxsIHRvIHRoZSBleGFjdCB0
aGluZyB5b3UNCj4gd2FudCB0byBkby4gIE5vdCBoYXZlIGFuIGludGVybmFsIG11bHRpLXBsZXhv
ciBpb2N0bCgpIGNhbGwgdGhhdCBvdGhlcnMNCj4gdGhlbiBjYWxsLiAgVGhpcyBpc24ndCBhIG1p
Y3Jva2VybmVsIDopDQpbUmFqYW5dIFNvcnJ5IGZvciBtdWx0aXBsZSBiYWNrIGFuZCBmb3J0aCBi
dXQgYXMgSSB1bmRlcnN0YW5kLCB5b3UgYXJlIHN1Z2dlc3RpbmcgdG8gY3JlYXRlIGEgbmV3IEFQ
SSBmb3INClJlYWQvd3JpdGUgb2YgR0dTIHJlZ2lzdGVyIGluc3RlYWQgb2YgdXNpbmcgUE1fSU9D
VEwgQVBJIChlZW1pX29wcy0+aW9jdGwpIGZvciBtdWx0aXBsZSBwdXJwb3NlLiBJcyBteSB1bmRl
cnN0YW5kaW5nIGNvcnJlY3Q/DQoNClRoYW5rcywNClJhamFuDQoNCj4gDQo+IHRoYW5rcywNCj4g
DQo+IGdyZWcgay1oDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
