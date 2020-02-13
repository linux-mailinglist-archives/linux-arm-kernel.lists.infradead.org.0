Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 372B015BD23
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:53:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruvBqRs2vgOOA9ccnCMRqnxKT07IQB3FkNZvzXS37C0=; b=PkQhkuVHy6fMYe
	aP2/umhFVUOKz3HtOPrPL2fQ8aHXZNqlkNr7SULJc4iSkqJ1VR8C/nRVtFiLD4yUy1QejErP4NYT6
	gEY+8U1VxEPRDDhG6lojdh6T9GyPP5fkczbVjN2YwozHJcfDji9YY+yoFeiDFu3iBvxFskzc31vba
	GKyVitd8wqbWpH/shhtRtNq+q09OrAfzoqlOpIGkxhTVKb4av1GXwqCpZ5pkT7gdpXXvyC0IsPmIP
	wS67UqN9WKH1YKjFAgl1S0R3fQN5tNf/wegiVqsAac+HHcJbRjCqYO96UyxkAuLRRuC0LRGtk5dsI
	ENev8fY19VJ0zBHf1JcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2C73-0002um-HD; Thu, 13 Feb 2020 10:52:53 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2C6t-0002uD-ID
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:52:45 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 56E6567AFC0;
 Thu, 13 Feb 2020 11:52:40 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 13 Feb
 2020 11:52:39 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Thu, 13 Feb 2020 11:52:39 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Jacky Bai <ping.bai@nxp.com>, Adam Ford <aford173@gmail.com>, Sudeep Holla
 <sudeep.holla@arm.com>
Subject: Re: [PATCH 0/3] Add power domain driver support for i.mx8m family
Thread-Topic: [PATCH 0/3] Add power domain driver support for i.mx8m family
Thread-Index: AQHVlbJgwlK4xQm/JEm2k7LRhwNAZagZYFsAgAABTgCAABmZgA==
Date: Thu, 13 Feb 2020 10:52:39 +0000
Message-ID: <4b27c7d5-a716-ee6a-2dca-e97d9205024b@kontron.de>
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
In-Reply-To: <VI1PR04MB6992DF27336AC51945D1C0C1871A0@VI1PR04MB6992.eurprd04.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <7926994A99C7DF48A89499911E49175F@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 56E6567AFC0.AF0DE
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
X-CRM114-CacheID: sfid-20200213_025243_921226_EEFB7178 
X-CRM114-Status: GOOD (  16.83  )
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
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMuMDIuMjAgMTA6MjEsIEphY2t5IEJhaSB3cm90ZToNCj4+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+PiBGcm9tOiBTY2hyZW1wZiBGcmllZGVyIDxmcmllZGVyLnNjaHJlbXBmQGtv
bnRyb24uZGU+DQo+PiBTZW50OiBUaHVyc2RheSwgRmVicnVhcnkgMTMsIDIwMjAgNToxNiBQTQ0K
Pj4gVG86IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPjsgU3VkZWVwIEhvbGxhDQo+PiA8
c3VkZWVwLmhvbGxhQGFybS5jb20+DQo+PiBDYzogQWlzaGVuZyBEb25nIDxhaXNoZW5nLmRvbmdA
bnhwLmNvbT47IG1hcmsucnV0bGFuZEBhcm0uY29tOyBQZW5nDQo+PiBGYW4gPHBlbmcuZmFuQG54
cC5jb20+OyBTb3V2aWsgQ2hha3JhdmFydHkNCj4+IDxTb3V2aWsuQ2hha3JhdmFydHlAYXJtLmNv
bT47IEphY2t5IEJhaSA8cGluZy5iYWlAbnhwLmNvbT47DQo+PiBkZXZpY2V0cmVlQHZnZXIua2Vy
bmVsLm9yZzsgQ2zDqW1lbnQgRmF1cmUgPGNsZW1lbnQuZmF1cmVAbnhwLmNvbT47DQo+PiBzLmhh
dWVyQHBlbmd1dHJvbml4LmRlOyBzaGF3bmd1b0BrZXJuZWwub3JnOyByb2JoK2R0QGtlcm5lbC5v
cmc7DQo+PiBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsga2VybmVsQHBlbmd1dHJv
bml4LmRlOyBBbmRyZSBQcnp5d2FyYQ0KPj4gPGFuZHJlLnByenl3YXJhQGFybS5jb20+OyBTaWx2
YW5vIERpIE5pbm5vIDxzaWx2YW5vLmRpbmlubm9AbnhwLmNvbT47DQo+PiBMZW9uYXJkIENyZXN0
ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPjsgZmVzdGV2YW1AZ21haWwuY29tOw0KPj4gbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBMdWNhcyBTdGFjaCA8bC5zdGFjaEBw
ZW5ndXRyb25peC5kZT4NCj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMC8zXSBBZGQgcG93ZXIgZG9t
YWluIGRyaXZlciBzdXBwb3J0IGZvciBpLm14OG0gZmFtaWx5DQo+Pg0KPj4gSGksDQo+Pg0KPj4g
T24gMDcuMTEuMTkgMjI6MjgsIEFkYW0gRm9yZCB3cm90ZToNCj4+PiBPbiBUaHUsIEFwciAxOCwg
MjAxOSBhdCA5OjQzIEFNIFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+DQo+PiB3
cm90ZToNCj4+Pj4NCj4+Pj4gT24gV2VkLCBBcHIgMTcsIDIwMTkgYXQgMDQ6MjE6NTVQTSArMDAw
MCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOg0KPj4+Pj4gT24gNC8xNy8yMDE5IDQ6MzMgUE0sIFN1
ZGVlcCBIb2xsYSB3cm90ZToNCj4+Pj4+Pj4+IEkgZG9uJ3QgeWV0IGJ1eSB0aGUgc2VjdXJpdHkg
YXJndW1lbnQuIFRoZXJlIGFyZSBtYW55IG1vcmUgc2hhcmVkDQo+Pj4+Pj4+PiBwYXJ0cyBvbiB0
aGUgU29DLCBsaWtlIHRoZSBjbG9jayBjb250cm9sbGVyLCB0aGF0IHdvdWxkIG5lZWQgdG8NCj4+
Pj4+Pj4+IGJlIHRha2VuIGF3YXkgZnJvbSB0aGUgbm9uLXNlY3VyZSB3b3JsZCBpZiBvbmUgd291
bGQgd2FudCB0byBydW4NCj4+Pj4+Pj4+IGFuIHVudHJ1c3RlZCBPUyBrZXJuZWwgb24gYSBpLk1Y
OE0gc3lzdGVtLg0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+IFRvIHByb3Blcmx5IGltcGxlbWVudCBzZWN1
cml0eSBvbiBhbnkgaS5NWDhNIGJhc2VkIHN5c3RlbSB0aGUNCj4+Pj4+Pj4+IGZpcm13YXJlIHdv
dWxkIG5lZWQgdG8gZ3JvdyBzb21ldGhpbmcgbGlrZSBhIGZ1bGwgQVJNIFNDUEkNCj4+Pj4+Pj4+
IGltcGxlbWVudGF0aW9uLCBzbyBhbGwgc2hhcmVkIGNyaXRpY2FsIHBlcmlwaGVyYWxzIGFyZSBz
b2xlbHkgdW5kZXINCj4+IGZpcm13YXJlIGNvbnRyb2wuDQo+Pj4+Pj4+DQo+Pj4+Pj4+IEl0IG1p
Z2h0IGJlIHBvc3NpYmxlIHRvIHJld29yayB0aGlzIHRvIHVzZSBzb21lIGZvcm0gb2YNCj4+Pj4+
Pj4gU0NNSS1vdmVyLVNNQyBpbnN0ZWFkIG9mIHZlbmRvci1zcGVjaWZpYyBTTUNDQyBTSVAgY2Fs
bHMNCj4+Pg0KPj4+IEkgd2FzIGp1c3QgY3VyaW91cyB0byBrbm93IGlmIHRoZXJlIGlzIGFueSBw
cm9ncmVzcyBiZWluZyBtYWRlIG9uDQo+Pj4gdGhpcy4gIFRoZSBpLm14OG1tLWV2ayBpcyBtaXNz
aW5nIGZ1bmN0aW9uYWxpdHkgdXBzdHJlYW0gYW5kIEkgdGhpbmsNCj4+PiB0aGUgcG93ZXIgZG9t
YWluIHN1cHBvcnQgd291bGQgaGVscCBlbmFibGUgc29tZSBvZiB0aGVzZSBmZWF0dXJlcy4NCj4+
Pg0KPj4NCj4+IEhhcyB0aGVyZSBiZWVuIGFueSBkZWNpc2lvbiBvciBhY3Rpb24gdGFrZW4gaW4g
dGhpcyB0b3BpYz8NCj4+IFdpbGwgdGhlIHBvd2VyIGRvbWFpbiBkcml2ZXIgYXMgcHJvcG9zZWQg
aW4gdGhpcyBwYXRjaCBiZSB1cHN0cmVhbWVkIGF0DQo+PiBzb21lIHRpbWUsIG9yIHJhdGhlciBu
b3Q/DQo+Pg0KPj4gSSB0cnkgdG8gYnVpbGQgYSBtYWlubGluZSBCU1AgZm9yIGkuTVg4TU0gKE1M
IFUtQm9vdCwgTUwgVEYtQSwgTUwgTGludXgpDQo+PiBhbmQgSSBpbnRlZ3JhdGVkIGRpc3BsYXkg
YW5kIGdyYXBoaWNzIHN1cHBvcnQgZnJvbSB0aGUgZG93bnN0cmVhbSBOWFANCj4+IGtlcm5lbC4N
Cj4+DQo+PiBXaGlsZSBtb3N0IHRoaW5ncyBhbHJlYWR5IHdvcmsgZmluZSwgdGhlcmUncyB0aGUg
aXNzdWUgb2YgaG93IHRvIGhhbmRsZSB0aGUNCj4+IHBvd2VyIGRvbWFpbnMuIEN1cnJlbnRseSBJ
IG5lZWQgdG8gdW5nYXRlIHNvbWUgY2xvY2tzIGluIHRoZSBURi1BDQo+PiBCTDMxIHRvIGdldCBm
b3IgZXhhbXBsZSB0aGUgR1BVIHJ1bm5pbmcuIElmIEkgdW5kZXJzdGFuZCB0aGlzIGNvcnJlY3Rs
eSB0aGUNCj4+IHByb3Bvc2VkIHBvd2VyIGRvbWFpbiBkcml2ZXIgY291bGQgaGFuZGxlIHRoaXMg
aW4gTGludXggb3RoZXJ3aXNlLg0KPj4NCj4gDQo+IHRoZSBTQ01JIG92ZXIgU01DIGlzIHN0aWxs
IHVuZGVyIHJldmlldw0KPiANCg0KT2ssIEkgc2VlLiBUaGFua3MgZm9yIHRoZSBpbmZvcm1hdGlv
bi4NCk9uY2UgdGhlIFNDTUkgb3ZlciBTTUMgZHJpdmVyIGlzIGF2YWlsYWJsZSBpbiBMaW51eCwg
d2hhdCBlbHNlIG5lZWRzIHRvIA0KYmUgZG9uZSB0byBoYW5kbGUgdGhlIGV4YW1wbGUgY2FzZSBn
aXZlbiBhYm92ZSAoR1BVIHJvb3QgY2xvY2sgdW5nYXRlKT8NCg0KSSBndWVzcyB0aGlzIHdvdWxk
IG5lZWQgYW4gaW14LXNwZWNpZmljIGhhbmRsZXIgaW4gdGhlIFRGLUEuIElzIHRoaXMgDQppbnRl
cmZhY2UgYWxyZWFkeSBhdmFpbGFibGUgaW4gbWFpbmxpbmUgVEYtQT8KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
