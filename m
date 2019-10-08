Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDCACF17C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 06:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lm/da8iQGXVYIVX2swNbZ2AyGrupTnQl1J3jIlKPbwY=; b=tTYk0snsIr38yE
	b9p/4mT0zzLXS+XRzCtWt0KqIIthPhyUk8tlYFiMpTjDwYeKuovpKYZ0Z3uKcA9Sc6xyPcEPz+Kqg
	yQr2/FTLPk4tA/iINb7qQuHszLyrBJrmEeVxtt1cBMtrtN2oMc2+wQ4QRwDs9ZC4y58khNfXl7T5X
	bUS55doBn+xESl0zEeWwGPQBhzp+ow5CPAbk8UUspDz0g0AqjTbbDAsKTE4y59NYJzoUcCMlaFs96
	aqUnqP9m6ND6xGv6CeijsGwuJwfVUCmn9cSAUoTb/7EG+JFyOj/mGyVf/0WeVZ92kSTOxSMnpgIor
	onqtzz2XC7+37B7OfgKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHgoA-00045K-JU; Tue, 08 Oct 2019 04:09:10 +0000
Received: from mail-he1eur02on061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::61f]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHgo2-00044f-RG
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 04:09:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gPb3w/jfBwMNolNwHyhHLKLfeHqApYPnLosOw0vKaDO7pCA/iMf+seiCZ96l31p0808tvRgKaXZp0xRgj49jVv9F0tQfThg4yPQ8GmzQvJ5Gut/wQz5jtX9+FNG+DyMXZwU18gUEixloAg7dAvWw+aeU138EokXlnOZeN9yYwDPpn/X9u8VjrTFeGKG3XwkfN73/p+inhM7TWUE7zDxvpPzRUH41dOK8AP1uFxcfRHwjMc3fuG/EEDsX5oLEJn+T3BwRTkpW78scdXNnzR8q8cwXL4/UMhNALscBjZfvEyrcJjx0aszpU0WhoX+hKYsx80s9X7U0pknETMW4sFqbIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tRlO/MpKpETKRhfPJhYvFYba7VeCYZXtBFD9c+KNwX8=;
 b=hxx8fe9cknItwDQgcI+NiOwjulNM19Z1tqK+juyjdzXndxwXNzS9kc02oryBFGGQdekg0nkKodg4etf3UqzwgN0dRToIePp9fPQpCIugrJ8uiYnvNZKxYca4BIil4AH4OJk296tGcChnIE5r+B8/AOB/Wi1GtwtZTE8zKDrHs5Hr9c7t5E4bEo+JZ5mmvfwfvZw1EsBC0NJ/ZeVjy2FaZ+2aKTISY385jTlktUTyNiJGuJkZYBLGX42pJVZ7W/VfAxXJudHLLKfn6PsSh9EcNuyIL+pjmuFnGFoqpbZXxuDNwXWIBCij5ZqEnZ6ZRqE2lKKyfiInuxCcCjKW8+ARMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tRlO/MpKpETKRhfPJhYvFYba7VeCYZXtBFD9c+KNwX8=;
 b=lzXbprYVUw1tKdOmRsT0sqPviPaah0UJecPtCxxozlUtBMCztk6AqprhXhLA9BHcTBOTdHIJFA1F9rXSE0G9rEuQkewxDCn9QT4t3i5xI185KEmm9E/NzxKjRy9Y537FSDNXfjKymgecmZ+L1mMI7TtTo0eu45EAGsiPa5FfbGI=
Received: from DB7PR04MB5195.eurprd04.prod.outlook.com (20.176.236.27) by
 DB7PR04MB5948.eurprd04.prod.outlook.com (20.178.106.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Tue, 8 Oct 2019 04:08:57 +0000
Received: from DB7PR04MB5195.eurprd04.prod.outlook.com
 ([fe80::8815:267e:b311:ca91]) by DB7PR04MB5195.eurprd04.prod.outlook.com
 ([fe80::8815:267e:b311:ca91%7]) with mapi id 15.20.2327.025; Tue, 8 Oct 2019
 04:08:57 +0000
From: Wen He <wen.he_1@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [EXT] Re: [v2 2/2] arm64: dts: ls1028a: Update the DT node
 definition for dpclk
Thread-Topic: [EXT] Re: [v2 2/2] arm64: dts: ls1028a: Update the DT node
 definition for dpclk
Thread-Index: AQHVb4/DBY2rISwX9U+w/S8iZglPI6dPODUAgADjkBA=
Date: Tue, 8 Oct 2019 04:08:57 +0000
Message-ID: <DB7PR04MB5195760127B83B88B68CC602E29A0@DB7PR04MB5195.eurprd04.prod.outlook.com>
References: <20190920083419.5092-1-wen.he_1@nxp.com>
 <20190920083419.5092-2-wen.he_1@nxp.com> <20191007123512.GM7150@dragon>
In-Reply-To: <20191007123512.GM7150@dragon>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wen.he_1@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: daf1f545-5dc0-48e7-fc79-08d74ba53dc6
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB7PR04MB5948:|DB7PR04MB5948:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB59488258AAED9E17D218A575E29A0@DB7PR04MB5948.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(366004)(376002)(396003)(189003)(13464003)(199004)(66556008)(66446008)(7696005)(66946007)(76116006)(966005)(66476007)(76176011)(446003)(478600001)(99286004)(52536014)(486006)(33656002)(11346002)(476003)(6916009)(7736002)(64756008)(305945005)(74316002)(5660300002)(53546011)(86362001)(66066001)(6506007)(45080400002)(102836004)(14454004)(26005)(229853002)(81166006)(81156014)(8936002)(6246003)(71200400001)(256004)(9686003)(4326008)(71190400001)(25786009)(186003)(8676002)(54906003)(15650500001)(3846002)(6116002)(2906002)(14444005)(316002)(6436002)(6306002)(55016002)(17423001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5948;
 H:DB7PR04MB5195.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fy3nCvMvaZExPA7dkuuFG/sBe89CgX4Qa0dsxTBazr1J+sbDMUxE5zZggN/J1FXCIq1BqoIfebhLSHx93ua+TosVzvPGoruJUEauyVO2zajcqlVBqVoxa4yDTxpc/e9VF5GpFpIdwzlNkhGR7PHejnzV31zCIAvm2a0q4Aean59tWccqcZfjWizCM8tMQwa9WZNSrT0yCrPxBeUOoQWtRicmJ4MF/fu4tvSDK1t7YDQsalHX0t7PSL2QVRh7C6+C9ToD51eUxpAfHz1axJ7zU39j+Zpam6SD/MdJ5weB5ZEgldXY2dHwQ7BOpbxfB+IZE+f/RQS+/QU3YZQIvGCYrMYHTOEU1dFtvHGgAAlnkQqzBuhP22CklKPt9yBJ7T58bG3YbFR47NpRK8VfvJduGiBkN45g7RSpb0u0SI394Yc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: daf1f545-5dc0-48e7-fc79-08d74ba53dc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 04:08:57.2943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G0LhLGB4CwSyFbQHMWn3AmS4gG/Etnb912FQhdW2DD8s3TejH2yKZzJfZALpgiVgjflCTBOsLq6ozhA6lcfYzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_210902_927453_2AB8DE9E 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:61f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "linux-devel@linux.nxdi.nxp.com" <linux-devel@linux.nxdi.nxp.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhd24gR3VvIDxzaGF3
bmd1b0BrZXJuZWwub3JnPg0KPiBTZW50OiAyMDE5xOoxMNTCN8jVIDIwOjM1DQo+IFRvOiBXZW4g
SGUgPHdlbi5oZV8xQG54cC5jb20+DQo+IENjOiBsaW51eC1kZXZlbEBsaW51eC5ueGRpLm54cC5j
b207IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgUm9iIEhlcnJpbmcNCj4gPHJvYmgrZHRA
a2VybmVsLm9yZz47IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Ow0KPiBkZXZp
Y2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsNCj4g
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IFN1YmplY3Q6IFtFWFRdIFJl
OiBbdjIgMi8yXSBhcm02NDogZHRzOiBsczEwMjhhOiBVcGRhdGUgdGhlIERUIG5vZGUgZGVmaW5p
dGlvbg0KPiBmb3IgZHBjbGsNCj4gDQo+IA0KPiBPbiBGcmksIFNlcCAyMCwgMjAxOSBhdCAwNDoz
NDoxOVBNICswODAwLCBXZW4gSGUgd3JvdGU6DQo+ID4gVXBkYXRlIERUIG5vZGUgbmFtZSBjbG9j
ay1jb250cm9sbGVyIHRvIGNsb2NrLWRpc3BsYXksDQo+IA0KPiBUaGUgbm9kZSBuYW1lIGNsb2Nr
LWNvbnRyb2xsZXIgaXMgc28gZ29vZCwgYW5kIEkgZG8gbm90IHVuZGVyc3RhbmQgd2h5IHlvdQ0K
PiBuZWVkIHRvIGNoYW5nZSBpdC4NCj4gDQoNClRoZSBub2RlIG5hbWUgY2xvY2stY29udHJvbGxl
ciB1c2VkIGZvciB0aGUgc3lzdGVtIGNsb2NrZ2VuIGFuZCB0aGlzIGNsb2NrIG9ubHkgdXNlZCBm
b3INCnRoZSBEaXNwbGF5IGNvcmUuIA0KVG8gY2xlYXJseSB0aGUgbm9kZSwgdGhhdCB3aHkgSSBo
YXZlIHRvIHVzZSBjbG9jay1kaXNwbGF5IHRvIGluc3RlYWQgb2YgdGhlIGNsb2NrLWNvbnRyb2xs
ZXINCg0KQmVzdCBSZWdhcmRzLA0KV2VuDQoNCj4gU2hhd24NCj4gDQo+ID4gYWxzbyBjaGFuZ2UN
Cj4gPiB0aGUgcHJvcGVydHkgI2Nsb2NrLWNlbGxzIHZhbHVlIHRvIHplcm8uDQo+ID4NCj4gPiBU
aGlzIHVwZGF0ZSBhY2NvcmRpbmcgdGhlIGZlZWRiYWNrIG9mIHRoZSBEaXNwbGF5IG91dHB1dCBp
bnRlcmZhY2UNCj4gPiBjbG9jayBkcml2ZXIgdXBzdHJlYW0uDQo+ID4NCj4gPiBMaW5rOg0KPiA+
IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRw
cyUzQSUyRiUyRmxvcmUNCj4gPiAua2VybmVsLm9yZyUyRnBhdGNod29yayUyRnBhdGNoJTJGMTEx
MzgzMiUyRiZhbXA7ZGF0YT0wMiU3QzAxJQ0KPiA3Q3dlbi5oZQ0KPiA+DQo+IF8xJTQwbnhwLmNv
bSU3QzYxOTM0MzQ2ZmE2NjQ2ZDI4YmFjMDhkNzRiMjJlMDhjJTdDNjg2ZWExZDNiYzJiDQo+IDRj
NmZhOTJjDQo+ID4NCj4gZDk5YzVjMzAxNjM1JTdDMCU3QzAlN0M2MzcwNjA0ODU0NzgyMTgzOTAm
YW1wO3NkYXRhPSUyRkxHMkt2QQ0KPiBMZE9HcDZUMDYNCj4gPiAyZnVLR1FYWWVnc3dzRU9XUEF2
elduTGtmdE0lM0QmYW1wO3Jlc2VydmVkPTANCj4gPiBTaWduZWQtb2ZmLWJ5OiBXZW4gSGUgPHdl
bi5oZV8xQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2ZzbC1sczEwMjhhLmR0c2kgfCA2ICsrKy0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kNCj4gPiBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kNCj4gPiBpbmRleCA1MWZhOGY1
N2ZkYWMuLmRiMWUxODYzNTJkOCAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpDQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPiA+IEBAIC03OSwxMCArNzksMTAgQEANCj4g
PiAgICAgICAgICAgICAgIGNsb2NrLW91dHB1dC1uYW1lcyA9ICJwaHlfMjdtIjsNCj4gPiAgICAg
ICB9Ow0KPiA+DQo+ID4gLSAgICAgZHBjbGs6IGNsb2NrLWNvbnRyb2xsZXJAZjFmMDAwMCB7DQo+
ID4gKyAgICAgZHBjbGs6IGNsb2NrLWRpc3BsYXlAZjFmMDAwMCB7DQo+ID4gICAgICAgICAgICAg
ICBjb21wYXRpYmxlID0gImZzbCxsczEwMjhhLXBsbGRpZyI7DQo+ID4gICAgICAgICAgICAgICBy
ZWcgPSA8MHgwIDB4ZjFmMDAwMCAweDAgMHhmZmZmPjsNCj4gPiAtICAgICAgICAgICAgICNjbG9j
ay1jZWxscyA9IDwxPjsNCj4gPiArICAgICAgICAgICAgICNjbG9jay1jZWxscyA9IDwwPjsNCj4g
PiAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmb3NjXzI3bT47DQo+ID4gICAgICAgfTsNCj4gPg0K
PiA+IEBAIC02NjUsNyArNjY1LDcgQEANCj4gPiAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8
MCAyMjIgSVJRX1RZUEVfTEVWRUxfSElHSD4sDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgPDAgMjIzIElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KPiA+ICAgICAgICAgICAgICAgaW50ZXJy
dXB0LW5hbWVzID0gIkRFIiwgIlNFIjsNCj4gPiAtICAgICAgICAgICAgIGNsb2NrcyA9IDwmZHBj
bGsgMD4sIDwmY2xvY2tnZW4gMiAyPiwgPCZjbG9ja2dlbiAyIDI+LA0KPiA+ICsgICAgICAgICAg
ICAgY2xvY2tzID0gPCZkcGNsaz4sIDwmY2xvY2tnZW4gMiAyPiwgPCZjbG9ja2dlbiAyIDI+LA0K
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgPCZjbG9ja2dlbiAyIDI+Ow0KPiA+ICAgICAgICAg
ICAgICAgY2xvY2stbmFtZXMgPSAicHhsY2xrIiwgIm1jbGsiLCAiYWNsayIsICJwY2xrIjsNCj4g
PiAgICAgICAgICAgICAgIGFybSxtYWxpZHAtb3V0cHV0LXBvcnQtbGluZXMgPSAvYml0cy8gOCA8
OCA4IDg+Ow0KPiA+IC0tDQo+ID4gMi4xNy4xDQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
