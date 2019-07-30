Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDD77A2C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 10:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cHOvrw1z/OKVvp//C9+tqEJrMfxgnWzobDfjROsKo4w=; b=d6qHvuw7o81BgdNcR0W2aSf5H
	bw5Dk2pbiVgjRfYUXUEL6LGGIbJvp3haXzpxxXBrguDYDvkPtScURFyXGwgVpLpCeTLcylQ1op99C
	gNUp7/KjrsPS+/G9WFE4lFqVIxCr6OwukJ7phybsq3sRQo4NKPBpKPsJmomRPl+BZe/wJPjFNRecc
	GDKregkq7BxIHi8MwiVRsLKxoakvq/0oo1MF2fZeyJaIDMI4ZFOXKaiC+JVe7xwB6858mSCQM8GZQ
	0czTo0xDGuPDWRqIbBVhIqUGxWN+Va0/ALVBTtt4OrdS/svPenrZaP3E3v4/Bbkq8NRGCqK7LXowD
	7Es7uWCgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsN7K-0001Dg-L6; Tue, 30 Jul 2019 08:04:18 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsN70-0001DM-DS
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 08:03:59 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5026330C5843;
 Tue, 30 Jul 2019 08:03:57 +0000 (UTC)
Received: from [10.72.12.185] (ovpn-12-185.pek2.redhat.com [10.72.12.185])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D89B65D6A5;
 Tue, 30 Jul 2019 08:03:46 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
From: Jason Wang <jasowang@redhat.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
 <20190726074644-mutt-send-email-mst@kernel.org>
 <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
 <20190726082837-mutt-send-email-mst@kernel.org>
 <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
 <aaefa93e-a0de-1c55-feb0-509c87aae1f3@redhat.com>
 <20190726094756-mutt-send-email-mst@kernel.org>
 <0792ee09-b4b7-673c-2251-e5e0ce0fbe32@redhat.com>
 <20190729045127-mutt-send-email-mst@kernel.org>
 <4d43c094-44ed-dbac-b863-48fc3d754378@redhat.com>
 <20190729104028-mutt-send-email-mst@kernel.org>
 <96b1d67c-3a8d-1224-e9f0-5f7725a3dc10@redhat.com>
Message-ID: <fc4cf42d-ea06-f405-b3ff-0579cf67e4ec@redhat.com>
Date: Tue, 30 Jul 2019 16:03:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <96b1d67c-3a8d-1224-e9f0-5f7725a3dc10@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 30 Jul 2019 08:03:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_010358_475065_3AC3CCEF 
X-CRM114-Status: GOOD (  12.74  )
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

Ck9uIDIwMTkvNy8zMCDkuIvljYgzOjQ0LCBKYXNvbiBXYW5nIHdyb3RlOgo+Pj4KPj4+IH0KPj4g
TG9va3MgZ29vZCBidXQgSSdkIGxpa2UgdG8gdGhpbmsgb2YgYSBzdHJhdGVneS9leGlzdGluZyBs
b2NrIHRoYXQgbGV0IHVzCj4+IGJsb2NrIHByb3Blcmx5IGFzIG9wcG9zZWQgdG8gc3Bpbm5pbmcs
IHRoYXQgd291bGQgYmUgbW9yZSBmcmllbmRseSB0bwo+PiBlLmcuIHRoZSByZWFsdGltZSBwYXRj
aC4KPgo+Cj4gRG9lcyBpdCBtYWtlIHNlbnNlIHRvIGRpc2FibGUgcHJlZW1wdGlvbiBpbiB0aGUg
Y3JpdGljYWwgc2VjdGlvbj8gVGhlbiAKPiB3ZSBkb24ndCBuZWVkIHRvIGJsb2NrIGFuZCB3ZSBo
YXZlIGEgZGV0ZXJtaW5pc3RpYyB0aW1lIHNwZW50IG9uIAo+IG1lbW9yeSBhY2Nzc29ycz8KCgpP
aywgdG91Y2hpbmcgcHJlZW1wdCBjb3VudGVyIHNlZW1zIGEgbGl0dGxlIGJpdCBleHBlbnNpdmUg
aW4gdGhlIGZhc3QgCnBhdGguIFdpbGwgdHJ5IGZvciBibG9ja2luZy4KClRoYW5rcwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
