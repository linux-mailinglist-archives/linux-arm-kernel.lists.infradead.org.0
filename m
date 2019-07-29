Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A0478E4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 16:45:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkS/RwwwGUjSuQMouCAZI6v9kHSsY2UScDyEYZ9YgyI=; b=RYtA6S34RBF0ND
	d/gx8+u/7FkwpWTJW9qfPxfZEnXuPqQKYnYirJRPx0pLc/Zg5jdhvCADUD94qoiNz8ibNIV2+dbp2
	WuHKZR4hSrrFE35bNw8vUWB1SkJcGDntkfLW3F5xg5uJ+9mmMi+4/4bR6XDsDTe+qrAzPTbiO1Fs1
	N8wPvl0fP5V3pHVcrZDXQ0MRKzKdDmWRB3t2mT9bMquAVWF0peETo0t2FnHiYhvCx/fiei6mUl/UE
	V8mgwUnvohKrId8xdDhw6tbdegDqxVwqlm+evXJOAPqCIgx/rzI3uPJL1JHJmhhJmhVlIOsS9IqRB
	tiGQ4AQozTSzonfuQhpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6tb-0003qk-2E; Mon, 29 Jul 2019 14:45:03 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6tM-0003q9-RM
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 14:44:50 +0000
Received: by mail-qt1-f195.google.com with SMTP id h21so59853147qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 07:44:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=DoNqX8RWU8p5wa0hRf4mpfQk5+CoY4k3BggOB+rTukY=;
 b=nFyoNvFmVY+GeuzxNPWcWUzb12se9EP7uot3MaftZbhzQ/0Z93w6yXwgaHBxUarv3H
 7jH/B7DX7iB0lIvJfVNWULCB9SQW6THwkkzujj6M671NQis+WTq5e6cqmri95lCPzQAC
 PFV70JYXLAVqksgMAk+c8s9jYJ+rGWVP5UmYd+w5jDdNHhN51HoPcRn7TIraL4le0yFv
 GCwQAHUs/QSRlsBoKZKoC7pbOTbY12A2wGr/X/uMKcIqQWxbUpMGrZSwATrLoqD9UJyS
 OxDXxjaxi17ehJAlytAe8Ppx3YWdeRJ4V7524OesdnBSUPornjvDV/Qg2rScp3r4bE2B
 1EcQ==
X-Gm-Message-State: APjAAAWJndX9D1+Fit4hwe6Zuwa+ZFw2pBtLHBPxg7SEjRXMHAdekXEN
 rPWEuI/c9QujSG++YQy9cXKgXg==
X-Google-Smtp-Source: APXvYqzNcK5rFMdgsRbkuArHCZVYZl892hVxXOzQtGKKSReE48444ntmi3JNc+/o/FUr3NCS9WKM/g==
X-Received: by 2002:ac8:384c:: with SMTP id r12mr77572808qtb.153.1564411487834; 
 Mon, 29 Jul 2019 07:44:47 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 h40sm35464987qth.4.2019.07.29.07.44.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 07:44:46 -0700 (PDT)
Date: Mon, 29 Jul 2019 10:44:38 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190729104028-mutt-send-email-mst@kernel.org>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d43c094-44ed-dbac-b863-48fc3d754378@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_074448_881016_B0E6847D 
X-CRM114-Status: GOOD (  26.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMTA6MjQ6NDNQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjkg5LiL5Y2INDo1OSwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDE6NTQ6NDlQTSArMDgwMCwgSmFzb24gV2Fu
ZyB3cm90ZToKPiA+ID4gT24gMjAxOS83LzI2IOS4i+WNiDk6NDksIE1pY2hhZWwgUy4gVHNpcmtp
biB3cm90ZToKPiA+ID4gPiA+ID4gT2ssIGxldCBtZSByZXRyeSBpZiBuZWNlc3NhcnkgKGJ1dCBJ
IGRvIHJlbWVtYmVyIEkgZW5kIHVwIHdpdGggZGVhZGxvY2tzCj4gPiA+ID4gPiA+IGxhc3QgdHJ5
KS4KPiA+ID4gPiA+IE9rLCBJIHBsYXkgYSBsaXR0bGUgd2l0aCB0aGlzLiBBbmQgaXQgd29ya3Mg
c28gZmFyLiBXaWxsIGRvIG1vcmUgdGVzdGluZwo+ID4gPiA+ID4gdG9tb3Jyb3cuCj4gPiA+ID4g
PiAKPiA+ID4gPiA+IE9uZSByZWFzb24gY291bGQgYmUgSSBzd2l0Y2ggdG8gdXNlIGdldF91c2Vy
X3BhZ2VzX2Zhc3QoKSB0bwo+ID4gPiA+ID4gX19nZXRfdXNlcl9wYWdlc19mYXN0KCkgd2hpY2gg
ZG9lc24ndCBuZWVkIG1tYXBfc2VtLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGFua3MKPiA+ID4g
PiBPSyB0aGF0IHNvdW5kcyBnb29kLiBJZiB3ZSBhbHNvIHNldCBhIGZsYWcgdG8gbWFrZQo+ID4g
PiA+IHZob3N0X2V4Y2VlZHNfd2VpZ2h0IGV4aXQsIHRoZW4gSSB0aGluayBpdCB3aWxsIGJlIGFs
bCBnb29kLgo+ID4gPiAKPiA+ID4gQWZ0ZXIgc29tZSBleHBlcmltZW50cywgSSBjYW1lIHVwIHR3
byBtZXRob2RzOgo+ID4gPiAKPiA+ID4gMSkgc3dpdGNoIHRvIHVzZSB2cS0+bXV0ZXgsIHRoZW4g
d2UgbXVzdCB0YWtlIHRoZSB2cSBsb2NrIGR1cmluZyByYW5nZQo+ID4gPiBjaGVja2luZyAoYnV0
IEkgZG9uJ3Qgc2VlIG9idmlvdXMgc2xvd2Rvd24gZm9yIDE2dmNwdXMgKyAxNnF1ZXVlcykuIFNl
dHRpbmcKPiA+ID4gZmxhZ3MgZHVyaW5nIHdlaWdodCBjaGVjayBzaG91bGQgd29yayBidXQgaXQg
c3RpbGwgY2FuJ3QgYWRkcmVzcyB0aGUgd29yc3QKPiA+ID4gY2FzZTogd2FpdCBmb3IgdGhlIHBh
Z2UgdG8gYmUgc3dhcHBlZCBpbi4gSXMgdGhpcyBhY2NlcHRhYmxlPwo+ID4gPiAKPiA+ID4gMikg
dXNpbmcgY3VycmVudCBSQ1UgYnV0IHJlcGxhY2Ugc3luY2hyb25pemVfcmN1KCkgd2l0aCB2aG9z
dF93b3JrX2ZsdXNoKCkuCj4gPiA+IFRoZSB3b3JzdCBjYXNlIGlzIHRoZSBzYW1lIGFzIDEpIGJ1
dCB3ZSBjYW4gY2hlY2sgcmFuZ2Ugd2l0aG91dCBob2xkaW5nIGFueQo+ID4gPiBsb2Nrcy4KPiA+
ID4gCj4gPiA+IFdoaWNoIG9uZSBkaWQgeW91IHByZWZlcj8KPiA+ID4gCj4gPiA+IFRoYW5rcwo+
ID4gSSB3b3VsZCByYXRoZXIgd2Ugc3RhcnQgd2l0aCAxIGFuZCBzd2l0Y2ggdG8gMiBhZnRlciB3
ZQo+ID4gY2FuIHNob3cgc29tZSBnYWluLgo+ID4gCj4gPiBCdXQgdGhlIHdvcnN0IGNhc2UgbmVl
ZHMgdG8gYmUgYWRkcmVzc2VkLgo+IAo+IAo+IFllcy4KPiAKPiAKPiA+IEhvdyBhYm91dCBzZW5k
aW5nIGEgc2lnbmFsIHRvCj4gPiB0aGUgdmhvc3QgdGhyZWFkPyAgV2Ugd2lsbCBuZWVkIHRvIGZp
eCB1cCBlcnJvciBoYW5kbGluZyAoSSB0aGluayB0aGF0Cj4gPiBhdCB0aGUgbW9tZW50IGl0IHdp
bGwgZXJyb3Igb3V0IGluIHRoYXQgY2FzZSwgaGFuZGxpbmcgdGhpcyBhcyBFRkFVTFQgLQo+ID4g
YW5kIHdlIGRvbid0IHdhbnQgdG8gZHJvcCBwYWNrZXRzIGlmIHdlIGNhbiBoZWxwIGl0LCBhbmQg
c3VyZWx5IG5vdAo+ID4gZW50ZXIgYW55IGVycm9yIHN0YXRlcy4gIEluIHBhcnRpY3VsYXIgaXQg
bWlnaHQgYmUgZXNwZWNpYWxseSB0cmlja3kgaWYKPiA+IHdlIHdyb3RlIGludG8gdXNlcnNwYWNl
IG1lbW9yeSBhbmQgYXJlIG5vdyB0cnlpbmcgdG8gbG9nIHRoZSB3cml0ZS4KPiA+IEkgZ3Vlc3Mg
d2UgY2FuIGRpc2FibGUgdGhlIG9wdGltaXphdGlvbiBpZiBsb2cgaXMgZW5hYmxlZD8pLgo+IAo+
IAo+IFRoaXMgbWF5IHdvcmsgYnV0IHJlcXVpcmVzIGEgbG90IG9mIGNoYW5nZXMuCgpJIGFncmVl
LgoKPiBBbmQgYWN0dWFsbHkgaXQncyB0aGUgcHJpY2Ugb2YKPiB1c2luZyB2cSBtdXRleC4gCgpO
b3Qgc3VyZSB3aGF0J3MgbWVhbnQgaGVyZS4KCj4gQWN0dWFsbHksIHRoZSBjcml0aWNhbCBzZWN0
aW9uIHNob3VsZCBiZSByYXRoZXIgc21hbGwsIGUuZwo+IGp1c3QgaW5zaWRlIG1lbW9yeSBhY2Nl
c3NvcnMuCgpBbHNvIHRydWUuCgo+IAo+IEkgd29uZGVyIHdoZXRoZXIgb3Igbm90IGp1c3QgZG8g
c3luY2hyb25pemUgb3VyIHNlbGYgbGlrZToKPiAKPiBzdGF0aWMgdm9pZCBpbmxpbmUgdmhvc3Rf
aW5jX3ZxX3JlZihzdHJ1Y3Qgdmhvc3RfdmlydHF1ZXVlICp2cSkKPiB7Cj4gwqDCoMKgwqDCoMKg
wqAgaW50IHJlZiA9IFJFQURfT05DRSh2cS0+cmVmKTsKPiAKPiDCoMKgwqDCoMKgwqDCoCBXUklU
RV9PTkNFKHZxLT5yZWYsIHJlZiArIDEpOwo+IHNtcF9ybWIoKTsKPiB9Cj4gCj4gc3RhdGljIHZv
aWQgaW5saW5lIHZob3N0X2RlY192cV9yZWYoc3RydWN0IHZob3N0X3ZpcnRxdWV1ZSAqdnEpCj4g
ewo+IMKgwqDCoMKgwqDCoMKgIGludCByZWYgPSBSRUFEX09OQ0UodnEtPnJlZik7Cj4gCj4gc21w
X3dtYigpOwo+IMKgwqDCoMKgwqDCoMKgIFdSSVRFX09OQ0UodnEtPnJlZiwgcmVmIC0gMSk7Cj4g
fQo+IAo+IHN0YXRpYyB2b2lkIGlubGluZSB2aG9zdF93YWl0X2Zvcl9yZWYoc3RydWN0IHZob3N0
X3ZpcnRxdWV1ZSAqdnEpCj4gewo+IMKgwqDCoMKgwqDCoMKgIHdoaWxlIChSRUFEX09OQ0UodnEt
PnJlZikpOwo+IG1iKCk7Cj4gfQoKTG9va3MgZ29vZCBidXQgSSdkIGxpa2UgdG8gdGhpbmsgb2Yg
YSBzdHJhdGVneS9leGlzdGluZyBsb2NrIHRoYXQgbGV0IHVzCmJsb2NrIHByb3Blcmx5IGFzIG9w
cG9zZWQgdG8gc3Bpbm5pbmcsIHRoYXQgd291bGQgYmUgbW9yZSBmcmllbmRseSB0bwplLmcuIHRo
ZSByZWFsdGltZSBwYXRjaC4KCj4gCj4gT3IgdXNpbmcgc21wX2xvYWRfYWNxdWlyZSgpL3NtcF9z
dG9yZV9yZWxlYXNlKCkgaW5zdGVhZD8KPiAKPiBUaGFua3MKClRoZXNlIGFyZSBjaGVhcGVyIG9u
IHg4NiwgeWVzLgoKPiA+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
