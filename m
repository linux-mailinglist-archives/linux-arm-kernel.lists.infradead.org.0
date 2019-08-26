Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D9B9D099
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 15:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GtRNgxb6TOh4ExkK5dA/FsVNJgMvyJZPhdTP9GBvV/o=; b=OPuDSFak0RbkSr
	mzt7Mx0bLlZbXpZSq4DX4EGtaYDO80J+IgqBBiq3aTj+iaiXr3O1eBF56nrXfPj7/i/+f56yoYE9z
	t38ly6RLBYSv7LVcUlGxBQqyWWzkw/bk4XEYVElOb6M2RMXzZuZW5AoPeOeNw9w3eOHALrR9fKQMF
	ZEn7zNwH/xDX1yuYWdvnPu6BHSh9IaWMh6UIqUqF09Gj1FrwxJujRtERQeTmknB6El3kUGbTS7vZF
	Gff8qrp0D9ZBAJAEZLd31SXNQiYnCfYBzOB8QfqkatSKw45ccVOCkKyf3bzpD9yfrFxU1UsEaNkwa
	rManCmrwwz6DDI0S4dbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2F5V-0002YF-VJ; Mon, 26 Aug 2019 13:31:14 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2F5E-0002XT-Hd
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 13:30:58 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7QDPuqd019991; Mon, 26 Aug 2019 15:30:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=thK12+DIfZ9qs61+1jR8YxxKTQeC2eKKI+kwQtWjFW8=;
 b=UJzzoS3r1ctLfNaP+lyXdKBS2FIQLMiHWCb/mPrnvyzIHvCU7paWugYoA4K7sSGgko8G
 0DB0xHCcLkfNwoqJg+8p/95CexVpBZq78eQuU98H6cYGfWri69qQTQvK0zP0bCwQbdUd
 zVV/y4SEHKtFmSznoRzoakSZbY4HUyAYg9GAJ2IvKAA1IUeAnsQhsCC+J8HQOFz5BdZ8
 ujfROSdH/z7D4FJi/EY9m83jGXN7M2XMFnji9UtCAGlxqZXTFejCmQ4A1lA9IcZLpoLz
 YePR6SYgMQRIHulT8W4Yylwb5CG3bNVYfKkE0XVCpOfZZGhdLwPSsIWik8bsfs2SkVKw cw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uju0vkx2r-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 26 Aug 2019 15:30:44 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 89D3231;
 Mon, 26 Aug 2019 13:30:43 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 643E82D378B;
 Mon, 26 Aug 2019 15:30:43 +0200 (CEST)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 26 Aug
 2019 15:30:42 +0200
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Mon, 26 Aug 2019 15:30:42 +0200
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
Thread-Topic: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
Thread-Index: AQHU2bSOZtnkIyxqbUq77/gp1YrMkqbnZZ+AgAWakoCAAJZugIABj+mAgAAMDgCAADTBgIAAuucAgACApoCAAVhTAIAALi6AgBwmkgA=
Date: Mon, 26 Aug 2019 13:30:42 +0000
Message-ID: <8fa3e61a-a798-4c3c-d99b-691755dbf8df@st.com>
References: <1552492237-28810-1-git-send-email-fabien.dessenne@st.com>
 <20190801191403.GA7234@tuxbook-pro>
 <1a057176-81ab-e302-4375-2717ceef6924@st.com>
 <20190805174659.GA23928@tuxbook-pro>
 <dcd1aeea-cffe-d5fb-af5a-e52efcc2e046@ti.com>
 <20190806182128.GD26807@tuxbook-pro>
 <1aea3d28-29dc-f9de-3b86-cf777e0d5caa@ti.com>
 <02329102-5571-c6c1-b78c-693747133f0e@st.com>
 <f0893b3f-0124-007a-3ca2-831f60ad9a80@ti.com>
 <d8d4a172-ec18-a758-d994-8e05bb6a1f48@st.com>
 <20190808153721.GI26807@tuxbook-pro>
In-Reply-To: <20190808153721.GI26807@tuxbook-pro>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <D296F5589EE83E4A907D41CEBE1E0049@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_063057_066816_9E6B4375 
X-CRM114-Status: GOOD (  38.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Suman Anna <s-anna@ti.com>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmpvcm4sDQoNCg0KT24gMDgvMDgvMjAxOSA1OjM3IFBNLCBCam9ybiBBbmRlcnNzb24gd3Jv
dGU6DQo+IE9uIFRodSAwOCBBdWcgMDU6NTIgUERUIDIwMTksIEZhYmllbiBERVNTRU5ORSB3cm90
ZToNCj4NCj4+IE9uIDA3LzA4LzIwMTkgNjoxOSBQTSwgU3VtYW4gQW5uYSB3cm90ZToNCj4+PiBI
aSBGYWJpZW4sDQo+Pj4NCj4+PiBPbiA4LzcvMTkgMzozOSBBTSwgRmFiaWVuIERFU1NFTk5FIHdy
b3RlOg0KPj4+PiBIaQ0KPj4+Pg0KPj4+PiBPbiAwNi8wOC8yMDE5IDExOjMwIFBNLCBTdW1hbiBB
bm5hIHdyb3RlOg0KPj4+Pj4gT24gOC82LzE5IDE6MjEgUE0sIEJqb3JuIEFuZGVyc3NvbiB3cm90
ZToNCj4+Pj4+PiBPbiBUdWUgMDYgQXVnIDEwOjM4IFBEVCAyMDE5LCBTdW1hbiBBbm5hIHdyb3Rl
Og0KPj4+Pj4+DQo+Pj4+Pj4+IEhpIEZhYmllbiwNCj4+Pj4+Pj4NCj4+Pj4+Pj4gT24gOC81LzE5
IDEyOjQ2IFBNLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6DQo+Pj4+Pj4gSSBhZ3JlZSB0aGF0IHdl
IHNob3VsZG4ndCBzcGVjaWZ5IHRoaXMgcHJvcGVydHkgaW4gRFQgLSBpZiBhbnl0aGluZyBpdA0K
Pj4+Pj4+IHNob3VsZCBiZSBhIHZhcmlhbnQgb2YgdGhlIEFQSS4NCj4+Pj4gSWYgd2UgZGVjaWRl
IHRvIGFkZCBhICdzaGFyZWQnIEFQSSwgdGhlbiwgd2hhdCBhYm91dCB0aGUgZ2VuZXJpYyByZWdt
YXANCj4+Pj4gZHJpdmVyPw0KPj4+Pg0KPj4+PiBJbiB0aGUgY29udGV4dCBvZiBhYm92ZSBleGFt
cGxlMSwgdGhpcyB3b3VsZCByZXF1aXJlIHRvIHVwZGF0ZSB0aGUNCj4+Pj4gcmVnbWFwIGRyaXZl
ci4NCj4+Pj4NCj4+Pj4gQnV0IHdvdWxkIHRoaXMgYmUgYWNjZXB0YWJsZSBmb3IgYW55IGRyaXZl
ciB1c2luZyBzeXNjb24vcmVnbWFwPw0KPj4+Pg0KPj4+Pg0KPj4+PiBJIHRoaW5rIGl0IGlzIGJl
dHRlciB0byBrZWVwIHRoZSBleGlzdGluZyBBUEkgKG1vZGlmeWluZyBpdCBzbyBpdCBhbHdheXMN
Cj4+Pj4gYWxsb3dzDQo+Pj4+DQo+Pj4+IGh3bG9ja3Mgc2hhcmluZywgc28gbm8gbmVlZCBmb3Ig
YmluZGluZ3MgdXBkYXRlKSB0aGFuIGFkZGluZyBhbm90aGVyIEFQSS4NCj4+PiBGb3IgeW91ciB1
c2VjYXNlcywgeW91IHdvdWxkIGRlZmluaXRlbHkgbmVlZCB0aGUgc3lzY29uL3JlZ21hcCBiZWhh
dmlvcg0KPj4+IHRvIGJlIHNoYXJlZCByaWdodC4gV2hldGhlciB3ZSBpbnRyb2R1Y2UgYSAnc2hh
cmVkJyBBUEkgb3IgYW4NCj4+PiAnZXhjbHVzaXZlJyBBUEkgYW5kIGNoYW5nZSB0aGUgY3VycmVu
dCBBUEkgYmVoYXZpb3IgdG8gc2hhcmVkLCBpdCBpcw0KPj4+IGRlZmluaXRlbHkgYSBjYXNlLWJ5
LWNhc2UgdXNhZ2Ugc2NlbmFyaW8gZm9yIHRoZSBleGlzdGluZyBkcml2ZXJzIGFuZA0KPj4+IHVz
YWdlIHJpZ2h0LiBUaGUgbWFpbiBjb250ZW50aW9uIHBvaW50IGlzIHdoYXQgdG8gZG8gd2l0aCB0
aGUNCj4+PiB1bnByb3RlY3RlZCB1c2VjYXNlcyBsaWtlIEJqb3JuIG9yaWdpbmFsbHkgcG9pbnRl
ZCBvdXQuDQo+PiBPSywgSSBzZWUgOiB0aGUgaHdzcGlubG9jayBmcmFtZXdvcmsgZG9lcyBub3Qg
b2ZmZXIgYW55IGxvY2sgcHJvdGVjdGlvbg0KPj4gd2l0aCB0aGUgUkFXL0lOX0FUT01JQyBtb2Rl
cy4NCj4+IFRoaXMgaXMgYW4gaXNzdWUgaWYgc2V2ZXJhbCBkaWZmZXJlbnQgJ2xvY2FsJyBkcml2
ZXJzIHRyeSB0byBnZXQgYQ0KPj4gc2hhcmVkIGxvY2sgaW4gdGhlIHNhbWUgdGltZS4NCj4+IEFu
ZCB0aGlzIGlzIGEgcGVyc29uYWwgcHJvYmxlbSBzaW5jZSBJIG5lZWQgdG8gdXNlIHNoYXJlZCBs
b2NrcyBpbg0KPj4gLi4uYXRvbWljIG1vZGUuDQo+Pg0KPiBXaHkgY2FuJ3QgeW91IHVzZSBIV0xP
Q0tfSVJRU1RBVEUgaW4gdGhpcyBtb2RlPw0KPg0KPj4gSSBoYXZlIHRyaWVkIHRvIHNlZSBob3cg
aXQgaXMgcG9zc2libGUgdG8gcHV0IGEgY29uc3RyYWludCBvbiB0aGUNCj4+IGNhbGxlcnMsIGp1
c3QgbGlrZSB0aGlzIGlzIGRvY3VtZW50ZWQgZm9yIHRoZSBSQVcgbW9kZSB3aGljaCBpczoNCj4+
ICAgwqDCoCAiQ2F1dGlvbjogSWYgdGhlIG1vZGUgaXMgSFdMT0NLX1JBVywgdGhhdCBtZWFucyB1
c2VyIG11c3QgcHJvdGVjdA0KPj4gdGhlIHJvdXRpbmUNCj4+ICAgwqDCoMKgIG9mIGdldHRpbmcg
aGFyZHdhcmUgbG9jayB3aXRoIG11dGV4IG9yIHNwaW5sb2NrLi4iDQo+PiBJIGRvIG5vdCB0aGlu
ayB0aGF0IGl0IGlzIGFjY2VwdGFibGUgdG8gYXNrIHNldmVyYWwgZHJpdmVycyB0byBzaGFyZSBh
DQo+PiBjb21tb24gbXV0ZXgvc3BpbmxvY2sgZm9yIHNoYXJlZCBsb2Nrcy4NCj4gTm8gaXQncyBu
b3QuDQo+DQo+PiBCdXQgSSB0aGluayBhYm91dCBhbm90aGVyIG9wdGlvbjogdGhlIGRyaXZlciBp
bXBsZW1lbnRpbmcgdGhlIHRyeWxvY2sNCj4+IG9wcyBtYXkgb2ZmZXIgc3VjaCBwcm90ZWN0aW9u
LiBUaGlzIGlzIHRoZSBjYXNlIGlmIHRoZSBkcml2ZXIgcmV0dXJucw0KPj4gImJ1c3kiIGlmIHRo
ZSBsb2NrIGlzIGFscmVhZHkgdGFrZW4sIG5vdCBvbmx5IGJ5IHRoZSByZW1vdGUgcHJvY2Vzc29y
LA0KPj4gYnV0IGFsc28gYnkgdGhlIGxvY2FsIGhvc3QuDQo+Pg0KPiBJIHRoaW5rIGl0J3MgdHlw
aWNhbCBmb3IgaHdzcGlubG9jayBoYXJkd2FyZSB0byBub3QgYmUgYWJsZSB0bw0KPiBkaXN0aW5n
dWlzaCBiZXR3ZWVuIGRpZmZlcmVudCBjbGllbnRzIHdpdGhpbiBMaW51eCwgc28gd2Ugd291bGQg
bmVlZCB0bw0KDQoNCkFncmVlIHdpdGggdGhhdCwgbGV0J3MgZm9yZ2V0IHRoaXMgaWRlYS4NCg0K
DQo+IHdyYXAgdGhlIHVzYWdlIGluIHNvbWUgY29uc3RydWN0IHRoYXQgZW5zdXJlcyBtdXR1YWwg
ZXhjbHVzaW9uIGluIExpbnV4DQo+IC0gbGlrZSBhIHNwaW5sb2NrLi4uDQo+DQo+PiBTbyB3aGF0
IGRvIHlvdSB0aGluayBhYm91dCBhZGRpbmcgc3VjaCBhIGRvY3VtZW50YXRpb24gbm90ZSA6DQo+
PiAiQ2F1dGlvbiA6IHRoZSBIV0xPQ0tfUkFXIC8gSFdMT0NLX0lOX0FUT01JQyBtb2RlcyBzaGFs
bCBub3QgYmUgdXNlZA0KPj4gd2l0aCBzaGFyZWQgbG9ja3MgdW5sZXNzIHRoZSBod3NwaW5sb2Nr
IGRyaXZlciBzdXBwb3J0cyBsb2NhbCBsb2NrDQo+PiBwcm90ZWN0aW9uIg0KPj4NCj4gQnV0IGhh
dmluZyBsb2NhbCBsb2NrIHByb3RlY3Rpb24gaW4gdGhlIGh3c3BpbmxvY2sgZHJpdmVyIHdvdWxk
IGRlZmVhdA0KPiB0aGUgcHVycG9zZSBvZiBIV0xPQ0tfUkFXLg0KDQoNCk15IHVuZGVyc3RhbmRp
bmcgaXMgdGhhdCB0aGUgcHVycG9zZSBvZiB0aGUgUkFXIG1vZGUgaXMgdG8gYWxsb3cgdGhlIA0K
dXNlciB0byBkbyBzb21lIHRpbWUtY29uc3VtaW5nIG9yIHNsZWVwYWJsZSBvcGVyYXRpb25zIHVu
ZGVyIHRoZSANCmhhcmR3YXJlIHNwaW5sb2NrIHByb3RlY3Rpb24uDQoNClRoaXMgaXMgcHJvYmFi
bHkgdGhlIHJlYXNvbiB3aHkgdGhlIFJBVyBtb2RlIGRvZXMgbm90IHVzZXMgYW55IHNwaW5sb2Nr
IA0KaXMgdXNlZCBpbiBSQVcgbW9kZS4NCg0KQnV0IEkgZG8gbm90IHRoaW5rIHRoYXQgdGhpcyBp
cyBhIHJlcXVpcmVtZW50IHRvIG5vdCB1c2UgYW55IGxvY2FsIA0KcHJvdGVjdGlvbi4NCg0KU28s
IGluIHRoaXMgbW9kZSwgaW5zdGVhZCBvZiB1c2luZyBhIHNwaW5sb2NrLCB3aGF0IGFib3V0IGNh
bGxpbmcgdGhlIA0KYXRvbWljIGJpdG9wIHRlc3RfYW5kX3NldF9iaXQoKcKgID8NCg0KVGhpcyB3
b3VsZCBlbnN1cmUgc2FmZSBjb25jdXJyZW5jeSBiZXR3ZWVuIHRoZSBod3NwaW5sb2NrIGxpbnV4
IHVzZXJzLCANCmFuZCB3aWxsIHJlc3BlY3QgdGhlIHB1cnBvc2Ugb2YgdGhlIFJBVyBtb2RlLg0K
DQpMZXQgbWUga25vdyBpZiB0aGlzIGlzIGFjY2VwdGFibGUuDQoNCg0KQlINCg0KRmFiaWVuDQoN
Cg0KPg0KPiBBbHNvIHRoaXMga2luZCBvZiB3YXJuaW5nIHdpbGwgYXQgYmVzdCBiZSBjb25zdW1l
ZCBieSB0aGUgY2xpZW50IGRyaXZlcg0KPiBhdXRob3JzLCBpdCB3aWxsIG5vdCBiZSByZWFkIGJ5
IHRoZSBkdHMgYXV0aG9ycy4NCj4NCj4gUmVnYXJkcywNCj4gQmpvcm4NCj4NCj4+IE9wdGlvbmFs
bHksIHdlIG1heSBhZGQgYSAibG9jYWxfbG9ja19wcm90ZWN0aW9uIiBmbGFnIGluIHRoZQ0KPj4g
aHdzcGlubG9ja19kZXZpY2Ugc3RydWN0LCBzZXQgYnkgdGhlIGRyaXZlciBiZWZvcmUgaXQgY2Fs
bHMNCj4+IGh3c3Bpbl9sb2NrX3JlZ2lzdGVyKCkuDQo+PiBUaGlzIGZsYWcgY2FuIHRoZW4gYmUg
Y2hlY2tlZCBieSBod3NwaW5sb2NrIGNvcmUgdG8gYWxsb3cvZGVueSB1c2Ugb2YNCj4+IHNoYXJl
ZCBsb2NrcyBpbiB0aGUgcmF3L2F0b21pYyBtb2Rlcy4NCj4+DQo+PiBMZXQgbWUga25vdyB3aGF0
IHlvdSB0aGluayBhYm91dCBpdC4NCj4+DQo+PiBCUg0KPj4NCj4+IEZhYmllbg0KPj4NCj4+PiBy
ZWdhcmRzDQo+Pj4gU3VtYW4NCj4+Pg0KPj4+Pg0KPj4+Pj4+PiBJZiB5b3UgYXJlIHNoYXJpbmcg
YSBod2xvY2sgb24gdGhlIExpbnV4IHNpZGUsIHN1cmVseSB5b3VyIGRyaXZlciBzaG91bGQNCj4+
Pj4+Pj4gYmUgYXdhcmUgdGhhdCBpdCBpcyBhIHNoYXJlZCBsb2NrLiBUaGUgdGFnIGNhbiBiZSBz
ZXQgZHVyaW5nIHRoZSBmaXJzdA0KPj4+Pj4+PiByZXF1ZXN0IEFQSSwgYW5kIHlvdSBsb29rIHRo
cm91Z2ggYm90aCB0YWdzIHdoZW4gZ2l2aW5nIG91dCBhIGhhbmRsZS4NCj4+Pj4+Pj4NCj4+Pj4+
PiBXaHkgd291bGQgdGhlIGRyaXZlciBuZWVkIHRvIGtub3cgYWJvdXQgaXQ/DQo+Pj4+PiBKdXN0
IHRoZSBzZW1hbnRpY3MgaWYgd2Ugd2VyZSB0byBzdXBwb3J0IHNpbmdsZSB1c2VyIHZzIG11bHRp
cGxlIHVzZXJzDQo+Pj4+PiBvbiBMaW51eC1zaWRlIHRvIGV2ZW4gZ2V0IGEgaGFuZGxlLiBZb3Vy
IHBvaW50IGlzIHRoYXQgdGhpcyBtYXkgYmUgbW9vdA0KPj4+Pj4gc2luY2Ugd2UgaGF2ZSBwcm90
ZWN0aW9uIGFueXdheSBvdGhlciB0aGFuIHRoZSByYXcgY2FzZXMuIEJ1dCB3ZSBuZWVkIHRvDQo+
Pj4+PiBiZSBhYmxlIHRvIGhhdmUgdGhlIHNhbWUgQVBJIHdvcmsgYWNyb3NzIGFsbCBjYXNlcy4N
Cj4+Pj4+DQo+Pj4+PiBTbyBmYXIsIGl0IGhhZCBtb3N0bHkgYmVlbiB0aGF0IHRoZXJlIHdvdWxk
IGJlIG9uZSB1c2VyIG9uIExpbnV4DQo+Pj4+PiBjb21wZXRpbmcgd2l0aCBvdGhlciBlcXVpdmFs
ZW50IHBlZXIgZW50aXRpZXMgb24gZGlmZmVyZW50IHByb2Nlc3NvcnMuDQo+Pj4+PiBJdCBpcyBu
b3QgY29tbW9uIHRvIGhhdmUgbXVsdGlwbGUgdXNlcnMgc2luY2UgdGhlc2UgcHJvdGVjdGlvbiBz
Y2hlbWVzDQo+Pj4+PiBhcmUgdXN1YWxseSBuZWVkZWQgb25seSBhdCB0aGUgbG93ZXN0IGxldmVs
cyBvZiBhIHN0YWNrLCBzbyB0aGUNCj4+Pj4+IGV4Y2x1c2l2ZSBoYW5kbGUgc3R1ZmYgaGFkIGJl
ZW4gc3VmZmljaWVudC4NCj4+Pj4+DQo+Pj4+Pj4+IE9idmlvdXNseSwgdGhlIGh3c3Bpbl9sb2Nr
X3JlcXVlc3QoKSBBUEkgdXNhZ2Ugc2VtYW50aWNzIGFsd2F5cyBoYWQgdGhlDQo+Pj4+Pj4+IGlt
cGxpZWQgYWRkaXRpb25hbCBuZWVkIGZvciBjb21tdW5pY2F0aW5nIHRoZSBsb2NrIGlkIHRvIHRo
ZSBvdGhlciBwZWVyDQo+Pj4+Pj4+IGVudGl0eSwgc28gYSByZWFsaXN0aWMgdXNhZ2UgaXMgbW9z
dCBhbHdheXMgdGhlIHNwZWNpZmljIEFQSSB2YXJpYW50LiBJDQo+Pj4+Pj4+IGRvdWJ0IHRoaXMg
QVBJIHdvdWxkIGJlIG9mIG11Y2ggdXNlIGZvciB0aGUgc2hhcmVkIGRyaXZlciB1c2FnZS4gVGhp
cw0KPj4+Pj4+PiBhbHNvIGltcGxpZXMgdGhhdCB0aGUgY2xpZW50IHVzZXIgZG9lcyBub3QgY2Fy
ZSBhYm91dCBzcGVjaWZ5aW5nIGEgbG9jaw0KPj4+Pj4+PiBpbiBEVC4NCj4+Pj4+Pj4NCj4+Pj4+
PiBBZmFpY3QgaWYgdGhlIGxvY2sgYXJlIHNoYXJlZCB0aGVuIHRoZXJlIHNob3VsZG4ndCBiZSBh
IHByb2JsZW0gd2l0aA0KPj4+Pj4+IHNvbWUgY2xpZW50cyB1c2luZyB0aGUgcmVxdWVzdCBBUEkg
YW5kIG90aGVycyByZXF1ZXN0X3NwZWNpZmljKCkuIEFzIGFueQ0KPj4+Pj4+IGNvbGxpc2lvbnMg
d291bGQgc2ltcGx5IG1lYW4gdGhhdCB0aGVyZSBhcmUgbW9yZSBjb250ZW50aW9uIG9uIHRoZSBs
b2NrLg0KPj4+Pj4+DQo+Pj4+Pj4gV2l0aCB0aGUgY3VycmVudCBleGNsdXNpdmUgbW9kZWwgdGhh
dCBpcyBub3QgcG9zc2libGUgYW5kIHRoZSBzdWNjZXNzIG9mDQo+Pj4+Pj4gdGhlIHJlcXVlc3Rf
c3BlY2lmaWMgd2lsbCBkZXBlbmQgb24gcHJvYmUgb3JkZXIuDQo+Pj4+Pj4NCj4+Pj4+PiBCdXQg
cGVyaGFwcyBpdCBzaG91bGQgYmUgZXhwbGljaXRseSBwcm9oaWJpdGVkIHRvIHVzZSBib3RoIEFQ
SXMgb24gdGhlDQo+Pj4+Pj4gc2FtZSBod3NwaW5sb2NrIGluc3RhbmNlPw0KPj4+Pj4gWWVhaCwg
dGhleSBhcmUgbWVhbnQgdG8gYmUgY29tcGxpbWVudGFyeSB1c2FnZSwgdGhvdWdoIEkgZG91YnQg
d2Ugd2lsbA0KPj4+Pj4gZXZlciBoYXZlIGFueSByZWFsaXN0aWMgdXNlcnMgZm9yIHRoZSBnZW5l
cmljIEFQSSBpZiB3ZSBoYXZlbid0IGhhZCBhDQo+Pj4+PiB1c2FnZSBzbyBmYXIuIEkgaGFkIHBv
c3RlZCBhIGNvbmNlcHQgb2YgcmVzZXJ2ZWQgbG9ja3MgbG9uZyBiYWNrIFsxXSB0bw0KPj4+Pj4g
a2VlcCBhd2F5IGNlcnRhaW4gbG9ja3MgZnJvbSB0aGUgZ2VuZXJpYyByZXF1ZXN0b3IsIGJ1dCBk
cm9wcGVkIGl0IHNpbmNlDQo+Pj4+PiB3ZSBkaWQgbm90IGhhdmUgYW4gYWN0dWFsIHVzZS1jYXNl
IG5lZWRpbmcgaXQuDQo+Pj4+Pg0KPj4+Pj4gcmVnYXJkcw0KPj4+Pj4gU3VtYW4NCj4+Pj4+DQo+
Pj4+PiBbMV0gaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzYxMTk0NC8KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
