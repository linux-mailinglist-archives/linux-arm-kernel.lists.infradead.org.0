Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFF5139F59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 03:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRgAzG/esqt9HMRLB5SzEvfF3wzlplD7b8MqTE4vwOw=; b=axa4/Z3NU9BgFF
	0qxnO4otnAVdEEkAzMmw6qNoNa5vM/e1JvDiEgMH8A6yQV16YC4eTZQMNuvsyjWeOC3AqCGlpxKYJ
	uO15jCpAF8IJowdNZKj6yu0MEVVmesRuCSMRiWui5iYWwrk4X2ZDLOiaMsIWHNkmAn9HsW8IL+vGx
	JoJqley1YKny4XV7zn2ACpuPR1bihy610/qmEEv1VJMyYA/RY8m810I1N2jLwejCgtJli4DKHTUiH
	jrrUHRbKfIkesv/66XteO+N+VKLLT0ZateKxUO+xItbyJJOc30kiyhFVti2ZDX0tn0edLvLLU8Gce
	Hmlq01eNhp+nKeJ5xWpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irBgk-0000zL-PF; Tue, 14 Jan 2020 02:12:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irBgc-0000yH-4r
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 02:12:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A10B51045;
 Mon, 13 Jan 2020 18:12:01 -0800 (PST)
Received: from [192.168.0.129] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 095483F6C4;
 Mon, 13 Jan 2020 18:11:54 -0800 (PST)
Subject: Re: [PATCH V11 1/5] mm/hotplug: Introduce arch callback validating
 the hot remove range
To: David Hildenbrand <david@redhat.com>,
 David Hildenbrand <dhildenb@redhat.com>
References: <6f0efddc-f124-58ca-28b6-4632469cf992@arm.com>
 <3C3BE5FA-0CFC-4C90-8657-63EF5B680B0B@redhat.com>
 <6b8fb779-31e8-1b63-85a8-9f6c93a04494@arm.com>
 <19194427-1295-3596-2c2c-463c4adf4f35@redhat.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <78f04711-2ca6-280c-d0c2-ab9eea866e59@arm.com>
Date: Tue, 14 Jan 2020 07:43:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <19194427-1295-3596-2c2c-463c4adf4f35@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_181206_273553_084B1B29 
X-CRM114-Status: GOOD (  19.82  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-mm@kvack.org,
 arunks@codeaurora.org, cpandya@codeaurora.org, ira.weiny@intel.com,
 will@kernel.org, steven.price@arm.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, robin.murphy@arm.com, broonie@kernel.org, cai@lca.pw,
 ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, steve.capper@arm.com,
 logang@deltatee.com, linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMS8xMy8yMDIwIDA0OjA3IFBNLCBEYXZpZCBIaWxkZW5icmFuZCB3cm90ZToKPiBPbiAx
My4wMS4yMCAxMDo1MCwgQW5zaHVtYW4gS2hhbmR1YWwgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDAxLzEz
LzIwMjAgMDI6NDQgUE0sIERhdmlkIEhpbGRlbmJyYW5kIHdyb3RlOgo+Pj4KPj4+Cj4+Pj4gQW0g
MTMuMDEuMjAyMCB1bSAxMDoxMCBzY2hyaWViIEFuc2h1bWFuIEtoYW5kdWFsIDxhbnNodW1hbi5r
aGFuZHVhbEBhcm0uY29tPjoKPj4+Pgo+Pj4+IO+7vwo+Pj4+Cj4+Pj4+IE9uIDAxLzEwLzIwMjAg
MDI6MTIgUE0sIERhdmlkIEhpbGRlbmJyYW5kIHdyb3RlOgo+Pj4+Pj4gT24gMTAuMDEuMjAgMDQ6
MDksIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+Pj4+Pj4gQ3VycmVudGx5IHRoZXJlIGFyZSB0
d28gaW50ZXJmYWNlcyB0byBpbml0aWF0ZSBtZW1vcnkgcmFuZ2UgaG90IHJlbW92YWwgaS5lCj4+
Pj4+PiByZW1vdmVfbWVtb3J5KCkgYW5kIF9fcmVtb3ZlX21lbW9yeSgpIHdoaWNoIHRoZW4gY2Fs
bHMgdHJ5X3JlbW92ZV9tZW1vcnkoKS4KPj4+Pj4+IFBsYXRmb3JtIGdldHMgY2FsbGVkIHdpdGgg
YXJjaF9yZW1vdmVfbWVtb3J5KCkgdG8gdGVhciBkb3duIHJlcXVpcmVkIGtlcm5lbAo+Pj4+Pj4g
cGFnZSB0YWJsZXMgYW5kIG90aGVyIGFyY2ggc3BlY2lmaWMgcHJvY2VkdXJlcy4gQnV0IHRoZXJl
IGFyZSBwbGF0Zm9ybXMKPj4+Pj4+IGxpa2UgYXJtNjQgd2hpY2ggbWlnaHQgd2FudCB0byBwcmV2
ZW50IHJlbW92YWwgb2YgY2VydGFpbiBzcGVjaWZpYyBtZW1vcnkKPj4+Pj4+IHJhbmdlcyBpcnJl
c3BlY3RpdmUgb2YgdGhlaXIgcHJlc2VudCB1c2FnZSBvciBtb3ZhYmlsaXR5IHByb3BlcnRpZXMu
Cj4+Pj4+Cj4+Pj4+IFdoeT8gSXMgdGhpcyBvbmx5IHJlbGV2YW50IGZvciBib290IG1lbW9yeT8g
SSBob3BlIHNvLCBvdGhlcndpc2UgdGhlCj4+Pj4+IGFyY2ggY29kZSBuZWVkcyBmaXhpbmcgSU1I
Ty4KPj4+Pgo+Pj4+IFJpZ2h0LCBpdCBpcyByZWxldmFudCBvbmx5IGZvciB0aGUgYm9vdCBtZW1v
cnkgb24gYXJtNjQgcGxhdGZvcm0uIEJ1dCB0aGlzCj4+Pj4gbmV3IGFyY2ggY2FsbGJhY2sgbWFr
ZXMgaXQgZmxleGlibGUgdG8gcmVqZWN0IGFueSBnaXZlbiBtZW1vcnkgcmFuZ2UuCj4+Pj4KPj4+
Pj4KPj4+Pj4gSWYgaXQncyBvbmx5IGJvb3QgbWVtb3J5LCB3ZSBzaG91bGQgZGlzYWxsb3cgb2Zm
bGluaW5nIGluc3RlYWQgdmlhIGEKPj4+Pj4gbWVtb3J5IG5vdGlmaWVyIC0gbXVjaCBjbGVhbmVy
Lgo+Pj4+Cj4+Pj4gRG9udCBoYXZlIG11Y2ggZGV0YWlsIHVuZGVyc3RhbmRpbmcgb2YgTU1VIG5v
dGlmaWVyIG1lY2hhbmlzbSBidXQgZnJvbSBzb21lCj4+Pj4gaW5pdGlhbCByZWFkaW5nLCBpdCBz
ZWVtcyBsaWtlIHdlIG5lZWQgdG8gaGF2ZSBhIG1tX3N0cnVjdCBmb3IgYSBub3RpZmllcgo+Pj4+
IHRvIG1vbml0b3IgdmFyaW91cyBldmVudHMgb24gdGhlIHBhZ2UgdGFibGUuIEp1c3Qgd29uZGVy
aW5nIGhvdyBhIHBoeXNpY2FsCj4+Pj4gbWVtb3J5IHJhbmdlIGxpa2UgYm9vdCBtZW1vcnkgY2Fu
IGJlIG1vbml0b3JlZCBiZWNhdXNlIGl0IGNhbiBiZSB1c2VkIGJvdGgKPj4+PiBmb3IgZm9yIGtl
cm5lbCAoaW5pdF9tbSkgb3IgdXNlciBzcGFjZSBwcm9jZXNzIGF0IHNhbWUgdGltZS4gSXMgdGhl
cmUgc29tZQo+Pj4+IG1lY2hhbmlzbSB3ZSBjb3VsZCBkbyB0aGlzID8KPj4+Pgo+Pj4+Pgo+Pj4+
Pj4KPj4+Pj4+IEN1cnJlbnQgYXJjaCBjYWxsIGJhY2sgYXJjaF9yZW1vdmVfbWVtb3J5KCkgaXMg
dG9vIGxhdGUgaW4gdGhlIHByb2Nlc3MgdG8KPj4+Pj4+IGFib3J0IG1lbW9yeSBob3QgcmVtb3Zh
bCBhcyBtZW1vcnkgYmxvY2sgZGV2aWNlcyBhbmQgZmlybXdhcmUgbWVtb3J5IG1hcAo+Pj4+Pj4g
ZW50cmllcyB3b3VsZCBoYXZlIGFscmVhZHkgYmVlbiByZW1vdmVkLiBQbGF0Zm9ybXMgc2hvdWxk
IGJlIGFibGUgdG8gYWJvcnQKPj4+Pj4+IHRoZSBwcm9jZXNzIGJlZm9yZSB0YWtpbmcgdGhlIG1l
bV9ob3RwbHVnX2xvY2sgd2l0aCBtZW1faG90cGx1Z19iZWdpbigpLgo+Pj4+Pj4gVGhpcyBlc3Nl
bnRpYWxseSByZXF1aXJlcyBhIG5ldyBhcmNoIGNhbGxiYWNrIGZvciBtZW1vcnkgcmFuZ2UgdmFs
aWRhdGlvbi4KPj4+Pj4KPj4+Pj4gSSBzb21ld2hhdCBkaXNsaWtlIHRoaXMgdmVyeSBtdWNoLiBN
ZW1vcnkgcmVtb3ZhbCBzaG91bGQgbmV2ZXIgZmFpbCBpZgo+Pj4+PiB1c2VkIHNhbmVseS4gU2Vl
IGUuZy4sIF9fcmVtb3ZlX21lbW9yeSgpLCBpdCB3aWxsIEJVRygpIHdoZW5ldmVyCj4+Pj4+IHNv
bWV0aGluZyBsaWtlIHRoYXQgd291bGQgc3RyaWtlLgo+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IFRoaXMg
ZGlmZmVyZW50aWF0ZXMgbWVtb3J5IHJhbmdlIHZhbGlkYXRpb24gYmV0d2VlbiBtZW1vcnkgaG90
IGFkZCBhbmQgaG90Cj4+Pj4+PiByZW1vdmUgcGF0aHMgYmVmb3JlIGNhcnZpbmcgb3V0IGEgbmV3
IGhlbHBlciBjaGVja19ob3RyZW1vdmVfbWVtb3J5X3JhbmdlKCkKPj4+Pj4+IHdoaWNoIGluY29y
cG9yYXRlcyBhIG5ldyBhcmNoIGNhbGxiYWNrLiBUaGlzIGNhbGwgYmFjayBwcm92aWRlcyBwbGF0
Zm9ybXMKPj4+Pj4+IGFuIG9wcG9ydHVuaXR5IHRvIHJlZnVzZSBtZW1vcnkgcmVtb3ZhbCBhdCB0
aGUgdmVyeSBvbnNldC4gSW4gZnV0dXJlIHRoZQo+Pj4+Pj4gc2FtZSBwcmluY2lwbGUgY2FuIGJl
IGV4dGVuZGVkIGZvciBtZW1vcnkgaG90IGFkZCBwYXRoIGlmIHJlcXVpcmVkLgo+Pj4+Pj4KPj4+
Pj4+IFBsYXRmb3JtcyBjYW4gY2hvb3NlIHRvIG92ZXJyaWRlIHRoaXMgY2FsbGJhY2sgaW4gb3Jk
ZXIgdG8gcmVqZWN0IHNwZWNpZmljCj4+Pj4+PiBtZW1vcnkgcmFuZ2VzIGZyb20gcmVtb3ZhbCBv
ciBjYW4ganVzdCBmYWxsYmFjayB0byBhIGRlZmF1bHQgaW1wbGVtZW50YXRpb24KPj4+Pj4+IHdo
aWNoIGFsbG93cyByZW1vdmFsIG9mIGFsbCBtZW1vcnkgcmFuZ2VzLgo+Pj4+Pgo+Pj4+PiBJIHN1
c3BlY3Qgd2Ugd2FudCByZWFsbHkgd2FudCB0byBkaXNhbGxvdyBvZmZsaW5pbmcgaW5zdGVhZC4g
RS5nLiwgSQo+Pj4+Cj4+Pj4gSWYgYm9vdCBtZW1vcnkgcGFnZXMgY2FuIGJlIHByZXZlbnRlZCBm
cm9tIGJlaW5nIG9mZmxpbmVkIGZvciBzdXJlLCB0aGVuIGl0Cj4+Pj4gd291bGQgaW5kaXJlY3Rs
eSBkZWZpbml0ZWx5IHByZXZlbnQgaG90IHJlbW92ZSBwcm9jZXNzIGFzIHdlbGwuCj4+Pj4KPj4+
Pj4gcmVtZW1iZXIgczM5MHggZG9lcyB0aGF0IHdpdGggY2VydGFpbiBhcmVhcyBuZWVkZWQgZm9y
IGR1bXBpbmcva2V4ZWMuCj4+Pj4KPj4+PiBDb3VsZCBub3QgZmluZCBhbnkgcmVmZXJlbmNlcyB0
byBtbXVfbm90aWZpZXIgaW4gYXJjaC9zMzkwIG9yIGFueSBvdGhlciBhcmNoCj4+Pj4gZm9yIHRo
YXQgbWF0dGVyIGFwYXJ0IGZyb20gS1ZNICh3aGljaCBoYXMgYW4gdXNlciBzcGFjZSBjb21wb25l
bnQpLCBjb3VsZCB5b3UKPj4+PiBwbGVhc2UgZ2l2ZSBzb21lIHBvaW50ZXJzID8KPj4+Cj4+PiBN
ZW1vcnkgKGhvdHBsdWcpIG5vdGlmaWVyLCBub3QgTU1VIG5vdGlmaWVyIDopCj4+Cj4+IFRoZXkg
YXJlIHNvIHNpbWlsYXJseSBuYW1lZCA6KQo+Pgo+Pj4KPj4+IE5vdCBvbiBteSBub3RlYm9vayBy
aWdodCBub3csIGdyZXAgZm9yIE1FTV9HT0lOR19PRkZMSU5FLCB0aGF0IHNob3VsZCBiZSBpdC4K
Pj4+Cj4+Cj4+IEdvdCBpdCwgdGhhbmtzICEgQnV0IHdlIHdpbGwgc3RpbGwgbmVlZCBib290IG1l
bW9yeSBlbnVtZXJhdGlvbiB2aWEgTUVNQkxPQ0tfQk9PVAo+PiB0byByZWplY3QgYWZmZWN0ZWQg
b2ZmbGluZSByZXF1ZXN0cyBpbiB0aGUgY2FsbGJhY2suCj4gCj4gRG8geW91IHJlYWxseSBuZWVk
IHRoYXQ/Cj4gCj4gV2UgaGF2ZSBTRUNUSU9OX0lTX0VBUkxZLiBZb3UgY291bGQgaXRlcmF0ZSBh
bGwgaW52b2x2ZWQgc2VjdGlvbnMgKGZvcgo+IHdoaWNoIHlvdSBhcmUgZ2V0dGluZyBub3RpZmll
ZCkgYW5kIGNoZWNrIGlmIGFueSBvbmUgb2YgdGhlc2UgaXMgbWFya2VkCj4gU0VDVElPTl9JU19F
QVJMWS4gdGhlbiwgaXQgd2FzIGFkZGVkIGR1cmluZyBib290IGFuZCBub3QgdmlhIGFkZF9tZW1v
cnkoKS4KClNlZW1zIHRvIGJlIGEgYmV0dGVyIGFwcHJvYWNoIHRoYW4gYWRkaW5nIGEgbmV3IG1l
bWJsb2NrIGZsYWcuCgo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
