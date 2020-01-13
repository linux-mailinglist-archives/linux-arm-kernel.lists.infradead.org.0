Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDE9138E2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:49:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wsbc5/kuQNuAAJIK9YBz36xgWCKSHXV/TmSBrdqiNdk=; b=X+rUR5zWAOl2J+
	zVNiAXsKxxopgNb61zImai8ox6miPuf8yXkf9X1+JuTWM1CNhJ/TFjGwhBAog40Ki6YI+g9YTYU6M
	MZG1zgHoDIq9+zJPst4Xdes8aMl3ZJX2vY3kt5r6we25y+cPT1aggbQKbMf/viGohxazevnuOPtAe
	KYNsOvhCAzrJ5nxqkBuoy7wxPkxFAeMDOOn9j9/XPxgXwInu0Bt2i+mehAG+yaFGA5eS6kPozAXk1
	DeVReEMVb33I73T4hFQMe4n9QJ7Ee5turgjvHn00pxx5urFkX00uj/9JeFV5wwI9LQklQFQUfGBt/
	HqXrq1kU9aslxhteQcpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwLm-0003GD-4j; Mon, 13 Jan 2020 09:49:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwLF-0002zZ-8d
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:49:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CAE42106F;
 Mon, 13 Jan 2020 01:48:59 -0800 (PST)
Received: from [10.162.43.142] (p8cg001049571a15.blr.arm.com [10.162.43.142])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 81C9D3F534; Mon, 13 Jan 2020 01:48:52 -0800 (PST)
Subject: Re: [PATCH V11 1/5] mm/hotplug: Introduce arch callback validating
 the hot remove range
To: David Hildenbrand <dhildenb@redhat.com>
References: <6f0efddc-f124-58ca-28b6-4632469cf992@arm.com>
 <3C3BE5FA-0CFC-4C90-8657-63EF5B680B0B@redhat.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <6b8fb779-31e8-1b63-85a8-9f6c93a04494@arm.com>
Date: Mon, 13 Jan 2020 15:20:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <3C3BE5FA-0CFC-4C90-8657-63EF5B680B0B@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_014901_408246_72FAD5F2 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, David Hildenbrand <david@redhat.com>,
 catalin.marinas@arm.com, linux-mm@kvack.org, arunks@codeaurora.org,
 cpandya@codeaurora.org, will@kernel.org, ira.weiny@intel.com,
 steven.price@arm.com, valentin.schneider@arm.com, suzuki.poulose@arm.com,
 robin.murphy@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 osalvador@suse.de, steve.capper@arm.com, logang@deltatee.com,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMS8xMy8yMDIwIDAyOjQ0IFBNLCBEYXZpZCBIaWxkZW5icmFuZCB3cm90ZToKPiAKPiAK
Pj4gQW0gMTMuMDEuMjAyMCB1bSAxMDoxMCBzY2hyaWViIEFuc2h1bWFuIEtoYW5kdWFsIDxhbnNo
dW1hbi5raGFuZHVhbEBhcm0uY29tPjoKPj4KPj4g77u/Cj4+Cj4+PiBPbiAwMS8xMC8yMDIwIDAy
OjEyIFBNLCBEYXZpZCBIaWxkZW5icmFuZCB3cm90ZToKPj4+PiBPbiAxMC4wMS4yMCAwNDowOSwg
QW5zaHVtYW4gS2hhbmR1YWwgd3JvdGU6Cj4+Pj4gQ3VycmVudGx5IHRoZXJlIGFyZSB0d28gaW50
ZXJmYWNlcyB0byBpbml0aWF0ZSBtZW1vcnkgcmFuZ2UgaG90IHJlbW92YWwgaS5lCj4+Pj4gcmVt
b3ZlX21lbW9yeSgpIGFuZCBfX3JlbW92ZV9tZW1vcnkoKSB3aGljaCB0aGVuIGNhbGxzIHRyeV9y
ZW1vdmVfbWVtb3J5KCkuCj4+Pj4gUGxhdGZvcm0gZ2V0cyBjYWxsZWQgd2l0aCBhcmNoX3JlbW92
ZV9tZW1vcnkoKSB0byB0ZWFyIGRvd24gcmVxdWlyZWQga2VybmVsCj4+Pj4gcGFnZSB0YWJsZXMg
YW5kIG90aGVyIGFyY2ggc3BlY2lmaWMgcHJvY2VkdXJlcy4gQnV0IHRoZXJlIGFyZSBwbGF0Zm9y
bXMKPj4+PiBsaWtlIGFybTY0IHdoaWNoIG1pZ2h0IHdhbnQgdG8gcHJldmVudCByZW1vdmFsIG9m
IGNlcnRhaW4gc3BlY2lmaWMgbWVtb3J5Cj4+Pj4gcmFuZ2VzIGlycmVzcGVjdGl2ZSBvZiB0aGVp
ciBwcmVzZW50IHVzYWdlIG9yIG1vdmFiaWxpdHkgcHJvcGVydGllcy4KPj4+Cj4+PiBXaHk/IElz
IHRoaXMgb25seSByZWxldmFudCBmb3IgYm9vdCBtZW1vcnk/IEkgaG9wZSBzbywgb3RoZXJ3aXNl
IHRoZQo+Pj4gYXJjaCBjb2RlIG5lZWRzIGZpeGluZyBJTUhPLgo+Pgo+PiBSaWdodCwgaXQgaXMg
cmVsZXZhbnQgb25seSBmb3IgdGhlIGJvb3QgbWVtb3J5IG9uIGFybTY0IHBsYXRmb3JtLiBCdXQg
dGhpcwo+PiBuZXcgYXJjaCBjYWxsYmFjayBtYWtlcyBpdCBmbGV4aWJsZSB0byByZWplY3QgYW55
IGdpdmVuIG1lbW9yeSByYW5nZS4KPj4KPj4+Cj4+PiBJZiBpdCdzIG9ubHkgYm9vdCBtZW1vcnks
IHdlIHNob3VsZCBkaXNhbGxvdyBvZmZsaW5pbmcgaW5zdGVhZCB2aWEgYQo+Pj4gbWVtb3J5IG5v
dGlmaWVyIC0gbXVjaCBjbGVhbmVyLgo+Pgo+PiBEb250IGhhdmUgbXVjaCBkZXRhaWwgdW5kZXJz
dGFuZGluZyBvZiBNTVUgbm90aWZpZXIgbWVjaGFuaXNtIGJ1dCBmcm9tIHNvbWUKPj4gaW5pdGlh
bCByZWFkaW5nLCBpdCBzZWVtcyBsaWtlIHdlIG5lZWQgdG8gaGF2ZSBhIG1tX3N0cnVjdCBmb3Ig
YSBub3RpZmllcgo+PiB0byBtb25pdG9yIHZhcmlvdXMgZXZlbnRzIG9uIHRoZSBwYWdlIHRhYmxl
LiBKdXN0IHdvbmRlcmluZyBob3cgYSBwaHlzaWNhbAo+PiBtZW1vcnkgcmFuZ2UgbGlrZSBib290
IG1lbW9yeSBjYW4gYmUgbW9uaXRvcmVkIGJlY2F1c2UgaXQgY2FuIGJlIHVzZWQgYm90aAo+PiBm
b3IgZm9yIGtlcm5lbCAoaW5pdF9tbSkgb3IgdXNlciBzcGFjZSBwcm9jZXNzIGF0IHNhbWUgdGlt
ZS4gSXMgdGhlcmUgc29tZQo+PiBtZWNoYW5pc20gd2UgY291bGQgZG8gdGhpcyA/Cj4+Cj4+Pgo+
Pj4+Cj4+Pj4gQ3VycmVudCBhcmNoIGNhbGwgYmFjayBhcmNoX3JlbW92ZV9tZW1vcnkoKSBpcyB0
b28gbGF0ZSBpbiB0aGUgcHJvY2VzcyB0bwo+Pj4+IGFib3J0IG1lbW9yeSBob3QgcmVtb3ZhbCBh
cyBtZW1vcnkgYmxvY2sgZGV2aWNlcyBhbmQgZmlybXdhcmUgbWVtb3J5IG1hcAo+Pj4+IGVudHJp
ZXMgd291bGQgaGF2ZSBhbHJlYWR5IGJlZW4gcmVtb3ZlZC4gUGxhdGZvcm1zIHNob3VsZCBiZSBh
YmxlIHRvIGFib3J0Cj4+Pj4gdGhlIHByb2Nlc3MgYmVmb3JlIHRha2luZyB0aGUgbWVtX2hvdHBs
dWdfbG9jayB3aXRoIG1lbV9ob3RwbHVnX2JlZ2luKCkuCj4+Pj4gVGhpcyBlc3NlbnRpYWxseSBy
ZXF1aXJlcyBhIG5ldyBhcmNoIGNhbGxiYWNrIGZvciBtZW1vcnkgcmFuZ2UgdmFsaWRhdGlvbi4K
Pj4+Cj4+PiBJIHNvbWV3aGF0IGRpc2xpa2UgdGhpcyB2ZXJ5IG11Y2guIE1lbW9yeSByZW1vdmFs
IHNob3VsZCBuZXZlciBmYWlsIGlmCj4+PiB1c2VkIHNhbmVseS4gU2VlIGUuZy4sIF9fcmVtb3Zl
X21lbW9yeSgpLCBpdCB3aWxsIEJVRygpIHdoZW5ldmVyCj4+PiBzb21ldGhpbmcgbGlrZSB0aGF0
IHdvdWxkIHN0cmlrZS4KPj4+Cj4+Pj4KPj4+PiBUaGlzIGRpZmZlcmVudGlhdGVzIG1lbW9yeSBy
YW5nZSB2YWxpZGF0aW9uIGJldHdlZW4gbWVtb3J5IGhvdCBhZGQgYW5kIGhvdAo+Pj4+IHJlbW92
ZSBwYXRocyBiZWZvcmUgY2FydmluZyBvdXQgYSBuZXcgaGVscGVyIGNoZWNrX2hvdHJlbW92ZV9t
ZW1vcnlfcmFuZ2UoKQo+Pj4+IHdoaWNoIGluY29ycG9yYXRlcyBhIG5ldyBhcmNoIGNhbGxiYWNr
LiBUaGlzIGNhbGwgYmFjayBwcm92aWRlcyBwbGF0Zm9ybXMKPj4+PiBhbiBvcHBvcnR1bml0eSB0
byByZWZ1c2UgbWVtb3J5IHJlbW92YWwgYXQgdGhlIHZlcnkgb25zZXQuIEluIGZ1dHVyZSB0aGUK
Pj4+PiBzYW1lIHByaW5jaXBsZSBjYW4gYmUgZXh0ZW5kZWQgZm9yIG1lbW9yeSBob3QgYWRkIHBh
dGggaWYgcmVxdWlyZWQuCj4+Pj4KPj4+PiBQbGF0Zm9ybXMgY2FuIGNob29zZSB0byBvdmVycmlk
ZSB0aGlzIGNhbGxiYWNrIGluIG9yZGVyIHRvIHJlamVjdCBzcGVjaWZpYwo+Pj4+IG1lbW9yeSBy
YW5nZXMgZnJvbSByZW1vdmFsIG9yIGNhbiBqdXN0IGZhbGxiYWNrIHRvIGEgZGVmYXVsdCBpbXBs
ZW1lbnRhdGlvbgo+Pj4+IHdoaWNoIGFsbG93cyByZW1vdmFsIG9mIGFsbCBtZW1vcnkgcmFuZ2Vz
Lgo+Pj4KPj4+IEkgc3VzcGVjdCB3ZSB3YW50IHJlYWxseSB3YW50IHRvIGRpc2FsbG93IG9mZmxp
bmluZyBpbnN0ZWFkLiBFLmcuLCBJCj4+Cj4+IElmIGJvb3QgbWVtb3J5IHBhZ2VzIGNhbiBiZSBw
cmV2ZW50ZWQgZnJvbSBiZWluZyBvZmZsaW5lZCBmb3Igc3VyZSwgdGhlbiBpdAo+PiB3b3VsZCBp
bmRpcmVjdGx5IGRlZmluaXRlbHkgcHJldmVudCBob3QgcmVtb3ZlIHByb2Nlc3MgYXMgd2VsbC4K
Pj4KPj4+IHJlbWVtYmVyIHMzOTB4IGRvZXMgdGhhdCB3aXRoIGNlcnRhaW4gYXJlYXMgbmVlZGVk
IGZvciBkdW1waW5nL2tleGVjLgo+Pgo+PiBDb3VsZCBub3QgZmluZCBhbnkgcmVmZXJlbmNlcyB0
byBtbXVfbm90aWZpZXIgaW4gYXJjaC9zMzkwIG9yIGFueSBvdGhlciBhcmNoCj4+IGZvciB0aGF0
IG1hdHRlciBhcGFydCBmcm9tIEtWTSAod2hpY2ggaGFzIGFuIHVzZXIgc3BhY2UgY29tcG9uZW50
KSwgY291bGQgeW91Cj4+IHBsZWFzZSBnaXZlIHNvbWUgcG9pbnRlcnMgPwo+IAo+IE1lbW9yeSAo
aG90cGx1Zykgbm90aWZpZXIsIG5vdCBNTVUgbm90aWZpZXIgOikKClRoZXkgYXJlIHNvIHNpbWls
YXJseSBuYW1lZCA6KQoKPiAKPiBOb3Qgb24gbXkgbm90ZWJvb2sgcmlnaHQgbm93LCBncmVwIGZv
ciBNRU1fR09JTkdfT0ZGTElORSwgdGhhdCBzaG91bGQgYmUgaXQuCj4gCgpHb3QgaXQsIHRoYW5r
cyAhIEJ1dCB3ZSB3aWxsIHN0aWxsIG5lZWQgYm9vdCBtZW1vcnkgZW51bWVyYXRpb24gdmlhIE1F
TUJMT0NLX0JPT1QKdG8gcmVqZWN0IGFmZmVjdGVkIG9mZmxpbmUgcmVxdWVzdHMgaW4gdGhlIGNh
bGxiYWNrLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
