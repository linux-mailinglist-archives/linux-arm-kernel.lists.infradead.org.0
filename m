Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B77CF473
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 10:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aupGbwmeRs46/SjjnDcgkwhqF1/65yUURRIYI7kmDcE=; b=RzZSqTVppAjDWJ
	SJ7ri01dntG8E07KXZTXgqdnwRCoKuB5hVend9PXHpeqPmryQt0v/IVRP6eGqWCyzMPB6t1liHeKH
	9Hg3AX4RE/3og4/IaAj8G1U4abQ52Mn7AJopBUJOJnYS/WbuJ+zM/6t6TCKxtszDgFsCl9geRIEB5
	QUdjR3sPLiheOIMKeG//XrtY/zxT7l6mTD3WrUCV7ea1iHuAoBQh1MUNkC1wTwwV75UXVTdWoB++5
	zlSzBTm7gqOgz3kJ8AaaahdJ5Nlgq4VuK39F2WkSbWpoiXz/FyXW2HRQe67uQ5wwRUS5AdO7NRITl
	/1g1+PVaYqgB14/zT/ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHkSg-0000Kq-BO; Tue, 08 Oct 2019 08:03:14 +0000
Received: from mail-eopbgr50052.outbound.protection.outlook.com ([40.107.5.52]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHkSZ-0000KI-9I
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 08:03:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DfU3TYqOQerT96HzMNqHhjwx8uaLbL9AZCdB+rS3tsOxxzSIukfQV6l5axWId4c8GozRX7Xn+YtlqXQJHkdOEs04vYq4GUlmm8ljLSONrm9bKLHvkyvOqPH5NUGRMzZTiqFRQB2n98edR8SCXI+z80llnUqz8pQEwyj86ZGo78Era5qKYQLUZVyX3NUyptMtUsaqQjvmWg5HufUo10im2kw0i24dkPP1Ix/YSqbJ5TFjFxuLwyEJNfRK8MI75Ep1I0H43H9XL7CQ4x1Hb25Td8Qfewl23MnwXM1H3I7s6dxcn2oMcgSRFXy2DFpPNzdnsC3rW+7vdW9tLOeRsO2ojA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RRo3weKAFtLSQt+P42bIgdQNb3VBZviNHuq0Z0Sm7qc=;
 b=h8G/yruB6NvRG8kD9NJiYblC80DVi7iaY1JWfefgJjhhe0TJ4u1ccncamuPgD0lOg6gwL6AafXZ0hcC0vr1Fw8JpYJ30mrOkoQoQhtm9EqVjEPZIrT7ni9oWReChHgeC45UCRl8JyqeeM5Ihe2Nc+SuO8+sMeFMEDzRYK1D73XngzNgJ53WZfRKlrN2ldFgiLgxYxT47o7/ThTcaKwa1Q1XeJT+URDK96osycXNWxWCyuk0OQeIksPjp76MPblU6LxfAS/69PPUCZPE56/sINnR8ICHghXexqEZDUNi8ItqfqVXYhVNrYavj04/wQWXtfAt+a0N9E+3UeOCwk7WkVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RRo3weKAFtLSQt+P42bIgdQNb3VBZviNHuq0Z0Sm7qc=;
 b=fen4Ef6sLW5/SdEbe0x254dR+kXLIVtQm0O6kD5bZhk9Ey4leNYQM6kBfAPAltoCaiw8ecoEfPGjp7dDEZf68/jjTZLrPqZ6eCcE0vAOgL8HNAQ8h7XCxV5LVkWVYVcffREgHu3Syv2ztD/iFq4OtTwB8S+zFawQLC8YQyuge38=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3172.eurprd04.prod.outlook.com (10.173.255.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Tue, 8 Oct 2019 08:03:03 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5dd3:ddc9:411a:db41]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5dd3:ddc9:411a:db41%3]) with mapi id 15.20.2305.023; Tue, 8 Oct 2019
 08:03:03 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Ashish Kumar <ashish.kumar@nxp.com>
Subject: RE: [PATCH] arm64: dts: ls1028a: Add FlexSPI support for NXP LS1028
Thread-Topic: [PATCH] arm64: dts: ls1028a: Add FlexSPI support for NXP LS1028
Thread-Index: AQHVZ9I6hwN2dwKzuUSu4vhTVq3sTqdNGlOAgANzb1A=
Date: Tue, 8 Oct 2019 08:03:03 +0000
Message-ID: <AM5PR04MB32996FD54858CCF141CBC218F59A0@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <1568118055-9740-1-git-send-email-Ashish.Kumar@nxp.com>
 <20191006032019.GP7150@dragon>
In-Reply-To: <20191006032019.GP7150@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fce96dfa-4c94-4265-3102-08d74bc5f1cd
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM5PR04MB3172:|AM5PR04MB3172:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB3172D397F69BBB5516FB39A0F59A0@AM5PR04MB3172.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(199004)(189003)(13464003)(229853002)(476003)(26005)(110136005)(6246003)(5660300002)(11346002)(446003)(9686003)(54906003)(86362001)(8936002)(44832011)(316002)(33656002)(52536014)(6436002)(486006)(186003)(14444005)(55016002)(256004)(4326008)(6636002)(14454004)(478600001)(3846002)(66946007)(2906002)(66066001)(25786009)(6116002)(7696005)(6506007)(8676002)(7736002)(53546011)(71190400001)(102836004)(71200400001)(305945005)(76176011)(66446008)(64756008)(66556008)(66476007)(81156014)(99286004)(81166006)(74316002)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3172;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jArEVe9jLW1czsWRYR2JU9BaCcxAyOvFYKUhE8IvpqzwMVg9LBiCbideo9r/m9yUtkjAOTbF2ydUjMjMrBV9wVXIe3riuJx5xYjHI5oATNdXuTQjtbWrwL1lv0h4G5zm2zMgIIB/fYViDaBahkPTeVDQc2qu8e2J3dveaXG4OE/0crMCe6ebEZ/8NXKMH0vaWw/odJpS09tz4H5VCd8ra0jenFw4YzdrZg5gYVxCL0t79kRlwvdzZk5gIz+qZljM7BlotfG2Sdze4V73UPzWYvq2GjtXbHMKZm9ol9tmvyoTWYf8cTACmTk+XMcHa21QIY41egYIzFFKrMCayMBGAJSO4CuvCVdganjPhkekPbcS22EupODwi3daHq85WovK/bIfA7HKgnbE6cR3Bv9U8nDUAAt0jyWqIyzG09tgHlc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fce96dfa-4c94-4265-3102-08d74bc5f1cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 08:03:03.2162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DZzGeLU0UshcbPstQ1TrRsk9fK2OvOcaE/f5MagoqeOv1W6TEP74jjgCvdtCmuZzlOqLDPJ90abL6uKOQ71eiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_010307_329383_AABAD980 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "robh@kernel.org" <robh@kernel.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhd24gR3VvIDxzaGF3
bmd1b0BrZXJuZWwub3JnPg0KPiBTZW50OiAyMDE5xOoxMNTCNsjVIDExOjIwDQo+IFRvOiBBc2hp
c2ggS3VtYXIgPGFzaGlzaC5rdW1hckBueHAuY29tPg0KPiBDYzogZGV2aWNldHJlZUB2Z2VyLmtl
cm5lbC5vcmc7IHJvYmhAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207DQo+IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVs
Lm9yZzsgWGlhb3dlaQ0KPiBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+DQo+IFN1YmplY3Q6IFJl
OiBbUEFUQ0hdIGFybTY0OiBkdHM6IGxzMTAyOGE6IEFkZCBGbGV4U1BJIHN1cHBvcnQgZm9yIE5Y
UCBMUzEwMjgNCj4gDQo+IE9uIFR1ZSwgU2VwIDEwLCAyMDE5IGF0IDA1OjUwOjUxUE0gKzA1MzAs
IEFzaGlzaCBLdW1hciB3cm90ZToNCj4gPiBBZGQgZnNwaSBub2RlIHByb3BlcnR5IGZvciBMUzEw
MjhBIFNvQyBmb3IgRmxleFNQSSBkcml2ZXIuDQo+ID4gUHJvcGVydHkgYWRkZWQgZm9yIEZsZXhT
UEkgY29udHJvbGxlciBhbmQgZm9yIHRoZSBjb25uZWN0ZWQgc2xhdmUNCj4gPiBkZXZpY2UgZm9y
IHRoZSBMUzEwMjhBUkRCIGFuZCBMUzEwMjhBUURTIHRhcmdldC4NCj4gPiBSREIgYW5kIFFEUyBp
cyBoYXZpbmcgb25lIFNQSS1OT1IgZmxhc2ggZGV2aWNlLCBtdDM1eHUwMmcgY29ubmVjdGVkIGF0
DQo+ID4gQ1MwLg0KPiA+IFRoaXMgZmxhc2ggZGV2aWNlICJtdDM1eHUwMmciIGlzIHRlc3RlZCBm
b3Igb2N0YWwgcmVhZA0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogWGlhb3dlaSBCYW8gPHhpYW93
ZWkuYmFvQG54cC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQXNoaXNoIEt1bWFyIDxBc2hpc2gu
S3VtYXJAbnhwLmNvbT4NCj4gDQo+IFdoZW4geW91IHNlbmQgYSBwYXRjaCBzZXJpZXMsIHRoZSBw
YXRjaGVzIHNob3VsZCBiZSBudW1iZXJlZCBwcm9wZXJseSBhbmQNCj4gcHJlZmVyYWJseSB3aXRo
IGEgY292ZXItbGV0dGVyLg0KDQpHb3QgaXQsIHRoYW5rcy4NCg0KVGhhbmtzDQpYaWFvd2VpDQoN
Cj4gDQo+ID4gLS0tDQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEw
MjhhLXFkcy5kdHMgfCAxNQ0KPiA+ICsrKysrKysrKysrKysrKyAgYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRiLmR0cyB8DQo+IDE1ICsrKysrKysrKysrKysrKw0K
PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpICAgIHwg
MTMgKysrKysrKysrKysrKw0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKykN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDI4YS1xZHMuZHRzDQo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDI4YS1xZHMuZHRzDQo+ID4gaW5kZXggNWUxNGU1YS4uNWQ0Njk5MyAxMDA2NDQNCj4gPiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1xZHMuZHRzDQo+
ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcWRzLmR0
cw0KPiA+IEBAIC0xMDMsNiArMTAzLDIxIEBADQo+ID4gIAlzdGF0dXMgPSAib2theSI7DQo+ID4g
IH07DQo+ID4NCj4gPiArJmZzcGkgew0KPiA+ICsJc3RhdHVzID0gIm9rYXkiOw0KPiANCj4gSGF2
ZSBhIG5ld2xpbmUgYmV0d2VlbiBwcm9wZXJ0aWVzIGFuZCBjaGlsZCBub2RlLi4NCj4gDQo+ID4g
KwlmbGFzaDA6IG10MzV4dTAyZ0AwIHsNCj4gDQo+IFVzZSBhIGdlbmVyaWMgbm9kZSBuYW1lIGFu
ZCBzcGVjaWZpYyBsYWJlbCBuYW1lLg0KPiANCj4gPiArCQljb21wYXRpYmxlID0gIm1pY3Jvbixt
dDM1eHUwMmciLCAiamVkZWMsc3BpLW5vciI7DQo+IA0KPiAibWljcm9uLG10MzV4dTAyZyIgaXMg
dW5kb2N1bWVudGVkLg0KPiANCj4gU2hhd24NCj4gDQo+ID4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8
MT47DQo+ID4gKwkJI3NpemUtY2VsbHMgPSA8MT47DQo+ID4gKwkJbTI1cCxmYXN0LXJlYWQ7DQo+
ID4gKwkJc3BpLW1heC1mcmVxdWVuY3kgPSA8NTAwMDAwMDA+Ow0KPiA+ICsJCXJlZyA9IDwwPjsN
Cj4gPiArCQkvKiBUaGUgZm9sbG93aW5nIHNldHRpbmcgZW5hYmxlcyAxLTEtOCAoQ01ELUFERFIt
REFUQSkgbW9kZSAqLw0KPiA+ICsJCXNwaS1yeC1idXMtd2lkdGggPSA8OD47IC8qIDggU1BJIFJ4
IGxpbmVzICovDQo+ID4gKwkJc3BpLXR4LWJ1cy13aWR0aCA9IDwxPjsgLyogMSBTUEkgVHggbGlu
ZSAqLw0KPiA+ICsJfTsNCj4gPiArfTsNCj4gPiArDQo+ID4gICZpMmMwIHsNCj4gPiAgCXN0YXR1
cyA9ICJva2F5IjsNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9mc2wtbHMxMDI4YS1yZGIuZHRzDQo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9mc2wtbHMxMDI4YS1yZGIuZHRzDQo+ID4gaW5kZXggMWE2OTIyMS4uZjMzY2IyZSAx
MDA2NDQNCj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4
YS1yZGIuZHRzDQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxz
MTAyOGEtcmRiLmR0cw0KPiA+IEBAIC05Niw2ICs5NiwyMSBAQA0KPiA+ICAJc3RhdHVzID0gIm9r
YXkiOw0KPiA+ICB9Ow0KPiA+DQo+ID4gKyZmc3BpIHsNCj4gPiArCXN0YXR1cyA9ICJva2F5IjsN
Cj4gPiArCWZsYXNoMDogbXQzNXh1MDJnQDAgew0KPiA+ICsJCWNvbXBhdGlibGUgPSAibWljcm9u
LG10MzV4dTAyZyIsICJqZWRlYyxzcGktbm9yIjsNCj4gPiArCQkjYWRkcmVzcy1jZWxscyA9IDwx
PjsNCj4gPiArCQkjc2l6ZS1jZWxscyA9IDwxPjsNCj4gPiArCQltMjVwLGZhc3QtcmVhZDsNCj4g
PiArCQlzcGktbWF4LWZyZXF1ZW5jeSA9IDw1MDAwMDAwMD47DQo+ID4gKwkJcmVnID0gPDA+Ow0K
PiA+ICsJCS8qIFRoZSBmb2xsb3dpbmcgc2V0dGluZyBlbmFibGVzIDEtMS04IChDTUQtQUREUi1E
QVRBKSBtb2RlICovDQo+ID4gKwkJc3BpLXJ4LWJ1cy13aWR0aCA9IDw4PjsgLyogOCBTUEkgUngg
bGluZXMgKi8NCj4gPiArCQlzcGktdHgtYnVzLXdpZHRoID0gPDE+OyAvKiAxIFNQSSBUeCBsaW5l
ICovDQo+ID4gKwl9Ow0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgJmkyYzAgew0KPiA+ICAJc3RhdHVz
ID0gIm9rYXkiOw0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kNCj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2ZzbC1sczEwMjhhLmR0c2kNCj4gPiBpbmRleCBiMTM5YjI5Li40YWExODI1IDEwMDY0NA0K
PiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kN
Cj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNp
DQo+ID4gQEAgLTE3NCw2ICsxNzQsMTkgQEANCj4gPiAgCQkJY2xvY2tzID0gPCZzeXNjbGs+Ow0K
PiA+ICAJCX07DQo+ID4NCj4gPiArCQlmc3BpOiBzcGlAMjBjMDAwMCB7DQo+ID4gKwkJCWNvbXBh
dGlibGUgPSAibnhwLGx4MjE2MGEtZnNwaSI7DQo+ID4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+
Ow0KPiA+ICsJCQkjc2l6ZS1jZWxscyA9IDwwPjsNCj4gPiArCQkJcmVnID0gPDB4MCAweDIwYzAw
MDAgMHgwIDB4MTAwMDA+LA0KPiA+ICsJCQkgICAgICA8MHgwIDB4MjAwMDAwMDAgMHgwIDB4MTAw
MDAwMDA+Ow0KPiA+ICsJCQlyZWctbmFtZXMgPSAiZnNwaV9iYXNlIiwgImZzcGlfbW1hcCI7DQo+
ID4gKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAyNSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsNCj4g
PiArCQkJY2xvY2tzID0gPCZjbG9ja2dlbiA0IDM+LCA8JmNsb2NrZ2VuIDQgMz47DQo+ID4gKwkJ
CWNsb2NrLW5hbWVzID0gImZzcGlfZW4iLCAiZnNwaSI7DQo+ID4gKwkJCXN0YXR1cyA9ICJkaXNh
YmxlZCI7DQo+ID4gKwkJfTsNCj4gPiArDQo+ID4gIAkJaTJjMDogaTJjQDIwMDAwMDAgew0KPiA+
ICAJCQljb21wYXRpYmxlID0gImZzbCx2ZjYxMC1pMmMiOw0KPiA+ICAJCQkjYWRkcmVzcy1jZWxs
cyA9IDwxPjsNCj4gPiAtLQ0KPiA+IDIuNy40DQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
