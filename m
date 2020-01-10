Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05586136BF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aL6xrpJLIjRdwsTg09LKHQeuhIIiqiCu1t3s+g9ztZ8=; b=GBCzULyxtxTQi4Z1D45u7Xk2O
	C3rYYYGZMIYUycZGvJ6HC5CKIB0uocwx8vGiVxC//nif45ETKV+7wk8Y44UjNyR5TDPGvQkCoqTJG
	icO9L8SWxuxLAy3esuB3ptKLCVX622TqkAJzeeFB2GUwLKftC8N0IceVpuLIJRymU8a7nhMPkT3rb
	GZwdxA7YObk1jaaRQsGnwjaa3UuqwsBhGIAWvWhmwbkTzSGpmEMq2pnZJeWDoUrdnVwfmtqPX5gDo
	NFZmfO+mfwhEUaPFssH6eiqd6ScbInuU/YXAs6J7ArD5MeS05SVHQ8Td2yTlQG87qWd+R3Q2dSeXY
	x2md9mFYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipsT9-0003be-Tx; Fri, 10 Jan 2020 11:28:47 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsT0-0003Yh-DN
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:28:40 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 22CB5E1CF0C553E95238;
 Fri, 10 Jan 2020 19:28:29 +0800 (CST)
Received: from [127.0.0.1] (10.133.217.236) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 10 Jan 2020 19:28:18 +0800
Subject: Re: [RFC PATCH] arm64/ftrace: support dynamically allocated
 trampolines
To: Mark Rutland <mark.rutland@arm.com>
References: <20200109142736.1122-1-cj.chengjian@huawei.com>
 <20200109164858.GH3112@lakrids.cambridge.arm.com>
From: "chengjian (D)" <cj.chengjian@huawei.com>
Message-ID: <b0457ef0-f1b2-e258-b59d-aa9af8e48c5d@huawei.com>
Date: Fri, 10 Jan 2020 19:28:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200109164858.GH3112@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.133.217.236]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_032838_799300_4C23EAA8 
X-CRM114-Status: GOOD (  28.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "chengjian \(D\)" <cj.chengjian@huawei.com>, xiexiuqi@huawei.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 bobo.shaobowang@huawei.com, duwe@lst.de, huawei.libin@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIE1hcmsKCiDCoMKgwqAgVGhhbmtzIGZvciB5b3VyIHJlcGx5LgoKT24gMjAyMC8xLzEwIDA6
NDgsIE1hcmsgUnV0bGFuZCB3cm90ZToKPiBPbiBUaHUsIEphbiAwOSwgMjAyMCBhdCAwMjoyNzoz
NlBNICswMDAwLCBDaGVuZyBKaWFuIHdyb3RlOgo+Cj4gSnVzdCBob3cgYmFkIGlzIHRoaXMsIGFu
ZCB3aGVuL3doZXJlIGRvZXMgaXQgbWF0dGVyPwo+Cj4gSG93IG11Y2ggZG9lcyB0aGlzIHBhdGNo
IGltcHJvdmUgbWF0dGVycz8KCkkgd2lsbCBoYXZlIGEgdGVzdCBhYm91dCB0aGlzLgoKPj4gS25v
d24gaXNzdWVzIDoKPj4gSWYga2FzbHIgaXMgZW5hYmxlZCwgdGhlIGFkZHJlc3Mgb2YgdHJhbXAg
YW5kIGZ0cmFjZSBjYWxsCj4+IG1heSBiZSBmYXIgYXdheS4gVGhlcmVmb3JlLCBsb25nIGp1bXAg
c3VwcG9ydCBpcyByZXF1aXJlZC4KPj4gSGVyZSBJIGludGVuZCB0byB1c2UgdGhlIHNhbWUgc29s
dXRpb24gYXMgbW9kdWxlIHJlbG9jYXRpbmcsCj4+IFJlc2VydmUgZW5vdWdoIHNwYWNlIGZvciBQ
TFQgYXQgdGhlIGVuZCB3aGVuIGFsbG9jYXRpbmcsIGNhbgo+PiB1c2UgUExUIHRvIGNvbXBsZXRl
IHRoZXNlIGxvbmcganVtcHMuCj4gVGhpcyBjYW4gaGFwcGVuIGJvdGggd2F5czsgdGhlIGNhbGxz
aXRlIGNhbiBhbHNvIGJlIHRvbyBmYXIgZnJvbSB0aGUKPiB0cmFtcG9saW5lIHRvIGJlIGFibGUg
dG8gYnJhbmNoIHRvIGl0LgoKClllcywgdGhhdCBjYW4gaGFwcGVuIGJvdGggd2F5cy4KCj4gSSd2
ZSBoYWQgaXNzdWVzIHdpdGggdGhhdCBmb3Igb3RoZXIgcmVhc29ucywgYW5kIEkgdGhpbmsgdGhh
dCB3ZSBtaWdodAo+IGJlIGFibGUgdG8gdXNlIC1mcGF0Y2hhYmxlLWZ1bmN0aW9uLWVudHJ5PU4s
TSB0byBwbGFjZSBhIFBMVCBpbW1lZGlhdGVseQo+IGJlZm9yZSBlYWNoIGZ1bmN0aW9uIGZvciB0
aGF0LiBIb3dldmVyLCBJJ20gd2FyeSBvZiBkb2luZyBzbyBiZWNhdXNlIGl0Cj4gbWFrZXMgaXQg
bXVjaCBoYXJkZXIgdG8gbW9kaWZ5IHRoZSBwYXRjaCBzaXRlIGl0c2VsZi4KCgpUaGlzIHNvdW5k
cyBnb29kLiBJIGhhdmUgbm8gYmV0dGVyIGlkZWEgdGhhbiB0aGlzIG5vdy4KCkF0IGxlYXN0IHRy
eSBpdCBmaXJzdC4KCgo+Cj4+ICAgCj4+ICtHTE9CQUwoZnRyYWNlX2NvbW1vbl9lbmQpCj4+ICAg
CXJldAl4OQo+IFRoaXMgZG9lc24ndCBsb29rIHJpZ2h0LiBTdXJlbHkgeW91IHdhbnQgdGhlIFJF
VCwgdG9vPwoKCkkgd2lsbCBmaXggdGhpcyBlcnJvciwgdGhhbmtzLgoKPiArLyoKPiArICogZnRy
YWNlX2NhbGxlcigpIG9yIGZ0cmFjZV9yZWdzX2NhbGxlcigpIHRyYW1wb2xpbmUKPiArICoJCQkJ
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKiBmdHJhY2VfKHJlZ3NfKWNhbGxlciA9Pgl8
CS4uLi4uLgkJfAo+ICsgKiBmdHJhY2VfKHJlZ3NfKWNhbGxlcl9lbmQgPT4JfCBiIGZ0cmFjZV9j
b21tb24JfCA9PiBub3AKPiArICoJCQkJKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKiBm
dHJhY2VfY29tbW9uID0+CQl8CS4uLi4uLgkJfAo+ICsgKiBmdW5jdGlvbl90cmFjZV9vcF9wdHIg
PT4JfCBhZHJwIHgyLCBzeW0JCXwgPT4gbm9wCj4gKyAqCQkJCXwgbGRyICB4MixbeDIsOmxvMTI6
c3ltXXwgPT4gbGRyIHgyIDxmdHJhY2Vfb3A+Cj4gKyAqCQkJCXwJLi4uLi4uCQl8Cj4gKyAqIGZ0
cmFjZV9jb21tb25fZW5kICA9Pgl8CXJldHEJCXwKPiBDb3B5LXBhc3RlIGZyb20geDg2PyBhcm02
NCBkb2Vzbid0IGhhdmUgYSByZXRxIGluc3RydWN0aW9uLgo+Cj4+ICsgKgkJCQkrLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0rCj4+ICsgKiBmdHJhY2Vfb3B0ID0+CQl8CWZ0cmFjZV9vcHQJfAo+PiAr
ICoJCQkJKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+IFR5cG86IHMvb3B0L29wcy8gPwoKU29y
cnkgZm9yIHRoZXNlIHNjZW5lcy4KCgo+PiArICovCj4+ICtzdGF0aWMgdW5zaWduZWQgbG9uZyBj
cmVhdGVfdHJhbXBvbGluZShzdHJ1Y3QgZnRyYWNlX29wcyAqb3BzLCB1bnNpZ25lZCBpbnQgKnRy
YW1wX3NpemUpCj4+ICt7Cj4+ICsJdW5zaWduZWQgbG9uZyBzdGFydF9vZmZzZXRfY2FsbGVyLCBl
bmRfb2Zmc2V0X2NhbGxlciwgY2FsbGVyX3NpemU7Cj4+ICsJdW5zaWduZWQgbG9uZyBzdGFydF9v
ZmZzZXRfY29tbW9uLCBlbmRfb2Zmc2V0X2NvbW1vbiwgY29tbW9uX3NpemU7Cj4+ICsJdW5zaWdu
ZWQgbG9uZyBvcF9vZmZzZXQsIG9mZnNldCwgc2l6ZSwgaXAsIG5wYWdlczsKPj4gKwl2b2lkICp0
cmFtcG9saW5lOwo+PiArCXVuc2lnbmVkIGxvbmcgKnB0cjsKPj4gKwkvKiBsZHIgeDIsIDxsYWJl
bD4gKi8KPj4gKwl1MzIgcGNfbGRyID0gMHg1ODAwMDAwMjsKPj4gKwl1MzIgbWFzayA9IEJJVCgx
OSkgLSAxOwo+IEluc3RlYWQgb2Ygb3Blbi1jb2RpbmcgdGhpcywgcGxlYXNlIHRlYWNoIHRoZSBp
bnNuIGZyYW1ld29yayBob3cgdG8KPiBlbmNvZGUgTERSIChpbW1lZGlhdGUpLgoKCkkgd2lsbCwg
VGhhbmsgeW91LgoKPgo+PiArCWludCBzaGlmdCA9IDU7Cj4+ICsJaW50IHJldDsKPj4gKwl1MzIg
bm9wOwo+PiArCj4+ICsJaWYgKG9wcy0+ZmxhZ3MgJiBGVFJBQ0VfT1BTX0ZMX1NBVkVfUkVHUykg
ewo+PiArCQlzdGFydF9vZmZzZXRfY2FsbGVyID0gKHVuc2lnbmVkIGxvbmcpZnRyYWNlX3JlZ3Nf
Y2FsbGVyOwo+PiArCQllbmRfb2Zmc2V0X2NhbGxlciA9ICh1bnNpZ25lZCBsb25nKWZ0cmFjZV9y
ZWdzX2NhbGxlcl9lbmQ7Cj4+ICsJfSBlbHNlIHsKPj4gKwkJc3RhcnRfb2Zmc2V0X2NhbGxlciA9
ICh1bnNpZ25lZCBsb25nKWZ0cmFjZV9jYWxsZXI7Cj4+ICsJCWVuZF9vZmZzZXRfY2FsbGVyID0g
KHVuc2lnbmVkIGxvbmcpZnRyYWNlX2NhbGxlcl9lbmQ7Cj4+ICsJfQo+PiArCXN0YXJ0X29mZnNl
dF9jb21tb24gPSAodW5zaWduZWQgbG9uZylmdHJhY2VfY29tbW9uOwo+PiArCWVuZF9vZmZzZXRf
Y29tbW9uID0gKHVuc2lnbmVkIGxvbmcpZnRyYWNlX2NvbW1vbl9lbmQ7Cj4+ICsKPj4gKwlvcF9v
ZmZzZXQgPSAodW5zaWduZWQgbG9uZylmdW5jdGlvbl90cmFjZV9vcF9wdHI7Cj4+ICsKPj4gKwkv
Kgo+PiArCSAqIE1lcmdlIGZ0cmFjZV9jYWxsZXIvZnRyYWNlX3JlZ3NfY2FsbGVyIGFuZCBmdHJh
Y2VfY29tbW9uCj4+ICsJICogdG8gb25lIGZ1bmN0aW9uIGluIGZ0cmFjZSB0cmFtcG9saW5lLgo+
PiArCSAqLwo+PiArCWNhbGxlcl9zaXplID0gZW5kX29mZnNldF9jYWxsZXIgLSBzdGFydF9vZmZz
ZXRfY2FsbGVyICsgQUFSQ0g2NF9JTlNOX1NJWkU7Cj4+ICsJY29tbW9uX3NpemUgPSBlbmRfb2Zm
c2V0X2NvbW1vbiAtIHN0YXJ0X29mZnNldF9jb21tb24gKyBBQVJDSDY0X0lOU05fU0laRTsKPj4g
KwlzaXplID0gY2FsbGVyX3NpemUgKyBjb21tb25fc2l6ZTsKPj4gKwo+PiArCXRyYW1wb2xpbmUg
PSBhbGxvY190cmFtcChjYWxsZXJfc2l6ZSArIGNvbW1vbl9zaXplICsgc2l6ZW9mKHZvaWQgKikp
Owo+PiArCWlmICghdHJhbXBvbGluZSkKPj4gKwkJcmV0dXJuIDA7Cj4+ICsKPj4gKwkqdHJhbXBf
c2l6ZSA9IGNhbGxlcl9zaXplICsgY29tbW9uX3NpemUgKyBzaXplb2Yodm9pZCAqKTsKPj4gKwlu
cGFnZXMgPSBESVZfUk9VTkRfVVAoKnRyYW1wX3NpemUsIFBBR0VfU0laRSk7Cj4+ICsKPj4gKwkv
KiBDb3B5IGZ0cmFjZV9jYWxsZXIvZnRyYWNlX3JlZ3NfY2FsbGVyIG9udG8gdGhlIHRyYW1wb2xp
bmUgbWVtb3J5ICovCj4+ICsJcmV0ID0gcHJvYmVfa2VybmVsX3JlYWQodHJhbXBvbGluZSwgKHZv
aWQgKilzdGFydF9vZmZzZXRfY2FsbGVyLCBjYWxsZXJfc2l6ZSk7Cj4+ICsJaWYgKFdBUk5fT04o
cmV0IDwgMCkpCj4+ICsJCWdvdG8gZnJlZTsKPj4gKwo+PiArCS8qCj4+ICsJICogQ29weSBmdHJh
Y2VfY29tbW9uIHRvIHRoZSB0cmFtcG9saW5lIG1lbW9yeQo+PiArCSAqIGJlbG93IGZ0cmFjZV9j
YWxsZXIvZnRyYWNlX3JlZ3NfY2FsbGVyLiBzbwo+PiArCSAqIHdlIGNhbiBtZXJnZSB0aGUgdHdv
IGZ1bmN0aW9uIHRvIG9uZSBmdW5jdGlvbi4KPj4gKwkgKi8KPj4gKwlyZXQgPSBwcm9iZV9rZXJu
ZWxfcmVhZCh0cmFtcG9saW5lICsgY2FsbGVyX3NpemUsICh2b2lkICopc3RhcnRfb2Zmc2V0X2Nv
bW1vbiwgY29tbW9uX3NpemUpOwo+PiArCWlmIChXQVJOX09OKHJldCA8IDApKQo+PiArCQlnb3Rv
IGZyZWU7Cj4+ICsKPj4gKwkvKgo+PiArCSAqIFdlIG1lcmdlIHRoZSB0d28gZnVuY3Rpb25zIHRv
IG9uZSBmdW5jdGlvbiwgc28gdGhlc2UgaXMKPj4gKwkgKiBubyBuZWVkIHRvIHVzZSBqdW1wIGlu
c3RydWN0aW9ucyB0byBmdHJhY2VfY29tbW9uLCBtb2RpZnkKPj4gKwkgKiBpdCB0byBOT1AuCj4+
ICsJICovCj4+ICsJaXAgPSAodW5zaWduZWQgbG9uZyl0cmFtcG9saW5lICsgY2FsbGVyX3NpemUg
LSBBQVJDSDY0X0lOU05fU0laRTsKPj4gKwlub3AgPSBhYXJjaDY0X2luc25fZ2VuX25vcCgpOwo+
PiArCW1lbWNweSgodm9pZCAqKWlwLCAmbm9wLCBBQVJDSDY0X0lOU05fU0laRSk7Cj4+ICsKPj4g
KwkvKgo+PiArCSAqIFN0b3JlZCBmdHJhY2Vfb3BzIGF0IHRoZSBlbmQgb2YgdGhlIHRyYW1wb2xp
bmUuCj4+ICsJICogVGhpcyB3aWxsIGJlIHVzZWQgdG8gbG9hZCB0aGUgdGhpcmQgcGFyYW1ldGVy
IGZvciB0aGUgY2FsbGJhY2suCj4+ICsJICogQmFzaWNhbGx5LCB0aGF0IGxvY2F0aW9uIGF0IHRo
ZSBlbmQgb2YgdGhlIHRyYW1wb2xpbmUgdGFrZXMgdGhlCj4+ICsJICogcGxhY2Ugb2YgdGhlIGds
b2JhbCBmdW5jdGlvbl90cmFjZV9vcCB2YXJpYWJsZS4KPj4gKwkgKi8KPj4gKwlwdHIgPSAodW5z
aWduZWQgbG9uZyAqKSh0cmFtcG9saW5lICsgc2l6ZSk7Cj4+ICsJKnB0ciA9ICh1bnNpZ25lZCBs
b25nKW9wczsKPj4gKwo+PiArCS8qCj4+ICsJICogVXBkYXRlIHRoZSB0cmFtcG9saW5lIG9wcyBS
RUYKPj4gKwkgKgo+PiArCSAqIE9MRCBJTlNOUyA6IGxkcl9sIHgyLCBmdW5jdGlvbl90cmFjZV9v
cAo+PiArCSAqCWFkcnAJeDIsIHN5bQo+PiArCSAqCWxkcgl4MiwgW3gyLCA6bG8xMjpcc3ltXQo+
PiArCSAqCj4+ICsJICogTkVXIElOU05TOgo+PiArCSAqCW5vcAo+PiArCSAqCWxkciB4MiwgPGZ0
cmFjZV9vcHM+Cj4+ICsJICovCj4+ICsJb3Bfb2Zmc2V0IC09IHN0YXJ0X29mZnNldF9jb21tb247
Cj4+ICsJaXAgPSAodW5zaWduZWQgbG9uZyl0cmFtcG9saW5lICsgY2FsbGVyX3NpemUgKyBvcF9v
ZmZzZXQ7Cj4+ICsJbm9wID0gYWFyY2g2NF9pbnNuX2dlbl9ub3AoKTsKPj4gKwltZW1jcHkoKHZv
aWQgKilpcCwgJm5vcCwgQUFSQ0g2NF9JTlNOX1NJWkUpOwo+PiArCj4+ICsJb3Bfb2Zmc2V0ICs9
IEFBUkNINjRfSU5TTl9TSVpFOwo+PiArCWlwID0gKHVuc2lnbmVkIGxvbmcpdHJhbXBvbGluZSAr
IGNhbGxlcl9zaXplICsgb3Bfb2Zmc2V0Owo+PiArCW9mZnNldCA9ICh1bnNpZ25lZCBsb25nKXB0
ciAtIGlwOwo+PiArCWlmIChXQVJOX09OKG9mZnNldCAlIEFBUkNINjRfSU5TTl9TSVpFICE9IDAp
KQo+PiArCQlnb3RvIGZyZWU7Cj4+ICsJb2Zmc2V0ID0gb2Zmc2V0IC8gQUFSQ0g2NF9JTlNOX1NJ
WkU7Cj4+ICsJcGNfbGRyIHw9IChvZmZzZXQgJiBtYXNrKSA8PCBzaGlmdDsKPj4gKwltZW1jcHko
KHZvaWQgKilpcCwgJnBjX2xkciwgQUFSQ0g2NF9JTlNOX1NJWkUpOwo+IEkgdGhpbmsgaXQgd291
bGQgYmUgbXVjaCBiZXR0ZXIgdG8gaGF2ZSBhIHNlcGFyYXRlIHRlbXBsYXRlIGZvciB0aGUKPiB0
cmFtcG9saW5lIHdoaWNoIHdlIGRvbid0IGhhdmUgdG8gcGF0Y2ggaW4gdGhpcyB3YXkuIEl0IGNh
biBldmVuIGJlCj4gcGxhY2VkIGludG8gYSBub24tZXhlY3V0YWJsZSBSTyBzZWN0aW9uLCBzaW5j
ZSB0aGUgdGVtcGxhdGUgc2hvdWxkbid0IGJlCj4gZXhlY3V0ZWQgZGlyZWN0bHkuCgoKQSBzZXBh
cmF0ZSB0ZW1wbGF0ZSAhCgpUaGlzIG1heSBiZSBhIGdvb2Qgd2F5LCBhbmQgSSB0aGluayB0aGUg
cGF0Y2hpbmcgaGVyZSBpcyB2ZXJ5IEhBQ0sgCnRvbyhOb3QgdmVyeSBmcmllbmRseSkuCgpJIGhh
ZCB0aG91Z2h0IG9mIG90aGVyIHdheXMgYmVmb3JlLCBzaW1pbGFyIHRvIHRoZSBtZXRob2Qgb24g
WDg2XzY0LCByZW1vdmUKdGhlIGZ0cmFjZV9jb21tb24oKSwgZGlyZWN0bHkgbW9kaWZ5aW5nIGZ0
cmFjZV9jYWxsZXIvZnRyYWNlX3JlZ19jYWxsZXIsIApXZSB3aWxsCgpvbmx5IG5lZWQgdG8gY29w
eSB0aGUgY29kZSBvbmNlIGluIHRoaXMgd2F5LCBhbmQgdGhlc2UgaXMgbm8gbmVlZCB0byBtb2Rp
ZnkKCmNhbGwgZnRyYWNlX2NvbW1vbiB0byBOT1AuCgoKVXNpbmcgYSB0cmFtcG9saW5lIHRlbXBs
YXRlIHNvdW5kcyBncmVhdC4gYnV0IHRoaXMgYWxzbyBtZWFucyB0aGF0IHdlIApuZWVkIHRvCgpt
YWludGFpbiBhIHRlbXBsYXRlKG9yIG1heWJlIHR3byB0ZW1wbGF0ZXM6IG9uZSBmb3IgY2FsbGVy
LCBhbm90aGVyIGZvciAKcmVnc19jYWxsZXIpLgoKSGksIE1hcmssIHdoYXQgZG8geW91IHRoaW5r
IGFib3V0IGl0ID8KCgo+PiArCj4+ICsJb3BzLT5mbGFncyB8PSBGVFJBQ0VfT1BTX0ZMX0FMTE9D
X1RSQU1QOwo+PiArCj4+ICsJc2V0X3ZtX2ZsdXNoX3Jlc2V0X3Blcm1zKHRyYW1wb2xpbmUpOwo+
PiArCj4+ICsJLyoKPj4gKwkgKiBNb2R1bGUgYWxsb2NhdGlvbiBuZWVkcyB0byBiZSBjb21wbGV0
ZWQgYnkgbWFraW5nIHRoZSBwYWdlCj4+ICsJICogZXhlY3V0YWJsZS4gVGhlIHBhZ2UgaXMgc3Rp
bGwgd3JpdGFibGUsIHdoaWNoIGlzIGEgc2VjdXJpdHkgaGF6YXJkLAo+PiArCSAqIGJ1dCBhbnlo
b3cgZnRyYWNlIGJyZWFrcyBXXlggY29tcGxldGVseS4KPj4gKwkgKi8KPj4gKwlzZXRfbWVtb3J5
X3goKHVuc2lnbmVkIGxvbmcpdHJhbXBvbGluZSwgbnBhZ2VzKTsKPiBXaHkgaXMgdGhlIHBhZ2Ug
c3RpbGwgd3JpdGVhYmxlPyBTdXJlbHkgeW91IGNhbiBtYWtlIGl0IFJPIGZpcnN0Pwo+Cj4gUGxl
YXNlIGRvIG5vdCBicmVhayBXXlggcmVzdHJpY3Rpb25zOyB3ZSd2ZSB0cmllZCB0byBlbnN1cmUg
dGhhdCBhcm02NAo+IGRvZXMgdGhlIHJpZ2h0IHRoaW5nIGJ5IGRlZmF1bHQgaGVyZS4KPgo+IE5v
dGUgdGhhdCBhcm02NCdzIGZ0cmFjZV9tb2RpZnlfY29kZSgpIHdpbGwgdXNlIGEgd3JpdGVhYmxl
IGFsaWFzLCBzbyBpdAo+IGNhbiBiZSB1c2VkIGFmdGVyIHRoZSBtZW1vcnkgaGFzIGJlZW4gbWFy
a2VkIFJPLgoKWUVBSCwgSSB3aWxsLiBhcm02NCdzIGZ0cmFjZV9tb2RpZnlfY29kZSBjYW4gd29y
ayBhZnRlciB0aGUgdHJhbXBvbGluZSBoYXMKYmVlbiBtYXJrZWQgUk8uCgo+PiArCj4+ICsJcmV0
dXJuICh1bnNpZ25lZCBsb25nKXRyYW1wb2xpbmU7Cj4+ICsKPj4gK2ZyZWU6Cj4+ICsJdHJhbXBf
ZnJlZSh0cmFtcG9saW5lKTsKPj4gKwlyZXR1cm4gMDsKPj4gK30KPj4gKwo+PiArc3RhdGljIHVu
c2lnbmVkIGxvbmcgY2FsY190cmFtcG9saW5lX2NhbGxfb2Zmc2V0KHN0cnVjdCBmdHJhY2Vfb3Bz
ICpvcHMpCj4+ICt7Cj4+ICsJdW5zaWduZWQgY2FsbF9vZmZzZXQsIGVuZF9vZmZzZXQsIG9mZnNl
dDsKPj4gKwo+PiArCWNhbGxfb2Zmc2V0ID0gKHVuc2lnbmVkIGxvbmcpJmZ0cmFjZV9jYWxsOwo+
PiArCWVuZF9vZmZzZXQgPSAodW5zaWduZWQgbG9uZylmdHJhY2VfY29tbW9uX2VuZDsKPj4gKwlv
ZmZzZXQgPSBlbmRfb2Zmc2V0IC0gY2FsbF9vZmZzZXQ7Cj4+ICsKPj4gKwlyZXR1cm4gb3BzLT50
cmFtcG9saW5lX3NpemUgLSBBQVJDSDY0X0lOU05fU0laRSAtIHNpemVvZih2b2lkICopIC0gb2Zm
c2V0Owo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW50IGZ0cmFjZV90cmFtcG9saW5lX21vZGlmeV9j
YWxsKHN0cnVjdCBmdHJhY2Vfb3BzICpvcHMpCj4+ICt7Cj4+ICsJdW5zaWduZWQgbG9uZyBvZmZz
ZXQ7Cj4+ICsJdW5zaWduZWQgbG9uZyBwYzsKPj4gKwlmdHJhY2VfZnVuY190IGZ1bmM7Cj4+ICsJ
dTMyIG5ldzsKPj4gKwo+PiArCW9mZnNldCA9IGNhbGNfdHJhbXBvbGluZV9jYWxsX29mZnNldChv
cHMpOwo+PiArCXBjID0gb3BzLT50cmFtcG9saW5lICsgb2Zmc2V0Owo+PiArCj4+ICsJZnVuYyA9
IGZ0cmFjZV9vcHNfZ2V0X2Z1bmMob3BzKTsKPj4gKwluZXcgPSBhYXJjaDY0X2luc25fZ2VuX2Jy
YW5jaF9pbW0ocGMsICh1bnNpZ25lZCBsb25nKWZ1bmMsIEFBUkNINjRfSU5TTl9CUkFOQ0hfTElO
Syk7Cj4+ICsKPj4gKwlyZXR1cm4gZnRyYWNlX21vZGlmeV9jb2RlKHBjLCAwLCBuZXcsIGZhbHNl
KTsKPj4gK30KPj4gKwo+PiArI2lmZGVmIENPTkZJR19GVU5DVElPTl9HUkFQSF9UUkFDRVIKPj4g
Kwo+PiArc3RhdGljIHVuc2lnbmVkIGxvbmcgY2FsY190cmFtcG9saW5lX2dyYXBoX2NhbGxfb2Zm
c2V0KHN0cnVjdCBmdHJhY2Vfb3BzICpvcHMpCj4+ICt7Cj4+ICsJdW5zaWduZWQgZW5kX29mZnNl
dCwgY2FsbF9vZmZzZXQsIG9mZnNldDsKPj4gKwo+PiArCWNhbGxfb2Zmc2V0ID0gKHVuc2lnbmVk
IGxvbmcpJmZ0cmFjZV9ncmFwaF9jYWxsOwo+PiArCWVuZF9vZmZzZXQgPSAodW5zaWduZWQgbG9u
ZylmdHJhY2VfY29tbW9uX2VuZDsKPj4gKwlvZmZzZXQgPSBlbmRfb2Zmc2V0IC0gY2FsbF9vZmZz
ZXQ7Cj4+ICsKPj4gKwlyZXR1cm4gb3BzLT50cmFtcG9saW5lX3NpemUgLSBBQVJDSDY0X0lOU05f
U0laRSAtIHNpemVvZih2b2lkICopIC0gb2Zmc2V0Owo+PiArfQo+PiArCj4+ICtleHRlcm4gaW50
IGZ0cmFjZV9ncmFwaF9hY3RpdmU7Cj4+ICtzdGF0aWMgaW50IGZ0cmFjZV90cmFtcG9saW5lX21v
ZGlmeV9ncmFwaF9jYWxsKHN0cnVjdCBmdHJhY2Vfb3BzICpvcHMpCj4+ICt7Cj4+ICsJdW5zaWdu
ZWQgbG9uZyBvZmZzZXQ7Cj4+ICsJdW5zaWduZWQgbG9uZyBwYzsKPj4gKwl1MzIgYnJhbmNoLCBu
b3A7Cj4+ICsKPj4gKwlvZmZzZXQgPSBjYWxjX3RyYW1wb2xpbmVfZ3JhcGhfY2FsbF9vZmZzZXQo
b3BzKTsKPj4gKwlwYyA9IG9wcy0+dHJhbXBvbGluZSArIG9mZnNldDsKPj4gKwo+PiArCWJyYW5j
aCA9IGFhcmNoNjRfaW5zbl9nZW5fYnJhbmNoX2ltbShwYywKPj4gKwkJCQkJICAgICAodW5zaWdu
ZWQgbG9uZylmdHJhY2VfZ3JhcGhfY2FsbGVyLAo+PiArCQkJCQkgICAgIEFBUkNINjRfSU5TTl9C
UkFOQ0hfTk9MSU5LKTsKPj4gKwlub3AgPSBhYXJjaDY0X2luc25fZ2VuX25vcCgpOwo+PiArCj4+
ICsJaWYgKGZ0cmFjZV9ncmFwaF9hY3RpdmUpCj4+ICsJCXJldHVybiBmdHJhY2VfbW9kaWZ5X2Nv
ZGUocGMsIDAsIGJyYW5jaCwgZmFsc2UpOwo+PiArCWVsc2UKPj4gKwkJcmV0dXJuIGZ0cmFjZV9t
b2RpZnlfY29kZShwYywgMCwgbm9wLCBmYWxzZSk7Cj4+ICt9Cj4gSXQgc2hvdWxkIGJlIHBvc2Jp
bGUgdG8gc2hhcmUgdGhlIGJ1bGsgb2YgdGhpcyBjb2RlIHdpdGggdGhlIG5vbi1ncmFwaAo+IHZl
cnNpb25zLgoKSXQgc2VlbXMgdGhhdCwgSSB3aWxsIGNsZWFudXAgbXkgY29kZS4KCgo+Cj4gVGhh
bmtzLAo+IE1hcmsuCj4KPiAuCgoKVGhhbmsgeW91IHZlcnkgbXVjaC4KCi0tIENoZW5nIEppYW4u
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
