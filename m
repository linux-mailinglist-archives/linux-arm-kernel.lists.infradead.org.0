Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C97138F50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:38:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qqak2HTcz5UN+2pOXhIUZUvu5TDkytrBsRM4liA48Ao=; b=SCjhJb+FR7IsKr
	OXkBWurn6/7rrcElM/JwKwVQgiK5/vn6Jzzc4kvF3Gh0ixTMMH5gmxmPA25oAUClNANLQ+NkApRJ0
	i0tDZ2OPRcoZS2mp9D2LD04AeHPgInwK783BU5gpM92BUtOs+/EBtlxGQJSy1TkgJgAvXAmpQ7xjo
	6jyIUWYoRzSFT8jq+M4OGGJGaWPIr24uKbOyxmW94aslesiFSpu3q2/+F8cNY0h86GG5RPYblxMRd
	CQLbDt2mW1AtwhvnU4e7XYJsDR8YYoT3DEplA7Sv6SWV/MYHZnktMRzjgBHxgj6ddzY7EP9Np2JgP
	GunaJsuWfUkMgWvSPV2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqx7B-0006TX-S1; Mon, 13 Jan 2020 10:38:33 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqx6g-0006Da-IL
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:38:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578911881;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=G2h6Lb5fPhYtedfSQGlHd/cyPn0SviTyjivOO/bVcUY=;
 b=Ltmoal3oh1xNc2ky7x25wEw9hPBOiyh8uS6CLqtANhyJ5ylC8jFdCWXhQftKtrQhOmRY/Q
 ZwCTNGQmdE+wJX8oekoDoPwy7jYf+pKlKmovLnUwGK/YpJAV5E15SWpgBFkIgYzcsL1FEC
 Bd4rOiin3wF9P78jFKG0yqk2mLeLM84=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-373-Ehp-WPu7NuGSBsuo0pmOrg-1; Mon, 13 Jan 2020 05:37:57 -0500
X-MC-Unique: Ehp-WPu7NuGSBsuo0pmOrg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BEE6C8D7E43;
 Mon, 13 Jan 2020 10:37:53 +0000 (UTC)
Received: from [10.36.117.201] (ovpn-117-201.ams2.redhat.com [10.36.117.201])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 02C9D7BA50;
 Mon, 13 Jan 2020 10:37:48 +0000 (UTC)
Subject: Re: [PATCH V11 1/5] mm/hotplug: Introduce arch callback validating
 the hot remove range
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 David Hildenbrand <dhildenb@redhat.com>
References: <6f0efddc-f124-58ca-28b6-4632469cf992@arm.com>
 <3C3BE5FA-0CFC-4C90-8657-63EF5B680B0B@redhat.com>
 <6b8fb779-31e8-1b63-85a8-9f6c93a04494@arm.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
Organization: Red Hat GmbH
Message-ID: <19194427-1295-3596-2c2c-463c4adf4f35@redhat.com>
Date: Mon, 13 Jan 2020 11:37:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <6b8fb779-31e8-1b63-85a8-9f6c93a04494@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_023802_680194_B1F5E4EB 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

T24gMTMuMDEuMjAgMTA6NTAsIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+IAo+IAo+IE9uIDAx
LzEzLzIwMjAgMDI6NDQgUE0sIERhdmlkIEhpbGRlbmJyYW5kIHdyb3RlOgo+Pgo+Pgo+Pj4gQW0g
MTMuMDEuMjAyMCB1bSAxMDoxMCBzY2hyaWViIEFuc2h1bWFuIEtoYW5kdWFsIDxhbnNodW1hbi5r
aGFuZHVhbEBhcm0uY29tPjoKPj4+Cj4+PiDvu78KPj4+Cj4+Pj4gT24gMDEvMTAvMjAyMCAwMjox
MiBQTSwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4+Pj4+IE9uIDEwLjAxLjIwIDA0OjA5LCBB
bnNodW1hbiBLaGFuZHVhbCB3cm90ZToKPj4+Pj4gQ3VycmVudGx5IHRoZXJlIGFyZSB0d28gaW50
ZXJmYWNlcyB0byBpbml0aWF0ZSBtZW1vcnkgcmFuZ2UgaG90IHJlbW92YWwgaS5lCj4+Pj4+IHJl
bW92ZV9tZW1vcnkoKSBhbmQgX19yZW1vdmVfbWVtb3J5KCkgd2hpY2ggdGhlbiBjYWxscyB0cnlf
cmVtb3ZlX21lbW9yeSgpLgo+Pj4+PiBQbGF0Zm9ybSBnZXRzIGNhbGxlZCB3aXRoIGFyY2hfcmVt
b3ZlX21lbW9yeSgpIHRvIHRlYXIgZG93biByZXF1aXJlZCBrZXJuZWwKPj4+Pj4gcGFnZSB0YWJs
ZXMgYW5kIG90aGVyIGFyY2ggc3BlY2lmaWMgcHJvY2VkdXJlcy4gQnV0IHRoZXJlIGFyZSBwbGF0
Zm9ybXMKPj4+Pj4gbGlrZSBhcm02NCB3aGljaCBtaWdodCB3YW50IHRvIHByZXZlbnQgcmVtb3Zh
bCBvZiBjZXJ0YWluIHNwZWNpZmljIG1lbW9yeQo+Pj4+PiByYW5nZXMgaXJyZXNwZWN0aXZlIG9m
IHRoZWlyIHByZXNlbnQgdXNhZ2Ugb3IgbW92YWJpbGl0eSBwcm9wZXJ0aWVzLgo+Pj4+Cj4+Pj4g
V2h5PyBJcyB0aGlzIG9ubHkgcmVsZXZhbnQgZm9yIGJvb3QgbWVtb3J5PyBJIGhvcGUgc28sIG90
aGVyd2lzZSB0aGUKPj4+PiBhcmNoIGNvZGUgbmVlZHMgZml4aW5nIElNSE8uCj4+Pgo+Pj4gUmln
aHQsIGl0IGlzIHJlbGV2YW50IG9ubHkgZm9yIHRoZSBib290IG1lbW9yeSBvbiBhcm02NCBwbGF0
Zm9ybS4gQnV0IHRoaXMKPj4+IG5ldyBhcmNoIGNhbGxiYWNrIG1ha2VzIGl0IGZsZXhpYmxlIHRv
IHJlamVjdCBhbnkgZ2l2ZW4gbWVtb3J5IHJhbmdlLgo+Pj4KPj4+Pgo+Pj4+IElmIGl0J3Mgb25s
eSBib290IG1lbW9yeSwgd2Ugc2hvdWxkIGRpc2FsbG93IG9mZmxpbmluZyBpbnN0ZWFkIHZpYSBh
Cj4+Pj4gbWVtb3J5IG5vdGlmaWVyIC0gbXVjaCBjbGVhbmVyLgo+Pj4KPj4+IERvbnQgaGF2ZSBt
dWNoIGRldGFpbCB1bmRlcnN0YW5kaW5nIG9mIE1NVSBub3RpZmllciBtZWNoYW5pc20gYnV0IGZy
b20gc29tZQo+Pj4gaW5pdGlhbCByZWFkaW5nLCBpdCBzZWVtcyBsaWtlIHdlIG5lZWQgdG8gaGF2
ZSBhIG1tX3N0cnVjdCBmb3IgYSBub3RpZmllcgo+Pj4gdG8gbW9uaXRvciB2YXJpb3VzIGV2ZW50
cyBvbiB0aGUgcGFnZSB0YWJsZS4gSnVzdCB3b25kZXJpbmcgaG93IGEgcGh5c2ljYWwKPj4+IG1l
bW9yeSByYW5nZSBsaWtlIGJvb3QgbWVtb3J5IGNhbiBiZSBtb25pdG9yZWQgYmVjYXVzZSBpdCBj
YW4gYmUgdXNlZCBib3RoCj4+PiBmb3IgZm9yIGtlcm5lbCAoaW5pdF9tbSkgb3IgdXNlciBzcGFj
ZSBwcm9jZXNzIGF0IHNhbWUgdGltZS4gSXMgdGhlcmUgc29tZQo+Pj4gbWVjaGFuaXNtIHdlIGNv
dWxkIGRvIHRoaXMgPwo+Pj4KPj4+Pgo+Pj4+Pgo+Pj4+PiBDdXJyZW50IGFyY2ggY2FsbCBiYWNr
IGFyY2hfcmVtb3ZlX21lbW9yeSgpIGlzIHRvbyBsYXRlIGluIHRoZSBwcm9jZXNzIHRvCj4+Pj4+
IGFib3J0IG1lbW9yeSBob3QgcmVtb3ZhbCBhcyBtZW1vcnkgYmxvY2sgZGV2aWNlcyBhbmQgZmly
bXdhcmUgbWVtb3J5IG1hcAo+Pj4+PiBlbnRyaWVzIHdvdWxkIGhhdmUgYWxyZWFkeSBiZWVuIHJl
bW92ZWQuIFBsYXRmb3JtcyBzaG91bGQgYmUgYWJsZSB0byBhYm9ydAo+Pj4+PiB0aGUgcHJvY2Vz
cyBiZWZvcmUgdGFraW5nIHRoZSBtZW1faG90cGx1Z19sb2NrIHdpdGggbWVtX2hvdHBsdWdfYmVn
aW4oKS4KPj4+Pj4gVGhpcyBlc3NlbnRpYWxseSByZXF1aXJlcyBhIG5ldyBhcmNoIGNhbGxiYWNr
IGZvciBtZW1vcnkgcmFuZ2UgdmFsaWRhdGlvbi4KPj4+Pgo+Pj4+IEkgc29tZXdoYXQgZGlzbGlr
ZSB0aGlzIHZlcnkgbXVjaC4gTWVtb3J5IHJlbW92YWwgc2hvdWxkIG5ldmVyIGZhaWwgaWYKPj4+
PiB1c2VkIHNhbmVseS4gU2VlIGUuZy4sIF9fcmVtb3ZlX21lbW9yeSgpLCBpdCB3aWxsIEJVRygp
IHdoZW5ldmVyCj4+Pj4gc29tZXRoaW5nIGxpa2UgdGhhdCB3b3VsZCBzdHJpa2UuCj4+Pj4KPj4+
Pj4KPj4+Pj4gVGhpcyBkaWZmZXJlbnRpYXRlcyBtZW1vcnkgcmFuZ2UgdmFsaWRhdGlvbiBiZXR3
ZWVuIG1lbW9yeSBob3QgYWRkIGFuZCBob3QKPj4+Pj4gcmVtb3ZlIHBhdGhzIGJlZm9yZSBjYXJ2
aW5nIG91dCBhIG5ldyBoZWxwZXIgY2hlY2tfaG90cmVtb3ZlX21lbW9yeV9yYW5nZSgpCj4+Pj4+
IHdoaWNoIGluY29ycG9yYXRlcyBhIG5ldyBhcmNoIGNhbGxiYWNrLiBUaGlzIGNhbGwgYmFjayBw
cm92aWRlcyBwbGF0Zm9ybXMKPj4+Pj4gYW4gb3Bwb3J0dW5pdHkgdG8gcmVmdXNlIG1lbW9yeSBy
ZW1vdmFsIGF0IHRoZSB2ZXJ5IG9uc2V0LiBJbiBmdXR1cmUgdGhlCj4+Pj4+IHNhbWUgcHJpbmNp
cGxlIGNhbiBiZSBleHRlbmRlZCBmb3IgbWVtb3J5IGhvdCBhZGQgcGF0aCBpZiByZXF1aXJlZC4K
Pj4+Pj4KPj4+Pj4gUGxhdGZvcm1zIGNhbiBjaG9vc2UgdG8gb3ZlcnJpZGUgdGhpcyBjYWxsYmFj
ayBpbiBvcmRlciB0byByZWplY3Qgc3BlY2lmaWMKPj4+Pj4gbWVtb3J5IHJhbmdlcyBmcm9tIHJl
bW92YWwgb3IgY2FuIGp1c3QgZmFsbGJhY2sgdG8gYSBkZWZhdWx0IGltcGxlbWVudGF0aW9uCj4+
Pj4+IHdoaWNoIGFsbG93cyByZW1vdmFsIG9mIGFsbCBtZW1vcnkgcmFuZ2VzLgo+Pj4+Cj4+Pj4g
SSBzdXNwZWN0IHdlIHdhbnQgcmVhbGx5IHdhbnQgdG8gZGlzYWxsb3cgb2ZmbGluaW5nIGluc3Rl
YWQuIEUuZy4sIEkKPj4+Cj4+PiBJZiBib290IG1lbW9yeSBwYWdlcyBjYW4gYmUgcHJldmVudGVk
IGZyb20gYmVpbmcgb2ZmbGluZWQgZm9yIHN1cmUsIHRoZW4gaXQKPj4+IHdvdWxkIGluZGlyZWN0
bHkgZGVmaW5pdGVseSBwcmV2ZW50IGhvdCByZW1vdmUgcHJvY2VzcyBhcyB3ZWxsLgo+Pj4KPj4+
PiByZW1lbWJlciBzMzkweCBkb2VzIHRoYXQgd2l0aCBjZXJ0YWluIGFyZWFzIG5lZWRlZCBmb3Ig
ZHVtcGluZy9rZXhlYy4KPj4+Cj4+PiBDb3VsZCBub3QgZmluZCBhbnkgcmVmZXJlbmNlcyB0byBt
bXVfbm90aWZpZXIgaW4gYXJjaC9zMzkwIG9yIGFueSBvdGhlciBhcmNoCj4+PiBmb3IgdGhhdCBt
YXR0ZXIgYXBhcnQgZnJvbSBLVk0gKHdoaWNoIGhhcyBhbiB1c2VyIHNwYWNlIGNvbXBvbmVudCks
IGNvdWxkIHlvdQo+Pj4gcGxlYXNlIGdpdmUgc29tZSBwb2ludGVycyA/Cj4+Cj4+IE1lbW9yeSAo
aG90cGx1Zykgbm90aWZpZXIsIG5vdCBNTVUgbm90aWZpZXIgOikKPiAKPiBUaGV5IGFyZSBzbyBz
aW1pbGFybHkgbmFtZWQgOikKPiAKPj4KPj4gTm90IG9uIG15IG5vdGVib29rIHJpZ2h0IG5vdywg
Z3JlcCBmb3IgTUVNX0dPSU5HX09GRkxJTkUsIHRoYXQgc2hvdWxkIGJlIGl0Lgo+Pgo+IAo+IEdv
dCBpdCwgdGhhbmtzICEgQnV0IHdlIHdpbGwgc3RpbGwgbmVlZCBib290IG1lbW9yeSBlbnVtZXJh
dGlvbiB2aWEgTUVNQkxPQ0tfQk9PVAo+IHRvIHJlamVjdCBhZmZlY3RlZCBvZmZsaW5lIHJlcXVl
c3RzIGluIHRoZSBjYWxsYmFjay4KCkRvIHlvdSByZWFsbHkgbmVlZCB0aGF0PwoKV2UgaGF2ZSBT
RUNUSU9OX0lTX0VBUkxZLiBZb3UgY291bGQgaXRlcmF0ZSBhbGwgaW52b2x2ZWQgc2VjdGlvbnMg
KGZvcgp3aGljaCB5b3UgYXJlIGdldHRpbmcgbm90aWZpZWQpIGFuZCBjaGVjayBpZiBhbnkgb25l
IG9mIHRoZXNlIGlzIG1hcmtlZApTRUNUSU9OX0lTX0VBUkxZLiB0aGVuLCBpdCB3YXMgYWRkZWQg
ZHVyaW5nIGJvb3QgYW5kIG5vdCB2aWEgYWRkX21lbW9yeSgpLgoKCi0tIApUaGFua3MsCgpEYXZp
ZCAvIGRoaWxkZW5iCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
