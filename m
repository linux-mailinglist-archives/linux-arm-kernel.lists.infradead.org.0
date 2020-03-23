Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1911618EEA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 04:53:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mS8y4jdYgi3n0i5UnhqKqGUKfJnIuvbmp8Y4Pi9s+9U=; b=nBXRt+BLjKhI9qNF/6qtvVGtP
	hvUzDfNsucEeBHL0U34InafhBC2CQSTOWQUVm1JSIWquQAqgQvQ5WJ7vSvJj+nKQS48Xme2l1hl7O
	ayya2BC+r6g7qRg8FBXmW+xAvgF9caYDL0o/DlbegneizlB7lrnk/GFJP1114oiW6roRP899UBdHZ
	YyMmx+H6IVVJ877SmiAIeNTjjtRFVM2JiQErPTFJn1WONpj6ERFkLHcBlruwuS5VNJ9xKsyk2vszp
	aCe0oYrX0eMoWXqywyGG8rKCupqgc3zUMqQzfa+uVQA/RulKhdPyJXDZ8RdDihVZlo6DfwMjO0lON
	xA79LRrVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGE9Q-00065s-NL; Mon, 23 Mar 2020 03:53:20 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGE9K-00065K-3u
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 03:53:15 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02N3qwla007132;
 Sun, 22 Mar 2020 22:52:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584935578;
 bh=J2EBw4R7xBK+XNXX1pVY/q3taGIhB/DfdmfHuKxeQEA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=c82liV2m0aVep6i5yfZTXdvhFw9gCECk/eJcpGbSDvSMsdvOQVFyNf0hSDYty+/XR
 8tETQuOkSWW3YjE2Iy/kF2j/Cus0MeORMdKnAad2tyDWVdXsIJBNUbBugHeG+09GKE
 bOUbS11kSwZt9T+YqleMuyjJGlpewt6vd5dLNMIk=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02N3qwKh102607
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 22 Mar 2020 22:52:58 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Sun, 22
 Mar 2020 22:52:57 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Sun, 22 Mar 2020 22:52:57 -0500
Received: from [10.250.133.209] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02N3qrlP039017;
 Sun, 22 Mar 2020 22:52:54 -0500
Subject: Re: [RESEND PATCH v4 2/4] thermal: k3: Add support for bandgap sensors
To: Daniel Lezcano <daniel.lezcano@linaro.org>, <rui.zhang@intel.com>,
 <robh+dt@kernel.org>
References: <20200318083028.9984-1-j-keerthy@ti.com>
 <20200318083028.9984-3-j-keerthy@ti.com>
 <ea3b34dc-42e3-0b10-4b89-faf2621a4ee2@linaro.org>
 <03b837de-ff25-2308-8a56-15bc3377cd5f@ti.com>
 <d8bff098-f852-4c55-0afc-d7fd043dd10a@linaro.org>
From: "J, KEERTHY" <j-keerthy@ti.com>
Message-ID: <b73f1fdc-16d6-7320-ab63-e51bb388fb5d@ti.com>
Date: Mon, 23 Mar 2020 09:22:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <d8bff098-f852-4c55-0afc-d7fd043dd10a@linaro.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_205314_307937_F238E204 
X-CRM114-Status: GOOD (  22.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAzLzE5LzIwMjAgNzowNiBQTSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gT24gMTkvMDMv
MjAyMCAxMzo1MiwgS2VlcnRoeSB3cm90ZToKPj4KPj4KPj4gT24gMTkvMDMvMjAgNjowOCBwbSwg
RGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+PiBPbiAxOC8wMy8yMDIwIDA5OjMwLCBLZWVydGh5IHdy
b3RlOgo+Pj4+IFRoZSBiYW5kZ2FwIHByb3ZpZGVzIGN1cnJlbnQgYW5kIHZvbHRhZ2UgcmVmZXJl
bmNlIGZvciBpdHMgaW50ZXJuYWwKPj4+PiBjaXJjdWl0cyBhbmQgb3RoZXIgYW5hbG9nIElQIGJs
b2Nrcy4gVGhlIGFuYWxvZy10by1kaWdpdGFsCj4+Pj4gY29udmVydGVyIChBREMpIHByb2R1Y2Vz
IGFuIG91dHB1dCB2YWx1ZSB0aGF0IGlzIHByb3BvcnRpb25hbAo+Pj4+IHRvIHRoZSBzaWxpY29u
IHRlbXBlcmF0dXJlLgo+Pj4+Cj4+Pj4gQ3VycmVudGx5IHJlYWRpbmcgdGVtcGVyYXR1cmVzIGFu
ZCBjcmVhdGluZyB3b3JrIHRvIHBlcmlvZGljYWxseQo+Pj4+IHJlYWQgdGVtcGVyYXR1cmVzIGZy
b20gdGhlIHpvbmVzIGFyZSBzdXBwb3J0ZWQuCj4+Pj4gVGhlcmUgYXJlIG5vIGFjdGl2ZS9wYXNz
aXZlIGNvb2xpbmcgYWdlbnQgc3VwcG9ydGVkLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogS2Vl
cnRoeSA8ai1rZWVydGh5QHRpLmNvbT4KPj4+PiAtLS0KPiAKPiBbIC4uLiBdCj4gCj4+Pj4gK3N0
YXRpYyBjb25zdCBpbnQgazNfYWRjX3RvX3RlbXBbXSA9IHsKPj4+PiArwqDCoMKgIC00MDAwMCwg
LTQwMDAwLCAtNDAwMDAsIC00MDAwMCwgLTM5ODAwLCAtMzk0MDAsIC0zOTAwMCwgLTM4NjAwLAo+
IAo+IFsgLi4uIF0KPiAKPj4+PiAxMjMwMDAsCj4+Pj4gK8KgwqDCoCAxMjM0MDAsIDEyMzgwMCwg
MTI0MjAwLCAxMjQ2MDAsIDEyNDkwMCwgMTI1MDAwLAo+Pj4+ICt9Owo+Pj4KPj4+IENhbiBiZSB0
aGlzIGFycmF5IHJlcGxhY2VkIGJ5IGFuIGluaXRpYWxpemF0aW9uIGFycmF5IHdpdGggYSBmb3Jt
dWxhPwo+Pj4KPj4+IFdoeSBkbyB3ZSBoYXZlIG1vc3Qgb2YgdGhlIHRpbWUgYSBzdGVwIG9mIDQw
MCB0aGVuIHN1ZGRlbmx5IDUwMCBhbmQgNDAwCj4+PiBhZ2Fpbj8gZWcuIDMwNjAwLCAzMTAwMCwg
MzE0MDAsIDMxOTAwLCAzMjUwMCwgMzMwMDAsIDMzNDAwCj4+Cj4+IFRoaXMgaGFzIGNvbWUgZnJv
bSBhIHBvbHlub21pYWwgZXF1YXRpb24gd2hpY2ggaSBkbyBub3Qgd2FudCB0bwo+PiBjYWxjdWxh
dGUgZXZlcnkgdGltZSB3ZSByZWFkIHRoZSB0ZW1wZXJhdHVyZS4gSGVuY2UgcHJlZmVyIExvb2sg
dXAgdGFibGUuCj4gCj4gQWdyZWUsIGl0IG1ha2VzIHNlbnNlIHRvIG5vdCBjYWxjdWxhdGUgZXZl
cnkgdGltZSB0aGUgdGVtcGVyYXR1cmUgaXMgcmVhZC4KPiAKPiBJIHdhcyBzdWdnZXN0aW5nIHRv
IGZpbGwgdGhlIGFycmF5IGF0IGluaXQgdGltZSB3aXRoIHRoaXMgcG9seW5vbWlhbAo+IGZvcm11
bGEgaW5zdGVhZCBvZiBoYXJkY29kaW5nIGl0LgoKQXMgaW4gY2FzZSBvZiBPTUFQIHRoaXMgaXMg
YSBzdGFuZGFyZCBwb2x5bm9taWFsIGVxdWF0aW9uIHRoYXQgZG9lcyBub3QKY2hhbmdlIHNvIGkg
d291bGQgcHJlZmVyIG5vdCBjYWxjdWxhdGluZyBpbiB0aGUgZHJpdmVyIGFuZCBoYXZpbmcgdGhl
IApsb29rIHVwIHRhYmxlIGZyb20gVFJNLgoKPiAKPiBbIC4uLiBdCj4gCj4+Pj4gKwo+Pj4+ICvC
oMKgwqAgLyogR2V0IHRoZSBzZW5zb3IgY291bnQgaW4gdGhlIFZUTSAqLwo+Pj4+ICvCoMKgwqAg
dmFsID0gcmVhZGwoYmdwLT5iYXNlICsgSzNfVlRNX0RFVklORk9fUFdSMF9PRkZTRVQpOwo+Pj4+
ICvCoMKgwqAgY250ID0gdmFsICYgSzNfVlRNX0RFVklORk9fUFdSMF9URU1QU0VOU19DVF9NQVNL
Owo+Pj4+ICvCoMKgwqAgY250ID4+PSBfX2ZmcyhLM19WVE1fREVWSU5GT19QV1IwX1RFTVBTRU5T
X0NUX01BU0spOwo+Pj4+ICsKPj4+PiArwqDCoMKgIGRhdGEgPSBkZXZtX2tjYWxsb2MoZGV2LCBj
bnQsIHNpemVvZigqZGF0YSksIEdGUF9LRVJORUwpOwo+Pj4+ICvCoMKgwqAgaWYgKCFkYXRhKSB7
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldCA9IC1FTk9NRU07Cj4+Pj4gK8KgwqDCoMKgwqDCoMKg
IGdvdG8gZXJyX2FsbG9jOwo+Pj4+ICvCoMKgwqAgfQo+Pj4+ICsKPj4+PiArwqDCoMKgIC8qIFJl
Z2lzdGVyIHRoZSB0aGVybWFsIHNlbnNvcnMgKi8KPj4+PiArwqDCoMKgIGZvciAoaWQgPSAwOyBp
ZCA8IGNudDsgaWQrKykgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBkYXRhW2lkXS5zZW5zb3JfaWQg
PSBpZDsKPj4+PiArwqDCoMKgwqDCoMKgwqAgZGF0YVtpZF0uYmdwID0gYmdwOwo+Pj4+ICvCoMKg
wqDCoMKgwqDCoCBkYXRhW2lkXS5jdHJsX29mZnNldCA9IEszX1ZUTV9UTVBTRU5TMF9DVFJMX09G
RlNFVCArCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlkICog
SzNfVlRNX1JFR1NfUEVSX1RTOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBkYXRhW2lkXS5zdGF0X29m
ZnNldCA9IGRhdGFbaWRdLmN0cmxfb2Zmc2V0ICsgMHg4Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBJ
TklUX1dPUksoJmRhdGFbaWRdLnRoZXJtYWxfd3EsIGszX3RoZXJtYWxfd29yayk7Cj4+Pgo+Pj4g
IMKgwqDCoMKgwqDCoMKgIFdoYXQgaXMgc3VwcG9zZWQgdG8gZG8gPwo+Pgo+PiBQZXJpb2RpY2Fs
bHkgcG9sbCB0ZW1wZXJhdHVyZS4gSSBrbm93IHRoZXJlIGlzIG5vIHBhc3NpdmUgY29vbGluZyBh
Z2VudAo+PiBsaWtlIGNwdWZyZXEgYXQgdGhlIG1vbWVudCBidXQgaSBkbyBoYXZlIGEgY3JpdGlj
YWwgdHJpcCBkbyB5b3UKPj4gcmVjb21tZW5kIHRvIHJlbW92ZSB0aGF0Pwo+IAo+IEFjdHVhbGx5
IEkgd2FzIHJlZmVycmluZyB0byB0aGUgd29ya3Egd2hpY2ggaXMgaW5pdGlhbGl6ZWQsIHRoZSBj
YWxsYmFjawo+IHNldCBidXQgaXQgaXMgbmV2ZXIgY2FsbGVkLiBJdCBjYW4gYmUgcmVtb3ZlZC4K
Ck9rYXkgZ290IGl0LgoKPiAKPiBQbGVhc2UgdGFrZSBhbHNvIHRoZSBvcHBvcnR1bml0eSB0byB3
cmFwIHRoZSBjYWxscyB0byB0aGUgcmVnaXN0ZXIgd2l0aAo+IGFuIGV4cGxpY2l0IGhlbHBlciBm
dW5jdGlvbiBuYW1lLgoKSUlVQyB0aGUgY29tbWVudCBhc2tzIG1lIHRvIGRlZmluZSBhIHNlcGFy
YXRlIGZ1bmN0aW9uIHRoYXQgdGFrZXMgY2FyZSAKb2YgdGhlIGJvZHkgb2YgdGhlIGZvciBsb29w
LgoKPiAKPiBBbmQgcmVtb3ZlIHJlZ19jbnQgd2hpY2ggaXMgdW51c2VkLgoKU3VyZQoKVGhhbmtz
LApLZWVydGh5Cj4gCj4gVGhhbmtzCj4gCj4gICAgLS0gRGFuaWVsCj4gCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
