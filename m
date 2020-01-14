Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA4313A94C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 13:31:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOD1wMALCgbjrqBwzCz0gTHRJBxnxhV5zwkIWesjqqg=; b=J4B9y8oG7H64fT
	jOgTVm4Q2VdnYLi1gs+cyqdTp3Ju+Jchs/w+bjkmBnAYj8aaB6QM54bKjaV4g/rIouJ+r+WsMvXwk
	qxwbyKy1fzVPqnd24fQ1eGl5pyEhHugAH5iC/XC2FJh8f/j9FhaEIz2ZyVTgffVMRQcf9bWnnQkfM
	3Hlb0Y3VRwMdVGCW1ndT1lNlaoaHBB48B3haVNHrPrx24jCtRhWCczw22XlQTw50cTJnGxFIQVBV/
	d0z30uokUyVtdT6MRrRW+/TUgtfyVigmc1p0iUU5C4Ka43zr4xv4wRkZDa0YbNgLUqlh2mQkmv8we
	zSW+nPXvWQnT3+N7l5pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irLLo-0007OY-S2; Tue, 14 Jan 2020 12:31:16 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irLLa-0007NK-MT
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 12:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579005055;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=9eRj52C1+peq4w50rV4YnC62uxPGAZpTYF2uUUGAMwg=;
 b=a0IWLYk+HvjKEAn9ZVQfaY5J3Wn78ZBG9OCSCy+7+48dYZmt91+3qPuNZkj9UUuabFtkhu
 Tm0tvlpCyigUNwAlCFV0HXtuUtOWOeH6TKMkPXS6BsdlkKAmra84Z9i6zHIHL/qfgk2+op
 FsYkV58td2lIqZbkD2T17gV9XUp5HDw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-hpZSS4q-NFWksr77-uSBdQ-1; Tue, 14 Jan 2020 07:30:52 -0500
X-MC-Unique: hpZSS4q-NFWksr77-uSBdQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F46E6A2A7;
 Tue, 14 Jan 2020 12:30:49 +0000 (UTC)
Received: from [10.36.118.60] (unknown [10.36.118.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0CD5EA4B60;
 Tue, 14 Jan 2020 12:30:43 +0000 (UTC)
Subject: Re: [PATCH V11 1/5] mm/hotplug: Introduce arch callback validating
 the hot remove range
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 David Hildenbrand <dhildenb@redhat.com>
References: <6f0efddc-f124-58ca-28b6-4632469cf992@arm.com>
 <3C3BE5FA-0CFC-4C90-8657-63EF5B680B0B@redhat.com>
 <6b8fb779-31e8-1b63-85a8-9f6c93a04494@arm.com>
 <19194427-1295-3596-2c2c-463c4adf4f35@redhat.com>
 <78f04711-2ca6-280c-d0c2-ab9eea866e59@arm.com>
 <2c4b04d6-6d86-e87a-9b09-b931133a0d9c@arm.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
Organization: Red Hat GmbH
Message-ID: <2570152d-47b4-c9c0-6a40-18952355069d@redhat.com>
Date: Tue, 14 Jan 2020 13:30:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <2c4b04d6-6d86-e87a-9b09-b931133a0d9c@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_043102_808619_37C53F95 
X-CRM114-Status: GOOD (  26.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

T24gMTQuMDEuMjAgMTI6MDksIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+IAo+IAo+IE9uIDAx
LzE0LzIwMjAgMDc6NDMgQU0sIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+Pgo+Pgo+PiBPbiAw
MS8xMy8yMDIwIDA0OjA3IFBNLCBEYXZpZCBIaWxkZW5icmFuZCB3cm90ZToKPj4+IE9uIDEzLjAx
LjIwIDEwOjUwLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90ZToKPj4+Pgo+Pj4+Cj4+Pj4gT24gMDEv
MTMvMjAyMCAwMjo0NCBQTSwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4+Pj4+Cj4+Pj4+Cj4+
Pj4+PiBBbSAxMy4wMS4yMDIwIHVtIDEwOjEwIHNjaHJpZWIgQW5zaHVtYW4gS2hhbmR1YWwgPGFu
c2h1bWFuLmtoYW5kdWFsQGFybS5jb20+Ogo+Pj4+Pj4KPj4+Pj4+IO+7vwo+Pj4+Pj4KPj4+Pj4+
PiBPbiAwMS8xMC8yMDIwIDAyOjEyIFBNLCBEYXZpZCBIaWxkZW5icmFuZCB3cm90ZToKPj4+Pj4+
Pj4gT24gMTAuMDEuMjAgMDQ6MDksIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+Pj4+Pj4+PiBD
dXJyZW50bHkgdGhlcmUgYXJlIHR3byBpbnRlcmZhY2VzIHRvIGluaXRpYXRlIG1lbW9yeSByYW5n
ZSBob3QgcmVtb3ZhbCBpLmUKPj4+Pj4+Pj4gcmVtb3ZlX21lbW9yeSgpIGFuZCBfX3JlbW92ZV9t
ZW1vcnkoKSB3aGljaCB0aGVuIGNhbGxzIHRyeV9yZW1vdmVfbWVtb3J5KCkuCj4+Pj4+Pj4+IFBs
YXRmb3JtIGdldHMgY2FsbGVkIHdpdGggYXJjaF9yZW1vdmVfbWVtb3J5KCkgdG8gdGVhciBkb3du
IHJlcXVpcmVkIGtlcm5lbAo+Pj4+Pj4+PiBwYWdlIHRhYmxlcyBhbmQgb3RoZXIgYXJjaCBzcGVj
aWZpYyBwcm9jZWR1cmVzLiBCdXQgdGhlcmUgYXJlIHBsYXRmb3Jtcwo+Pj4+Pj4+PiBsaWtlIGFy
bTY0IHdoaWNoIG1pZ2h0IHdhbnQgdG8gcHJldmVudCByZW1vdmFsIG9mIGNlcnRhaW4gc3BlY2lm
aWMgbWVtb3J5Cj4+Pj4+Pj4+IHJhbmdlcyBpcnJlc3BlY3RpdmUgb2YgdGhlaXIgcHJlc2VudCB1
c2FnZSBvciBtb3ZhYmlsaXR5IHByb3BlcnRpZXMuCj4+Pj4+Pj4KPj4+Pj4+PiBXaHk/IElzIHRo
aXMgb25seSByZWxldmFudCBmb3IgYm9vdCBtZW1vcnk/IEkgaG9wZSBzbywgb3RoZXJ3aXNlIHRo
ZQo+Pj4+Pj4+IGFyY2ggY29kZSBuZWVkcyBmaXhpbmcgSU1ITy4KPj4+Pj4+Cj4+Pj4+PiBSaWdo
dCwgaXQgaXMgcmVsZXZhbnQgb25seSBmb3IgdGhlIGJvb3QgbWVtb3J5IG9uIGFybTY0IHBsYXRm
b3JtLiBCdXQgdGhpcwo+Pj4+Pj4gbmV3IGFyY2ggY2FsbGJhY2sgbWFrZXMgaXQgZmxleGlibGUg
dG8gcmVqZWN0IGFueSBnaXZlbiBtZW1vcnkgcmFuZ2UuCj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4g
SWYgaXQncyBvbmx5IGJvb3QgbWVtb3J5LCB3ZSBzaG91bGQgZGlzYWxsb3cgb2ZmbGluaW5nIGlu
c3RlYWQgdmlhIGEKPj4+Pj4+PiBtZW1vcnkgbm90aWZpZXIgLSBtdWNoIGNsZWFuZXIuCj4+Pj4+
Pgo+Pj4+Pj4gRG9udCBoYXZlIG11Y2ggZGV0YWlsIHVuZGVyc3RhbmRpbmcgb2YgTU1VIG5vdGlm
aWVyIG1lY2hhbmlzbSBidXQgZnJvbSBzb21lCj4+Pj4+PiBpbml0aWFsIHJlYWRpbmcsIGl0IHNl
ZW1zIGxpa2Ugd2UgbmVlZCB0byBoYXZlIGEgbW1fc3RydWN0IGZvciBhIG5vdGlmaWVyCj4+Pj4+
PiB0byBtb25pdG9yIHZhcmlvdXMgZXZlbnRzIG9uIHRoZSBwYWdlIHRhYmxlLiBKdXN0IHdvbmRl
cmluZyBob3cgYSBwaHlzaWNhbAo+Pj4+Pj4gbWVtb3J5IHJhbmdlIGxpa2UgYm9vdCBtZW1vcnkg
Y2FuIGJlIG1vbml0b3JlZCBiZWNhdXNlIGl0IGNhbiBiZSB1c2VkIGJvdGgKPj4+Pj4+IGZvciBm
b3Iga2VybmVsIChpbml0X21tKSBvciB1c2VyIHNwYWNlIHByb2Nlc3MgYXQgc2FtZSB0aW1lLiBJ
cyB0aGVyZSBzb21lCj4+Pj4+PiBtZWNoYW5pc20gd2UgY291bGQgZG8gdGhpcyA/Cj4+Pj4+Pgo+
Pj4+Pj4+Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEN1cnJlbnQgYXJjaCBjYWxsIGJhY2sgYXJjaF9yZW1v
dmVfbWVtb3J5KCkgaXMgdG9vIGxhdGUgaW4gdGhlIHByb2Nlc3MgdG8KPj4+Pj4+Pj4gYWJvcnQg
bWVtb3J5IGhvdCByZW1vdmFsIGFzIG1lbW9yeSBibG9jayBkZXZpY2VzIGFuZCBmaXJtd2FyZSBt
ZW1vcnkgbWFwCj4+Pj4+Pj4+IGVudHJpZXMgd291bGQgaGF2ZSBhbHJlYWR5IGJlZW4gcmVtb3Zl
ZC4gUGxhdGZvcm1zIHNob3VsZCBiZSBhYmxlIHRvIGFib3J0Cj4+Pj4+Pj4+IHRoZSBwcm9jZXNz
IGJlZm9yZSB0YWtpbmcgdGhlIG1lbV9ob3RwbHVnX2xvY2sgd2l0aCBtZW1faG90cGx1Z19iZWdp
bigpLgo+Pj4+Pj4+PiBUaGlzIGVzc2VudGlhbGx5IHJlcXVpcmVzIGEgbmV3IGFyY2ggY2FsbGJh
Y2sgZm9yIG1lbW9yeSByYW5nZSB2YWxpZGF0aW9uLgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSBzb21ld2hh
dCBkaXNsaWtlIHRoaXMgdmVyeSBtdWNoLiBNZW1vcnkgcmVtb3ZhbCBzaG91bGQgbmV2ZXIgZmFp
bCBpZgo+Pj4+Pj4+IHVzZWQgc2FuZWx5LiBTZWUgZS5nLiwgX19yZW1vdmVfbWVtb3J5KCksIGl0
IHdpbGwgQlVHKCkgd2hlbmV2ZXIKPj4+Pj4+PiBzb21ldGhpbmcgbGlrZSB0aGF0IHdvdWxkIHN0
cmlrZS4KPj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBUaGlzIGRpZmZlcmVudGlhdGVzIG1lbW9y
eSByYW5nZSB2YWxpZGF0aW9uIGJldHdlZW4gbWVtb3J5IGhvdCBhZGQgYW5kIGhvdAo+Pj4+Pj4+
PiByZW1vdmUgcGF0aHMgYmVmb3JlIGNhcnZpbmcgb3V0IGEgbmV3IGhlbHBlciBjaGVja19ob3Ry
ZW1vdmVfbWVtb3J5X3JhbmdlKCkKPj4+Pj4+Pj4gd2hpY2ggaW5jb3Jwb3JhdGVzIGEgbmV3IGFy
Y2ggY2FsbGJhY2suIFRoaXMgY2FsbCBiYWNrIHByb3ZpZGVzIHBsYXRmb3Jtcwo+Pj4+Pj4+PiBh
biBvcHBvcnR1bml0eSB0byByZWZ1c2UgbWVtb3J5IHJlbW92YWwgYXQgdGhlIHZlcnkgb25zZXQu
IEluIGZ1dHVyZSB0aGUKPj4+Pj4+Pj4gc2FtZSBwcmluY2lwbGUgY2FuIGJlIGV4dGVuZGVkIGZv
ciBtZW1vcnkgaG90IGFkZCBwYXRoIGlmIHJlcXVpcmVkLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBQbGF0
Zm9ybXMgY2FuIGNob29zZSB0byBvdmVycmlkZSB0aGlzIGNhbGxiYWNrIGluIG9yZGVyIHRvIHJl
amVjdCBzcGVjaWZpYwo+Pj4+Pj4+PiBtZW1vcnkgcmFuZ2VzIGZyb20gcmVtb3ZhbCBvciBjYW4g
anVzdCBmYWxsYmFjayB0byBhIGRlZmF1bHQgaW1wbGVtZW50YXRpb24KPj4+Pj4+Pj4gd2hpY2gg
YWxsb3dzIHJlbW92YWwgb2YgYWxsIG1lbW9yeSByYW5nZXMuCj4+Pj4+Pj4KPj4+Pj4+PiBJIHN1
c3BlY3Qgd2Ugd2FudCByZWFsbHkgd2FudCB0byBkaXNhbGxvdyBvZmZsaW5pbmcgaW5zdGVhZC4g
RS5nLiwgSQo+Pj4+Pj4KPj4+Pj4+IElmIGJvb3QgbWVtb3J5IHBhZ2VzIGNhbiBiZSBwcmV2ZW50
ZWQgZnJvbSBiZWluZyBvZmZsaW5lZCBmb3Igc3VyZSwgdGhlbiBpdAo+Pj4+Pj4gd291bGQgaW5k
aXJlY3RseSBkZWZpbml0ZWx5IHByZXZlbnQgaG90IHJlbW92ZSBwcm9jZXNzIGFzIHdlbGwuCj4+
Pj4+Pgo+Pj4+Pj4+IHJlbWVtYmVyIHMzOTB4IGRvZXMgdGhhdCB3aXRoIGNlcnRhaW4gYXJlYXMg
bmVlZGVkIGZvciBkdW1waW5nL2tleGVjLgo+Pj4+Pj4KPj4+Pj4+IENvdWxkIG5vdCBmaW5kIGFu
eSByZWZlcmVuY2VzIHRvIG1tdV9ub3RpZmllciBpbiBhcmNoL3MzOTAgb3IgYW55IG90aGVyIGFy
Y2gKPj4+Pj4+IGZvciB0aGF0IG1hdHRlciBhcGFydCBmcm9tIEtWTSAod2hpY2ggaGFzIGFuIHVz
ZXIgc3BhY2UgY29tcG9uZW50KSwgY291bGQgeW91Cj4+Pj4+PiBwbGVhc2UgZ2l2ZSBzb21lIHBv
aW50ZXJzID8KPj4+Pj4KPj4+Pj4gTWVtb3J5IChob3RwbHVnKSBub3RpZmllciwgbm90IE1NVSBu
b3RpZmllciA6KQo+Pj4+Cj4+Pj4gVGhleSBhcmUgc28gc2ltaWxhcmx5IG5hbWVkIDopCj4+Pj4K
Pj4+Pj4KPj4+Pj4gTm90IG9uIG15IG5vdGVib29rIHJpZ2h0IG5vdywgZ3JlcCBmb3IgTUVNX0dP
SU5HX09GRkxJTkUsIHRoYXQgc2hvdWxkIGJlIGl0Lgo+Pj4+Pgo+Pj4+Cj4+Pj4gR290IGl0LCB0
aGFua3MgISBCdXQgd2Ugd2lsbCBzdGlsbCBuZWVkIGJvb3QgbWVtb3J5IGVudW1lcmF0aW9uIHZp
YSBNRU1CTE9DS19CT09UCj4+Pj4gdG8gcmVqZWN0IGFmZmVjdGVkIG9mZmxpbmUgcmVxdWVzdHMg
aW4gdGhlIGNhbGxiYWNrLgo+Pj4KPj4+IERvIHlvdSByZWFsbHkgbmVlZCB0aGF0Pwo+Pj4KPj4+
IFdlIGhhdmUgU0VDVElPTl9JU19FQVJMWS4gWW91IGNvdWxkIGl0ZXJhdGUgYWxsIGludm9sdmVk
IHNlY3Rpb25zIChmb3IKPj4+IHdoaWNoIHlvdSBhcmUgZ2V0dGluZyBub3RpZmllZCkgYW5kIGNo
ZWNrIGlmIGFueSBvbmUgb2YgdGhlc2UgaXMgbWFya2VkCj4+PiBTRUNUSU9OX0lTX0VBUkxZLiB0
aGVuLCBpdCB3YXMgYWRkZWQgZHVyaW5nIGJvb3QgYW5kIG5vdCB2aWEgYWRkX21lbW9yeSgpLgo+
Pgo+PiBTZWVtcyB0byBiZSBhIGJldHRlciBhcHByb2FjaCB0aGFuIGFkZGluZyBhIG5ldyBtZW1i
bG9jayBmbGFnLgo+IAo+IFRoZXNlIGFkZGl0aW9uYWwgY2hhbmdlcyBkbyB0aGUgdHJpY2sgYW5k
IHByZXZlbnQgYm9vdCBtZW1vcnkgcmVtb3ZhbC4KPiBIb3BlIHRoaXMgaXMgaW4gbGluZSB3aXRo
IHlvdXIgZWFybGllciBzdWdnZXN0aW9uLgo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L21t
L21tdS5jIGIvYXJjaC9hcm02NC9tbS9tbXUuYwo+IGluZGV4IDAwZjNlMTgzNjU1OC4uM2I1OWU2
YTI5ZGVhIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvbW0vbW11LmMKPiArKysgYi9hcmNoL2Fy
bTY0L21tL21tdS5jCj4gQEAgLTE3LDYgKzE3LDcgQEAKPiArKysgYi9hcmNoL2FybTY0L21tL21t
dS5jCj4gQEAgLTE3LDYgKzE3LDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L21tYW4uaD4KPiAgI2lu
Y2x1ZGUgPGxpbnV4L25vZGVtYXNrLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9tZW1ibG9jay5oPgo+
ICsjaW5jbHVkZSA8bGludXgvbWVtb3J5Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9mcy5oPgo+ICAj
aW5jbHVkZSA8bGludXgvaW8uaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21tLmg+Cj4gQEAgLTEzNjUs
NCArMTM2NiwzNyBAQCB2b2lkIGFyY2hfcmVtb3ZlX21lbW9yeShpbnQgbmlkLCB1NjQgc3RhcnQs
IHU2NCBzaXplLAo+ICAgICAgICAgX19yZW1vdmVfcGFnZXMoc3RhcnRfcGZuLCBucl9wYWdlcywg
YWx0bWFwKTsKPiAgICAgICAgIF9fcmVtb3ZlX3BnZF9tYXBwaW5nKHN3YXBwZXJfcGdfZGlyLCBf
X3BoeXNfdG9fdmlydChzdGFydCksIHNpemUpOwo+ICB9Cj4gKwo+ICtzdGF0aWMgaW50IGJvb3Rf
bWVtX3JlbW92ZV9ub3RpZmllcihzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgYWN0aW9uLCB2b2lkICpk
YXRhKQo+ICt7Cj4gKyAgICAgICB1bnNpZ25lZCBsb25nIHN0YXJ0X3BmbiwgZW5kX3BmbiwgcGZu
LCBzZWN0aW9uX25yOwo+ICsgICAgICAgc3RydWN0IG1lbV9zZWN0aW9uICptczsKPiArICAgICAg
IHN0cnVjdCBtZW1vcnlfbm90aWZ5ICphcmcgPSBkYXRhOwo+ICsKPiArICAgICAgIHN0YXJ0X3Bm
biA9IAo+ICsgICAgICAgZW5kX3BmbiA9IHN0YXJ0X3BmbiArIGFyZy0+bnJfcGFnZXM7CgpZb3Ug
Y2FuIGluaXRpYWxpemUgc29tZSBvZiB0aGVzZSBkaXJlY3RseQoKc3RydWN0IG1lbW9yeV9ub3Rp
ZnkgKmFyZyA9IGRhdGE7CmNvbnN0IHVuc2lnbmVkIGxvbmcgZW5kX3BmbiA9IGFyZy0+c3RhcnRf
cGZuOyArIGFyZy0+bnJfcGFnZXM7CnVuc2lnbmVkIGxvbmcgcGZuID0gYXJnLT5zdGFydF9wZm47
CgphbmQgYXZvaWQgc3RhcnRfcGZuLgoKPiArCj4gKyAgICAgICBpZiAoYWN0aW9uICE9IE1FTV9H
T0lOR19PRkZMSU5FKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gTk9USUZZX09LOwo+ICsKPiAr
ICAgICAgIGZvciAocGZuID0gc3RhcnRfcGZuOyBwZm4gPCBlbmRfcGZuOyBwZm4gKz0gUEFHRVNf
UEVSX1NFQ1RJT04pIHsKPiArICAgICAgICAgICAgICAgc2VjdGlvbl9uciA9IDsKPiArICAgICAg
ICAgICAgICAgbXMgPSBfX25yX3RvX3NlY3Rpb24oc2VjdGlvbl9ucik7CgpBbHNvLCBJIHRoaW5r
IHlvdSBjYW4gYXZvaWQgc2VjdGlvbl9uci4KCgkJbXMgPSBfX25yX3RvX3NlY3Rpb24ocGZuX3Rv
X3NlY3Rpb25fbnIocGZuKSk7Cgo+ICsKPiArICAgICAgICAgICAgICAgaWYgKGVhcmx5X3NlY3Rp
b24obXMpKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBOT1RJRllfQkFEOwo+ICsg
ICAgICAgfQo+ICsgICAgICAgcmV0dXJuIE5PVElGWV9PSzsKPiArfQo+ICsKPiArc3RhdGljIHN0
cnVjdCBub3RpZmllcl9ibG9jayBib290X21lbV9yZW1vdmVfbmIgPSB7Cj4gKyAgICAgICAubm90
aWZpZXJfY2FsbCA9IGJvb3RfbWVtX3JlbW92ZV9ub3RpZmllciwKPiArfTsKPiArCj4gK3N0YXRp
YyBpbnQgX19pbml0IGJvb3RfbWVtX3JlbW92ZV9pbml0KHZvaWQpCj4gK3sKPiArICAgICAgIHJl
dHVybiByZWdpc3Rlcl9tZW1vcnlfbm90aWZpZXIoJmJvb3RfbWVtX3JlbW92ZV9uYik7Cj4gK30K
PiArZGV2aWNlX2luaXRjYWxsKGJvb3RfbWVtX3JlbW92ZV9pbml0KTsKPiAgI2VuZGlmCgpFeGFj
dGx5IHdoYXQgSSB3YXMgc3VnZ2VzdGluZyA6KQoKSWYgd2UgZXZlciBuZWVkIHRvIG9mZmxpbmUr
cmUtb25saW5lIGJvb3QgbWVtb3J5IChlLmcuLCB0byBhIGRpZmZlcmVudAp6b25lKSwgd2UgY2Fu
IHRoaW5rIG9mIHNvbWV0aGluZyBlbHNlLgoKLS0gClRoYW5rcywKCkRhdmlkIC8gZGhpbGRlbmIK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
