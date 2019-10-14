Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82B9D5EED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 11:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WB1tPzfnysl+DH0hTuH5jVrL2tgveFwzyTEQsURLRG4=; b=fZF8FCKJtTjMpO
	QqW++YDcwLsaZ4qOLT/X3Dcm0x1udO32iOIZjcrXqBmXIx8l4ajG71FBv9wO2HKyhxfYoY+Ch6whK
	YNNs08WRf43ZXH5cp8wmrij6CzGK6oRY0QRGEuqtJYTb/JIqNKdlxxiGCYurV6XQ3d6akpd6kja9I
	B/t0q/asqlsHB3d1kAk3pXjR5R3Lbhkn4UwM9wMaLYAGN2XtxOO4oWd593Mq1Gwu7NrUYNMXN8XRk
	CGZbpZV3l0CC+thNjTKOtZsKl7KsRhq1eGVQiqNCPDSydVjTKkpiA6IiV1uwrdqKModOyBKzCYLtT
	OdG2S4f6zF1yQahSik6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwhh-00079o-SW; Mon, 14 Oct 2019 09:31:49 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwhE-0006yy-Fr
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 09:31:22 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9E9QkD5030661; Mon, 14 Oct 2019 11:31:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=KI1W9NnqSI6ale1L9ea5OODgAwjKQWjZ2mSmupenYFs=;
 b=XUnYLDHqs6RpmH/SaSir74pNBMhZiklWKYfV8pXbXRDhfmv0B89q72orDt2WqBEmsAsf
 OuMSsYSBIHwP3PY+zaMmTYjruOxrrRGe8VOZ1TzqJhI9auIvcAiO6nHbYPLwHnKwaGAk
 uamXlBazIuo7K2Dc7XvQl8P6EbepxbOqEgLgRlBhI6xL5Mx4LNm9OUZn9fKb+prpEpGr
 yfNgNNBu4LsIxU1ZRFBhvENmeHwrl058Hlr3toEhsd/zGSMhKxFVyUwRIOcQl/ALjytV
 C1IjelQtf443xK8ZquTbtbDl/IzB9PhH/eedg00OA2jPeWRUFXXyv+aTYFAOwAQmhTCM eQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vk5qj1e37-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 14 Oct 2019 11:31:15 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D3D6B100039;
 Mon, 14 Oct 2019 11:31:14 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B9B7C2BBC67;
 Mon, 14 Oct 2019 11:31:14 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 14 Oct
 2019 11:31:14 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Mon, 14 Oct 2019 11:31:14 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] ARM: dts: stm32: Enable high resolution timer
Thread-Topic: [PATCH] ARM: dts: stm32: Enable high resolution timer
Thread-Index: AQHVdRBWUjMsQJUFmUWpOD9xBCdtcac/P/aAgAAUtICAAAFTgIAAARMAgAAD+ACAGn2NgA==
Date: Mon, 14 Oct 2019 09:31:14 +0000
Message-ID: <61dda183-cd53-153b-8ed1-e2ecb8f96e03@st.com>
References: <20190927084819.645-1-benjamin.gaignard@st.com>
 <da48ce9633441cd0186518fa7ce1d528@www.loen.fr>
 <341949c8-7864-5d65-2797-988022724a4c@st.com>
 <ff11797da8f049b354797689754fde52@www.loen.fr>
 <69af57d1-13a9-9e35-78f2-4a0d17bdaf6d@st.com>
 <e376301a8e9ec02dfd7713748abed83e@www.loen.fr>
In-Reply-To: <e376301a8e9ec02dfd7713748abed83e@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <6FE1FB0E6257394EB81AD2DCD2303F11@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-14_06:2019-10-10,2019-10-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_023120_825239_6BE42F2E 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpPbiA5LzI3LzE5IDI6NTkgUE0sIE1hcmMgWnluZ2llciB3cm90ZToNCj4gT24gMjAxOS0wOS0y
NyAxMzo0NCwgQmVuamFtaW4gR0FJR05BUkQgd3JvdGU6DQo+PiBPbiA5LzI3LzE5IDI6NDEgUE0s
IE1hcmMgWnluZ2llciB3cm90ZToNCj4+PiBPbiAyMDE5LTA5LTI3IDEzOjM2LCBCZW5qYW1pbiBH
QUlHTkFSRCB3cm90ZToNCj4+Pj4gT24gOS8yNy8xOSAxOjIyIFBNLCBNYXJjIFp5bmdpZXIgd3Jv
dGU6DQo+Pj4+PiBPbiAyMDE5LTA5LTI3IDA5OjQ4LCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToN
Cj4+Pj4+PiBBZGRpbmcgYWx3YXlzLW9uIG1ha2VzIGFybSBhcmNoX3RpbWVyIGNsYWltIHRvIGJl
IGFuIGhpZ2ggcmVzb2x1dGlvbg0KPj4+Pj4+IHRpbWVyLg0KPj4+Pj4+IFRoYXQgaXMgcG9zc2li
bGUgYmVjYXVzZSBwb3dlciBtb2RlIHdvbid0IHN0b3AgY2xvY2tpbmcgdGhlIHRpbWVyLg0KPj4+
Pj4NCj4+Pj4+IFRoZSAiYWx3YXlzLW9uIiBpcyBub3QgYWJvdXQgdGhlIGNsb2NrLiBJdCBpcyBh
Ym91dCB0aGUgY29tcGFyYXRvci4NCj4+Pj4+IFRoZSBjbG9jayBpdHNlbGYgaXMgKmd1YXJhbnRl
ZWQqIHRvIGFsd2F5cyB0aWNrLiBJZiBpdCBkaWRuJ3QsDQo+Pj4+PiB0aGF0J2QgYmUNCj4+Pj4+
IGFuIGludGVncmF0aW9uIGJ1ZywgYW5kIGEgcHJldHR5IGJhZCBvbmUuDQo+Pj4+Pg0KPj4+Pj4g
V2hhdCB5b3UncmUgY2xhaW1pbmcgaGVyZSBpcyB0aGF0IHlvdXIgQ1BVIG5ldmVyIGVudGVycyBh
IGxvdy1wb3dlcg0KPj4+Pj4gbW9kZT8NCj4+Pj4+IEV2ZXI/IEkgZmluZCB0aGlzIHZlcnkgaGFy
ZCB0byBiZWxpZXZlLg0KPj4+Pj4NCj4+Pj4+IEZ1cnRoZXJtb3JlLCBjbGFpbWluZyB0aGF0IGFs
d2F5cy1vbiBpcyB0aGUgd2F5IHRvIGZvcmNlIHRoZSANCj4+Pj4+IGFyY2gtdGltZXINCj4+Pj4+
IHRvIGJlIGFuIGhydGltZXIgaXMgZmFjdHVhbGx5IHdyb25nLiBUaGlzIGlzIHdoYXQgaGFwcGVu
cyAqaWYqIA0KPj4+Pj4gdGhpcyBpcw0KPj4+Pj4gdGhlIG9ubHkgdGltZXIgaW4gdGhlIHN5c3Rl
bS4gVGhlIG9ubHkgY2FzZSB0aGlzIGlzIHRydWUgaXMgZm9yIA0KPj4+Pj4gdmlydHVhbA0KPj4+
Pj4gbWFjaGluZXMuIEFueXRoaW5nIGVsc2UgaGFzIGEgZ2xvYmFsIHRpbWVyIHNvbWV3aGVyZSB0
aGF0IHdpbGwgYWxsb3cNCj4+Pj4+IHRoZSBhcmNoIHRpbWVycyB0byBiZSB1c2VkIGFzIGFuIGhy
dGltZXIuDQo+Pj4+Pg0KPj4+Pj4gSSdtIHByZXR0eSBzdXJlIHlvdSB0b28gaGF2ZSBhIGdsb2Jh
bCB0aW1lciBzb21ld2hlcmUgaW4geW91ciBzeXN0ZW0uDQo+Pj4+PiBFbmFibGUgaXQsIGFuZCBl
bmpveSBocnRpbWVycyB3aXRob3V0IGhhdmluZyB0byBsaWUgYWJvdXQgdGhlDQo+Pj4+PiBwcm9w
ZXJ0aWVzDQo+Pj4+PiBvZiB5b3VyIHN5c3RlbSEgOy0pDQo+Pj4+DQo+Pj4+IEhpIE1hcmMsDQo+
Pj4+DQo+Pj4+IFRoaXMgU29DIGRvZXNuJ3QgaGF2ZSBhbnkgb3RoZXIgZ2xvYmFsIHRpbWVyLiBV
c2UgYXJjaF90aW1lIGlzIHRoZSANCj4+Pj4gb25seQ0KPj4+PiB3ZSBoYXZlIHRvIHByb3ZpZGUg
aHJ0aW1lciBvbiB0aGlzIHN5c3RlbS4NCj4+Pg0KPj4+IEFuZCB5b3UgZG9uJ3QgaGF2ZSBhbnkg
Zm9ybSBvZiBwb3dlciBtYW5hZ2VtZW50IGVpdGhlcj8gV2hhdCBoYXBwZW5zIA0KPj4+IHdoZW4N
Cj4+PiB5b3VyIENQVSBnb2VzIGludG8gaWRsZT8gSWYgeW91ciBzeXN0ZW0gZG9lcyBhbnkgZm9y
bSBvZiBwb3dlciANCj4+PiBtYW5hZ2VtZW50DQo+Pj4gKmFuZCogZG9lc24ndCBoYXZlIGEgc2Vw
YXJhdGUgdGltZXIsIGl0IGlzIHJlbWFya2FibHkgYnJva2VuLg0KPj4NCj4+IEV2ZW4gaW4gbG93
LXBvd2VyIG1vZGVzIHRoaXMgdGltZXIgaXMgYWx3YXlzIHBvd2VyZWQgYW5kIGNsb2NrZWQgc28g
aXQNCj4+IGlzIHdvcmtpbmcgZmluZS4NCj4NCj4gWW91J3JlIG1pc3NpbmcgdGhlIHBvaW50IGFn
YWluLiBJdCBpcyBub3QgYWJvdXQgdGhlIGNsb2NrLCBidXQgdGhlIA0KPiBjb21wYXJhdG9yDQo+
IHRoYXQgaXMgaW50ZXJuYWwgdG8gdGhlIENQVSwgYW5kIG5vdCBmdW5jdGlvbmFsIHdoZW4gdGhl
IENQVSBpcyBpbiBpdHMgDQo+IGxvd2VzdA0KPiBwb3dlciBtb2RlLiBTZWUgYWxzbyB0aGUgdmVy
YmlhZ2UgaW4gWzFdICg0NC4zIFNUR0VOIGZ1bmN0aW9uYWwgDQo+IGRlc2NyaXB0aW9uKSwNCj4g
d2hpY2ggaW5kaWNhdGVzIHRoYXQgdGhlIGNsb2NrIHNvdXJjZSBhY3R1YWxseSBkaWVzIGluIGxv
dy1wb3dlciBtb2RlIA0KPiAoZ29pbmcNCj4gYWdhaW5zdCB0aGUgYXJjaGl0ZWN0dXJlIHdoaWNo
IG1hbmRhdGVzIGl0IHRvIGJlIGFsd2F5cy1vbikuDQo+DQo+IEFsc28sIGNvbWluZyBiYWNrIHRv
IHlvdXIgZWFybGllciBhc3NlcnRpb24gKCJUaGlzIFNvQyBkb2Vzbid0IGhhdmUgDQo+IGFueSBv
dGhlcg0KPiBnbG9iYWwgdGltZXIiKTogVGhlIGRvY3VtZW50YXRpb24gYXQgWzFdIHNob3dzIGF0
IGxlYXN0IDE3IHRpbWVycyB0aGF0IA0KPiBjb3VsZA0KPiBiZSB1c2VkIGFuZCBhdm9pZCB0aGlz
IGRpcnR5IGhhY2suDQo+DQo+IFNvIGZvciB3aGF0IGl0IGlzIHdvcnRoLCBOQUsgdG8gdGhpcyBw
YXRjaC4NCg0KDQpIaSBNYXJjLA0KDQpJIGhhdmUgbGlzdGVuIHlvdXIgcmVtYXJrcyBhbmQgcHJv
cG9zZSBhbm90aGVyIHdheSB0byBzb2x2ZSB0aGlzIGlzc3VlOg0KDQpodHRwczovL2xrbWwub3Jn
L2xrbWwvMjAxOS8xMC85LzY5MA0KDQpUaGFua3MsDQoNCkJlbmphbWluDQoNCg0KPg0KPiDCoMKg
wqDCoMKgwqDCoCBNLg0KPg0KPiBbMV0gaHR0cHM6Ly93d3cuc3QuY29tL3Jlc291cmNlL2VuL3Jl
ZmVyZW5jZV9tYW51YWwvZG0wMDM2NjM1NS5wZGYKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
