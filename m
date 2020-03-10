Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D7917F052
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 07:01:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKh4Y+oAv5Eol2w0yTJfx0UNmMD21Bocf3OXTBrlCCQ=; b=jEMv+yEqANz+cJ
	weWnDGcGRvpIkxVbkvT3w0zLcAjFYMnTWTUg5hr0cUGq/TFnHh20o4rclMYVIDPChuq2m/zb0C6Bh
	u75FVJBWkTP85C3JhPe87KHyeaEUgRv/3XVVIv5pdxRQPRB+j5bm/rfrpH2gprQtZ5OeaVNqWvW4H
	l0jnQLuN8agnQntOM/NT+gzJ6l8i7nuFrasE6Cf7usJVHZSfANxcAZJ2oY/kp4Ze03J/UWKmNXkaV
	AosybhJkKrtGTToIQywq9pPP1TO0WQ9BcQO32Tzv1Hvs9JY2WVKrLzHCIUlPASmkGolmB9Tji+g7s
	BbmO+PH1BuSXcaOSWIPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBXx4-0006Kl-3k; Tue, 10 Mar 2020 06:01:14 +0000
Received: from mail-eopbgr140058.outbound.protection.outlook.com
 ([40.107.14.58] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBXwv-0006KB-Eo
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 06:01:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3D9Opg6ZxDpQq8+JU3Q/pa2LquxV/iFHJlEARneDPsBMUWe6DvttT4VvWsvn6hxK/IsodzdsY5XWEJX5YqMuue2oM1iNmmo7280jCcmNtli16Uxi1qAWu9kYuNiY2S6tCCt8fsGhfmRu7Fg9Ux2jwzUYxcXXqCUGbpmhAGLqxkf/rSo+cX1n/NcbICX1y7yBiHKEOzaIsn5j4643wCHj3+tYJMDxbxSWqDMPxAAiyzRA/fcqdsIFBlBy82YqNfJTl1XkRD9M5NWZeioHWLaLpq/dmFqLctpTcQPzHuVvZ8QMhjYGQiSnEAgoz7jD4ZDUi3BIKukkucT85Kyl6e41A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zYgUH84EV/H1jZfAkXTTP0wcJi6u/aAHuDuw67RUFaU=;
 b=IMduxB2ahp+IB0n5CeOXEJWvV6DeFWx0qE+cgEKFNpecLdzhxrXdNXs9U7pVXXbbLXAEUyD9TK0BwXJmo3xw8abtEnibB1fCdm0g1ATp1MFDQlcq5PqStfcPk4luIeve0xcwLUKLzdSZF3npB7HE1tbyvEqLWoA6U1sn53tirn55+3OU2l8Tvtvd6xHOMxX7nIevontTHgCnxTLw0FveasBJYWhPw51hB58EqLLGhuAgja99SvWnWwb189aEQxJi0MwbUdYb9OTUt8tR74UgHOUBEZ2Nz2KWjbJoiaxa21cPvg/w1aHtNuZ0XDmut1T+4JBGtxZrsSyts0iZzkG7Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zYgUH84EV/H1jZfAkXTTP0wcJi6u/aAHuDuw67RUFaU=;
 b=PMi5wCUeFy4E2i7IEZEMRPVi/kbPXLrRUaLH1gszkgZwtM6cyirAjKTAZjXnbGz+XPzGwetMGeI6kXKeUQ60ktmTzsg0+xdFEhUGDJMdRD+d3DlM3vzEl3/JCnx8aHJaRaf4TcSQVrGcwXKFy9GcZTfb1CZBfFTujxLOBciPI3k=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5241.eurprd04.prod.outlook.com (20.176.235.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 06:01:00 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::e449:ea49:c382:9788]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::e449:ea49:c382:9788%5]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 06:01:00 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 4/7] clk: imx: imx8qxp: Enable SCU and LPCG clocks for I2C
 in CM40 SS
Thread-Topic: [PATCH 4/7] clk: imx: imx8qxp: Enable SCU and LPCG clocks for
 I2C in CM40 SS
Thread-Index: AQHV5UISyiPjRNDMvU+8VXedgRd3jahBUhWAgAAkkCA=
Date: Tue, 10 Mar 2020 06:01:00 +0000
Message-ID: <DB7PR04MB4618D6977A04CFC892B48CA3E6FF0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
 <1581909561-12058-5-git-send-email-qiangqing.zhang@nxp.com>
 <20200310034506.GC15729@dragon>
In-Reply-To: <20200310034506.GC15729@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [222.93.243.135]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f45e9b2b-7fa8-49d2-369d-08d7c4b868e3
x-ms-traffictypediagnostic: DB7PR04MB5241:|DB7PR04MB5241:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5241549356C20AF1497E5E71E6FF0@DB7PR04MB5241.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-forefront-prvs: 033857D0BD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(396003)(346002)(366004)(199004)(189003)(478600001)(86362001)(81156014)(66556008)(81166006)(54906003)(9686003)(8936002)(8676002)(66446008)(66476007)(76116006)(55016002)(66946007)(7416002)(316002)(64756008)(6916009)(52536014)(2906002)(186003)(7696005)(33656002)(5660300002)(26005)(4326008)(6506007)(71200400001)(53546011)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5241;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5kFsXP/iJWdhALARi0ByP4XVhmr8g+VpCNQV2gXgmY5hT86DwNd5WNpSv2ILzmj8ZqfBjz6hoUvqm1wu56SH06ASNhA0uBd8w5g2mXf2tH8re6TSiz+NdvShm0/ebFYLBX6UoteaWIOQzCfIBAMNhNxcOyyiAuAuc/RI3Q5LEk0iYEIL+izW1vF/ajBdUdbH/QGm+IojzDm7q/qfxGxhVLOk6GWc1dL5WnaY6iYAW7wvve1wEMghFLKyfMHRiVK5ojipr6wtMsRo+hvC96AizAKhpTPerQDzkyZcrhZ0wBOb7+sZ8kZV1T9UeciIMX+EDT4YLaROVDaG7EKipYievGZrpBxyXiD1DND1G4bYUb/2MeeyQREk55tY+gNq8svZH28H9lmXNCxIFi3yGLsRpeqP8IJLmLtwiGKRT1xe7tJrPkBpsUIkEBHDNL/3kuwxIYSyzBXda47wmUS8I4NUNFqXFKb66+HQct1YiE2rGkyhs1qwDPsY8vVSeM8Ln96G
x-ms-exchange-antispam-messagedata: u1ZMbcFHaf0zhTGoahtC1zjCmXdX8j37/vWtHPsnjXQ4GT22NhzoT9tgBl++uZlkPsLlddkbohY+AGFBPCwzNOBe2x8sYcqRxFj3eCu6h2m9xnbwqAjQpg+nrJYcONdL1zpcWHQkpyG7+5bTj2iI+w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f45e9b2b-7fa8-49d2-369d-08d7c4b868e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2020 06:01:00.6933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LNyiyk43tKzCvUOyzwGtgLbCh1X8ohHUEUciQDlK85pCSeug7ZO0tjnMXNjDgU7FX94adIdIkMmKyX83lTNOeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5241
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_230105_502627_2AAB904E 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFNoYXduIEd1byA8c2hhd25n
dW9Aa2VybmVsLm9yZz4NCj4gU2VudDogMjAyMMTqM9TCMTDI1SAxMTo0NQ0KPiBUbzogSm9ha2lt
IFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gQ2M6IG10dXJxdWV0dGVAYmF5bGli
cmUuY29tOyBzYm95ZEBrZXJuZWwub3JnOyByb2JoK2R0QGtlcm5lbC5vcmc7DQo+IG1hcmsucnV0
bGFuZEBhcm0uY29tOyBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOyBrZXJuZWxAcGVuZ3V0cm9uaXgu
ZGU7DQo+IGZlc3RldmFtQGdtYWlsLmNvbTsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNv
bT47IEFuc29uIEh1YW5nDQo+IDxhbnNvbi5odWFuZ0BueHAuY29tPjsgTGVvbmFyZCBDcmVzdGV6
IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT47DQo+IERhbmllbCBCYWx1dGEgPGRhbmllbC5iYWx1
dGFAbnhwLmNvbT47IEFpc2hlbmcgRG9uZw0KPiA8YWlzaGVuZy5kb25nQG54cC5jb20+OyBQZW5n
IEZhbiA8cGVuZy5mYW5AbnhwLmNvbT47IEFuZHkgRHVhbg0KPiA8ZnVnYW5nLmR1YW5AbnhwLmNv
bT47IGxpbnV4LWNsa0B2Z2VyLmtlcm5lbC5vcmc7DQo+IGRldmljZXRyZWVAdmdlci5rZXJuZWwu
b3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCA0LzddIGNsazogaW14OiBp
bXg4cXhwOiBFbmFibGUgU0NVIGFuZCBMUENHIGNsb2NrcyBmb3IgSTJDDQo+IGluIENNNDAgU1MN
Cj4gDQo+IE9uIE1vbiwgRmViIDE3LCAyMDIwIGF0IDExOjE5OjE4QU0gKzA4MDAsIEpvYWtpbSBa
aGFuZyB3cm90ZToNCj4gPiBFbmFibGUgU0NVIGFuZCBMUENHIGNsb2NrcyBmb3IgSTJDIGluIENN
NDAgU1MuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56
aGFuZ0BueHAuY29tPg0KPiANCj4gU28geW91IGRlY2lkZWQgdG8gc3RvcCB3YWl0aW5nIGZvciBB
aXNoZW5nJ3MgbmV3IGlteDhxeHAgY2xvY2sgZHJpdmVyPw0KSGkgU2hhd24sDQoNClBsZWFzZSBp
Z25vcmUgYWxsIGNsb2NrIGFuZCBkdHMgcGF0Y2hlcywgSSB3aWxsIHNlbmQgb3V0IGFnYWluIGFm
dGVyIEFpc2hlbmcncyBuZXcgaW14OHF4cCBjbG9jayBkcml2ZXIuIFRoYW5rcy4NCg0KQmVzdCBS
ZWdhcmRzLA0KSm9ha2ltIFpoYW5nDQo+IFNoYXduDQo+IA0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJz
L2Nsay9pbXgvY2xrLWlteDhxeHAtbHBjZy5jIHwgMTIgKysrKysrKysrKysrDQo+ID4gZHJpdmVy
cy9jbGsvaW14L2Nsay1pbXg4cXhwLWxwY2cuaCB8ICAzICsrKw0KPiA+ICBkcml2ZXJzL2Nsay9p
bXgvY2xrLWlteDhxeHAuYyAgICAgIHwgIDQgKysrKw0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDE5
IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9pbXgvY2xr
LWlteDhxeHAtbHBjZy5jDQo+ID4gYi9kcml2ZXJzL2Nsay9pbXgvY2xrLWlteDhxeHAtbHBjZy5j
DQo+ID4gaW5kZXggMDRjOGVlMzVlMTRjLi43OTU5MDllY2ZiYTYgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9jbGsvaW14L2Nsay1pbXg4cXhwLWxwY2cuYw0KPiA+ICsrKyBiL2RyaXZlcnMvY2xr
L2lteC9jbGstaW14OHF4cC1scGNnLmMNCj4gPiBAQCAtMTUxLDYgKzE1MSwxNyBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGlteDhxeHBfbHBjZ19kYXRhDQo+IGlteDhxeHBfbHBjZ19sc2lvW10gPSB7
DQo+ID4gIAl7IElNWF9MU0lPX0xQQ0dfUFdNNl9JUEdfTVNUUl9DTEssICJwd202X2xwY2dfaXBn
X21zdHJfY2xrIiwNCj4gPiAicHdtNl9jbGsiLCAwLCBMU0lPX1BXTV82X0xQQ0csIDI0LCAwLCB9
LCAgfTsNCj4gPg0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGlteDhxeHBfbHBjZ19kYXRhIGlt
eDhxeHBfbHBjZ19jbTQwW10gPSB7DQo+ID4gKwl7IElNWF9DTTQwX0xQQ0dfSTJDX0NMSywgImNt
NDBfbHBjZ19pMmNfY2xrIiwgImNtNDBfaTJjX2NsayIsIDAsDQo+IENNNDBfSTJDX0xQQ0csIDAs
IDAsIH0sDQo+ID4gKwl7IElNWF9DTTQwX0xQQ0dfSTJDX0lQR19DTEssICJjbTQwX2xwY2dfaTJj
X2lwZ19jbGsiLA0KPiA+ICsiY200MF9pcGdfY2xrX3Jvb3QiLCAwLCBDTTQwX0kyQ19MUENHLCAx
NiwgMCwgfSwgfTsNCj4gPiArDQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW14OHF4cF9zc19s
cGNnIGlteDhxeHBfc3NfY200MCA9IHsNCj4gPiArCS5scGNnID0gaW14OHF4cF9scGNnX2NtNDAs
DQo+ID4gKwkubnVtX2xwY2cgPSBBUlJBWV9TSVpFKGlteDhxeHBfbHBjZ19jbTQwKSwNCj4gPiAr
CS5udW1fbWF4ID0gSU1YX0NNNDBfTFBDR19DTEtfRU5ELA0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBpbXg4cXhwX3NzX2xwY2cgaW14OHF4cF9zc19sc2lvID0gew0K
PiA+ICAJLmxwY2cgPSBpbXg4cXhwX2xwY2dfbHNpbywNCj4gPiAgCS5udW1fbHBjZyA9IEFSUkFZ
X1NJWkUoaW14OHF4cF9scGNnX2xzaW8pLCBAQCAtMjE5LDYgKzIzMCw3IEBADQo+ID4gc3RhdGlj
IGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgaW14OHF4cF9scGNnX21hdGNoW10gPSB7DQo+ID4g
IAl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4cXhwLWxwY2ctYWRtYSIsICZpbXg4cXhwX3NzX2Fk
bWEsIH0sDQo+ID4gIAl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4cXhwLWxwY2ctY29ubiIsICZp
bXg4cXhwX3NzX2Nvbm4sIH0sDQo+ID4gIAl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4cXhwLWxw
Y2ctbHNpbyIsICZpbXg4cXhwX3NzX2xzaW8sIH0sDQo+ID4gKwl7IC5jb21wYXRpYmxlID0gImZz
bCxpbXg4cXhwLWxwY2ctY200MCIsICZpbXg4cXhwX3NzX2NtNDAsIH0sDQo+ID4gIAl7IC8qIHNl
bnRpbmVsICovIH0NCj4gPiAgfTsNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9p
bXgvY2xrLWlteDhxeHAtbHBjZy5oDQo+ID4gYi9kcml2ZXJzL2Nsay9pbXgvY2xrLWlteDhxeHAt
bHBjZy5oDQo+ID4gaW5kZXggMmEzN2NlNTdjNTAwLi4yOGNhNzMwZGQxMzUgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9jbGsvaW14L2Nsay1pbXg4cXhwLWxwY2cuaA0KPiA+ICsrKyBiL2RyaXZl
cnMvY2xrL2lteC9jbGstaW14OHF4cC1scGNnLmgNCj4gPiBAQCAtOTksNCArOTksNyBAQA0KPiA+
ICAjZGVmaW5lIEFETUFfRkxFWENBTl8xX0xQQ0cJCTB4MWNlMDAwMA0KPiA+ICAjZGVmaW5lIEFE
TUFfRkxFWENBTl8yX0xQQ0cJCTB4MWNmMDAwMA0KPiA+DQo+ID4gKy8qIENNNDAgU1MgKi8NCj4g
PiArI2RlZmluZSBDTTQwX0kyQ19MUENHCQkJMHg2MDAwMA0KPiA+ICsNCj4gPiAgI2VuZGlmIC8q
IF9JTVg4UVhQX0xQQ0dfSCAqLw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9pbXgvY2xr
LWlteDhxeHAuYw0KPiA+IGIvZHJpdmVycy9jbGsvaW14L2Nsay1pbXg4cXhwLmMgaW5kZXggNWUy
OTAzZWZjNDg4Li5kMDUxMDczZmYwNDINCj4gPiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2Ns
ay9pbXgvY2xrLWlteDhxeHAuYw0KPiA+ICsrKyBiL2RyaXZlcnMvY2xrL2lteC9jbGstaW14OHF4
cC5jDQo+ID4gQEAgLTUzLDYgKzUzLDcgQEAgc3RhdGljIGludCBpbXg4cXhwX2Nsa19wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlDQo+ICpwZGV2KQ0KPiA+ICAJY2xrc1tJTVhfSFNJT19QRVJf
Q0xLXQkJPSBjbGtfaHdfcmVnaXN0ZXJfZml4ZWRfcmF0ZShOVUxMLA0KPiAiaHNpb19wZXJfY2xr
X3Jvb3QiLCBOVUxMLCAwLCAxMzMzMzMzMzMpOw0KPiA+ICAJY2xrc1tJTVhfTFNJT19NRU1fQ0xL
XQkJPSBjbGtfaHdfcmVnaXN0ZXJfZml4ZWRfcmF0ZShOVUxMLA0KPiAibHNpb19tZW1fY2xrX3Jv
b3QiLCBOVUxMLCAwLCAyMDAwMDAwMDApOw0KPiA+ICAJY2xrc1tJTVhfTFNJT19CVVNfQ0xLXQkJ
PSBjbGtfaHdfcmVnaXN0ZXJfZml4ZWRfcmF0ZShOVUxMLA0KPiAibHNpb19idXNfY2xrX3Jvb3Qi
LCBOVUxMLCAwLCAxMDAwMDAwMDApOw0KPiA+ICsJY2xrc1tJTVhfQ000MF9JUEdfQ0xLXQkJPSBj
bGtfaHdfcmVnaXN0ZXJfZml4ZWRfcmF0ZShOVUxMLA0KPiAiY200MF9pcGdfY2xrX3Jvb3QiLCBO
VUxMLCAwLCAxMzIwMDAwMDApOw0KPiA+DQo+ID4gIAkvKiBBUk0gY29yZSAqLw0KPiA+ICAJY2xr
c1tJTVhfQTM1X0NMS10JCT0gaW14X2Nsa19zY3UoImEzNV9jbGsiLCBJTVhfU0NfUl9BMzUsDQo+
IElNWF9TQ19QTV9DTEtfQ1BVKTsNCj4gPiBAQCAtMTI4LDYgKzEyOSw5IEBAIHN0YXRpYyBpbnQg
aW14OHF4cF9jbGtfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZQ0KPiAqcGRldikNCj4gPiAg
CWNsa3NbSU1YX0dQVTBfQ09SRV9DTEtdCQk9IGlteF9jbGtfc2N1KCJncHVfY29yZTBfY2xrIiwN
Cj4gSU1YX1NDX1JfR1BVXzBfUElEMCwgSU1YX1NDX1BNX0NMS19QRVIpOw0KPiA+ICAJY2xrc1tJ
TVhfR1BVMF9TSEFERVJfQ0xLXQk9IGlteF9jbGtfc2N1KCJncHVfc2hhZGVyMF9jbGsiLA0KPiBJ
TVhfU0NfUl9HUFVfMF9QSUQwLCBJTVhfU0NfUE1fQ0xLX01JU0MpOw0KPiA+DQo+ID4gKwkvKiBD
TTQwIFNTICovDQo+ID4gKwljbGtzW0lNWF9DTTQwX0kyQ19DTEtdCQk9IGlteF9jbGtfc2N1KCJj
bTQwX2kyY19jbGsiLA0KPiBJTVhfU0NfUl9NNF8wX0kyQywgSU1YX1NDX1BNX0NMS19QRVIpOw0K
PiA+ICsNCj4gPiAgCWZvciAoaSA9IDA7IGkgPCBjbGtfZGF0YS0+bnVtOyBpKyspIHsNCj4gPiAg
CQlpZiAoSVNfRVJSKGNsa3NbaV0pKQ0KPiA+ICAJCQlwcl93YXJuKCJpLk1YIGNsayAldTogcmVn
aXN0ZXIgZmFpbGVkIHdpdGggJWxkXG4iLA0KPiA+IC0tDQo+ID4gMi4xNy4xDQo+ID4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
