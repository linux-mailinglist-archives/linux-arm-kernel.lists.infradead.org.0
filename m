Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9902516BB69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:00:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rmf6po7RNXfPU+2Z4lNyzo249GyalGzSNxM2WiR6TZU=; b=H4SWVuZFBGgiY3
	Womm/5QWq5KVOYLmKDGx8I2hUvwQtxQAVljEN+IJBTkYaQ4sh13VpZdyNNLfMnJ9lxpaYQVRm1oxn
	Qm1aCNEOpxKh9yFwXac3LEmg9W2KMSnL6x5o7ZMetl+3xyHg104kSDhaD++NvgUkWGkqDwHXJHH96
	z4qX6foPeZie3jhM8JWdCz79blYySQmpL7ihUTGevDXexbaTavHbMYdi/OLITTJxjLJDmMV7QpIud
	Y2vy2cVF58+bnfYkBg3lJiiwHMI4eXssNImodWh5M5TgSM56nDSTkOM+zgSqVvkDSmswVunf7a/16
	N0AS2lElGVJjlvPjPa+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6V8I-0001Ko-HV; Tue, 25 Feb 2020 07:59:58 +0000
Received: from mail-eopbgr10077.outbound.protection.outlook.com ([40.107.1.77]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6V85-0001KF-Be
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 07:59:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZqVM29P0YgG88van8qLI4YQzXyUMP01TJ3TQojQzsmwqtGTUuaRaBBtLfa20hu0N4HLNqAKE+1Zlt5xWJdDgxOGHAcGIRMYggxUet/GWAoHG78905A0QOd0QRA5J/XViMQOX3YZg+GacnmQQ4zzVhJD31xrdYUFUBthGIWr8B1dLksNI/zOuUM9KZw7xMh3/CoN0oXVey2fKFa4clHHCsdjn/ZIlO/Sc8SWuddeqtV6xP5XUVWPvdEWSlVqIFfWapyzzGEItNAq1QlYW/PYMDaBWcR5FA84fU2AhjBUaOc/L2bJB+RNUlL2S4AAAWIcOo+AziAPiBKd0/YeHtJijDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GX8fKWMT2TGso3W6qdgGQwr3Z9kdVI2IrloZXF52YGA=;
 b=PvScxyGGUnaGrqfvkXsN7jdTV3D4y9Y54kMisdJBBDgcRikoYcY/VQLmpnrevUdmZo7NOjhBbBF3Vi8d2y7PACbMPMeerY5jksmtyfOX99BfEB4+9Dq5QVZIv5Ru2kxzu3HQ8TYqQ7r5ZLLOGCmGaHwbR1HkNOv36M6Ix/FG+TygH0xkssZKhVoyxQ+7iVSJZfKbQDz74YExcuhvz29PJbsdoCIA3ER32R0G/j9WFTaUF2PkC6YqKtvDQ3CkMEKywfH64YS7ThJC1WauA6zN98wncigfaqq2iETVau7MO8LrmLJT9wSb6YnMol8Rjh7SS1uJvpzPsa+h2lSjmeSTag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GX8fKWMT2TGso3W6qdgGQwr3Z9kdVI2IrloZXF52YGA=;
 b=RTr6M0KPj4v9bhzLKEnZ9fryA0QGsWBAF+sqLv81Ja1Qlil28tpNv96c3tvQ03dTw+QKEq6ENPe37Y/ujmmE02eNivGzpF/IrCPklv7TzrNmQt12suj+8D/1eGfolfO2+zKcHmshM1cFPc/FzwcIn55mP2EZyxbXSnpp2mBA0lI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6372.eurprd04.prod.outlook.com (20.179.252.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Tue, 25 Feb 2020 07:59:39 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 07:59:39 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>
Subject: RE: [PATCH V2 1/2] mailbox: imx: support SCU channel type
Thread-Topic: [PATCH V2 1/2] mailbox: imx: support SCU channel type
Thread-Index: AQHV64rzmpuHn9CB6EK33/QrFlZgT6grcuiAgAAYJKA=
Date: Tue, 25 Feb 2020 07:59:39 +0000
Message-ID: <AM0PR04MB4481432C679679A782E89DA688ED0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582600627-28415-1-git-send-email-peng.fan@nxp.com>
 <1582600627-28415-2-git-send-email-peng.fan@nxp.com>
 <fcd868b0-2a8b-c13e-e773-3626a1cfda32@pengutronix.de>
In-Reply-To: <fcd868b0-2a8b-c13e-e773-3626a1cfda32@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 439b4d2f-e857-408a-9297-08d7b9c8aa4c
x-ms-traffictypediagnostic: AM0PR04MB6372:|AM0PR04MB6372:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6372D0012A3630E76FDC527C88ED0@AM0PR04MB6372.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0324C2C0E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(366004)(396003)(136003)(199004)(189003)(2906002)(86362001)(15650500001)(81166006)(6506007)(186003)(53546011)(26005)(66946007)(110136005)(66476007)(8676002)(966005)(81156014)(45080400002)(4326008)(8936002)(478600001)(54906003)(9686003)(66446008)(316002)(55016002)(71200400001)(33656002)(44832011)(52536014)(66556008)(7696005)(5660300002)(76116006)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6372;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mgfrEQXr+7vS6DPrutUVIAw2/sJKTQukwwNqdOyoyUqVG4bKmgy2Fn2tbkH+u1leZLic9TOTuLS9MBDbPvLKOw3JWfvjClb+0X0cSwHKMKXUxejZeUaKoSXKGe2UFHEVBcVFLQ0Tsgonav9zLRY4EUfH/cnUH/J6fgibRg6YFeV1dDd7GIdo1P6dnAyvPah4h9vk8vlQn1THlHa3wvThbr14yUTlX/3y3sR9cM3kUZKjjWwKfh3hOVqeCVzQQSuSC6bV5mFVV5Q7SJzUmFuieOpnHr6UCa882wJcj07Dywy98dGCCfOD4rhk7AUgtFn351JyjttrMgmNHbcMXsD9ggdlcrEmqGlk6zfyQMVNjbut7VxrbQ1lQacO232OkUZ6JWm89NSVye+jF6o4hZcnF6rOCVyqUQZKULAvULdPotVbAHoj6LMy7+7B7zdtj96X+1hGuhJNgHFABYP5JI55qZHl7p5EuLliXmLf88vSgIWVhkOldAOAaIzeGtjaVQ2QsQdNxlc6zFibGXXURm5eaw==
x-ms-exchange-antispam-messagedata: ZBbXGH6QrkcPrhfXu4/6m2qHG0W/JkwhqYjdTy/Fp9YaUk+YSp+RhpX1+PrMi3S+Cp9RJtZ6Li+P64Q/JfS+HxRB3uPKdKsua+/vC5TUqT4+6AKyvdtlPvAM3HD91ZfqZRSxW2remIkwN3gqbQuLzA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 439b4d2f-e857-408a-9297-08d7b9c8aa4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 07:59:39.6718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6U4EbRVEBYZ7diWPVoiVDBmNEKQ5mAeKJRuINahU0ErVxLhKmO0Ig9j2g+4Uk37CWwUmveQqr6dTNwdAhMOihw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6372
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_235945_571889_6CA5FB24 
X-CRM114-Status: GOOD (  29.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.77 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT2xla3NpaiwNCg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIFYyIDEvMl0gbWFpbGJveDogaW14
OiBzdXBwb3J0IFNDVSBjaGFubmVsIHR5cGUNCj4gDQo+IEhpLA0KPiANCj4gT24gMjUuMDIuMjAg
MDQ6MTcsIHBlbmcuZmFuQG54cC5jb20gd3JvdGU6DQo+ID4gRnJvbTogUGVuZyBGYW4gPHBlbmcu
ZmFuQG54cC5jb20+DQo+ID4NCj4gPiBQZXIgaS5NWDhRWFAgUmVmZXJlbmNlIG1hbm51YWwsIENo
YXB0ZXIgIjEyLjkuMi4zLjIgTWVzc2FnaW5nDQo+IEV4YW1wbGVzIiwNCj4gPiAgIFBhc3Npbmcg
c2hvcnQgbWVzc2FnZXM6IFRyYW5zbWl0IHJlZ2lzdGVyKHMpIGNhbiBiZSB1c2VkIHRvIHBhc3MN
Cj4gPiAgIHNob3J0IG1lc3NhZ2VzIGZyb20gb25lIHRvIGZvdXIgd29yZHMgaW4gbGVuZ3RoLiBG
b3IgZXhhbXBsZSwgd2hlbg0KPiA+ICAgYSBmb3VyLXdvcmQgbWVzc2FnZSBpcyBkZXNpcmVkLCBv
bmx5IG9uZSBvZiB0aGUgcmVnaXN0ZXJzIG5lZWRzIHRvDQo+ID4gICBoYXZlIGl0cyBjb3JyZXNw
b25kaW5nIGludGVycnVwdCBlbmFibGUgYml0IHNldCBhdCB0aGUgcmVjZWl2ZXIgc2lkZTsNCj4g
PiAgIHRoZSBtZXNzYWdl4oCZcyBmaXJzdCB0aHJlZSB3b3JkcyBhcmUgd3JpdHRlbiB0byB0aGUg
cmVnaXN0ZXJzIHdob3NlDQo+ID4gICBpbnRlcnJ1cHQgaXMgbWFza2VkLCBhbmQgdGhlIGZvdXJ0
aCB3b3JkIGlzIHdyaXR0ZW4gdG8gdGhlIG90aGVyDQo+ID4gICByZWdpc3RlciAod2hpY2ggdHJp
Z2dlcnMgYW4gaW50ZXJydXB0IGF0IHRoZSByZWNlaXZlciBzaWRlKS4NCj4gPg0KPiA+IGkuTVg4
LzhYIFNDVSBmaXJtd2FyZSBJUEMgaXMgYW4gaW1wbGVtZW50YXRpb24gb2YgcGFzc2luZyBzaG9y
dA0KPiA+IG1lc3NhZ2VzLiBCdXQgY3VycmVudCBpbXgtbWFpbGJveCBkcml2ZXIgb25seSBzdXBw
b3J0IG9uZSB3b3JkDQo+ID4gbWVzc2FnZSwgaS5NWDgvOFggbGludXggc2lkZSBmaXJtd2FyZSBo
YXMgdG8gcmVxdWVzdCBmb3VyIFRYIGFuZCBmb3VyDQo+ID4gUlggdG8gc3VwcG9ydCBJUEMgdG8g
U0NVIGZpcm13YXJlLiBUaGlzIGlzIGxvdyBlZmZpY2VudCBhbmQgbW9yZQ0KPiA+IGludGVycnVw
dHMgdHJpZ2dlcmVkIGNvbXBhcmVkIHdpdGggb25lIFRYIGFuZCBvbmUgUlguDQo+ID4NCj4gPiBU
byBtYWtlIFNDVSBjaGFubmVsIHR5cGUgd29yaywNCj4gPiAgICAtIHBhcnNlIHRoZSBzaXplIG9m
IG1zZy4NCj4gPiAgICAtIE9ubHkgZW5hYmxlIFRSMC9SUjAgaW50ZXJydXB0IGZvciB0cmFuc21p
dC9yZWNlaXZlIG1lc3NhZ2UuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBQZW5nIEZhbiA8cGVu
Zy5mYW5AbnhwLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJv
eC5jIHwgNDYNCj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLQ0K
PiA+ICAgMSBmaWxlIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+
ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMNCj4gPiBi
L2RyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jIGluZGV4IDJjZGNkYzVmMTExOS4uMGI0YTMz
MjU0MTE0DQo+ID4gMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94
LmMNCj4gPiArKysgYi9kcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYw0KPiA+IEBAIC00LDYg
KzQsNyBAQA0KPiA+ICAgICovDQo+ID4NCj4gPiAgICNpbmNsdWRlIDxsaW51eC9jbGsuaD4NCj4g
PiArI2luY2x1ZGUgPGxpbnV4L2Zpcm13YXJlL2lteC9pcGMuaD4NCj4gPiAgICNpbmNsdWRlIDxs
aW51eC9pbnRlcnJ1cHQuaD4NCj4gPiAgICNpbmNsdWRlIDxsaW51eC9pby5oPg0KPiA+ICAgI2lu
Y2x1ZGUgPGxpbnV4L2tlcm5lbC5oPg0KPiA+IEBAIC02NSw4ICs2NiwxNCBAQCBzdHJ1Y3QgaW14
X211X3ByaXYgew0KPiA+ICAgCWludAkJCWlycTsNCj4gPg0KPiA+ICAgCWJvb2wJCQlzaWRlX2I7
DQo+ID4gKwlib29sCQkJc2N1Ow0KPiA+ICAgfTsNCj4gPg0KPiA+ICtzdHJ1Y3QgaW14X3NjX3Jw
Y19tc2dfbWF4IHsNCj4gPiArCXN0cnVjdCBpbXhfc2NfcnBjX21zZyBoZHI7DQo+ID4gKwl1MzIg
ZGF0YVs3XTsNCj4gPiArfSBfX3BhY2tlZCBfX2FsaWduZWQoNCk7Ow0KPiA+ICsNCj4gPiAgIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgaW14X211X2RjZmcgaW14X211X2NmZ19pbXg2c3ggPSB7DQo+ID4g
ICAJLnhUUgk9IHsweDAsIDB4NCwgMHg4LCAweGN9LA0KPiA+ICAgCS54UlIJPSB7MHgxMCwgMHgx
NCwgMHgxOCwgMHgxY30sDQo+ID4gQEAgLTEyMyw3ICsxMzAsMTAgQEAgc3RhdGljIGlycXJldHVy
bl90IGlteF9tdV9pc3IoaW50IGlycSwgdm9pZCAqcCkNCj4gPiAgIAlzdHJ1Y3QgbWJveF9jaGFu
ICpjaGFuID0gcDsNCj4gPiAgIAlzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYgPSB0b19pbXhfbXVf
cHJpdihjaGFuLT5tYm94KTsNCj4gPiAgIAlzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCA9IGNo
YW4tPmNvbl9wcml2Ow0KPiA+ICsJc3RydWN0IGlteF9zY19ycGNfbXNnX21heCBtc2c7DQo+ID4g
Kwl1MzIgKnBfbXNnID0gKHUzMiAqKSZtc2c7DQo+ID4gICAJdTMyIHZhbCwgY3RybCwgZGF0Ow0K
PiA+ICsJaW50IGk7DQo+ID4NCj4gPiAgIAljdHJsID0gaW14X211X3JlYWQocHJpdiwgcHJpdi0+
ZGNmZy0+eENSKTsNCj4gPiAgIAl2YWwgPSBpbXhfbXVfcmVhZChwcml2LCBwcml2LT5kY2ZnLT54
U1IpOyBAQCAtMTUyLDggKzE2MiwxOSBAQA0KPiA+IHN0YXRpYyBpcnFyZXR1cm5fdCBpbXhfbXVf
aXNyKGludCBpcnEsIHZvaWQgKnApDQo+ID4gICAJCWlteF9tdV94Y3Jfcm13KHByaXYsIDAsIElN
WF9NVV94Q1JfVElFbihjcC0+aWR4KSk7DQo+ID4gICAJCW1ib3hfY2hhbl90eGRvbmUoY2hhbiwg
MCk7DQo+ID4gICAJfSBlbHNlIGlmICh2YWwgPT0gSU1YX01VX3hTUl9SRm4oY3AtPmlkeCkpIHsN
Cj4gPiAtCQlkYXQgPSBpbXhfbXVfcmVhZChwcml2LCBwcml2LT5kY2ZnLT54UlJbY3AtPmlkeF0p
Ow0KPiA+IC0JCW1ib3hfY2hhbl9yZWNlaXZlZF9kYXRhKGNoYW4sICh2b2lkICopJmRhdCk7DQo+
ID4gKwkJaWYgKCFwcml2LT5zY3UpIHsNCj4gPiArCQkJZGF0ID0gaW14X211X3JlYWQocHJpdiwg
cHJpdi0+ZGNmZy0+eFJSW2NwLT5pZHhdKTsNCj4gPiArCQkJbWJveF9jaGFuX3JlY2VpdmVkX2Rh
dGEoY2hhbiwgKHZvaWQgKikmZGF0KTsNCj4gPiArCQl9IGVsc2Ugew0KPiA+ICsJCQlpbXhfbXVf
eGNyX3Jtdyhwcml2LCAwLCBJTVhfTVVfeENSX1JJRW4oMCkpOw0KPiA+ICsJCQkqcF9tc2crKyA9
IGlteF9tdV9yZWFkKHByaXYsIHByaXYtPmRjZmctPnhSUlswXSk7DQo+ID4gKwkJCWZvciAoaSA9
IDE7IGkgPCBtc2cuaGRyLnNpemU7IGkrKykgew0KPiA+ICsJCQkJKnBfbXNnKysgPSBpbXhfbXVf
cmVhZChwcml2LA0KPiA+ICsJCQkJCQkgICAgICAgcHJpdi0+ZGNmZy0+eFJSW2kgJSA0XSk7DQo+
ID4gKwkJCX0NCj4gPiArCQkJaW14X211X3hjcl9ybXcocHJpdiwgSU1YX01VX3hDUl9SSUVuKDAp
LCAwKTsNCj4gPiArCQkJbWJveF9jaGFuX3JlY2VpdmVkX2RhdGEoY2hhbiwgKHZvaWQgKikmbXNn
KTsNCj4gPiArCQl9DQo+ID4gICAJfSBlbHNlIGlmICh2YWwgPT0gSU1YX01VX3hTUl9HSVBuKGNw
LT5pZHgpKSB7DQo+ID4gICAJCWlteF9tdV93cml0ZShwcml2LCBJTVhfTVVfeFNSX0dJUG4oY3At
PmlkeCksDQo+IHByaXYtPmRjZmctPnhTUik7DQo+ID4gICAJCW1ib3hfY2hhbl9yZWNlaXZlZF9k
YXRhKGNoYW4sIE5VTEwpOyBAQCAtMTY5LDExICsxOTAsMjANCj4gQEAgc3RhdGljDQo+ID4gaW50
IGlteF9tdV9zZW5kX2RhdGEoc3RydWN0IG1ib3hfY2hhbiAqY2hhbiwgdm9pZCAqZGF0YSkNCj4g
PiAgIHsNCj4gPiAgIAlzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYgPSB0b19pbXhfbXVfcHJpdihj
aGFuLT5tYm94KTsNCj4gPiAgIAlzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCA9IGNoYW4tPmNv
bl9wcml2Ow0KPiA+ICsJc3RydWN0IGlteF9zY19ycGNfbXNnX21heCAqbXNnID0gZGF0YTsNCj4g
PiAgIAl1MzIgKmFyZyA9IGRhdGE7DQo+ID4gKwlpbnQgaTsNCj4gPg0KPiA+ICAgCXN3aXRjaCAo
Y3AtPnR5cGUpIHsNCj4gPiAgIAljYXNlIElNWF9NVV9UWVBFX1RYOg0KPiA+IC0JCWlteF9tdV93
cml0ZShwcml2LCAqYXJnLCBwcml2LT5kY2ZnLT54VFJbY3AtPmlkeF0pOw0KPiA+ICsJCWlmIChw
cml2LT5zY3UpIHsNCj4gPiArCQkJZm9yIChpID0gMDsgaSA8IG1zZy0+aGRyLnNpemU7IGkrKykg
ew0KPiA+ICsJCQkJaW14X211X3dyaXRlKHByaXYsICphcmcrKywNCj4gPiArCQkJCQkgICAgIHBy
aXYtPmRjZmctPnhUUltpICUgNF0pOw0KPiA+ICsJCQl9DQo+ID4gKwkJfSBlbHNlIHsNCj4gPiAr
CQkJaW14X211X3dyaXRlKHByaXYsICphcmcsIHByaXYtPmRjZmctPnhUUltjcC0+aWR4XSk7DQo+
ID4gKwkJfQ0KPiA+ICAgCQlpbXhfbXVfeGNyX3Jtdyhwcml2LCBJTVhfTVVfeENSX1RJRW4oY3At
PmlkeCksIDApOw0KPiA+ICAgCQlicmVhazsNCj4gPiAgIAljYXNlIElNWF9NVV9UWVBFX1RYREI6
DQo+ID4gQEAgLTI1OSw2ICsyODksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1ib3hfY2hhbl9v
cHMgaW14X211X29wcyA9IHsNCj4gPiAgIHN0YXRpYyBzdHJ1Y3QgbWJveF9jaGFuICogaW14X211
X3hsYXRlKHN0cnVjdCBtYm94X2NvbnRyb2xsZXIgKm1ib3gsDQo+ID4gICAJCQkJICAgICAgIGNv
bnN0IHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKnNwKQ0KPiA+ICAgew0KPiA+ICsJc3RydWN0IGlt
eF9tdV9wcml2ICpwcml2ID0gdG9faW14X211X3ByaXYobWJveCk7DQo+ID4gICAJdTMyIHR5cGUs
IGlkeCwgY2hhbjsNCj4gPg0KPiA+ICAgCWlmIChzcC0+YXJnc19jb3VudCAhPSAyKSB7DQo+ID4g
QEAgLTI3MCw3ICszMDEsOSBAQCBzdGF0aWMgc3RydWN0IG1ib3hfY2hhbiAqIGlteF9tdV94bGF0
ZShzdHJ1Y3QNCj4gbWJveF9jb250cm9sbGVyICptYm94LA0KPiA+ICAgCWlkeCA9IHNwLT5hcmdz
WzFdOyAvKiBpbmRleCAqLw0KPiA+ICAgCWNoYW4gPSB0eXBlICogNCArIGlkeDsNCj4gPg0KPiA+
IC0JaWYgKGNoYW4gPj0gbWJveC0+bnVtX2NoYW5zKSB7DQo+ID4gKwkvKiBGb3IgVFgvUlggU0NV
LCBvbmx5IG9uZSBjaGFubmVsIHN1cHBvcnRlZCAqLw0KPiA+ICsJaWYgKChjaGFuID49IG1ib3gt
Pm51bV9jaGFucykgfHwNCj4gPiArCSAgICAocHJpdi0+c2N1ICYmIHR5cGUgPCAxICYmIGlkeCA+
PSAxKSkgew0KPiA+ICAgCQlkZXZfZXJyKG1ib3gtPmRldiwgIk5vdCBzdXBwb3J0ZWQgY2hhbm5l
bCBudW1iZXI6ICVkLg0KPiAodHlwZTogJWQsIGlkeDogJWQpXG4iLCBjaGFuLCB0eXBlLCBpZHgp
Ow0KPiA+ICAgCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCj4gPiAgIAl9DQo+ID4gQEAgLTM0
MSw2ICszNzQsMTEgQEAgc3RhdGljIGludCBpbXhfbXVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZQ0KPiAqcGRldikNCj4gPiAgIAl9DQo+ID4NCj4gPiAgIAlwcml2LT5zaWRlX2IgPSBvZl9w
cm9wZXJ0eV9yZWFkX2Jvb2wobnAsICJmc2wsbXUtc2lkZS1iIik7DQo+ID4gKwlucCA9IG9mX2Zp
bmRfY29tcGF0aWJsZV9ub2RlKE5VTEwsIE5VTEwsICJmc2wsaW14LXNjdSIpOw0KPiANCj4gVGhp
cyB3aWxsIGNvbmZpZ3VyZSBldmVyeSBNVSBvbiB0aGUgU29DIGFzIFNDVSwgZXZlbiBpdCBpcyBu
b3QgY29tbXVuaWNhdGluZw0KPiB3aXRoIGl0Lg0KPiANCj4gPiArCWlmIChucCkgew0KPiA+ICsJ
CXByaXYtPnNjdSA9IHRydWU7DQo+ID4gKwkJb2Zfbm9kZV9wdXQobnApOw0KPiA+ICsJfQ0KPiA+
DQo+IA0KPiBQbGVhc2UgdGFrZSBhIGxvb2sgYXQgZHJpdmVycy9yZW1vdGVwcm9jL2lteF9ycHJv
Yy5jIGVzcGVjaWFsbHkgdGhlIHVzZSBvZg0KPiBzdHJ1Y3QgaW14X3Jwcm9jX2RjZmcuDQo+IElu
dHJvZHVjZSBzaW1pYWxyIHN0cnVjdCBpbiB0aGUgaW14LW1haWxib3guYw0KDQpvaywgSSdsbCBp
bnRyb2R1Y2Ugc29tZXRoaW5nIGxpa2UgdGhhdC4NCg0KPiANCj4gSXQgd2lsbCBiZSBzb21lIHRo
aW5nIGxpa2U6DQo+IHN0cnVjdCBpbXhfbXVfZGNmZyB7DQo+IAl1bnNpZ25lZCBpbnQgY2hhbnM7
IC8qIG51bWJlciBvZiBzdXBwb3J0ZWQgY2hhbm5lbHMgKi8NCj4gCWludCAoKnR4KShzdHJ1Y3Qg
aW14X211X3ByaXYgKnByaXYsIHN0cnVjdCBpbXhfbXVfY29uX3ByaXYgKmNwKTsNCj4gCWludCAo
KnJ4KShzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsIHN0cnVjdCBpbXhfbXVfY29uX3ByaXYgKmNw
KTsgfQ0KPiANCj4gRGVmaW5lIGZ1bmN0aW9ucyBmb3IgZ2VuZXJpYyB0eC9yeC4gQW5kIGZvciBT
Q1Ugc3BlY2lmaWMgdHgvcnguIFBsZWFzZSwgYWRkDQo+IHNhbml0eSBjaGVjayBpbiB0byBTQ1Ug
c3BlY2lmaWMgZnVuY3Rpb25zLiBJbiBjdXJyZW50IGltcGxlbWVudGF0aW9uIGFuIGVycm9yDQo+
IG9uIFNDVSBzaWRlIHdpbGwgY291c2Ugc3RhY2sgY29ycnVwdGlvbiBvbiBMaW51eCBzaWRlLg0K
DQpXZSBleHBlY3QgU0NVIG5vdCBjcmFzaCBvciBoYXZlIGVycm9yIGJlaGF2aW9yLiBBbnl3YXkg
SSdsbCBhZGQgY2hlY2sgaW4gTGludXgNCnNpZGUuDQoNCj4gDQo+IFVzZSBjb21wYXRpYmxlIHN0
cmluZyAoc29tZSB0aGluZyBsaWtlIGZzbCxpbXg4LW11LXNjdSkgdG8gZGV0ZWN0IHByb3Blcg0K
PiBtZXRyaWNzIG9mIG5ldyBkZXZpY2UuDQoNCm9rLiBUaGFua3MgZm9yIHlvdXIgc3VnZ2VzdGlv
bnMuDQoNClRoYW5rcywNClBlbmcuDQoNCj4gDQo+IEtpbmQgcmVnYXJkcywNCj4gT2xla3NpaiBS
ZW1wZWwNCj4gDQo+IC0tDQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAg
ICAgICB8DQo+IHwNCj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAg
IHwNCj4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJs
PWh0dHAlM0ElMkYlMkZ3d3cucA0KPiBlbmd1dHJvbml4LmRlJTJGJmFtcDtkYXRhPTAyJTdDMDEl
N0NwZW5nLmZhbiU0MG54cC5jb20lN0M5NmU0YjUNCj4gZmE5MzlkNDc5MjljNDIwOGQ3YjliYzI2
YjQlN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYzNSU3DQo+IEMwJTdDMCU3QzYzNzE4
MjA5MDA2NzMxMzQ4MSZhbXA7c2RhdGE9eSUyQkk3ajA1Q3hzejJlNjdhTmlXRDMNCj4gVGczJTJG
Q1kxSk5JSUJJZkdtNGoxYkI0JTNEJmFtcDtyZXNlcnZlZD0wICB8DQo+IFBlaW5lciBTdHIuIDYt
OCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMA0K
PiB8DQo+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDoN
Cj4gKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
