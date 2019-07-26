Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63A0767A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sq4P/BkEpa9L6B2bScRdN0fRhRApczYksk3h87Lb7ZA=; b=rQOVn+eia20O7PWRjwimRZtf/
	r1horhSxJCNrZ7j8Gq8dJl5wIJ/BRNuumZHDnQ87tkT6GWCg3hlQaiycxHBhcqeKxZF3wlYU/eWue
	Cg7bZrJrvsQlaAA2pjEmA9uVuJqOyJdMJXATV3GEX8L2MWNi8Pi+EGkO0iwCRpUZugdibg0VmCi2O
	pcw+1xkUgmNVHergBFxvzR65uz/dFviKFuHpmKWQGX6Pu+juuoTcbjMrB++3fU6ZPnc/xSgGmuTL9
	T+EfBINhpKaGbb+Ux0m+Da6ZABx8e7mvawXRfxPJUgpxr44YSVhoOTIiZLyUgteVCW4Mnteey1a47
	fL7X29u0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0Ow-0000hJ-Ni; Fri, 26 Jul 2019 13:36:50 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0Oj-0000g7-HQ
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:36:38 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1DB4846671;
 Fri, 26 Jul 2019 13:36:35 +0000 (UTC)
Received: from [10.72.12.238] (ovpn-12-238.pek2.redhat.com [10.72.12.238])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0A8B06A238;
 Fri, 26 Jul 2019 13:36:19 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
From: Jason Wang <jasowang@redhat.com>
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
 <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
Message-ID: <aaefa93e-a0de-1c55-feb0-509c87aae1f3@redhat.com>
Date: Fri, 26 Jul 2019 21:36:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Fri, 26 Jul 2019 13:36:35 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_063637_611829_767766B9 
X-CRM114-Status: GOOD (  17.47  )
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

Ck9uIDIwMTkvNy8yNiDkuIvljYg4OjUzLCBKYXNvbiBXYW5nIHdyb3RlOgo+Cj4gT24gMjAxOS83
LzI2IOS4i+WNiDg6MzgsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4gT24gRnJpLCBKdWwg
MjYsIDIwMTkgYXQgMDg6MDA6NThQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToKPj4+IE9uIDIw
MTkvNy8yNiDkuIvljYg3OjQ5LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4+Pj4gT24gVGh1
LCBKdWwgMjUsIDIwMTkgYXQgMTA6MjU6MjVQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToKPj4+
Pj4gT24gMjAxOS83LzI1IOS4i+WNiDk6MjYsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
Pj4+PiBFeGFjdGx5LCBhbmQgdGhhdCdzIHRoZSByZWFzb24gYWN0dWFsbHkgSSB1c2Ugc3luY2hy
b25pemVfcmN1KCkgCj4+Pj4+Pj4gdGhlcmUuCj4+Pj4+Pj4KPj4+Pj4+PiBTbyB0aGUgY29uY2Vy
biBpcyBzdGlsbCB0aGUgcG9zc2libGUgc3luY2hyb25pemVfZXhwZWRpdGVkKCk/Cj4+Pj4+PiBJ
IHRoaW5rIHN5bmNocm9uaXplX3NyY3VfZXhwZWRpdGVkLgo+Pj4+Pj4KPj4+Pj4+IHN5bmNocm9u
aXplX2V4cGVkaXRlZCBzZW5kcyBsb3RzIG9mIElQSSBhbmQgaXMgYmFkIGZvciByZWFsdGltZSBW
TXMuCj4+Pj4+Pgo+Pj4+Pj4+IENhbiBJIGRvIHRoaXMKPj4+Pj4+PiBvbiB0aHJvdWdoIGFub3Ro
ZXIgc2VyaWVzIG9uIHRvcCBvZiB0aGUgaW5jb21pbmcgVjI/Cj4+Pj4+Pj4KPj4+Pj4+PiBUaGFu
a3MKPj4+Pj4+Pgo+Pj4+Pj4gVGhlIHF1ZXN0aW9uIGlzIHRoaXM6IGlzIHRoaXMgc3RpbGwgYSBn
YWluIGlmIHdlIHN3aXRjaCB0byB0aGUKPj4+Pj4+IG1vcmUgZXhwZW5zaXZlIHNyY3U/IElmIHll
cyB0aGVuIHdlIGNhbiBrZWVwIHRoZSBmZWF0dXJlIG9uLAo+Pj4+PiBJIHRoaW5rIHdlIG9ubHkg
Y2FyZSBhYm91dCB0aGUgY29zdCBvbiBzcmN1X3JlYWRfbG9jaygpIHdoaWNoIAo+Pj4+PiBsb29r
cyBwcmV0dHkKPj4+Pj4gdGlueSBmb3JtIG15IHBvaW50IG9mIHZpZXcuIFdoaWNoIGlzIGJhc2lj
YWxseSBhIFJFQURfT05DRSgpICsgCj4+Pj4+IFdSSVRFX09OQ0UoKS4KPj4+Pj4KPj4+Pj4gT2Yg
Y291cnNlIEkgY2FuIGJlbmNobWFyayB0byBzZWUgdGhlIGRpZmZlcmVuY2UuCj4+Pj4+Cj4+Pj4+
Cj4+Pj4+PiBpZiBub3Qgd2UnbGwgcHV0IGl0IG9mZiB1bnRpbCBuZXh0IHJlbGVhc2UgYW5kIHRo
aW5rCj4+Pj4+PiBvZiBiZXR0ZXIgc29sdXRpb25zLiByY3UtPnNyY3UgaXMganVzdCBhIGZpbmQg
YW5kIHJlcGxhY2UsCj4+Pj4+PiBkb24ndCBzZWUgd2h5IHdlIG5lZWQgdG8gZGVmZXIgdGhhdC4g
Y2FuIGJlIGEgc2VwYXJhdGUgcGF0Y2gKPj4+Pj4+IGZvciBzdXJlLCBidXQgd2UgbmVlZCB0byBr
bm93IGhvdyB3ZWxsIGl0IHdvcmtzLgo+Pj4+PiBJIHRoaW5rIEkgZ2V0IGhlcmUsIGxldCBtZSB0
cnkgdG8gZG8gdGhhdCBpbiBWMiBhbmQgbGV0J3Mgc2VlIHRoZSAKPj4+Pj4gbnVtYmVycy4KPj4+
Pj4KPj4+Pj4gVGhhbmtzCj4+Pgo+Pj4gSXQgbG9va3MgdG8gbWUgZm9yIHRyZWUgcmN1LCBpdHMg
c3JjdV9yZWFkX2xvY2soKSBoYXZlIGEgbWIoKSB3aGljaCAKPj4+IGlzIHRvbwo+Pj4gZXhwZW5z
aXZlIGZvciB1cy4KPj4gSSB3aWxsIHRyeSB0byBwb25kZXIgdXNpbmcgdnEgbG9jayBpbiBzb21l
IHdheS4KPj4gTWF5YmUgd2l0aCB0cnlsb2NrIHNvbWVob3cgLi4uCj4KPgo+IE9rLCBsZXQgbWUg
cmV0cnkgaWYgbmVjZXNzYXJ5IChidXQgSSBkbyByZW1lbWJlciBJIGVuZCB1cCB3aXRoIAo+IGRl
YWRsb2NrcyBsYXN0IHRyeSkuIAoKCk9rLCBJIHBsYXkgYSBsaXR0bGUgd2l0aCB0aGlzLiBBbmQg
aXQgd29ya3Mgc28gZmFyLiBXaWxsIGRvIG1vcmUgdGVzdGluZyAKdG9tb3Jyb3cuCgpPbmUgcmVh
c29uIGNvdWxkIGJlIEkgc3dpdGNoIHRvIHVzZSBnZXRfdXNlcl9wYWdlc19mYXN0KCkgdG8gCl9f
Z2V0X3VzZXJfcGFnZXNfZmFzdCgpIHdoaWNoIGRvZXNuJ3QgbmVlZCBtbWFwX3NlbS4KClRoYW5r
cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
