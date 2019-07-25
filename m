Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7D77510D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uw4oqi/0DcRL3ID9bjYP+Y+KBNAZheWEx3oR/tS9PVU=; b=tYeqjfuD0LP2FEHh08qEC0XjH
	ArNrb5IZKYhcAWFs5caCS1aCs8a2UFYuDYTw93hgKmHqgXa45WEO2g60Sio/qD2OkmrlzQoWXvpT/
	qNqy7ZBH5ZJPjUrqPUfa1DtDCAhpcwhKmFR6DkBcUdbq5IoGmcd67wNcQ3L+b3JY355q5foC8/iVy
	NvXeHqy9BPaaPEWiAaZCRqoU95YtcjX6/0vs8Aw1tvhiVZwvfuWp6tX9JuJNoVWFTBkj5iXpJm+e9
	3HCR+N6mUirhHdt9YoVBmx4CRVUIYVfoSYHLdxVj+tqJPRBz76+wo8mMpS1KORvDV8lR0DrqViWBt
	NJ6//HPGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqehM-0004q0-LP; Thu, 25 Jul 2019 14:26:24 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqegx-0004hZ-QO
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:26:01 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0E40A335E8;
 Thu, 25 Jul 2019 14:25:58 +0000 (UTC)
Received: from [10.72.12.18] (ovpn-12-18.pek2.redhat.com [10.72.12.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 910435D71A;
 Thu, 25 Jul 2019 14:25:48 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190723032024-mutt-send-email-mst@kernel.org>
 <1d14de4d-0133-1614-9f64-3ded381de04e@redhat.com>
 <20190723035725-mutt-send-email-mst@kernel.org>
 <3f4178f1-0d71-e032-0f1f-802428ceca59@redhat.com>
 <20190723051828-mutt-send-email-mst@kernel.org>
 <caff362a-e208-3468-3688-63e1d093a9d3@redhat.com>
 <20190725012149-mutt-send-email-mst@kernel.org>
 <55e8930c-2695-365f-a07b-3ad169654d28@redhat.com>
 <20190725042651-mutt-send-email-mst@kernel.org>
 <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
 <20190725092332-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
Date: Thu, 25 Jul 2019 22:25:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725092332-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Thu, 25 Jul 2019 14:25:58 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_072559_997118_4F475BFB 
X-CRM114-Status: GOOD (  18.87  )
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

Ck9uIDIwMTkvNy8yNSDkuIvljYg5OjI2LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4+IEV4
YWN0bHksIGFuZCB0aGF0J3MgdGhlIHJlYXNvbiBhY3R1YWxseSBJIHVzZSBzeW5jaHJvbml6ZV9y
Y3UoKSB0aGVyZS4KPj4KPj4gU28gdGhlIGNvbmNlcm4gaXMgc3RpbGwgdGhlIHBvc3NpYmxlIHN5
bmNocm9uaXplX2V4cGVkaXRlZCgpPwo+IEkgdGhpbmsgc3luY2hyb25pemVfc3JjdV9leHBlZGl0
ZWQuCj4KPiBzeW5jaHJvbml6ZV9leHBlZGl0ZWQgc2VuZHMgbG90cyBvZiBJUEkgYW5kIGlzIGJh
ZCBmb3IgcmVhbHRpbWUgVk1zLgo+Cj4+IENhbiBJIGRvIHRoaXMKPj4gb24gdGhyb3VnaCBhbm90
aGVyIHNlcmllcyBvbiB0b3Agb2YgdGhlIGluY29taW5nIFYyPwo+Pgo+PiBUaGFua3MKPj4KPiBU
aGUgcXVlc3Rpb24gaXMgdGhpczogaXMgdGhpcyBzdGlsbCBhIGdhaW4gaWYgd2Ugc3dpdGNoIHRv
IHRoZQo+IG1vcmUgZXhwZW5zaXZlIHNyY3U/IElmIHllcyB0aGVuIHdlIGNhbiBrZWVwIHRoZSBm
ZWF0dXJlIG9uLAoKCkkgdGhpbmsgd2Ugb25seSBjYXJlIGFib3V0IHRoZSBjb3N0IG9uIHNyY3Vf
cmVhZF9sb2NrKCkgd2hpY2ggbG9va3MgCnByZXR0eSB0aW55IGZvcm0gbXkgcG9pbnQgb2Ygdmll
dy4gV2hpY2ggaXMgYmFzaWNhbGx5IGEgUkVBRF9PTkNFKCkgKyAKV1JJVEVfT05DRSgpLgoKT2Yg
Y291cnNlIEkgY2FuIGJlbmNobWFyayB0byBzZWUgdGhlIGRpZmZlcmVuY2UuCgoKPiBpZiBub3Qg
d2UnbGwgcHV0IGl0IG9mZiB1bnRpbCBuZXh0IHJlbGVhc2UgYW5kIHRoaW5rCj4gb2YgYmV0dGVy
IHNvbHV0aW9ucy4gcmN1LT5zcmN1IGlzIGp1c3QgYSBmaW5kIGFuZCByZXBsYWNlLAo+IGRvbid0
IHNlZSB3aHkgd2UgbmVlZCB0byBkZWZlciB0aGF0LiBjYW4gYmUgYSBzZXBhcmF0ZSBwYXRjaAo+
IGZvciBzdXJlLCBidXQgd2UgbmVlZCB0byBrbm93IGhvdyB3ZWxsIGl0IHdvcmtzLgoKCkkgdGhp
bmsgSSBnZXQgaGVyZSwgbGV0IG1lIHRyeSB0byBkbyB0aGF0IGluIFYyIGFuZCBsZXQncyBzZWUg
dGhlIG51bWJlcnMuCgpUaGFua3MKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
