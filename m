Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C19D183965
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 20:25:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFXzocs+5KjA5Kzw3UJGp7zh0/OF8uJfS1ltydfJH6Y=; b=kysjxIi73tO/0/
	COEkXYpL5X5Q2SB3FPi5h0fj81jrxCv6aTaeLc3b7p607hAd4YJFShx6y5De6i3DlHnecClcppm5q
	nPX0rMTQvZDfoHvp4i/40TAIKAiaSaLPc538q4vAX/NjqJhoM4rAvsq+haENcsad0wBiMKYmPYw4p
	rjwQLxPyBaEijmk0frQpYMjZU7crJ9jxJR4ADOAbckwSVu/po5q3jBcDk+n76YZGl4DxeBSvpxWnE
	fho/cdHYZhmcV6lmAQTT2779FBVuLlFi4RglAEdy/OPksOtn9kVcLgq/yZNC1JJhfh7hVouMS6KyP
	Av47TwJgYbzvowvF/LRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCTRw-00060X-4d; Thu, 12 Mar 2020 19:24:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCTRo-0005ys-DF
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 19:24:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 930EF31B;
 Thu, 12 Mar 2020 12:24:43 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C81523F67D;
 Thu, 12 Mar 2020 12:24:42 -0700 (PDT)
Subject: Re: [PATCH v4 07/13] firmware: arm_scmi: Add notification dispatch
 and delivery
To: Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-8-cristian.marussi@arm.com>
 <45d4aee9-57df-6be9-c176-cf0d03940c21@arm.com>
 <ec3cc098-da70-f101-fe5c-29741c8f2a62@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <c9d64cad-3bde-602f-ab83-21c997fa472f@arm.com>
Date: Thu, 12 Mar 2020 19:24:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <ec3cc098-da70-f101-fe5c-29741c8f2a62@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_122448_536958_229C9BB5 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jonathan.Cameron@Huawei.com, james.quinlan@broadcom.com,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMDMvMjAyMCAxNDowNiwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gCj4gCj4gT24gMy8xMi8y
MCAxOjUxIFBNLCBMdWthc3ogTHViYSB3cm90ZToKPj4gSGkgQ3Jpc3RpYW4sCj4+CgpIaSBMdWth
c3oKCj4+IGp1c3Qgb25lIGNvbW1lbnQgYmVsb3cuLi4KPj4KPj4gT24gMy80LzIwIDQ6MjUgUE0s
IENyaXN0aWFuIE1hcnVzc2kgd3JvdGU6Cj4+PiBBZGQgY29yZSBTQ01JIE5vdGlmaWNhdGlvbnMg
ZGlzcGF0Y2ggYW5kIGRlbGl2ZXJ5IHN1cHBvcnQgbG9naWMgd2hpY2ggaXMKPj4+IGFibGUsIGF0
IGZpcnN0LCB0byBkaXNwYXRjaCB3ZWxsLWtub3duIHJlY2VpdmVkIGV2ZW50cyBmcm9tIHRoZSBS
WCBJU1IgdG8KPj4+IHRoZSBkZWRpY2F0ZWQgZGVmZXJyZWQgd29ya2VyLCBhbmQgdGhlbiwgZnJv
bSB0aGVyZSwgdG8gZmluYWwgZGVsaXZlciB0aGUKPj4+IGV2ZW50cyB0byB0aGUgcmVnaXN0ZXJl
ZCB1c2VycycgY2FsbGJhY2tzLgo+Pj4KPj4+IERpc3BhdGNoIGFuZCBkZWxpdmVyeSBpcyBqdXN0
IGFkZGVkIGhlcmUsIHN0aWxsIG5vdCBlbmFibGVkLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENy
aXN0aWFuIE1hcnVzc2kgPGNyaXN0aWFuLm1hcnVzc2lAYXJtLmNvbT4KPj4+IC0tLQo+Pj4gVjMg
LS0+IFY0Cj4+PiAtIGRpc3BhdGNoZXIgbm93IGhhbmRsZXMgZGVxdWV1aW5nIG9mIGV2ZW50cyBp
biBjaHVua3MgKGhlYWRlcitwYXlsb2FkKToKPj4+IMKgwqAgaGFuZGxpbmcgb2YgdGhlc2UgaW5f
ZmxpZ2h0IGV2ZW50cyBsZXQgdXMgcmVtb3ZlIG9uZSB1bm5lZWRlZCBtZW1jcHkKPj4+IMKgwqAg
b24gUlggaW50ZXJydXB0IHBhdGggKHNjbWlfbm90aWZ5KQo+Pj4gLSBkZWZlcnJlZCBkaXNwYXRj
aGVyIG5vdyBhY2Nlc3MgdGhlaXIgb3duIHBlci1wcm90b2NvbCBoYW5kbGVycycgdGFibGUKPj4+
IMKgwqAgcmVkdWNpbmcgbG9ja2luZyBjb250ZW50aW9uIG9uIHRoZSBSWCBwYXRoCj4+PiBWMiAt
LT4gVjMKPj4+IC0gZXhwb3Npbmcgd3EgaW4gc3lzZnMgdmlhIFdRX1NZU0ZTCj4+PiBWMSAtLT4g
VjIKPj4+IC0gc3BsaXR0ZWQgb3V0IG9mIFYxIHBhdGNoIDA0Cj4+PiAtIG1vdmVkIGZyb20gSURS
IG1hcHMgdG8gcmVhbCBIYXNoVGFibGVzIHRvIHN0b3JlIGV2ZW50X2hhbmRsZXJzCj4+PiAtIHNp
bXBsaWZpZWQgZGVsaXZlcnkgbG9naWMKPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9maXJtd2FyZS9h
cm1fc2NtaS9ub3RpZnkuYyB8IDMzNCArKysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+Pj4g
wqAgZHJpdmVycy9maXJtd2FyZS9hcm1fc2NtaS9ub3RpZnkuaCB8wqDCoCA5ICsKPj4+IMKgIDIg
ZmlsZXMgY2hhbmdlZCwgMzQyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9maXJtd2FyZS9hcm1fc2NtaS9ub3RpZnkuYyAKPj4+IGIvZHJp
dmVycy9maXJtd2FyZS9hcm1fc2NtaS9ub3RpZnkuYwo+Pgo+PiBbc25pcF0KPj4KPj4+ICsKPj4+
ICsvKioKPj4+ICsgKiBzY21pX25vdGlmecKgIC0gUXVldWVzIGEgbm90aWZpY2F0aW9uIGZvciBm
dXJ0aGVyIGRlZmVycmVkIHByb2Nlc3NpbmcKPj4+ICsgKgo+Pj4gKyAqIFRoaXMgaXMgY2FsbGVk
IGluIGludGVycnVwdCBjb250ZXh0IHRvIHF1ZXVlIGEgcmVjZWl2ZWQgZXZlbnQgZm9yCj4+PiAr
ICogZGVmZXJyZWQgcHJvY2Vzc2luZy4KPj4+ICsgKgo+Pj4gKyAqIEBoYW5kbGU6IFRoZSBoYW5k
bGUgaWRlbnRpZnlpbmcgdGhlIHBsYXRmb3JtIGluc3RhbmNlIGZyb20gd2hpY2ggdGhlCj4+PiAr
ICrCoMKgwqDCoMKgwqDCoCBkaXNwYXRjaGVkIGV2ZW50IGlzIGdlbmVyYXRlZAo+Pj4gKyAqIEBw
cm90b19pZDogUHJvdG9jb2wgSUQKPj4+ICsgKiBAZXZ0X2lkOiBFdmVudCBJRCAobXNnSUQpCj4+
PiArICogQGJ1ZjogRXZlbnQgTWVzc2FnZSBQYXlsb2FkICh3aXRob3V0IHRoZSBoZWFkZXIpCj4+
PiArICogQGxlbjogRXZlbnQgTWVzc2FnZSBQYXlsb2FkIHNpemUKPj4+ICsgKiBAdHM6IFJYIFRp
bWVzdGFtcCBpbiBuYW5vc2Vjb25kcyAoYm9vdHRpbWUpCj4+PiArICoKPj4+ICsgKiBSZXR1cm46
IDAgb24gU3VjY2Vzcwo+Pj4gKyAqLwo+Pj4gK2ludCBzY21pX25vdGlmeShjb25zdCBzdHJ1Y3Qg
c2NtaV9oYW5kbGUgKmhhbmRsZSwgdTggcHJvdG9faWQsIHU4IAo+Pj4gZXZ0X2lkLAo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGNvbnN0IHZvaWQgKmJ1Ziwgc2l6ZV90IGxlbiwgdTY0IHRzKQo+Pj4gK3sK
Pj4+ICvCoMKgwqAgc3RydWN0IHNjbWlfcmVnaXN0ZXJlZF9ldmVudCAqcl9ldnQ7Cj4+PiArwqDC
oMKgIHN0cnVjdCBzY21pX2V2ZW50X2hlYWRlciBlaDsKPj4+ICvCoMKgwqAgc3RydWN0IHNjbWlf
bm90aWZ5X2luc3RhbmNlICpuaSA9IGhhbmRsZS0+bm90aWZ5X3ByaXY7Cj4+PiArCj4+PiArwqDC
oMKgIC8qIEVuc3VyZSBhdG9taWMgdmFsdWUgaXMgdXBkYXRlZCAqLwo+Pj4gK8KgwqDCoCBzbXBf
bWJfX2JlZm9yZV9hdG9taWMoKTsKPj4+ICvCoMKgwqAgaWYgKHVubGlrZWx5KCFhdG9taWNfcmVh
ZCgmbmktPmVuYWJsZWQpKSkKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4+ICsKPj4+
ICvCoMKgwqAgcl9ldnQgPSBTQ01JX0dFVF9SRVZUKG5pLCBwcm90b19pZCwgZXZ0X2lkKTsKPj4+
ICvCoMKgwqAgaWYgKHVubGlrZWx5KCFyX2V2dCkpCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IC1FSU5WQUw7Cj4+PiArCj4+PiArwqDCoMKgIGlmICh1bmxpa2VseShsZW4gPiByX2V2dC0+ZXZ0
LT5tYXhfcGF5bGRfc3opKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgcHJfZXJyKCJTQ01JIE5vdGlm
aWNhdGlvbnM6IGRpc2NhcmQgYmFkbHkgc2l6ZWQgbWVzc2FnZVxuIik7Cj4+PiArwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+PiArwqDCoMKgIH0KPj4+ICvCoMKgwqAgaWYgKHVubGlr
ZWx5KGtmaWZvX2F2YWlsKCZyX2V2dC0+cHJvdG8tPmVxdWV1ZS5rZmlmbykgPAo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplb2YoZWgpICsgbGVuKSkgewo+Pj4gK8KgwqDCoMKgwqDC
oMKgIHByX3dhcm4oIlNDTUkgTm90aWZpY2F0aW9uczogcXVldWUgZnVsbCBkcm9wcGluZyBwcm90
b19pZDolZCAgCj4+PiBldnRfaWQ6JWTCoCB0czolbGxkXG4iLAo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcHJvdG9faWQsIGV2dF9pZCwgdHMpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVy
biAtRU5PTUVNOwo+Pj4gK8KgwqDCoCB9Cj4+PiArCj4+PiArwqDCoMKgIGVoLnRpbWVzdGFtcCA9
IHRzOwo+Pj4gK8KgwqDCoCBlaC5ldnRfaWQgPSBldnRfaWQ7Cj4+PiArwqDCoMKgIGVoLnBheWxk
X3N6ID0gbGVuOwo+Pj4gK8KgwqDCoCBrZmlmb19pbigmcl9ldnQtPnByb3RvLT5lcXVldWUua2Zp
Zm8sICZlaCwgc2l6ZW9mKGVoKSk7Cj4+PiArwqDCoMKgIGtmaWZvX2luKCZyX2V2dC0+cHJvdG8t
PmVxdWV1ZS5rZmlmbywgYnVmLCBsZW4pOwo+Pj4gK8KgwqDCoCBxdWV1ZV93b3JrKHJfZXZ0LT5w
cm90by0+ZXF1ZXVlLndxLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgICZyX2V2dC0+cHJvdG8t
PmVxdWV1ZS5ub3RpZnlfd29yayk7Cj4+Cj4+IElzIGl0IHNhZmUgdG8gaWdub3JlIHRoZSByZXR1
cm4gdmFsdWUgZnJvbSB0aGUgcXVldWVfd29yayBoZXJlPwo+IAo+IGFuZCBhbHNvIGZyb20gdGhl
IGtmaWZvX2luCj4gCgprZmlmb19pbiByZXR1cm5zIHRoZSBudW1iZXIgb2YgZWZmZWN0aXZlbHkg
d3JpdHRlbiBieXRlcyAodXNpbmcgX19rZmlmb19pbiksCnBvc3NpYmx5IGNhcHBlZCB0byB0aGUg
ZWZmZWN0aXZlbHkgbWF4aW11bSBhdmFpbGFibGUgc3BhY2UgaW4gdGhlIGZpZm8sIEJVVCBzaW5j
ZSBJCmFic29sdXRlbHkgY2Fubm90IGFmZm9yZCB0byB3cml0ZSBhbiBpbmNvbXBsZXRlL3RydW5j
YXRlZCBldmVudCBpbnRvIHRoZSBxdWV1ZSwgSSBjaGVjawp0aGF0IGluIGFkdmFuY2UgYW5kIGJh
Y2tvdXQgb24gcXVldWUgZnVsbDoKCmlmICh1bmxpa2VseShrZmlmb19hdmFpbCgmcl9ldnQtPnBy
b3RvLT5lcXVldWUua2ZpZm8pIDwgc2l6ZW9mKGVoKSArIGxlbikpIHsKCXJldHVybiAtRU5PTUVN
OwoKYW5kIGdpdmVuIHRoYXQgdGhlIElTUiBzY21pX25vdGlmeSgpIGlzIHRoZSBvbmx5IHBvc3Np
YmxlIHdyaXRlciBvbiB0aGlzIHF1ZXVlCkkgY2FuIGJlIHN1cmUgdGhhdCB0aGUga2ZpZm9faW4o
KSB3aWxsIHN1Y2NlZWQgaW4gd3JpdGluZyB0aGUgcmVxdWlyZWQgbnVtYmVyIG9mCmJ5dGVzIGFm
dGVyIHRoZSBhYm92ZSBjaGVjay4uLnNvIEkgZG9uJ3QgbmVlZCB0byBjaGVjayB0aGUgcmV0dXJu
IHZhbHVlLgoKUmVnYXJkcwoKQ3Jpc3RpYW4KCj4+Cj4+IFJlZ2FyZHMsCj4+IEx1a2Fzego+Pgo+
PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
