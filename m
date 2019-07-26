Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A44768F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crb19G/oWJMJKpHip9luhbHJ6VkcR/TI4VnBKbH97cw=; b=COAhrLd1rVix3C
	sIvzfr/pItJ6Tjq+h0z/egv2UQFFuNRp9YmKTx8UPNReD/EeJ0e0yKoOZlDn4Ot5QHl5v8SgRn9K8
	gyZfng4nFfGis5HHamH7um7XaUyOh8jHXHZ9z+ZKMNEjOIS/b7oY4obfu7rid/PNhvXBTk/SDOUhj
	UGQJCe0kyNDusVgEIoKOEJuR4iXTvnpvinZ0HqwdIZka957yKA41QpvQU1jWYTvjxZTC1853LYGJB
	L6VojBk9tvgGGSpjFCaKhHy3WX/FdH2q+JgBr2vio1BBL70GtKh1qX5nYfn+LwOZ1NmHfHIkfE18m
	LIR0mL3us4U5/SBiEm0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0aB-0005BB-K4; Fri, 26 Jul 2019 13:48:27 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0Z9-0004RM-F3
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:47:25 +0000
Received: by mail-qt1-f194.google.com with SMTP id d23so52658211qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 06:47:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=aREd7oX/KjjR1y+/DoK7i/ri4F4zE0JK5o/p5Emjkas=;
 b=IwfjDy5EzRkyi/tUmLsS/mKgamwtcQs3Cwi6UNliEtwKG4oFzxk3cv8o+MJtJqFzPC
 CK1fisKKn2K2Hh8ehwXVfc2jM3krGy89ijeWnwf61Ww1XjON3d8Y3lLqCT/pbIf9LUhG
 CxxseLzVHtpKXhmIsHNohamExRthKpLe73QPGuqIJYI9hdq2oz+HG9rgnj8z2c/wajq0
 dyheaJbv8KBqO7+xTJfnZM8jRq248sMfnlI5S9++BKC5g3Rzlz5geY76TQCb5JK+guz6
 pVUf9+WPAG84/0bL26qKfye/rFiXmgGcu2r6AfSVxQlwa0Y48ppmzMiWqC2AWd8bXrFN
 2fYw==
X-Gm-Message-State: APjAAAXGmdQuKUBQBUPYO8k8SYvJx8Vl9bY1VIsgCI3ehWREScbcNvfO
 0N2CV9t3gYlZ5PmR92ryn8biGA==
X-Google-Smtp-Source: APXvYqzVdYsizVTGT9hdpWznFaUhHBwNJSFBNQoI8apQUSuT6ROsP77q6nipE0mfzkXGrjdjl9uw3A==
X-Received: by 2002:a0c:ba0b:: with SMTP id w11mr68077058qvf.71.1564148842235; 
 Fri, 26 Jul 2019 06:47:22 -0700 (PDT)
Received: from redhat.com ([212.92.104.165])
 by smtp.gmail.com with ESMTPSA id g2sm21326394qkm.31.2019.07.26.06.47.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 06:47:21 -0700 (PDT)
Date: Fri, 26 Jul 2019 09:47:12 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190726094353-mutt-send-email-mst@kernel.org>
References: <20190725012149-mutt-send-email-mst@kernel.org>
 <55e8930c-2695-365f-a07b-3ad169654d28@redhat.com>
 <20190725042651-mutt-send-email-mst@kernel.org>
 <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
 <20190725092332-mutt-send-email-mst@kernel.org>
 <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
 <20190726074644-mutt-send-email-mst@kernel.org>
 <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
 <20190726082837-mutt-send-email-mst@kernel.org>
 <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_064723_623304_7A14A803 
X-CRM114-Status: GOOD (  28.86  )
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

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDg6NTM6MThQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjYg5LiL5Y2IODozOCwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDg6MDA6NThQTSArMDgwMCwgSmFzb24gV2Fu
ZyB3cm90ZToKPiA+ID4gT24gMjAxOS83LzI2IOS4i+WNiDc6NDksIE1pY2hhZWwgUy4gVHNpcmtp
biB3cm90ZToKPiA+ID4gPiBPbiBUaHUsIEp1bCAyNSwgMjAxOSBhdCAxMDoyNToyNVBNICswODAw
LCBKYXNvbiBXYW5nIHdyb3RlOgo+ID4gPiA+ID4gT24gMjAxOS83LzI1IOS4i+WNiDk6MjYsIE1p
Y2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPiA+ID4gPiA+ID4gPiBFeGFjdGx5LCBhbmQgdGhhdCdz
IHRoZSByZWFzb24gYWN0dWFsbHkgSSB1c2Ugc3luY2hyb25pemVfcmN1KCkgdGhlcmUuCj4gPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gU28gdGhlIGNvbmNlcm4gaXMgc3RpbGwgdGhlIHBvc3Np
YmxlIHN5bmNocm9uaXplX2V4cGVkaXRlZCgpPwo+ID4gPiA+ID4gPiBJIHRoaW5rIHN5bmNocm9u
aXplX3NyY3VfZXhwZWRpdGVkLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gc3luY2hyb25pemVf
ZXhwZWRpdGVkIHNlbmRzIGxvdHMgb2YgSVBJIGFuZCBpcyBiYWQgZm9yIHJlYWx0aW1lIFZNcy4K
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gQ2FuIEkgZG8gdGhpcwo+ID4gPiA+ID4gPiA+IG9u
IHRocm91Z2ggYW5vdGhlciBzZXJpZXMgb24gdG9wIG9mIHRoZSBpbmNvbWluZyBWMj8KPiA+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBUaGFua3MKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
VGhlIHF1ZXN0aW9uIGlzIHRoaXM6IGlzIHRoaXMgc3RpbGwgYSBnYWluIGlmIHdlIHN3aXRjaCB0
byB0aGUKPiA+ID4gPiA+ID4gbW9yZSBleHBlbnNpdmUgc3JjdT8gSWYgeWVzIHRoZW4gd2UgY2Fu
IGtlZXAgdGhlIGZlYXR1cmUgb24sCj4gPiA+ID4gPiBJIHRoaW5rIHdlIG9ubHkgY2FyZSBhYm91
dCB0aGUgY29zdCBvbiBzcmN1X3JlYWRfbG9jaygpIHdoaWNoIGxvb2tzIHByZXR0eQo+ID4gPiA+
ID4gdGlueSBmb3JtIG15IHBvaW50IG9mIHZpZXcuIFdoaWNoIGlzIGJhc2ljYWxseSBhIFJFQURf
T05DRSgpICsgV1JJVEVfT05DRSgpLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBPZiBjb3Vyc2UgSSBj
YW4gYmVuY2htYXJrIHRvIHNlZSB0aGUgZGlmZmVyZW5jZS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+IGlmIG5vdCB3ZSdsbCBwdXQgaXQgb2ZmIHVudGlsIG5leHQgcmVsZWFzZSBh
bmQgdGhpbmsKPiA+ID4gPiA+ID4gb2YgYmV0dGVyIHNvbHV0aW9ucy4gcmN1LT5zcmN1IGlzIGp1
c3QgYSBmaW5kIGFuZCByZXBsYWNlLAo+ID4gPiA+ID4gPiBkb24ndCBzZWUgd2h5IHdlIG5lZWQg
dG8gZGVmZXIgdGhhdC4gY2FuIGJlIGEgc2VwYXJhdGUgcGF0Y2gKPiA+ID4gPiA+ID4gZm9yIHN1
cmUsIGJ1dCB3ZSBuZWVkIHRvIGtub3cgaG93IHdlbGwgaXQgd29ya3MuCj4gPiA+ID4gPiBJIHRo
aW5rIEkgZ2V0IGhlcmUsIGxldCBtZSB0cnkgdG8gZG8gdGhhdCBpbiBWMiBhbmQgbGV0J3Mgc2Vl
IHRoZSBudW1iZXJzLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGFua3MKPiA+ID4gCj4gPiA+IEl0
IGxvb2tzIHRvIG1lIGZvciB0cmVlIHJjdSwgaXRzIHNyY3VfcmVhZF9sb2NrKCkgaGF2ZSBhIG1i
KCkgd2hpY2ggaXMgdG9vCj4gPiA+IGV4cGVuc2l2ZSBmb3IgdXMuCj4gPiBJIHdpbGwgdHJ5IHRv
IHBvbmRlciB1c2luZyB2cSBsb2NrIGluIHNvbWUgd2F5Lgo+ID4gTWF5YmUgd2l0aCB0cnlsb2Nr
IHNvbWVob3cgLi4uCj4gCj4gCj4gT2ssIGxldCBtZSByZXRyeSBpZiBuZWNlc3NhcnkgKGJ1dCBJ
IGRvIHJlbWVtYmVyIEkgZW5kIHVwIHdpdGggZGVhZGxvY2tzCj4gbGFzdCB0cnkpLgo+IAo+IAo+
ID4gCj4gPiAKPiA+ID4gSWYgd2UganVzdCB3b3JyeSBhYm91dCB0aGUgSVBJLAo+ID4gV2l0aCBz
eW5jaHJvbml6ZV9yY3Ugd2hhdCBJIHdvdWxkIHdvcnJ5IGFib3V0IGlzIHRoYXQgZ3Vlc3QgaXMg
c3RhbGxlZAo+IAo+IAo+IENhbiB0aGlzIHN5bmNocm9uaXplX3JjdSgpIGJlIHRyaWdnZXJlZCBi
eSBndWVzdD8gSWYgeWVzLCB0aGVyZSBhcmUgc2V2ZXJhbAo+IG90aGVyIE1NVSBub3RpZmllcnMg
dGhhdCBjYW4gYmxvY2suIElzIHZob3N0IHNvbWV0aGluZyBzcGVjaWFsIGhlcmU/CgpTb3JyeSwg
bGV0IG1lIGV4cGxhaW46IGd1ZXN0cyAoYW5kIHRhc2tzIGluIGdlbmVyYWwpCmNhbiB0cmlnZ2Vy
IGFjdGl2aXR5IHRoYXQgd2lsbAptYWtlIHN5bmNocm9uaXplX3JjdSB0YWtlIGEgbG9uZyB0aW1l
LiBUaHVzIGJsb2NraW5nCmFuIG1tdSBub3RpZmllciB1bnRpbCBzeW5jaHJvbml6ZV9yY3UgZmlu
aXNoZXMKaXMgYSBiYWQgaWRlYS4KCj4gCj4gPiBiZWNhdXNlIHN5c3RlbSBpcyBidXN5IGJlY2F1
c2Ugb2Ygb3RoZXIgZ3Vlc3RzLgo+ID4gV2l0aCBleHBlZGl0ZWQgaXQncyB0aGUgSVBJcy4uLgo+
ID4gCj4gCj4gVGhlIGN1cnJlbnQgc3luY2hyb25pemVfcmN1KCnCoCBjYW4gZm9yY2UgYSBleHBl
ZGl0ZWQgZ3JhY2UgcGVyaW9kOgo+IAo+IHZvaWQgc3luY2hyb25pemVfcmN1KHZvaWQpCj4gewo+
IMKgwqDCoCDCoMKgwqAgLi4uCj4gwqDCoMKgwqDCoMKgwqAgaWYgKHJjdV9ibG9ja2luZ19pc19n
cCgpKQo+IHJldHVybjsKPiDCoMKgwqDCoMKgwqDCoCBpZiAocmN1X2dwX2lzX2V4cGVkaXRlZCgp
KQo+IHN5bmNocm9uaXplX3JjdV9leHBlZGl0ZWQoKTsKPiBlbHNlCj4gd2FpdF9yY3VfZ3AoY2Fs
bF9yY3UpOwo+IH0KPiBFWFBPUlRfU1lNQk9MX0dQTChzeW5jaHJvbml6ZV9yY3UpOwoKCkFuIGFk
bWluIGNhbiBmb3JjZSByY3UgdG8gZmluaXNoIGZhc3RlciwgdHJhZGluZwppbnRlcnJ1cHRzIGZv
ciByZXNwb25zaXZlbmVzcy4KCj4gCj4gPiA+IGNhbiB3ZSBkbyBzb21ldGhpbmcgbGlrZSBpbgo+
ID4gPiB2aG9zdF9pbnZhbGlkYXRlX3ZxX3N0YXJ0KCk/Cj4gPiA+IAo+ID4gPiAgwqDCoMKgwqDC
oMKgwqAgaWYgKG1hcCkgewo+ID4gPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8q
IEluIG9yZGVyIHRvIGF2b2lkIHBvc3NpYmxlIElQSXMgd2l0aAo+ID4gPiAgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBzeW5jaHJvbml6ZV9yY3VfZXhwZWRpdGVkKCkgd2UgdXNl
IGNhbGxfcmN1KCkgKwo+ID4gPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBj
b21wbGV0aW9uLgo+ID4gPiAqLwo+ID4gPiBpbml0X2NvbXBsZXRpb24oJmMuY29tcGxldGlvbik7
Cj4gPiA+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2FsbF9yY3UoJmMucmN1X2hl
YWQsIHZob3N0X2ZpbmlzaF92cV9pbnZhbGlkYXRpb24pOwo+ID4gPiB3YWl0X2Zvcl9jb21wbGV0
aW9uKCZjLmNvbXBsZXRpb24pOwo+ID4gPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHZob3N0X3NldF9tYXBfZGlydHkodnEsIG1hcCwgaW5kZXgpOwo+ID4gPiB2aG9zdF9tYXBfdW5w
cmVmZXRjaChtYXApOwo+ID4gPiAgwqDCoMKgwqDCoMKgwqAgfQo+ID4gPiAKPiA+ID4gPwo+ID4g
V2h5IHdvdWxkIHRoYXQgYmUgZmFzdGVyIHRoYW4gc3luY2hyb25pemVfcmN1Pwo+IAo+IAo+IE5v
IGZhc3RlciBidXQgbm8gSVBJLgo+IAoKU29ycnkgSSBzdGlsbCBkb24ndCBzZWUgdGhlIHBvaW50
LgpzeW5jaHJvbml6ZV9yY3UgZG9lc24ndCBub3JtYWxseSBkbyBhbiBJUEkgZWl0aGVyLgoKCj4g
PiAKPiA+IAo+ID4gPiA+IFRoZXJlJ3Mgb25lIG90aGVyIHRoaW5nIHRoYXQgYm90aGVycyBtZSwg
YW5kIHRoYXQgaXMgdGhhdAo+ID4gPiA+IGZvciBsYXJnZSByaW5ncyB3aGljaCBhcmUgbm90IHBo
eXNpY2FsbHkgY29udGlndW91cwo+ID4gPiA+IHdlIGRvbid0IGltcGxlbWVudCB0aGUgb3B0aW1p
emF0aW9uLgo+ID4gPiA+IAo+ID4gPiA+IEZvciBzdXJlLCB0aGF0IGNhbiB3YWl0LCBidXQgSSB0
aGluayBldmVudHVhbGx5IHdlIHNob3VsZAo+ID4gPiA+IHZtYXAgbGFyZ2UgcmluZ3MuCj4gPiA+
IAo+ID4gPiBZZXMsIHdvcnRoIHRvIHRyeS4gQnV0IHVzaW5nIGRpcmVjdCBtYXAgaGFzIGl0cyBv
d24gYWR2YW50YWdlOiBpdCBjYW4gdXNlCj4gPiA+IGh1Z2VwYWdlIHRoYXQgdm1hcCBjYW4ndAo+
ID4gPiAKPiA+ID4gVGhhbmtzCj4gPiBTdXJlLCBzbyB3ZSBjYW4gZG8gdGhhdCBmb3Igc21hbGwg
cmluZ3MuCj4gCj4gCj4gWWVzLCB0aGF0J3MgcG9zc2libGUgYnV0IHNob3VsZCBiZSBkb25lIG9u
IHRvcC4KPiAKPiBUaGFua3MKCkFic29sdXRlbHkuIE5lZWQgdG8gZml4IHVwIHRoZSBidWdzIGZp
cnN0LgoKLS0gCk1TVAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
