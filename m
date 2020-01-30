Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB72014D4FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 02:30:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjSjHBbs6EbTfDaSWzXW17TFJvzzyHr7iwAkRnnCdyE=; b=dL6/2vU8RoCqCf
	yU+DsEzRJu1tNM7Qnb3f/TL92oQzZ8WL2B6+z7TclrXmWhpXUCwNYfDvC2HAAS7EmOML6N1uDGhER
	9VAqXbE4NvRhBthWxu1WUGgubbuo1W94BUQF3vMk836D38gQ/MqqiBwbkHjDZjCqcsYygzWqer6oK
	/vVXXCZRf5jFBt3LW2f5KcvbcbH+RikVj+yVIAUCb/TxomZuH0DJs/Js6K+3DqPvrkWT/fScG/qtE
	rEFSYZkLwWLZcAfku/qlhjA0QIyJQ+hQMlJ8NvB7bRMNPLyTuCp+gRl0fSUimUoE08U34TbXyiksK
	kI0x0MycfRY3eAMoqNqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwyeq-0005EP-US; Thu, 30 Jan 2020 01:30:12 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwyeX-0005E0-BV
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 01:29:55 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 17:29:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,380,1574150400"; d="scan'208";a="262007116"
Received: from richard.sh.intel.com (HELO localhost) ([10.239.159.54])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jan 2020 17:29:45 -0800
Date: Thu, 30 Jan 2020 09:30:00 +0800
From: Wei Yang <richardw.yang@linux.intel.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
Message-ID: <20200130013000.GA5137@richard>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200129094738.GE25745@shell.armlinux.org.uk>
 <20200129215745.GA20736@richard>
 <20200129232441.GI25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129232441.GI25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_172953_406738_749415B1 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Reply-To: Wei Yang <richardw.yang@linux.intel.com>
Cc: thellstrom@vmware.com, yang.shi@linux.alibaba.com,
 akpm@linux-foundation.org, aneesh.kumar@linux.ibm.com,
 linux-kernel@vger.kernel.org, Jon Hunter <jonathanh@nvidia.com>,
 linux-mm@kvack.org, Thierry Reding <thierry.reding@gmail.com>,
 Wei Yang <richardw.yang@linux.intel.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, Dmitry Osipenko <digetx@gmail.com>,
 dan.j.williams@intel.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKYW4gMjksIDIwMjAgYXQgMTE6MjQ6NDFQTSArMDAwMCwgUnVzc2VsbCBLaW5nIC0g
QVJNIExpbnV4IGFkbWluIHdyb3RlOgo+T24gVGh1LCBKYW4gMzAsIDIwMjAgYXQgMDU6NTc6NDVB
TSArMDgwMCwgV2VpIFlhbmcgd3JvdGU6Cj4+IE9uIFdlZCwgSmFuIDI5LCAyMDIwIGF0IDA5OjQ3
OjM4QU0gKzAwMDAsIFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbiB3cm90ZToKPj4gPk9u
IFN1biwgSmFuIDI2LCAyMDIwIGF0IDA1OjQ3OjU3UE0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3
cm90ZToKPj4gPj4gMTguMDEuMjAyMCAwMjoyMiwgV2VpIFlhbmcg0L/QuNGI0LXRgjoKPj4gPj4g
PiBVc2UgdGhlIGdlbmVyYWwgaGVscGVyIGluc3RlYWQgb2YgZG8gaXQgYnkgaGFuZC4KPj4gPj4g
PiAKPj4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBXZWkgWWFuZyA8cmljaGFyZHcueWFuZ0BsaW51eC5p
bnRlbC5jb20+Cj4+ID4+ID4gLS0tCj4+ID4+ID4gIG1tL21yZW1hcC5jIHwgNyArKy0tLS0tCj4+
ID4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+
ID4+ID4gCj4+ID4+ID4gZGlmZiAtLWdpdCBhL21tL21yZW1hcC5jIGIvbW0vbXJlbWFwLmMKPj4g
Pj4gPiBpbmRleCBjMmFmOGJhNGJhNDMuLmEyNTg5MTRmM2VlMSAxMDA2NDQKPj4gPj4gPiAtLS0g
YS9tbS9tcmVtYXAuYwo+PiA+PiA+ICsrKyBiL21tL21yZW1hcC5jCj4+ID4+ID4gQEAgLTI1Mywx
MSArMjUzLDggQEAgdW5zaWduZWQgbG9uZyBtb3ZlX3BhZ2VfdGFibGVzKHN0cnVjdCB2bV9hcmVh
X3N0cnVjdCAqdm1hLAo+PiA+PiA+ICAKPj4gPj4gPiAgCWZvciAoOyBvbGRfYWRkciA8IG9sZF9l
bmQ7IG9sZF9hZGRyICs9IGV4dGVudCwgbmV3X2FkZHIgKz0gZXh0ZW50KSB7Cj4+ID4+ID4gIAkJ
Y29uZF9yZXNjaGVkKCk7Cj4+ID4+ID4gLQkJbmV4dCA9IChvbGRfYWRkciArIFBNRF9TSVpFKSAm
IFBNRF9NQVNLOwo+PiA+PiA+IC0JCS8qIGV2ZW4gaWYgbmV4dCBvdmVyZmxvd2VkLCBleHRlbnQg
YmVsb3cgd2lsbCBiZSBvayAqLwo+PiA+PiA+ICsJCW5leHQgPSBwbWRfYWRkcl9lbmQob2xkX2Fk
ZHIsIG9sZF9lbmQpOwo+PiA+PiA+ICAJCWV4dGVudCA9IG5leHQgLSBvbGRfYWRkcjsKPj4gPj4g
PiAtCQlpZiAoZXh0ZW50ID4gb2xkX2VuZCAtIG9sZF9hZGRyKQo+PiA+PiA+IC0JCQlleHRlbnQg
PSBvbGRfZW5kIC0gb2xkX2FkZHI7Cj4+ID4+ID4gIAkJb2xkX3BtZCA9IGdldF9vbGRfcG1kKHZt
YS0+dm1fbW0sIG9sZF9hZGRyKTsKPj4gPj4gPiAgCQlpZiAoIW9sZF9wbWQpCj4+ID4+ID4gIAkJ
CWNvbnRpbnVlOwo+PiA+PiA+IEBAIC0zMDEsNyArMjk4LDcgQEAgdW5zaWduZWQgbG9uZyBtb3Zl
X3BhZ2VfdGFibGVzKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLAo+PiA+PiA+ICAKPj4gPj4g
PiAgCQlpZiAocHRlX2FsbG9jKG5ld192bWEtPnZtX21tLCBuZXdfcG1kKSkKPj4gPj4gPiAgCQkJ
YnJlYWs7Cj4+ID4+ID4gLQkJbmV4dCA9IChuZXdfYWRkciArIFBNRF9TSVpFKSAmIFBNRF9NQVNL
Owo+PiA+PiA+ICsJCW5leHQgPSBwbWRfYWRkcl9lbmQobmV3X2FkZHIsIG5ld19hZGRyICsgbGVu
KTsKPj4gPj4gPiAgCQlpZiAoZXh0ZW50ID4gbmV4dCAtIG5ld19hZGRyKQo+PiA+PiA+ICAJCQll
eHRlbnQgPSBuZXh0IC0gbmV3X2FkZHI7Cj4+ID4+ID4gIAkJbW92ZV9wdGVzKHZtYSwgb2xkX3Bt
ZCwgb2xkX2FkZHIsIG9sZF9hZGRyICsgZXh0ZW50LCBuZXdfdm1hLAo+PiA+PiA+IAo+PiA+PiAK
Pj4gPj4gSGVsbG8gV2VpLAo+PiA+PiAKPj4gPj4gU3RhcnRpbmcgd2l0aCBuZXh0LTIwMjAwMTIy
LCBJJ20gc2VlaW5nIHRoZSBmb2xsb3dpbmcgaW4gS01TRyBvbiBOVklESUEKPj4gPj4gVGVncmEg
KEFSTTMyKToKPj4gPj4gCj4+ID4+ICAgQlVHOiBCYWQgcnNzLWNvdW50ZXIgc3RhdGUgbW06KHB0
cnZhbCkgdHlwZTpNTV9BTk9OUEFHRVMgdmFsOjE5MAo+PiA+PiAKPj4gPj4gYW5kIGV2ZW50dWFs
bHkga2VybmVsIGhhbmdzLgo+PiA+PiAKPj4gPj4gR2l0J3MgYmlzZWN0aW9uIHBvaW50cyB0byB0
aGlzIHBhdGNoIGFuZCByZXZlcnRpbmcgaXQgaGVscHMuIFBsZWFzZSBmaXgsCj4+ID4+IHRoYW5r
cyBpbiBhZHZhbmNlLgo+PiA+Cj4+ID5UaGUgYWJvdmUgaXMgZGVmaW5pdGVseSB3cm9uZyAtIHBY
WF9hZGRyX2VuZCgpIGFyZSBkZXNpZ25lZCB0byBiZSB1c2VkCj4+ID53aXRoIGFuIGFkZHJlc3Mg
aW5kZXggd2l0aGluIHRoZSBwWFggdGFibGUgdGFibGUgYW5kIHRoZSBhZGRyZXNzIGluZGV4Cj4+
ID5vZiBlaXRoZXIgdGhlIGxhc3QgZW50cnkgaW4gdGhlIHNhbWUgcFhYIHRhYmxlIG9yIHRoZSBi
ZWdpbm5pbmcgb2YgdGhlCj4+ID5fbmV4dF8gcFhYIHRhYmxlLiAgQXJiaXRhcnkgZW5kIGFkZHJl
c3MgaW5kaWNpZXMgYXJlIG5vdCBhbGxvd2VkLgo+PiA+Cj4+IAo+PiAjZGVmaW5lIHBtZF9hZGRy
X2VuZChhZGRyLCBlbmQpCQkJCQkJXAo+PiAoewl1bnNpZ25lZCBsb25nIF9fYm91bmRhcnkgPSAo
KGFkZHIpICsgUE1EX1NJWkUpICYgUE1EX01BU0s7CVwKPj4gCShfX2JvdW5kYXJ5IC0gMSA8IChl
bmQpIC0gMSk/IF9fYm91bmRhcnk6IChlbmQpOwkJXAo+PiB9KQo+PiAKPj4gSWYgbXkgdW5kZXJz
dGFuZGluZyBpcyBjb3JyZWN0LCB0aGUgZGVmaW5pdGlvbiBoZXJlIGFsaWduIHRoZSBhZGRyIHRv
IG5leHQgUE1ECj4+IGJvdW5kYXJ5IG9yIGVuZC4KPj4gCj4+IEkgZG9uJ3Qgc2VlIHRoZSBwb3Nz
aWJpbGl0eSB0byBhY3Jvc3MgYW5vdGhlciBQTUQuIERvIEkgbWlzcyBzb21ldGhpbmc/Cj4KPkxv
b2sgYXQgdGhlIGRlZmluaXRpb24gb2YgcCpfYWRkcl9lbmQoKSB0aGF0IGFyZSB1c2VkIHdoZW4g
cGFnZSB0YWJsZXMKPmFyZSByb2xsZWQgdXAuCj4KClNvcnJ5LCBJIGRvbid0IGdldCB5b3VyIHBv
aW50LgoKV2hhdCdzIHRoZSBtZWFuaW5nIG9mICJyb2xsIHVwIiBoZXJlPwoKV291bGQgeW91IG1p
bmQgZ2l2aW5nIG1lIGFuIGV4YW1wbGU/IEkgc2VlIHBtZF9hZGRyX2VuZCgpIGlzIG5vdCB1c2Vk
IGluIG1hbnkKcGxhY2VzIGluIGNvcmUga2VybmVsLiBCeSBnbGFuY2luZyB0aG9zZSB1c2FnZXMs
IGFsbCB0aGUgcGxhY2VzIHVzZSBpdCBsaWtlCnBtZF9hZGRyX2VuZChhZGRyLCBlbmQpLiBTZWVt
cyBubyBzcGVjaWFsbHkgaGFuZGluZyBvbiB0aGUgZW5kIGFkZHJlc3MuCgpPciB5b3UgbWVhbiB0
aGUgY2FzZSB3aGVuIHBtZF9hZGRyX2VuZCgpIGlzIGRlZmluZWQgdG8gcmV0dXJuICJlbmQiIGRp
cmVjdGx5PyAKCj4+ID5XaGVuIHBhZ2UgdGFibGVzIGFyZSAicm9sbGVkIHVwIiB3aGVuIGxldmVs
cyBkb24ndCBleGlzdCwgaXQgaXMgY29tbW9uCj4+ID5wcmFjdGljZSBmb3IgdGhlc2UgbWFjcm9z
IHRvIGp1c3QgcmV0dXJuIHRoZWlyIGVuZCBhZGRyZXNzIGluZGV4Lgo+PiA+SGVuY2UsIGlmIHRo
ZXkgYXJlIHVzZWQgd2l0aCBhcmJpdGFyeSBlbmQgYWRkcmVzcyBpbmRpY2llcywgdGhlbiB0aGUK
Pj4gPml0ZXJhdGlvbiB3aWxsIGZhaWwuCj4+ID4KPj4gPlRoZSBvbmx5IHdheSB0byBkbyB0aGlz
IGlzOgo+PiA+Cj4+ID4JbmV4dCA9IHBtZF9hZGRyX2VuZChvbGRfYWRkciwKPj4gPgkJCXB1ZF9h
ZGRyX2VuZChvbGRfYWRkciwKPj4gPgkJCQlwNGRfYWRkcl9lbmQob2xkX2FkZHIsCj4+ID4JCQkJ
CXBnZF9hZGRyX2VuZChvbGRfYWRkciwgb2xkX2VuZCkpKSk7Cj4+ID4KPj4gPndoaWNoIGdpdmVz
IHBtZF9hZGRyX2VuZCgpIChhbmQgZWFjaCBvZiB0aGUgaW50ZXJtZWRpYXRlIHBYWF9hZGRyX2Vu
ZCgpKQo+PiA+dGhlIGNvcnJlY3QgZW5kIGFyZ3VtZW50LiAgSG93ZXZlciwgdGhhdCdzIGEgbW9y
ZSBjb21wbGV4IGFuZCB2ZXJib3NlLAo+PiA+YW5kIGxpa2VseSBsZXNzIGVmZmljaWVudCB0aGFu
IHRoZSBjdXJyZW50IGNvZGUuCj4+ID4KPj4gPkknZCBzdWdnZXN0IHRoYXQgdGhlcmUncyBub3Ro
aW5nIHRvICJmaXgiIGluIHRoZSB2NS41IGNvZGUgd3J0IHRoaXMsCj4+ID5hbmQgdHJ5aW5nIHRv
ICJjbGVhbiBpdCB1cCIgd2lsbCBqdXN0IHJlc3VsdCBpbiBsZXNzIGVmZmljaWVudCBvcgo+PiA+
YnJva2VuIGNvZGUuCj4+ID4KPj4gPi0tIAo+PiA+Uk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczov
L3d3dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVyL3BhdGNoZXMvCj4+ID5GVFRDIGJyb2FkYmFu
ZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEyLjFNYnBzIGRvd24gNjIy
a2JwcyB1cAo+PiA+QWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQ6IDExLjlNYnBzIGRvd24gNTAw
a2JwcyB1cAo+PiAKPj4gLS0gCj4+IFdlaSBZYW5nCj4+IEhlbHAgeW91LCBIZWxwIG1lCj4+IAo+
Cj4tLSAKPlJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2Rl
dmVsb3Blci9wYXRjaGVzLwo+RlRUQyBicm9hZGJhbmQgZm9yIDAuOG1pbGUgbGluZSBpbiBzdWJ1
cmJpYTogc3luYyBhdCAxMi4xTWJwcyBkb3duIDYyMmticHMgdXAKPkFjY29yZGluZyB0byBzcGVl
ZHRlc3QubmV0OiAxMS45TWJwcyBkb3duIDUwMGticHMgdXAKCi0tIApXZWkgWWFuZwpIZWxwIHlv
dSwgSGVscCBtZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
