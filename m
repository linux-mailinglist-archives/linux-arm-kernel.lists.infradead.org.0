Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4717B3CBD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eQCXOySO2geLht/EkqxQwBZq9Lumdq/vufU2a5C/2Qc=; b=NEpITqYqpOqgDSOYKGzuKXQyp
	g1xJfNuJrKgc7ISFoaAt3IcYw3NXneQ9HZrVoXK3vVW5v8yCmLZK8fpjxhzT2nAOxVdVP1COAXTL3
	wGx+Wdx5S/46IKwwOx+gjUYIoDuvNY/V23s/4I4UxpugaZtTTCQgLHMY/z0C3gx+FMbgl9pJAcQVK
	J18gfcC84Hun6/yVe3ip1mQTTlnDT77w5IbxyirzP31fboH+Zu7/C8g3JO5WdIUHqOBKqQBB9FRNW
	AvyggoTEs/2dMAKgrWUxe66iIwPZAGrifAOlMrksJzMRuSh5m7nAWb/RKruFIOlkASMA8cewcfEwG
	Ik6g+zW8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hag0J-0002qH-Ba; Tue, 11 Jun 2019 12:35:55 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafzV-0001YY-I7
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:35:08 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5BCZ2cq070648;
 Tue, 11 Jun 2019 07:35:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560256502;
 bh=zxW57rDxzLYqIutv31Adren8VVEhkYqoxchlfyq541o=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=OvhYcBVRTQ09BqDJrj+C244DNQeSta+Fjr6GUROjQwA2FXpVtIDpHQLgFPyBq0yNE
 kb9YnRHUfdfLb1eIXZOchUmQRusnvcSLdoC0xIM/J5yU3NN3QQ+G6V2BUifne5Vv+t
 zapWr3Sa36hnLa99Ke8agEjKcWY0/vnNr3UK0qjg=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5BCZ2ev092398
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Jun 2019 07:35:02 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 11
 Jun 2019 07:35:02 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 11 Jun 2019 07:35:02 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5BCZ0V6124749;
 Tue, 11 Jun 2019 07:35:00 -0500
Subject: Re: [PATCH v3 2/5] dt-bindings: ti_sci_pm_domains: Add support for
 exclusive and shared access
From: Tero Kristo <t-kristo@ti.com>
To: Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>
References: <20190410053728.17374-1-lokeshvutla@ti.com>
 <20190410053728.17374-3-lokeshvutla@ti.com>
 <9fe962b7-0500-6916-1dc3-04db0e11cd4d@ti.com>
Message-ID: <31dfd9ed-159f-95e7-f5a8-bcf6afec4eaa@ti.com>
Date: Tue, 11 Jun 2019 15:34:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <9fe962b7-0500-6916-1dc3-04db0e11cd4d@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_053505_715947_0F858304 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDIvMDUvMjAxOSAxMjoyNCwgVGVybyBLcmlzdG8gd3JvdGU6Cj4gT24gMTAvMDQvMjAxOSAw
ODozNywgTG9rZXNoIFZ1dGxhIHdyb3RlOgo+PiBUSVNDSSBwcm90b2NvbCBzdXBwb3J0cyBmb3Ig
ZW5hYmxpbmcgdGhlIGRldmljZSBlaXRoZXIgd2l0aCBleGNsdXNpdmUKPj4gcGVybWlzc2lvbnMg
Zm9yIHRoZSByZXF1ZXN0aW5nIGhvc3Qgb3Igd2l0aCBzaGFyaW5nIGFjcm9zcyB0aGUgaG9zdHMu
Cj4+IFRoZXJlIGFyZSBjZXJ0YWluIGRldmljZXMgd2hpY2ggYXJlIGV4Y2x1c2l2ZSB0byBMaW51
eCBjb250ZXh0IGFuZAo+PiB0aGVyZSBhcmUgY2VydGFpbiBkZXZpY2VzIHRoYXQgYXJlIHNoYXJl
ZCBhY3Jvc3MgZGlmZmVyZW50IGhvc3QgY29udGV4dHMuCj4+IFNvIGFkZCBzdXBwb3J0IGZvciBn
ZXR0aW5nIHRoaXMgaW5mb3JtYXRpb24gZnJvbSBEVCBieSBpbmNyZWFzaW5nCj4+IHRoZSBwb3dl
ci1kb21haW4gY2VsbHMgdG8gMi4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTG9rZXNoIFZ1dGxhIDxs
b2tlc2h2dXRsYUB0aS5jb20+Cj4gCj4gQmFzZWQgb24gc29tZSBvZmZsaW5lIGRpc2N1c3Npb25z
IHdpdGggUm9iLCBJIGFtIHdpdGhkcmF3aW5nIG15IGNvbmNlcm5zIAo+IG9uIHRoaXMgcGF0Y2gs
IHRodXM6Cj4gCj4gQWNrZWQtYnk6IFRlcm8gS3Jpc3RvIDx0LWtyaXN0b0B0aS5jb20+Cj4gCj4g
V2Ugd291bGQgc3RpbGwgbmVlZCBhY2sgZnJvbSBSb2IgdGhvdWdoLgoKUm9iPyBBbnkgY2hhbmNl
IHRvIGdldCBhY2sgb24gdGhpcz8KCi1UZXJvCgo+IAo+PiAtLS0KPj4gwqAgLi4uL2RldmljZXRy
ZWUvYmluZGluZ3Mvc29jL3RpL3NjaS1wbS1kb21haW4udHh0wqDCoMKgwqDCoCB8IDExICsrKysr
KysrKy0tCj4+IMKgIE1BSU5UQUlORVJTwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAx
ICsKPj4gwqAgaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvdGksc2NpX3BtX2RvbWFpbi5owqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8wqAgOSArKysrKysrKysKPj4gwqAgMyBmaWxlcyBjaGFuZ2VkLCAx
OSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQg
aW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvdGksc2NpX3BtX2RvbWFpbi5oCj4+Cj4+IGRpZmYgLS1n
aXQgCj4+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy90aS9zY2ktcG0t
ZG9tYWluLnR4dCAKPj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3Rp
L3NjaS1wbS1kb21haW4udHh0Cj4+IGluZGV4IGY3YjAwYTdjMGY2OC4uZjU0MWQxZjc3NmEyIDEw
MDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3RpL3Nj
aS1wbS1kb21haW4udHh0Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9zb2MvdGkvc2NpLXBtLWRvbWFpbi50eHQKPj4gQEAgLTE5LDggKzE5LDE1IEBAIGNoaWxkIG9m
IHRoZSBwbW1jIG5vZGUuCj4+IMKgIFJlcXVpcmVkIFByb3BlcnRpZXM6Cj4+IMKgIC0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4+IMKgIC0gY29tcGF0aWJsZTogc2hvdWxkIGJlICJ0aSxzY2ktcG0tZG9t
YWluIgo+PiAtLSAjcG93ZXItZG9tYWluLWNlbGxzOiBNdXN0IGJlIDEgc28gdGhhdCBhbiBpZCBj
YW4gYmUgcHJvdmlkZWQgaW4gZWFjaAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBk
ZXZpY2Ugbm9kZS4KPj4gKy0gI3Bvd2VyLWRvbWFpbi1jZWxsczogQ2FuIGJlIG9uZSBvZiB0aGUg
Zm9sbG93aW5nOgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxOiBDb250YWluaW5nIHRoZSBk
ZXZpY2UgaWQgb2YgZWFjaCBub2RlCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDI6IEZpcnN0
IGVudHJ5IHNob3VsZCBiZSBkZXZpY2UgaWQKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgU2Vjb25kIGVudHJ5IHNob3VsZCBiZSBvbmUgb2YgdGhlIGZsb293aW5nOgo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUSV9TQ0lfUERfRVhDTFVTSVZFOiBUbyBhbGxvdyBkZXZp
Y2UgdG8gYmUKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZXhjbHVzaXZlbHkgY29udHJvbGxlZCBieQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0aGUgcmVxdWVzdGluZyBob3N0cy4KPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgVElfU0NJX1BEX1NIQVJFRDogVG8gYWxsb3cgZGV2aWNlIHRv
IGJlIHNoYXJlZAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGJ5IG11bHRpcGxlIGhvc3RzLgo+PiDCoCBFeGFtcGxlIChLMkcpOgo+PiDCoCAtLS0t
LS0tLS0tLS0tCj4+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCj4+IGlu
ZGV4IDIzNTllMTJlNGM0MS4uZGM3YTE5Y2MxODMxIDEwMDY0NAo+PiAtLS0gYS9NQUlOVEFJTkVS
Uwo+PiArKysgYi9NQUlOVEFJTkVSUwo+PiBAQCAtMTUzNDUsNiArMTUzNDUsNyBAQCBGOsKgwqDC
oCBkcml2ZXJzL2Zpcm13YXJlL3RpX3NjaSoKPj4gwqAgRjrCoMKgwqAgaW5jbHVkZS9saW51eC9z
b2MvdGkvdGlfc2NpX3Byb3RvY29sLmgKPj4gwqAgRjrCoMKgwqAgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3NvYy90aS9zY2ktcG0tZG9tYWluLnR4dAo+PiDCoCBGOsKgwqDCoCBk
cml2ZXJzL3NvYy90aS90aV9zY2lfcG1fZG9tYWlucy5jCj4+ICtGOsKgwqDCoCBpbmNsdWRlL2R0
LWJpbmRpbmdzL3NvYy90aSxzY2lfcG1fZG9tYWluLmgKPj4gwqAgRjrCoMKgwqAgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L3RpLHNjaS1yZXNldC50eHQKPj4gwqAgRjrC
oMKgwqAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3RpLHNjaS1jbGsu
dHh0Cj4+IMKgIEY6wqDCoMKgIGRyaXZlcnMvY2xrL2tleXN0b25lL3NjaS1jbGsuYwo+PiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvdGksc2NpX3BtX2RvbWFpbi5oIAo+PiBi
L2luY2x1ZGUvZHQtYmluZGluZ3Mvc29jL3RpLHNjaV9wbV9kb21haW4uaAo+PiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjhmMmE3MzYwYjY1ZQo+PiAtLS0gL2Rl
di9udWxsCj4+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3Mvc29jL3RpLHNjaV9wbV9kb21haW4u
aAo+PiBAQCAtMCwwICsxLDkgQEAKPj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwt
Mi4wICovCj4+ICsKPj4gKyNpZm5kZWYgX19EVF9CSU5ESU5HU19USV9TQ0lfUE1fRE9NQUlOX0gK
Pj4gKyNkZWZpbmUgX19EVF9CSU5ESU5HU19USV9TQ0lfUE1fRE9NQUlOX0gKPj4gKwo+PiArI2Rl
ZmluZSBUSV9TQ0lfUERfRVhDTFVTSVZFwqDCoMKgIDEKPj4gKyNkZWZpbmUgVElfU0NJX1BEX1NI
QVJFRMKgwqDCoCAwCj4+ICsKPj4gKyNlbmRpZiAvKiBfX0RUX0JJTkRJTkdTX1RJX1NDSV9QTV9E
T01BSU5fSCAqLwo+Pgo+IAoKLS0KVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2th
bGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuIFktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIx
LTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
