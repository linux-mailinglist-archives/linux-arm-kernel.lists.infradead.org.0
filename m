Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C7B86249
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abE6T123tj44nJbXrmit5Llav/LoM9VxDsaqLHv1RpE=; b=HPutDgsXp4Ae3j
	MformWHTk5zvzFlI70Y94fxzz9p6VAT4RbD8+aX4c0hlanVd2QpnoJL1OEko9QlV5tTlAlkbq3vrM
	Z0EoMuzx7jUmQmGtB2Rcsj2IKbDGeJ+wGQ83QR0AGQxQCW5UhJdqnzyrAx9Ey6IoEN5tMve7kbxmJ
	XHxk8+9LJK5TaAxFoV9HX+JF/0+QghvcJtRx3E7OrN2WvunmCtGDIP2tA2FQIdq/UacY39s5H1oGg
	oX0WWpDP1ixeSgr2Ro5Kgavh/UHhC7QQ9TdP+/KwPXFNuxcmRduPMefV5sRPBKqpXXu6vNuBXwzE2
	E7yPDj6BA0g8Jzqdd+UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhuL-0002hM-Ll; Thu, 08 Aug 2019 12:52:41 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhu6-0002gJ-TT
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:52:29 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x78CqAhA014171; Thu, 8 Aug 2019 14:52:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=hD73ej+YVgpOrZVRJQW1j5ij+6trnXDhs+hfh12O1uk=;
 b=TbW7pWmHqUKCWNjtNt+7DI9mdwlwB9dAzdBgQBtOxq4tHSnDcsbC6rwHt6zGMOibBd3e
 Yxwy33RdcTwbRXRhqxWMxVgV99Z8kOSMhXjytq2EAb0NLBCUJznJIrInavxY/3cVgZzI
 VGfF9b1IHOBpRgcXKHif1nAVGAGr03rNxx6781letVadSsIkLoQyeI31G+Pd2/K51uqT
 PfREJuIGehNAJCi3V892VcQvXBryAxrvM/kUCCBGT4h/UfDozFkNlnKEZZHFjWF2Gevx
 FdCxwMwyXrktRy3QJlzmwo0ulVhetJ7VsdkvL1ihrwBPtrxfF0fvCNl7S/iXSWNVads8 BA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u515mw9rt-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 08 Aug 2019 14:52:10 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A9F6631;
 Thu,  8 Aug 2019 12:52:06 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8E4FA2B1281;
 Thu,  8 Aug 2019 14:52:06 +0200 (CEST)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 8 Aug
 2019 14:52:06 +0200
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Thu, 8 Aug 2019 14:52:06 +0200
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: Suman Anna <s-anna@ti.com>, Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
Thread-Topic: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
Thread-Index: AQHU2bSOZtnkIyxqbUq77/gp1YrMkqbnZZ+AgAWakoCAAJZugIABj+mAgAAMDgCAADTBgIAAuucAgACApoCAAVhTAA==
Date: Thu, 8 Aug 2019 12:52:06 +0000
Message-ID: <d8d4a172-ec18-a758-d994-8e05bb6a1f48@st.com>
References: <1552492237-28810-1-git-send-email-fabien.dessenne@st.com>
 <20190801191403.GA7234@tuxbook-pro>
 <1a057176-81ab-e302-4375-2717ceef6924@st.com>
 <20190805174659.GA23928@tuxbook-pro>
 <dcd1aeea-cffe-d5fb-af5a-e52efcc2e046@ti.com>
 <20190806182128.GD26807@tuxbook-pro>
 <1aea3d28-29dc-f9de-3b86-cf777e0d5caa@ti.com>
 <02329102-5571-c6c1-b78c-693747133f0e@st.com>
 <f0893b3f-0124-007a-3ca2-831f60ad9a80@ti.com>
In-Reply-To: <f0893b3f-0124-007a-3ca2-831f60ad9a80@ti.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <C1943D2766080E4FB9E0B7F9A09CD4AB@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-08_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_055227_411436_9ECECEC8 
X-CRM114-Status: GOOD (  38.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark
 Rutland <mark.rutland@arm.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Jonathan Corbet <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpPbiAwNy8wOC8yMDE5IDY6MTkgUE0sIFN1bWFuIEFubmEgd3JvdGU6DQo+IEhpIEZhYmllbiwN
Cj4NCj4gT24gOC83LzE5IDM6MzkgQU0sIEZhYmllbiBERVNTRU5ORSB3cm90ZToNCj4+IEhpDQo+
Pg0KPj4gT24gMDYvMDgvMjAxOSAxMTozMCBQTSwgU3VtYW4gQW5uYSB3cm90ZToNCj4+PiBPbiA4
LzYvMTkgMToyMSBQTSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOg0KPj4+PiBPbiBUdWUgMDYgQXVn
IDEwOjM4IFBEVCAyMDE5LCBTdW1hbiBBbm5hIHdyb3RlOg0KPj4+Pg0KPj4+Pj4gSGkgRmFiaWVu
LA0KPj4+Pj4NCj4+Pj4+IE9uIDgvNS8xOSAxMjo0NiBQTSwgQmpvcm4gQW5kZXJzc29uIHdyb3Rl
Og0KPj4+Pj4+IE9uIE1vbiAwNSBBdWcgMDE6NDggUERUIDIwMTksIEZhYmllbiBERVNTRU5ORSB3
cm90ZToNCj4+Pj4+Pg0KPj4+Pj4+PiBPbiAwMS8wOC8yMDE5IDk6MTQgUE0sIEJqb3JuIEFuZGVy
c3NvbiB3cm90ZToNCj4+Pj4+Pj4+IE9uIFdlZCAxMyBNYXIgMDg6NTAgUERUIDIwMTksIEZhYmll
biBEZXNzZW5uZSB3cm90ZToNCj4+Pj4gWy4uXQ0KPj4+Pj4+PiBCLyBUaGlzIHdvdWxkIGludHJv
ZHVjZSBzb21lIGluY29uc2lzdGVuY3kgYmV0d2VlbiB0aGUgdHdvICdyZXF1ZXN0JyBBUEkNCj4+
Pj4+Pj4gd2hpY2ggYXJlIGh3c3Bpbl9sb2NrX3JlcXVlc3QoKSBhbmQgaHdzcGluX2xvY2tfcmVx
dWVzdF9zcGVjaWZpYygpLg0KPj4+Pj4+PiBod3NwaW5fbG9ja19yZXF1ZXN0KCkgbG9va3MgZm9y
IGFuIHVudXNlZCBsb2NrLCBzbyByZXF1ZXN0cyBmb3IgYW4gZXhjbHVzaXZlDQo+Pj4+Pj4+IHVz
YWdlLiBPbiB0aGUgb3RoZXIgc2lkZSwgcmVxdWVzdF9zcGVjaWZpYygpIHdvdWxkIHJlcXVlc3Qg
c2hhcmVkIGxvY2tzLg0KPj4+Pj4+PiBXb3JzdCB0aGUgZm9sbG93aW5nIHNlcXVlbmNlIGNhbiB0
cmFuc2Zvcm0gYW4gZXhjbHVzaXZlIHVzYWdlIGludG8gYSBzaGFyZWQNCj4+Pj4+Pj4NCj4+Pj4+
PiBUaGVyZSBpcyBhbHJlYWR5IGFuIGluY29uc2lzdGVuY3kgaW4gYmV0d2VlbiB0aGVzZTsgYXMg
d2l0aCBhYm92ZSBhbnkNCj4+Pj4+PiBzeXN0ZW0gdGhhdCB1c2VzIGJvdGggcmVxdWVzdCgpIGFu
ZCByZXF1ZXN0X3NwZWNpZmljKCkgd2lsbCBiZSBzdWZmZXJpbmcNCj4+Pj4+PiBmcm9tIGludGVy
bWl0dGVudCBmYWlsdXJlcyBkdWUgdG8gcHJvYmUgb3JkZXJpbmcuDQo+Pj4+Pj4NCj4+Pj4+Pj4g
b25lOg0KPj4+Pj4+PiAgICDCoCAtaHdzcGluX2xvY2tfcmVxdWVzdCgpIC0+IHJldHVybnMgSWQj
MCAoZXhjbHVzaXZlKQ0KPj4+Pj4+PiAgICDCoCAtaHdzcGluX2xvY2tfcmVxdWVzdCgpIC0+IHJl
dHVybnMgSWQjMSAoZXhjbHVzaXZlKQ0KPj4+Pj4+PiAgICDCoCAtaHdzcGluX2xvY2tfcmVxdWVz
dF9zcGVjaWZpYygwKSAtPiByZXR1cm5zIElkIzAgYW5kIG1ha2VzIElkIzAgc2hhcmVkDQo+Pj4+
Pj4+IEhvbmVzdGx5IEkgYW0gbm90IHN1cmUgdGhhdCB0aGlzIGlzIGEgcmVhbCBpc3N1ZSwgYnV0
IGl0J3MgYmV0dGVyIHRvIGhhdmUgaXQNCj4+Pj4+Pj4gaW4gbWluZCBiZWZvcmUgd2UgdGFrZSBh
eSBkZWNpc2lvbg0KPj4+Pj4gV291bGRuJ3QgaXQgYmUgYWN0dWFsbHkgc2ltcGxlciB0byBqdXN0
IGludHJvZHVjZSBhIG5ldyBzcGVjaWZpYyBBUEkNCj4+Pj4+IHZhcmlhbnQgZm9yIHRoaXMsIHNp
bWlsYXIgdG8gdGhlIHJlc2V0IGNvcmUgZm9yIGV4YW1wbGUgKGl0IHVzZXMgYQ0KPj4+Pj4gc2Vw
YXJhdGUgZXhjbHVzaXZlIEFQSSksIHdpdGhvdXQgaGF2aW5nIHRvIG1vZGlmeSB0aGUgYmluZGlu
Z3MgYXQgYWxsLg0KPj4+Pj4gSXQgaXMganVzdCBhIGNhc2Ugb2YgeW91ciBkcml2ZXIgdXNpbmcg
dGhlIHJpZ2h0IEFQSSwgYW5kIHRoZSBjb3JlIGNhbg0KPj4+Pj4gYmUgbW9kaWZpZWQgdG8gdXNl
IHRoZSBhZGRpdGlvbmFsIHRhZyBzZW1hbnRpY3MgYmFzZWQgb24gdGhlIEFQSS4gSXQNCj4+Pj4+
IHNob3VsZCBhdm9pZCBhbnkgY29uZnVzaW9uIHdpdGggc2F5IHVzaW5nIGEgZGlmZmVyZW50IHNl
Y29uZCBjZWxsIHZhbHVlDQo+Pj4+PiBmb3IgdGhlIHNhbWUgbG9jayBpbiB0d28gZGlmZmVyZW50
IG5vZGVzLg0KPj4+Pj4NCj4+Pj4gQnV0IHRoaXMgaW1wbGllcyB0aGF0IHRoZXJlIGlzIGFuIGFj
dHVhbCBuZWVkIHRvIGhvbGQgdGhlc2UgbG9ja3MNCj4+Pj4gZXhjbHVzaXZlbHkuIEdpdmVuIHRo
YXQgdGhleSBhcmUgKGV4Y2VwdCBmb3IgdGhlIHJhdyBjYXNlKSBhbGwgd3JhcHBlZA0KPj4+PiBi
eSBMaW51eCBsb2NraW5nIHByaW1pdGl2ZXMgdGhlcmUgc2hvdWxkbid0IGJlIGEgcHJvYmxlbSBz
aGFyaW5nIGEgbG9jaw0KPj4+PiAoZXhjZXB0IHBvc3NpYmx5IGZvciB0aGUgcmF3IGNhc2UpLg0K
Pj4+IFllcyBhZ3JlZWQsIHRoZSBIV0xPQ0tfUkFXIGFuZCBIV0xPQ0tfSU5fQVRPTUlDIGNhc2Vz
IGFyZSB1bnByb3RlY3RlZC4gSQ0KPj4+IGFtIHN0aWxsIHRyeWluZyB0byB1bmRlcnN0YW5kIGJl
dHRlciB0aGUgdXNlY2FzZSB0byBzZWUgaWYgdGhlIHNhbWUgbG9jaw0KPj4+IGlzIGJlaW5nIG11
bHRpcGxleGVkIGZvciBkaWZmZXJlbnQgcHJvdGVjdGlvbiBjb250ZXh0cywgb3IgaWYgYWxsIG9m
DQo+Pj4gdGhlbSBhcmUgcHJvdGVjdGluZyB0aGUgc2FtZSBjb250ZXh0Lg0KPj4NCj4+IEhlcmUg
YXJlIHR3byBkaWZmZXJlbnQgZXhhbXBsZXMgdGhhdCBleHBsYWluIHRoZSBuZWVkIGZvciBjaGFu
Z2VzLg0KPj4gSW4gYm90aCBjYXNlcyB0aGUgTGludXggY2xpZW50cyBhcmUgdGFsa2luZyB0byBh
IHNpbmdsZSBlbnRpdHkgb24gdGhlDQo+PiByZW1vdGUtc2lkZS4NCj4+DQo+PiBFeGFtcGxlIDE6
DQo+PiAgIMKgwqDCoCBleHRpOiBpbnRlcnJ1cHQtY29udHJvbGxlckA1MDAwZDAwMCB7DQo+PiAg
IMKgwqDCoCDCoMKgwqAgY29tcGF0aWJsZSA9ICJzdCxzdG0zMm1wMS1leHRpIiwgInN5c2NvbiI7
DQo+PiAgIMKgwqDCoCDCoMKgwqAgaW50ZXJydXB0LWNvbnRyb2xsZXI7DQo+PiAgIMKgwqDCoCDC
oMKgwqAgI2ludGVycnVwdC1jZWxscyA9IDwyPjsNCj4+ICAgwqDCoMKgIMKgwqDCoCByZWcgPSA8
MHg1MDAwZDAwMCAweDQwMD47DQo+PiAgIMKgwqDCoCDCoMKgwqAgaHdsb2NrcyA9IDwmaHNlbSAx
PjsNCj4+ICAgwqDCoMKgIH07DQo+PiBUaGUgdHdvIGRyaXZlcnMgKHN0bTMybXAxLWV4dGkgYW5k
IHN5c2NvbikgcmVmZXIgdG8gdGhlIHNhbWUgaHdsb2NrLg0KPj4gV2l0aCB0aGUgY3VycmVudCBo
d3NwaW5sb2NrIGltcGxlbWVudGF0aW9uLCBvbmx5IHRoZSBmaXJzdCBkcml2ZXIgc3VjY2VlZHMN
Cj4+IGluIHJlcXVlc3RpbmcgKGh3c3Bpbl9sb2NrX3JlcXVlc3Rfc3BlY2lmaWMpIHRoZSBod2xv
Y2suIFRoZSBzZWNvbmQgcmVxdWVzdA0KPj4gZmFpbHMuDQo+PiBIZXJlLCB3ZSByZWFsbHkgbmVl
ZCB0byBzaGFyZSB0aGUgaHdsb2NrIGJldHdlZW4gdGhlIHR3byBkcml2ZXJzLg0KPj4gTm90ZTog
aGFyZHdhcmUgc3BpbmxvY2sgc3VwcG9ydCBmb3IgcmVnbWFwIHdhcyAncmVjZW50bHknIGludHJv
ZHVjZWQgaW4gNC4xNQ0KPj4gc2VlIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9w
YXRjaC84NDU5NDEvDQo+Pg0KPj4NCj4+DQo+PiBFeGFtcGxlIDI6DQo+PiBIZXJlIGl0IGlzIG1v
cmUgYSBxdWVzdGlvbiBvZiBvcHRpbWl6YXRpb24gOiB3ZSB3YW50IHRvIHNhdmUgdGhlIG51bWJl
ciBvZg0KPj4gaHdsb2NrcyB1c2VkIHRvIHByb3RlY3QgcmVzb3VyY2VzLCB1c2luZyBhbiB1bmlx
dWUgaHdsb2NrIHRvIHByb3RlY3QgYWxsDQo+PiBwaW5jdHJsIHJlc291cmNlczoNCj4+ICAgwqDC
oMKgIMKgwqDCoCBwaW5jdHJsOiBwaW4tY29udHJvbGxlckA1MDAwMjAwMCB7DQo+PiAgIMKgwqDC
oCDCoMKgwqAgwqDCoMKgIGNvbXBhdGlibGUgPSAic3Qsc3RtMzJtcDE1Ny1waW5jdHJsIjsNCj4+
ICAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgcmFuZ2VzID0gPDAgMHg1MDAwMjAwMCAweGE0MDA+Ow0K
Pj4gICDCoMKgwqAgwqDCoMKgIMKgwqDCoCBod2xvY2tzID0gPCZoc2VtIDAgMT47DQo+Pg0KPj4g
ICDCoMKgwqAgwqDCoMKgIHBpbmN0cmxfejogcGluLWNvbnRyb2xsZXItekA1NDAwNDAwMCB7DQo+
PiAgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIGNvbXBhdGlibGUgPSAic3Qsc3RtMzJtcDE1Ny16LXBp
bmN0cmwiOw0KPj4gICDCoMKgwqAgwqDCoMKgIMKgwqDCoCByYW5nZXMgPSA8MCAweDU0MDA0MDAw
IDB4NDAwPjsNCj4+ICAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgcGlucy1hcmUtbnVtYmVyZWQ7DQo+
PiAgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIGh3bG9ja3MgPSA8JmhzZW0gMCAxPjsNCj4gVGhhbmtz
IGZvciB0aGUgZXhhbXBsZXMuDQo+DQo+Pj4+IEkgYWdyZWUgdGhhdCB3ZSBzaG91bGRuJ3Qgc3Bl
Y2lmeSB0aGlzIHByb3BlcnR5IGluIERUIC0gaWYgYW55dGhpbmcgaXQNCj4+Pj4gc2hvdWxkIGJl
IGEgdmFyaWFudCBvZiB0aGUgQVBJLg0KPj4NCj4+IElmIHdlIGRlY2lkZSB0byBhZGQgYSAnc2hh
cmVkJyBBUEksIHRoZW4sIHdoYXQgYWJvdXQgdGhlIGdlbmVyaWMgcmVnbWFwDQo+PiBkcml2ZXI/
DQo+Pg0KPj4gSW4gdGhlIGNvbnRleHQgb2YgYWJvdmUgZXhhbXBsZTEsIHRoaXMgd291bGQgcmVx
dWlyZSB0byB1cGRhdGUgdGhlDQo+PiByZWdtYXAgZHJpdmVyLg0KPj4NCj4+IEJ1dCB3b3VsZCB0
aGlzIGJlIGFjY2VwdGFibGUgZm9yIGFueSBkcml2ZXIgdXNpbmcgc3lzY29uL3JlZ21hcD8NCj4+
DQo+Pg0KPj4gSSB0aGluayBpdCBpcyBiZXR0ZXIgdG8ga2VlcCB0aGUgZXhpc3RpbmcgQVBJICht
b2RpZnlpbmcgaXQgc28gaXQgYWx3YXlzDQo+PiBhbGxvd3MNCj4+DQo+PiBod2xvY2tzIHNoYXJp
bmcsIHNvIG5vIG5lZWQgZm9yIGJpbmRpbmdzIHVwZGF0ZSkgdGhhbiBhZGRpbmcgYW5vdGhlciBB
UEkuDQo+IEZvciB5b3VyIHVzZWNhc2VzLCB5b3Ugd291bGQgZGVmaW5pdGVseSBuZWVkIHRoZSBz
eXNjb24vcmVnbWFwIGJlaGF2aW9yDQo+IHRvIGJlIHNoYXJlZCByaWdodC4gV2hldGhlciB3ZSBp
bnRyb2R1Y2UgYSAnc2hhcmVkJyBBUEkgb3IgYW4NCj4gJ2V4Y2x1c2l2ZScgQVBJIGFuZCBjaGFu
Z2UgdGhlIGN1cnJlbnQgQVBJIGJlaGF2aW9yIHRvIHNoYXJlZCwgaXQgaXMNCj4gZGVmaW5pdGVs
eSBhIGNhc2UtYnktY2FzZSB1c2FnZSBzY2VuYXJpbyBmb3IgdGhlIGV4aXN0aW5nIGRyaXZlcnMg
YW5kDQo+IHVzYWdlIHJpZ2h0LiBUaGUgbWFpbiBjb250ZW50aW9uIHBvaW50IGlzIHdoYXQgdG8g
ZG8gd2l0aCB0aGUNCj4gdW5wcm90ZWN0ZWQgdXNlY2FzZXMgbGlrZSBCam9ybiBvcmlnaW5hbGx5
IHBvaW50ZWQgb3V0Lg0KDQpPSywgSSBzZWUgOiB0aGUgaHdzcGlubG9jayBmcmFtZXdvcmsgZG9l
cyBub3Qgb2ZmZXIgYW55IGxvY2sgcHJvdGVjdGlvbiANCndpdGggdGhlIFJBVy9JTl9BVE9NSUMg
bW9kZXMuDQpUaGlzIGlzIGFuIGlzc3VlIGlmIHNldmVyYWwgZGlmZmVyZW50ICdsb2NhbCcgZHJp
dmVycyB0cnkgdG8gZ2V0IGEgDQpzaGFyZWQgbG9jayBpbiB0aGUgc2FtZSB0aW1lLg0KQW5kIHRo
aXMgaXMgYSBwZXJzb25hbCBwcm9ibGVtIHNpbmNlIEkgbmVlZCB0byB1c2Ugc2hhcmVkIGxvY2tz
IGluIA0KLi4uYXRvbWljIG1vZGUuDQoNCkkgaGF2ZSB0cmllZCB0byBzZWUgaG93IGl0IGlzIHBv
c3NpYmxlIHRvIHB1dCBhIGNvbnN0cmFpbnQgb24gdGhlIA0KY2FsbGVycywganVzdCBsaWtlIHRo
aXMgaXMgZG9jdW1lbnRlZCBmb3IgdGhlIFJBVyBtb2RlIHdoaWNoIGlzOg0KIMKgwqAgIkNhdXRp
b246IElmIHRoZSBtb2RlIGlzIEhXTE9DS19SQVcsIHRoYXQgbWVhbnMgdXNlciBtdXN0IHByb3Rl
Y3QgDQp0aGUgcm91dGluZQ0KIMKgwqDCoCBvZiBnZXR0aW5nIGhhcmR3YXJlIGxvY2sgd2l0aCBt
dXRleCBvciBzcGlubG9jay4uIg0KSSBkbyBub3QgdGhpbmsgdGhhdCBpdCBpcyBhY2NlcHRhYmxl
IHRvIGFzayBzZXZlcmFsIGRyaXZlcnMgdG8gc2hhcmUgYSANCmNvbW1vbiBtdXRleC9zcGlubG9j
ayBmb3Igc2hhcmVkIGxvY2tzLg0KQnV0IEkgdGhpbmsgYWJvdXQgYW5vdGhlciBvcHRpb246IHRo
ZSBkcml2ZXIgaW1wbGVtZW50aW5nIHRoZSB0cnlsb2NrIA0Kb3BzIG1heSBvZmZlciBzdWNoIHBy
b3RlY3Rpb24uIFRoaXMgaXMgdGhlIGNhc2UgaWYgdGhlIGRyaXZlciByZXR1cm5zIA0KImJ1c3ki
IGlmIHRoZSBsb2NrIGlzIGFscmVhZHkgdGFrZW4sIG5vdCBvbmx5IGJ5IHRoZSByZW1vdGUgcHJv
Y2Vzc29yLCANCmJ1dCBhbHNvIGJ5IHRoZSBsb2NhbCBob3N0Lg0KDQpTbyB3aGF0IGRvIHlvdSB0
aGluayBhYm91dCBhZGRpbmcgc3VjaCBhIGRvY3VtZW50YXRpb24gbm90ZSA6DQoiQ2F1dGlvbiA6
IHRoZSBIV0xPQ0tfUkFXIC8gSFdMT0NLX0lOX0FUT01JQyBtb2RlcyBzaGFsbCBub3QgYmUgdXNl
ZCANCndpdGggc2hhcmVkIGxvY2tzIHVubGVzcyB0aGUgaHdzcGlubG9jayBkcml2ZXIgc3VwcG9y
dHMgbG9jYWwgbG9jayANCnByb3RlY3Rpb24iDQoNCk9wdGlvbmFsbHksIHdlIG1heSBhZGQgYSAi
bG9jYWxfbG9ja19wcm90ZWN0aW9uIiBmbGFnIGluIHRoZSANCmh3c3BpbmxvY2tfZGV2aWNlIHN0
cnVjdCwgc2V0IGJ5IHRoZSBkcml2ZXIgYmVmb3JlIGl0IGNhbGxzIA0KaHdzcGluX2xvY2tfcmVn
aXN0ZXIoKS4NClRoaXMgZmxhZyBjYW4gdGhlbiBiZSBjaGVja2VkIGJ5IGh3c3BpbmxvY2sgY29y
ZSB0byBhbGxvdy9kZW55IHVzZSBvZiANCnNoYXJlZCBsb2NrcyBpbiB0aGUgcmF3L2F0b21pYyBt
b2Rlcy4NCg0KTGV0IG1lIGtub3cgd2hhdCB5b3UgdGhpbmsgYWJvdXQgaXQuDQoNCkJSDQoNCkZh
Ymllbg0KDQo+DQo+IHJlZ2FyZHMNCj4gU3VtYW4NCj4NCj4+DQo+Pg0KPj4+Pj4gSWYgeW91IGFy
ZSBzaGFyaW5nIGEgaHdsb2NrIG9uIHRoZSBMaW51eCBzaWRlLCBzdXJlbHkgeW91ciBkcml2ZXIg
c2hvdWxkDQo+Pj4+PiBiZSBhd2FyZSB0aGF0IGl0IGlzIGEgc2hhcmVkIGxvY2suIFRoZSB0YWcg
Y2FuIGJlIHNldCBkdXJpbmcgdGhlIGZpcnN0DQo+Pj4+PiByZXF1ZXN0IEFQSSwgYW5kIHlvdSBs
b29rIHRocm91Z2ggYm90aCB0YWdzIHdoZW4gZ2l2aW5nIG91dCBhIGhhbmRsZS4NCj4+Pj4+DQo+
Pj4+IFdoeSB3b3VsZCB0aGUgZHJpdmVyIG5lZWQgdG8ga25vdyBhYm91dCBpdD8NCj4+PiBKdXN0
IHRoZSBzZW1hbnRpY3MgaWYgd2Ugd2VyZSB0byBzdXBwb3J0IHNpbmdsZSB1c2VyIHZzIG11bHRp
cGxlIHVzZXJzDQo+Pj4gb24gTGludXgtc2lkZSB0byBldmVuIGdldCBhIGhhbmRsZS4gWW91ciBw
b2ludCBpcyB0aGF0IHRoaXMgbWF5IGJlIG1vb3QNCj4+PiBzaW5jZSB3ZSBoYXZlIHByb3RlY3Rp
b24gYW55d2F5IG90aGVyIHRoYW4gdGhlIHJhdyBjYXNlcy4gQnV0IHdlIG5lZWQgdG8NCj4+PiBi
ZSBhYmxlIHRvIGhhdmUgdGhlIHNhbWUgQVBJIHdvcmsgYWNyb3NzIGFsbCBjYXNlcy4NCj4+Pg0K
Pj4+IFNvIGZhciwgaXQgaGFkIG1vc3RseSBiZWVuIHRoYXQgdGhlcmUgd291bGQgYmUgb25lIHVz
ZXIgb24gTGludXgNCj4+PiBjb21wZXRpbmcgd2l0aCBvdGhlciBlcXVpdmFsZW50IHBlZXIgZW50
aXRpZXMgb24gZGlmZmVyZW50IHByb2Nlc3NvcnMuDQo+Pj4gSXQgaXMgbm90IGNvbW1vbiB0byBo
YXZlIG11bHRpcGxlIHVzZXJzIHNpbmNlIHRoZXNlIHByb3RlY3Rpb24gc2NoZW1lcw0KPj4+IGFy
ZSB1c3VhbGx5IG5lZWRlZCBvbmx5IGF0IHRoZSBsb3dlc3QgbGV2ZWxzIG9mIGEgc3RhY2ssIHNv
IHRoZQ0KPj4+IGV4Y2x1c2l2ZSBoYW5kbGUgc3R1ZmYgaGFkIGJlZW4gc3VmZmljaWVudC4NCj4+
Pg0KPj4+Pj4gT2J2aW91c2x5LCB0aGUgaHdzcGluX2xvY2tfcmVxdWVzdCgpIEFQSSB1c2FnZSBz
ZW1hbnRpY3MgYWx3YXlzIGhhZCB0aGUNCj4+Pj4+IGltcGxpZWQgYWRkaXRpb25hbCBuZWVkIGZv
ciBjb21tdW5pY2F0aW5nIHRoZSBsb2NrIGlkIHRvIHRoZSBvdGhlciBwZWVyDQo+Pj4+PiBlbnRp
dHksIHNvIGEgcmVhbGlzdGljIHVzYWdlIGlzIG1vc3QgYWx3YXlzIHRoZSBzcGVjaWZpYyBBUEkg
dmFyaWFudC4gSQ0KPj4+Pj4gZG91YnQgdGhpcyBBUEkgd291bGQgYmUgb2YgbXVjaCB1c2UgZm9y
IHRoZSBzaGFyZWQgZHJpdmVyIHVzYWdlLiBUaGlzDQo+Pj4+PiBhbHNvIGltcGxpZXMgdGhhdCB0
aGUgY2xpZW50IHVzZXIgZG9lcyBub3QgY2FyZSBhYm91dCBzcGVjaWZ5aW5nIGEgbG9jaw0KPj4+
Pj4gaW4gRFQuDQo+Pj4+Pg0KPj4+PiBBZmFpY3QgaWYgdGhlIGxvY2sgYXJlIHNoYXJlZCB0aGVu
IHRoZXJlIHNob3VsZG4ndCBiZSBhIHByb2JsZW0gd2l0aA0KPj4+PiBzb21lIGNsaWVudHMgdXNp
bmcgdGhlIHJlcXVlc3QgQVBJIGFuZCBvdGhlcnMgcmVxdWVzdF9zcGVjaWZpYygpLiBBcyBhbnkN
Cj4+Pj4gY29sbGlzaW9ucyB3b3VsZCBzaW1wbHkgbWVhbiB0aGF0IHRoZXJlIGFyZSBtb3JlIGNv
bnRlbnRpb24gb24gdGhlIGxvY2suDQo+Pj4+DQo+Pj4+IFdpdGggdGhlIGN1cnJlbnQgZXhjbHVz
aXZlIG1vZGVsIHRoYXQgaXMgbm90IHBvc3NpYmxlIGFuZCB0aGUgc3VjY2VzcyBvZg0KPj4+PiB0
aGUgcmVxdWVzdF9zcGVjaWZpYyB3aWxsIGRlcGVuZCBvbiBwcm9iZSBvcmRlci4NCj4+Pj4NCj4+
Pj4gQnV0IHBlcmhhcHMgaXQgc2hvdWxkIGJlIGV4cGxpY2l0bHkgcHJvaGliaXRlZCB0byB1c2Ug
Ym90aCBBUElzIG9uIHRoZQ0KPj4+PiBzYW1lIGh3c3BpbmxvY2sgaW5zdGFuY2U/DQo+Pj4gWWVh
aCwgdGhleSBhcmUgbWVhbnQgdG8gYmUgY29tcGxpbWVudGFyeSB1c2FnZSwgdGhvdWdoIEkgZG91
YnQgd2Ugd2lsbA0KPj4+IGV2ZXIgaGF2ZSBhbnkgcmVhbGlzdGljIHVzZXJzIGZvciB0aGUgZ2Vu
ZXJpYyBBUEkgaWYgd2UgaGF2ZW4ndCBoYWQgYQ0KPj4+IHVzYWdlIHNvIGZhci4gSSBoYWQgcG9z
dGVkIGEgY29uY2VwdCBvZiByZXNlcnZlZCBsb2NrcyBsb25nIGJhY2sgWzFdIHRvDQo+Pj4ga2Vl
cCBhd2F5IGNlcnRhaW4gbG9ja3MgZnJvbSB0aGUgZ2VuZXJpYyByZXF1ZXN0b3IsIGJ1dCBkcm9w
cGVkIGl0IHNpbmNlDQo+Pj4gd2UgZGlkIG5vdCBoYXZlIGFuIGFjdHVhbCB1c2UtY2FzZSBuZWVk
aW5nIGl0Lg0KPj4+DQo+Pj4gcmVnYXJkcw0KPj4+IFN1bWFuDQo+Pj4NCj4+PiBbMV0gaHR0cHM6
Ly9sd24ubmV0L0FydGljbGVzLzYxMTk0NC8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
