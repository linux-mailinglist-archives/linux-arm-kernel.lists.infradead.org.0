Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB71B784A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 07:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CwiYbI20w5J6arvH1d1+6ou82C3pygxSYKkJ6HyDY1E=; b=e4qaBczJQccRpQ3v5kA09EDlB
	Z1sACMKZo3V7Z5nBcup1ErET9iW28g01JSbnmpFJyiZbkLeWSqeJfE1yACcUU+AlTXaQ7j3HkKJxE
	xwQnOoEd4LjT9Wh6acVskm1UDqCvt/MBzwVjTaO58biAh5H8CLjN4Uw9uoiK992ye7KvRq7GzzYcw
	2e3IfgNga/35roomgAgwY1cmLXWN76nrrG2rEjq8LJQSWCpx4qsOJg4NO8BfbgusC8yFJz4nvyAkR
	jQGCzf9XIXjzqNHMbZQJ7nBK2MX4qNo7wMuPRt0m0i8XLX7huPueUVYnILZq2P+CkQlHmvz5zP450
	qVnrZ0nOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrydB-0006RU-0F; Mon, 29 Jul 2019 05:55:33 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hryci-0005nM-Jk
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 05:55:06 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3B5AF30BD1C0;
 Mon, 29 Jul 2019 05:55:02 +0000 (UTC)
Received: from [10.72.12.53] (ovpn-12-53.pek2.redhat.com [10.72.12.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3C5D55D9C3;
 Mon, 29 Jul 2019 05:54:50 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <55e8930c-2695-365f-a07b-3ad169654d28@redhat.com>
 <20190725042651-mutt-send-email-mst@kernel.org>
 <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
 <20190725092332-mutt-send-email-mst@kernel.org>
 <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
 <20190726074644-mutt-send-email-mst@kernel.org>
 <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
 <20190726082837-mutt-send-email-mst@kernel.org>
 <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
 <aaefa93e-a0de-1c55-feb0-509c87aae1f3@redhat.com>
 <20190726094756-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <0792ee09-b4b7-673c-2251-e5e0ce0fbe32@redhat.com>
Date: Mon, 29 Jul 2019 13:54:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726094756-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 29 Jul 2019 05:55:02 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_225504_679222_0EB0FC4B 
X-CRM114-Status: GOOD (  14.82  )
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

Ck9uIDIwMTkvNy8yNiDkuIvljYg5OjQ5LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4+PiBP
aywgbGV0IG1lIHJldHJ5IGlmIG5lY2Vzc2FyeSAoYnV0IEkgZG8gcmVtZW1iZXIgSSBlbmQgdXAg
d2l0aCBkZWFkbG9ja3MKPj4+IGxhc3QgdHJ5KS4KPj4gT2ssIEkgcGxheSBhIGxpdHRsZSB3aXRo
IHRoaXMuIEFuZCBpdCB3b3JrcyBzbyBmYXIuIFdpbGwgZG8gbW9yZSB0ZXN0aW5nCj4+IHRvbW9y
cm93Lgo+Pgo+PiBPbmUgcmVhc29uIGNvdWxkIGJlIEkgc3dpdGNoIHRvIHVzZSBnZXRfdXNlcl9w
YWdlc19mYXN0KCkgdG8KPj4gX19nZXRfdXNlcl9wYWdlc19mYXN0KCkgd2hpY2ggZG9lc24ndCBu
ZWVkIG1tYXBfc2VtLgo+Pgo+PiBUaGFua3MKPiBPSyB0aGF0IHNvdW5kcyBnb29kLiBJZiB3ZSBh
bHNvIHNldCBhIGZsYWcgdG8gbWFrZQo+IHZob3N0X2V4Y2VlZHNfd2VpZ2h0IGV4aXQsIHRoZW4g
SSB0aGluayBpdCB3aWxsIGJlIGFsbCBnb29kLgoKCkFmdGVyIHNvbWUgZXhwZXJpbWVudHMsIEkg
Y2FtZSB1cCB0d28gbWV0aG9kczoKCjEpIHN3aXRjaCB0byB1c2UgdnEtPm11dGV4LCB0aGVuIHdl
IG11c3QgdGFrZSB0aGUgdnEgbG9jayBkdXJpbmcgcmFuZ2UgCmNoZWNraW5nIChidXQgSSBkb24n
dCBzZWUgb2J2aW91cyBzbG93ZG93biBmb3IgMTZ2Y3B1cyArIDE2cXVldWVzKS4gClNldHRpbmcg
ZmxhZ3MgZHVyaW5nIHdlaWdodCBjaGVjayBzaG91bGQgd29yayBidXQgaXQgc3RpbGwgY2FuJ3Qg
YWRkcmVzcyAKdGhlIHdvcnN0IGNhc2U6IHdhaXQgZm9yIHRoZSBwYWdlIHRvIGJlIHN3YXBwZWQg
aW4uIElzIHRoaXMgYWNjZXB0YWJsZT8KCjIpIHVzaW5nIGN1cnJlbnQgUkNVIGJ1dCByZXBsYWNl
IHN5bmNocm9uaXplX3JjdSgpIHdpdGggCnZob3N0X3dvcmtfZmx1c2goKS4gVGhlIHdvcnN0IGNh
c2UgaXMgdGhlIHNhbWUgYXMgMSkgYnV0IHdlIGNhbiBjaGVjayAKcmFuZ2Ugd2l0aG91dCBob2xk
aW5nIGFueSBsb2Nrcy4KCldoaWNoIG9uZSBkaWQgeW91IHByZWZlcj8KClRoYW5rcwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
