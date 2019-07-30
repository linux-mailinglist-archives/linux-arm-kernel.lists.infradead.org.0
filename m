Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D617ABF9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 17:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvMYkufuK3KNV/Z7QHIp6eaDhNj/QsSJL8gGgnYayCU=; b=uPWctDsvpA5gtS
	4JDZT0m5L9CdKCIFqy3wbkxkN5MrBtjU5Uo4PQ69gYCONI//NGAuuZeUbki/Lvov1LX7TLFVamjHF
	mz1/9Su5t2mKPCT5zxL31HR3Sn8dof9wasc7PT2RMOc75GdrkndYvE1zCR8SW6wieeC1Z8QuE1lJr
	p46VIlD23V+ZEA8pc/TOmInE+6jgoaCTnj4aCcVg7troUqCNEDrmgNqMqnNuFYWtNdJRTQypZ3sI5
	7vbX9233jVGRUkzKB1RoTpg+ScY6b+RB/5QvpVGHe862wzgMkf8fbDyvF3C7P/2BMrw+V3kA5YTsx
	iic1PIfdcY6WBux8YBAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTkC-0001Sl-MQ; Tue, 30 Jul 2019 15:08:52 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTk0-0001Rq-M8
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 15:08:42 +0000
Received: by mail-qt1-f193.google.com with SMTP id d23so63401169qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 08:08:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=HzqScm+MgZUE/z+FZh2jR3LjGduzejNoschvUbrV2xA=;
 b=NZZXdVOIdplK2m3BK6qFueCyfrLQCmkv5KjrVQL1ommMb7To8AUApcwiNqB2s2WJKm
 t4da/3b3Et/psiznwpMeLJZRqlhYSDFMQ/UDS1rLa0afmsfkcifXG4Hxdwg7JGJMsNTG
 U46E65uw0pH/SNd4S5dH7k/L+DgNLDdkwUGDZkcXrHRUF7FIayZg6QdlfV4x0GSpAfCQ
 tThIhIH13QbK7MNZHCqlQX/8VYOeuzWhIHhqYMPnHP5Ys5mQqOfpX9yR3xBVnyHXND9p
 svM//3wizOFYBATrzM+rzz5MIOebpQBxCqMdgJyFOT+oh/VoHbdPZubMNZYLjhg+1P0s
 jP3A==
X-Gm-Message-State: APjAAAV/IAHrNK7Qa72AMHEyVOOKSzaRrOPv4+X1BohiPAw1i35w1pIi
 afg/4/pXLagyTVIqfevXWmw0fA==
X-Google-Smtp-Source: APXvYqyAEcQ2rI90c7ov4XOcxi/h1Ciz83jV4TqK4E5vsU115tJuJqCFIr/5rf4KY/QKmO1zU9cv0g==
X-Received: by 2002:ac8:2b14:: with SMTP id 20mr84731688qtu.295.1564499319358; 
 Tue, 30 Jul 2019 08:08:39 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 z1sm29387735qke.122.2019.07.30.08.08.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 08:08:38 -0700 (PDT)
Date: Tue, 30 Jul 2019 11:08:30 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190730110633-mutt-send-email-mst@kernel.org>
References: <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
 <20190726082837-mutt-send-email-mst@kernel.org>
 <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
 <aaefa93e-a0de-1c55-feb0-509c87aae1f3@redhat.com>
 <20190726094756-mutt-send-email-mst@kernel.org>
 <0792ee09-b4b7-673c-2251-e5e0ce0fbe32@redhat.com>
 <20190729045127-mutt-send-email-mst@kernel.org>
 <4d43c094-44ed-dbac-b863-48fc3d754378@redhat.com>
 <20190729104028-mutt-send-email-mst@kernel.org>
 <96b1d67c-3a8d-1224-e9f0-5f7725a3dc10@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96b1d67c-3a8d-1224-e9f0-5f7725a3dc10@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_080840_875150_10772A72 
X-CRM114-Status: GOOD (  32.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
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

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDM6NDQ6NDdQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjkg5LiL5Y2IMTA6NDQsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90
ZToKPiA+IE9uIE1vbiwgSnVsIDI5LCAyMDE5IGF0IDEwOjI0OjQzUE0gKzA4MDAsIEphc29uIFdh
bmcgd3JvdGU6Cj4gPiA+IE9uIDIwMTkvNy8yOSDkuIvljYg0OjU5LCBNaWNoYWVsIFMuIFRzaXJr
aW4gd3JvdGU6Cj4gPiA+ID4gT24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDE6NTQ6NDlQTSArMDgw
MCwgSmFzb24gV2FuZyB3cm90ZToKPiA+ID4gPiA+IE9uIDIwMTkvNy8yNiDkuIvljYg5OjQ5LCBN
aWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiBPaywgbGV0IG1lIHJldHJ5
IGlmIG5lY2Vzc2FyeSAoYnV0IEkgZG8gcmVtZW1iZXIgSSBlbmQgdXAgd2l0aCBkZWFkbG9ja3MK
PiA+ID4gPiA+ID4gPiA+IGxhc3QgdHJ5KS4KPiA+ID4gPiA+ID4gPiBPaywgSSBwbGF5IGEgbGl0
dGxlIHdpdGggdGhpcy4gQW5kIGl0IHdvcmtzIHNvIGZhci4gV2lsbCBkbyBtb3JlIHRlc3RpbmcK
PiA+ID4gPiA+ID4gPiB0b21vcnJvdy4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBPbmUg
cmVhc29uIGNvdWxkIGJlIEkgc3dpdGNoIHRvIHVzZSBnZXRfdXNlcl9wYWdlc19mYXN0KCkgdG8K
PiA+ID4gPiA+ID4gPiBfX2dldF91c2VyX3BhZ2VzX2Zhc3QoKSB3aGljaCBkb2Vzbid0IG5lZWQg
bW1hcF9zZW0uCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gVGhhbmtzCj4gPiA+ID4gPiA+
IE9LIHRoYXQgc291bmRzIGdvb2QuIElmIHdlIGFsc28gc2V0IGEgZmxhZyB0byBtYWtlCj4gPiA+
ID4gPiA+IHZob3N0X2V4Y2VlZHNfd2VpZ2h0IGV4aXQsIHRoZW4gSSB0aGluayBpdCB3aWxsIGJl
IGFsbCBnb29kLgo+ID4gPiA+ID4gQWZ0ZXIgc29tZSBleHBlcmltZW50cywgSSBjYW1lIHVwIHR3
byBtZXRob2RzOgo+ID4gPiA+ID4gCj4gPiA+ID4gPiAxKSBzd2l0Y2ggdG8gdXNlIHZxLT5tdXRl
eCwgdGhlbiB3ZSBtdXN0IHRha2UgdGhlIHZxIGxvY2sgZHVyaW5nIHJhbmdlCj4gPiA+ID4gPiBj
aGVja2luZyAoYnV0IEkgZG9uJ3Qgc2VlIG9idmlvdXMgc2xvd2Rvd24gZm9yIDE2dmNwdXMgKyAx
NnF1ZXVlcykuIFNldHRpbmcKPiA+ID4gPiA+IGZsYWdzIGR1cmluZyB3ZWlnaHQgY2hlY2sgc2hv
dWxkIHdvcmsgYnV0IGl0IHN0aWxsIGNhbid0IGFkZHJlc3MgdGhlIHdvcnN0Cj4gPiA+ID4gPiBj
YXNlOiB3YWl0IGZvciB0aGUgcGFnZSB0byBiZSBzd2FwcGVkIGluLiBJcyB0aGlzIGFjY2VwdGFi
bGU/Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IDIpIHVzaW5nIGN1cnJlbnQgUkNVIGJ1dCByZXBsYWNl
IHN5bmNocm9uaXplX3JjdSgpIHdpdGggdmhvc3Rfd29ya19mbHVzaCgpLgo+ID4gPiA+ID4gVGhl
IHdvcnN0IGNhc2UgaXMgdGhlIHNhbWUgYXMgMSkgYnV0IHdlIGNhbiBjaGVjayByYW5nZSB3aXRo
b3V0IGhvbGRpbmcgYW55Cj4gPiA+ID4gPiBsb2Nrcy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gV2hp
Y2ggb25lIGRpZCB5b3UgcHJlZmVyPwo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGFua3MKPiA+ID4g
PiBJIHdvdWxkIHJhdGhlciB3ZSBzdGFydCB3aXRoIDEgYW5kIHN3aXRjaCB0byAyIGFmdGVyIHdl
Cj4gPiA+ID4gY2FuIHNob3cgc29tZSBnYWluLgo+ID4gPiA+IAo+ID4gPiA+IEJ1dCB0aGUgd29y
c3QgY2FzZSBuZWVkcyB0byBiZSBhZGRyZXNzZWQuCj4gPiA+IAo+ID4gPiBZZXMuCj4gPiA+IAo+
ID4gPiAKPiA+ID4gPiBIb3cgYWJvdXQgc2VuZGluZyBhIHNpZ25hbCB0bwo+ID4gPiA+IHRoZSB2
aG9zdCB0aHJlYWQ/ICBXZSB3aWxsIG5lZWQgdG8gZml4IHVwIGVycm9yIGhhbmRsaW5nIChJIHRo
aW5rIHRoYXQKPiA+ID4gPiBhdCB0aGUgbW9tZW50IGl0IHdpbGwgZXJyb3Igb3V0IGluIHRoYXQg
Y2FzZSwgaGFuZGxpbmcgdGhpcyBhcyBFRkFVTFQgLQo+ID4gPiA+IGFuZCB3ZSBkb24ndCB3YW50
IHRvIGRyb3AgcGFja2V0cyBpZiB3ZSBjYW4gaGVscCBpdCwgYW5kIHN1cmVseSBub3QKPiA+ID4g
PiBlbnRlciBhbnkgZXJyb3Igc3RhdGVzLiAgSW4gcGFydGljdWxhciBpdCBtaWdodCBiZSBlc3Bl
Y2lhbGx5IHRyaWNreSBpZgo+ID4gPiA+IHdlIHdyb3RlIGludG8gdXNlcnNwYWNlIG1lbW9yeSBh
bmQgYXJlIG5vdyB0cnlpbmcgdG8gbG9nIHRoZSB3cml0ZS4KPiA+ID4gPiBJIGd1ZXNzIHdlIGNh
biBkaXNhYmxlIHRoZSBvcHRpbWl6YXRpb24gaWYgbG9nIGlzIGVuYWJsZWQ/KS4KPiA+ID4gCj4g
PiA+IFRoaXMgbWF5IHdvcmsgYnV0IHJlcXVpcmVzIGEgbG90IG9mIGNoYW5nZXMuCj4gPiBJIGFn
cmVlLgo+ID4gCj4gPiA+IEFuZCBhY3R1YWxseSBpdCdzIHRoZSBwcmljZSBvZgo+ID4gPiB1c2lu
ZyB2cSBtdXRleC4KPiA+IE5vdCBzdXJlIHdoYXQncyBtZWFudCBoZXJlLgo+IAo+IAo+IEkgbWVh
biBpZiB3ZSB1c2UgdnEgbXV0ZXgsIGl0IG1lYW5zIHRoZSBjcml0aWNhbCBzZWN0aW9uIHdhcyBp
bmNyZWFzZWQgYW5kCj4gd2UgbmVlZCB0byBkZWFsIHdpdGggc3dhcHBpbmcgdGhlbi4KPiAKPiAK
PiA+IAo+ID4gPiBBY3R1YWxseSwgdGhlIGNyaXRpY2FsIHNlY3Rpb24gc2hvdWxkIGJlIHJhdGhl
ciBzbWFsbCwgZS5nCj4gPiA+IGp1c3QgaW5zaWRlIG1lbW9yeSBhY2Nlc3NvcnMuCj4gPiBBbHNv
IHRydWUuCj4gPiAKPiA+ID4gSSB3b25kZXIgd2hldGhlciBvciBub3QganVzdCBkbyBzeW5jaHJv
bml6ZSBvdXIgc2VsZiBsaWtlOgo+ID4gPiAKPiA+ID4gc3RhdGljIHZvaWQgaW5saW5lIHZob3N0
X2luY192cV9yZWYoc3RydWN0IHZob3N0X3ZpcnRxdWV1ZSAqdnEpCj4gPiA+IHsKPiA+ID4gIMKg
wqDCoMKgwqDCoMKgIGludCByZWYgPSBSRUFEX09OQ0UodnEtPnJlZik7Cj4gPiA+IAo+ID4gPiAg
wqDCoMKgwqDCoMKgwqAgV1JJVEVfT05DRSh2cS0+cmVmLCByZWYgKyAxKTsKPiA+ID4gc21wX3Jt
YigpOwo+ID4gPiB9Cj4gPiA+IAo+ID4gPiBzdGF0aWMgdm9pZCBpbmxpbmUgdmhvc3RfZGVjX3Zx
X3JlZihzdHJ1Y3Qgdmhvc3RfdmlydHF1ZXVlICp2cSkKPiA+ID4gewo+ID4gPiAgwqDCoMKgwqDC
oMKgwqAgaW50IHJlZiA9IFJFQURfT05DRSh2cS0+cmVmKTsKPiA+ID4gCj4gPiA+IHNtcF93bWIo
KTsKPiA+ID4gIMKgwqDCoMKgwqDCoMKgIFdSSVRFX09OQ0UodnEtPnJlZiwgcmVmIC0gMSk7Cj4g
PiA+IH0KPiA+ID4gCj4gPiA+IHN0YXRpYyB2b2lkIGlubGluZSB2aG9zdF93YWl0X2Zvcl9yZWYo
c3RydWN0IHZob3N0X3ZpcnRxdWV1ZSAqdnEpCj4gPiA+IHsKPiA+ID4gIMKgwqDCoMKgwqDCoMKg
IHdoaWxlIChSRUFEX09OQ0UodnEtPnJlZikpOwo+ID4gPiBtYigpOwo+ID4gPiB9Cj4gPiBMb29r
cyBnb29kIGJ1dCBJJ2QgbGlrZSB0byB0aGluayBvZiBhIHN0cmF0ZWd5L2V4aXN0aW5nIGxvY2sg
dGhhdCBsZXQgdXMKPiA+IGJsb2NrIHByb3Blcmx5IGFzIG9wcG9zZWQgdG8gc3Bpbm5pbmcsIHRo
YXQgd291bGQgYmUgbW9yZSBmcmllbmRseSB0bwo+ID4gZS5nLiB0aGUgcmVhbHRpbWUgcGF0Y2gu
Cj4gCj4gCj4gRG9lcyBpdCBtYWtlIHNlbnNlIHRvIGRpc2FibGUgcHJlZW1wdGlvbiBpbiB0aGUg
Y3JpdGljYWwgc2VjdGlvbj8gVGhlbiB3ZQo+IGRvbid0IG5lZWQgdG8gYmxvY2sgYW5kIHdlIGhh
dmUgYSBkZXRlcm1pbmlzdGljIHRpbWUgc3BlbnQgb24gbWVtb3J5Cj4gYWNjc3NvcnM/CgpIbW0g
bWF5YmUuIEknbSBnZXR0aW5nIHJlYWxseSBuZXJ2aW91cyBhdCB0aGlzIHBvaW50IC0gd2UKc2Vl
bSB0byBiZSB1c2luZyBldmVyeSB0cmljayBpbiB0aGUgYm9vay4KCj4gCj4gPiAKPiA+ID4gT3Ig
dXNpbmcgc21wX2xvYWRfYWNxdWlyZSgpL3NtcF9zdG9yZV9yZWxlYXNlKCkgaW5zdGVhZD8KPiA+
ID4gCj4gPiA+IFRoYW5rcwo+ID4gVGhlc2UgYXJlIGNoZWFwZXIgb24geDg2LCB5ZXMuCj4gCj4g
Cj4gV2lsbCB1c2UgdGhpcy4KPiAKPiBUaGFua3MKPiAKPiAKClRoaXMgbG9va3Mgc3VzcGljaW91
c2x5IGxpa2UgYSBzZXFsb2NrIHRob3VnaC4KQ2FuIHRoYXQgYmUgdXNlZCBzb21laG93PwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
