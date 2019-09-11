Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9D4AFDA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 15:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ro4ex2cvqz5WoIW396KM2sXgrLDV6fwlwS+LAk1aVxs=; b=U/3wuWoQrbaGfL
	0LoFEqbzIhJ5F8BBD7OLmO62rDSj1EPN7VwXfNSb0abOFIecRt355zILLGmcXucyN/RTJjX/8ta6y
	+xGFDr3OWQ6Se0/xLrV3Y1TQGj10bAlS3IHmicz2Yy8lPWcdMdPH9snackqqe8X4fEBI58wNMiEuB
	NOpdc3kmhyFE5p6H/1RtNmEthEukHr0QIX5Yuyo+Q6pjeU1iziMAbte2cFG4qipQROuzMoq7CO4NU
	qD41HGOqxMBSHDmvT0sLBgwNkyreCUIVb6k+W7RH7TRS+QsZyh956ScoiZBwCCh3+g7CJIK1X6Ouj
	YTL/ebGXuAqFNKlbCbHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i82YL-0007sU-6d; Wed, 11 Sep 2019 13:20:57 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i82Y8-0007s0-05
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 13:20:45 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9027C10CC218;
 Wed, 11 Sep 2019 13:20:42 +0000 (UTC)
Received: from [10.18.17.163] (dhcp-17-163.bos.redhat.com [10.18.17.163])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FCCC5DE5B;
 Wed, 11 Sep 2019 13:19:41 +0000 (UTC)
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
To: Michal Hocko <mhocko@kernel.org>, David Hildenbrand <david@redhat.com>
References: <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910175213.GD4023@dhcp22.suse.cz>
 <1d7de9f9f4074f67c567dbb4cc1497503d739e30.camel@linux.intel.com>
 <20190911113619.GP4023@dhcp22.suse.cz>
 <20190911080804-mutt-send-email-mst@kernel.org>
 <20190911121941.GU4023@dhcp22.suse.cz> <20190911122526.GV4023@dhcp22.suse.cz>
 <4748a572-57b3-31da-0dde-30138e550c3a@redhat.com>
 <20190911125413.GY4023@dhcp22.suse.cz>
From: Nitesh Narayan Lal <nitesh@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=nitesh@redhat.com; prefer-encrypt=mutual; keydata=
 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
 VujM7c/b4pps
Organization: Red Hat Inc,
Message-ID: <bfd4ee39-bca5-e1ff-704c-19439cd17d8b@redhat.com>
Date: Wed, 11 Sep 2019 09:19:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190911125413.GY4023@dhcp22.suse.cz>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Wed, 11 Sep 2019 13:20:43 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_062044_073973_A304F3B8 
X-CRM114-Status: GOOD (  23.80  )
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
 kvm list <kvm@vger.kernel.org>, "Michael S. Tsirkin" <mst@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
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

Ck9uIDkvMTEvMTkgODo1NCBBTSwgTWljaGFsIEhvY2tvIHdyb3RlOgo+IE9uIFdlZCAxMS0wOS0x
OSAxNDo0Mjo0MSwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4+IE9uIDExLjA5LjE5IDE0OjI1
LCBNaWNoYWwgSG9ja28gd3JvdGU6Cj4+PiBPbiBXZWQgMTEtMDktMTkgMTQ6MTk6NDEsIE1pY2hh
bCBIb2NrbyB3cm90ZToKPj4+PiBPbiBXZWQgMTEtMDktMTkgMDg6MDg6MzgsIE1pY2hhZWwgUy4g
VHNpcmtpbiB3cm90ZToKPj4+Pj4gT24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgMDE6MzY6MTlQTSAr
MDIwMCwgTWljaGFsIEhvY2tvIHdyb3RlOgo+Pj4+Pj4gT24gVHVlIDEwLTA5LTE5IDE0OjIzOjQw
LCBBbGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4+Pj4+PiBbLi4uXQo+Pj4+Pj4+IFdlIGRvbid0IHB1
dCBhbnkgbGltaXRhdGlvbnMgb24gdGhlIGFsbG9jYXRvciBvdGhlciB0aGVuIHRoYXQgaXQgbmVl
ZHMgdG8KPj4+Pj4+PiBjbGVhbiB1cCB0aGUgbWV0YWRhdGEgb24gYWxsb2NhdGlvbiwgYW5kIHRo
YXQgaXQgY2Fubm90IGFsbG9jYXRlIGEgcGFnZQo+Pj4+Pj4+IHRoYXQgaXMgaW4gdGhlIHByb2Nl
c3Mgb2YgYmVpbmcgcmVwb3J0ZWQgc2luY2Ugd2UgcHVsbGVkIGl0IGZyb20gdGhlCj4+Pj4+Pj4g
ZnJlZV9saXN0LiBJZiB0aGUgcGFnZSBpcyBhICJSZXBvcnRlZCIgcGFnZSB0aGVuIGl0IGRlY3Jl
bWVudHMgdGhlCj4+Pj4+Pj4gcmVwb3J0ZWRfcGFnZXMgY291bnQgZm9yIHRoZSBmcmVlX2FyZWEg
YW5kIG1ha2VzIHN1cmUgdGhlIHBhZ2UgZG9lc24ndAo+Pj4+Pj4+IGV4aXN0IGluIHRoZSAiQm91
bmRhcnkiIGFycmF5IHBvaW50ZXIgdmFsdWUsIGlmIGl0IGRvZXMgaXQgbW92ZXMgdGhlCj4+Pj4+
Pj4gIkJvdW5kYXJ5IiBzaW5jZSBpdCBpcyBwdWxsaW5nIHRoZSBwYWdlLgo+Pj4+Pj4gVGhpcyBp
cyBzdGlsbCBhIG5vbi10cml2aWFsIGxpbWl0YXRpb24gb24gdGhlIHBhZ2UgYWxsb2NhdGlvbiBm
cm9tIGFuCj4+Pj4+PiBleHRlcm5hbCBjb2RlIElNSE8uIEkgY2Fubm90IGdpdmUgYW55IGV4cGxp
Y2l0IHJlYXNvbiB3aHkgYW4gb3JkZXJpbmcgb24KPj4+Pj4+IHRoZSBmcmVlIGxpc3QgbWlnaHQg
bWF0dGVyICh3ZWxsIGV4Y2VwdCBmb3IgcGFnZSBzaHVmZmxpbmcgd2hpY2ggdXNlcyBpdAo+Pj4+
Pj4gdG8gbWFrZSBwaHlzaWNhbCBtZW1vcnkgcGF0dGVybiBhbGxvY2F0aW9uIG1vcmUgcmFuZG9t
KSBidXQgdGhlCj4+Pj4+PiBhcmNoaXRlY3R1cmUgc2VlbXMgaGFja3kgYW5kIGR1YmlvdXMgdG8g
YmUgaG9uZXN0LiBJdCBzaG91bGRzIGxpa2UgdGhlCj4+Pj4+PiB3aG9sZSBpbnRlcmZhY2UgaGFz
IGJlZW4gZGV2ZWxvcGVkIGFyb3VuZCBhIHZlcnkgcGFydGljdWxhciBhbmQgc2luZ2xlCj4+Pj4+
PiBwdXJwb3NlIG9wdGltaXphdGlvbi4KPj4+Pj4+Cj4+Pj4+PiBJIHJlbWVtYmVyIHRoYXQgdGhl
cmUgd2FzIGFuIGF0dGVtcHQgdG8gcmVwb3J0IGZyZWUgbWVtb3J5IHRoYXQgcHJvdmlkZWQKPj4+
Pj4+IGEgY2FsbGJhY2sgbWVjaGFuaXNtIFsxXSwgd2hpY2ggd2FzIG11Y2ggbGVzcyBpbnRydXNp
dmUgdG8gdGhlIGludGVybmFscwo+Pj4+Pj4gb2YgdGhlIGFsbG9jYXRvciB5ZXQgaXQgc2hvdWxk
IHByb3ZpZGUgYSBzaW1pbGFyIGZ1bmN0aW9uYWxpdHkuIERpZCB5b3UKPj4+Pj4+IHNlZSB0aGF0
IGFwcHJvYWNoPyBIb3cgZG9lcyB0aGlzIGNvbXBhcmVzIHRvIGl0PyBPciBhbSBJIGNvbXBsZXRl
bHkgb2ZmCj4+Pj4+PiB3aGVuIGNvbXBhcmluZyB0aGVtPwo+Pj4+Pj4KPj4+Pj4+IFsxXSBtb3N0
bHkgbGlrZWx5IG5vdCB0aGUgbGF0ZXN0IHZlcnNpb24gb2YgdGhlIHBhdGNoc2V0Cj4+Pj4+PiBo
dHRwOi8vbGttbC5rZXJuZWwub3JnL3IvMTUwMjk0MDQxNi00Mjk0NC01LWdpdC1zZW5kLWVtYWls
LXdlaS53LndhbmdAaW50ZWwuY29tCj4+Pj4+IExpbnVzIG5hY2tlZCB0aGF0IG9uZS4gSGUgdGhp
bmtzIGludm9raW5nIGNhbGxiYWNrcyB3aXRoIGxvdHMgb2YKPj4+Pj4gaW50ZXJuYWwgbW0gbG9j
a3MgaXMgdG9vIGZyYWdpbGUuCj4+Pj4gSSB3b3VsZCBiZSByZWFsbHkgY3VyaW91cyBob3cgbXVj
aCBoZSB3b3VsZCBiZSBoYXBweSBhYm91dCBpbmplY3RpbmcKPj4+PiBvdGhlciByZXN0cmljdGlv
bnMgb24gdGhlIGFsbG9jYXRvciBsaWtlIHRoaXMgcGF0Y2ggcHJvcG9zZXMuIFRoaXMgaXMKPj4+
PiBtb3JlIGludHJ1c2l2ZSBhcyBpdCBoYXMgYSBoaWdoZXIgbWFpbnRlbmFuY2UgY29zdCBsb25n
dGVybSBJTUhPLgo+Pj4gQnR3LiBJIGRvIGFncmVlIHRoYXQgY2FsbGJhY2tzIHdpdGggaW50ZXJu
YWwgbW0gbG9ja3MgYXJlIG5vdCBncmVhdAo+Pj4gZWl0aGVyLiBXZSBkbyBoYXZlIGEgbW9kZWwg
Zm9yIHRoYXQgaW4gbW11X25vdGlmaWVycyBhbmQgaXQgaXMgc29tZXRoaW5nCj4+PiBJIGRvIGNv
bnNpZGVyIFBJVEEsIG9uIHRoZSBvdGhlciBoYW5kIGl0IGlzIG1vc3RseSBzbGVlcGFibGUgcGFy
dCBvZiB0aGUKPj4+IGludGVyZmFjZSB3aGljaCBtYWtlcyBpdCB0aGUgcmVhbCBwYWluLiBUaGUg
YWJvdmUgY2FsbGJhY2sgbWVjaGFuaXNtIHdhcwo+Pj4gZXhwbGljaXRseSBkb2N1bWVudGVkIHdp
dGggcmVzdHJpY3Rpb25zIGFuZCB0aGF0IHRoZSBjb250ZXh0IGlzCj4+PiBlc3NlbnRpYWxseSBh
dG9taWMgd2l0aCBubyBhY2Nlc3MgdG8gcGFydGljdWxhciBzdHJ1Y3QgcGFnZXMgYW5kIG5vCj4+
PiBleHBlbnNpdmUgb3BlcmF0aW9ucyBwb3NzaWJsZS4gU28gaW4gdGhlIGVuZCBJJ3ZlIGNvbnNp
ZGVyZWQgaXQKPj4+IGFjY2VwdGFibHkgcGFpbmZ1bC4gTm90IHRoYXQgSSB3YW50IHRvIG92ZXJy
aWRlIExpbnVzJyBuYWNrIGJ1dCBpZgo+Pj4gdmlydHVhbGl6YXRpb24gdXNlY2FzZXMgcmVhbGx5
IHJlcXVpcmUgc29tZSBmb3JtIG9mIHJlcG9ydGluZyBhbmQgbm8KPj4+IG90aGVyIHdheSB0byBk
byB0aGF0IHB1c2ggcGVvcGxlIHRvIGludmVudCBldmVuIG1vcmUgaW50ZXJlc3RpbmcKPj4+IGFw
cHJvYWNoZXMgdGhlbiB3ZSBzaG91bGQgc2ltcGx5IGdpdmUgdGhlbS95b3Ugc29tZXRoaW5nIHJl
YXNvbmFibGUKPj4+IGFuZCBsZWFzdCBpbnRydXNpdmUgdG8gb3VyIGludGVybmFscy4KPj4+Cj4+
IFRoZSBpc3N1ZSB3aXRoICJbUEFUQ0ggdjE0IDQvNV0gbW06IHN1cHBvcnQgcmVwb3J0aW5nIGZy
ZWUgcGFnZSBibG9ja3MiCj4+ICBpcyB0aGF0IGl0IGNhbm5vdCByZWFsbHkgaGFuZGxlIHRoZSB1
c2UgY2FzZSB3ZSBoYXZlIGhlcmUgaWYgSSBhbSBub3QKPj4gd3JvbmcuIFdoaWxlIGEgcGFnZSBp
cyBnZXR0aW5nIHByb2Nlc3NlZCBieSB0aGUgaHlwZXJ2aXNvciAoZS5nLgo+PiBNQURWX0RPTlRO
RUVEKSwgaXQgbXVzdCBub3QgZ2V0IHJldXNlZC4KPiBXaGF0IHByZXZlbnRzIHRvIHVzZSB0aGUg
Y2FsbGJhY2sgdG8gZ2V0IGEgbGlzdCBvZiBwZm4gcmFuZ2VzIHRvIHdvcmsgb24KPiBhbmQgdGhl
biB1c2Ugc29tZXRoaW5nIGxpa2Ugc3RhcnRfaXNvbGF0ZV9wYWdlX3JhbmdlIG9uIHRoZSBjb2xs
ZWN0ZWQKPiBwZm4gcmFuZ2VzIHRvIG1ha2Ugc3VyZSBub2JvZHkgc3RlYWxzIHBhZ2VzIGZyb20g
dW5kZXIgeW91ciBmZWV0LCBkbwo+IHlvdXIgdGhpbmcgYW5kIGRyb3AgdGhlIGlzb2xhdGVkIHN0
YXRlIGFmdGVyd2FyZHMuCj4KCkluIG15IHNlcmllcywgSSBhbSBkb2luZyBzb21ldGhpbmcgc2lt
aWxhci4KLSBUcmFjayAoTUFYX09SREVSIC0gMikgZnJlZSBwYWdlcyBpbiBiaXRtYXAgbWFpbnRh
aW5lZCBvbiBhIHBlci16b25lCsKgIGJhc2lzLgotIFVzZSBfX2lzb2xhdGVfZnJlZV9wYWdlIG9u
IHRoZSBwYWdlcyBtYXJrZWQgaW4gdGhlIGJpdG1hcCBhbmQgYXJlCsKgIHN0aWxsIGZyZWUuCi0g
UmVwb3J0IGNodW5rcyBvZiAxNiBpc29sYXRlZCBwYWdlcyB0byB0aGUgaHlwZXJ2aXNvci4KLSBS
ZXR1cm4gdGhlbSBiYWNrIHRvIHRoZSBidWRkeSBvbmNlIHRoZSByZXF1ZXN0IGlzIHByb2Nlc3Nl
ZC4KCj4gSSBhbSBzYXlpbmcgc29tZXRoaWcgbGlrZSBiZWNhdXNlIHlvdSB3b3VsZG4ndCByZWFs
bHkgd2FudCBhIGdlbmVyaWMKPiBoYXNfdW5tb3ZhYmxlX3BhZ2VzIGJ1dCByYXRoZXIKPiAgICAg
ICAgICAgICAgICAgaWYgKCFwYWdlX3JlZl9jb3VudChwYWdlKSkgewo+ICAgICAgICAgICAgICAg
ICAgICAgICAgIGlmIChQYWdlQnVkZHkocGFnZSkpCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBpdGVyICs9ICgxIDw8IHBhZ2Vfb3JkZXIocGFnZSkpIC0gMTsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICBjb250aW51ZTsKPiAgICAgICAgICAgICAgICAgfQo+IHN1YnNldCBvZiBp
dC4KLS0gClRoYW5rcwpOaXRlc2gKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
