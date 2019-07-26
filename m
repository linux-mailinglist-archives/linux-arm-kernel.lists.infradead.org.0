Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D5E7669A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bQjFctD6FoTuTr3qevo0aqlFMg6B1F3C7WDG0dD3OMU=; b=t7VXkT50f4bTeKGKKhaQUWfna
	1ALe/cKDDs5Np4yKBXouSLWKxlm1gNY1xTX5nlKJt70TnaRlfOVXg5agQKwZSPUZwunTYlc6qO268
	SubWmY0BUr6he7kh7UqgifjI8J9IrsJ+0UUP3+/353QmJzLB3Y6QwHLaQRyXi3GX6CesnK+W8V/05
	tfsyo/Ceu48Odk8XCPJFy9/VF2V8qbwtBUDw+YjwX5jtLpmXTjDcHstcw1luN3M3D+USWZ06ZecI3
	WBbR1kLsG3ucQ+85sATLiRj05vyATjb+1rUrwfTRBI8rkZialr43p8DlvyPghIrMuM9rBBkG5/jQv
	cDc4eHo+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzjP-0007ZB-Ca; Fri, 26 Jul 2019 12:53:55 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzj4-0007XE-HU
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:53:37 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AE5F6300D1CA;
 Fri, 26 Jul 2019 12:53:33 +0000 (UTC)
Received: from [10.72.12.238] (ovpn-12-238.pek2.redhat.com [10.72.12.238])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3F4645DE6F;
 Fri, 26 Jul 2019 12:53:19 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190723051828-mutt-send-email-mst@kernel.org>
 <caff362a-e208-3468-3688-63e1d093a9d3@redhat.com>
 <20190725012149-mutt-send-email-mst@kernel.org>
 <55e8930c-2695-365f-a07b-3ad169654d28@redhat.com>
 <20190725042651-mutt-send-email-mst@kernel.org>
 <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
 <20190725092332-mutt-send-email-mst@kernel.org>
 <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
 <20190726074644-mutt-send-email-mst@kernel.org>
 <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
 <20190726082837-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
Date: Fri, 26 Jul 2019 20:53:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726082837-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Fri, 26 Jul 2019 12:53:34 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_055334_657259_4253D920 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: mhocko@suse.com, peterz@infradead.org, ldv@altlinux.org,
 james.bottomley@hansenpartnership.com, linux-mm@kvack.org, namit@vmware.com,
 mingo@kernel.org, elena.reshetova@intel.com, keescook@chromium.org,
 aarcange@redhat.com, davem@davemloft.net, hch@infradead.org,
 christian@brauner.io,
 syzbot <syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, akpm@linux-foundation.org,
 guro@fb.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8yNiDkuIvljYg4OjM4LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
RnJpLCBKdWwgMjYsIDIwMTkgYXQgMDg6MDA6NThQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzI2IOS4i+WNiDc6NDksIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
IE9uIFRodSwgSnVsIDI1LCAyMDE5IGF0IDEwOjI1OjI1UE0gKzA4MDAsIEphc29uIFdhbmcgd3Jv
dGU6Cj4+Pj4gT24gMjAxOS83LzI1IOS4i+WNiDk6MjYsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90
ZToKPj4+Pj4+IEV4YWN0bHksIGFuZCB0aGF0J3MgdGhlIHJlYXNvbiBhY3R1YWxseSBJIHVzZSBz
eW5jaHJvbml6ZV9yY3UoKSB0aGVyZS4KPj4+Pj4+Cj4+Pj4+PiBTbyB0aGUgY29uY2VybiBpcyBz
dGlsbCB0aGUgcG9zc2libGUgc3luY2hyb25pemVfZXhwZWRpdGVkKCk/Cj4+Pj4+IEkgdGhpbmsg
c3luY2hyb25pemVfc3JjdV9leHBlZGl0ZWQuCj4+Pj4+Cj4+Pj4+IHN5bmNocm9uaXplX2V4cGVk
aXRlZCBzZW5kcyBsb3RzIG9mIElQSSBhbmQgaXMgYmFkIGZvciByZWFsdGltZSBWTXMuCj4+Pj4+
Cj4+Pj4+PiBDYW4gSSBkbyB0aGlzCj4+Pj4+PiBvbiB0aHJvdWdoIGFub3RoZXIgc2VyaWVzIG9u
IHRvcCBvZiB0aGUgaW5jb21pbmcgVjI/Cj4+Pj4+Pgo+Pj4+Pj4gVGhhbmtzCj4+Pj4+Pgo+Pj4+
PiBUaGUgcXVlc3Rpb24gaXMgdGhpczogaXMgdGhpcyBzdGlsbCBhIGdhaW4gaWYgd2Ugc3dpdGNo
IHRvIHRoZQo+Pj4+PiBtb3JlIGV4cGVuc2l2ZSBzcmN1PyBJZiB5ZXMgdGhlbiB3ZSBjYW4ga2Vl
cCB0aGUgZmVhdHVyZSBvbiwKPj4+PiBJIHRoaW5rIHdlIG9ubHkgY2FyZSBhYm91dCB0aGUgY29z
dCBvbiBzcmN1X3JlYWRfbG9jaygpIHdoaWNoIGxvb2tzIHByZXR0eQo+Pj4+IHRpbnkgZm9ybSBt
eSBwb2ludCBvZiB2aWV3LiBXaGljaCBpcyBiYXNpY2FsbHkgYSBSRUFEX09OQ0UoKSArIFdSSVRF
X09OQ0UoKS4KPj4+Pgo+Pj4+IE9mIGNvdXJzZSBJIGNhbiBiZW5jaG1hcmsgdG8gc2VlIHRoZSBk
aWZmZXJlbmNlLgo+Pj4+Cj4+Pj4KPj4+Pj4gaWYgbm90IHdlJ2xsIHB1dCBpdCBvZmYgdW50aWwg
bmV4dCByZWxlYXNlIGFuZCB0aGluawo+Pj4+PiBvZiBiZXR0ZXIgc29sdXRpb25zLiByY3UtPnNy
Y3UgaXMganVzdCBhIGZpbmQgYW5kIHJlcGxhY2UsCj4+Pj4+IGRvbid0IHNlZSB3aHkgd2UgbmVl
ZCB0byBkZWZlciB0aGF0LiBjYW4gYmUgYSBzZXBhcmF0ZSBwYXRjaAo+Pj4+PiBmb3Igc3VyZSwg
YnV0IHdlIG5lZWQgdG8ga25vdyBob3cgd2VsbCBpdCB3b3Jrcy4KPj4+PiBJIHRoaW5rIEkgZ2V0
IGhlcmUsIGxldCBtZSB0cnkgdG8gZG8gdGhhdCBpbiBWMiBhbmQgbGV0J3Mgc2VlIHRoZSBudW1i
ZXJzLgo+Pj4+Cj4+Pj4gVGhhbmtzCj4+Cj4+IEl0IGxvb2tzIHRvIG1lIGZvciB0cmVlIHJjdSwg
aXRzIHNyY3VfcmVhZF9sb2NrKCkgaGF2ZSBhIG1iKCkgd2hpY2ggaXMgdG9vCj4+IGV4cGVuc2l2
ZSBmb3IgdXMuCj4gSSB3aWxsIHRyeSB0byBwb25kZXIgdXNpbmcgdnEgbG9jayBpbiBzb21lIHdh
eS4KPiBNYXliZSB3aXRoIHRyeWxvY2sgc29tZWhvdyAuLi4KCgpPaywgbGV0IG1lIHJldHJ5IGlm
IG5lY2Vzc2FyeSAoYnV0IEkgZG8gcmVtZW1iZXIgSSBlbmQgdXAgd2l0aCBkZWFkbG9ja3MgCmxh
c3QgdHJ5KS4KCgo+Cj4KPj4gSWYgd2UganVzdCB3b3JyeSBhYm91dCB0aGUgSVBJLAo+IFdpdGgg
c3luY2hyb25pemVfcmN1IHdoYXQgSSB3b3VsZCB3b3JyeSBhYm91dCBpcyB0aGF0IGd1ZXN0IGlz
IHN0YWxsZWQKCgpDYW4gdGhpcyBzeW5jaHJvbml6ZV9yY3UoKSBiZSB0cmlnZ2VyZWQgYnkgZ3Vl
c3Q/IElmIHllcywgdGhlcmUgYXJlIApzZXZlcmFsIG90aGVyIE1NVSBub3RpZmllcnMgdGhhdCBj
YW4gYmxvY2suIElzIHZob3N0IHNvbWV0aGluZyBzcGVjaWFsIGhlcmU/CgoKPiBiZWNhdXNlIHN5
c3RlbSBpcyBidXN5IGJlY2F1c2Ugb2Ygb3RoZXIgZ3Vlc3RzLgo+IFdpdGggZXhwZWRpdGVkIGl0
J3MgdGhlIElQSXMuLi4KPgoKVGhlIGN1cnJlbnQgc3luY2hyb25pemVfcmN1KCnCoCBjYW4gZm9y
Y2UgYSBleHBlZGl0ZWQgZ3JhY2UgcGVyaW9kOgoKdm9pZCBzeW5jaHJvbml6ZV9yY3Uodm9pZCkK
ewogwqDCoMKgIMKgwqDCoCAuLi4KIMKgwqDCoMKgwqDCoMKgIGlmIChyY3VfYmxvY2tpbmdfaXNf
Z3AoKSkKcmV0dXJuOwogwqDCoMKgwqDCoMKgwqAgaWYgKHJjdV9ncF9pc19leHBlZGl0ZWQoKSkK
c3luY2hyb25pemVfcmN1X2V4cGVkaXRlZCgpOwplbHNlCndhaXRfcmN1X2dwKGNhbGxfcmN1KTsK
fQpFWFBPUlRfU1lNQk9MX0dQTChzeW5jaHJvbml6ZV9yY3UpOwoKCj4+IGNhbiB3ZSBkbyBzb21l
dGhpbmcgbGlrZSBpbgo+PiB2aG9zdF9pbnZhbGlkYXRlX3ZxX3N0YXJ0KCk/Cj4+Cj4+ICDCoMKg
wqDCoMKgwqDCoCBpZiAobWFwKSB7Cj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
LyogSW4gb3JkZXIgdG8gYXZvaWQgcG9zc2libGUgSVBJcyB3aXRoCj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAqIHN5bmNocm9uaXplX3JjdV9leHBlZGl0ZWQoKSB3ZSB1c2Ug
Y2FsbF9yY3UoKSArCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGNvbXBs
ZXRpb24uCj4+ICovCj4+IGluaXRfY29tcGxldGlvbigmYy5jb21wbGV0aW9uKTsKPj4gIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjYWxsX3JjdSgmYy5yY3VfaGVhZCwgdmhvc3RfZmlu
aXNoX3ZxX2ludmFsaWRhdGlvbik7Cj4+IHdhaXRfZm9yX2NvbXBsZXRpb24oJmMuY29tcGxldGlv
bik7Cj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdmhvc3Rfc2V0X21hcF9kaXJ0
eSh2cSwgbWFwLCBpbmRleCk7Cj4+IHZob3N0X21hcF91bnByZWZldGNoKG1hcCk7Cj4+ICDCoMKg
wqDCoMKgwqDCoCB9Cj4+Cj4+ID8KPiBXaHkgd291bGQgdGhhdCBiZSBmYXN0ZXIgdGhhbiBzeW5j
aHJvbml6ZV9yY3U/CgoKTm8gZmFzdGVyIGJ1dCBubyBJUEkuCgoKPgo+Cj4+PiBUaGVyZSdzIG9u
ZSBvdGhlciB0aGluZyB0aGF0IGJvdGhlcnMgbWUsIGFuZCB0aGF0IGlzIHRoYXQKPj4+IGZvciBs
YXJnZSByaW5ncyB3aGljaCBhcmUgbm90IHBoeXNpY2FsbHkgY29udGlndW91cwo+Pj4gd2UgZG9u
J3QgaW1wbGVtZW50IHRoZSBvcHRpbWl6YXRpb24uCj4+Pgo+Pj4gRm9yIHN1cmUsIHRoYXQgY2Fu
IHdhaXQsIGJ1dCBJIHRoaW5rIGV2ZW50dWFsbHkgd2Ugc2hvdWxkCj4+PiB2bWFwIGxhcmdlIHJp
bmdzLgo+Pgo+PiBZZXMsIHdvcnRoIHRvIHRyeS4gQnV0IHVzaW5nIGRpcmVjdCBtYXAgaGFzIGl0
cyBvd24gYWR2YW50YWdlOiBpdCBjYW4gdXNlCj4+IGh1Z2VwYWdlIHRoYXQgdm1hcCBjYW4ndAo+
Pgo+PiBUaGFua3MKPiBTdXJlLCBzbyB3ZSBjYW4gZG8gdGhhdCBmb3Igc21hbGwgcmluZ3MuCgoK
WWVzLCB0aGF0J3MgcG9zc2libGUgYnV0IHNob3VsZCBiZSBkb25lIG9uIHRvcC4KClRoYW5rcwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
