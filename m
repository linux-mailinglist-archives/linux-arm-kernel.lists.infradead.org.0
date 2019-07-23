Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DADE71440
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8BE2zQgwCEvdazUrjdO7ZIY4ARMYPfOx1rT1bG4lqlM=; b=RekTnthP6hVnR+kPZuY7hWvaK
	WeXZ59qACi8+G0VGP31xMcNuxkH9uG7+AhlXz83sJ26gkzH/FdW9r494VKB7lXXBiAQWuzq5RCtMS
	7N1keh7oOndsnbe/odEJLuiUZnoWkuAKBlB7g3PPP09BuRnGOAL+IdkLcjtHdg2Cgv33PZGnU2eIo
	2ZTva7urVdXVBBvULc2iP1vsNkAmKw3AiOUo24V505BpF/Cv4bjPwEmMPVgMEmXu61y39X3PLZW9h
	jG/DZwLcRFwbB35+tnQoAJJ9G+xqZdU31jOh9afSA265HmP740A4RfN6O7Y5ms0Io1NPxBqBC8QS7
	YiTpV62uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqOV-00089V-0U; Tue, 23 Jul 2019 08:43:35 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqNT-0007Lw-L7
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:42:33 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A801B59455;
 Tue, 23 Jul 2019 08:42:30 +0000 (UTC)
Received: from [10.72.12.26] (ovpn-12-26.pek2.redhat.com [10.72.12.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BA57B608A5;
 Tue, 23 Jul 2019 08:42:18 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
 <20190722035657-mutt-send-email-mst@kernel.org>
 <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
 <20190723010156-mutt-send-email-mst@kernel.org>
 <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
 <20190723032800-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
Date: Tue, 23 Jul 2019 16:42:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723032800-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Tue, 23 Jul 2019 08:42:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_014231_964536_5498AC1E 
X-CRM114-Status: GOOD (  27.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Ck9uIDIwMTkvNy8yMyDkuIvljYgzOjU2LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
VHVlLCBKdWwgMjMsIDIwMTkgYXQgMDE6NDg6NTJQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzIzIOS4i+WNiDE6MDIsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
IE9uIFR1ZSwgSnVsIDIzLCAyMDE5IGF0IDExOjU1OjI4QU0gKzA4MDAsIEphc29uIFdhbmcgd3Jv
dGU6Cj4+Pj4gT24gMjAxOS83LzIyIOS4i+WNiDQ6MDIsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90
ZToKPj4+Pj4gT24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDE6MjE6NTlQTSArMDgwMCwgSmFzb24g
V2FuZyB3cm90ZToKPj4+Pj4+IE9uIDIwMTkvNy8yMSDkuIvljYg2OjAyLCBNaWNoYWVsIFMuIFRz
aXJraW4gd3JvdGU6Cj4+Pj4+Pj4gT24gU2F0LCBKdWwgMjAsIDIwMTkgYXQgMDM6MDg6MDBBTSAt
MDcwMCwgc3l6Ym90IHdyb3RlOgo+Pj4+Pj4+PiBzeXpib3QgaGFzIGJpc2VjdGVkIHRoaXMgYnVn
IHRvOgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBjb21taXQgN2Y0NjYwMzJkYzllNWE2MTIxN2YyMmVhMzRi
MmRmOTMyNzg2YmJmYwo+Pj4+Pj4+PiBBdXRob3I6IEphc29uIFdhbmcgPGphc293YW5nQHJlZGhh
dC5jb20+Cj4+Pj4+Pj4+IERhdGU6ICAgRnJpIE1heSAyNCAwODoxMjoxOCAyMDE5ICswMDAwCj4+
Pj4+Pj4+Cj4+Pj4+Pj4+ICAgICAgICAgdmhvc3Q6IGFjY2VzcyB2cSBtZXRhZGF0YSB0aHJvdWdo
IGtlcm5lbCB2aXJ0dWFsIGFkZHJlc3MKPj4+Pj4+Pj4KPj4+Pj4+Pj4gYmlzZWN0aW9uIGxvZzog
IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvYmlzZWN0LnR4dD94PTE0OWE4YTIwNjAw
MDAwCj4+Pj4+Pj4+IHN0YXJ0IGNvbW1pdDogICA2ZDIxYTQxYiBBZGQgbGludXgtbmV4dCBzcGVj
aWZpYyBmaWxlcyBmb3IgMjAxOTA3MTgKPj4+Pj4+Pj4gZ2l0IHRyZWU6ICAgICAgIGxpbnV4LW5l
eHQKPj4+Pj4+Pj4gZmluYWwgY3Jhc2g6ICAgIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29t
L3gvcmVwb3J0LnR4dD94PTE2OWE4YTIwNjAwMDAwCj4+Pj4+Pj4+IGNvbnNvbGUgb3V0cHV0OiBo
dHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L2xvZy50eHQ/eD0xMjlhOGEyMDYwMDAwMAo+
Pj4+Pj4+PiBrZXJuZWwgY29uZmlnOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC8u
Y29uZmlnP3g9MzQzMGExNTFlMTQ1MjMzMQo+Pj4+Pj4+PiBkYXNoYm9hcmQgbGluazogaHR0cHM6
Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20vYnVnP2V4dGlkPWU1ODExMmQ3MWY3NzExM2RkYjdiCj4+
Pj4+Pj4+IHN5eiByZXBybzogICAgICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L3Jl
cHJvLnN5ej94PTEwMTM5ZTY4NjAwMDAwCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFJlcG9ydGVkLWJ5OiBz
eXpib3QrZTU4MTEyZDcxZjc3MTEzZGRiN2JAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+Pj4+
Pj4+PiBGaXhlczogN2Y0NjYwMzJkYzllICgidmhvc3Q6IGFjY2VzcyB2cSBtZXRhZGF0YSB0aHJv
dWdoIGtlcm5lbCB2aXJ0dWFsCj4+Pj4+Pj4+IGFkZHJlc3MiKQo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBG
b3IgaW5mb3JtYXRpb24gYWJvdXQgYmlzZWN0aW9uIHByb2Nlc3Mgc2VlOiBodHRwczovL2dvby5n
bC90cHNtRUojYmlzZWN0aW9uCj4+Pj4+Pj4gT0sgSSBwb2tlZCBhdCB0aGlzIGZvciBhIGJpdCwg
SSBzZWUgc2V2ZXJhbCB0aGluZ3MgdGhhdAo+Pj4+Pj4+IHdlIG5lZWQgdG8gZml4LCB0aG91Z2gg
SSdtIG5vdCB5ZXQgc3VyZSBpdCdzIHRoZSByZWFzb24gZm9yCj4+Pj4+Pj4gdGhlIGZhaWx1cmVz
Ogo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiAxLiBtbXVfbm90aWZpZXJfcmVnaXN0ZXIgc2hvdWxk
bid0IGJlIGNhbGxlZCBmcm9tIHZob3N0X3ZyaW5nX3NldF9udW1fYWRkcgo+Pj4+Pj4+ICAgICAg
ICBUaGF0J3MganVzdCBhIGJhZCBoYWNrLAo+Pj4+Pj4gVGhpcyBpcyB1c2VkIHRvIGF2b2lkIGhv
bGRpbmcgbG9jayB3aGVuIGNoZWNraW5nIHdoZXRoZXIgdGhlIGFkZHJlc3NlcyBhcmUKPj4+Pj4+
IG92ZXJsYXBwZWQuIE90aGVyd2lzZSB3ZSBuZWVkIHRvIHRha2Ugc3BpbmxvY2sgZm9yIGVhY2gg
aW52YWxpZGF0aW9uIHJlcXVlc3QKPj4+Pj4+IGV2ZW4gaWYgaXQgd2FzIHRoZSB2YSByYW5nZSB0
aGF0IGlzIG5vdCBpbnRlcmVzdGVkIGZvciB1cy4gVGhpcyB3aWxsIGJlIHZlcnkKPj4+Pj4+IHNs
b3cgZS5nIGR1cmluZyBndWVzdCBib290Lgo+Pj4+PiBLVk0gc2VlbXMgdG8gZG8gZXhhY3RseSB0
aGF0Lgo+Pj4+PiBJIHRyaWVkIGFuZCBndWVzdCBkb2VzIG5vdCBzZWVtIHRvIGJvb3QgYW55IHNs
b3dlci4KPj4+Pj4gRG8geW91IG9ic2VydmUgYW55IHNsb3dkb3duPwo+Pj4+IFllcyBJIGRvLgo+
Pj4+Cj4+Pj4KPj4+Pj4gTm93IEkgdG9vayBhIGhhcmQgbG9vayBhdCB0aGUgdWFkZHIgaGFja2Vy
eSBpdCByZWFsbHkgbWFrZXMKPj4+Pj4gbWUgbmVydmlvdXMuIFNvIEkgdGhpbmsgZm9yIHRoaXMg
cmVsZWFzZSB3ZSB3YW50IHNvbWV0aGluZwo+Pj4+PiBzYWZlLCBhbmQgb3B0aW1pemF0aW9ucyBv
biB0b3AuIEFzIGFuIGFsdGVybmF0aXZlIHJldmVydCB0aGUKPj4+Pj4gb3B0aW1pemF0aW9uIGFu
ZCB0cnkgYWdhaW4gZm9yIG5leHQgbWVyZ2Ugd2luZG93Lgo+Pj4+IFdpbGwgcG9zdCBhIHNlcmll
cyBvZiBmaXhlcywgbGV0IG1lIGtub3cgaWYgeW91J3JlIG9rIHdpdGggdGhhdC4KPj4+Pgo+Pj4+
IFRoYW5rcwo+Pj4gSSdkIHByZWZlciB5b3UgdG8gdGFrZSBhIGhhcmQgbG9vayBhdCB0aGUgcGF0
Y2ggSSBwb3N0ZWQKPj4+IHdoaWNoIG1ha2VzIGNvZGUgY2xlYW5lciwKPj4KPj4gSSBkaWQuIEJ1
dCBpdCBsb29rcyB0byBtZSBhIHNlcmllcyB0aGF0IGlzIG9ubHkgYWJvdXQgNjAgbGluZXMgb2Yg
Y29kZSBjYW4KPj4gZml4IGFsbCB0aGUgaXNzdWVzIHdlIGZvdW5kIHdpdGhvdXQgcmV2ZXJ0aW5n
IHRoZSB1YWRkciBvcHRpbWl6YXRpb24uCj4gQW5vdGhlciB0aGluZyBJIGxpa2UgYWJvdXQgdGhl
IHBhdGNoIEkgcG9zdGVkIGlzIHRoYXQKPiBpdCByZW1vdmVzIDYwIGxpbmVzIG9mIGNvZGUsIGlu
c3RlYWQgb2YgYWRkaW5nIG1vcmUgOikKPiBNb3N0bHkgYmVjYXVzZSBvZiB1bmlmeWluZyBldmVy
eXRoaW5nIGludG8KPiBhIHNpbmdsZSBjbGVhbnVwIGZ1bmN0aW9uIGFuZCB1c2luZyBrZnJlZV9y
Y3UuCgoKWWVzLgoKCj4KPiBTbyBob3cgYWJvdXQgdGhpczogZG8gZXhhY3RseSB3aGF0IHlvdSBw
cm9wb3NlIGJ1dCBhcyBhIDIgcGF0Y2ggc2VyaWVzOgo+IHN0YXJ0IHdpdGggdGhlIHNsb3cgc2Fm
ZSBwYXRjaCwgYW5kIGFkZCB0aGVuIHJldHVybiB1YWRkciBvcHRpbWl6YXRpb25zCj4gb24gdG9w
LiBXZSBjYW4gdGhlbiBtb3JlIGVhc2lseSByZWFzb24gYWJvdXQgd2hldGhlciB0aGV5IGFyZSBz
YWZlLgoKCklmIHlvdSBzdGljaywgSSBjYW4gZG8gdGhpcy4KCgo+IEJhc2ljYWxseSB5b3UgYXJl
IHNheWluZyB0aGlzOgo+IAktIG5vdGlmaWVycyBhcmUgb25seSBuZWVkZWQgdG8gaW52YWxpZGF0
ZSBtYXBzCj4gCS0gd2UgbWFrZSBzdXJlIGFueSB1YWRkciBjaGFuZ2UgaW52YWxpZGF0ZXMgbWFw
cyBhbnl3YXkKPiAJLSB0aHVzIGl0J3Mgb2sgbm90IHRvIGhhdmUgbm90aWZpZXJzIHNpbmNlIHdl
IGRvCj4gCSAgbm90IGhhdmUgbWFwcwo+Cj4gQWxsIHRoaXMgbG9va3Mgb2sgYnV0IHRoZSBxdWVz
dGlvbiBpcyB3aHkgZG8gd2UKPiBib3RoZXIgdW5yZWdpc3RlcmluZyB0aGVtLiBBbmQgdGhlIGFu
c3dlciBzZWVtcyB0bwo+IGJlIHRoYXQgdGhpcyBpcyBzbyB3ZSBjYW4gc3RhcnQgd2l0aCBhIGJh
bGFuY2VkCj4gY291bnRlcjogb3RoZXJ3aXNlIHdlIGNhbiBiZSBiZXR3ZWVuIF9zdGFydCBhbmQK
PiBfZW5kIGNhbGxzLgoKClllcywgc2luY2UgdGhlcmUgY291bGQgYmUgbXVsdGlwbGUgY28tY3Vy
cmVudCBpbnZhbGlkYXRpb24gcmVxdWVzdHMuIFdlIApuZWVkIGNvdW50IHRoZW0gdG8gbWFrZSBz
dXJlIHdlIGRvbid0IHBpbiB3cm9uZyBwYWdlcy4KCgo+Cj4gSSBhbHNvIHdvbmRlciBhYm91dCBv
cmRlcmluZy4ga3ZtIGhhcyB0aGlzOgo+ICAgICAgICAgLyoKPiAgICAgICAgICAgKiBVc2VkIHRv
IGNoZWNrIGZvciBpbnZhbGlkYXRpb25zIGluIHByb2dyZXNzLCBvZiB0aGUgcGZuIHRoYXQgaXMK
PiAgICAgICAgICAgKiByZXR1cm5lZCBieSBwZm5fdG9fcGZuX3Byb3QgYmVsb3cuCj4gICAgICAg
ICAgICovCj4gICAgICAgICAgbW11X3NlcSA9IGt2bS0+bW11X25vdGlmaWVyX3NlcTsKPiAgICAg
ICAgICAvKgo+ICAgICAgICAgICAqIEVuc3VyZSB0aGUgcmVhZCBvZiBtbXVfbm90aWZpZXJfc2Vx
IGlzbid0IHJlb3JkZXJlZCB3aXRoIFBURSByZWFkcyBpbgo+ICAgICAgICAgICAqIGdmbl90b19w
Zm5fcHJvdCgpICh3aGljaCBjYWxscyBnZXRfdXNlcl9wYWdlcygpKSwgc28gdGhhdCB3ZSBkb24n
dAo+ICAgICAgICAgICAqIHJpc2sgdGhlIHBhZ2Ugd2UgZ2V0IGEgcmVmZXJlbmNlIHRvIGdldHRp
bmcgdW5tYXBwZWQgYmVmb3JlIHdlIGhhdmUgYQo+ICAgICAgICAgICAqIGNoYW5jZSB0byBncmFi
IHRoZSBtbXVfbG9jayB3aXRob3V0IG1tdV9ub3RpZmllcl9yZXRyeSgpIG5vdGljaW5nLgo+ICAg
ICAgICAgICAqCj4gICAgICAgICAgICogVGhpcyBzbXBfcm1iKCkgcGFpcnMgd2l0aCB0aGUgZWZm
ZWN0aXZlIHNtcF93bWIoKSBvZiB0aGUgY29tYmluYXRpb24KPiAgICAgICAgICAgKiBvZiB0aGUg
cHRlX3VubWFwX3VubG9jaygpIGFmdGVyIHRoZSBQVEUgaXMgemFwcGVkLCBhbmQgdGhlCj4gICAg
ICAgICAgICogc3Bpbl9sb2NrKCkgaW4ga3ZtX21tdV9ub3RpZmllcl9pbnZhbGlkYXRlXzxwYWdl
fHJhbmdlX2VuZD4oKSBiZWZvcmUKPiAgICAgICAgICAgKiBtbXVfbm90aWZpZXJfc2VxIGlzIGlu
Y3JlbWVudGVkLgo+ICAgICAgICAgICAqLwo+ICAgICAgICAgIHNtcF9ybWIoKTsKPgo+IGRvZXMg
dGhpcyBhcHBseSB0byB1cz8gQ2FuJ3Qgd2UgdXNlIGEgc2VxbG9jayBpbnN0ZWFkIHNvIHdlIGRv
Cj4gbm90IG5lZWQgdG8gd29ycnk/CgoKSSdtIG5vdCBmYW1pbGlhciB3aXRoIGt2bSBNTVUgaW50
ZXJuYWxzLCBidXQgd2UgZG8gZXZlcnl0aGluZyB1bmRlciBvZiAKbW11X2xvY2suCgpUaGFua3MK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
