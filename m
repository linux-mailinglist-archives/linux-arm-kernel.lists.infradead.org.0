Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E331C056A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 14:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZQUaUpZ8X+Kror9l4basaYMerqCWGsV0kjsYWPDlkg=; b=VurrXsKCnBJh7U
	asFME7L05DhNUZuaW+MYtLNpua9h8j/J+yU/2pR9rlAk0+RsnfnYJNHnrpGU1yXbgomeV5yj9wWq6
	HL5ed1u6PqozbhKMUM8QqI03klKCpLJ2TZWs1v+VCSHOMKugadFTI5WGVViw5DNpq6axlfAQhznOV
	VdFtwMQO+AkjU8L+GxQZHcHe1fb+iNh+YVHniRcMNU6Ond4vK5h1Nb9qgzsBfqM4e0FKtVEf/Hzva
	jXldgWeG9A/McMInfq6SsXa4vxjq8YDcqDd7s5O//RmtzWe+a6R9RK0JMj/MFXHHMqzntzvKIKpwu
	phs5OYr0VjX84a/jWuEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDpcZ-0001Kj-UH; Fri, 27 Sep 2019 12:45:15 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDpcQ-0000eM-EK
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 12:45:08 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8RCf7Do023288; Fri, 27 Sep 2019 14:45:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=c2263AQj5goxPH7EsCg1rVlru4wVSjoHgnO39hvQMvU=;
 b=r/mwFqxoJAAbj87JK8+QsrqK4//Z3gqalF4KpBrjPTVB2JQsYrRzLYcJFzHxqg2PxRE7
 4cm4Washim2C0ET+m+uFwBbEW8wZL/uE8ix1YYQ/nFrinQlC2AYV7roO4U6r1B2QG76u
 ccEQnJaNAXoz9B3cFj2iKvxZ8G3rK2ie/RSWQJKSTRR432Rcho9AC700iSonRYa8XNCg
 mkjcyu4cdiBQ1QpO2FXbiInaeJ+xchBL9IzgYs1yo3YO5qun1VnA65ML0nD83DlC6bGN
 pBpmMcI0H1jf3uPAryo0TU76dT4b/HhfzxyaMVyyJbzsr71orpQkdtZLs4TkEbjgFZWY dg== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v59mxmks1-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 27 Sep 2019 14:45:00 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 287334E;
 Fri, 27 Sep 2019 12:44:56 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9F3222BCB3B;
 Fri, 27 Sep 2019 14:44:56 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 27 Sep
 2019 14:44:56 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Fri, 27 Sep 2019 14:44:56 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] ARM: dts: stm32: Enable high resolution timer
Thread-Topic: [PATCH] ARM: dts: stm32: Enable high resolution timer
Thread-Index: AQHVdRBWUjMsQJUFmUWpOD9xBCdtcac/P/aAgAAUtICAAAFTgIAAARMA
Date: Fri, 27 Sep 2019 12:44:55 +0000
Message-ID: <69af57d1-13a9-9e35-78f2-4a0d17bdaf6d@st.com>
References: <20190927084819.645-1-benjamin.gaignard@st.com>
 <da48ce9633441cd0186518fa7ce1d528@www.loen.fr>
 <341949c8-7864-5d65-2797-988022724a4c@st.com>
 <ff11797da8f049b354797689754fde52@www.loen.fr>
In-Reply-To: <ff11797da8f049b354797689754fde52@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <92F7A698A77B6645A13BFC2DB06725DE@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-27_06:2019-09-25,2019-09-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_054506_791083_FFD7979B 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

DQpPbiA5LzI3LzE5IDI6NDEgUE0sIE1hcmMgWnluZ2llciB3cm90ZToNCj4gT24gMjAxOS0wOS0y
NyAxMzozNiwgQmVuamFtaW4gR0FJR05BUkQgd3JvdGU6DQo+PiBPbiA5LzI3LzE5IDE6MjIgUE0s
IE1hcmMgWnluZ2llciB3cm90ZToNCj4+PiBPbiAyMDE5LTA5LTI3IDA5OjQ4LCBCZW5qYW1pbiBH
YWlnbmFyZCB3cm90ZToNCj4+Pj4gQWRkaW5nIGFsd2F5cy1vbiBtYWtlcyBhcm0gYXJjaF90aW1l
ciBjbGFpbSB0byBiZSBhbiBoaWdoIHJlc29sdXRpb24NCj4+Pj4gdGltZXIuDQo+Pj4+IFRoYXQg
aXMgcG9zc2libGUgYmVjYXVzZSBwb3dlciBtb2RlIHdvbid0IHN0b3AgY2xvY2tpbmcgdGhlIHRp
bWVyLg0KPj4+DQo+Pj4gVGhlICJhbHdheXMtb24iIGlzIG5vdCBhYm91dCB0aGUgY2xvY2suIEl0
IGlzIGFib3V0IHRoZSBjb21wYXJhdG9yLg0KPj4+IFRoZSBjbG9jayBpdHNlbGYgaXMgKmd1YXJh
bnRlZWQqIHRvIGFsd2F5cyB0aWNrLiBJZiBpdCBkaWRuJ3QsIA0KPj4+IHRoYXQnZCBiZQ0KPj4+
IGFuIGludGVncmF0aW9uIGJ1ZywgYW5kIGEgcHJldHR5IGJhZCBvbmUuDQo+Pj4NCj4+PiBXaGF0
IHlvdSdyZSBjbGFpbWluZyBoZXJlIGlzIHRoYXQgeW91ciBDUFUgbmV2ZXIgZW50ZXJzIGEgbG93
LXBvd2VyIA0KPj4+IG1vZGU/DQo+Pj4gRXZlcj8gSSBmaW5kIHRoaXMgdmVyeSBoYXJkIHRvIGJl
bGlldmUuDQo+Pj4NCj4+PiBGdXJ0aGVybW9yZSwgY2xhaW1pbmcgdGhhdCBhbHdheXMtb24gaXMg
dGhlIHdheSB0byBmb3JjZSB0aGUgYXJjaC10aW1lcg0KPj4+IHRvIGJlIGFuIGhydGltZXIgaXMg
ZmFjdHVhbGx5IHdyb25nLiBUaGlzIGlzIHdoYXQgaGFwcGVucyAqaWYqIHRoaXMgaXMNCj4+PiB0
aGUgb25seSB0aW1lciBpbiB0aGUgc3lzdGVtLiBUaGUgb25seSBjYXNlIHRoaXMgaXMgdHJ1ZSBp
cyBmb3IgdmlydHVhbA0KPj4+IG1hY2hpbmVzLiBBbnl0aGluZyBlbHNlIGhhcyBhIGdsb2JhbCB0
aW1lciBzb21ld2hlcmUgdGhhdCB3aWxsIGFsbG93DQo+Pj4gdGhlIGFyY2ggdGltZXJzIHRvIGJl
IHVzZWQgYXMgYW4gaHJ0aW1lci4NCj4+Pg0KPj4+IEknbSBwcmV0dHkgc3VyZSB5b3UgdG9vIGhh
dmUgYSBnbG9iYWwgdGltZXIgc29tZXdoZXJlIGluIHlvdXIgc3lzdGVtLg0KPj4+IEVuYWJsZSBp
dCwgYW5kIGVuam95IGhydGltZXJzIHdpdGhvdXQgaGF2aW5nIHRvIGxpZSBhYm91dCB0aGUgDQo+
Pj4gcHJvcGVydGllcw0KPj4+IG9mIHlvdXIgc3lzdGVtISA7LSkNCj4+DQo+PiBIaSBNYXJjLA0K
Pj4NCj4+IFRoaXMgU29DIGRvZXNuJ3QgaGF2ZSBhbnkgb3RoZXIgZ2xvYmFsIHRpbWVyLiBVc2Ug
YXJjaF90aW1lIGlzIHRoZSBvbmx5DQo+PiB3ZSBoYXZlIHRvIHByb3ZpZGUgaHJ0aW1lciBvbiB0
aGlzIHN5c3RlbS4NCj4NCj4gQW5kIHlvdSBkb24ndCBoYXZlIGFueSBmb3JtIG9mIHBvd2VyIG1h
bmFnZW1lbnQgZWl0aGVyPyBXaGF0IGhhcHBlbnMgd2hlbg0KPiB5b3VyIENQVSBnb2VzIGludG8g
aWRsZT8gSWYgeW91ciBzeXN0ZW0gZG9lcyBhbnkgZm9ybSBvZiBwb3dlciBtYW5hZ2VtZW50DQo+
ICphbmQqIGRvZXNuJ3QgaGF2ZSBhIHNlcGFyYXRlIHRpbWVyLCBpdCBpcyByZW1hcmthYmx5IGJy
b2tlbi4NCg0KRXZlbiBpbiBsb3ctcG93ZXIgbW9kZXMgdGhpcyB0aW1lciBpcyBhbHdheXMgcG93
ZXJlZCBhbmQgY2xvY2tlZCBzbyBpdCANCmlzIHdvcmtpbmcgZmluZS4NCg0KPg0KPiDCoMKgwqDC
oMKgwqDCoCBNLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
