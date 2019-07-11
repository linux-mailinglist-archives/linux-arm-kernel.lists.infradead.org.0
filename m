Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E002E6501F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 04:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=olKBikMPm09GHdZPDpuQPpJWdiUuUSMch6ii7UqLCQY=; b=dKDNPaBRAkRkDWiQfLs6If3vv
	r8D4zT8iEb7IT/7+eIJtMgRw1Xdelh/5/1fGOyX4gRxOgzBEfhriM+yJ+3w71aF6/vjSkmFw0giyT
	ezVPJ8caOhODZjA4Zso8oG4Wy5ExhBDXSEsPqZn4cjl93uk4NW2dCKvB+VhAsz0yVJjvRSVIe//hQ
	ZPAOETMFdQ9G5RW7fBbgUXbnt+MJ/A1y8xuOlTKA0GAG9Ti3ncpZAKOo94KhA33XFii6kdYqCBGfZ
	3jODGMBiT8LESHBPjgOaEzFhemCM5ybRriKaKi+O3ov+eWgkNHjrEP12cleEePTeu9r3kQazpYrF5
	I6b62/UOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlOkT-00029N-GZ; Thu, 11 Jul 2019 02:23:53 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlOkG-00028f-3e
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 02:23:42 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8C7547EB2D4A2594F218;
 Thu, 11 Jul 2019 10:23:24 +0800 (CST)
Received: from [127.0.0.1] (10.34.174.125) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Thu, 11 Jul 2019
 10:23:16 +0800
Subject: Re: [PATCH v3 1/4] perf pmu: Support more complex PMU event aliasing
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
References: <1561732552-143038-1-git-send-email-john.garry@huawei.com>
 <1561732552-143038-2-git-send-email-john.garry@huawei.com>
 <20190702190724.GM15462@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <9d06a987-9b18-aa4e-ec8a-5afc2e1c92b5@huawei.com>
Date: Thu, 11 Jul 2019 03:23:15 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190702190724.GM15462@kernel.org>
X-Originating-IP: [10.34.174.125]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_192340_445001_E2D1FF3D 
X-CRM114-Status: GOOD (  20.18  )
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
Cc: mark.rutland@arm.com, brueckner@linux.ibm.com, ak@linux.intel.com,
 mathieu.poirier@linaro.org, peterz@infradead.org, ben@decadent.org.uk,
 tmricht@linux.ibm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDIvMDcvMjAxOSAyMDowNywgQXJuYWxkbyBDYXJ2YWxobyBkZSBNZWxvIHdyb3RlOgo+IEVt
IEZyaSwgSnVuIDI4LCAyMDE5IGF0IDEwOjM1OjQ5UE0gKzA4MDAsIEpvaG4gR2FycnkgZXNjcmV2
ZXU6Cj4+IFRoZSBqZXZlbnQgIlVuaXQiIGZpZWxkIGlzIHVzZWQgZm9yIHVuY29yZSBQTVUgYWxp
YXMgZGVmaW5pdGlvbi4KPj4KPj4gVGhlIGZvcm0gdW5jb3JlX3BtdV9leGFtcGxlX1ggaXMgc3Vw
cG9ydGVkLCB3aGVyZSAiWCIgaXMgYSB3aWxkY2FyZCwKPj4gdG8gc3VwcG9ydCBtdWx0aXBsZSBp
bnN0YW5jZXMgb2YgdGhlIHNhbWUgUE1VIGluIGEgc3lzdGVtLgo+Pgo+PiBVbmZvcnR1bmF0ZWx5
IHRoaXMgZm9ybWF0IG5vdCBzdWl0YWJsZSBmb3IgYWxsIHVuY29yZSBQTVVzOyB0YWtlIHRoZSBI
aXNpCj4+IEREUkMgdW5jb3JlIFBNVSBmb3IgZXhhbXBsZSwgd2hlcmUgdGhlIG5hbWUgaXMgaW4g
dGhlIGZvcm0KPj4gaGlzaV9zY2NsWF9kZHJjWS4KPj4KPj4gRm9yIGZvciBjdXJyZW50IGpldmVu
dCBwYXJzaW5nLCB3ZSB3b3VsZCBiZSByZXF1aXJlZCB0byBoYXJkY29kZSBhbiB1bmNvcmUKPj4g
YWxpYXMgdHJhbnNsYXRpb24gZm9yIGVhY2ggcG9zc2libGUgdmFsdWUgb2YgWC4gVGhpcyBpcyBu
b3Qgc2NhbGFibGUuCj4+Cj4+IEluc3RlYWQsIGFkZCBzdXBwb3J0IGZvciAiVW5pdCIgZmllbGQg
aW4gdGhlIGZvcm0gImhpc2lfc2NjbCxkZHJjIiwgd2hlcmUKPj4gd2UgY2FuIG1hdGNoIGJ5IGhp
c2lfc2NjbFggYW5kIGRkcmNZLiBUb2tlbnMgIGluIFVuaXQgZmllbGQKPj4gYXJlIGRlbGltaXRl
ZCBieSAnLCcuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEpvaG4gR2FycnkgPGpvaG4uZ2FycnlAaHVh
d2VpLmNvbT4KPj4gLS0tCj4+ICB0b29scy9wZXJmL3V0aWwvcG11LmMgfCA0NiArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgNDEg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3Bl
cmYvdXRpbC9wbXUuYyBiL3Rvb2xzL3BlcmYvdXRpbC9wbXUuYwo+PiBpbmRleCA3ZTcyOTlmZWU1
NTAuLmNmYzkxNjgxOWM1OSAxMDA2NDQKPj4gLS0tIGEvdG9vbHMvcGVyZi91dGlsL3BtdS5jCj4+
ICsrKyBiL3Rvb2xzL3BlcmYvdXRpbC9wbXUuYwo+PiBAQCAtNzAwLDYgKzcwMCw0NiBAQCBzdHJ1
Y3QgcG11X2V2ZW50c19tYXAgKnBlcmZfcG11X19maW5kX21hcChzdHJ1Y3QgcGVyZl9wbXUgKnBt
dSkKPj4gIAlyZXR1cm4gbWFwOwo+PiAgfQo+Pgo+PiArc3RhdGljIGJvb2wgcG11X3VuY29yZV9h
bGlhc19tYXRjaChjb25zdCBjaGFyICpwbXVfbmFtZSwgY29uc3QgY2hhciAqbmFtZSkKPj4gK3sK
Pj4gKwljaGFyICp0bXAsICp0b2ssICpzdHI7Cj4+ICsJYm9vbCByZXM7Cj4+ICsKPj4gKwlzdHIg
PSBzdHJkdXAocG11X25hbWUpOwo+PiArCWlmICghc3RyKQo+PiArCQlyZXR1cm4gZmFsc2U7Cj4+
ICsKPj4gKwkvKgo+PiArCSAqIHVuY29yZSBhbGlhcyBtYXkgYmUgZnJvbSBkaWZmZXJlbnQgUE1V
IHdpdGggY29tbW9uIHByZWZpeAo+PiArCSAqLwo+PiArCXRvayA9IHN0cnRva19yKHN0ciwgIiwi
LCAmdG1wKTsKPgo+IEluIHNvbWUgcGxhY2VzLCBlLmcuIGdjYyB2ZXJzaW9uIDQuMS4yOgo+Cj4g
ICBDQyAgICAgICAvdG1wL2J1aWxkL3BlcmYvdXRpbC9wbXUubwo+IGNjMTogd2FybmluZ3MgYmVp
bmcgdHJlYXRlZCBhcyBlcnJvcnMKPiB1dGlsL3BtdS5jOiBJbiBmdW5jdGlvbiDigJhwbXVfbG9v
a3Vw4oCZOgo+IHV0aWwvcG11LmM6NzA2OiB3YXJuaW5nOiDigJh0bXDigJkgbWF5IGJlIHVzZWQg
dW5pbml0aWFsaXplZCBpbiB0aGlzIGZ1bmN0aW9uCj4gbXY6IGNhbm5vdCBzdGF0IGAvdG1wL2J1
aWxkL3BlcmYvdXRpbC8ucG11Lm8udG1wJzogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+CgpI
aSBBcm5hbGRvLAoKU29ycnkgZm9yIHRoZSBkZWxheWVkIHJlc3Bvc25lLiBZb3VyIGZpeCwgYmVs
b3csIGxvb2tzIG9rLgoKUmVnYXJkcywKSm9obgoKPiBUaGlzIHNpbGVuY2VzIGl0LCBhZGRpbmcu
Cj4KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvcGVyZi91dGlsL3BtdS5jIGIvdG9vbHMvcGVyZi91dGls
L3BtdS5jCj4gaW5kZXggOTEzNjMzYWUwYmY4Li41NWY0ZGU2NDQyZTMgMTAwNjQ0Cj4gLS0tIGEv
dG9vbHMvcGVyZi91dGlsL3BtdS5jCj4gKysrIGIvdG9vbHMvcGVyZi91dGlsL3BtdS5jCj4gQEAg
LTcwMyw3ICs3MDMsNyBAQCBzdHJ1Y3QgcG11X2V2ZW50c19tYXAgKnBlcmZfcG11X19maW5kX21h
cChzdHJ1Y3QgcGVyZl9wbXUgKnBtdSkKPgo+ICBzdGF0aWMgYm9vbCBwbXVfdW5jb3JlX2FsaWFz
X21hdGNoKGNvbnN0IGNoYXIgKnBtdV9uYW1lLCBjb25zdCBjaGFyICpuYW1lKQo+ICB7Cj4gLQlj
aGFyICp0bXAsICp0b2ssICpzdHI7Cj4gKwljaGFyICp0bXAgPSBOVUxMLCAqdG9rLCAqc3RyOwo+
ICAJYm9vbCByZXM7Cj4KPiAgCXN0ciA9IHN0cmR1cChwbXVfbmFtZSk7Cj4KPgo+PiArCWlmIChz
dHJuY21wKHBtdV9uYW1lLCB0b2ssIHN0cmxlbih0b2spKSkgewo+PiArCQlyZXMgPSBmYWxzZTsK
Pj4gKwkJZ290byBvdXQ7Cj4+ICsJfQo+PiArCj4+ICsJLyoKPj4gKwkgKiBNYXRjaCBtb3JlIGNv
bXBsZXggYWxpYXNlcyB3aGVyZSB0aGUgYWxpYXMgbmFtZSBpcyBhIGNvbW1hLWRlbGltaXRlZAo+
PiArCSAqIGxpc3Qgb2YgdG9rZW5zLCBvcmRlcmx5IGNvbnRhaW5lZCBpbiB0aGUgbWF0Y2hpbmcg
UE1VIG5hbWUuCj4+ICsJICoKPj4gKwkgKiBFeGFtcGxlOiBGb3IgYWxpYXMgInNvY2tldCxwbXVu
YW1lIiBhbmQgUE1VICJzb2NrZXRYX3BtdW5hbWVZIiwgd2UKPj4gKwkgKgkgICAgbWF0Y2ggInNv
Y2tldCIgaW4gInNvY2tldFhfcG11bmFtZVkiIGFuZCB0aGVuICJwbXVuYW1lIiBpbgo+PiArCSAq
CSAgICAicG11bmFtZVkiLgo+PiArCSAqLwo+PiArCWZvciAoOyB0b2s7IG5hbWUgKz0gc3RybGVu
KHRvayksIHRvayA9IHN0cnRva19yKE5VTEwsICIsIiwgJnRtcCkpIHsKPj4gKwkJbmFtZSA9IHN0
cnN0cihuYW1lLCB0b2spOwo+PiArCQlpZiAoIW5hbWUpIHsKPj4gKwkJCXJlcyA9IGZhbHNlOwo+
PiArCQkJZ290byBvdXQ7Cj4+ICsJCX0KPj4gKwl9Cj4+ICsKPj4gKwlyZXMgPSB0cnVlOwo+PiAr
b3V0Ogo+PiArCWZyZWUoc3RyKTsKPj4gKwlyZXR1cm4gcmVzOwo+PiArfQo+PiArCj4+ICAvKgo+
PiAgICogRnJvbSB0aGUgcG11X2V2ZW50c19tYXAsIGZpbmQgdGhlIHRhYmxlIG9mIFBNVSBldmVu
dHMgdGhhdCBjb3JyZXNwb25kcwo+PiAgICogdG8gdGhlIGN1cnJlbnQgcnVubmluZyBDUFUuIFRo
ZW4sIGFkZCBhbGwgUE1VIGV2ZW50cyBmcm9tIHRoYXQgdGFibGUKPj4gQEAgLTczMCwxMiArNzcw
LDggQEAgc3RhdGljIHZvaWQgcG11X2FkZF9jcHVfYWxpYXNlcyhzdHJ1Y3QgbGlzdF9oZWFkICpo
ZWFkLCBzdHJ1Y3QgcGVyZl9wbXUgKnBtdSkKPj4gIAkJCWJyZWFrOwo+PiAgCQl9Cj4+Cj4+IC0J
CS8qCj4+IC0JCSAqIHVuY29yZSBhbGlhcyBtYXkgYmUgZnJvbSBkaWZmZXJlbnQgUE1VCj4+IC0J
CSAqIHdpdGggY29tbW9uIHByZWZpeAo+PiAtCQkgKi8KPj4gIAkJaWYgKHBtdV9pc191bmNvcmUo
bmFtZSkgJiYKPj4gLQkJICAgICFzdHJuY21wKHBuYW1lLCBuYW1lLCBzdHJsZW4ocG5hbWUpKSkK
Pj4gKwkJICAgIHBtdV91bmNvcmVfYWxpYXNfbWF0Y2gocG5hbWUsIG5hbWUpKQo+PiAgCQkJZ290
byBuZXdfYWxpYXM7Cj4+Cj4+ICAJCWlmIChzdHJjbXAocG5hbWUsIG5hbWUpKQo+PiAtLQo+PiAy
LjE3LjEKPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
