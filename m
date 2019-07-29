Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E481E787E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 11:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqlR/XxcANzy4ah/sFuCTdWhjH9qWEbxi4WyjoL+sjQ=; b=OWXzURR9t5zx68
	hskWtcGu2Yt66Sk0ibIjfMOgjszZ9WRrZ+rGtICUfBOqGelSSjJYT3+/q23xV/B8ZGJ+qgtak85D+
	A4nWwwZP6eFkXIPfDy54ta5/3C3LU1YYu83SZ4MgbZ3sEHvG5gKcUkTb3VlA6HDQDr4NpMHFmKXvq
	w8KNWaurUidMjsX8Ms6EZFp076+zjKYcMpIDNTHBIGFRw6U3hEZjXt+mJiC7sgSo41WdwfcTP7K49
	Oh7Ln21zg5UIv3R01b4gvILKwpF9JIfvPITtOFZ2uPQH0JAbIthIUuG7Og8LLEi5saFME+C3RVBqd
	sQp7DuGOPf/1ETNpHHKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs1VW-0001o0-HD; Mon, 29 Jul 2019 08:59:50 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs1VK-0001my-Un
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 08:59:40 +0000
Received: by mail-qt1-f193.google.com with SMTP id k10so58962177qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 01:59:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Q68Dj7R63I2Ecvb2PPGzHjYhrCQecwVv+3ZzbHMtRrM=;
 b=M1QjpdHB7WWifXPURrZAG5+F17usXKrCfrsFeEWgjaKc+OcGN5zT0P7Ls2h4glFJm4
 iM3Pc5uebrAORt366FKs5tyUJXBZnHwYT7n/32PxCdTl2U09HDfmbBVGEINl7amBDZIw
 jxgqEtJucLW0vUXfMALNvXRPVArzY6853rtv5MbRjFulF00O5hL9IX5kzhSmRtEvQIIG
 pj6GUS1ym/p/dwE9tCMuY+XdVFUceN2zeH3SMg/HrpxZyJuRO/WiPhB270AkKea2lPuC
 bGDlAb3TCd+OwlmBvhTQ8+EzOpIM+shHM8wGBGj3k1Ih2ccHQCNtMcT6KPC3JeB2U/zZ
 Z/8w==
X-Gm-Message-State: APjAAAVUeHQDvhUefQUWL9xz/gZGdFd2gdmBQ1O1/Px3873XqEIuonLT
 9gAu8nXojZmYKDmcGwOiQiBYKQ==
X-Google-Smtp-Source: APXvYqzdpBbLibFicHdiT5TefWqFoQxYcTCr3KhKgWnun67P5z4zFpu5Vd0tQv7j2SaN95sYflY5Ng==
X-Received: by 2002:aed:39e7:: with SMTP id m94mr80555924qte.0.1564390777624; 
 Mon, 29 Jul 2019 01:59:37 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 z1sm27810714qke.122.2019.07.29.01.59.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 01:59:36 -0700 (PDT)
Date: Mon, 29 Jul 2019 04:59:27 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190729045127-mutt-send-email-mst@kernel.org>
References: <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
 <20190725092332-mutt-send-email-mst@kernel.org>
 <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
 <20190726074644-mutt-send-email-mst@kernel.org>
 <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
 <20190726082837-mutt-send-email-mst@kernel.org>
 <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
 <aaefa93e-a0de-1c55-feb0-509c87aae1f3@redhat.com>
 <20190726094756-mutt-send-email-mst@kernel.org>
 <0792ee09-b4b7-673c-2251-e5e0ce0fbe32@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0792ee09-b4b7-673c-2251-e5e0ce0fbe32@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_015938_996706_03737890 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDE6NTQ6NDlQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjYg5LiL5Y2IOTo0OSwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gPiA+IE9rLCBsZXQgbWUgcmV0cnkgaWYgbmVjZXNzYXJ5IChidXQgSSBkbyByZW1lbWJl
ciBJIGVuZCB1cCB3aXRoIGRlYWRsb2Nrcwo+ID4gPiA+IGxhc3QgdHJ5KS4KPiA+ID4gT2ssIEkg
cGxheSBhIGxpdHRsZSB3aXRoIHRoaXMuIEFuZCBpdCB3b3JrcyBzbyBmYXIuIFdpbGwgZG8gbW9y
ZSB0ZXN0aW5nCj4gPiA+IHRvbW9ycm93Lgo+ID4gPiAKPiA+ID4gT25lIHJlYXNvbiBjb3VsZCBi
ZSBJIHN3aXRjaCB0byB1c2UgZ2V0X3VzZXJfcGFnZXNfZmFzdCgpIHRvCj4gPiA+IF9fZ2V0X3Vz
ZXJfcGFnZXNfZmFzdCgpIHdoaWNoIGRvZXNuJ3QgbmVlZCBtbWFwX3NlbS4KPiA+ID4gCj4gPiA+
IFRoYW5rcwo+ID4gT0sgdGhhdCBzb3VuZHMgZ29vZC4gSWYgd2UgYWxzbyBzZXQgYSBmbGFnIHRv
IG1ha2UKPiA+IHZob3N0X2V4Y2VlZHNfd2VpZ2h0IGV4aXQsIHRoZW4gSSB0aGluayBpdCB3aWxs
IGJlIGFsbCBnb29kLgo+IAo+IAo+IEFmdGVyIHNvbWUgZXhwZXJpbWVudHMsIEkgY2FtZSB1cCB0
d28gbWV0aG9kczoKPiAKPiAxKSBzd2l0Y2ggdG8gdXNlIHZxLT5tdXRleCwgdGhlbiB3ZSBtdXN0
IHRha2UgdGhlIHZxIGxvY2sgZHVyaW5nIHJhbmdlCj4gY2hlY2tpbmcgKGJ1dCBJIGRvbid0IHNl
ZSBvYnZpb3VzIHNsb3dkb3duIGZvciAxNnZjcHVzICsgMTZxdWV1ZXMpLiBTZXR0aW5nCj4gZmxh
Z3MgZHVyaW5nIHdlaWdodCBjaGVjayBzaG91bGQgd29yayBidXQgaXQgc3RpbGwgY2FuJ3QgYWRk
cmVzcyB0aGUgd29yc3QKPiBjYXNlOiB3YWl0IGZvciB0aGUgcGFnZSB0byBiZSBzd2FwcGVkIGlu
LiBJcyB0aGlzIGFjY2VwdGFibGU/Cj4gCj4gMikgdXNpbmcgY3VycmVudCBSQ1UgYnV0IHJlcGxh
Y2Ugc3luY2hyb25pemVfcmN1KCkgd2l0aCB2aG9zdF93b3JrX2ZsdXNoKCkuCj4gVGhlIHdvcnN0
IGNhc2UgaXMgdGhlIHNhbWUgYXMgMSkgYnV0IHdlIGNhbiBjaGVjayByYW5nZSB3aXRob3V0IGhv
bGRpbmcgYW55Cj4gbG9ja3MuCj4gCj4gV2hpY2ggb25lIGRpZCB5b3UgcHJlZmVyPwo+IAo+IFRo
YW5rcwoKSSB3b3VsZCByYXRoZXIgd2Ugc3RhcnQgd2l0aCAxIGFuZCBzd2l0Y2ggdG8gMiBhZnRl
ciB3ZQpjYW4gc2hvdyBzb21lIGdhaW4uCgpCdXQgdGhlIHdvcnN0IGNhc2UgbmVlZHMgdG8gYmUg
YWRkcmVzc2VkLiAgSG93IGFib3V0IHNlbmRpbmcgYSBzaWduYWwgdG8KdGhlIHZob3N0IHRocmVh
ZD8gIFdlIHdpbGwgbmVlZCB0byBmaXggdXAgZXJyb3IgaGFuZGxpbmcgKEkgdGhpbmsgdGhhdAph
dCB0aGUgbW9tZW50IGl0IHdpbGwgZXJyb3Igb3V0IGluIHRoYXQgY2FzZSwgaGFuZGxpbmcgdGhp
cyBhcyBFRkFVTFQgLQphbmQgd2UgZG9uJ3Qgd2FudCB0byBkcm9wIHBhY2tldHMgaWYgd2UgY2Fu
IGhlbHAgaXQsIGFuZCBzdXJlbHkgbm90CmVudGVyIGFueSBlcnJvciBzdGF0ZXMuICBJbiBwYXJ0
aWN1bGFyIGl0IG1pZ2h0IGJlIGVzcGVjaWFsbHkgdHJpY2t5IGlmCndlIHdyb3RlIGludG8gdXNl
cnNwYWNlIG1lbW9yeSBhbmQgYXJlIG5vdyB0cnlpbmcgdG8gbG9nIHRoZSB3cml0ZS4KSSBndWVz
cyB3ZSBjYW4gZGlzYWJsZSB0aGUgb3B0aW1pemF0aW9uIGlmIGxvZyBpcyBlbmFibGVkPykuCgot
LSAKTVNUCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
