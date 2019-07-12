Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF77667B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 09:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kzl0wX3fcZdSGOVW5habHw1ZTwfj8He4PglFKV8Wsh4=; b=gUalT0Wq2tmzV1zx3kEQg854c
	sfXtyFI/5iRkKmzd8O/h8HEGNjpcRGiuhfpp7czfnizp0RhU2CBX5YgaI5OLsgMXGaoWiknsop9N5
	wBthQijabdG7dQ635Rqh0aJ8vie6JuEiEwCjfpWZBv1F0XG4Gyvd5n0IWL8hcfRUrZDWqVtHvnIqN
	1fW/jldA1Q1cfnyQ45yk9rNxubHMePBpQG/E0nGPlVCw03orhkWA++N4cD7dzXlH2+DjdqzI4cePj
	lWoaHBzD3GTjy65W9oGY+z2ZOaGkKFPqB7mfgkPRuYSXYVkxj/xO/awCrvFUkbjBAiP5SBw4Qm9Uf
	XMrCwwa3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlpsx-0002fK-KG; Fri, 12 Jul 2019 07:22:27 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlpsi-0002QW-II
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 07:22:14 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D934FF49418E85D018DA;
 Fri, 12 Jul 2019 15:21:53 +0800 (CST)
Received: from [127.0.0.1] (10.74.223.225) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Fri, 12 Jul 2019
 15:21:50 +0800
Subject: Re: [PATCH v3 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: "Rafael J. Wysocki" <rafael@kernel.org>, Jeremy Linton
 <jeremy.linton@arm.com>
References: <20190628181457.6609-1-jeremy.linton@arm.com>
 <20190628181457.6609-2-jeremy.linton@arm.com>
 <CAJZ5v0jh0+WU5fpd9enq0UHrHzh+0Sgv-xoRiJM3jgu9dQFvdw@mail.gmail.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <fba206db-28ab-338c-2932-57b84448fc07@huawei.com>
Date: Fri, 12 Jul 2019 15:21:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0jh0+WU5fpd9enq0UHrHzh+0Sgv-xoRiJM3jgu9dQFvdw@mail.gmail.com>
X-Originating-IP: [10.74.223.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_002212_881956_9A9357E6 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will.deacon@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

5ZyoIDAzLzA3LzIwMTkgMTc6MjQsIFJhZmFlbCBKLiBXeXNvY2tpIOWGmemBkzoKPiBPbiBGcmks
IEp1biAyOCwgMjAxOSBhdCA4OjE1IFBNIEplcmVteSBMaW50b24gPGplcmVteS5saW50b25AYXJt
LmNvbT4gd3JvdGU6Cj4+Cj4+IEFDUEkgNi4zIGFkZHMgYSBmbGFnIHRvIHRoZSBDUFUgbm9kZSB0
byBpbmRpY2F0ZSB3aGV0aGVyCj4+IHRoZSBnaXZlbiBQRSBpcyBhIHRocmVhZC4gQWRkIGEgZnVu
Y3Rpb24gdG8gcmV0dXJuIHRoYXQKPj4gaW5mb3JtYXRpb24gZm9yIGEgZ2l2ZW4gbGludXggbG9n
aWNhbCBDUFUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEplcmVteSBMaW50b24gPGplcmVteS5saW50
b25AYXJtLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9hY3BpL3BwdHQuYyAgfCA2MiArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+PiAgIGluY2x1ZGUvbGludXgv
YWNwaS5oIHwgIDUgKysrKwo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgNjYgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY3BpL3BwdHQuYyBiL2Ry
aXZlcnMvYWNwaS9wcHR0LmMKPj4gaW5kZXggYjcyZTZhZmFhOGZiLi5iYjYxOTY0MjJmYWQgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvYWNwaS9wcHR0LmMKPj4gKysrIGIvZHJpdmVycy9hY3BpL3Bw
dHQuYwo+PiBAQCAtNTE3LDYgKzUxNyw1MiBAQCBzdGF0aWMgaW50IGZpbmRfYWNwaV9jcHVfdG9w
b2xvZ3lfdGFnKHVuc2lnbmVkIGludCBjcHUsIGludCBsZXZlbCwgaW50IGZsYWcpCj4+ICAgICAg
ICAgIHJldHVybiByZXR2YWw7Cj4+ICAgfQo+Pgo+PiArLyoqCj4+ICsgKiBjaGVja19hY3BpX2Nw
dV9mbGFnKCkgLSBEZXRlcm1pbmUgaWYgQ1BVIG5vZGUgaGFzIGEgZmxhZyBzZXQKPj4gKyAqIEBj
cHU6IEtlcm5lbCBsb2dpY2FsIENQVSBudW1iZXIKPj4gKyAqIEByZXY6IFRoZSBQUFRUIHJldmlz
aW9uIGRlZmluaW5nIHRoZSBmbGFnCj4+ICsgKiBAZmxhZzogVGhlIGZsYWcgaXRzZWxmCj4+ICsg
Kgo+PiArICogQ2hlY2sgdGhlIG5vZGUgcmVwcmVzZW50aW5nIGEgQ1BVIGZvciBhIGdpdmVuIGZs
YWcuCj4+ICsgKgo+PiArICogUmV0dXJuOiAtRU5PRU5UIGlmIHRoZSBQUFRUIGRvZXNuJ3QgZXhp
c3QsIHRoZSBDUFUgY2Fubm90IGJlIGZvdW5kIG9yCj4+ICsgKiAgICAgICAgdGhlIHRhYmxlIHJl
dmlzaW9uIGlzbid0IG5ldyBlbm91Z2guCj4+ICsgKiAgICAgICAgMSwgYW55IHBhc3NlZCBmbGFn
IHNldAo+PiArICogICAgICAgIDAsIGZsYWcgdW5zZXQKPj4gKyAqLwo+PiArc3RhdGljIGludCBj
aGVja19hY3BpX2NwdV9mbGFnKHVuc2lnbmVkIGludCBjcHUsIGludCByZXYsIHUzMiBmbGFnKQo+
IAo+IFdoeSBub3QgYm9vbD8KPiAKPj4gK3sKPj4gKyAgICAgICBzdHJ1Y3QgYWNwaV90YWJsZV9o
ZWFkZXIgKnRhYmxlOwo+PiArICAgICAgIGFjcGlfc3RhdHVzIHN0YXR1czsKPj4gKyAgICAgICB1
MzIgYWNwaV9jcHVfaWQgPSBnZXRfYWNwaV9pZF9mb3JfY3B1KGNwdSk7Cj4+ICsgICAgICAgc3Ry
dWN0IGFjcGlfcHB0dF9wcm9jZXNzb3IgKmNwdV9ub2RlID0gTlVMTDsKPj4gKyAgICAgICBpbnQg
cmV0ID0gLUVOT0VOVDsKPj4gKyAgICAgICBzdGF0aWMgaW50IHNhdmVkX3BwdHRfcmV2ID0gLTE7
Cj4+ICsKPj4gKyAgICAgICAvKiBDYWNoZSB0aGUgUFBUVCByZXZpc2lvbiB0byBhdm9pZCByZXBl
YXQgdGFibGUgZ2V0L3B1dCBvbiBmYWlsdXJlICovCj4gCj4gVGhpcyBpcyBhIHJhdGhlciBxdWVz
dGlvbmFibGUgb3B0aW1pemF0aW9uLgo+IAo+IERvZXMgdGhlIGV4dHJhIHRhYmxlIGdldC9wdXQg
cmVhbGx5IG1hdHRlcj8KCkkgd291bGQgaGF2ZSBtYWRlIHNhdmVkX3BwdHRfcmV2IGEgZ2xvYmFs
LCBidXQsIGluZGVlZCwgY2FjaGluZyB0aGUgCnZhbHVlIGlzIG5vdCBzbyBpbXBvcnRhbnQuCgo+
IAo+PiArICAgICAgIGlmIChzYXZlZF9wcHR0X3JldiA+IC0xICYmIHNhdmVkX3BwdHRfcmV2IDwg
cmV2KQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9FTlQ7Cj4gCj4gSXQgc2hvdWxkIGJl
IGZpbmUgdG8gcmV0dXJuICdmYWxzZScgaGVyZSwgc2hvdWxkbid0IGl0Pwo+IAo+PiArCj4+ICsg
ICAgICAgc3RhdHVzID0gYWNwaV9nZXRfdGFibGUoQUNQSV9TSUdfUFBUVCwgMCwgJnRhYmxlKTsK
Pj4gKyAgICAgICBpZiAoQUNQSV9GQUlMVVJFKHN0YXR1cykpIHsKPj4gKyAgICAgICAgICAgICAg
IHNhdmVkX3BwdHRfcmV2ID0gMDsKPj4gKyAgICAgICAgICAgICAgIGFjcGlfcHB0dF93YXJuX21p
c3NpbmcoKTsKPj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gCj4gQW5kIGhlcmU/Cj4g
Cj4+ICsgICAgICAgfQo+PiArCj4+ICsgICAgICAgc2F2ZWRfcHB0dF9yZXYgPSB0YWJsZS0+cmV2
aXNpb247Cj4+ICsKPj4gKyAgICAgICBpZiAoc2F2ZWRfcHB0dF9yZXYgPj0gcmV2KQo+PiArICAg
ICAgICAgICAgICAgY3B1X25vZGUgPSBhY3BpX2ZpbmRfcHJvY2Vzc29yX25vZGUodGFibGUsIGFj
cGlfY3B1X2lkKTsKPj4gKwo+PiArICAgICAgIGlmIChjcHVfbm9kZSkKPj4gKyAgICAgICAgICAg
ICAgIHJldCA9IChjcHVfbm9kZS0+ZmxhZ3MgJiBmbGFnKSAhPSAwOwo+IAo+IEFuZCB0aGlzIGNh
biBiZQo+IAo+IHJldCA9ICEhKGNwdV9ub2RlLT5mbGFncyAmIGZsYWcpOwo+IAo+PiArCj4+ICsg
ICAgICAgYWNwaV9wdXRfdGFibGUodGFibGUpOwo+PiArCj4+ICsgICAgICAgcmV0dXJuIHJldDsK
Pj4gK30KPj4gKwo+PiAgIC8qKgo+PiAgICAqIGFjcGlfZmluZF9sYXN0X2NhY2hlX2xldmVsKCkg
LSBEZXRlcm1pbmVzIHRoZSBudW1iZXIgb2YgY2FjaGUgbGV2ZWxzIGZvciBhIFBFCj4+ICAgICog
QGNwdTogS2VybmVsIGxvZ2ljYWwgQ1BVIG51bWJlcgo+PiBAQCAtNTgxLDYgKzYyNywyMSBAQCBp
bnQgY2FjaGVfc2V0dXBfYWNwaSh1bnNpZ25lZCBpbnQgY3B1KQo+PiAgICAgICAgICByZXR1cm4g
c3RhdHVzOwo+PiAgIH0KPj4KPj4gKy8qKgo+PiArICogYWNwaV9wcHR0X2NwdV9pc190aHJlYWQo
KSAtIERldGVybWluZSBpZiBDUFUgaXMgYSB0aHJlYWQKPj4gKyAqIEBjcHU6IEtlcm5lbCBsb2dp
Y2FsIENQVSBudW1iZXIKPj4gKyAqCj4+ICsgKgo+PiArICogUmV0dXJuOiAxLCBhIHRocmVhZAo+
PiArICogICAgICAgICAwLCBub3QgYSB0aHJlYWQKPj4gKyAqICAgICAgICAgLUVOT0VOVCAsaWYg
dGhlIFBQVFQgZG9lc24ndCBleGlzdCwgdGhlIENQVSBjYW5ub3QgYmUgZm91bmQgb3IKPj4gKyAq
ICAgICAgICAgdGhlIHRhYmxlIHJldmlzaW9uIGlzbid0IG5ldyBlbm91Z2guCj4+ICsgKi8KPj4g
K2ludCBhY3BpX3BwdHRfY3B1X2lzX3RocmVhZCh1bnNpZ25lZCBpbnQgY3B1KQo+PiArewo+PiAr
ICAgICAgIHJldHVybiBjaGVja19hY3BpX2NwdV9mbGFnKGNwdSwgMiwgQUNQSV9QUFRUX0FDUElf
UFJPQ0VTU09SX0lTX1RIUkVBRCk7Cj4+ICt9CgpZb3UgY291bGQgYWxzbyBjb25zaWRlciB0aGUg
Zm9sbG93aW5nIHRvIGF2b2lkIHRoZSB0cmktc3RhdGUgcmV0dXJuIHZhbHVlOgoKYm9vbCBhY3Bp
X3BwdHRfY3B1X2ZpbmRfdGhyZWFkZWQodW5zaWduZWQgaW50IGNwdSwgYm9vbCAqaXNfdGhyZWFk
ZWQpCgo+PiArCj4+ICAgLyoqCj4+ICAgICogZmluZF9hY3BpX2NwdV90b3BvbG9neSgpIC0gRGV0
ZXJtaW5lIGEgdW5pcXVlIHRvcG9sb2d5IHZhbHVlIGZvciBhIGdpdmVuIENQVQo+PiAgICAqIEBj
cHU6IEtlcm5lbCBsb2dpY2FsIENQVSBudW1iZXIKPj4gQEAgLTY0MSw3ICs3MDIsNiBAQCBpbnQg
ZmluZF9hY3BpX2NwdV9jYWNoZV90b3BvbG9neSh1bnNpZ25lZCBpbnQgY3B1LCBpbnQgbGV2ZWwp
Cj4+ICAgICAgICAgIHJldHVybiByZXQ7Cj4+ICAgfQo+Pgo+PiAtCj4+ICAgLyoqCj4+ICAgICog
ZmluZF9hY3BpX2NwdV90b3BvbG9neV9wYWNrYWdlKCkgLSBEZXRlcm1pbmUgYSB1bmlxdWUgQ1BV
IHBhY2thZ2UgdmFsdWUKPj4gICAgKiBAY3B1OiBLZXJuZWwgbG9naWNhbCBDUFUgbnVtYmVyCj4+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2FjcGkuaCBiL2luY2x1ZGUvbGludXgvYWNwaS5o
Cj4+IGluZGV4IGQzMTVkODY4NDRlNC4uM2UzMzkzNzVlMjEzIDEwMDY0NAo+PiAtLS0gYS9pbmNs
dWRlL2xpbnV4L2FjcGkuaAo+PiArKysgYi9pbmNsdWRlL2xpbnV4L2FjcGkuaAo+PiBAQCAtMTMw
MSwxMCArMTMwMSwxNSBAQCBzdGF0aWMgaW5saW5lIGludCBscGl0X3JlYWRfcmVzaWRlbmN5X2Nv
dW50X2FkZHJlc3ModTY0ICphZGRyZXNzKQo+PiAgICNlbmRpZgo+Pgo+PiAgICNpZmRlZiBDT05G
SUdfQUNQSV9QUFRUCj4+ICtpbnQgYWNwaV9wcHR0X2NwdV9pc190aHJlYWQodW5zaWduZWQgaW50
IGNwdSk7Cj4+ICAgaW50IGZpbmRfYWNwaV9jcHVfdG9wb2xvZ3kodW5zaWduZWQgaW50IGNwdSwg
aW50IGxldmVsKTsKPj4gICBpbnQgZmluZF9hY3BpX2NwdV90b3BvbG9neV9wYWNrYWdlKHVuc2ln
bmVkIGludCBjcHUpOwo+PiAgIGludCBmaW5kX2FjcGlfY3B1X2NhY2hlX3RvcG9sb2d5KHVuc2ln
bmVkIGludCBjcHUsIGludCBsZXZlbCk7Cj4+ICAgI2Vsc2UKPj4gK3N0YXRpYyBpbmxpbmUgaW50
IGFjcGlfcHB0dF9jcHVfaXNfdGhyZWFkKHVuc2lnbmVkIGludCBjcHUpCj4+ICt7Cj4+ICsgICAg
ICAgcmV0dXJuIC1FSU5WQUw7Cj4+ICt9Cj4+ICAgc3RhdGljIGlubGluZSBpbnQgZmluZF9hY3Bp
X2NwdV90b3BvbG9neSh1bnNpZ25lZCBpbnQgY3B1LCBpbnQgbGV2ZWwpCj4+ICAgewo+PiAgICAg
ICAgICByZXR1cm4gLUVJTlZBTDsKPj4gLS0KPj4gMi4yMS4wCj4+Cj4gCj4gLgo+IAoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
