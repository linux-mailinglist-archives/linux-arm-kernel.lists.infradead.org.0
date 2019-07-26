Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F9976927
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:50:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXG0k9AjSgDPn7UkLTO8mzQ4sfI1v91kpRkKjk8r5DA=; b=MqBDHyLA0t+qqk
	P+GowVR+xBifD0L2rqJKog4j8vCOxQ2pSI5wdmOjKmbZii0ZK1txPtCLLVXpEawQxftvXZjOsSADX
	W38xuNcwiwGnmMUxSn+F2XZENRZ8+4sgxq3qR03FFbrLFY79+h1jYpJTlEkC02qqpS6mqxrIBO0FE
	Uw2PA6o3+nSIPl23bkbPNgjc21ShcmoUH5D1A5MFg8x5TQvSM66Qow+rFXmDVdKIvRtZr6hswd5Kd
	SVy3ypeAiEWeKjQhiyJI6+4UTAaePd8DSW3oGwYAlYaCAE2xc89rhyXM4i/kxD5fj9BB7gMnaQ/fd
	l2hLqdku3e5ob0EMAVFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0bt-0005tc-1W; Fri, 26 Jul 2019 13:50:13 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0bV-0005sw-K4
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:49:50 +0000
Received: by mail-qt1-f194.google.com with SMTP id l9so52585434qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 06:49:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Arc7jiA/gNfqVVW7QNfgaMfkpV6mHYMiv3nUsNQh21Q=;
 b=VrrHDHNpsc+vyibC8NlSUPgsG9JCO0Ra8feYhaHNvaUFlOOQD9pKz80Q2PQmFvbrWG
 A+U3q8jdiLPzn5eZfyUift2T1qYz+SABAKPMStjKxVMtcAWa1Hyg9dnOErO0jpnB2LKC
 0TJpeO9ZekzlyeUI0llTQlYA5uKRtqCtr5vULefTswKG/DuwCzXHunycEFh1pKvdJsFw
 uvAQPGqmAcZS/QRTbMpbgEE9SaTdhnJqIT9MhK8rhgEIg1p468zInuchzjHEv/sR1NyY
 uAjwcwl2+yZUxNBcxaJ+vp4BU2MoD3ioF5yfOwCc2qMHGpiRX9q899HLlgQ9EqTANUga
 t/9g==
X-Gm-Message-State: APjAAAUJ+NeiHqCnjiixmc2nngzZMzWMKJM3wJrkhA1VoWlLNiALB4jd
 giHW243KBDjBcwZZowD5q98yDA==
X-Google-Smtp-Source: APXvYqwJQHLCc1j1lFY5aAZTn5kwYloU8xFZNwjN11XBjJ1dY1OXNTBegRGc33x5aUh2wiZJ7uMG3w==
X-Received: by 2002:a0c:9233:: with SMTP id a48mr67054287qva.66.1564148988892; 
 Fri, 26 Jul 2019 06:49:48 -0700 (PDT)
Received: from redhat.com ([212.92.104.165])
 by smtp.gmail.com with ESMTPSA id w19sm20959381qkj.66.2019.07.26.06.49.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 06:49:48 -0700 (PDT)
Date: Fri, 26 Jul 2019 09:49:39 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190726094756-mutt-send-email-mst@kernel.org>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aaefa93e-a0de-1c55-feb0-509c87aae1f3@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_064949_660978_CDC2F7DD 
X-CRM114-Status: GOOD (  24.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
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

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDk6MzY6MThQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjYg5LiL5Y2IODo1MywgSmFzb24gV2FuZyB3cm90ZToKPiA+IAo+
ID4gT24gMjAxOS83LzI2IOS4i+WNiDg6MzgsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPiA+
ID4gT24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDg6MDA6NThQTSArMDgwMCwgSmFzb24gV2FuZyB3
cm90ZToKPiA+ID4gPiBPbiAyMDE5LzcvMjYg5LiL5Y2INzo0OSwgTWljaGFlbCBTLiBUc2lya2lu
IHdyb3RlOgo+ID4gPiA+ID4gT24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMTA6MjU6MjVQTSArMDgw
MCwgSmFzb24gV2FuZyB3cm90ZToKPiA+ID4gPiA+ID4gT24gMjAxOS83LzI1IOS4i+WNiDk6MjYs
IE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPiA+ID4gPiA+ID4gPiA+IEV4YWN0bHksIGFuZCB0
aGF0J3MgdGhlIHJlYXNvbiBhY3R1YWxseSBJIHVzZQo+ID4gPiA+ID4gPiA+ID4gc3luY2hyb25p
emVfcmN1KCkgdGhlcmUuCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+IFNvIHRoZSBj
b25jZXJuIGlzIHN0aWxsIHRoZSBwb3NzaWJsZSBzeW5jaHJvbml6ZV9leHBlZGl0ZWQoKT8KPiA+
ID4gPiA+ID4gPiBJIHRoaW5rIHN5bmNocm9uaXplX3NyY3VfZXhwZWRpdGVkLgo+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+IHN5bmNocm9uaXplX2V4cGVkaXRlZCBzZW5kcyBsb3RzIG9mIElQ
SSBhbmQgaXMgYmFkIGZvciByZWFsdGltZSBWTXMuCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
ID4gPiBDYW4gSSBkbyB0aGlzCj4gPiA+ID4gPiA+ID4gPiBvbiB0aHJvdWdoIGFub3RoZXIgc2Vy
aWVzIG9uIHRvcCBvZiB0aGUgaW5jb21pbmcgVjI/Cj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiA+IFRoYW5rcwo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gVGhlIHF1ZXN0aW9u
IGlzIHRoaXM6IGlzIHRoaXMgc3RpbGwgYSBnYWluIGlmIHdlIHN3aXRjaCB0byB0aGUKPiA+ID4g
PiA+ID4gPiBtb3JlIGV4cGVuc2l2ZSBzcmN1PyBJZiB5ZXMgdGhlbiB3ZSBjYW4ga2VlcCB0aGUg
ZmVhdHVyZSBvbiwKPiA+ID4gPiA+ID4gSSB0aGluayB3ZSBvbmx5IGNhcmUgYWJvdXQgdGhlIGNv
c3Qgb24gc3JjdV9yZWFkX2xvY2soKQo+ID4gPiA+ID4gPiB3aGljaCBsb29rcyBwcmV0dHkKPiA+
ID4gPiA+ID4gdGlueSBmb3JtIG15IHBvaW50IG9mIHZpZXcuIFdoaWNoIGlzIGJhc2ljYWxseSBh
Cj4gPiA+ID4gPiA+IFJFQURfT05DRSgpICsgV1JJVEVfT05DRSgpLgo+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gT2YgY291cnNlIEkgY2FuIGJlbmNobWFyayB0byBzZWUgdGhlIGRpZmZlcmVuY2Uu
Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBpZiBub3Qgd2UnbGwgcHV0
IGl0IG9mZiB1bnRpbCBuZXh0IHJlbGVhc2UgYW5kIHRoaW5rCj4gPiA+ID4gPiA+ID4gb2YgYmV0
dGVyIHNvbHV0aW9ucy4gcmN1LT5zcmN1IGlzIGp1c3QgYSBmaW5kIGFuZCByZXBsYWNlLAo+ID4g
PiA+ID4gPiA+IGRvbid0IHNlZSB3aHkgd2UgbmVlZCB0byBkZWZlciB0aGF0LiBjYW4gYmUgYSBz
ZXBhcmF0ZSBwYXRjaAo+ID4gPiA+ID4gPiA+IGZvciBzdXJlLCBidXQgd2UgbmVlZCB0byBrbm93
IGhvdyB3ZWxsIGl0IHdvcmtzLgo+ID4gPiA+ID4gPiBJIHRoaW5rIEkgZ2V0IGhlcmUsIGxldCBt
ZSB0cnkgdG8gZG8gdGhhdCBpbiBWMiBhbmQKPiA+ID4gPiA+ID4gbGV0J3Mgc2VlIHRoZSBudW1i
ZXJzLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gVGhhbmtzCj4gPiA+ID4gCj4gPiA+ID4gSXQg
bG9va3MgdG8gbWUgZm9yIHRyZWUgcmN1LCBpdHMgc3JjdV9yZWFkX2xvY2soKSBoYXZlIGEgbWIo
KQo+ID4gPiA+IHdoaWNoIGlzIHRvbwo+ID4gPiA+IGV4cGVuc2l2ZSBmb3IgdXMuCj4gPiA+IEkg
d2lsbCB0cnkgdG8gcG9uZGVyIHVzaW5nIHZxIGxvY2sgaW4gc29tZSB3YXkuCj4gPiA+IE1heWJl
IHdpdGggdHJ5bG9jayBzb21laG93IC4uLgo+ID4gCj4gPiAKPiA+IE9rLCBsZXQgbWUgcmV0cnkg
aWYgbmVjZXNzYXJ5IChidXQgSSBkbyByZW1lbWJlciBJIGVuZCB1cCB3aXRoIGRlYWRsb2Nrcwo+
ID4gbGFzdCB0cnkpLgo+IAo+IAo+IE9rLCBJIHBsYXkgYSBsaXR0bGUgd2l0aCB0aGlzLiBBbmQg
aXQgd29ya3Mgc28gZmFyLiBXaWxsIGRvIG1vcmUgdGVzdGluZwo+IHRvbW9ycm93Lgo+IAo+IE9u
ZSByZWFzb24gY291bGQgYmUgSSBzd2l0Y2ggdG8gdXNlIGdldF91c2VyX3BhZ2VzX2Zhc3QoKSB0
bwo+IF9fZ2V0X3VzZXJfcGFnZXNfZmFzdCgpIHdoaWNoIGRvZXNuJ3QgbmVlZCBtbWFwX3NlbS4K
PiAKPiBUaGFua3MKCk9LIHRoYXQgc291bmRzIGdvb2QuIElmIHdlIGFsc28gc2V0IGEgZmxhZyB0
byBtYWtlCnZob3N0X2V4Y2VlZHNfd2VpZ2h0IGV4aXQsIHRoZW4gSSB0aGluayBpdCB3aWxsIGJl
IGFsbCBnb29kLgoKLS0gCk1TVAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
