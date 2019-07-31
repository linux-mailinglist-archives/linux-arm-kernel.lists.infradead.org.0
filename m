Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A0D7BC37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vA8vyHMgujpsmaaMynQekIXJAxJft5Jk7YE3pTgHXs8=; b=LI365UXxHWFDzpgXWEDQy3dW1
	rjJCzRPPxaySSdEDpsz9buhoPJeOIG7u5NTt6n+7NjHs7Eao0X5hlbzdwL+91HARnlWrUe9xozpli
	fNPXnHQugpMfix2Vlcwc3N62BtUzeuB/lpTg/2/rabiid++DpTgX0c9qC8tWHVKzORTWAqy22bUtl
	k0P1WzFWHBe7uU/7gi/gli4jrCYc/bsOwc29vCo995n5jcFeqUhHpKcd/qV3r6L6i5n16sUwwEyYV
	tzlYKqb607nTXxPFZvnMXKBGIbpbqNKXEV3fqtbhxxDw6w/+pq/rLkkuGoZuM+AQQZCoucQ18094j
	vTAsSxx5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskJF-0002I2-5O; Wed, 31 Jul 2019 08:50:09 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskIt-0002HZ-Rg
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:49:49 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7ED5D81DF1;
 Wed, 31 Jul 2019 08:49:46 +0000 (UTC)
Received: from [10.72.12.51] (ovpn-12-51.pek2.redhat.com [10.72.12.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6DEDA5D9C5;
 Wed, 31 Jul 2019 08:49:34 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
 <20190726082837-mutt-send-email-mst@kernel.org>
 <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
 <aaefa93e-a0de-1c55-feb0-509c87aae1f3@redhat.com>
 <20190726094756-mutt-send-email-mst@kernel.org>
 <0792ee09-b4b7-673c-2251-e5e0ce0fbe32@redhat.com>
 <20190729045127-mutt-send-email-mst@kernel.org>
 <4d43c094-44ed-dbac-b863-48fc3d754378@redhat.com>
 <20190729104028-mutt-send-email-mst@kernel.org>
 <96b1d67c-3a8d-1224-e9f0-5f7725a3dc10@redhat.com>
 <20190730110633-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <421a1af6-df06-e4a6-b34f-526ac123bc4a@redhat.com>
Date: Wed, 31 Jul 2019 16:49:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730110633-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Wed, 31 Jul 2019 08:49:47 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_014947_928904_DDAF714E 
X-CRM114-Status: GOOD (  26.96  )
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

Ck9uIDIwMTkvNy8zMCDkuIvljYgxMTowOCwgTWljaGFlbCBTLiBUc2lya2luIHdyb3RlOgo+IE9u
IFR1ZSwgSnVsIDMwLCAyMDE5IGF0IDAzOjQ0OjQ3UE0gKzA4MDAsIEphc29uIFdhbmcgd3JvdGU6
Cj4+IE9uIDIwMTkvNy8yOSDkuIvljYgxMDo0NCwgTWljaGFlbCBTLiBUc2lya2luIHdyb3RlOgo+
Pj4gT24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMTA6MjQ6NDNQTSArMDgwMCwgSmFzb24gV2FuZyB3
cm90ZToKPj4+PiBPbiAyMDE5LzcvMjkg5LiL5Y2INDo1OSwgTWljaGFlbCBTLiBUc2lya2luIHdy
b3RlOgo+Pj4+PiBPbiBNb24sIEp1bCAyOSwgMjAxOSBhdCAwMTo1NDo0OVBNICswODAwLCBKYXNv
biBXYW5nIHdyb3RlOgo+Pj4+Pj4gT24gMjAxOS83LzI2IOS4i+WNiDk6NDksIE1pY2hhZWwgUy4g
VHNpcmtpbiB3cm90ZToKPj4+Pj4+Pj4+IE9rLCBsZXQgbWUgcmV0cnkgaWYgbmVjZXNzYXJ5IChi
dXQgSSBkbyByZW1lbWJlciBJIGVuZCB1cCB3aXRoIGRlYWRsb2Nrcwo+Pj4+Pj4+Pj4gbGFzdCB0
cnkpLgo+Pj4+Pj4+PiBPaywgSSBwbGF5IGEgbGl0dGxlIHdpdGggdGhpcy4gQW5kIGl0IHdvcmtz
IHNvIGZhci4gV2lsbCBkbyBtb3JlIHRlc3RpbmcKPj4+Pj4+Pj4gdG9tb3Jyb3cuCj4+Pj4+Pj4+
Cj4+Pj4+Pj4+IE9uZSByZWFzb24gY291bGQgYmUgSSBzd2l0Y2ggdG8gdXNlIGdldF91c2VyX3Bh
Z2VzX2Zhc3QoKSB0bwo+Pj4+Pj4+PiBfX2dldF91c2VyX3BhZ2VzX2Zhc3QoKSB3aGljaCBkb2Vz
bid0IG5lZWQgbW1hcF9zZW0uCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoYW5rcwo+Pj4+Pj4+IE9LIHRo
YXQgc291bmRzIGdvb2QuIElmIHdlIGFsc28gc2V0IGEgZmxhZyB0byBtYWtlCj4+Pj4+Pj4gdmhv
c3RfZXhjZWVkc193ZWlnaHQgZXhpdCwgdGhlbiBJIHRoaW5rIGl0IHdpbGwgYmUgYWxsIGdvb2Qu
Cj4+Pj4+PiBBZnRlciBzb21lIGV4cGVyaW1lbnRzLCBJIGNhbWUgdXAgdHdvIG1ldGhvZHM6Cj4+
Pj4+Pgo+Pj4+Pj4gMSkgc3dpdGNoIHRvIHVzZSB2cS0+bXV0ZXgsIHRoZW4gd2UgbXVzdCB0YWtl
IHRoZSB2cSBsb2NrIGR1cmluZyByYW5nZQo+Pj4+Pj4gY2hlY2tpbmcgKGJ1dCBJIGRvbid0IHNl
ZSBvYnZpb3VzIHNsb3dkb3duIGZvciAxNnZjcHVzICsgMTZxdWV1ZXMpLiBTZXR0aW5nCj4+Pj4+
PiBmbGFncyBkdXJpbmcgd2VpZ2h0IGNoZWNrIHNob3VsZCB3b3JrIGJ1dCBpdCBzdGlsbCBjYW4n
dCBhZGRyZXNzIHRoZSB3b3JzdAo+Pj4+Pj4gY2FzZTogd2FpdCBmb3IgdGhlIHBhZ2UgdG8gYmUg
c3dhcHBlZCBpbi4gSXMgdGhpcyBhY2NlcHRhYmxlPwo+Pj4+Pj4KPj4+Pj4+IDIpIHVzaW5nIGN1
cnJlbnQgUkNVIGJ1dCByZXBsYWNlIHN5bmNocm9uaXplX3JjdSgpIHdpdGggdmhvc3Rfd29ya19m
bHVzaCgpLgo+Pj4+Pj4gVGhlIHdvcnN0IGNhc2UgaXMgdGhlIHNhbWUgYXMgMSkgYnV0IHdlIGNh
biBjaGVjayByYW5nZSB3aXRob3V0IGhvbGRpbmcgYW55Cj4+Pj4+PiBsb2Nrcy4KPj4+Pj4+Cj4+
Pj4+PiBXaGljaCBvbmUgZGlkIHlvdSBwcmVmZXI/Cj4+Pj4+Pgo+Pj4+Pj4gVGhhbmtzCj4+Pj4+
IEkgd291bGQgcmF0aGVyIHdlIHN0YXJ0IHdpdGggMSBhbmQgc3dpdGNoIHRvIDIgYWZ0ZXIgd2UK
Pj4+Pj4gY2FuIHNob3cgc29tZSBnYWluLgo+Pj4+Pgo+Pj4+PiBCdXQgdGhlIHdvcnN0IGNhc2Ug
bmVlZHMgdG8gYmUgYWRkcmVzc2VkLgo+Pj4+IFllcy4KPj4+Pgo+Pj4+Cj4+Pj4+IEhvdyBhYm91
dCBzZW5kaW5nIGEgc2lnbmFsIHRvCj4+Pj4+IHRoZSB2aG9zdCB0aHJlYWQ/ICBXZSB3aWxsIG5l
ZWQgdG8gZml4IHVwIGVycm9yIGhhbmRsaW5nIChJIHRoaW5rIHRoYXQKPj4+Pj4gYXQgdGhlIG1v
bWVudCBpdCB3aWxsIGVycm9yIG91dCBpbiB0aGF0IGNhc2UsIGhhbmRsaW5nIHRoaXMgYXMgRUZB
VUxUIC0KPj4+Pj4gYW5kIHdlIGRvbid0IHdhbnQgdG8gZHJvcCBwYWNrZXRzIGlmIHdlIGNhbiBo
ZWxwIGl0LCBhbmQgc3VyZWx5IG5vdAo+Pj4+PiBlbnRlciBhbnkgZXJyb3Igc3RhdGVzLiAgSW4g
cGFydGljdWxhciBpdCBtaWdodCBiZSBlc3BlY2lhbGx5IHRyaWNreSBpZgo+Pj4+PiB3ZSB3cm90
ZSBpbnRvIHVzZXJzcGFjZSBtZW1vcnkgYW5kIGFyZSBub3cgdHJ5aW5nIHRvIGxvZyB0aGUgd3Jp
dGUuCj4+Pj4+IEkgZ3Vlc3Mgd2UgY2FuIGRpc2FibGUgdGhlIG9wdGltaXphdGlvbiBpZiBsb2cg
aXMgZW5hYmxlZD8pLgo+Pj4+IFRoaXMgbWF5IHdvcmsgYnV0IHJlcXVpcmVzIGEgbG90IG9mIGNo
YW5nZXMuCj4+PiBJIGFncmVlLgo+Pj4KPj4+PiBBbmQgYWN0dWFsbHkgaXQncyB0aGUgcHJpY2Ug
b2YKPj4+PiB1c2luZyB2cSBtdXRleC4KPj4+IE5vdCBzdXJlIHdoYXQncyBtZWFudCBoZXJlLgo+
Pgo+PiBJIG1lYW4gaWYgd2UgdXNlIHZxIG11dGV4LCBpdCBtZWFucyB0aGUgY3JpdGljYWwgc2Vj
dGlvbiB3YXMgaW5jcmVhc2VkIGFuZAo+PiB3ZSBuZWVkIHRvIGRlYWwgd2l0aCBzd2FwcGluZyB0
aGVuLgo+Pgo+Pgo+Pj4+IEFjdHVhbGx5LCB0aGUgY3JpdGljYWwgc2VjdGlvbiBzaG91bGQgYmUg
cmF0aGVyIHNtYWxsLCBlLmcKPj4+PiBqdXN0IGluc2lkZSBtZW1vcnkgYWNjZXNzb3JzLgo+Pj4g
QWxzbyB0cnVlLgo+Pj4KPj4+PiBJIHdvbmRlciB3aGV0aGVyIG9yIG5vdCBqdXN0IGRvIHN5bmNo
cm9uaXplIG91ciBzZWxmIGxpa2U6Cj4+Pj4KPj4+PiBzdGF0aWMgdm9pZCBpbmxpbmUgdmhvc3Rf
aW5jX3ZxX3JlZihzdHJ1Y3Qgdmhvc3RfdmlydHF1ZXVlICp2cSkKPj4+PiB7Cj4+Pj4gICDCoMKg
wqDCoMKgwqDCoCBpbnQgcmVmID0gUkVBRF9PTkNFKHZxLT5yZWYpOwo+Pj4+Cj4+Pj4gICDCoMKg
wqDCoMKgwqDCoCBXUklURV9PTkNFKHZxLT5yZWYsIHJlZiArIDEpOwo+Pj4+IHNtcF9ybWIoKTsK
Pj4+PiB9Cj4+Pj4KPj4+PiBzdGF0aWMgdm9pZCBpbmxpbmUgdmhvc3RfZGVjX3ZxX3JlZihzdHJ1
Y3Qgdmhvc3RfdmlydHF1ZXVlICp2cSkKPj4+PiB7Cj4+Pj4gICDCoMKgwqDCoMKgwqDCoCBpbnQg
cmVmID0gUkVBRF9PTkNFKHZxLT5yZWYpOwo+Pj4+Cj4+Pj4gc21wX3dtYigpOwo+Pj4+ICAgwqDC
oMKgwqDCoMKgwqAgV1JJVEVfT05DRSh2cS0+cmVmLCByZWYgLSAxKTsKPj4+PiB9Cj4+Pj4KPj4+
PiBzdGF0aWMgdm9pZCBpbmxpbmUgdmhvc3Rfd2FpdF9mb3JfcmVmKHN0cnVjdCB2aG9zdF92aXJ0
cXVldWUgKnZxKQo+Pj4+IHsKPj4+PiAgIMKgwqDCoMKgwqDCoMKgIHdoaWxlIChSRUFEX09OQ0Uo
dnEtPnJlZikpOwo+Pj4+IG1iKCk7Cj4+Pj4gfQo+Pj4gTG9va3MgZ29vZCBidXQgSSdkIGxpa2Ug
dG8gdGhpbmsgb2YgYSBzdHJhdGVneS9leGlzdGluZyBsb2NrIHRoYXQgbGV0IHVzCj4+PiBibG9j
ayBwcm9wZXJseSBhcyBvcHBvc2VkIHRvIHNwaW5uaW5nLCB0aGF0IHdvdWxkIGJlIG1vcmUgZnJp
ZW5kbHkgdG8KPj4+IGUuZy4gdGhlIHJlYWx0aW1lIHBhdGNoLgo+Pgo+PiBEb2VzIGl0IG1ha2Ug
c2Vuc2UgdG8gZGlzYWJsZSBwcmVlbXB0aW9uIGluIHRoZSBjcml0aWNhbCBzZWN0aW9uPyBUaGVu
IHdlCj4+IGRvbid0IG5lZWQgdG8gYmxvY2sgYW5kIHdlIGhhdmUgYSBkZXRlcm1pbmlzdGljIHRp
bWUgc3BlbnQgb24gbWVtb3J5Cj4+IGFjY3Nzb3JzPwo+IEhtbSBtYXliZS4gSSdtIGdldHRpbmcg
cmVhbGx5IG5lcnZpb3VzIGF0IHRoaXMgcG9pbnQgLSB3ZQo+IHNlZW0gdG8gYmUgdXNpbmcgZXZl
cnkgdHJpY2sgaW4gdGhlIGJvb2suCj4KClllcywgbG9va2luZyBhdCB0aGUgc3luY2hyb25pemF0
aW9uIGltcGxlbWVudGVkIGJ5IG90aGVyIE1NVSBub3RpZmllcnMuIApWaG9zdCBpcyBldmVuIHRo
ZSBzaW1wbGVzdC4KCgo+Pj4+IE9yIHVzaW5nIHNtcF9sb2FkX2FjcXVpcmUoKS9zbXBfc3RvcmVf
cmVsZWFzZSgpIGluc3RlYWQ/Cj4+Pj4KPj4+PiBUaGFua3MKPj4+IFRoZXNlIGFyZSBjaGVhcGVy
IG9uIHg4NiwgeWVzLgo+Pgo+PiBXaWxsIHVzZSB0aGlzLgo+Pgo+PiBUaGFua3MKPj4KPj4KPiBU
aGlzIGxvb2tzIHN1c3BpY2lvdXNseSBsaWtlIGEgc2VxbG9jayB0aG91Z2guCj4gQ2FuIHRoYXQg
YmUgdXNlZCBzb21laG93Pwo+CgpzZXFsb2NrIGRvZXMgbm90IHByb3ZpZGUgYSB3YXkgdG8gc3lu
Y2hyb25pemUgd2l0aCByZWFkZXJzLiBCdXQgSSBkaWQgCmJvcnJvdyBzb21lIGlkZWFzIGZyb20g
c2VxbG9jayBhbmQgcG9zdCBhIG5ldyB2ZXJzaW9uLgoKUGxlYXNlIHJldmlldy4KClRoYW5rcwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
