Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4694D2B19A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 11:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DE8cIaz8oZMuDaUmnHcVpPQnY6BvJPvzqSZIhmgQJxs=; b=Rd2bK2VnVGes2I
	8U/17WBr8gP+dyOBevglMK50OZn/75SL4GXZJCgnCiaowxHxX/ryEY4xiFdLCsxhvbpTSJC/ghPfe
	oCAWM8ZPF3yda9FpMfgFL7Qcwkm234frqG5ZVdB4/Na/sDbf3zqc8OFQKQjFGoCX86A34xgIdInzr
	WvE/iF8fOwrRbB1Z4djihIvlSUaEeGa1nSIB7ovfmcSKX3y+S3Yq+9emcWdkLTcmjj4lXkl20q5FQ
	QTNsWt2BD5fwgp5uaq3tgRe7PNS7IotRmDE7K7yQOvjvu1lvD1qTwn0KCV9jYkkSjKCXVka5gqVgV
	wKM7smFaD+mTxlpoSxTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVCIl-0008UT-SM; Mon, 27 May 2019 09:52:19 +0000
Received: from mail-eopbgr30086.outbound.protection.outlook.com ([40.107.3.86]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCIc-0008Ts-Jo
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 09:52:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6OGIIfmXsagVWjmvSCqS72MOJGmfNyZzP798K74zETY=;
 b=JczShen6eQyE75fYY57vxSJN7x7nDtviKc+MpUc0SmaJpXEuESEwD4081wV2rTUxRnefEzfkEuhnxpkDLHjpKcokyP15vgu7pbl4LHQcNGxDWqC4AOFW8xvuFW+dzKwRKMdL6C3WF1buPwYOBePyCdu4S1RyjUfpX1T7aGtOecE=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB6335.eurprd04.prod.outlook.com (20.179.28.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Mon, 27 May 2019 09:52:06 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8%7]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 09:52:06 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2 4/7] dmaengine: fsl-edma-common: version check for v2
 instead
Thread-Topic: [PATCH v2 4/7] dmaengine: fsl-edma-common: version check for v2
 instead
Thread-Index: AQHVFGkvbrL+XeLGHEGi7v50pYf8g6Z+rpsAgACTcAA=
Date: Mon, 27 May 2019 09:52:06 +0000
Message-ID: <1558979756.19282.9.camel@nxp.com>
References: <20190527085118.40423-1-yibin.gong@nxp.com>
 <20190527085118.40423-5-yibin.gong@nxp.com>
 <20190527090814.qfjiksqi24x2jrs3@pengutronix.de>
In-Reply-To: <20190527090814.qfjiksqi24x2jrs3@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0113eac8-db02-4676-e1ec-08d6e288fa87
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6335; 
x-ms-traffictypediagnostic: VI1PR04MB6335:
x-microsoft-antispam-prvs: <VI1PR04MB6335ECF2ACD5D4E52D2645EB891D0@VI1PR04MB6335.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(376002)(346002)(39860400002)(136003)(199004)(189003)(103116003)(26005)(7416002)(186003)(316002)(68736007)(476003)(2616005)(11346002)(446003)(99286004)(25786009)(76176011)(6506007)(53546011)(102836004)(91956017)(66476007)(66556008)(64756008)(66446008)(73956011)(66946007)(5660300002)(76116006)(229853002)(486006)(256004)(6486002)(7736002)(14454004)(3846002)(6116002)(2351001)(81166006)(81156014)(8676002)(8936002)(50226002)(2906002)(53936002)(478600001)(4326008)(305945005)(54906003)(6246003)(2501003)(66066001)(6512007)(6916009)(6436002)(86362001)(36756003)(5640700003)(71200400001)(71190400001)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6335;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: admD4f86YppPxwK1CK+eGiVlDmrDIQyInwsBjEXFh1MF8yNmyVkZN3XOkoT6aUs2+oUiwyKbVFYESwdFcCRt7zSioSM2GU6JW8CeLN+hBL9ImPkkwtskt+9eHpelPKhFrPtCa4VK3wcZkjb8o3yzLl3DLD2ti4AmBEg8xDVPf2OWpAbOXbXsR3cWbryOst2/LAUZejVWxVXxRQCQd9srNFHNzWycahdHhVFetMq5dDKiQtX8TDXhtsYoT0nocD9oq4v3A+G9XSrCehmALQ3heFZ/Tik3frcrFvZqIXfir1Kz4AX/x6piVPgekYJ/Ase/aKtCmJQvYlFVb1GRqL4BUHQTtTrmihlHhvfXE41dkbcLPOarNq1GsHiXjCODNuJRMQRAM5mmUAnXaO/TuRP1Dx9LGkPsJ9fzfST/2HLhJ6Y=
Content-ID: <A4FADF9346F4F349B96573D2BEC85CF3@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0113eac8-db02-4676-e1ec-08d6e288fa87
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 09:52:06.4873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6335
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_025210_728982_04F01135 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "robh@kernel.org" <robh@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wNS0yNyBhdCAwOTowOCArMDAwMCwgU2FzY2hhIEhhdWVyIHdyb3RlOg0KPiBPbiBN
b24sIE1heSAyNywgMjAxOSBhdCAwNDo1MToxNVBNICswODAwLCB5aWJpbi5nb25nQG54cC5jb20g
d3JvdGU6DQo+ID4gDQo+ID4gRnJvbTogUm9iaW4gR29uZyA8eWliaW4uZ29uZ0BueHAuY29tPg0K
PiA+IA0KPiA+IFRoZSBuZXh0IHYzIGkubXg3dWxwIGVkbWEgaXMgYmFzZWQgb24gdjEsIHNvIGNo
YW5nZSB2ZXJzaW9uDQo+ID4gY2hlY2sgbG9naWMgZm9yIHYyIGluc3RlYWQuDQo+ID4gDQo+ID4g
U2lnbmVkLW9mZi1ieTogUm9iaW4gR29uZyA8eWliaW4uZ29uZ0BueHAuY29tPg0KPiA+IC0tLQ0K
PiA+IMKgZHJpdmVycy9kbWEvZnNsLWVkbWEtY29tbW9uLmMgfCA0MCArKysrKysrKysrKysrKysr
KysrKy0tLS0tLS0tLS0tDQo+ID4gLS0tLS0tLS0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMjAg
aW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hL2ZzbC1lZG1hLWNvbW1vbi5jIGIvZHJpdmVycy9kbWEvZnNsLWVkbWEtDQo+ID4g
Y29tbW9uLmMNCj4gPiBpbmRleCBiYjI0MjUxLi40NWQ3MGQzIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZG1hL2ZzbC1lZG1hLWNvbW1vbi5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEvZnNsLWVk
bWEtY29tbW9uLmMNCj4gPiBAQCAtNjU3LDI2ICs2NTcsMjYgQEAgdm9pZCBmc2xfZWRtYV9zZXR1
cF9yZWdzKHN0cnVjdA0KPiA+IGZzbF9lZG1hX2VuZ2luZSAqZWRtYSkNCj4gPiDCoAllZG1hLT5y
ZWdzLmVycWwgPSBlZG1hLT5tZW1iYXNlICsgRURNQV9FUlE7DQo+ID4gwqAJZWRtYS0+cmVncy5l
ZWlsID0gZWRtYS0+bWVtYmFzZSArIEVETUFfRUVJOw0KPiA+IMKgDQo+ID4gLQllZG1hLT5yZWdz
LnNlcnEgPSBlZG1hLT5tZW1iYXNlICsgKChlZG1hLT52ZXJzaW9uID09IHYxKSA/DQo+ID4gLQkJ
CUVETUFfU0VSUSA6IEVETUE2NF9TRVJRKTsNCj4gPiAtCWVkbWEtPnJlZ3MuY2VycSA9IGVkbWEt
Pm1lbWJhc2UgKyAoKGVkbWEtPnZlcnNpb24gPT0gdjEpID8NCj4gPiAtCQkJRURNQV9DRVJRIDog
RURNQTY0X0NFUlEpOw0KPiA+IC0JZWRtYS0+cmVncy5zZWVpID0gZWRtYS0+bWVtYmFzZSArICgo
ZWRtYS0+dmVyc2lvbiA9PSB2MSkgPw0KPiA+IC0JCQlFRE1BX1NFRUkgOiBFRE1BNjRfU0VFSSk7
DQo+ID4gLQllZG1hLT5yZWdzLmNlZWkgPSBlZG1hLT5tZW1iYXNlICsgKChlZG1hLT52ZXJzaW9u
ID09IHYxKSA/DQo+ID4gLQkJCUVETUFfQ0VFSSA6IEVETUE2NF9DRUVJKTsNCj4gPiAtCWVkbWEt
PnJlZ3MuY2ludCA9IGVkbWEtPm1lbWJhc2UgKyAoKGVkbWEtPnZlcnNpb24gPT0gdjEpID8NCj4g
PiAtCQkJRURNQV9DSU5UIDogRURNQTY0X0NJTlQpOw0KPiA+IC0JZWRtYS0+cmVncy5jZXJyID0g
ZWRtYS0+bWVtYmFzZSArICgoZWRtYS0+dmVyc2lvbiA9PSB2MSkgPw0KPiA+IC0JCQlFRE1BX0NF
UlIgOiBFRE1BNjRfQ0VSUik7DQo+ID4gLQllZG1hLT5yZWdzLnNzcnQgPSBlZG1hLT5tZW1iYXNl
ICsgKChlZG1hLT52ZXJzaW9uID09IHYxKSA/DQo+ID4gLQkJCUVETUFfU1NSVCA6IEVETUE2NF9T
U1JUKTsNCj4gPiAtCWVkbWEtPnJlZ3MuY2RuZSA9IGVkbWEtPm1lbWJhc2UgKyAoKGVkbWEtPnZl
cnNpb24gPT0gdjEpID8NCj4gPiAtCQkJRURNQV9DRE5FIDogRURNQTY0X0NETkUpOw0KPiA+IC0J
ZWRtYS0+cmVncy5pbnRsID0gZWRtYS0+bWVtYmFzZSArICgoZWRtYS0+dmVyc2lvbiA9PSB2MSkg
Pw0KPiA+IC0JCQlFRE1BX0lOVFIgOiBFRE1BNjRfSU5UTCk7DQo+ID4gLQllZG1hLT5yZWdzLmVy
cmwgPSBlZG1hLT5tZW1iYXNlICsgKChlZG1hLT52ZXJzaW9uID09IHYxKSA/DQo+ID4gLQkJCUVE
TUFfRVJSIDogRURNQTY0X0VSUkwpOw0KPiA+ICsJZWRtYS0+cmVncy5zZXJxID0gZWRtYS0+bWVt
YmFzZSArICgoZWRtYS0+dmVyc2lvbiA9PSB2MikgPw0KPiA+ICsJCQlFRE1BNjRfU0VSUSA6IEVE
TUFfU0VSUSk7DQo+ID4gKwllZG1hLT5yZWdzLmNlcnEgPSBlZG1hLT5tZW1iYXNlICsgKChlZG1h
LT52ZXJzaW9uID09IHYyKSA/DQo+ID4gKwkJCUVETUE2NF9DRVJRIDogRURNQV9DRVJRKTsNCj4g
PiArCWVkbWEtPnJlZ3Muc2VlaSA9IGVkbWEtPm1lbWJhc2UgKyAoKGVkbWEtPnZlcnNpb24gPT0g
djIpID8NCj4gPiArCQkJRURNQTY0X1NFRUkgOiBFRE1BX1NFRUkpOw0KPiA+ICsJZWRtYS0+cmVn
cy5jZWVpID0gZWRtYS0+bWVtYmFzZSArICgoZWRtYS0+dmVyc2lvbiA9PSB2MikgPw0KPiA+ICsJ
CQlFRE1BNjRfQ0VFSSA6IEVETUFfQ0VFSSk7DQo+ID4gKwllZG1hLT5yZWdzLmNpbnQgPSBlZG1h
LT5tZW1iYXNlICsgKChlZG1hLT52ZXJzaW9uID09IHYyKSA/DQo+ID4gKwkJCUVETUE2NF9DSU5U
IDogRURNQV9DSU5UKTsNCj4gPiArCWVkbWEtPnJlZ3MuY2VyciA9IGVkbWEtPm1lbWJhc2UgKyAo
KGVkbWEtPnZlcnNpb24gPT0gdjIpID8NCj4gPiArCQkJRURNQTY0X0NFUlIgOiBFRE1BX0NFUlIp
Ow0KPiA+ICsJZWRtYS0+cmVncy5zc3J0ID0gZWRtYS0+bWVtYmFzZSArICgoZWRtYS0+dmVyc2lv
biA9PSB2MikgPw0KPiA+ICsJCQlFRE1BNjRfU1NSVCA6IEVETUFfU1NSVCk7DQo+ID4gKwllZG1h
LT5yZWdzLmNkbmUgPSBlZG1hLT5tZW1iYXNlICsgKChlZG1hLT52ZXJzaW9uID09IHYyKSA/DQo+
ID4gKwkJCUVETUE2NF9DRE5FIDogRURNQV9DRE5FKTsNCj4gPiArCWVkbWEtPnJlZ3MuaW50bCA9
IGVkbWEtPm1lbWJhc2UgKyAoKGVkbWEtPnZlcnNpb24gPT0gdjIpID8NCj4gPiArCQkJRURNQTY0
X0lOVEwgOiBFRE1BX0lOVFIpOw0KPiA+ICsJZWRtYS0+cmVncy5lcnJsID0gZWRtYS0+bWVtYmFz
ZSArICgoZWRtYS0+dmVyc2lvbiA9PSB2MikgPw0KPiA+ICsJCQlFRE1BNjRfRVJSTCA6IEVETUFf
RVJSKTsNCj4gRm9sbG93aW5nIHRvIHdoYXQgSSBoYXZlIHNhaWQgdG8gNi83IHlvdSBjYW4gcHV0
IHRoZSByZWdpc3RlciBvZmZzZXRzDQo+IGludG8gdGhhdCBuZXcgc3RydWN0IGFzd2VsbC4NCj4g
DQo+IFNhc2NoYQ0KVW5kZXJzdG9vZCB5b3VyIHBvaW50LCBidXQgdGhlIGxvZ2ljIG9mIGZzbC1l
ZG1hLWNvbW1vbi5jIGlzIHRoZSBjb21tb24NCmZ1bmN0aW9ucyBhcnJheSBwcm92aWRlZCB0byBi
ZSBjYWxsZWQgaW4gZnNsLWVkbWEuYyBvciBtY2YtZWRtYS5jLCBub3QNCmRpZmZlcmVudCBzcGVj
aWZpYyBmdW5jdGlvbnMgaW4gZnNsLWVkbWEuYyBvciBtY2YtZWRtYS5jLiDCoMKgDQo+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
