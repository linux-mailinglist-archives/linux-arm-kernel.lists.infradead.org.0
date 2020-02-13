Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22C615C7B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:18:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7qRT2MxQHRD9EGQA1j5AwVw7sU80/PkC57ZR7HHxAk=; b=qluVKKQgWAzLwW
	m7xYc+b/S0wUcRWqnFNxebJ05uEnr4plZo6kD3UNeMSX7M0gbBiqSuyQSw55nKMF/NZHoKKe/vFms
	UH8Dk/zzQFkbcx8fgslnwQ1UcydG1L9NJZfnq3XYOir2hO3pljbDZCEUxnMuVuLLJGLfLPzWQHaRw
	HYTKZJVUq/ouALDhbP1NPN3YKqgTFRlv0jfhmzNoFZ1HHRBeA0s8b8ZeFzRH92JDzq0SIZXK+ZFgZ
	65ZAHrOVcQrxAjJKFzH5rNd52coUFysQAHiXT3Qv76vA/7moPTPhDegoD9qErut+ZXuRbaPfxO9PB
	ZlLJ6g6qY+zAvPMIj9eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HCM-0005Ya-FW; Thu, 13 Feb 2020 16:18:42 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HAn-00041l-1c
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:17:08 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 00EB867A7D8;
 Thu, 13 Feb 2020 17:17:00 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 13 Feb
 2020 17:16:59 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Thu, 13 Feb 2020 17:16:59 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Lucas Stach <l.stach@pengutronix.de>, Leonard Crestez
 <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Adam Ford
 <aford173@gmail.com>, Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 0/3] Add power domain driver support for i.mx8m family
Thread-Topic: [PATCH 0/3] Add power domain driver support for i.mx8m family
Thread-Index: AQHVlbJgwlK4xQm/JEm2k7LRhwNAZagZ0M4AgAAFEQA=
Date: Thu, 13 Feb 2020 16:16:59 +0000
Message-ID: <9679a5be-6e14-1a37-6163-b95fd55ebb36@kontron.de>
References: <20190417053211.2195-1-ping.bai@nxp.com>
 <AM0PR04MB42116FEB1EE2CAE68A1CAA8980250@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <1555503195.2317.19.camel@pengutronix.de>
 <VI1PR04MB55330105F4839FCF98B7CFC0EE250@VI1PR04MB5533.eurprd04.prod.outlook.com>
 <68aaace3-f66e-b4b8-30a0-57b8b66a7524@arm.com>
 <VI1PR04MB5533A1F87436C0839A772D03EE250@VI1PR04MB5533.eurprd04.prod.outlook.com>
 <20190418144330.GD7770@e107155-lin>
 <CAHCN7xKK3zWE9i24prauPw0DSNTjASsMgDYY8w3OBJ+hb2y-sg@mail.gmail.com>
 <871ac22a-0508-8e92-b012-f414be5bd174@kontron.de>
 <VI1PR04MB6992DF27336AC51945D1C0C1871A0@VI1PR04MB6992.eurprd04.prod.outlook.com>
 <0a8a4edcf110ec5bcf859c145ef27553039c6cd0.camel@pengutronix.de>
 <VI1PR04MB70232F5A51F3F2B02BDB344EEE1A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <e09e5fdc9fc71a7ca35e6f419f660b633d55224f.camel@pengutronix.de>
 <VI1PR04MB70239743AA9C1BDC93E527EFEE1A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <13d6492b91c38e6b1ff5ff2874197fff224fff5c.camel@pengutronix.de>
In-Reply-To: <13d6492b91c38e6b1ff5ff2874197fff224fff5c.camel@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <85155DCAD6292F4ABD42C51818F97858@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 00EB867A7D8.AAAE0
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aford173@gmail.com, aisheng.dong@nxp.com,
 andre.przywara@arm.com, clement.faure@nxp.com,
 devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, l.stach@pengutronix.de,
 leonard.crestez@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com, mark.rutland@arm.com, peng.fan@nxp.com,
 ping.bai@nxp.com, robh+dt@kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org, silvano.dininno@nxp.com,
 souvik.chakravarty@arm.com, sudeep.holla@arm.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_081705_425550_267D23D6 
X-CRM114-Status: GOOD (  27.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.68 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 =?utf-8?B?Q2zDqW1lbnQgRmF1cmU=?= <clement.faure@nxp.com>,
 Andre Przywara <andre.przywara@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMuMDIuMjAgMTY6NTgsIEx1Y2FzIFN0YWNoIHdyb3RlOg0KPiBPbiBEbywgMjAyMC0wMi0x
MyBhdCAxNToxOSArMDAwMCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOg0KPj4gT24gMTMuMDIuMjAy
MCAxNjo0NywgTHVjYXMgU3RhY2ggd3JvdGU6DQo+Pj4gT24gRG8sIDIwMjAtMDItMTMgYXQgMTQ6
MzAgKzAwMDAsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToNCj4+Pj4gT24gMTMuMDIuMjAyMCAxMzoz
MiwgTHVjYXMgU3RhY2ggd3JvdGU6DQo+Pj4+PiBPbiBEbywgMjAyMC0wMi0xMyBhdCAwOToyMSAr
MDAwMCwgSmFja3kgQmFpIHdyb3RlOg0KPj4+Pj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPj4+Pj4+PiBGcm9tOiBTY2hyZW1wZiBGcmllZGVyIDxmcmllZGVyLnNjaHJlbXBmQGtvbnRy
b24uZGU+DQo+Pj4+Pj4+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAxMywgMjAyMCA1OjE2IFBN
DQo+Pj4+Pj4+IFRvOiBBZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNvbT47IFN1ZGVlcCBIb2xs
YQ0KPj4+Pj4+PiA8c3VkZWVwLmhvbGxhQGFybS5jb20+DQo+Pj4+Pj4+IENjOiBBaXNoZW5nIERv
bmcgPGFpc2hlbmcuZG9uZ0BueHAuY29tPjsgbWFyay5ydXRsYW5kQGFybS5jb207IFBlbmcNCj4+
Pj4+Pj4gRmFuIDxwZW5nLmZhbkBueHAuY29tPjsgU291dmlrIENoYWtyYXZhcnR5DQo+Pj4+Pj4+
IDxTb3V2aWsuQ2hha3JhdmFydHlAYXJtLmNvbT47IEphY2t5IEJhaSA8cGluZy5iYWlAbnhwLmNv
bT47DQo+Pj4+Pj4+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBDbMOpbWVudCBGYXVyZSA8
Y2xlbWVudC5mYXVyZUBueHAuY29tPjsNCj4+Pj4+Pj4gcy5oYXVlckBwZW5ndXRyb25peC5kZTsg
c2hhd25ndW9Aa2VybmVsLm9yZzsgcm9iaCtkdEBrZXJuZWwub3JnOw0KPj4+Pj4+PiBkbC1saW51
eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsga2VybmVsQHBlbmd1dHJvbml4LmRlOyBBbmRyZSBQ
cnp5d2FyYQ0KPj4+Pj4+PiA8YW5kcmUucHJ6eXdhcmFAYXJtLmNvbT47IFNpbHZhbm8gRGkgTmlu
bm8gPHNpbHZhbm8uZGluaW5ub0BueHAuY29tPjsNCj4+Pj4+Pj4gTGVvbmFyZCBDcmVzdGV6IDxs
ZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT47IGZlc3RldmFtQGdtYWlsLmNvbTsNCj4+Pj4+Pj4gbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBMdWNhcyBTdGFjaCA8bC5zdGFjaEBw
ZW5ndXRyb25peC5kZT4NCj4+Pj4+Pj4gU3ViamVjdDogUmU6IFtQQVRDSCAwLzNdIEFkZCBwb3dl
ciBkb21haW4gZHJpdmVyIHN1cHBvcnQgZm9yIGkubXg4bSBmYW1pbHkNCj4+Pj4+Pj4NCj4+Pj4+
Pj4gSGksDQo+Pj4+Pj4+DQo+Pj4+Pj4+IE9uIDA3LjExLjE5IDIyOjI4LCBBZGFtIEZvcmQgd3Jv
dGU6DQo+Pj4+Pj4+PiBPbiBUaHUsIEFwciAxOCwgMjAxOSBhdCA5OjQzIEFNIFN1ZGVlcCBIb2xs
YSA8c3VkZWVwLmhvbGxhQGFybS5jb20+DQo+Pj4+Pj4+IHdyb3RlOg0KPj4+Pj4+Pj4+IE9uIFdl
ZCwgQXByIDE3LCAyMDE5IGF0IDA0OjIxOjU1UE0gKzAwMDAsIExlb25hcmQgQ3Jlc3RleiB3cm90
ZToNCj4+Pj4+Pj4+Pj4gT24gNC8xNy8yMDE5IDQ6MzMgUE0sIFN1ZGVlcCBIb2xsYSB3cm90ZToN
Cj4+Pj4+Pj4+Pj4+Pj4gSSBkb24ndCB5ZXQgYnV5IHRoZSBzZWN1cml0eSBhcmd1bWVudC4gVGhl
cmUgYXJlIG1hbnkgbW9yZSBzaGFyZWQNCj4+Pj4+Pj4+Pj4+Pj4gcGFydHMgb24gdGhlIFNvQywg
bGlrZSB0aGUgY2xvY2sgY29udHJvbGxlciwgdGhhdCB3b3VsZCBuZWVkIHRvDQo+Pj4+Pj4+Pj4+
Pj4+IGJlIHRha2VuIGF3YXkgZnJvbSB0aGUgbm9uLXNlY3VyZSB3b3JsZCBpZiBvbmUgd291bGQg
d2FudCB0byBydW4NCj4+Pj4+Pj4+Pj4+Pj4gYW4gdW50cnVzdGVkIE9TIGtlcm5lbCBvbiBhIGku
TVg4TSBzeXN0ZW0uDQo+Pj4+Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+Pj4+IFRvIHByb3Blcmx5IGlt
cGxlbWVudCBzZWN1cml0eSBvbiBhbnkgaS5NWDhNIGJhc2VkIHN5c3RlbSB0aGUNCj4+Pj4+Pj4+
Pj4+Pj4gZmlybXdhcmUgd291bGQgbmVlZCB0byBncm93IHNvbWV0aGluZyBsaWtlIGEgZnVsbCBB
Uk0gU0NQSQ0KPj4+Pj4+Pj4+Pj4+PiBpbXBsZW1lbnRhdGlvbiwgc28gYWxsIHNoYXJlZCBjcml0
aWNhbCBwZXJpcGhlcmFscyBhcmUgc29sZWx5IHVuZGVyDQo+Pj4+Pj4+IGZpcm13YXJlIGNvbnRy
b2wuDQo+Pj4+Pj4+Pj4+Pj4gSXQgbWlnaHQgYmUgcG9zc2libGUgdG8gcmV3b3JrIHRoaXMgdG8g
dXNlIHNvbWUgZm9ybSBvZg0KPj4+Pj4+Pj4+Pj4+IFNDTUktb3Zlci1TTUMgaW5zdGVhZCBvZiB2
ZW5kb3Itc3BlY2lmaWMgU01DQ0MgU0lQIGNhbGxzDQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gSSB3YXMg
anVzdCBjdXJpb3VzIHRvIGtub3cgaWYgdGhlcmUgaXMgYW55IHByb2dyZXNzIGJlaW5nIG1hZGUg
b24NCj4+Pj4+Pj4+IHRoaXMuICBUaGUgaS5teDhtbS1ldmsgaXMgbWlzc2luZyBmdW5jdGlvbmFs
aXR5IHVwc3RyZWFtIGFuZCBJIHRoaW5rDQo+Pj4+Pj4+PiB0aGUgcG93ZXIgZG9tYWluIHN1cHBv
cnQgd291bGQgaGVscCBlbmFibGUgc29tZSBvZiB0aGVzZSBmZWF0dXJlcy4NCj4+Pj4+Pj4+DQo+
Pj4+Pj4+DQo+Pj4+Pj4+IEhhcyB0aGVyZSBiZWVuIGFueSBkZWNpc2lvbiBvciBhY3Rpb24gdGFr
ZW4gaW4gdGhpcyB0b3BpYz8NCj4+Pj4+Pj4gV2lsbCB0aGUgcG93ZXIgZG9tYWluIGRyaXZlciBh
cyBwcm9wb3NlZCBpbiB0aGlzIHBhdGNoIGJlIHVwc3RyZWFtZWQgYXQNCj4+Pj4+Pj4gc29tZSB0
aW1lLCBvciByYXRoZXIgbm90Pw0KPj4+Pj4+Pg0KPj4+Pj4+PiBJIHRyeSB0byBidWlsZCBhIG1h
aW5saW5lIEJTUCBmb3IgaS5NWDhNTSAoTUwgVS1Cb290LCBNTCBURi1BLCBNTCBMaW51eCkNCj4+
Pj4+Pj4gYW5kIEkgaW50ZWdyYXRlZCBkaXNwbGF5IGFuZCBncmFwaGljcyBzdXBwb3J0IGZyb20g
dGhlIGRvd25zdHJlYW0gTlhQDQo+Pj4+Pj4+IGtlcm5lbC4NCj4+Pj4+Pj4NCj4+Pj4+Pj4gV2hp
bGUgbW9zdCB0aGluZ3MgYWxyZWFkeSB3b3JrIGZpbmUsIHRoZXJlJ3MgdGhlIGlzc3VlIG9mIGhv
dyB0byBoYW5kbGUgdGhlDQo+Pj4+Pj4+IHBvd2VyIGRvbWFpbnMuIEN1cnJlbnRseSBJIG5lZWQg
dG8gdW5nYXRlIHNvbWUgY2xvY2tzIGluIHRoZSBURi1BDQo+Pj4+Pj4+IEJMMzEgdG8gZ2V0IGZv
ciBleGFtcGxlIHRoZSBHUFUgcnVubmluZy4gSWYgSSB1bmRlcnN0YW5kIHRoaXMgY29ycmVjdGx5
IHRoZQ0KPj4+Pj4+PiBwcm9wb3NlZCBwb3dlciBkb21haW4gZHJpdmVyIGNvdWxkIGhhbmRsZSB0
aGlzIGluIExpbnV4IG90aGVyd2lzZS4NCj4+Pj4+Pj4NCj4+Pj4+Pg0KPj4+Pj4+IHRoZSBTQ01J
IG92ZXIgU01DIGlzIHN0aWxsIHVuZGVyIHJldmlldw0KPj4+Pj4NCj4+Pj4+IEV2ZW4gaWYgdGhl
IFNDTUkgb3ZlciBTTUMgaXMgcmVhZHkgYXQgc29tZSBwb2ludCwgaXQncyBzdGlsbCB1bmNsZWFy
IHRvDQo+Pj4+PiBtZSBob3cgeW91IGludGVuZCB0byBhYnN0cmFjdCB0aGUgR1BDIGJlaGluZCB0
aGUgU0NNSSBpbnRlcmZhY2UgaW4gdGhlDQo+Pj4+PiBURi1BLiBUaGUgcG93ZXIgZG9tYWlucyBo
YXZlIGRlcGVuZGVuY2llcyBib3RoIGludG8gdGhlIHJlZ3VsYXRvciBhbmQNCj4+Pj4+IHRoZSBj
bG9jayBmcmFtZXdvcmsuIEJvdGggYXJlIGN1cnJlbnRseSB1bmRlciBleGNsdXNpdmUgY29udHJv
bCBvZiB0aGUNCj4+Pj4+IHJpY2ggT1MuIEhvdyBkbyB5b3UgaW50ZW5kIHRvIGFsbG93IHRoZSBU
Ri1BIHRvIGNvbnRyb2wgdGhlIHBvd2VyDQo+Pj4+PiBzdXBwbGllcyBhbmQgbmVjZXNzYXJ5IHJl
c2V0IGNsb2NrcyB3aXRob3V0IG1lc3NpbmcgdXAgYW55IHN0YXRlIGluIHRoZQ0KPj4+Pj4gcmlj
aCBPUz8NCj4+Pj4NCj4+Pj4gVGhpcyBpcyBpbmRlZWQgZGlmZmljdWx0LCBTQ01JIGFzc3VtZXMg
dGhhdCB0aGUgcmVzcG9uZGVyIGhhcyBzdWZmaWNpZW50DQo+Pj4+IGNvbnRyb2wgb3ZlciBjbG9j
a3MgdG8gZnVsbHkgaW1wbGVtZW50IHBvd2VyIGRvbWFpbiBoYW5kbGluZywgaW5jbHVkaW5nDQo+
Pj4+IG92ZXIgY2xvY2tzIGFuZCByZWd1bGF0b3JzLg0KPj4+Pg0KPj4+PiBQZXJoYXBzIGl0IG1p
Z2h0IGJlIHBvc3NpYmxlIHRvIG1vZGlmeSBjdXJyZW50IGdwY3YyIGRyaXZlciB0byBzZW5kIFND
TUkNCj4+Pj4gbWVzc2FnZXMgZm9yIHBvd2VyIG9ubHkgYW5kIGtlZXAgaGFuZGxpbmcgcmVndWxh
dG9ycyBpdHNlbGY/IEl0IGNvdWxkDQo+Pj4+IHN3aXRjaCBiYXNlZCBvbiB3aGV0aGVyIGl0IGhh
cyBhIHJlZmVyZW5jZSB0byBhIHNjbWkgY2hhbm5lbCBhcyBhIERUDQo+Pj4+IHByb3BlcnR5Lg0K
Pj4+DQo+Pj4gV2l0aCBzdWNoIGEgc3BsaXQgaW1wbGVtZW50YXRpb24gSSBmZWVsIGxpa2Ugd2Ug
YXJlIGdldHRpbmcgd29yc3Qgb2YNCj4+PiBib3RoIHdvcmxkczogbW9yZSBjb21wbGV4aXR5IGFz
IHRoZSBpbXBsZW1lbnRhdGlvbiBpcyBzcGxpdCBhY3Jvc3MNCj4+PiBtdWx0aXBsZSBjb21wb25l
bnRzIChURi1BIGFuZCBrZXJuZWwpIGFuZCBzdGlsbCB0aGUgcmljaCBPUyBpcyBhYmxlIHRvDQo+
Pj4gbWVzcyB1cCB0aGUgcG93ZXIgc3VwcGx5IG9mIGEgZG9tYWluIHRoYXQgaXQgbWlnaHQgbm90
IGV2ZW4gb3duLiBUaGlzDQo+Pj4gZG9lc24ndCBzb3VuZCByZWFsbHkgZW50aWNpbmcuDQo+Pj4N
Cj4+PiBJTUhPIGl0IG9ubHkgbWFrZXMgc2Vuc2UgdG8gcHVzaCB0aGlzIGZ1bmN0aW9uYWxpdHkg
ZG93biBpbnRvIFRGLUEgaWYNCj4+PiBpdCBhbGxvd3MgdG8gYWJzdHJhY3QgYWxsIHRoZSBpbXBs
ZW1lbnRhdGlvbiBkZXRhaWxzIGJlaGluZCBhIHN0YW5kYXJkDQo+Pj4gaW50ZXJmYWNlIGxpa2Ug
U0NNSS4gQnV0IHRoZW4gdGhlIG5lZWRlZCBjaGFuZ2VzIGFyZSBtdWNoIG1vcmUgaW52YXNpdmUN
Cj4+PiB0aGFuIGp1c3QgcHVzaGluZyBkb3duIHRoZSBHUEMgaW1wbGVtZW50YXRpb24uDQo+Pj4N
Cj4+Pj4gQSBmdWxsIHNjbWktYmFzZWQgaW1wbGVtZW50YXRpb24gbWlnaHQgdXNlIGVudGlyZWx5
IHZlcnkgZGlmZmVyZW50DQo+Pj4+IGJpbmRpbmdzIGFuZCB0YWtlIGEgbG9uZyB0aW1lLiBJZiBw
ZW9wbGUgd2FudCB0byBzdXBwb3J0IHRoZWlyIGNoaXBzIGJ5DQo+Pj4+IGltcGxlbWVudGluZyBw
b3dlciBkb21haW4gc3VwcG9ydCBpbiB0aGUgcmljaCBPUyB3ZSBzaG91bGRuJ3QgYmxvY2sgdGhl
bS4NCj4+Pj4NCj4+Pj4gU28gaXQgd291bGQgYmUgZ29vZCB0byBhY2NlcHQgZ3BjdjIgZW5oYW5j
ZW1lbnQgZm9yIDhtbSBhbmQgc2ltaWxhci4NCj4+Pg0KPj4+IEkgZnVsbHkgYWdyZWUuDQo+Pj4N
Cj4+PiBGb3IgYSBmdWxsIFNDTUkgYmFzZWQgaW1wbGVtZW50YXRpb24gSSBleHBlY3QgdGhhdCBt
dWNoIG1vcmUgdGhhbiBqdXN0DQo+Pj4gdGhlIEdQQyBmdW5jdGlvbmFsaXR5IG5lZWRzIHRvIGJl
IHB1c2hlZCBkb3duIGludG8gdGhlIFRGLUEuIFJpZ2h0IG5vdw0KPj4+IEkgc2VlIGNsb2Nrcywg
aTJjIGFuZCByZWd1bGF0b3IgaGFuZGxpbmcsIG1heWJlIHRoZXJlIGlzIG1vcmUgdGhhdA0KPj4+
IGVzY2FwZXMgbXkgbWluZC4NCj4+DQo+PiBJMkMgcmVndWxhdG9yIGhhbmRsaW5nIGluc2lkZSBU
Ri1BIHNvdW5kcyB2ZXJ5IGRpZmZpY3VsdC4gTm90IG9ubHkgd291bGQNCj4+IHVwc3RyZWFtIFRG
LUEgbGlrZWx5IG9iamVjdCBidXQgb24gaW14OG0gRVZLIGJvYXJkcyB0aGUgaTJjIGJ1cyBmb3IN
Cj4+IHJlZ3VsYXRvcnMgaXMgc2hhcmVkIHdpdGggb3RoZXIgZGV2aWNlcyAobGlrZSBjYW1lcmEp
Lg0KPiANCj4gQW5kIHRoYXQncyBleGFjdGx5IHRoZSBwb2ludCB3aGVyZSB0cnlpbmcgdG8gcHVz
aCB0aGluZ3MgaW50byBsb3dlcg0KPiBsYXllcnMgc3RhcnRzIHRvIGNydW1ibGUuIEl0IG9ubHkg
cmVhbGx5IG1ha2VzIHNlbnNlIGlmIHlvdSBtYW5hZ2UgdG8NCj4gZXN0YWJsaXNoIGEgbmljZSBh
YnN0cmFjdGlvbiBvZiB3aGF0IGlzIGhhcHBlbmluZyBpbiB0aG9zZSBsb3dlcg0KPiBsYXllcnMu
IElmIHlvdSBuZWVkIHRvIHB1bmNoIHRocm91Z2ggdGhvc2UgYWJzdHJhY3Rpb25zIGR1ZSB0byBz
eXN0ZW0NCj4gZGVzaWduIGxpbWl0YXRpb25zLCB0aGUgYmVuZWZpdCBvZiB0aG9zZSBhYnN0cmFj
dGlvbnMgaXMgd2lwZWQgYXdheS4NCj4gVGhlIG9ubHkgdGhpbmcgeW91IGdhaW4gaXMgbW9yZSBj
b21wbGV4aXR5IGR1ZSB0byBtb3JlIGNvbXBvbmVudHMgYmVpbmcNCj4gaW52b2x2ZWQgaW4gYSBz
cGVjaWZpYyB0YXNrLg0KPiANCj4gSWYgeW91IHdhbnQgdG8gYmUgYWJsZSB0byBwYXJ0aXRpb24g
dGhlIHN5c3RlbSAoYW5kIGFzIGZhciBhcyBJDQo+IHVuZGVyc3RhbmQgaXQgdGhhdCdzIHRoZSBt
YWluIG1vdGl2YXRpb24gZm9yIHB1c2hpbmcgR1BDIGZ1bmN0aW9uYWxpdHkNCj4gaW50byBURi1B
KSB5b3UgbmVlZCB0byBkZXNpZ24gdGhlIHN5c3RlbSAoc3RhcnRpbmcgb24gdGhlIEhXIGxldmVs
KSB0bw0KPiBtYWtlIHRoaXMgcG9zc2libGUuIFRyeWluZyB0byBmb3JjZSBzdWNoIGEgbW9kZWwg
b24gYSBzeXN0ZW0gdGhhdA0KPiBoYXNuJ3QgcmVhbGx5IGJlZW4gZGVzaWduZWQgZm9yIHRoaXMg
aXMgSU1ITyBkb29tZWQgdG8gZmFpbC4NCj4gDQo+PiBTbyBpZiB3ZSBkbyB0aGlzIG1heWJlIFND
TUkgZHQgYmluZGluZ3MgY291bGQgYmUgZXhwYW5kZWQgdG8gYXQgbGVhc3QNCj4+IGFsbG93IHJl
Z3VsYXRvcnMgb24gYSBwZXItZG9tYWluIGJhc2lzPw0KPiANCj4gTWF5YmUgdGhhdCBpcyB3aGF0
IG5lZWRzIHRvIGJlIGRvbmUgdG8gYWxsb3cgYXQgbGVhc3QgYSBwYXJ0aWFsDQo+IGltcGxlbWVu
dGF0aW9uIG9mIFNDTUkgb24gdGhlIGV4aXN0aW5nIGkuTVg4TSBkZXNpZ25zLiBIb3dldmVyIGl0
DQo+IGRvZXNuJ3QgcmVhbGx5IHByb3ZpZGUgbXVjaCBvZiB0aGUgYmVuZWZpdHMgb2YgU0NNSS4N
Cj4gDQo+IFNvIEknbSBhbGwgZm9yIGhhdmluZyBhIHB1cmUgTGludXggYmFzZWQgaW1wbGVtZW50
YXRpb24gb2YgdGhlDQo+IGZ1bmN0aW9uYWxpdHksIGluc3RlYWQgb2Ygd2FpdGluZyBmb3IgdGhl
IFNDTUkgYmFzZWQgaW1wbGVtZW50YXRpb24NCj4gdGhhdCBtYXkgcHJvdmlkZSBvbmx5IHF1ZXN0
aW9uYWJsZSBiZW5lZml0Lg0KDQpBZnRlciByZWFkaW5nIHRocm91Z2ggdGhlIHRocmVhZCBhbmQg
b3RoZXIgcmVzb3VyY2VzIC0gd2l0aCBzdGlsbCB2ZXJ5IA0KbGltaXRlZCBrbm93bGVkZ2UgLSBJ
IHRlbmQgdG8gc3VwcG9ydCBMdWNhcycgYXJndW1lbnQuDQoNCldlIHdhbnQgdG8gcHJvdmlkZSBh
IG1haW5saW5lIEJTUCBmb3Igb3VyIGkuTVg4TU0gaGFyZHdhcmUgYW5kIGl0IHNlZW1zIA0KbGlr
ZSBwdXNoaW5nIG1vcmUgYW5kIG1vcmUgZnVuY3Rpb25hbGl0eSBmcm9tIExpbnV4IGludG8gZmly
bXdhcmUgd2lsbCANCmluY3JlYXNlIGNvbXBsZXhpdHkgZXZlbiBmdXJ0aGVyIGFuZCBhbHNvIGRl
bGF5IG9yIGJsb2NrIHRoZSB1cHN0cmVhbWluZyANCm9mIG1pc3NpbmcgY29tcG9uZW50cywgdGhh
dCB3b3VsZCBvdGhlcndpc2UgYmUgcmF0aGVyIGVhc3kgdG8gZ2V0IHJ1bm5pbmcuCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
