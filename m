Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6471814D2C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 22:58:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eaKO/DyjHg9+9Rqzt6PBT8t4HZACqNQnBu9eoUFmCoM=; b=enlvnGvTMT/ZDd
	AxXLPtbZsjufg3B8inTiQij45N3JWFd2k6ktpSvBrELTLryTuAoOpJbNz/572If1oSYjMGFHP4+zs
	t3y2/mXuNJ4uKbNax8PNyGS4YPjUg5OF3GmovD7oj/nubbBHg+q44i0BGSXmwj0oQvZRPGQ4u9A8q
	mJ/2sjDVpVy3QpxnjqtTE7fqXfblykFg2KVxXpmMKZzaqsVg5FwRDNApBiNbJDOs9OkiM20SpAPjO
	MpWj61m8FPyee5+0QkyCV4F6pkj1iR5Ag9cRXplPrXzgUYGdyBPOKun76MbirWBz27vTNkKRneuD7
	uVkx8U1OBCjioj9SZvJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwvLl-000571-9S; Wed, 29 Jan 2020 21:58:17 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwvLX-0004wC-K0
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 21:58:06 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 13:57:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,379,1574150400"; d="scan'208";a="402120157"
Received: from richard.sh.intel.com (HELO localhost) ([10.239.159.54])
 by orsmga005.jf.intel.com with ESMTP; 29 Jan 2020 13:57:32 -0800
Date: Thu, 30 Jan 2020 05:57:45 +0800
From: Wei Yang <richardw.yang@linux.intel.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
Message-ID: <20200129215745.GA20736@richard>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200129094738.GE25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129094738.GE25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_135804_215799_0F24A939 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

T24gV2VkLCBKYW4gMjksIDIwMjAgYXQgMDk6NDc6MzhBTSArMDAwMCwgUnVzc2VsbCBLaW5nIC0g
QVJNIExpbnV4IGFkbWluIHdyb3RlOgo+T24gU3VuLCBKYW4gMjYsIDIwMjAgYXQgMDU6NDc6NTdQ
TSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+PiAxOC4wMS4yMDIwIDAyOjIyLCBXZWkg
WWFuZyDQv9C40YjQtdGCOgo+PiA+IFVzZSB0aGUgZ2VuZXJhbCBoZWxwZXIgaW5zdGVhZCBvZiBk
byBpdCBieSBoYW5kLgo+PiA+IAo+PiA+IFNpZ25lZC1vZmYtYnk6IFdlaSBZYW5nIDxyaWNoYXJk
dy55YW5nQGxpbnV4LmludGVsLmNvbT4KPj4gPiAtLS0KPj4gPiAgbW0vbXJlbWFwLmMgfCA3ICsr
LS0tLS0KPj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkKPj4gPiAKPj4gPiBkaWZmIC0tZ2l0IGEvbW0vbXJlbWFwLmMgYi9tbS9tcmVtYXAuYwo+PiA+
IGluZGV4IGMyYWY4YmE0YmE0My4uYTI1ODkxNGYzZWUxIDEwMDY0NAo+PiA+IC0tLSBhL21tL21y
ZW1hcC5jCj4+ID4gKysrIGIvbW0vbXJlbWFwLmMKPj4gPiBAQCAtMjUzLDExICsyNTMsOCBAQCB1
bnNpZ25lZCBsb25nIG1vdmVfcGFnZV90YWJsZXMoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEs
Cj4+ID4gIAo+PiA+ICAJZm9yICg7IG9sZF9hZGRyIDwgb2xkX2VuZDsgb2xkX2FkZHIgKz0gZXh0
ZW50LCBuZXdfYWRkciArPSBleHRlbnQpIHsKPj4gPiAgCQljb25kX3Jlc2NoZWQoKTsKPj4gPiAt
CQluZXh0ID0gKG9sZF9hZGRyICsgUE1EX1NJWkUpICYgUE1EX01BU0s7Cj4+ID4gLQkJLyogZXZl
biBpZiBuZXh0IG92ZXJmbG93ZWQsIGV4dGVudCBiZWxvdyB3aWxsIGJlIG9rICovCj4+ID4gKwkJ
bmV4dCA9IHBtZF9hZGRyX2VuZChvbGRfYWRkciwgb2xkX2VuZCk7Cj4+ID4gIAkJZXh0ZW50ID0g
bmV4dCAtIG9sZF9hZGRyOwo+PiA+IC0JCWlmIChleHRlbnQgPiBvbGRfZW5kIC0gb2xkX2FkZHIp
Cj4+ID4gLQkJCWV4dGVudCA9IG9sZF9lbmQgLSBvbGRfYWRkcjsKPj4gPiAgCQlvbGRfcG1kID0g
Z2V0X29sZF9wbWQodm1hLT52bV9tbSwgb2xkX2FkZHIpOwo+PiA+ICAJCWlmICghb2xkX3BtZCkK
Pj4gPiAgCQkJY29udGludWU7Cj4+ID4gQEAgLTMwMSw3ICsyOTgsNyBAQCB1bnNpZ25lZCBsb25n
IG1vdmVfcGFnZV90YWJsZXMoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCj4+ID4gIAo+PiA+
ICAJCWlmIChwdGVfYWxsb2MobmV3X3ZtYS0+dm1fbW0sIG5ld19wbWQpKQo+PiA+ICAJCQlicmVh
azsKPj4gPiAtCQluZXh0ID0gKG5ld19hZGRyICsgUE1EX1NJWkUpICYgUE1EX01BU0s7Cj4+ID4g
KwkJbmV4dCA9IHBtZF9hZGRyX2VuZChuZXdfYWRkciwgbmV3X2FkZHIgKyBsZW4pOwo+PiA+ICAJ
CWlmIChleHRlbnQgPiBuZXh0IC0gbmV3X2FkZHIpCj4+ID4gIAkJCWV4dGVudCA9IG5leHQgLSBu
ZXdfYWRkcjsKPj4gPiAgCQltb3ZlX3B0ZXModm1hLCBvbGRfcG1kLCBvbGRfYWRkciwgb2xkX2Fk
ZHIgKyBleHRlbnQsIG5ld192bWEsCj4+ID4gCj4+IAo+PiBIZWxsbyBXZWksCj4+IAo+PiBTdGFy
dGluZyB3aXRoIG5leHQtMjAyMDAxMjIsIEknbSBzZWVpbmcgdGhlIGZvbGxvd2luZyBpbiBLTVNH
IG9uIE5WSURJQQo+PiBUZWdyYSAoQVJNMzIpOgo+PiAKPj4gICBCVUc6IEJhZCByc3MtY291bnRl
ciBzdGF0ZSBtbToocHRydmFsKSB0eXBlOk1NX0FOT05QQUdFUyB2YWw6MTkwCj4+IAo+PiBhbmQg
ZXZlbnR1YWxseSBrZXJuZWwgaGFuZ3MuCj4+IAo+PiBHaXQncyBiaXNlY3Rpb24gcG9pbnRzIHRv
IHRoaXMgcGF0Y2ggYW5kIHJldmVydGluZyBpdCBoZWxwcy4gUGxlYXNlIGZpeCwKPj4gdGhhbmtz
IGluIGFkdmFuY2UuCj4KPlRoZSBhYm92ZSBpcyBkZWZpbml0ZWx5IHdyb25nIC0gcFhYX2FkZHJf
ZW5kKCkgYXJlIGRlc2lnbmVkIHRvIGJlIHVzZWQKPndpdGggYW4gYWRkcmVzcyBpbmRleCB3aXRo
aW4gdGhlIHBYWCB0YWJsZSB0YWJsZSBhbmQgdGhlIGFkZHJlc3MgaW5kZXgKPm9mIGVpdGhlciB0
aGUgbGFzdCBlbnRyeSBpbiB0aGUgc2FtZSBwWFggdGFibGUgb3IgdGhlIGJlZ2lubmluZyBvZiB0
aGUKPl9uZXh0XyBwWFggdGFibGUuICBBcmJpdGFyeSBlbmQgYWRkcmVzcyBpbmRpY2llcyBhcmUg
bm90IGFsbG93ZWQuCj4KCiNkZWZpbmUgcG1kX2FkZHJfZW5kKGFkZHIsIGVuZCkJCQkJCQlcCih7
CXVuc2lnbmVkIGxvbmcgX19ib3VuZGFyeSA9ICgoYWRkcikgKyBQTURfU0laRSkgJiBQTURfTUFT
SzsJXAoJKF9fYm91bmRhcnkgLSAxIDwgKGVuZCkgLSAxKT8gX19ib3VuZGFyeTogKGVuZCk7CQlc
Cn0pCgpJZiBteSB1bmRlcnN0YW5kaW5nIGlzIGNvcnJlY3QsIHRoZSBkZWZpbml0aW9uIGhlcmUg
YWxpZ24gdGhlIGFkZHIgdG8gbmV4dCBQTUQKYm91bmRhcnkgb3IgZW5kLgoKSSBkb24ndCBzZWUg
dGhlIHBvc3NpYmlsaXR5IHRvIGFjcm9zcyBhbm90aGVyIFBNRC4gRG8gSSBtaXNzIHNvbWV0aGlu
Zz8KCj5XaGVuIHBhZ2UgdGFibGVzIGFyZSAicm9sbGVkIHVwIiB3aGVuIGxldmVscyBkb24ndCBl
eGlzdCwgaXQgaXMgY29tbW9uCj5wcmFjdGljZSBmb3IgdGhlc2UgbWFjcm9zIHRvIGp1c3QgcmV0
dXJuIHRoZWlyIGVuZCBhZGRyZXNzIGluZGV4Lgo+SGVuY2UsIGlmIHRoZXkgYXJlIHVzZWQgd2l0
aCBhcmJpdGFyeSBlbmQgYWRkcmVzcyBpbmRpY2llcywgdGhlbiB0aGUKPml0ZXJhdGlvbiB3aWxs
IGZhaWwuCj4KPlRoZSBvbmx5IHdheSB0byBkbyB0aGlzIGlzOgo+Cj4JbmV4dCA9IHBtZF9hZGRy
X2VuZChvbGRfYWRkciwKPgkJCXB1ZF9hZGRyX2VuZChvbGRfYWRkciwKPgkJCQlwNGRfYWRkcl9l
bmQob2xkX2FkZHIsCj4JCQkJCXBnZF9hZGRyX2VuZChvbGRfYWRkciwgb2xkX2VuZCkpKSk7Cj4K
PndoaWNoIGdpdmVzIHBtZF9hZGRyX2VuZCgpIChhbmQgZWFjaCBvZiB0aGUgaW50ZXJtZWRpYXRl
IHBYWF9hZGRyX2VuZCgpKQo+dGhlIGNvcnJlY3QgZW5kIGFyZ3VtZW50LiAgSG93ZXZlciwgdGhh
dCdzIGEgbW9yZSBjb21wbGV4IGFuZCB2ZXJib3NlLAo+YW5kIGxpa2VseSBsZXNzIGVmZmljaWVu
dCB0aGFuIHRoZSBjdXJyZW50IGNvZGUuCj4KPkknZCBzdWdnZXN0IHRoYXQgdGhlcmUncyBub3Ro
aW5nIHRvICJmaXgiIGluIHRoZSB2NS41IGNvZGUgd3J0IHRoaXMsCj5hbmQgdHJ5aW5nIHRvICJj
bGVhbiBpdCB1cCIgd2lsbCBqdXN0IHJlc3VsdCBpbiBsZXNzIGVmZmljaWVudCBvcgo+YnJva2Vu
IGNvZGUuCj4KPi0tIAo+Uk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5hcm1saW51eC5v
cmcudWsvZGV2ZWxvcGVyL3BhdGNoZXMvCj5GVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5l
IGluIHN1YnVyYmlhOiBzeW5jIGF0IDEyLjFNYnBzIGRvd24gNjIya2JwcyB1cAo+QWNjb3JkaW5n
IHRvIHNwZWVkdGVzdC5uZXQ6IDExLjlNYnBzIGRvd24gNTAwa2JwcyB1cAoKLS0gCldlaSBZYW5n
CkhlbHAgeW91LCBIZWxwIG1lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
