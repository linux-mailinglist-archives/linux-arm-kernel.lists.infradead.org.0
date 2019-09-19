Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C360CB82F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 22:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iiHu4hvZ+tJl+Zqq4DEorQ300Uj+il/4oLtPAB2X4Mo=; b=tdycoiICOr3CHa
	UM8pDMXiW7X2jxH+92olfppOEi8Y+xMTk07NeZ9aEc/4dSv8KN+Ru4g1/gJluROIvWEGP0ohTPfyw
	F5iAQFo+EkYyMLESFMQqzW8Uq/OfijyRPXviOhBdXfIYFU7Yr8lH5/5iYeKUL9o7OQHmDKrphnbB4
	AX6sYAy49GSkyg7mYyJ0/1GNn9rF53hOiJyc/0oxdCIoHcBLoi5W0DOfuFUJEPiMhlmf4ZpcM182h
	zA8bjl+QFPm3h5/LwaMOuMssEoBxrvzQVjtiOYSlOzht9BVRZ2UMKJ4LZyIv7d9BdKbD7gDTUldxY
	zZogpB6QvQ2W7067t4Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB3Rs-0005c4-Et; Thu, 19 Sep 2019 20:54:45 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB3Rb-0005bI-Un
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 20:54:29 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 02CA97F75E;
 Thu, 19 Sep 2019 20:54:27 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-160.bos.redhat.com [10.18.17.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 66B4519D70;
 Thu, 19 Sep 2019 20:54:14 +0000 (UTC)
Subject: Re: [PATCH v4 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
To: Alex Kogan <alex.kogan@oracle.com>
References: <20190906142541.34061-1-alex.kogan@oracle.com>
 <20190906142541.34061-4-alex.kogan@oracle.com>
 <3ae2b6a2-ffe6-2ca1-e5bf-2292db50e26f@redhat.com>
 <87B87982-670F-4F12-9EE0-DC89A059FAEC@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <6c08767a-f60c-077d-4e94-66ea189db6f1@redhat.com>
Date: Thu, 19 Sep 2019 16:54:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <87B87982-670F-4F12-9EE0-DC89A059FAEC@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Thu, 19 Sep 2019 20:54:27 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_135428_099708_EEA45398 
X-CRM114-Status: GOOD (  25.38  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 peterz@infradead.org, dave.dice@oracle.com, jglauber@marvell.com,
 x86@kernel.org, will.deacon@arm.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, steven.sistare@oracle.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOS8xOS8xOSAxMTo1NSBBTSwgQWxleCBLb2dhbiB3cm90ZToKPj4+ICsvKgo+Pj4gKyAqIGNu
YV90cnlfZmluZF9uZXh0IC0gc2NhbiB0aGUgbWFpbiB3YWl0aW5nIHF1ZXVlIGxvb2tpbmcgZm9y
IHRoZSBmaXJzdAo+Pj4gKyAqIHRocmVhZCBydW5uaW5nIG9uIHRoZSBzYW1lIE5VTUEgbm9kZSBh
cyB0aGUgbG9jayBob2xkZXIuIElmIGZvdW5kIChjYWxsIGl0Cj4+PiArICogdGhyZWFkIFQpLCBt
b3ZlIGFsbCB0aHJlYWRzIGluIHRoZSBtYWluIHF1ZXVlIGJldHdlZW4gdGhlIGxvY2sgaG9sZGVy
IGFuZAo+Pj4gKyAqIFQgdG8gdGhlIGVuZCBvZiB0aGUgc2Vjb25kYXJ5IHF1ZXVlIGFuZCByZXR1
cm4gVDsgb3RoZXJ3aXNlLCByZXR1cm4gTlVMTC4KPj4+ICsgKgo+Pj4gKyAqIFNjaGVtYXRpY2Fs
bHksIHRoaXMgbWF5IGxvb2sgbGlrZSB0aGUgZm9sbG93aW5nIChubiBzdGFuZHMgZm9yIG51bWFf
bm9kZSBhbmQKPj4+ICsgKiBldCBzdGFuZHMgZm9yIGVuY29kZWRfdGFpbCkuCj4+PiArICoKPj4+
ICsgKiAgICAgd2hlbiBjbmFfdHJ5X2ZpbmRfbmV4dCgpIGlzIGNhbGxlZCAodGhlIHNlY29uZGFy
eSBxdWV1ZSBpcyBlbXB0eSk6Cj4+PiArICoKPj4+ICsgKiAgQSstLS0tLS0tLS0tLS0rICAgQist
LS0tLS0tLSsgICBDKy0tLS0tLS0tKyAgIFQrLS0tLS0tLS0rCj4+PiArICogICB8bWNzOm5leHQg
ICAgfCAtPiB8bWNzOm5leHR8IC0+IHxtY3M6bmV4dHwgLT4gfG1jczpuZXh0fCAtPiBOVUxMCj4+
PiArICogICB8bWNzOmxvY2tlZD0xfCAgICB8Y25hOm5uPTB8ICAgIHxjbmE6bm49MnwgICAgfGNu
YTpubj0xfAo+Pj4gKyAqICAgfGNuYTpubj0xICAgIHwgICAgKy0tLS0tLS0tKyAgICArLS0tLS0t
LS0rICAgICstLS0tLS0tLSsKPj4+ICsgKiAgICstLS0tLS0tLS0tLSArCj4+PiArICoKPj4+ICsg
KiAgICAgd2hlbiBjbmFfdHJ5X2ZpbmRfbmV4dCgpIHJldHVybnMgKHRoZSBzZWNvbmRhcnkgcXVl
dWUgY29udGFpbnMgQiBhbmQgQyk6Cj4+PiArICoKPj4+ICsgKiAgQSstLS0tLS0tLS0tLS0tLS0t
KyAgICBUKy0tLS0tLS0tKwo+Pj4gKyAqICAgfG1jczpuZXh0ICAgICAgICB8IC0+ICB8bWNzOm5l
eHR8IC0+IE5VTEwKPj4+ICsgKiAgIHxtY3M6bG9ja2VkPUIuZXQgfCAtKyAgfGNuYTpubj0xfAo+
Pj4gKyAqICAgfGNuYTpubj0xICAgICAgICB8ICB8ICArLS0tLS0tLS0rCj4+PiArICogICArLS0t
LS0tLS0tLS0tLS0tICsgIHwKPj4+ICsgKiAgICAgICAgICAgICAgICAgICAgICAgfAo+Pj4gKyAq
ICAgICAgICAgICAgICAgICAgICAgICArLT4gIEIrLS0tLS0tLS0rICAgQystLS0tLS0tLSsKPj4+
ICsgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfG1jczpuZXh0fCAtPiB8bWNzOm5leHR8
Cj4+PiArICogICAgICAgICAgICAgICAgICAgICAgICAgICAgIHxjbmE6bm49MHwgICAgfGNuYTpu
bj0yfAo+Pj4gKyAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Y25hOnRhaWx8IC0+ICst
LS0tLS0tLSsKPj4+ICsgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKy0tLS0tLS0tKwo+
Pj4gKyAqCj4+PiArICogVGhlIHdvcnN0IGNhc2UgY29tcGxleGl0eSBvZiB0aGUgc2NhbiBpcyBP
KG4pLCB3aGVyZSBuIGlzIHRoZSBudW1iZXIKPj4+ICsgKiBvZiBjdXJyZW50IHdhaXRlcnMuIEhv
d2V2ZXIsIHRoZSBmYXN0IHBhdGgsIHdoaWNoIGlzIGV4cGVjdGVkIHRvIGJlIHRoZQo+Pj4gKyAq
IGNvbW1vbiBjYXNlLCBpcyBPKDEpLgo+Pj4gKyAqLwo+Pj4gK3N0YXRpYyBzdHJ1Y3QgbWNzX3Nw
aW5sb2NrICpjbmFfdHJ5X2ZpbmRfbmV4dChzdHJ1Y3QgbWNzX3NwaW5sb2NrICpub2RlLAo+Pj4g
KwkJCQkJICAgICAgc3RydWN0IG1jc19zcGlubG9jayAqbmV4dCkKPj4+ICt7Cj4+PiArCXN0cnVj
dCBjbmFfbm9kZSAqY24gPSAoc3RydWN0IGNuYV9ub2RlICopbm9kZTsKPj4+ICsJc3RydWN0IGNu
YV9ub2RlICpjbmkgPSAoc3RydWN0IGNuYV9ub2RlICopbmV4dDsKPj4+ICsJc3RydWN0IGNuYV9u
b2RlICpmaXJzdCwgKmxhc3QgPSBOVUxMOwo+Pj4gKwlpbnQgbXlfbnVtYV9ub2RlID0gY24tPm51
bWFfbm9kZTsKPj4+ICsKPj4+ICsJLyogZmFzdCBwYXRoOiBpbW1lZGlhdGUgc3VjY2Vzc29yIGlz
IG9uIHRoZSBzYW1lIE5VTUEgbm9kZSAqLwo+Pj4gKwlpZiAoY25pLT5udW1hX25vZGUgPT0gbXlf
bnVtYV9ub2RlKQo+Pj4gKwkJcmV0dXJuIG5leHQ7Cj4+PiArCj4+PiArCS8qIGZpbmQgYW55IG5l
eHQgd2FpdGVyIG9uICdvdXInIE5VTUEgbm9kZSAqLwo+Pj4gKwlmb3IgKGZpcnN0ID0gY25pOwo+
Pj4gKwkgICAgIGNuaSAmJiBjbmktPm51bWFfbm9kZSAhPSBteV9udW1hX25vZGU7Cj4+PiArCSAg
ICAgbGFzdCA9IGNuaSwgY25pID0gKHN0cnVjdCBjbmFfbm9kZSAqKVJFQURfT05DRShjbmktPm1j
cy5uZXh0KSkKPj4+ICsJCTsKPj4+ICsKPj4+ICsJLyogaWYgZm91bmQsIHNwbGljZSBhbnkgc2tp
cHBlZCB3YWl0ZXJzIG9udG8gdGhlIHNlY29uZGFyeSBxdWV1ZSAqLwo+Pj4gKwlpZiAoY25pICYm
IGxhc3QpCj4+PiArCQljbmFfc3BsaWNlX3RhaWwoY24sIGZpcnN0LCBsYXN0KTsKPj4+ICsKPj4+
ICsJcmV0dXJuIChzdHJ1Y3QgbWNzX3NwaW5sb2NrICopY25pOwo+Pj4gK30KPj4gQXQgdGhlIExp
bnV4IFBsdW1iZXJzIENvbmZlcmVuY2UgbGFzdCB3ZWVrLCBXaWxsIGhhcyByYWlzZWQgdGhlIGNv
bmNlcm4KPj4gYWJvdXQgdGhlIGxhdGVuY3kgb2YgdGhlIE8oMSkgY25hX3RyeV9maW5kX25leHQo
KSBvcGVyYXRpb24gdGhhdCB3aWxsCj4+IGFkZCB0byB0aGUgbG9jayBob2xkIHRpbWUuCj4gV2hp
bGUgdGhlIHdvcnN0IGNhc2UgY29tcGxleGl0eSBvZiB0aGUgc2NhbiBpcyBPKG4pLCBJIF90aGlu
ayBpdCBjYW4gYmUgcHJvdmVuCj4gdGhhdCB0aGUgYW1vcnRpemVkIGNvbXBsZXhpdHkgaXMgTygx
KS4gRm9yIGludHVpdGlvbiwgY29uc2lkZXIgYSB0d28tbm9kZSAKPiBzeXN0ZW0gd2l0aCBOIHRo
cmVhZHMgdG90YWwuIEluIHRoZSB3b3JzdCBjYXNlIHNjZW5hcmlvLCB0aGUgc2NhbiB3aWxsIGdv
IAo+IG92ZXIgTi8yIHRocmVhZHMgcnVubmluZyBvbiBhIGRpZmZlcmVudCBub2RlLiBJZiB0aGUg
c2NhbiB1bHRpbWF0ZWx5IOKAnGZhaWxz4oCdCj4gKG5vIHRocmVhZCBmcm9tIHRoZSBsb2NrIGhv
bGRlcuKAmXMgbm9kZSBpcyBmb3VuZCksIHRoZSBsb2NrIHdpbGwgYmUgcGFzc2VkCj4gdG8gdGhl
IGZpcnN0IHRocmVhZCBmcm9tIGEgZGlmZmVyZW50IG5vZGUgYW5kIHRoZW4gYmV0d2VlbiBhbGwg
dGhvc2UgTi8yIHRocmVhZHMsCj4gd2l0aCBhIHNjYW4gb2YganVzdCBvbmUgbm9kZSBmb3IgdGhl
IG5leHQgTi8yIC0gMSBwYXNzZXMuIE90aGVyd2lzZSwgdGhvc2UgCj4gTi8yIHRocmVhZHMgd2ls
bCBiZSBtb3ZlZCB0byB0aGUgc2Vjb25kYXJ5IHF1ZXVlLiBPbiB0aGUgbmV4dCBsb2NrIGhhbmRv
dmVyLCAKPiB3ZSBwYXNzIHRoZSBsb2NrIGVpdGhlciB0byB0aGUgbmV4dCB0aHJlYWQgaW4gdGhl
IG1haW4gcXVldWUgKGFzIGl0IGhhcyB0byBiZSAKPiBmcm9tIG91ciBub2RlKSBvciB0byB0aGUg
Zmlyc3Qgbm9kZSBpbiB0aGUgc2Vjb25kYXJ5IHF1ZXVlLiBJbiBib3RoIGNhc2VzLCB3ZSAKPiBz
Y2FuIGp1c3Qgb25lIG5vZGUsIGFuZCBpbiB0aGUgbGF0dGVyIGNhc2UsIHdlIGhhdmUgYWdhaW4g
Ti8yIC0gMSBwYXNzZXMgd2l0aCAKPiBhIHNjYW4gb2YganVzdCBvbmUgbm9kZSBlYWNoLgpJIGFn
cmVlIHRoYXQgaXQgc2hvdWxkIG5vdCBiZSBhIHByb2JsZW0gZm9yIGEgMi1zb2NrZXQuIEZvciBs
YXJnZXIgU01QCnN5c3RlbXMgd2l0aCA4LCAxNiBvciBldmVuIDMyIHNvY2tldHMsIGl0IGNhbiBi
ZSBhbiBpc3N1ZSBhcyB0aG9zZQpzeXN0ZW1zIGFyZSBhbHNvIG1vcmUgbGlrZWx5IHRvIGhhdmUg
bW9yZSBsb2NrIGNvbnRlbnRpb24gYW5kIGhlbmNlCmxvbmdlciB3YWl0IHF1ZXVlcy4KPj4gT25l
IHdheSB0byBoaWRlIHNvbWUgb2YgdGhlIGxhdGVuY3kgaXMgdG8gZG8KPj4gYSBwcmUtc2NhbiBi
ZWZvcmUgYWNxdWlyaW5nIHRoZSBsb2NrLiBUaGUgQ05BIGNvZGUgY291bGQgb3ZlcnJpZGUgdGhl
Cj4+IHB2X3dhaXRfaGVhZF9vcl9sb2NrKCkgZnVuY3Rpb24gdG8gY2FsbCBjbmFfdHJ5X2ZpbmRf
bmV4dCgpIGFzIGEKPj4gcHJlLXNjYW4gYW5kIHJldHVybiAwLiBXaGF0IGRvIHlvdSB0aGluaz8K
PiBUaGlzIGlzIGNlcnRhaW5seSBwb3NzaWJsZSwgYnV0IEkgZG8gbm90IHRoaW5rIGl0IHdvdWxk
IGNvbXBsZXRlbHkgZWxpbWluYXRlIAo+IHRoZSB3b3JzdCBjYXNlIHNjZW5hcmlvLiBJdCB3aWxs
IHByb2JhYmx5IG1ha2UgaXQgZXZlbiBsZXNzIGxpa2VseSwgYnV0IGF0IAo+IHRoZSBzYW1lIHRp
bWUsIHdlIHdpbGwgcmVkdWNlIHRoZSBjaGFuY2Ugb2YgYWN0dWFsbHkgZmluZGluZyBhIHRocmVh
ZCBmcm9tIHRoZQo+IHNhbWUgbm9kZSAodGhhdCBtYXkgZW50ZXIgdGhlIG1haW4gcXVldWUgd2hp
bGUgd2Ugd2FpdCBmb3IgdGhlIG93bmVyICYgcGVuZGluZyAKPiB0byBnbyBhd2F5KS4KCldoZW4g
SSBzYWlkIHByZXNjYW4sIEkgbWVhbiB0byBtb3ZlIHRoZSBmcm9udCBxdWV1ZSBlbnRyaWVzIHRo
YXQgYXJlCmZyb20gbm9uLWxvY2FsIG5vZGVzIHRvIHRoZSBzZWNvbmRhcnkgcXVldWUgYmVmb3Jl
IGFjcXVpcmluZyB0aGUgbG9jay4KQWZ0ZXIgYWNxdWlyaW5nIHRoZSBsb2NrLCB5b3UgY2FuIHJl
cGVhdCB0aGUgc2NhbiBpbiBjYXNlIHRoZSBwcmVzY2FuCmRpZG4ndCBmaW5kIGFueSBsb2NhbCBu
b2RlIHF1ZXVlIGVudHJ5LiBZZXMsIHdlIHdpbGwgbmVlZCB0byBkbyB0aGUKc2ltaWxhciBvcGVy
YXRpb24gdHdpY2UuCgpZZXMsIGl0IGRvZXMgbm90IGVsaW1pbmF0ZSB0aGUgd29yc3QgY2FzZSBz
Y2VuYXJpbywgYnV0IGl0IHNob3VsZCBoZWxwCmluIHJlZHVjaW5nIHRoZSBhdmVyYWdlIGxvY2sg
aG9sZCB0aW1lLgoKT2YgY291cnNlLCB0aGUgcHJvYmFiaWxpc3RpYyAob3IgZGV0ZXJtaW5pc3Rp
YykgY2hlY2sgdG8gZ28gdG8gdGhlIG5leHQKbG9jYWwgbm9kZSBlbnRyeSBvciB0byB0aGUgc2Vj
b25kYXJ5IHF1ZXVlIHNob3VsZCBiZSBkb25lIGJlZm9yZQpwcmUtc2NhbiBzbyB0aGF0IHdlIHdv
bid0IHdhc3RlIHRoZSBlZmZvcnQuCgpDaGVlcnMsCkxvbmdtYW4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
