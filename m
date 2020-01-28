Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B065814C388
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 00:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30EyiBqyIy0m3ETmvFLJ1ed0HdSfX/MTyi4f2jQZ6lE=; b=cHBTjtjQ5lom7x
	2zE2ijkgLYyjvSUT5lJwvRIWTb+p8wDlggLUFlPMtQ2+A6+gRrUkjt8uLGVZ727l4VAv+lvG1pEhh
	t/O2DOBEgmzHxj8oIoCsZdmBDmCXkN7gzOulLD+moLFAFJgvFKzw2Qo80YYvtxfEDjfvbM5pQlgiG
	1jN+PPb+n+8XVBwHoVM1T5id/vzLEdO2Cm026PqwVGKi8e/wDRbcJ4i3ooW2BiSJsWNmcPmM/isuy
	hTZwAUKhfJakLQPn9HvuMtBQKc4BD2euNEkmb+EyNfRxm7dVtk8V5nRfbV7qi4KtY0jShHgDJ/NoD
	a6sqLq1FteyuYN2MtTyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwaID-0004wr-EC; Tue, 28 Jan 2020 23:29:13 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwaI1-0004w2-W6
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 23:29:03 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 15:28:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,375,1574150400"; d="scan'208";a="261613284"
Received: from richard.sh.intel.com (HELO localhost) ([10.239.159.54])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2020 15:28:54 -0800
Date: Wed, 29 Jan 2020 07:29:07 +0800
From: Wei Yang <richardw.yang@linux.intel.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
Message-ID: <20200128232907.GA11467@richard>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200128004301.GD20624@richard>
 <d66bb20e-c0e7-caef-cbbc-aa216c2be7d6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d66bb20e-c0e7-caef-cbbc-aa216c2be7d6@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_152902_043447_797CD659 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, thellstrom@vmware.com,
 yang.shi@linux.alibaba.com, aneesh.kumar@linux.ibm.com,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Jon Hunter <jonathanh@nvidia.com>, linux-mm@kvack.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Wei Yang <richardw.yang@linux.intel.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, akpm@linux-foundation.org, dan.j.williams@intel.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKYW4gMjgsIDIwMjAgYXQgMDY6NTk6NDhQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+MjguMDEuMjAyMCAwMzo0MywgV2VpIFlhbmcg0L/QuNGI0LXRgjoKPj4gT24gU3Vu
LCBKYW4gMjYsIDIwMjAgYXQgMDU6NDc6NTdQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3Rl
Ogo+Pj4gMTguMDEuMjAyMCAwMjoyMiwgV2VpIFlhbmcg0L/QuNGI0LXRgjoKPj4+PiBVc2UgdGhl
IGdlbmVyYWwgaGVscGVyIGluc3RlYWQgb2YgZG8gaXQgYnkgaGFuZC4KPj4+Pgo+Pj4+IFNpZ25l
ZC1vZmYtYnk6IFdlaSBZYW5nIDxyaWNoYXJkdy55YW5nQGxpbnV4LmludGVsLmNvbT4KPj4+PiAt
LS0KPj4+PiAgbW0vbXJlbWFwLmMgfCA3ICsrLS0tLS0KPj4+PiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9tbS9t
cmVtYXAuYyBiL21tL21yZW1hcC5jCj4+Pj4gaW5kZXggYzJhZjhiYTRiYTQzLi5hMjU4OTE0ZjNl
ZTEgMTAwNjQ0Cj4+Pj4gLS0tIGEvbW0vbXJlbWFwLmMKPj4+PiArKysgYi9tbS9tcmVtYXAuYwo+
Pj4+IEBAIC0yNTMsMTEgKzI1Myw4IEBAIHVuc2lnbmVkIGxvbmcgbW92ZV9wYWdlX3RhYmxlcyhz
dHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwKPj4+PiAgCj4+Pj4gIAlmb3IgKDsgb2xkX2FkZHIg
PCBvbGRfZW5kOyBvbGRfYWRkciArPSBleHRlbnQsIG5ld19hZGRyICs9IGV4dGVudCkgewo+Pj4+
ICAJCWNvbmRfcmVzY2hlZCgpOwo+Pj4+IC0JCW5leHQgPSAob2xkX2FkZHIgKyBQTURfU0laRSkg
JiBQTURfTUFTSzsKPj4+PiAtCQkvKiBldmVuIGlmIG5leHQgb3ZlcmZsb3dlZCwgZXh0ZW50IGJl
bG93IHdpbGwgYmUgb2sgKi8KPj4+PiArCQluZXh0ID0gcG1kX2FkZHJfZW5kKG9sZF9hZGRyLCBv
bGRfZW5kKTsKPj4+PiAgCQlleHRlbnQgPSBuZXh0IC0gb2xkX2FkZHI7Cj4+Pj4gLQkJaWYgKGV4
dGVudCA+IG9sZF9lbmQgLSBvbGRfYWRkcikKPj4+PiAtCQkJZXh0ZW50ID0gb2xkX2VuZCAtIG9s
ZF9hZGRyOwo+Pj4+ICAJCW9sZF9wbWQgPSBnZXRfb2xkX3BtZCh2bWEtPnZtX21tLCBvbGRfYWRk
cik7Cj4+Pj4gIAkJaWYgKCFvbGRfcG1kKQo+Pj4+ICAJCQljb250aW51ZTsKPj4+PiBAQCAtMzAx
LDcgKzI5OCw3IEBAIHVuc2lnbmVkIGxvbmcgbW92ZV9wYWdlX3RhYmxlcyhzdHJ1Y3Qgdm1fYXJl
YV9zdHJ1Y3QgKnZtYSwKPj4+PiAgCj4+Pj4gIAkJaWYgKHB0ZV9hbGxvYyhuZXdfdm1hLT52bV9t
bSwgbmV3X3BtZCkpCj4+Pj4gIAkJCWJyZWFrOwo+Pj4+IC0JCW5leHQgPSAobmV3X2FkZHIgKyBQ
TURfU0laRSkgJiBQTURfTUFTSzsKPj4+PiArCQluZXh0ID0gcG1kX2FkZHJfZW5kKG5ld19hZGRy
LCBuZXdfYWRkciArIGxlbik7Cj4+Pj4gIAkJaWYgKGV4dGVudCA+IG5leHQgLSBuZXdfYWRkcikK
Pj4+PiAgCQkJZXh0ZW50ID0gbmV4dCAtIG5ld19hZGRyOwo+Pj4+ICAJCW1vdmVfcHRlcyh2bWEs
IG9sZF9wbWQsIG9sZF9hZGRyLCBvbGRfYWRkciArIGV4dGVudCwgbmV3X3ZtYSwKPj4+Pgo+Pj4K
Pj4+IEhlbGxvIFdlaSwKPj4+Cj4+PiBTdGFydGluZyB3aXRoIG5leHQtMjAyMDAxMjIsIEknbSBz
ZWVpbmcgdGhlIGZvbGxvd2luZyBpbiBLTVNHIG9uIE5WSURJQQo+Pj4gVGVncmEgKEFSTTMyKToK
Pj4+Cj4+PiAgQlVHOiBCYWQgcnNzLWNvdW50ZXIgc3RhdGUgbW06KHB0cnZhbCkgdHlwZTpNTV9B
Tk9OUEFHRVMgdmFsOjE5MAo+Pj4KPj4gCj4+IFRoYW5rcy4KPj4gCj4+IFdvdWxkIHlvdSBtaW5k
IGxldHRpbmcgbWUga25vdyB3aGljaCBjYXNlIHlvdSBhcmUgdGVzdGluZz8KPgo+Tm90aGluZyBz
cGVjaWFsLCBzeXN0ZW1kIHN0YXJ0cyB0byBmYWxsIGFwYXJ0IGR1cmluZyBib290Lgo+Cj4+IE9y
IHRoZSBzcGVjaWFsIHRoaW5nIGlzIDMyLWJpdCBwbGF0Zm9ybT8KPkkgaGF2ZSBhIGxpbWl0ZWQg
a25vd2xlZGdlIGFib3V0IG1tLywgc28gY2FuJ3QgcHJvdmlkZSBkZXRhaWxlZCBleHBsYW5hdGlv
bi4KPgo+UGxlYXNlIHRha2UgYSBsb29rIGF0IHRoaXM6Cj4KPlsxXQo+aHR0cHM6Ly9lbGl4aXIu
Ym9vdGxpbi5jb20vbGludXgvdjUuNS9zb3VyY2UvYXJjaC9hcm0vaW5jbHVkZS9hc20vcGd0YWJs
ZS0ybGV2ZWwuaCNMMjEwCj4KPlsyXQo+aHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgv
djUuNS9zb3VyY2UvaW5jbHVkZS9hc20tZ2VuZXJpYy9wZ3RhYmxlLmgjTDU0OQo+Cj5bM10KPmh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xp
bnV4LmdpdC9jb21taXQvP2lkPWMwYmExMGI1MTJlYjJlMmEzODg4YjZlNmNjMGUwODlmNWU3YTE5
MWIKClRoYW5rcywgSSBzZWUgdGhlIGRpZmZlcmVuY2UgaGVyZS4KCklmIHRoaXMgaXMgdGhlIGNh
c2UsIHdlIGNhbid0IHVzZSBwbWRfYWRkcl9lbmQoKSB0byBzaW1wbGlmeSB0aGUgY2FsY3VsYXRp
b24uClRoaXMgY2hhbmdlcyB0aGUgYmVoYXZpb3IuCgpJIHdvdWxkIHByZXBhcmUgYW5vdGhlciBw
YXRjaCBzZXQgdG8gZml4IHRoaXMuIFdvdWxkIHlvdSBtaW5kIGhlbHBpbmcgbWUKdmVyaWZ5IG9u
IHlvdXIgcGxhdGZvcm0/CgotLSAKV2VpIFlhbmcKSGVscCB5b3UsIEhlbHAgbWUKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
