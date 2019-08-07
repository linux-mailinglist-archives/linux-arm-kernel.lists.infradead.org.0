Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508BC847C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p64UYlvEbXDPO/KsvkzfwUwCMWwnk94tNPuZcu+UaJA=; b=OWkkNTx4MaCj+h
	0+IrV69dqAmTiw672gD6mne3Ab4sktOYv/fo3WhZJkSs/oo2rUCXdqJHxSMN+1g6/wVz7XvjbocME
	3yVIEaBSWxIbWM34vM+Q44E3LstVq1md2r8ueK3mfQhpX2Abut7kdX+IV2DW6vRjONBosCQTghJQ6
	jOQ2nSFZITSiVWhpN1+zoxn1YAn4JpDRf5A1TZnQfc41GcgljPtn9F6r1T1PIh/gV8JnCcr70Jq/9
	wjSPguMhiz9YLpiskDJgX3Fnl7T8eyTisKa6XIvrd1wzfXG/9mZ6LjlIX9o5Bt9+U1J6/XlM/d8iE
	Oaw3gTr2IVjCtisp0fRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHU8-0003ef-Td; Wed, 07 Aug 2019 08:39:53 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHTq-0003e6-LZ
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:39:36 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x778b452030877; Wed, 7 Aug 2019 10:39:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=GXim34s32x/EWuW4b1n1w/2bnwIncHUj5JEQz2vBN/Q=;
 b=VzbxMWs06qISsbxV0Vua6yc0LaoIRNsONt5Qi4e/ywSF2NWwFyog+D8KP9byVzEdty+A
 rrxv6Ehx8+ZF38kdc4JayENcoYH8qbl3LP6Y8GmpBrjectcYdpeYZQq5oAZy2TRRkQgl
 1U/UZvhCD1VSOvFIiZfZJzVSLvfN8jGY4txrSjfYmym3wbmizaHiCgR5x746ZGkbqaFn
 vstuJ2j1Go86+R3PcV2JLaxSk2wykguoVueBRyO/IkZwY4GpHems28xk9AF8uxFF4wDf
 Y3MjzVPqL+q8Xqbo8OhfWJMiigB1KVh8s1IcEeSTZS0srHWzOqZvOWGaLCqdsbBbV2qB /Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u4yr25ser-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 07 Aug 2019 10:39:22 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1CA0742;
 Wed,  7 Aug 2019 08:39:20 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C86A82D212B;
 Wed,  7 Aug 2019 10:39:20 +0200 (CEST)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 7 Aug
 2019 10:39:20 +0200
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Wed, 7 Aug 2019 10:39:20 +0200
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: Suman Anna <s-anna@ti.com>, Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
Thread-Topic: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
Thread-Index: AQHU2bSOZtnkIyxqbUq77/gp1YrMkqbnZZ+AgAWakoCAAJZugIABj+mAgAAMDgCAADTBgIAAuucA
Date: Wed, 7 Aug 2019 08:39:20 +0000
Message-ID: <02329102-5571-c6c1-b78c-693747133f0e@st.com>
References: <1552492237-28810-1-git-send-email-fabien.dessenne@st.com>
 <20190801191403.GA7234@tuxbook-pro>
 <1a057176-81ab-e302-4375-2717ceef6924@st.com>
 <20190805174659.GA23928@tuxbook-pro>
 <dcd1aeea-cffe-d5fb-af5a-e52efcc2e046@ti.com>
 <20190806182128.GD26807@tuxbook-pro>
 <1aea3d28-29dc-f9de-3b86-cf777e0d5caa@ti.com>
In-Reply-To: <1aea3d28-29dc-f9de-3b86-cf777e0d5caa@ti.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <CECCD9C7EA3C0B468E86EB4E1CE788B6@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-07_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_013935_088137_3061DF9A 
X-CRM114-Status: GOOD (  32.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

SGkNCg0KDQpPbiAwNi8wOC8yMDE5IDExOjMwIFBNLCBTdW1hbiBBbm5hIHdyb3RlOg0KPiBPbiA4
LzYvMTkgMToyMSBQTSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOg0KPj4gT24gVHVlIDA2IEF1ZyAx
MDozOCBQRFQgMjAxOSwgU3VtYW4gQW5uYSB3cm90ZToNCj4+DQo+Pj4gSGkgRmFiaWVuLA0KPj4+
DQo+Pj4gT24gOC81LzE5IDEyOjQ2IFBNLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6DQo+Pj4+IE9u
IE1vbiAwNSBBdWcgMDE6NDggUERUIDIwMTksIEZhYmllbiBERVNTRU5ORSB3cm90ZToNCj4+Pj4N
Cj4+Pj4+IE9uIDAxLzA4LzIwMTkgOToxNCBQTSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOg0KPj4+
Pj4+IE9uIFdlZCAxMyBNYXIgMDg6NTAgUERUIDIwMTksIEZhYmllbiBEZXNzZW5uZSB3cm90ZToN
Cj4+IFsuLl0NCj4+Pj4+IEIvIFRoaXMgd291bGQgaW50cm9kdWNlIHNvbWUgaW5jb25zaXN0ZW5j
eSBiZXR3ZWVuIHRoZSB0d28gJ3JlcXVlc3QnIEFQSQ0KPj4+Pj4gd2hpY2ggYXJlIGh3c3Bpbl9s
b2NrX3JlcXVlc3QoKSBhbmQgaHdzcGluX2xvY2tfcmVxdWVzdF9zcGVjaWZpYygpLg0KPj4+Pj4g
aHdzcGluX2xvY2tfcmVxdWVzdCgpIGxvb2tzIGZvciBhbiB1bnVzZWQgbG9jaywgc28gcmVxdWVz
dHMgZm9yIGFuIGV4Y2x1c2l2ZQ0KPj4+Pj4gdXNhZ2UuIE9uIHRoZSBvdGhlciBzaWRlLCByZXF1
ZXN0X3NwZWNpZmljKCkgd291bGQgcmVxdWVzdCBzaGFyZWQgbG9ja3MuDQo+Pj4+PiBXb3JzdCB0
aGUgZm9sbG93aW5nIHNlcXVlbmNlIGNhbiB0cmFuc2Zvcm0gYW4gZXhjbHVzaXZlIHVzYWdlIGlu
dG8gYSBzaGFyZWQNCj4+Pj4+DQo+Pj4+IFRoZXJlIGlzIGFscmVhZHkgYW4gaW5jb25zaXN0ZW5j
eSBpbiBiZXR3ZWVuIHRoZXNlOyBhcyB3aXRoIGFib3ZlIGFueQ0KPj4+PiBzeXN0ZW0gdGhhdCB1
c2VzIGJvdGggcmVxdWVzdCgpIGFuZCByZXF1ZXN0X3NwZWNpZmljKCkgd2lsbCBiZSBzdWZmZXJp
bmcNCj4+Pj4gZnJvbSBpbnRlcm1pdHRlbnQgZmFpbHVyZXMgZHVlIHRvIHByb2JlIG9yZGVyaW5n
Lg0KPj4+Pg0KPj4+Pj4gb25lOg0KPj4+Pj4gICDCoCAtaHdzcGluX2xvY2tfcmVxdWVzdCgpIC0+
IHJldHVybnMgSWQjMCAoZXhjbHVzaXZlKQ0KPj4+Pj4gICDCoCAtaHdzcGluX2xvY2tfcmVxdWVz
dCgpIC0+IHJldHVybnMgSWQjMSAoZXhjbHVzaXZlKQ0KPj4+Pj4gICDCoCAtaHdzcGluX2xvY2tf
cmVxdWVzdF9zcGVjaWZpYygwKSAtPiByZXR1cm5zIElkIzAgYW5kIG1ha2VzIElkIzAgc2hhcmVk
DQo+Pj4+PiBIb25lc3RseSBJIGFtIG5vdCBzdXJlIHRoYXQgdGhpcyBpcyBhIHJlYWwgaXNzdWUs
IGJ1dCBpdCdzIGJldHRlciB0byBoYXZlIGl0DQo+Pj4+PiBpbiBtaW5kIGJlZm9yZSB3ZSB0YWtl
IGF5IGRlY2lzaW9uDQo+Pj4gV291bGRuJ3QgaXQgYmUgYWN0dWFsbHkgc2ltcGxlciB0byBqdXN0
IGludHJvZHVjZSBhIG5ldyBzcGVjaWZpYyBBUEkNCj4+PiB2YXJpYW50IGZvciB0aGlzLCBzaW1p
bGFyIHRvIHRoZSByZXNldCBjb3JlIGZvciBleGFtcGxlIChpdCB1c2VzIGENCj4+PiBzZXBhcmF0
ZSBleGNsdXNpdmUgQVBJKSwgd2l0aG91dCBoYXZpbmcgdG8gbW9kaWZ5IHRoZSBiaW5kaW5ncyBh
dCBhbGwuDQo+Pj4gSXQgaXMganVzdCBhIGNhc2Ugb2YgeW91ciBkcml2ZXIgdXNpbmcgdGhlIHJp
Z2h0IEFQSSwgYW5kIHRoZSBjb3JlIGNhbg0KPj4+IGJlIG1vZGlmaWVkIHRvIHVzZSB0aGUgYWRk
aXRpb25hbCB0YWcgc2VtYW50aWNzIGJhc2VkIG9uIHRoZSBBUEkuIEl0DQo+Pj4gc2hvdWxkIGF2
b2lkIGFueSBjb25mdXNpb24gd2l0aCBzYXkgdXNpbmcgYSBkaWZmZXJlbnQgc2Vjb25kIGNlbGwg
dmFsdWUNCj4+PiBmb3IgdGhlIHNhbWUgbG9jayBpbiB0d28gZGlmZmVyZW50IG5vZGVzLg0KPj4+
DQo+PiBCdXQgdGhpcyBpbXBsaWVzIHRoYXQgdGhlcmUgaXMgYW4gYWN0dWFsIG5lZWQgdG8gaG9s
ZCB0aGVzZSBsb2Nrcw0KPj4gZXhjbHVzaXZlbHkuIEdpdmVuIHRoYXQgdGhleSBhcmUgKGV4Y2Vw
dCBmb3IgdGhlIHJhdyBjYXNlKSBhbGwgd3JhcHBlZA0KPj4gYnkgTGludXggbG9ja2luZyBwcmlt
aXRpdmVzIHRoZXJlIHNob3VsZG4ndCBiZSBhIHByb2JsZW0gc2hhcmluZyBhIGxvY2sNCj4+IChl
eGNlcHQgcG9zc2libHkgZm9yIHRoZSByYXcgY2FzZSkuDQo+IFllcyBhZ3JlZWQsIHRoZSBIV0xP
Q0tfUkFXIGFuZCBIV0xPQ0tfSU5fQVRPTUlDIGNhc2VzIGFyZSB1bnByb3RlY3RlZC4gSQ0KPiBh
bSBzdGlsbCB0cnlpbmcgdG8gdW5kZXJzdGFuZCBiZXR0ZXIgdGhlIHVzZWNhc2UgdG8gc2VlIGlm
IHRoZSBzYW1lIGxvY2sNCj4gaXMgYmVpbmcgbXVsdGlwbGV4ZWQgZm9yIGRpZmZlcmVudCBwcm90
ZWN0aW9uIGNvbnRleHRzLCBvciBpZiBhbGwgb2YNCj4gdGhlbSBhcmUgcHJvdGVjdGluZyB0aGUg
c2FtZSBjb250ZXh0Lg0KDQoNCkhlcmUgYXJlIHR3byBkaWZmZXJlbnQgZXhhbXBsZXMgdGhhdCBl
eHBsYWluIHRoZSBuZWVkIGZvciBjaGFuZ2VzLg0KSW4gYm90aCBjYXNlcyB0aGUgTGludXggY2xp
ZW50cyBhcmUgdGFsa2luZyB0byBhIHNpbmdsZSBlbnRpdHkgb24gdGhlDQpyZW1vdGUtc2lkZS4N
Cg0KRXhhbXBsZSAxOg0KIMKgwqDCoCBleHRpOiBpbnRlcnJ1cHQtY29udHJvbGxlckA1MDAwZDAw
MCB7DQogwqDCoMKgIMKgwqDCoCBjb21wYXRpYmxlID0gInN0LHN0bTMybXAxLWV4dGkiLCAic3lz
Y29uIjsNCiDCoMKgwqAgwqDCoMKgIGludGVycnVwdC1jb250cm9sbGVyOw0KIMKgwqDCoCDCoMKg
wqAgI2ludGVycnVwdC1jZWxscyA9IDwyPjsNCiDCoMKgwqAgwqDCoMKgIHJlZyA9IDwweDUwMDBk
MDAwIDB4NDAwPjsNCiDCoMKgwqAgwqDCoMKgIGh3bG9ja3MgPSA8JmhzZW0gMT47DQogwqDCoMKg
IH07DQpUaGUgdHdvIGRyaXZlcnMgKHN0bTMybXAxLWV4dGkgYW5kIHN5c2NvbikgcmVmZXIgdG8g
dGhlIHNhbWUgaHdsb2NrLg0KV2l0aCB0aGUgY3VycmVudCBod3NwaW5sb2NrIGltcGxlbWVudGF0
aW9uLCBvbmx5IHRoZSBmaXJzdCBkcml2ZXIgc3VjY2VlZHMNCmluIHJlcXVlc3RpbmcgKGh3c3Bp
bl9sb2NrX3JlcXVlc3Rfc3BlY2lmaWMpIHRoZSBod2xvY2suIFRoZSBzZWNvbmQgcmVxdWVzdA0K
ZmFpbHMuDQpIZXJlLCB3ZSByZWFsbHkgbmVlZCB0byBzaGFyZSB0aGUgaHdsb2NrIGJldHdlZW4g
dGhlIHR3byBkcml2ZXJzLg0KTm90ZTogaGFyZHdhcmUgc3BpbmxvY2sgc3VwcG9ydCBmb3IgcmVn
bWFwIHdhcyAncmVjZW50bHknIGludHJvZHVjZWQgaW4gNC4xNQ0Kc2VlIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC84NDU5NDEvDQoNCg0KDQpFeGFtcGxlIDI6DQpIZXJl
IGl0IGlzIG1vcmUgYSBxdWVzdGlvbiBvZiBvcHRpbWl6YXRpb24gOiB3ZSB3YW50IHRvIHNhdmUg
dGhlIG51bWJlciBvZg0KaHdsb2NrcyB1c2VkIHRvIHByb3RlY3QgcmVzb3VyY2VzLCB1c2luZyBh
biB1bmlxdWUgaHdsb2NrIHRvIHByb3RlY3QgYWxsDQpwaW5jdHJsIHJlc291cmNlczoNCiDCoMKg
wqAgwqDCoMKgIHBpbmN0cmw6IHBpbi1jb250cm9sbGVyQDUwMDAyMDAwIHsNCiDCoMKgwqAgwqDC
oMKgIMKgwqDCoCBjb21wYXRpYmxlID0gInN0LHN0bTMybXAxNTctcGluY3RybCI7DQogwqDCoMKg
IMKgwqDCoCDCoMKgwqAgcmFuZ2VzID0gPDAgMHg1MDAwMjAwMCAweGE0MDA+Ow0KIMKgwqDCoCDC
oMKgwqAgwqDCoMKgIGh3bG9ja3MgPSA8JmhzZW0gMCAxPjsNCg0KIMKgwqDCoCDCoMKgwqAgcGlu
Y3RybF96OiBwaW4tY29udHJvbGxlci16QDU0MDA0MDAwIHsNCiDCoMKgwqAgwqDCoMKgIMKgwqDC
oCBjb21wYXRpYmxlID0gInN0LHN0bTMybXAxNTctei1waW5jdHJsIjsNCiDCoMKgwqAgwqDCoMKg
IMKgwqDCoCByYW5nZXMgPSA8MCAweDU0MDA0MDAwIDB4NDAwPjsNCiDCoMKgwqAgwqDCoMKgIMKg
wqDCoCBwaW5zLWFyZS1udW1iZXJlZDsNCiDCoMKgwqAgwqDCoMKgIMKgwqDCoCBod2xvY2tzID0g
PCZoc2VtIDAgMT47DQoNCj4NCj4+IEkgYWdyZWUgdGhhdCB3ZSBzaG91bGRuJ3Qgc3BlY2lmeSB0
aGlzIHByb3BlcnR5IGluIERUIC0gaWYgYW55dGhpbmcgaXQNCj4+IHNob3VsZCBiZSBhIHZhcmlh
bnQgb2YgdGhlIEFQSS4NCg0KDQpJZiB3ZSBkZWNpZGUgdG8gYWRkIGEgJ3NoYXJlZCcgQVBJLCB0
aGVuLCB3aGF0IGFib3V0IHRoZSBnZW5lcmljIHJlZ21hcCANCmRyaXZlcj8NCg0KSW4gdGhlIGNv
bnRleHQgb2YgYWJvdmUgZXhhbXBsZTEsIHRoaXMgd291bGQgcmVxdWlyZSB0byB1cGRhdGUgdGhl
IA0KcmVnbWFwIGRyaXZlci4NCg0KQnV0IHdvdWxkIHRoaXMgYmUgYWNjZXB0YWJsZSBmb3IgYW55
IGRyaXZlciB1c2luZyBzeXNjb24vcmVnbWFwPw0KDQoNCkkgdGhpbmsgaXQgaXMgYmV0dGVyIHRv
IGtlZXAgdGhlIGV4aXN0aW5nIEFQSSAobW9kaWZ5aW5nIGl0IHNvIGl0IGFsd2F5cyANCmFsbG93
cw0KDQpod2xvY2tzIHNoYXJpbmcsIHNvIG5vIG5lZWQgZm9yIGJpbmRpbmdzIHVwZGF0ZSkgdGhh
biBhZGRpbmcgYW5vdGhlciBBUEkuDQoNCg0KDQo+Pg0KPj4+IElmIHlvdSBhcmUgc2hhcmluZyBh
IGh3bG9jayBvbiB0aGUgTGludXggc2lkZSwgc3VyZWx5IHlvdXIgZHJpdmVyIHNob3VsZA0KPj4+
IGJlIGF3YXJlIHRoYXQgaXQgaXMgYSBzaGFyZWQgbG9jay4gVGhlIHRhZyBjYW4gYmUgc2V0IGR1
cmluZyB0aGUgZmlyc3QNCj4+PiByZXF1ZXN0IEFQSSwgYW5kIHlvdSBsb29rIHRocm91Z2ggYm90
aCB0YWdzIHdoZW4gZ2l2aW5nIG91dCBhIGhhbmRsZS4NCj4+Pg0KPj4gV2h5IHdvdWxkIHRoZSBk
cml2ZXIgbmVlZCB0byBrbm93IGFib3V0IGl0Pw0KPiBKdXN0IHRoZSBzZW1hbnRpY3MgaWYgd2Ug
d2VyZSB0byBzdXBwb3J0IHNpbmdsZSB1c2VyIHZzIG11bHRpcGxlIHVzZXJzDQo+IG9uIExpbnV4
LXNpZGUgdG8gZXZlbiBnZXQgYSBoYW5kbGUuIFlvdXIgcG9pbnQgaXMgdGhhdCB0aGlzIG1heSBi
ZSBtb290DQo+IHNpbmNlIHdlIGhhdmUgcHJvdGVjdGlvbiBhbnl3YXkgb3RoZXIgdGhhbiB0aGUg
cmF3IGNhc2VzLiBCdXQgd2UgbmVlZCB0bw0KPiBiZSBhYmxlIHRvIGhhdmUgdGhlIHNhbWUgQVBJ
IHdvcmsgYWNyb3NzIGFsbCBjYXNlcy4NCj4NCj4gU28gZmFyLCBpdCBoYWQgbW9zdGx5IGJlZW4g
dGhhdCB0aGVyZSB3b3VsZCBiZSBvbmUgdXNlciBvbiBMaW51eA0KPiBjb21wZXRpbmcgd2l0aCBv
dGhlciBlcXVpdmFsZW50IHBlZXIgZW50aXRpZXMgb24gZGlmZmVyZW50IHByb2Nlc3NvcnMuDQo+
IEl0IGlzIG5vdCBjb21tb24gdG8gaGF2ZSBtdWx0aXBsZSB1c2VycyBzaW5jZSB0aGVzZSBwcm90
ZWN0aW9uIHNjaGVtZXMNCj4gYXJlIHVzdWFsbHkgbmVlZGVkIG9ubHkgYXQgdGhlIGxvd2VzdCBs
ZXZlbHMgb2YgYSBzdGFjaywgc28gdGhlDQo+IGV4Y2x1c2l2ZSBoYW5kbGUgc3R1ZmYgaGFkIGJl
ZW4gc3VmZmljaWVudC4NCj4NCj4+PiBPYnZpb3VzbHksIHRoZSBod3NwaW5fbG9ja19yZXF1ZXN0
KCkgQVBJIHVzYWdlIHNlbWFudGljcyBhbHdheXMgaGFkIHRoZQ0KPj4+IGltcGxpZWQgYWRkaXRp
b25hbCBuZWVkIGZvciBjb21tdW5pY2F0aW5nIHRoZSBsb2NrIGlkIHRvIHRoZSBvdGhlciBwZWVy
DQo+Pj4gZW50aXR5LCBzbyBhIHJlYWxpc3RpYyB1c2FnZSBpcyBtb3N0IGFsd2F5cyB0aGUgc3Bl
Y2lmaWMgQVBJIHZhcmlhbnQuIEkNCj4+PiBkb3VidCB0aGlzIEFQSSB3b3VsZCBiZSBvZiBtdWNo
IHVzZSBmb3IgdGhlIHNoYXJlZCBkcml2ZXIgdXNhZ2UuIFRoaXMNCj4+PiBhbHNvIGltcGxpZXMg
dGhhdCB0aGUgY2xpZW50IHVzZXIgZG9lcyBub3QgY2FyZSBhYm91dCBzcGVjaWZ5aW5nIGEgbG9j
aw0KPj4+IGluIERULg0KPj4+DQo+PiBBZmFpY3QgaWYgdGhlIGxvY2sgYXJlIHNoYXJlZCB0aGVu
IHRoZXJlIHNob3VsZG4ndCBiZSBhIHByb2JsZW0gd2l0aA0KPj4gc29tZSBjbGllbnRzIHVzaW5n
IHRoZSByZXF1ZXN0IEFQSSBhbmQgb3RoZXJzIHJlcXVlc3Rfc3BlY2lmaWMoKS4gQXMgYW55DQo+
PiBjb2xsaXNpb25zIHdvdWxkIHNpbXBseSBtZWFuIHRoYXQgdGhlcmUgYXJlIG1vcmUgY29udGVu
dGlvbiBvbiB0aGUgbG9jay4NCj4+DQo+PiBXaXRoIHRoZSBjdXJyZW50IGV4Y2x1c2l2ZSBtb2Rl
bCB0aGF0IGlzIG5vdCBwb3NzaWJsZSBhbmQgdGhlIHN1Y2Nlc3Mgb2YNCj4+IHRoZSByZXF1ZXN0
X3NwZWNpZmljIHdpbGwgZGVwZW5kIG9uIHByb2JlIG9yZGVyLg0KPj4NCj4+IEJ1dCBwZXJoYXBz
IGl0IHNob3VsZCBiZSBleHBsaWNpdGx5IHByb2hpYml0ZWQgdG8gdXNlIGJvdGggQVBJcyBvbiB0
aGUNCj4+IHNhbWUgaHdzcGlubG9jayBpbnN0YW5jZT8NCj4gWWVhaCwgdGhleSBhcmUgbWVhbnQg
dG8gYmUgY29tcGxpbWVudGFyeSB1c2FnZSwgdGhvdWdoIEkgZG91YnQgd2Ugd2lsbA0KPiBldmVy
IGhhdmUgYW55IHJlYWxpc3RpYyB1c2VycyBmb3IgdGhlIGdlbmVyaWMgQVBJIGlmIHdlIGhhdmVu
J3QgaGFkIGENCj4gdXNhZ2Ugc28gZmFyLiBJIGhhZCBwb3N0ZWQgYSBjb25jZXB0IG9mIHJlc2Vy
dmVkIGxvY2tzIGxvbmcgYmFjayBbMV0gdG8NCj4ga2VlcCBhd2F5IGNlcnRhaW4gbG9ja3MgZnJv
bSB0aGUgZ2VuZXJpYyByZXF1ZXN0b3IsIGJ1dCBkcm9wcGVkIGl0IHNpbmNlDQo+IHdlIGRpZCBu
b3QgaGF2ZSBhbiBhY3R1YWwgdXNlLWNhc2UgbmVlZGluZyBpdC4NCj4NCj4gcmVnYXJkcw0KPiBT
dW1hbg0KPg0KPiBbMV0gaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzYxMTk0NC8KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
