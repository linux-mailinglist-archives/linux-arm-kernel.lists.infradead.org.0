Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030291C6A79
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pPkswSFx29xkmXDT0gytl0HUGC5U77sZeF61WWpD6xU=; b=izcisfAlN+DCvq
	JfwMpbqWHlEe4m/N7tE6NEWKT4IneDc5erLgfeZVdEoWD1YKW7bwBP1Mmhq0NwjDHIMMy5+MpAxKs
	r9JosqANiQ/1GlSnIMnGBcLbDo1YaRJc/Rf5l5dTNgq2sACUvtqbwiI0KRSd6Q1EZJM1I4hkemVd+
	pFtJUAx62IHGMGL1y2OMhV3pazis7QmCpSSCelYBDFPhQo/K0JZSG6YFpmB+EGp/8lq5nR5eDSopQ
	GUHn8+HEWT3JlU+RTCcbLWEl0B4EVheE0suluP/BrsZ9LhEiTd/1XnBW2N+zmhF99i/tFH6vNMwEX
	sNlUWkHvzrEAMI+GGW5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWErR-0007mv-M0; Wed, 06 May 2020 07:52:57 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEqt-0007VR-7R; Wed, 06 May 2020 07:52:25 +0000
X-UUID: bb66e9fceaea4f3e81c75b96ca8eecb1-20200505
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Trdq9z/COTpJk41fhSZLkq6OFAMc+TnD3hJMVlNmsMA=; 
 b=npTNZCSVd/S4dfrA5KiyG7QY6Y+94HMbzkVpm5zwZR/FhF+Pxu2a7u7HH9aJBEFL6JGfl+0G9VZwRn25v55lfzOZhd9PGShBhm23ZYBOSWiyle8PJnY8GxllFEdQsA0NyHEouAT+eqgcUGKf3yn3AiOy635Ycl8fdBMgYXD7Ru8=;
X-UUID: bb66e9fceaea4f3e81c75b96ca8eecb1-20200505
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1472435640; Tue, 05 May 2020 23:52:18 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 00:42:14 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 15:42:12 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 6 May 2020 15:42:08 +0800
Message-ID: <1588750933.3262.26.camel@mtksdaap41>
Subject: Re: [PATCH v13 04/11] soc: mediatek: Remove infracfg misc driver
 support
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Wed, 6 May 2020 15:42:13 +0800
In-Reply-To: <CAFqH_50HUcy1u69nXhp1bTY-MObp5-J=HorUwyc4Wpt6jFVjTw@mail.gmail.com>
References: <1584689540-5227-1-git-send-email-weiyi.lu@mediatek.com>
 <1584689540-5227-5-git-send-email-weiyi.lu@mediatek.com>
 <CAFqH_50HUcy1u69nXhp1bTY-MObp5-J=HorUwyc4Wpt6jFVjTw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_005223_313837_C3E16485 
X-CRM114-Status: GOOD (  24.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 JamesJJ Liao =?UTF-8?Q?=28=E5=BB=96=E5=BB=BA=E6=99=BA=29?=
 <jamesjj.liao@mediatek.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 Fan Chen =?UTF-8?Q?=28=E9=99=B3=E5=87=A1=29?= <fan.chen@mediatek.com>,
 "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, Sascha
 Hauer <kernel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpPbiBGcmksIDIwMjAtMDQtMjQgYXQgMDI6MTkgKzA4MDAsIEVucmljIEJhbGxldGJvIFNlcnJh
IHdyb3RlOg0KPiBIaSBXZWl5aSBMdSwNCj4gDQo+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoDQo+
IA0KPiBNaXNzYXRnZSBkZSBXZWl5aSBMdSA8d2VpeWkubHVAbWVkaWF0ZWsuY29tPiBkZWwgZGlh
IGR2LiwgMjAgZGUgbWFyw6cNCj4gMjAyMCBhIGxlcyA4OjMzOg0KPiA+DQo+ID4gVGhlIGZ1bmN0
aW9ucyBwcm92aWRlZCBieSBpbmZyYWNmZyBtaXNjIGRyaXZlciBoYXZlIG5vIG90aGVyIHVzZXIg
ZXhjZXB0DQo+ID4gdGhlIHNjcHN5cyBkcml2ZXIgc28gbW92ZSB0aG9zZSBpbnRvIHNjcHN5cyBk
cml2ZXIgZGlyZWN0bHkuDQo+ID4gQW5kIHRoZW4sIHJlbW92ZSBpbmZyYWNmZyBtaXNjIGRydmll
ciB3aGljaCBpcyBubyBsb25nZXIgYmVpbmcgdXNlZC4NCj4gPiBCVFcsIGluIG5leHQgcGF0Y2gs
IHdlJ3JlIGdvaW5nIHRvIGV4dGVuZCB0aGUgYnVzIHByb3RlY3Rpb24gZnVuY3Rpb25zDQo+ID4g
d2l0aCBtb3JlIGN1c3RvbWl6ZWQgYXJndW1lbnRzLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTog
V2VpeWkgTHUgPHdlaXlpLmx1QG1lZGlhdGVrLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9z
b2MvbWVkaWF0ZWsvS2NvbmZpZyAgICAgICAgICB8IDEwIC0tLS0tDQo+ID4gIGRyaXZlcnMvc29j
L21lZGlhdGVrL01ha2VmaWxlICAgICAgICAgfCAgMSAtDQo+ID4gIGRyaXZlcnMvc29jL21lZGlh
dGVrL210ay1pbmZyYWNmZy5jICAgfCA3OSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KPiA+ICBkcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstc2Nwc3lzLmMgICAgIHwgNDQgKysr
KysrKysrKysrKysrLS0tLQ0KPiA+ICBkcml2ZXJzL3NvYy9tZWRpYXRlay9zY3BzeXMuaCAgICAg
ICAgIHwgMjggKysrKysrKysrKysrKw0KPiA+ICBpbmNsdWRlL2xpbnV4L3NvYy9tZWRpYXRlay9p
bmZyYWNmZy5oIHwgMzkgLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAgNiBmaWxlcyBjaGFuZ2VkLCA2
MyBpbnNlcnRpb25zKCspLCAxMzggZGVsZXRpb25zKC0pDQo+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstaW5mcmFjZmcuYw0KPiA+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9zb2MvbWVkaWF0ZWsvc2Nwc3lzLmgNCj4gPiAgZGVsZXRlIG1vZGUgMTAw
NjQ0IGluY2x1ZGUvbGludXgvc29jL21lZGlhdGVrL2luZnJhY2ZnLmgNCj4gPg0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3NvYy9tZWRpYXRlay9LY29uZmlnIGIvZHJpdmVycy9zb2MvbWVkaWF0
ZWsvS2NvbmZpZw0KPiA+IGluZGV4IDIxMTRiNTYuLmY4MzdiM2MgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9zb2MvbWVkaWF0ZWsvS2NvbmZpZw0KPiA+ICsrKyBiL2RyaXZlcnMvc29jL21lZGlh
dGVrL0tjb25maWcNCj4gPiBAQCAtMTAsMjEgKzEwLDEyIEBAIGNvbmZpZyBNVEtfQ01EUQ0KPiA+
ICAgICAgICAgZGVwZW5kcyBvbiBBUkNIX01FRElBVEVLIHx8IENPTVBJTEVfVEVTVA0KPiA+ICAg
ICAgICAgc2VsZWN0IE1BSUxCT1gNCj4gPiAgICAgICAgIHNlbGVjdCBNVEtfQ01EUV9NQk9YDQo+
ID4gLSAgICAgICBzZWxlY3QgTVRLX0lORlJBQ0ZHDQo+ID4gICAgICAgICBoZWxwDQo+ID4gICAg
ICAgICAgIFNheSB5ZXMgaGVyZSB0byBhZGQgc3VwcG9ydCBmb3IgdGhlIE1lZGlhVGVrIENvbW1h
bmQgUXVldWUgKENNRFEpDQo+ID4gICAgICAgICAgIGRyaXZlci4gVGhlIENNRFEgaXMgdXNlZCB0
byBoZWxwIHJlYWQvd3JpdGUgcmVnaXN0ZXJzIHdpdGggY3JpdGljYWwNCj4gPiAgICAgICAgICAg
dGltZSBsaW1pdGF0aW9uLCBzdWNoIGFzIHVwZGF0aW5nIGRpc3BsYXkgY29uZmlndXJhdGlvbiBk
dXJpbmcgdGhlDQo+ID4gICAgICAgICAgIHZibGFuay4NCj4gPg0KPiA+IC1jb25maWcgTVRLX0lO
RlJBQ0ZHDQo+ID4gLSAgICAgICBib29sICJNZWRpYVRlayBJTkZSQUNGRyBTdXBwb3J0Ig0KPiA+
IC0gICAgICAgc2VsZWN0IFJFR01BUA0KPiA+IC0gICAgICAgaGVscA0KPiA+IC0gICAgICAgICBT
YXkgeWVzIGhlcmUgdG8gYWRkIHN1cHBvcnQgZm9yIHRoZSBNZWRpYVRlayBJTkZSQUNGRyBjb250
cm9sbGVyLiBUaGUNCj4gPiAtICAgICAgICAgSU5GUkFDRkcgY29udHJvbGxlciBjb250YWlucyB2
YXJpb3VzIGluZnJhc3RydWN0dXJlIHJlZ2lzdGVycyBub3QNCj4gPiAtICAgICAgICAgZGlyZWN0
bHkgYXNzb2NpYXRlZCB0byBhbnkgZGV2aWNlLg0KPiA+IC0NCj4gPiAgY29uZmlnIE1US19QTUlD
X1dSQVANCj4gPiAgICAgICAgIHRyaXN0YXRlICJNZWRpYVRlayBQTUlDIFdyYXBwZXIgU3VwcG9y
dCINCj4gPiAgICAgICAgIGRlcGVuZHMgb24gUkVTRVRfQ09OVFJPTExFUg0KPiA+IEBAIC0zOCw3
ICsyOSw2IEBAIGNvbmZpZyBNVEtfU0NQU1lTDQo+ID4gICAgICAgICBib29sICJNZWRpYVRlayBT
Q1BTWVMgU3VwcG9ydCINCj4gPiAgICAgICAgIGRlZmF1bHQgQVJDSF9NRURJQVRFSw0KPiA+ICAg
ICAgICAgc2VsZWN0IFJFR01BUA0KPiA+IC0gICAgICAgc2VsZWN0IE1US19JTkZSQUNGRw0KPiA+
ICAgICAgICAgc2VsZWN0IFBNX0dFTkVSSUNfRE9NQUlOUyBpZiBQTQ0KPiA+ICAgICAgICAgaGVs
cA0KPiA+ICAgICAgICAgICBTYXkgeWVzIGhlcmUgdG8gYWRkIHN1cHBvcnQgZm9yIHRoZSBNZWRp
YVRlayBTQ1BTWVMgcG93ZXIgZG9tYWluDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL21l
ZGlhdGVrL01ha2VmaWxlIGIvZHJpdmVycy9zb2MvbWVkaWF0ZWsvTWFrZWZpbGUNCj4gPiBpbmRl
eCBiMDE3MzMwLi4yYjJjMjUzNyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3NvYy9tZWRpYXRl
ay9NYWtlZmlsZQ0KPiA+ICsrKyBiL2RyaXZlcnMvc29jL21lZGlhdGVrL01ha2VmaWxlDQo+ID4g
QEAgLTEsNSArMSw0IEBADQo+ID4gICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAt
b25seQ0KPiA+ICBvYmotJChDT05GSUdfTVRLX0NNRFEpICs9IG10ay1jbWRxLWhlbHBlci5vDQo+
ID4gLW9iai0kKENPTkZJR19NVEtfSU5GUkFDRkcpICs9IG10ay1pbmZyYWNmZy5vDQo+ID4gIG9i
ai0kKENPTkZJR19NVEtfUE1JQ19XUkFQKSArPSBtdGstcG1pYy13cmFwLm8NCj4gPiAgb2JqLSQo
Q09ORklHX01US19TQ1BTWVMpICs9IG10ay1zY3BzeXMubw0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3NvYy9tZWRpYXRlay9tdGstaW5mcmFjZmcuYyBiL2RyaXZlcnMvc29jL21lZGlhdGVrL210
ay1pbmZyYWNmZy5jDQo+ID4gZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMzQx
YzdhYy4uMDAwMDAwMA0KPiA+IC0tLSBhL2RyaXZlcnMvc29jL21lZGlhdGVrL210ay1pbmZyYWNm
Zy5jDQo+ID4gKysrIC9kZXYvbnVsbA0KPiA+IEBAIC0xLDc5ICswLDAgQEANCj4gPiAtLy8gU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQ0KPiA+IC0vKg0KPiA+IC0gKiBDb3B5
cmlnaHQgKGMpIDIwMTUgUGVuZ3V0cm9uaXgsIFNhc2NoYSBIYXVlciA8a2VybmVsQHBlbmd1dHJv
bml4LmRlPg0KPiA+IC0gKi8NCj4gPiAtDQo+ID4gLSNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4N
Cj4gPiAtI2luY2x1ZGUgPGxpbnV4L2ppZmZpZXMuaD4NCj4gPiAtI2luY2x1ZGUgPGxpbnV4L3Jl
Z21hcC5oPg0KPiA+IC0jaW5jbHVkZSA8bGludXgvc29jL21lZGlhdGVrL2luZnJhY2ZnLmg+DQo+
ID4gLSNpbmNsdWRlIDxhc20vcHJvY2Vzc29yLmg+DQo+ID4gLQ0KPiA+IC0jZGVmaW5lIE1US19Q
T0xMX0RFTEFZX1VTICAgMTANCj4gPiAtI2RlZmluZSBNVEtfUE9MTF9USU1FT1VUICAgIChqaWZm
aWVzX3RvX3VzZWNzKEhaKSkNCj4gPiAtDQo+ID4gLSNkZWZpbmUgSU5GUkFfVE9QQVhJX1BST1RF
Q1RFTiAgICAgICAgIDB4MDIyMA0KPiA+IC0jZGVmaW5lIElORlJBX1RPUEFYSV9QUk9URUNUU1RB
MSAgICAgICAweDAyMjgNCj4gPiAtI2RlZmluZSBJTkZSQV9UT1BBWElfUFJPVEVDVEVOX1NFVCAg
ICAgMHgwMjYwDQo+ID4gLSNkZWZpbmUgSU5GUkFfVE9QQVhJX1BST1RFQ1RFTl9DTFIgICAgIDB4
MDI2NA0KPiA+IC0NCj4gPiAtLyoqDQo+ID4gLSAqIG10a19pbmZyYWNmZ19zZXRfYnVzX3Byb3Rl
Y3Rpb24gLSBlbmFibGUgYnVzIHByb3RlY3Rpb24NCj4gPiAtICogQHJlZ21hcDogVGhlIGluZnJh
Y2ZnIHJlZ21hcA0KPiA+IC0gKiBAbWFzazogVGhlIG1hc2sgY29udGFpbmluZyB0aGUgcHJvdGVj
dGlvbiBiaXRzIHRvIGJlIGVuYWJsZWQuDQo+ID4gLSAqIEByZWdfdXBkYXRlOiBUaGUgYm9vbGVh
biBmbGFnIGRldGVybWluZXMgdG8gc2V0IHRoZSBwcm90ZWN0aW9uIGJpdHMNCj4gPiAtICogICAg
ICAgICAgICAgIGJ5IHJlZ21hcF91cGRhdGVfYml0cyB3aXRoIGVuYWJsZSByZWdpc3RlcihQUk9U
RUNURU4pIG9yDQo+ID4gLSAqICAgICAgICAgICAgICBieSByZWdtYXBfd3JpdGUgd2l0aCBzZXQg
cmVnaXN0ZXIoUFJPVEVDVEVOX1NFVCkuDQo+ID4gLSAqDQo+ID4gLSAqIFRoaXMgZnVuY3Rpb24g
ZW5hYmxlcyB0aGUgYnVzIHByb3RlY3Rpb24gYml0cyBmb3IgZGlzYWJsZWQgcG93ZXINCj4gPiAt
ICogZG9tYWlucyBzbyB0aGF0IHRoZSBzeXN0ZW0gZG9lcyBub3QgaGFuZyB3aGVuIHNvbWUgdW5p
dCBhY2Nlc3NlcyB0aGUNCj4gPiAtICogYnVzIHdoaWxlIGluIHBvd2VyIGRvd24uDQo+ID4gLSAq
Lw0KPiA+IC1pbnQgbXRrX2luZnJhY2ZnX3NldF9idXNfcHJvdGVjdGlvbihzdHJ1Y3QgcmVnbWFw
ICppbmZyYWNmZywgdTMyIG1hc2ssDQo+ID4gLSAgICAgICAgICAgICAgIGJvb2wgcmVnX3VwZGF0
ZSkNCj4gPiAtew0KPiA+IC0gICAgICAgdTMyIHZhbDsNCj4gPiAtICAgICAgIGludCByZXQ7DQo+
ID4gLQ0KPiA+IC0gICAgICAgaWYgKHJlZ191cGRhdGUpDQo+ID4gLSAgICAgICAgICAgICAgIHJl
Z21hcF91cGRhdGVfYml0cyhpbmZyYWNmZywgSU5GUkFfVE9QQVhJX1BST1RFQ1RFTiwgbWFzaywN
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1hc2spOw0KPiA+IC0gICAgICAg
ZWxzZQ0KPiA+IC0gICAgICAgICAgICAgICByZWdtYXBfd3JpdGUoaW5mcmFjZmcsIElORlJBX1RP
UEFYSV9QUk9URUNURU5fU0VULCBtYXNrKTsNCj4gPiAtDQo+ID4gLSAgICAgICByZXQgPSByZWdt
YXBfcmVhZF9wb2xsX3RpbWVvdXQoaW5mcmFjZmcsIElORlJBX1RPUEFYSV9QUk9URUNUU1RBMSwN
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2YWwsICh2YWwgJiBt
YXNrKSA9PSBtYXNrLA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IE1US19QT0xMX0RFTEFZX1VTLCBNVEtfUE9MTF9USU1FT1VUKTsNCj4gPiAtDQo+ID4gLSAgICAg
ICByZXR1cm4gcmV0Ow0KPiA+IC19DQo+ID4gLQ0KPiA+IC0vKioNCj4gPiAtICogbXRrX2luZnJh
Y2ZnX2NsZWFyX2J1c19wcm90ZWN0aW9uIC0gZGlzYWJsZSBidXMgcHJvdGVjdGlvbg0KPiA+IC0g
KiBAcmVnbWFwOiBUaGUgaW5mcmFjZmcgcmVnbWFwDQo+ID4gLSAqIEBtYXNrOiBUaGUgbWFzayBj
b250YWluaW5nIHRoZSBwcm90ZWN0aW9uIGJpdHMgdG8gYmUgZGlzYWJsZWQuDQo+ID4gLSAqIEBy
ZWdfdXBkYXRlOiBUaGUgYm9vbGVhbiBmbGFnIGRldGVybWluZXMgdG8gY2xlYXIgdGhlIHByb3Rl
Y3Rpb24gYml0cw0KPiA+IC0gKiAgICAgICAgICAgICAgYnkgcmVnbWFwX3VwZGF0ZV9iaXRzIHdp
dGggZW5hYmxlIHJlZ2lzdGVyKFBST1RFQ1RFTikgb3INCj4gPiAtICogICAgICAgICAgICAgIGJ5
IHJlZ21hcF93cml0ZSB3aXRoIGNsZWFyIHJlZ2lzdGVyKFBST1RFQ1RFTl9DTFIpLg0KPiA+IC0g
Kg0KPiA+IC0gKiBUaGlzIGZ1bmN0aW9uIGRpc2FibGVzIHRoZSBidXMgcHJvdGVjdGlvbiBiaXRz
IHByZXZpb3VzbHkgZW5hYmxlZCB3aXRoDQo+ID4gLSAqIG10a19pbmZyYWNmZ19zZXRfYnVzX3By
b3RlY3Rpb24uDQo+ID4gLSAqLw0KPiA+IC0NCj4gPiAtaW50IG10a19pbmZyYWNmZ19jbGVhcl9i
dXNfcHJvdGVjdGlvbihzdHJ1Y3QgcmVnbWFwICppbmZyYWNmZywgdTMyIG1hc2ssDQo+ID4gLSAg
ICAgICAgICAgICAgIGJvb2wgcmVnX3VwZGF0ZSkNCj4gPiAtew0KPiA+IC0gICAgICAgaW50IHJl
dDsNCj4gPiAtICAgICAgIHUzMiB2YWw7DQo+ID4gLQ0KPiA+IC0gICAgICAgaWYgKHJlZ191cGRh
dGUpDQo+ID4gLSAgICAgICAgICAgICAgIHJlZ21hcF91cGRhdGVfYml0cyhpbmZyYWNmZywgSU5G
UkFfVE9QQVhJX1BST1RFQ1RFTiwgbWFzaywgMCk7DQo+ID4gLSAgICAgICBlbHNlDQo+ID4gLSAg
ICAgICAgICAgICAgIHJlZ21hcF93cml0ZShpbmZyYWNmZywgSU5GUkFfVE9QQVhJX1BST1RFQ1RF
Tl9DTFIsIG1hc2spOw0KPiA+IC0NCj4gPiAtICAgICAgIHJldCA9IHJlZ21hcF9yZWFkX3BvbGxf
dGltZW91dChpbmZyYWNmZywgSU5GUkFfVE9QQVhJX1BST1RFQ1RTVEExLA0KPiA+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhbCwgISh2YWwgJiBtYXNrKSwNCj4gPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBNVEtfUE9MTF9ERUxBWV9VUywg
TVRLX1BPTExfVElNRU9VVCk7DQo+ID4gLQ0KPiA+IC0gICAgICAgcmV0dXJuIHJldDsNCj4gPiAt
fQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstc2Nwc3lzLmMgYi9k
cml2ZXJzL3NvYy9tZWRpYXRlay9tdGstc2Nwc3lzLmMNCj4gPiBpbmRleCBkYjM1YTI4Li5lNTBh
NTY4IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvc29jL21lZGlhdGVrL210ay1zY3BzeXMuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvc29jL21lZGlhdGVrL210ay1zY3BzeXMuYw0KPiA+IEBAIC0xMCw4
ICsxMCw5IEBADQo+ID4gICNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4NCj4gPiAgI2luY2x1
ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgvcG1fZG9t
YWluLmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4NCj4gPiAgI2luY2x1ZGUgPGxp
bnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPg0KPiA+IC0jaW5jbHVkZSA8bGludXgvc29jL21lZGlh
dGVrL2luZnJhY2ZnLmg+DQo+ID4gKyNpbmNsdWRlICJzY3BzeXMuaCINCj4gDQo+IEFyZSB0aGUg
ZGVmaW5lcyBpbiB0aGlzIGluY2x1ZGUgZ29pbmcgdG8gYmUgdXNlZCBzb21ld2hlcmUgZWxzZT8N
Cj4gT3RoZXJ3aXNlLCB5b3UgY2FuIGFkZCB0aGUgZGVmaW5lcyBpbiB0aGlzIGZpbGUgZGlyZWN0
bHkuDQo+IA0KDQpTdXBwb3NlZCB0byBiZSBOTywgc28gSSdsbCBhZGQgZGlyZWN0bHkgaW4gdGhp
cyBmaWxlIGluIG5leHQgdmVyc2lvbi4NCg0KPiANCj4gPg0KPiA+ICAjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvcG93ZXIvbXQyNzAxLXBvd2VyLmg+DQo+ID4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9w
b3dlci9tdDI3MTItcG93ZXIuaD4NCj4gPiBAQCAtMjUxLDI1ICsyNTIsNTAgQEAgc3RhdGljIGlu
dCBzY3BzeXNfc3JhbV9kaXNhYmxlKHN0cnVjdCBzY3BfZG9tYWluICpzY3BkLCB2b2lkIF9faW9t
ZW0gKmN0bF9hZGRyKQ0KPiA+ICBzdGF0aWMgaW50IHNjcHN5c19idXNfcHJvdGVjdF9lbmFibGUo
c3RydWN0IHNjcF9kb21haW4gKnNjcGQpDQo+ID4gIHsNCj4gPiAgICAgICAgIHN0cnVjdCBzY3Ag
KnNjcCA9IHNjcGQtPnNjcDsNCj4gPiArICAgICAgIHN0cnVjdCByZWdtYXAgKmluZnJhY2ZnID0g
c2NwLT5pbmZyYWNmZzsNCj4gPiArICAgICAgIHUzMiBtYXNrID0gc2NwZC0+ZGF0YS0+YnVzX3By
b3RfbWFzazsNCj4gPiArICAgICAgIGJvb2wgcmVnX3VwZGF0ZSA9IHNjcC0+YnVzX3Byb3RfcmVn
X3VwZGF0ZTsNCj4gPiArICAgICAgIHUzMiB2YWw7DQo+ID4gKyAgICAgICBpbnQgcmV0Ow0KPiA+
DQo+ID4gLSAgICAgICBpZiAoIXNjcGQtPmRhdGEtPmJ1c19wcm90X21hc2spDQo+ID4gKyAgICAg
ICBpZiAoIW1hc2spDQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiAwOw0KPiA+DQo+ID4gLSAg
ICAgICByZXR1cm4gbXRrX2luZnJhY2ZnX3NldF9idXNfcHJvdGVjdGlvbihzY3AtPmluZnJhY2Zn
LA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIHNjcGQtPmRhdGEtPmJ1c19wcm90X21hc2ss
DQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgc2NwLT5idXNfcHJvdF9yZWdfdXBkYXRlKTsN
Cj4gPiArICAgICAgIGlmIChyZWdfdXBkYXRlKQ0KPiA+ICsgICAgICAgICAgICAgICByZWdtYXBf
dXBkYXRlX2JpdHMoaW5mcmFjZmcsIElORlJBX1RPUEFYSV9QUk9URUNURU4sIG1hc2ssDQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtYXNrKTsNCj4gPiArICAgICAgIGVsc2UN
Cj4gPiArICAgICAgICAgICAgICAgcmVnbWFwX3dyaXRlKGluZnJhY2ZnLCBJTkZSQV9UT1BBWElf
UFJPVEVDVEVOX1NFVCwgbWFzayk7DQo+ID4gKw0KPiA+ICsgICAgICAgcmV0ID0gcmVnbWFwX3Jl
YWRfcG9sbF90aW1lb3V0KGluZnJhY2ZnLCBJTkZSQV9UT1BBWElfUFJPVEVDVFNUQTEsDQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFsLCAodmFsICYgbWFzaykg
PT0gbWFzaywNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBNVEtf
UE9MTF9ERUxBWV9VUywgTVRLX1BPTExfVElNRU9VVCk7DQo+ID4gKw0KPiA+ICsgICAgICAgcmV0
dXJuIHJldDsNCj4gPiAgfQ0KPiA+DQo+ID4gIHN0YXRpYyBpbnQgc2Nwc3lzX2J1c19wcm90ZWN0
X2Rpc2FibGUoc3RydWN0IHNjcF9kb21haW4gKnNjcGQpDQo+ID4gIHsNCj4gPiAgICAgICAgIHN0
cnVjdCBzY3AgKnNjcCA9IHNjcGQtPnNjcDsNCj4gPiArICAgICAgIHN0cnVjdCByZWdtYXAgKmlu
ZnJhY2ZnID0gc2NwLT5pbmZyYWNmZzsNCj4gPiArICAgICAgIHUzMiBtYXNrID0gc2NwZC0+ZGF0
YS0+YnVzX3Byb3RfbWFzazsNCj4gPiArICAgICAgIGJvb2wgcmVnX3VwZGF0ZSA9IHNjcC0+YnVz
X3Byb3RfcmVnX3VwZGF0ZTsNCj4gPiArICAgICAgIHUzMiB2YWw7DQo+ID4gKyAgICAgICBpbnQg
cmV0Ow0KPiA+DQo+ID4gLSAgICAgICBpZiAoIXNjcGQtPmRhdGEtPmJ1c19wcm90X21hc2spDQo+
ID4gKyAgICAgICBpZiAoIW1hc2spDQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiAwOw0KPiA+
DQo+ID4gLSAgICAgICByZXR1cm4gbXRrX2luZnJhY2ZnX2NsZWFyX2J1c19wcm90ZWN0aW9uKHNj
cC0+aW5mcmFjZmcsDQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgc2NwZC0+ZGF0YS0+YnVz
X3Byb3RfbWFzaywNCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICBzY3AtPmJ1c19wcm90X3Jl
Z191cGRhdGUpOw0KPiA+ICsgICAgICAgaWYgKHJlZ191cGRhdGUpDQo+ID4gKyAgICAgICAgICAg
ICAgIHJlZ21hcF91cGRhdGVfYml0cyhpbmZyYWNmZywgSU5GUkFfVE9QQVhJX1BST1RFQ1RFTiwg
bWFzaywgMCk7DQo+ID4gKyAgICAgICBlbHNlDQo+ID4gKyAgICAgICAgICAgICAgIHJlZ21hcF93
cml0ZShpbmZyYWNmZywgSU5GUkFfVE9QQVhJX1BST1RFQ1RFTl9DTFIsIG1hc2spOw0KPiA+ICsN
Cj4gPiArICAgICAgIHJldCA9IHJlZ21hcF9yZWFkX3BvbGxfdGltZW91dChpbmZyYWNmZywgSU5G
UkFfVE9QQVhJX1BST1RFQ1RTVEExLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHZhbCwgISh2YWwgJiBtYXNrKSwNCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBNVEtfUE9MTF9ERUxBWV9VUywgTVRLX1BPTExfVElNRU9VVCk7DQo+
ID4gKw0KPiA+ICsgICAgICAgcmV0dXJuIHJldDsNCj4gPiAgfQ0KPiA+DQo+ID4gIHN0YXRpYyBp
bnQgc2Nwc3lzX3Bvd2VyX29uKHN0cnVjdCBnZW5lcmljX3BtX2RvbWFpbiAqZ2VucGQpDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL21lZGlhdGVrL3NjcHN5cy5oIGIvZHJpdmVycy9zb2Mv
bWVkaWF0ZWsvc2Nwc3lzLmgNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAw
MDAwMDAuLmFkMjU1OWINCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIvZHJpdmVycy9zb2Mv
bWVkaWF0ZWsvc2Nwc3lzLmgNCj4gPiBAQCAtMCwwICsxLDI4IEBADQo+ID4gKy8qIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wICovDQo+ID4gKyNpZm5kZWYgX19TT0NfTUVESUFURUtf
U0NQU1lTX0gNCj4gPiArI2RlZmluZSBfX1NPQ19NRURJQVRFS19TQ1BTWVNfSA0KPiA+ICsNCj4g
PiArI2RlZmluZSBJTkZSQV9UT1BBWElfUFJPVEVDVEVOICAgICAgICAgMHgwMjIwDQo+ID4gKyNk
ZWZpbmUgSU5GUkFfVE9QQVhJX1BST1RFQ1RTVEExICAgICAgIDB4MDIyOA0KPiA+ICsjZGVmaW5l
IElORlJBX1RPUEFYSV9QUk9URUNURU5fU0VUICAgICAweDAyNjANCj4gPiArI2RlZmluZSBJTkZS
QV9UT1BBWElfUFJPVEVDVEVOX0NMUiAgICAgMHgwMjY0DQo+ID4gKw0KPiA+ICsjZGVmaW5lIE1U
MjcwMV9UT1BfQVhJX1BST1RfRU5fTU1fTTAgICAgICAgICAgIEJJVCgxKQ0KPiA+ICsjZGVmaW5l
IE1UMjcwMV9UT1BfQVhJX1BST1RfRU5fQ09OTl9NICAgICAgICAgIEJJVCgyKQ0KPiA+ICsjZGVm
aW5lIE1UMjcwMV9UT1BfQVhJX1BST1RfRU5fQ09OTl9TICAgICAgICAgIEJJVCg4KQ0KPiA+ICsN
Cj4gPiArI2RlZmluZSBNVDc2MjJfVE9QX0FYSV9QUk9UX0VOX0VUSFNZUyAgICAgICAgICAoQklU
KDMpIHwgQklUKDE3KSkNCj4gPiArI2RlZmluZSBNVDc2MjJfVE9QX0FYSV9QUk9UX0VOX0hJRjAg
ICAgICAgICAgICAoQklUKDI0KSB8IEJJVCgyNSkpDQo+ID4gKyNkZWZpbmUgTVQ3NjIyX1RPUF9B
WElfUFJPVF9FTl9ISUYxICAgICAgICAgICAgKEJJVCgyNikgfCBCSVQoMjcpIHwgXA0KPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBCSVQoMjgpKQ0K
PiA+ICsjZGVmaW5lIE1UNzYyMl9UT1BfQVhJX1BST1RfRU5fV0IgICAgICAgICAgICAgIChCSVQo
MikgfCBCSVQoNikgfCBcDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIEJJVCg3KSB8IEJJVCg4KSkNCj4gPiArDQo+ID4gKyNkZWZpbmUgTVQ4MTcz
X1RPUF9BWElfUFJPVF9FTl9NTV9NMCAgICAgICAgICAgQklUKDEpDQo+ID4gKyNkZWZpbmUgTVQ4
MTczX1RPUF9BWElfUFJPVF9FTl9NTV9NMSAgICAgICAgICAgQklUKDIpDQo+ID4gKyNkZWZpbmUg
TVQ4MTczX1RPUF9BWElfUFJPVF9FTl9NRkdfUyAgICAgICAgICAgQklUKDE0KQ0KPiA+ICsjZGVm
aW5lIE1UODE3M19UT1BfQVhJX1BST1RfRU5fTUZHX00wICAgICAgICAgIEJJVCgyMSkNCj4gPiAr
I2RlZmluZSBNVDgxNzNfVE9QX0FYSV9QUk9UX0VOX01GR19NMSAgICAgICAgICBCSVQoMjIpDQo+
ID4gKyNkZWZpbmUgTVQ4MTczX1RPUF9BWElfUFJPVF9FTl9NRkdfU05PT1BfT1VUICAgQklUKDIz
KQ0KPiA+ICsNCj4gPiArI2VuZGlmIC8qIF9fU09DX01FRElBVEVLX1NDUFNZU19IICovDQo+ID4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvc29jL21lZGlhdGVrL2luZnJhY2ZnLmggYi9pbmNs
dWRlL2xpbnV4L3NvYy9tZWRpYXRlay9pbmZyYWNmZy5oDQo+ID4gZGVsZXRlZCBmaWxlIG1vZGUg
MTAwNjQ0DQo+ID4gaW5kZXggZmQyNWYwMS4uMDAwMDAwMA0KPiA+IC0tLSBhL2luY2x1ZGUvbGlu
dXgvc29jL21lZGlhdGVrL2luZnJhY2ZnLmgNCj4gPiArKysgL2Rldi9udWxsDQo+ID4gQEAgLTEs
MzkgKzAsMCBAQA0KPiA+IC0vKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCAqLw0K
PiA+IC0jaWZuZGVmIF9fU09DX01FRElBVEVLX0lORlJBQ0ZHX0gNCj4gPiAtI2RlZmluZSBfX1NP
Q19NRURJQVRFS19JTkZSQUNGR19IDQo+ID4gLQ0KPiA+IC0jZGVmaW5lIE1UODE3M19UT1BfQVhJ
X1BST1RfRU5fTUNJX00yICAgICAgICAgIEJJVCgwKQ0KPiA+IC0jZGVmaW5lIE1UODE3M19UT1Bf
QVhJX1BST1RfRU5fTU1fTTAgICAgICAgICAgIEJJVCgxKQ0KPiA+IC0jZGVmaW5lIE1UODE3M19U
T1BfQVhJX1BST1RfRU5fTU1fTTEgICAgICAgICAgIEJJVCgyKQ0KPiA+IC0jZGVmaW5lIE1UODE3
M19UT1BfQVhJX1BST1RfRU5fTU1BUEJfUyAgICAgICAgIEJJVCg2KQ0KPiA+IC0jZGVmaW5lIE1U
ODE3M19UT1BfQVhJX1BST1RfRU5fTDJDX00yICAgICAgICAgIEJJVCg5KQ0KPiA+IC0jZGVmaW5l
IE1UODE3M19UT1BfQVhJX1BST1RfRU5fTDJTU19TTUkgICAgICAgICAgICAgICAgQklUKDExKQ0K
PiA+IC0jZGVmaW5lIE1UODE3M19UT1BfQVhJX1BST1RfRU5fTDJTU19BREQgICAgICAgICAgICAg
ICAgQklUKDEyKQ0KPiA+IC0jZGVmaW5lIE1UODE3M19UT1BfQVhJX1BST1RfRU5fQ0NJX00yICAg
ICAgICAgIEJJVCgxMykNCj4gPiAtI2RlZmluZSBNVDgxNzNfVE9QX0FYSV9QUk9UX0VOX01GR19T
ICAgICAgICAgICBCSVQoMTQpDQo+ID4gLSNkZWZpbmUgTVQ4MTczX1RPUF9BWElfUFJPVF9FTl9Q
RVJJX00wICAgICAgICAgQklUKDE1KQ0KPiA+IC0jZGVmaW5lIE1UODE3M19UT1BfQVhJX1BST1Rf
RU5fUEVSSV9NMSAgICAgICAgIEJJVCgxNikNCj4gPiAtI2RlZmluZSBNVDgxNzNfVE9QX0FYSV9Q
Uk9UX0VOX0RFQlVHU1lTICAgICAgICAgICAgICAgIEJJVCgxNykNCj4gPiAtI2RlZmluZSBNVDgx
NzNfVE9QX0FYSV9QUk9UX0VOX0NRX0RNQSAgICAgICAgICBCSVQoMTgpDQo+ID4gLSNkZWZpbmUg
TVQ4MTczX1RPUF9BWElfUFJPVF9FTl9HQ1BVICAgICAgICAgICAgQklUKDE5KQ0KPiA+IC0jZGVm
aW5lIE1UODE3M19UT1BfQVhJX1BST1RfRU5fSU9NTVUgICAgICAgICAgIEJJVCgyMCkNCj4gPiAt
I2RlZmluZSBNVDgxNzNfVE9QX0FYSV9QUk9UX0VOX01GR19NMCAgICAgICAgICBCSVQoMjEpDQo+
ID4gLSNkZWZpbmUgTVQ4MTczX1RPUF9BWElfUFJPVF9FTl9NRkdfTTEgICAgICAgICAgQklUKDIy
KQ0KPiA+IC0jZGVmaW5lIE1UODE3M19UT1BfQVhJX1BST1RfRU5fTUZHX1NOT09QX09VVCAgIEJJ
VCgyMykNCj4gPiAtDQo+ID4gLSNkZWZpbmUgTVQyNzAxX1RPUF9BWElfUFJPVF9FTl9NTV9NMCAg
ICAgICAgICAgQklUKDEpDQo+ID4gLSNkZWZpbmUgTVQyNzAxX1RPUF9BWElfUFJPVF9FTl9DT05O
X00gICAgICAgICAgQklUKDIpDQo+ID4gLSNkZWZpbmUgTVQyNzAxX1RPUF9BWElfUFJPVF9FTl9D
T05OX1MgICAgICAgICAgQklUKDgpDQo+ID4gLQ0KPiA+IC0jZGVmaW5lIE1UNzYyMl9UT1BfQVhJ
X1BST1RfRU5fRVRIU1lTICAgICAgICAgIChCSVQoMykgfCBCSVQoMTcpKQ0KPiA+IC0jZGVmaW5l
IE1UNzYyMl9UT1BfQVhJX1BST1RfRU5fSElGMCAgICAgICAgICAgIChCSVQoMjQpIHwgQklUKDI1
KSkNCj4gPiAtI2RlZmluZSBNVDc2MjJfVE9QX0FYSV9QUk9UX0VOX0hJRjEgICAgICAgICAgICAo
QklUKDI2KSB8IEJJVCgyNykgfCBcDQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIEJJVCgyOCkpDQo+ID4gLSNkZWZpbmUgTVQ3NjIyX1RPUF9BWElf
UFJPVF9FTl9XQiAgICAgICAgICAgICAgKEJJVCgyKSB8IEJJVCg2KSB8IFwNCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQklUKDcpIHwgQklUKDgp
KQ0KPiA+IC0NCj4gPiAtaW50IG10a19pbmZyYWNmZ19zZXRfYnVzX3Byb3RlY3Rpb24oc3RydWN0
IHJlZ21hcCAqaW5mcmFjZmcsIHUzMiBtYXNrLA0KPiA+IC0gICAgICAgICAgICAgICBib29sIHJl
Z191cGRhdGUpOw0KPiA+IC1pbnQgbXRrX2luZnJhY2ZnX2NsZWFyX2J1c19wcm90ZWN0aW9uKHN0
cnVjdCByZWdtYXAgKmluZnJhY2ZnLCB1MzIgbWFzaywNCj4gPiAtICAgICAgICAgICAgICAgYm9v
bCByZWdfdXBkYXRlKTsNCj4gPiAtI2VuZGlmIC8qIF9fU09DX01FRElBVEVLX0lORlJBQ0ZHX0gg
Ki8NCj4gPiAtLQ0KPiA+IDEuOC4xLjEuZGlydHkNCj4gPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IExpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlz
dA0KPiA+IExpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gPiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrDQo+IA0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBMaW51eC1t
ZWRpYXRlayBtYWlsaW5nIGxpc3QNCj4gTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9y
Zw0KPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1l
ZGlhdGVrDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
