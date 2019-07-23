Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDF5710C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 07:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6JMTDVYn8CSK4jgI0N0HK1JJr1N6/enxh2OmGruoOo=; b=g/z6QV/uVVqtc/
	Ck4VxowOl/oopCgIi76z5wjRKno9QmNbmJLnzPVNhILZdUz55D/jTh4iAe64ofMlxsSMJQyWqxk0B
	k+T+uTflLExEZRDqVNxuW45vuZmXD9YVYMwUzNT9FdadtR9rDnUwrWdfYc5PyeAh0KtPrMs2FGVFH
	3jZB8EIlEGFGBqowtaT1iGu0MIKJXNIl6iipoTYxaI7RuyAz7ZheQ9A6gFbq5W0eXBtBtI/u9oS61
	evRvI1dHITvA7mDbJYaMNNljdfYVC3eb3deTbCTCWG8c/Cnb+UemXMdtqwaAefh8wqMrgYGLfLovE
	VQjDkEHaxTSo7MXdSqzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpmxI-0001Aw-QN; Tue, 23 Jul 2019 05:03:16 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpmwo-00019A-CQ
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 05:02:50 +0000
Received: by mail-wr1-f68.google.com with SMTP id x1so26616578wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 22:02:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=JYPoJkQN+XK2UvnSjwNQRenJIQ2ixkhyrsqP4Uhz9H8=;
 b=bk6hvIBObeUcTB9CtIEimfCRpQ6eLzNgYsDYBY3xKAXhcF6Uql0ZBhiVnn4mvOt5zI
 L/SzVjA+3FpLaY/qMhmPIxKX1YgfE9ygyI3veipjWMoz6fUFqo5lZkltBZ3XJ+JxycmS
 k97a+YU8JDPpUzpie2qgyMe18gYxweD82kNdUWm6BCiiNtTsbb2tme4mDqOSI9+q2VGK
 FnOt6qUiSz1b7FYkiLBQ+nnc9bk4/xFUu0qUYklczxdbMOMgyKShRjVosrSR8ZN4AhbY
 q0fc5sxnJBJu6aNXUP3TkA98IXxoZBtLZwQZeN7cUhZ0EwaOpmwrXTF4/c9AamVWEPl5
 hz+Q==
X-Gm-Message-State: APjAAAUyma19K6Kmfhz8D6WAdR4JozJoxzTNTPyiTVD91YBq2U2TXJmx
 m1VvG9p/cKLD7QrVD7m4ZoTanw==
X-Google-Smtp-Source: APXvYqyEMTuVBH8zniGTqgl57BX2DcyhG+Wl2kks7XclSYkMvxpBTbWB4yptqSSR2n2cmwFVsaFFzw==
X-Received: by 2002:a5d:67cd:: with SMTP id n13mr4657765wrw.138.1563858164654; 
 Mon, 22 Jul 2019 22:02:44 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 j10sm70533109wrd.26.2019.07.22.22.02.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 22:02:43 -0700 (PDT)
Date: Tue, 23 Jul 2019 01:02:39 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190723010156-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
 <20190722035657-mutt-send-email-mst@kernel.org>
 <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_220246_537225_DC6A5851 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMTE6NTU6MjhBTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjIg5LiL5Y2INDowMiwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDE6MjE6NTlQTSArMDgwMCwgSmFzb24gV2Fu
ZyB3cm90ZToKPiA+ID4gT24gMjAxOS83LzIxIOS4i+WNiDY6MDIsIE1pY2hhZWwgUy4gVHNpcmtp
biB3cm90ZToKPiA+ID4gPiBPbiBTYXQsIEp1bCAyMCwgMjAxOSBhdCAwMzowODowMEFNIC0wNzAw
LCBzeXpib3Qgd3JvdGU6Cj4gPiA+ID4gPiBzeXpib3QgaGFzIGJpc2VjdGVkIHRoaXMgYnVnIHRv
Ogo+ID4gPiA+ID4gCj4gPiA+ID4gPiBjb21taXQgN2Y0NjYwMzJkYzllNWE2MTIxN2YyMmVhMzRi
MmRmOTMyNzg2YmJmYwo+ID4gPiA+ID4gQXV0aG9yOiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRo
YXQuY29tPgo+ID4gPiA+ID4gRGF0ZTogICBGcmkgTWF5IDI0IDA4OjEyOjE4IDIwMTkgKzAwMDAK
PiA+ID4gPiA+IAo+ID4gPiA+ID4gICAgICAgdmhvc3Q6IGFjY2VzcyB2cSBtZXRhZGF0YSB0aHJv
dWdoIGtlcm5lbCB2aXJ0dWFsIGFkZHJlc3MKPiA+ID4gPiA+IAo+ID4gPiA+ID4gYmlzZWN0aW9u
IGxvZzogIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvYmlzZWN0LnR4dD94PTE0OWE4
YTIwNjAwMDAwCj4gPiA+ID4gPiBzdGFydCBjb21taXQ6ICAgNmQyMWE0MWIgQWRkIGxpbnV4LW5l
eHQgc3BlY2lmaWMgZmlsZXMgZm9yIDIwMTkwNzE4Cj4gPiA+ID4gPiBnaXQgdHJlZTogICAgICAg
bGludXgtbmV4dAo+ID4gPiA+ID4gZmluYWwgY3Jhc2g6ICAgIGh0dHBzOi8vc3l6a2FsbGVyLmFw
cHNwb3QuY29tL3gvcmVwb3J0LnR4dD94PTE2OWE4YTIwNjAwMDAwCj4gPiA+ID4gPiBjb25zb2xl
IG91dHB1dDogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9sb2cudHh0P3g9MTI5YThh
MjA2MDAwMDAKPiA+ID4gPiA+IGtlcm5lbCBjb25maWc6ICBodHRwczovL3N5emthbGxlci5hcHBz
cG90LmNvbS94Ly5jb25maWc/eD0zNDMwYTE1MWUxNDUyMzMxCj4gPiA+ID4gPiBkYXNoYm9hcmQg
bGluazogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20vYnVnP2V4dGlkPWU1ODExMmQ3MWY3
NzExM2RkYjdiCj4gPiA+ID4gPiBzeXogcmVwcm86ICAgICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBw
c3BvdC5jb20veC9yZXByby5zeXo/eD0xMDEzOWU2ODYwMDAwMAo+ID4gPiA+ID4gCj4gPiA+ID4g
PiBSZXBvcnRlZC1ieTogc3l6Ym90K2U1ODExMmQ3MWY3NzExM2RkYjdiQHN5emthbGxlci5hcHBz
cG90bWFpbC5jb20KPiA+ID4gPiA+IEZpeGVzOiA3ZjQ2NjAzMmRjOWUgKCJ2aG9zdDogYWNjZXNz
IHZxIG1ldGFkYXRhIHRocm91Z2gga2VybmVsIHZpcnR1YWwKPiA+ID4gPiA+IGFkZHJlc3MiKQo+
ID4gPiA+ID4gCj4gPiA+ID4gPiBGb3IgaW5mb3JtYXRpb24gYWJvdXQgYmlzZWN0aW9uIHByb2Nl
c3Mgc2VlOiBodHRwczovL2dvby5nbC90cHNtRUojYmlzZWN0aW9uCj4gPiA+ID4gT0sgSSBwb2tl
ZCBhdCB0aGlzIGZvciBhIGJpdCwgSSBzZWUgc2V2ZXJhbCB0aGluZ3MgdGhhdAo+ID4gPiA+IHdl
IG5lZWQgdG8gZml4LCB0aG91Z2ggSSdtIG5vdCB5ZXQgc3VyZSBpdCdzIHRoZSByZWFzb24gZm9y
Cj4gPiA+ID4gdGhlIGZhaWx1cmVzOgo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IDEuIG1tdV9u
b3RpZmllcl9yZWdpc3RlciBzaG91bGRuJ3QgYmUgY2FsbGVkIGZyb20gdmhvc3RfdnJpbmdfc2V0
X251bV9hZGRyCj4gPiA+ID4gICAgICBUaGF0J3MganVzdCBhIGJhZCBoYWNrLAo+ID4gPiAKPiA+
ID4gVGhpcyBpcyB1c2VkIHRvIGF2b2lkIGhvbGRpbmcgbG9jayB3aGVuIGNoZWNraW5nIHdoZXRo
ZXIgdGhlIGFkZHJlc3NlcyBhcmUKPiA+ID4gb3ZlcmxhcHBlZC4gT3RoZXJ3aXNlIHdlIG5lZWQg
dG8gdGFrZSBzcGlubG9jayBmb3IgZWFjaCBpbnZhbGlkYXRpb24gcmVxdWVzdAo+ID4gPiBldmVu
IGlmIGl0IHdhcyB0aGUgdmEgcmFuZ2UgdGhhdCBpcyBub3QgaW50ZXJlc3RlZCBmb3IgdXMuIFRo
aXMgd2lsbCBiZSB2ZXJ5Cj4gPiA+IHNsb3cgZS5nIGR1cmluZyBndWVzdCBib290Lgo+ID4gS1ZN
IHNlZW1zIHRvIGRvIGV4YWN0bHkgdGhhdC4KPiA+IEkgdHJpZWQgYW5kIGd1ZXN0IGRvZXMgbm90
IHNlZW0gdG8gYm9vdCBhbnkgc2xvd2VyLgo+ID4gRG8geW91IG9ic2VydmUgYW55IHNsb3dkb3du
Pwo+IAo+IAo+IFllcyBJIGRvLgo+IAo+IAo+ID4gCj4gPiBOb3cgSSB0b29rIGEgaGFyZCBsb29r
IGF0IHRoZSB1YWRkciBoYWNrZXJ5IGl0IHJlYWxseSBtYWtlcwo+ID4gbWUgbmVydmlvdXMuIFNv
IEkgdGhpbmsgZm9yIHRoaXMgcmVsZWFzZSB3ZSB3YW50IHNvbWV0aGluZwo+ID4gc2FmZSwgYW5k
IG9wdGltaXphdGlvbnMgb24gdG9wLiBBcyBhbiBhbHRlcm5hdGl2ZSByZXZlcnQgdGhlCj4gPiBv
cHRpbWl6YXRpb24gYW5kIHRyeSBhZ2FpbiBmb3IgbmV4dCBtZXJnZSB3aW5kb3cuCj4gCj4gCj4g
V2lsbCBwb3N0IGEgc2VyaWVzIG9mIGZpeGVzLCBsZXQgbWUga25vdyBpZiB5b3UncmUgb2sgd2l0
aCB0aGF0Lgo+IAo+IFRoYW5rcwoKSSdkIHByZWZlciB5b3UgdG8gdGFrZSBhIGhhcmQgbG9vayBh
dCB0aGUgcGF0Y2ggSSBwb3N0ZWQKd2hpY2ggbWFrZXMgY29kZSBjbGVhbmVyLCBhbmQgYWQgb3B0
aW1pemF0aW9ucyBvbiB0b3AuCkJ1dCBvdGhlciB3YXlzIGNvdWxkIGJlIG9rIHRvby4KCj4gCj4g
PiAKPiA+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
