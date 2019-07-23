Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9401D7160D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 12:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9y9AWgraxijz0xMsunRdTlKI4lCLIAl7miUa7/aCl1o=; b=e3KV+Djtwzggql
	+g1uRM9Bds+S+ywFxRvAvBZRXh2KLCGoEoo1/YSZFg15epVSMy2IpH8/lSvt5DeVT/MrfxaZ5bWBA
	xCnP1ebFAITGfobhFKsrLV7btyxqHkD5er9qDIO5sqXk7m0OvYbGQaCCEiQ2lToWgXArj4Nu/nldj
	601Sf1LIvjmePaSwZhJmG5tum5y2f3k9tBBFDJwN7Voh3YoakdiCe4/uH6sphS6dFf9cdasXm/tT4
	bKvRV5gmmPENZhyvS+/hXQOwrpHYMjF7YazxlAzJ6/FI6H/a4gIBNTz1ybHs/d6mBLtzsmrWs2kbI
	ANDTfhmE1eNTee+5Rgig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hps22-0001aI-VJ; Tue, 23 Jul 2019 10:28:31 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hps1X-0001Wi-BV
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 10:28:01 +0000
Received: by mail-qt1-f194.google.com with SMTP id r6so37139028qtt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 03:27:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=BenoyznfTyLcx1/8jObFzEFhYgrS+1A5bA/DCD6z1+I=;
 b=NaYh6bGeI7zKFpmGapSnjvSrT9P4Wt5doJkshENkC8dYq4gGG2mzTcenzLTnbU7KiL
 ys8opEW7OAkAeSebfvL5eTo086ZMnmhArKNb4uq4hxGKYXJfuIQ0PaMUv3jIzQgy1kOU
 B5KxxLhMNHKi0OX4gZ6vIPYnvj6KrdePvKx8zq6nJh/ui/omJTzbpPHUiK6OBRDc/hhG
 Cai5NBDqXUvKccg9HvpEjyGj2UTCUQEbN2UIVY8v7KWwOsCLeyq/9Mf4BFKUBXWWrijC
 9sc0sl0PgLq/kZS2H0mf39MhG+sfkU5M2Lw0AKzU4igQUCjMHhY/unutoZGHwPyrI2zX
 Q0bA==
X-Gm-Message-State: APjAAAVT3aaOnOV0hSn6oQ/ETQmq/P7gB/4fso3JC42BylbLBmj6Jpit
 0OgfYTmFU5qCco2TwhNg6qPGVA==
X-Google-Smtp-Source: APXvYqwZ6OYsefBRjfzyywhyIbfQiowEEJG908kuZZQl/RMZTRF+2Kzuq3TqlfZM8y5m7uQqXQ3hzQ==
X-Received: by 2002:a0c:ae6d:: with SMTP id z42mr53764098qvc.8.1563877678094; 
 Tue, 23 Jul 2019 03:27:58 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 l5sm19178166qte.9.2019.07.23.03.27.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 03:27:57 -0700 (PDT)
Date: Tue, 23 Jul 2019 06:27:48 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190723062221-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
 <20190722035657-mutt-send-email-mst@kernel.org>
 <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
 <20190723010156-mutt-send-email-mst@kernel.org>
 <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
 <20190723032800-mutt-send-email-mst@kernel.org>
 <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_032759_529005_828DCD15 
X-CRM114-Status: GOOD (  33.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
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

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDQ6NDI6MTlQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjMg5LiL5Y2IMzo1NiwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDE6NDg6NTJQTSArMDgwMCwgSmFzb24gV2Fu
ZyB3cm90ZToKPiA+ID4gT24gMjAxOS83LzIzIOS4i+WNiDE6MDIsIE1pY2hhZWwgUy4gVHNpcmtp
biB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIEp1bCAyMywgMjAxOSBhdCAxMTo1NToyOEFNICswODAw
LCBKYXNvbiBXYW5nIHdyb3RlOgo+ID4gPiA+ID4gT24gMjAxOS83LzIyIOS4i+WNiDQ6MDIsIE1p
Y2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPiA+ID4gPiA+ID4gT24gTW9uLCBKdWwgMjIsIDIwMTkg
YXQgMDE6MjE6NTlQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToKPiA+ID4gPiA+ID4gPiBPbiAy
MDE5LzcvMjEg5LiL5Y2INjowMiwgTWljaGFlbCBTLiBUc2lya2luIHdyb3RlOgo+ID4gPiA+ID4g
PiA+ID4gT24gU2F0LCBKdWwgMjAsIDIwMTkgYXQgMDM6MDg6MDBBTSAtMDcwMCwgc3l6Ym90IHdy
b3RlOgo+ID4gPiA+ID4gPiA+ID4gPiBzeXpib3QgaGFzIGJpc2VjdGVkIHRoaXMgYnVnIHRvOgo+
ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gY29tbWl0IDdmNDY2MDMyZGM5ZTVh
NjEyMTdmMjJlYTM0YjJkZjkzMjc4NmJiZmMKPiA+ID4gPiA+ID4gPiA+ID4gQXV0aG9yOiBKYXNv
biBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgo+ID4gPiA+ID4gPiA+ID4gPiBEYXRlOiAgIEZy
aSBNYXkgMjQgMDg6MTI6MTggMjAxOSArMDAwMAo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiA+ID4gICAgICAgICB2aG9zdDogYWNjZXNzIHZxIG1ldGFkYXRhIHRocm91Z2gga2VybmVs
IHZpcnR1YWwgYWRkcmVzcwo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gYmlz
ZWN0aW9uIGxvZzogIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvYmlzZWN0LnR4dD94
PTE0OWE4YTIwNjAwMDAwCj4gPiA+ID4gPiA+ID4gPiA+IHN0YXJ0IGNvbW1pdDogICA2ZDIxYTQx
YiBBZGQgbGludXgtbmV4dCBzcGVjaWZpYyBmaWxlcyBmb3IgMjAxOTA3MTgKPiA+ID4gPiA+ID4g
PiA+ID4gZ2l0IHRyZWU6ICAgICAgIGxpbnV4LW5leHQKPiA+ID4gPiA+ID4gPiA+ID4gZmluYWwg
Y3Jhc2g6ICAgIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVwb3J0LnR4dD94PTE2
OWE4YTIwNjAwMDAwCj4gPiA+ID4gPiA+ID4gPiA+IGNvbnNvbGUgb3V0cHV0OiBodHRwczovL3N5
emthbGxlci5hcHBzcG90LmNvbS94L2xvZy50eHQ/eD0xMjlhOGEyMDYwMDAwMAo+ID4gPiA+ID4g
PiA+ID4gPiBrZXJuZWwgY29uZmlnOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC8u
Y29uZmlnP3g9MzQzMGExNTFlMTQ1MjMzMQo+ID4gPiA+ID4gPiA+ID4gPiBkYXNoYm9hcmQgbGlu
azogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20vYnVnP2V4dGlkPWU1ODExMmQ3MWY3NzEx
M2RkYjdiCj4gPiA+ID4gPiA+ID4gPiA+IHN5eiByZXBybzogICAgICBodHRwczovL3N5emthbGxl
ci5hcHBzcG90LmNvbS94L3JlcHJvLnN5ej94PTEwMTM5ZTY4NjAwMDAwCj4gPiA+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBSZXBvcnRlZC1ieTogc3l6Ym90K2U1ODExMmQ3MWY3NzEx
M2RkYjdiQHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KPiA+ID4gPiA+ID4gPiA+ID4gRml4ZXM6
IDdmNDY2MDMyZGM5ZSAoInZob3N0OiBhY2Nlc3MgdnEgbWV0YWRhdGEgdGhyb3VnaCBrZXJuZWwg
dmlydHVhbAo+ID4gPiA+ID4gPiA+ID4gPiBhZGRyZXNzIikKPiA+ID4gPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gPiA+IEZvciBpbmZvcm1hdGlvbiBhYm91dCBiaXNlY3Rpb24gcHJvY2VzcyBz
ZWU6IGh0dHBzOi8vZ29vLmdsL3Rwc21FSiNiaXNlY3Rpb24KPiA+ID4gPiA+ID4gPiA+IE9LIEkg
cG9rZWQgYXQgdGhpcyBmb3IgYSBiaXQsIEkgc2VlIHNldmVyYWwgdGhpbmdzIHRoYXQKPiA+ID4g
PiA+ID4gPiA+IHdlIG5lZWQgdG8gZml4LCB0aG91Z2ggSSdtIG5vdCB5ZXQgc3VyZSBpdCdzIHRo
ZSByZWFzb24gZm9yCj4gPiA+ID4gPiA+ID4gPiB0aGUgZmFpbHVyZXM6Cj4gPiA+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gMS4gbW11X25vdGlmaWVyX3JlZ2lz
dGVyIHNob3VsZG4ndCBiZSBjYWxsZWQgZnJvbSB2aG9zdF92cmluZ19zZXRfbnVtX2FkZHIKPiA+
ID4gPiA+ID4gPiA+ICAgICAgICBUaGF0J3MganVzdCBhIGJhZCBoYWNrLAo+ID4gPiA+ID4gPiA+
IFRoaXMgaXMgdXNlZCB0byBhdm9pZCBob2xkaW5nIGxvY2sgd2hlbiBjaGVja2luZyB3aGV0aGVy
IHRoZSBhZGRyZXNzZXMgYXJlCj4gPiA+ID4gPiA+ID4gb3ZlcmxhcHBlZC4gT3RoZXJ3aXNlIHdl
IG5lZWQgdG8gdGFrZSBzcGlubG9jayBmb3IgZWFjaCBpbnZhbGlkYXRpb24gcmVxdWVzdAo+ID4g
PiA+ID4gPiA+IGV2ZW4gaWYgaXQgd2FzIHRoZSB2YSByYW5nZSB0aGF0IGlzIG5vdCBpbnRlcmVz
dGVkIGZvciB1cy4gVGhpcyB3aWxsIGJlIHZlcnkKPiA+ID4gPiA+ID4gPiBzbG93IGUuZyBkdXJp
bmcgZ3Vlc3QgYm9vdC4KPiA+ID4gPiA+ID4gS1ZNIHNlZW1zIHRvIGRvIGV4YWN0bHkgdGhhdC4K
PiA+ID4gPiA+ID4gSSB0cmllZCBhbmQgZ3Vlc3QgZG9lcyBub3Qgc2VlbSB0byBib290IGFueSBz
bG93ZXIuCj4gPiA+ID4gPiA+IERvIHlvdSBvYnNlcnZlIGFueSBzbG93ZG93bj8KPiA+ID4gPiA+
IFllcyBJIGRvLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gTm93IEkgdG9vayBh
IGhhcmQgbG9vayBhdCB0aGUgdWFkZHIgaGFja2VyeSBpdCByZWFsbHkgbWFrZXMKPiA+ID4gPiA+
ID4gbWUgbmVydmlvdXMuIFNvIEkgdGhpbmsgZm9yIHRoaXMgcmVsZWFzZSB3ZSB3YW50IHNvbWV0
aGluZwo+ID4gPiA+ID4gPiBzYWZlLCBhbmQgb3B0aW1pemF0aW9ucyBvbiB0b3AuIEFzIGFuIGFs
dGVybmF0aXZlIHJldmVydCB0aGUKPiA+ID4gPiA+ID4gb3B0aW1pemF0aW9uIGFuZCB0cnkgYWdh
aW4gZm9yIG5leHQgbWVyZ2Ugd2luZG93Lgo+ID4gPiA+ID4gV2lsbCBwb3N0IGEgc2VyaWVzIG9m
IGZpeGVzLCBsZXQgbWUga25vdyBpZiB5b3UncmUgb2sgd2l0aCB0aGF0Lgo+ID4gPiA+ID4gCj4g
PiA+ID4gPiBUaGFua3MKPiA+ID4gPiBJJ2QgcHJlZmVyIHlvdSB0byB0YWtlIGEgaGFyZCBsb29r
IGF0IHRoZSBwYXRjaCBJIHBvc3RlZAo+ID4gPiA+IHdoaWNoIG1ha2VzIGNvZGUgY2xlYW5lciwK
PiA+ID4gCj4gPiA+IEkgZGlkLiBCdXQgaXQgbG9va3MgdG8gbWUgYSBzZXJpZXMgdGhhdCBpcyBv
bmx5IGFib3V0IDYwIGxpbmVzIG9mIGNvZGUgY2FuCj4gPiA+IGZpeCBhbGwgdGhlIGlzc3VlcyB3
ZSBmb3VuZCB3aXRob3V0IHJldmVydGluZyB0aGUgdWFkZHIgb3B0aW1pemF0aW9uLgo+ID4gQW5v
dGhlciB0aGluZyBJIGxpa2UgYWJvdXQgdGhlIHBhdGNoIEkgcG9zdGVkIGlzIHRoYXQKPiA+IGl0
IHJlbW92ZXMgNjAgbGluZXMgb2YgY29kZSwgaW5zdGVhZCBvZiBhZGRpbmcgbW9yZSA6KQo+ID4g
TW9zdGx5IGJlY2F1c2Ugb2YgdW5pZnlpbmcgZXZlcnl0aGluZyBpbnRvCj4gPiBhIHNpbmdsZSBj
bGVhbnVwIGZ1bmN0aW9uIGFuZCB1c2luZyBrZnJlZV9yY3UuCj4gCj4gCj4gWWVzLgo+IAo+IAo+
ID4gCj4gPiBTbyBob3cgYWJvdXQgdGhpczogZG8gZXhhY3RseSB3aGF0IHlvdSBwcm9wb3NlIGJ1
dCBhcyBhIDIgcGF0Y2ggc2VyaWVzOgo+ID4gc3RhcnQgd2l0aCB0aGUgc2xvdyBzYWZlIHBhdGNo
LCBhbmQgYWRkIHRoZW4gcmV0dXJuIHVhZGRyIG9wdGltaXphdGlvbnMKPiA+IG9uIHRvcC4gV2Ug
Y2FuIHRoZW4gbW9yZSBlYXNpbHkgcmVhc29uIGFib3V0IHdoZXRoZXIgdGhleSBhcmUgc2FmZS4K
PiAKPiAKPiBJZiB5b3Ugc3RpY2ssIEkgY2FuIGRvIHRoaXMuCgpHaXZlbiBJIHJlYWxpemVkIG15
IHBhdGNoIGlzIGJ1Z2d5IGluIHRoYXQKaXQgZG9lcyBub3Qgd2FpdCBmb3Igb3V0c3RhbmRpbmcg
bWFwcywgSSBkb24ndAppbnNpc3QuCgo+IAo+ID4gQmFzaWNhbGx5IHlvdSBhcmUgc2F5aW5nIHRo
aXM6Cj4gPiAJLSBub3RpZmllcnMgYXJlIG9ubHkgbmVlZGVkIHRvIGludmFsaWRhdGUgbWFwcwo+
ID4gCS0gd2UgbWFrZSBzdXJlIGFueSB1YWRkciBjaGFuZ2UgaW52YWxpZGF0ZXMgbWFwcyBhbnl3
YXkKPiA+IAktIHRodXMgaXQncyBvayBub3QgdG8gaGF2ZSBub3RpZmllcnMgc2luY2Ugd2UgZG8K
PiA+IAkgIG5vdCBoYXZlIG1hcHMKPiA+IAo+ID4gQWxsIHRoaXMgbG9va3Mgb2sgYnV0IHRoZSBx
dWVzdGlvbiBpcyB3aHkgZG8gd2UKPiA+IGJvdGhlciB1bnJlZ2lzdGVyaW5nIHRoZW0uIEFuZCB0
aGUgYW5zd2VyIHNlZW1zIHRvCj4gPiBiZSB0aGF0IHRoaXMgaXMgc28gd2UgY2FuIHN0YXJ0IHdp
dGggYSBiYWxhbmNlZAo+ID4gY291bnRlcjogb3RoZXJ3aXNlIHdlIGNhbiBiZSBiZXR3ZWVuIF9z
dGFydCBhbmQKPiA+IF9lbmQgY2FsbHMuCj4gCj4gCj4gWWVzLCBzaW5jZSB0aGVyZSBjb3VsZCBi
ZSBtdWx0aXBsZSBjby1jdXJyZW50IGludmFsaWRhdGlvbiByZXF1ZXN0cy4gV2UgbmVlZAo+IGNv
dW50IHRoZW0gdG8gbWFrZSBzdXJlIHdlIGRvbid0IHBpbiB3cm9uZyBwYWdlcy4KPiAKPiAKPiA+
IAo+ID4gSSBhbHNvIHdvbmRlciBhYm91dCBvcmRlcmluZy4ga3ZtIGhhcyB0aGlzOgo+ID4gICAg
ICAgICAvKgo+ID4gICAgICAgICAgICogVXNlZCB0byBjaGVjayBmb3IgaW52YWxpZGF0aW9ucyBp
biBwcm9ncmVzcywgb2YgdGhlIHBmbiB0aGF0IGlzCj4gPiAgICAgICAgICAgKiByZXR1cm5lZCBi
eSBwZm5fdG9fcGZuX3Byb3QgYmVsb3cuCj4gPiAgICAgICAgICAgKi8KPiA+ICAgICAgICAgIG1t
dV9zZXEgPSBrdm0tPm1tdV9ub3RpZmllcl9zZXE7Cj4gPiAgICAgICAgICAvKgo+ID4gICAgICAg
ICAgICogRW5zdXJlIHRoZSByZWFkIG9mIG1tdV9ub3RpZmllcl9zZXEgaXNuJ3QgcmVvcmRlcmVk
IHdpdGggUFRFIHJlYWRzIGluCj4gPiAgICAgICAgICAgKiBnZm5fdG9fcGZuX3Byb3QoKSAod2hp
Y2ggY2FsbHMgZ2V0X3VzZXJfcGFnZXMoKSksIHNvIHRoYXQgd2UgZG9uJ3QKPiA+ICAgICAgICAg
ICAqIHJpc2sgdGhlIHBhZ2Ugd2UgZ2V0IGEgcmVmZXJlbmNlIHRvIGdldHRpbmcgdW5tYXBwZWQg
YmVmb3JlIHdlIGhhdmUgYQo+ID4gICAgICAgICAgICogY2hhbmNlIHRvIGdyYWIgdGhlIG1tdV9s
b2NrIHdpdGhvdXQgbW11X25vdGlmaWVyX3JldHJ5KCkgbm90aWNpbmcuCj4gPiAgICAgICAgICAg
Kgo+ID4gICAgICAgICAgICogVGhpcyBzbXBfcm1iKCkgcGFpcnMgd2l0aCB0aGUgZWZmZWN0aXZl
IHNtcF93bWIoKSBvZiB0aGUgY29tYmluYXRpb24KPiA+ICAgICAgICAgICAqIG9mIHRoZSBwdGVf
dW5tYXBfdW5sb2NrKCkgYWZ0ZXIgdGhlIFBURSBpcyB6YXBwZWQsIGFuZCB0aGUKPiA+ICAgICAg
ICAgICAqIHNwaW5fbG9jaygpIGluIGt2bV9tbXVfbm90aWZpZXJfaW52YWxpZGF0ZV88cGFnZXxy
YW5nZV9lbmQ+KCkgYmVmb3JlCj4gPiAgICAgICAgICAgKiBtbXVfbm90aWZpZXJfc2VxIGlzIGlu
Y3JlbWVudGVkLgo+ID4gICAgICAgICAgICovCj4gPiAgICAgICAgICBzbXBfcm1iKCk7Cj4gPiAK
PiA+IGRvZXMgdGhpcyBhcHBseSB0byB1cz8gQ2FuJ3Qgd2UgdXNlIGEgc2VxbG9jayBpbnN0ZWFk
IHNvIHdlIGRvCj4gPiBub3QgbmVlZCB0byB3b3JyeT8KPiAKPiAKPiBJJ20gbm90IGZhbWlsaWFy
IHdpdGgga3ZtIE1NVSBpbnRlcm5hbHMsIGJ1dCB3ZSBkbyBldmVyeXRoaW5nIHVuZGVyIG9mCj4g
bW11X2xvY2suCj4gCj4gVGhhbmtzCgpJIGRvbid0IHRoaW5rIHRoaXMgaGVscHMgYXQgYWxsLgoK
VGhlcmUncyBubyBsb2NrIGJldHdlZW4gY2hlY2tpbmcgdGhlIGludmFsaWRhdGUgY291bnRlciBh
bmQKZ2V0IHVzZXIgcGFnZXMgZmFzdCB3aXRoaW4gdmhvc3RfbWFwX3ByZWZldGNoLiBTbyBpdCdz
IHBvc3NpYmxlCnRoYXQgZ2V0IHVzZXIgcGFnZXMgZmFzdCByZWFkcyBQVEVzIHNwZWN1bGF0aXZl
bHkgYmVmb3JlCmludmFsaWRhdGUgaXMgcmVhZC4KCi0tIApNU1QKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
