Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C7E7650E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YKXN9CRJTi03KsWUkvX2tDaIHsCX65SpA9iSx1+F8rQ=; b=Pl7A57r3GKobNfXvvuMjiAXuU
	tgHVTd721IwbFhFfRND6Q5wFKxPTdOGSPv/nQGjiAFfuEzFiaiPRvIJl1w41Xj4YuzmiwjdM0ztqL
	G8EWsUOeXZ5cW3EbVMfv5IH/nx5K73k51n51BZZrMKYvYcR+OceqI6+PW9oFei7MR5nipICHe/Lj+
	ovwLMt0mR/LpRTx7sEgwm7ss7t7tLWdYik7Xy2gJ8QuarDG9TNizh4hdxQQv4jRrEJeiose+E+SU/
	H635r+8fZFrn5SVxALppfaX6V72kxrG7dmdWlziDKkjaicGh9kfLojaQ5Cr8lMia/DpKuGf6felNl
	lyRHh9sWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyvP-0001VM-BD; Fri, 26 Jul 2019 12:02:15 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyuM-00010z-E0
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:01:11 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0724830C0A3B;
 Fri, 26 Jul 2019 12:01:08 +0000 (UTC)
Received: from [10.72.12.238] (ovpn-12-238.pek2.redhat.com [10.72.12.238])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0BBB55DE6F;
 Fri, 26 Jul 2019 12:00:59 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190723035725-mutt-send-email-mst@kernel.org>
 <3f4178f1-0d71-e032-0f1f-802428ceca59@redhat.com>
 <20190723051828-mutt-send-email-mst@kernel.org>
 <caff362a-e208-3468-3688-63e1d093a9d3@redhat.com>
 <20190725012149-mutt-send-email-mst@kernel.org>
 <55e8930c-2695-365f-a07b-3ad169654d28@redhat.com>
 <20190725042651-mutt-send-email-mst@kernel.org>
 <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
 <20190725092332-mutt-send-email-mst@kernel.org>
 <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
 <20190726074644-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
Date: Fri, 26 Jul 2019 20:00:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726074644-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Fri, 26 Jul 2019 12:01:09 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_050110_537183_F05CB7F6 
X-CRM114-Status: GOOD (  19.10  )
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

Ck9uIDIwMTkvNy8yNiDkuIvljYg3OjQ5LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
VGh1LCBKdWwgMjUsIDIwMTkgYXQgMTA6MjU6MjVQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzI1IOS4i+WNiDk6MjYsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
PiBFeGFjdGx5LCBhbmQgdGhhdCdzIHRoZSByZWFzb24gYWN0dWFsbHkgSSB1c2Ugc3luY2hyb25p
emVfcmN1KCkgdGhlcmUuCj4+Pj4KPj4+PiBTbyB0aGUgY29uY2VybiBpcyBzdGlsbCB0aGUgcG9z
c2libGUgc3luY2hyb25pemVfZXhwZWRpdGVkKCk/Cj4+PiBJIHRoaW5rIHN5bmNocm9uaXplX3Ny
Y3VfZXhwZWRpdGVkLgo+Pj4KPj4+IHN5bmNocm9uaXplX2V4cGVkaXRlZCBzZW5kcyBsb3RzIG9m
IElQSSBhbmQgaXMgYmFkIGZvciByZWFsdGltZSBWTXMuCj4+Pgo+Pj4+IENhbiBJIGRvIHRoaXMK
Pj4+PiBvbiB0aHJvdWdoIGFub3RoZXIgc2VyaWVzIG9uIHRvcCBvZiB0aGUgaW5jb21pbmcgVjI/
Cj4+Pj4KPj4+PiBUaGFua3MKPj4+Pgo+Pj4gVGhlIHF1ZXN0aW9uIGlzIHRoaXM6IGlzIHRoaXMg
c3RpbGwgYSBnYWluIGlmIHdlIHN3aXRjaCB0byB0aGUKPj4+IG1vcmUgZXhwZW5zaXZlIHNyY3U/
IElmIHllcyB0aGVuIHdlIGNhbiBrZWVwIHRoZSBmZWF0dXJlIG9uLAo+Pgo+PiBJIHRoaW5rIHdl
IG9ubHkgY2FyZSBhYm91dCB0aGUgY29zdCBvbiBzcmN1X3JlYWRfbG9jaygpIHdoaWNoIGxvb2tz
IHByZXR0eQo+PiB0aW55IGZvcm0gbXkgcG9pbnQgb2Ygdmlldy4gV2hpY2ggaXMgYmFzaWNhbGx5
IGEgUkVBRF9PTkNFKCkgKyBXUklURV9PTkNFKCkuCj4+Cj4+IE9mIGNvdXJzZSBJIGNhbiBiZW5j
aG1hcmsgdG8gc2VlIHRoZSBkaWZmZXJlbmNlLgo+Pgo+Pgo+Pj4gaWYgbm90IHdlJ2xsIHB1dCBp
dCBvZmYgdW50aWwgbmV4dCByZWxlYXNlIGFuZCB0aGluawo+Pj4gb2YgYmV0dGVyIHNvbHV0aW9u
cy4gcmN1LT5zcmN1IGlzIGp1c3QgYSBmaW5kIGFuZCByZXBsYWNlLAo+Pj4gZG9uJ3Qgc2VlIHdo
eSB3ZSBuZWVkIHRvIGRlZmVyIHRoYXQuIGNhbiBiZSBhIHNlcGFyYXRlIHBhdGNoCj4+PiBmb3Ig
c3VyZSwgYnV0IHdlIG5lZWQgdG8ga25vdyBob3cgd2VsbCBpdCB3b3Jrcy4KPj4KPj4gSSB0aGlu
ayBJIGdldCBoZXJlLCBsZXQgbWUgdHJ5IHRvIGRvIHRoYXQgaW4gVjIgYW5kIGxldCdzIHNlZSB0
aGUgbnVtYmVycy4KPj4KPj4gVGhhbmtzCgoKSXQgbG9va3MgdG8gbWUgZm9yIHRyZWUgcmN1LCBp
dHMgc3JjdV9yZWFkX2xvY2soKSBoYXZlIGEgbWIoKSB3aGljaCBpcyAKdG9vIGV4cGVuc2l2ZSBm
b3IgdXMuCgpJZiB3ZSBqdXN0IHdvcnJ5IGFib3V0IHRoZSBJUEksIGNhbiB3ZSBkbyBzb21ldGhp
bmcgbGlrZSBpbiAKdmhvc3RfaW52YWxpZGF0ZV92cV9zdGFydCgpPwoKIMKgwqDCoMKgwqDCoMKg
IGlmIChtYXApIHsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBJbiBvcmRlciB0
byBhdm9pZCBwb3NzaWJsZSBJUElzIHdpdGgKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICogc3luY2hyb25pemVfcmN1X2V4cGVkaXRlZCgpIHdlIHVzZSBjYWxsX3JjdSgpICsKIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogY29tcGxldGlvbi4KKi8KaW5pdF9jb21w
bGV0aW9uKCZjLmNvbXBsZXRpb24pOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNh
bGxfcmN1KCZjLnJjdV9oZWFkLCB2aG9zdF9maW5pc2hfdnFfaW52YWxpZGF0aW9uKTsKd2FpdF9m
b3JfY29tcGxldGlvbigmYy5jb21wbGV0aW9uKTsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB2aG9zdF9zZXRfbWFwX2RpcnR5KHZxLCBtYXAsIGluZGV4KTsKdmhvc3RfbWFwX3VucHJl
ZmV0Y2gobWFwKTsKIMKgwqDCoMKgwqDCoMKgIH0KCj8KCgo+IFRoZXJlJ3Mgb25lIG90aGVyIHRo
aW5nIHRoYXQgYm90aGVycyBtZSwgYW5kIHRoYXQgaXMgdGhhdAo+IGZvciBsYXJnZSByaW5ncyB3
aGljaCBhcmUgbm90IHBoeXNpY2FsbHkgY29udGlndW91cwo+IHdlIGRvbid0IGltcGxlbWVudCB0
aGUgb3B0aW1pemF0aW9uLgo+Cj4gRm9yIHN1cmUsIHRoYXQgY2FuIHdhaXQsIGJ1dCBJIHRoaW5r
IGV2ZW50dWFsbHkgd2Ugc2hvdWxkCj4gdm1hcCBsYXJnZSByaW5ncy4KCgpZZXMsIHdvcnRoIHRv
IHRyeS4gQnV0IHVzaW5nIGRpcmVjdCBtYXAgaGFzIGl0cyBvd24gYWR2YW50YWdlOiBpdCBjYW4g
CnVzZSBodWdlcGFnZSB0aGF0IHZtYXAgY2FuJ3QKClRoYW5rcwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
