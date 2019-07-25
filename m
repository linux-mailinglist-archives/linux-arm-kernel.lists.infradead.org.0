Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD3674857
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 09:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6nj0ux2Oetd8we+yituNqk7BdurKmKZYgh8ak2L+2ew=; b=j1EyKGiTqzqa2kmY5xmuuji5L
	nBMgsIegDtVw/2gTgBG/57VNtqhFn6RE4d3zDrkQ4T0T6GlXQXzphwkeBmuHaFDp6V2hQlxwDt9ux
	3Tu0yVyEWPtmv3stE64XFfIdg/CV2KJ9t3P8o5C06zvm9GjA+CgPOwEcjQnQ3OSoHUUbCRbHWzsQo
	3Q8IEIuM12w0oVqq0t3YTD1z20IzOOh16+jQrFDTybTUKCtt9iE+NgRg8bnY8rj7ViFIYRprQZW0A
	mBXyzDQwnFlqskIHWAOsIPC9mweaulzA7oY32NygW2rJqWMjZD0Ka9wRAz3oNlrWTgp3i9fQf3k4o
	YIkGB21BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqYQa-0007KC-BI; Thu, 25 Jul 2019 07:44:40 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqYQM-0007JI-3C
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 07:44:28 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AD73530917AF;
 Thu, 25 Jul 2019 07:44:21 +0000 (UTC)
Received: from [10.72.12.18] (ovpn-12-18.pek2.redhat.com [10.72.12.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B998060852;
 Thu, 25 Jul 2019 07:44:04 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190722040230-mutt-send-email-mst@kernel.org>
 <4bd2ff78-6871-55f2-44dc-0982ffef3337@redhat.com>
 <20190723010019-mutt-send-email-mst@kernel.org>
 <b4696f2e-678a-bdb2-4b7c-fb4ce040ec2a@redhat.com>
 <20190723032024-mutt-send-email-mst@kernel.org>
 <1d14de4d-0133-1614-9f64-3ded381de04e@redhat.com>
 <20190723035725-mutt-send-email-mst@kernel.org>
 <3f4178f1-0d71-e032-0f1f-802428ceca59@redhat.com>
 <20190723051828-mutt-send-email-mst@kernel.org>
 <caff362a-e208-3468-3688-63e1d093a9d3@redhat.com>
 <20190725012149-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <55e8930c-2695-365f-a07b-3ad169654d28@redhat.com>
Date: Thu, 25 Jul 2019 15:43:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725012149-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 25 Jul 2019 07:44:22 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_004426_297035_D3227551 
X-CRM114-Status: GOOD (  26.46  )
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

Ck9uIDIwMTkvNy8yNSDkuIvljYgxOjUyLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
VHVlLCBKdWwgMjMsIDIwMTkgYXQgMDk6MzE6MzVQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzIzIOS4i+WNiDU6MjYsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
IE9uIFR1ZSwgSnVsIDIzLCAyMDE5IGF0IDA0OjQ5OjAxUE0gKzA4MDAsIEphc29uIFdhbmcgd3Jv
dGU6Cj4+Pj4gT24gMjAxOS83LzIzIOS4i+WNiDQ6MTAsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90
ZToKPj4+Pj4gT24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDM6NTM6MDZQTSArMDgwMCwgSmFzb24g
V2FuZyB3cm90ZToKPj4+Pj4+IE9uIDIwMTkvNy8yMyDkuIvljYgzOjIzLCBNaWNoYWVsIFMuIFRz
aXJraW4gd3JvdGU6Cj4+Pj4+Pj4+PiBSZWFsbHkgbGV0J3MganVzdCB1c2Uga2ZyZWVfcmN1LiBJ
dCdzIHdheSBjbGVhbmVyOiBmaXJlIGFuZCBmb3JnZXQuCj4+Pj4+Pj4+IExvb2tzIG5vdCwgeW91
IG5lZWQgcmF0ZSBsaW1pdCB0aGUgZmlyZSBhcyB5b3UndmUgZmlndXJlZCBvdXQ/Cj4+Pj4+Pj4g
U2VlIHRoZSBkaXNjdXNzaW9uIHRoYXQgZm9sbG93ZWQuIEJhc2ljYWxseSBubywgaXQncyBnb29k
IGVub3VnaAo+Pj4+Pj4+IGFscmVhZHkgYW5kIGlzIG9ubHkgZ29pbmcgdG8gYmUgYmV0dGVyLgo+
Pj4+Pj4+Cj4+Pj4+Pj4+IEFuZCBpbiBmYWN0LAo+Pj4+Pj4+PiB0aGUgc3luY2hyb25pemF0aW9u
IGlzIG5vdCBldmVuIG5lZWRlZCwgZG9lcyBpdCBoZWxwIGlmIEkgbGVhdmUgYSBjb21tZW50IHRv
Cj4+Pj4+Pj4+IGV4cGxhaW4/Cj4+Pj4+Pj4gTGV0J3MgdHJ5IHRvIGZpZ3VyZSBpdCBvdXQgaW4g
dGhlIG1haWwgZmlyc3QuIEknbSBwcmV0dHkgc3VyZSB0aGUKPj4+Pj4+PiBjdXJyZW50IGxvZ2lj
IGlzIHdyb25nLgo+Pj4+Pj4gSGVyZSBpcyB3aGF0IHRoZSBjb2RlIHdoYXQgdG8gYWNoaWV2ZToK
Pj4+Pj4+Cj4+Pj4+PiAtIFRoZSBtYXAgd2FzIHByb3RlY3RlZCBieSBSQ1UKPj4+Pj4+Cj4+Pj4+
PiAtIFdyaXRlcnMgYXJlOiBNTVUgbm90aWZpZXIgaW52YWxpZGF0aW9uIGNhbGxiYWNrcywgZmls
ZSBvcGVyYXRpb25zIChpb2N0bHMKPj4+Pj4+IGV0YyksIG1ldGFfcHJlZmV0Y2ggKGRhdGFwYXRo
KQo+Pj4+Pj4KPj4+Pj4+IC0gUmVhZGVycyBhcmU6IG1lbW9yeSBhY2Nlc3Nvcgo+Pj4+Pj4KPj4+
Pj4+IFdyaXRlciBhcmUgc3luY2hyb25pemVkIHRocm91Z2ggbW11X2xvY2suIFJDVSBpcyB1c2Vk
IHRvIHN5bmNocm9uaXplZAo+Pj4+Pj4gYmV0d2VlbiB3cml0ZXJzIGFuZCByZWFkZXJzLgo+Pj4+
Pj4KPj4+Pj4+IFRoZSBzeW5jaHJvbml6ZV9yY3UoKSBpbiB2aG9zdF9yZXNldF92cV9tYXBzKCkg
d2FzIHVzZWQgdG8gc3luY2hyb25pemVkIGl0Cj4+Pj4+PiB3aXRoIHJlYWRlcnMgKG1lbW9yeSBh
Y2Nlc3NvcnMpIGluIHRoZSBwYXRoIG9mIGZpbGUgb3BlcmF0aW9ucy4gQnV0IGluIHRoaXMKPj4+
Pj4+IGNhc2UsIHZxLT5tdXRleCB3YXMgYWxyZWFkeSBoZWxkLCB0aGlzIG1lYW5zIGl0IGhhcyBi
ZWVuIHNlcmlhbGl6ZWQgd2l0aAo+Pj4+Pj4gbWVtb3J5IGFjY2Vzc29yLiBUaGF0J3Mgd2h5IEkg
dGhpbmsgaXQgY291bGQgYmUgcmVtb3ZlZCBzYWZlbHkuCj4+Pj4+Pgo+Pj4+Pj4gQW55dGhpbmcg
SSBtaXNzIGhlcmU/Cj4+Pj4+Pgo+Pj4+PiBTbyBpbnZhbGlkYXRlIGNhbGxiYWNrcyBuZWVkIHRv
IHJlc2V0IHRoZSBtYXAsIGFuZCB0aGV5IGRvCj4+Pj4+IG5vdCBoYXZlIHZxIG11dGV4LiBIb3cg
Y2FuIHRoZXkgZG8gdGhpcyBhbmQgZnJlZQo+Pj4+PiB0aGUgbWFwIHNhZmVseT8gVGhleSBuZWVk
IHN5bmNocm9uaXplX3JjdSBvciBrZnJlZV9yY3UgcmlnaHQ/Cj4+Pj4gSW52YWxpZGF0aW9uIGNh
bGxiYWNrcyBuZWVkIGJ1dCBmaWxlIG9wZXJhdGlvbnMgKGUuZyBpb2N0bCkgbm90Lgo+Pj4+Cj4+
Pj4KPj4+Pj4gQW5kIEkgd29ycnkgc29tZXdoYXQgdGhhdCBzeW5jaHJvbml6ZV9yY3UgaW4gYW4g
TU1VIG5vdGlmaWVyCj4+Pj4+IGlzIGEgcHJvYmxlbSwgTU1VIG5vdGlmaWVycyBhcmUgc3VwcG9z
ZWQgdG8gYmUgcXVpY2s6Cj4+Pj4gTG9va3Mgbm90LCBzaW5jZSBpdCBjYW4gYWxsb3cgdG8gYmUg
YmxvY2tlZCBhbmQgbG90cyBvZiBkcml2ZXIgZGVwZW5kcyBvbgo+Pj4+IHRoaXMuIChFLmcgbW11
X25vdGlmaWVyX3JhbmdlX2Jsb2NrYWJsZSgpKS4KPj4+IFJpZ2h0LCB0aGV5IGNhbiBibG9jay4g
U28gd2h5IGRvbid0IHdlIHRha2UgYSBWUSBtdXRleCBhbmQgYmUKPj4+IGRvbmUgd2l0aCBpdCB0
aGVuPyBObyBSQ1UgdHJpY2tzLgo+Pgo+PiBUaGlzIGlzIGhvdyBJIHdhbnQgdG8gZ28gd2l0aCBS
RkMgYW5kIFYxLiBCdXQgSSBlbmQgdXAgd2l0aCBkZWFkbG9jayBiZXR3ZWVuCj4+IHZxIGxvY2tz
IGFuZCBzb21lIE1NIGludGVybmFsIGxvY2tzLiBTbyBJIGRlY2lkZSB0byB1c2UgUkNVIHdoaWNo
IGlzIDEwMCUKPj4gdW5kZXIgdGhlIGNvbnRyb2wgb2Ygdmhvc3QuCj4+Cj4+IFRoYW5rcwo+IEFu
ZCBJIGd1ZXNzIHRoZSBkZWFkbG9jayBpcyBiZWNhdXNlIEdVUCBpcyB0YWtpbmcgbW11IGxvY2tz
IHdoaWNoIGFyZQo+IHRha2VuIG9uIG1tdSBub3RpZmllciBwYXRoLCByaWdodD8KCgpZZXMsIGJ1
dCBpdCdzIG5vdCB0aGUgb25seSBsb2NrLiBJIGRvbid0IHJlbWVtYmVyIHRoZSBkZXRhaWxzLCBi
dXQgSSBjYW4gCmNvbmZpcm0gSSBtZWV0IGlzc3VlcyB3aXRoIG9uZSBvciB0d28gb3RoZXIgbG9j
a3MuCgoKPiAgICBIb3cgYWJvdXQgd2UgYWRkIGEgc2VxbG9jayBhbmQgdGFrZQo+IHRoYXQgaW4g
aW52YWxpZGF0ZSBjYWxsYmFja3M/ICBXZSBjYW4gdGhlbiBkcm9wIHRoZSBWUSBsb2NrIGJlZm9y
ZSBHVVAsCj4gYW5kIHRha2UgaXQgYWdhaW4gaW1tZWRpYXRlbHkgYWZ0ZXIuCj4KPiBzb21ldGhp
bmcgbGlrZQo+IAlpZiAoIXZxX21ldGFfbWFwcGVkKHZxKSkgewo+IAkJdnFfbWV0YV9zZXR1cCgm
dWFkZHJzKTsKPiAJCW11dGV4X3VubG9jayh2cS0+bXV0ZXgpCj4gCQl2cV9tZXRhX21hcCgmdWFk
ZHJzKTsKCgpUaGUgcHJvYmxlbSBpcyB0aGUgdnEgYWRkcmVzcyBjb3VsZCBiZSBjaGFuZ2VkIGF0
IHRoaXMgdGltZS4KCgo+IAkJbXV0ZXhfbG9jayh2cS0+bXV0ZXgpCj4KPiAJCS8qIHJlY2hlY2sg
Ym90aCBzb2NrLT5wcml2YXRlX2RhdGEgYW5kIHNlcWxvY2sgY291bnQuICovCj4gCQlpZiBjaGFu
Z2VkIC0gYmFpbCBvdXQKPiAJfQo+Cj4gQW5kIGFsc28gcmVxdWlyZXMgdGhhdCBWUSB1YWRkcnMg
aXMgZGVmaW5lZCBsaWtlIHRoaXM6Cj4gLSB3cml0ZXJzIG11c3QgaGF2ZSBib3RoIHZxIG11dGV4
IGFuZCBkZXYgbXV0ZXgKPiAtIHJlYWRlcnMgbXVzdCBoYXZlIGVpdGhlciB2cSBtdXRleCBvciBk
ZXYgbXV0ZXgKPgo+Cj4gVGhhdCdzIGEgYmlnIGNoYW5nZSB0aG91Z2guIEZvciBub3csIGhvdyBh
Ym91dCBzd2l0Y2hpbmcgdG8gYSBwZXItdnEgU1JDVT8KPiBUaGF0IGlzIG9ubHkgYSBsaXR0bGUg
Yml0IG1vcmUgZXhwZW5zaXZlIHRoYW4gUkNVLCBhbmQgd2UKPiBjYW4gdXNlIHN5bmNocm9uaXpl
X3NyY3VfZXhwZWRpdGVkLgo+CgpDb25zaWRlciB3ZSBzd2l0Y2ggdG8gdXNlIGtmcmVlX3JjdSgp
LCB3aGF0J3MgdGhlIGFkdmFudGFnZSBvZiBwZXItdnEgU1JDVT8KClRoYW5rcwoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
