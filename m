Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A2AAFD36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 14:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bjw+TxVxaA6GstJ+TQ4dnSv8vMSzL9Qr6XyTb0/eE1o=; b=S1E9aB3Hm11CkX
	8wxAi4ANxgBNIH/VQhQpRoHEyac2dR2DYj8yVL4GSfvrdDMzxHRiT206PtQwKj/KwWmD/crqxNHG6
	NgXprYRJJqZSngk6sv6y5EhnpDLSiP1pGS3qTXrJ8KybizMySg5dvuCyhs3WXUUk81i0z2qew3/bw
	EAFlyp35BCK3J5UfhOT5XZ++7TYNvDgwvHPJoFEKlz72Lgqh5pwJnFcrdYTXja2KvsM9t9bUNtOXn
	lqeOU5o1Y0bvTvwtaCeKHwi2USbukAn9nS7gOCmymgSW5unk+P1NYJ2MpeA8Lw/PHrH0wPI6ZYMXc
	dRyKQejKq9W4rxjg2CYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i82AZ-0004z2-5j; Wed, 11 Sep 2019 12:56:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i82A9-0004yN-CF
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 12:55:59 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 34FA530BA1B6;
 Wed, 11 Sep 2019 12:55:56 +0000 (UTC)
Received: from [10.18.17.163] (dhcp-17-163.bos.redhat.com [10.18.17.163])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CE2B710016EB;
 Wed, 11 Sep 2019 12:55:21 +0000 (UTC)
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
To: David Hildenbrand <david@redhat.com>, Michal Hocko <mhocko@kernel.org>,
 "Michael S. Tsirkin" <mst@redhat.com>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910175213.GD4023@dhcp22.suse.cz>
 <1d7de9f9f4074f67c567dbb4cc1497503d739e30.camel@linux.intel.com>
 <20190911113619.GP4023@dhcp22.suse.cz>
 <20190911080804-mutt-send-email-mst@kernel.org>
 <20190911121941.GU4023@dhcp22.suse.cz> <20190911122526.GV4023@dhcp22.suse.cz>
 <4748a572-57b3-31da-0dde-30138e550c3a@redhat.com>
From: Nitesh Narayan Lal <nitesh@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=nitesh@redhat.com; prefer-encrypt=mutual; keydata=
 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
 VujM7c/b4pps
Organization: Red Hat Inc,
Message-ID: <87e0f863-6a49-c07e-49a7-c8a5bdb745ba@redhat.com>
Date: Wed, 11 Sep 2019 08:55:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4748a572-57b3-31da-0dde-30138e550c3a@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 11 Sep 2019 12:55:56 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_055557_469089_A3C818CC 
X-CRM114-Status: GOOD (  23.12  )
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
Cc: Yang Zhang <yang.zhang.wz@gmail.com>, Pankaj Gupta <pagupta@redhat.com>,
 kvm list <kvm@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, lcapitulino@redhat.com,
 linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>, will@kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 Rik van Riel <riel@surriel.com>, Matthew Wilcox <willy@infradead.org>, "Wang,
 Wei W" <wei.w.wang@intel.com>, ying.huang@intel.com,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, Dave Hansen <dave.hansen@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Fengguang Wu <fengguang.wu@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDkvMTEvMTkgODo0MiBBTSwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4gT24gMTEuMDku
MTkgMTQ6MjUsIE1pY2hhbCBIb2NrbyB3cm90ZToKPj4gT24gV2VkIDExLTA5LTE5IDE0OjE5OjQx
LCBNaWNoYWwgSG9ja28gd3JvdGU6Cj4+PiBPbiBXZWQgMTEtMDktMTkgMDg6MDg6MzgsIE1pY2hh
ZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+PiBPbiBXZWQsIFNlcCAxMSwgMjAxOSBhdCAwMTozNjox
OVBNICswMjAwLCBNaWNoYWwgSG9ja28gd3JvdGU6Cj4+Pj4+IE9uIFR1ZSAxMC0wOS0xOSAxNDoy
Mzo0MCwgQWxleGFuZGVyIER1eWNrIHdyb3RlOgo+Pj4+PiBbLi4uXQo+Pj4+Pj4gV2UgZG9uJ3Qg
cHV0IGFueSBsaW1pdGF0aW9ucyBvbiB0aGUgYWxsb2NhdG9yIG90aGVyIHRoZW4gdGhhdCBpdCBu
ZWVkcyB0bwo+Pj4+Pj4gY2xlYW4gdXAgdGhlIG1ldGFkYXRhIG9uIGFsbG9jYXRpb24sIGFuZCB0
aGF0IGl0IGNhbm5vdCBhbGxvY2F0ZSBhIHBhZ2UKPj4+Pj4+IHRoYXQgaXMgaW4gdGhlIHByb2Nl
c3Mgb2YgYmVpbmcgcmVwb3J0ZWQgc2luY2Ugd2UgcHVsbGVkIGl0IGZyb20gdGhlCj4+Pj4+PiBm
cmVlX2xpc3QuIElmIHRoZSBwYWdlIGlzIGEgIlJlcG9ydGVkIiBwYWdlIHRoZW4gaXQgZGVjcmVt
ZW50cyB0aGUKPj4+Pj4+IHJlcG9ydGVkX3BhZ2VzIGNvdW50IGZvciB0aGUgZnJlZV9hcmVhIGFu
ZCBtYWtlcyBzdXJlIHRoZSBwYWdlIGRvZXNuJ3QKPj4+Pj4+IGV4aXN0IGluIHRoZSAiQm91bmRh
cnkiIGFycmF5IHBvaW50ZXIgdmFsdWUsIGlmIGl0IGRvZXMgaXQgbW92ZXMgdGhlCj4+Pj4+PiAi
Qm91bmRhcnkiIHNpbmNlIGl0IGlzIHB1bGxpbmcgdGhlIHBhZ2UuCj4+Pj4+IFRoaXMgaXMgc3Rp
bGwgYSBub24tdHJpdmlhbCBsaW1pdGF0aW9uIG9uIHRoZSBwYWdlIGFsbG9jYXRpb24gZnJvbSBh
bgo+Pj4+PiBleHRlcm5hbCBjb2RlIElNSE8uIEkgY2Fubm90IGdpdmUgYW55IGV4cGxpY2l0IHJl
YXNvbiB3aHkgYW4gb3JkZXJpbmcgb24KPj4+Pj4gdGhlIGZyZWUgbGlzdCBtaWdodCBtYXR0ZXIg
KHdlbGwgZXhjZXB0IGZvciBwYWdlIHNodWZmbGluZyB3aGljaCB1c2VzIGl0Cj4+Pj4+IHRvIG1h
a2UgcGh5c2ljYWwgbWVtb3J5IHBhdHRlcm4gYWxsb2NhdGlvbiBtb3JlIHJhbmRvbSkgYnV0IHRo
ZQo+Pj4+PiBhcmNoaXRlY3R1cmUgc2VlbXMgaGFja3kgYW5kIGR1YmlvdXMgdG8gYmUgaG9uZXN0
LiBJdCBzaG91bGRzIGxpa2UgdGhlCj4+Pj4+IHdob2xlIGludGVyZmFjZSBoYXMgYmVlbiBkZXZl
bG9wZWQgYXJvdW5kIGEgdmVyeSBwYXJ0aWN1bGFyIGFuZCBzaW5nbGUKPj4+Pj4gcHVycG9zZSBv
cHRpbWl6YXRpb24uCj4+Pj4+Cj4+Pj4+IEkgcmVtZW1iZXIgdGhhdCB0aGVyZSB3YXMgYW4gYXR0
ZW1wdCB0byByZXBvcnQgZnJlZSBtZW1vcnkgdGhhdCBwcm92aWRlZAo+Pj4+PiBhIGNhbGxiYWNr
IG1lY2hhbmlzbSBbMV0sIHdoaWNoIHdhcyBtdWNoIGxlc3MgaW50cnVzaXZlIHRvIHRoZSBpbnRl
cm5hbHMKPj4+Pj4gb2YgdGhlIGFsbG9jYXRvciB5ZXQgaXQgc2hvdWxkIHByb3ZpZGUgYSBzaW1p
bGFyIGZ1bmN0aW9uYWxpdHkuIERpZCB5b3UKPj4+Pj4gc2VlIHRoYXQgYXBwcm9hY2g/IEhvdyBk
b2VzIHRoaXMgY29tcGFyZXMgdG8gaXQ/IE9yIGFtIEkgY29tcGxldGVseSBvZmYKPj4+Pj4gd2hl
biBjb21wYXJpbmcgdGhlbT8KPj4+Pj4KPj4+Pj4gWzFdIG1vc3RseSBsaWtlbHkgbm90IHRoZSBs
YXRlc3QgdmVyc2lvbiBvZiB0aGUgcGF0Y2hzZXQKPj4+Pj4gaHR0cDovL2xrbWwua2VybmVsLm9y
Zy9yLzE1MDI5NDA0MTYtNDI5NDQtNS1naXQtc2VuZC1lbWFpbC13ZWkudy53YW5nQGludGVsLmNv
bQo+Pj4+IExpbnVzIG5hY2tlZCB0aGF0IG9uZS4gSGUgdGhpbmtzIGludm9raW5nIGNhbGxiYWNr
cyB3aXRoIGxvdHMgb2YKPj4+PiBpbnRlcm5hbCBtbSBsb2NrcyBpcyB0b28gZnJhZ2lsZS4KPj4+
IEkgd291bGQgYmUgcmVhbGx5IGN1cmlvdXMgaG93IG11Y2ggaGUgd291bGQgYmUgaGFwcHkgYWJv
dXQgaW5qZWN0aW5nCj4+PiBvdGhlciByZXN0cmljdGlvbnMgb24gdGhlIGFsbG9jYXRvciBsaWtl
IHRoaXMgcGF0Y2ggcHJvcG9zZXMuIFRoaXMgaXMKPj4+IG1vcmUgaW50cnVzaXZlIGFzIGl0IGhh
cyBhIGhpZ2hlciBtYWludGVuYW5jZSBjb3N0IGxvbmd0ZXJtIElNSE8uCj4+IEJ0dy4gSSBkbyBh
Z3JlZSB0aGF0IGNhbGxiYWNrcyB3aXRoIGludGVybmFsIG1tIGxvY2tzIGFyZSBub3QgZ3JlYXQK
Pj4gZWl0aGVyLiBXZSBkbyBoYXZlIGEgbW9kZWwgZm9yIHRoYXQgaW4gbW11X25vdGlmaWVycyBh
bmQgaXQgaXMgc29tZXRoaW5nCj4+IEkgZG8gY29uc2lkZXIgUElUQSwgb24gdGhlIG90aGVyIGhh
bmQgaXQgaXMgbW9zdGx5IHNsZWVwYWJsZSBwYXJ0IG9mIHRoZQo+PiBpbnRlcmZhY2Ugd2hpY2gg
bWFrZXMgaXQgdGhlIHJlYWwgcGFpbi4gVGhlIGFib3ZlIGNhbGxiYWNrIG1lY2hhbmlzbSB3YXMK
Pj4gZXhwbGljaXRseSBkb2N1bWVudGVkIHdpdGggcmVzdHJpY3Rpb25zIGFuZCB0aGF0IHRoZSBj
b250ZXh0IGlzCj4+IGVzc2VudGlhbGx5IGF0b21pYyB3aXRoIG5vIGFjY2VzcyB0byBwYXJ0aWN1
bGFyIHN0cnVjdCBwYWdlcyBhbmQgbm8KPj4gZXhwZW5zaXZlIG9wZXJhdGlvbnMgcG9zc2libGUu
IFNvIGluIHRoZSBlbmQgSSd2ZSBjb25zaWRlcmVkIGl0Cj4+IGFjY2VwdGFibHkgcGFpbmZ1bC4g
Tm90IHRoYXQgSSB3YW50IHRvIG92ZXJyaWRlIExpbnVzJyBuYWNrIGJ1dCBpZgo+PiB2aXJ0dWFs
aXphdGlvbiB1c2VjYXNlcyByZWFsbHkgcmVxdWlyZSBzb21lIGZvcm0gb2YgcmVwb3J0aW5nIGFu
ZCBubwo+PiBvdGhlciB3YXkgdG8gZG8gdGhhdCBwdXNoIHBlb3BsZSB0byBpbnZlbnQgZXZlbiBt
b3JlIGludGVyZXN0aW5nCj4+IGFwcHJvYWNoZXMgdGhlbiB3ZSBzaG91bGQgc2ltcGx5IGdpdmUg
dGhlbS95b3Ugc29tZXRoaW5nIHJlYXNvbmFibGUKPj4gYW5kIGxlYXN0IGludHJ1c2l2ZSB0byBv
dXIgaW50ZXJuYWxzLgo+Pgo+IFRoZSBpc3N1ZSB3aXRoICJbUEFUQ0ggdjE0IDQvNV0gbW06IHN1
cHBvcnQgcmVwb3J0aW5nIGZyZWUgcGFnZSBibG9ja3MiCj4gIGlzIHRoYXQgaXQgY2Fubm90IHJl
YWxseSBoYW5kbGUgdGhlIHVzZSBjYXNlIHdlIGhhdmUgaGVyZSBpZiBJIGFtIG5vdAo+IHdyb25n
LiBXaGlsZSBhIHBhZ2UgaXMgZ2V0dGluZyBwcm9jZXNzZWQgYnkgdGhlIGh5cGVydmlzb3IgKGUu
Zy4KPiBNQURWX0RPTlRORUVEKSwgaXQgbXVzdCBub3QgZ2V0IHJldXNlZC4KPgo+ICJTb21lIHBh
Z2UgYmxvY2tzIG1heQo+IGxlYXZlIHRoZSBmcmVlIGxpc3QgYWZ0ZXIgem9uZS0+bG9jayBpcyBy
ZWxlYXNlZCwgc28gaXQgaXMgdGhlIGNhbGxlcidzCj4gcmVzcG9uc2liaWxpdHkgdG8gZWl0aGVy
IGRldGVjdCBvciBwcmV2ZW50IHRoZSB1c2Ugb2Ygc3VjaCBwYWdlcy4iCj4KPiBJZiBJJ20gbm90
IHdyb25nLCB0aGlzIG9ubHkgbWFkZSBzZW5zZSB0byBzcGVlZCB1cCBtaWdyYXRpb24gaW4gdGhl
Cj4gaHlwZXJ2aXNvciwgd2hlcmUgeW91IGNhbiBkZWFsIHdpdGggZmFsc2UgcG9zaXRpdmVzIGRp
ZmZlcmVudGx5LgoKQW5vdGhlciBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIHR3byBhcHByb2FjaGVz
IGlzIHRoZSBvcmlnaW4gZnJvbSB3aGVyZQp0aGUgcmVwb3J0aW5nIHJlcXVlc3QgaXMgZ2V0dGlu
ZyBnZW5lcmF0ZWQuIChJZiBJIHJlbWVtYmVyIGNvcnJlY3RseSkKSW4gQWxleGFuZGVyJ3Mgc2Vy
aWVzIG9yIGluIG15IHNlcmllcyBbMV0sIFZNIGlzIGFibGUgdG8gcmVwb3J0IHBhZ2VzCmR5bmFt
aWNhbGx5IHdpdGhvdXQgYW55IHJlcXVpcmVtZW50IG9mIGhvc3QgaW50ZXJ2ZW50aW9uLgoKWzFd
wqBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS84LzEyLzU5MwoKCi0tIApUaGFua3MKTml0ZXNo
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
