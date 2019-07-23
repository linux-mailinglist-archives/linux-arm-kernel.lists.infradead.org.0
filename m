Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B32A7135B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LQzN6OMrd0R52OWmToXrUzY6IQxxnMKilrXUcWoQZK0=; b=AP9BMAKQTGxFarBBbM4zK0KaL
	bBtN7py4QRqXx4B5rlj0u46hWHffydn5Y4+4pzyWxctvMAXHQA4EhXLA1IzizSHcHky0jwUlFqYod
	UKkSxHKLfvgknjKHBdCSWpvj/l6h7pN8RR3XsdlHTjZY23okIx94V5THZ5X8OyTeAj1NHGxT6UzBu
	B7KoLwQ8gc7QxFtk/v/hPleFszC7suRwVvr0E0PPSPGg9DmPu3tIbFob6/T4gJaUNOkAA0Wa2JPP8
	SLdCp/9+8S4wR3f+BjXC0IUkQi55mKUuYj7DIxv0fGXYaWTX0R/C86SJrXK1sz4ccEmEEqBvqG5tB
	COJhzNqVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpper-0000k7-Nn; Tue, 23 Jul 2019 07:56:25 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppeR-0000jg-H9
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:56:01 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CA944859FF;
 Tue, 23 Jul 2019 07:55:58 +0000 (UTC)
Received: from [10.72.12.26] (ovpn-12-26.pek2.redhat.com [10.72.12.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AD23F60603;
 Tue, 23 Jul 2019 07:55:46 +0000 (UTC)
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
 <20190723032346-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <9a9a7ac0-2657-ff09-2644-f8d7ae0f9222@redhat.com>
Date: Tue, 23 Jul 2019 15:55:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723032346-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 23 Jul 2019 07:55:59 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_005559_604372_991FBD71 
X-CRM114-Status: GOOD (  19.37  )
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

Ck9uIDIwMTkvNy8yMyDkuIvljYgzOjI1LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
VHVlLCBKdWwgMjMsIDIwMTkgYXQgMDE6NDg6NTJQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzIzIOS4i+WNiDE6MDIsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
IE9uIFR1ZSwgSnVsIDIzLCAyMDE5IGF0IDExOjU1OjI4QU0gKzA4MDAsIEphc29uIFdhbmcgd3Jv
dGU6Cj4+Pj4gT24gMjAxOS83LzIyIOS4i+WNiDQ6MDIsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90
ZToKPj4+Pj4gT24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDE6MjE6NTlQTSArMDgwMCwgSmFzb24g
V2FuZyB3cm90ZToKPj4+Pj4+IE9uIDIwMTkvNy8yMSDkuIvljYg2OjAyLCBNaWNoYWVsIFMuIFRz
aXJraW4gd3JvdGU6Cj4+Pj4+Pj4gT24gU2F0LCBKdWwgMjAsIDIwMTkgYXQgMDM6MDg6MDBBTSAt
MDcwMCwgc3l6Ym90IHdyb3RlOgo+Pj4+Pj4+PiBzeXpib3QgaGFzIGJpc2VjdGVkIHRoaXMgYnVn
IHRvOgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBjb21taXQgN2Y0NjYwMzJkYzllNWE2MTIxN2YyMmVhMzRi
MmRmOTMyNzg2YmJmYwo+Pj4+Pj4+PiBBdXRob3I6IEphc29uIFdhbmc8amFzb3dhbmdAcmVkaGF0
LmNvbT4KPj4+Pj4+Pj4gRGF0ZTogICBGcmkgTWF5IDI0IDA4OjEyOjE4IDIwMTkgKzAwMDAKPj4+
Pj4+Pj4KPj4+Pj4+Pj4gICAgICAgICB2aG9zdDogYWNjZXNzIHZxIG1ldGFkYXRhIHRocm91Z2gg
a2VybmVsIHZpcnR1YWwgYWRkcmVzcwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBiaXNlY3Rpb24gbG9nOmh0
dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvYmlzZWN0LnR4dD94PTE0OWE4YTIwNjAwMDAw
Cj4+Pj4+Pj4+IHN0YXJ0IGNvbW1pdDogICA2ZDIxYTQxYiBBZGQgbGludXgtbmV4dCBzcGVjaWZp
YyBmaWxlcyBmb3IgMjAxOTA3MTgKPj4+Pj4+Pj4gZ2l0IHRyZWU6ICAgICAgIGxpbnV4LW5leHQK
Pj4+Pj4+Pj4gZmluYWwgY3Jhc2g6aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXBv
cnQudHh0P3g9MTY5YThhMjA2MDAwMDAKPj4+Pj4+Pj4gY29uc29sZSBvdXRwdXQ6aHR0cHM6Ly9z
eXprYWxsZXIuYXBwc3BvdC5jb20veC9sb2cudHh0P3g9MTI5YThhMjA2MDAwMDAKPj4+Pj4+Pj4g
a2VybmVsIGNvbmZpZzpodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94Ly5jb25maWc/eD0z
NDMwYTE1MWUxNDUyMzMxCj4+Pj4+Pj4+IGRhc2hib2FyZCBsaW5rOmh0dHBzOi8vc3l6a2FsbGVy
LmFwcHNwb3QuY29tL2J1Zz9leHRpZD1lNTgxMTJkNzFmNzcxMTNkZGI3Ygo+Pj4+Pj4+PiBzeXog
cmVwcm86aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXByby5zeXo/eD0xMDEzOWU2
ODYwMDAwMAo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBSZXBvcnRlZC1ieTpzeXpib3QrZTU4MTEyZDcxZjc3
MTEzZGRiN2JAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+Pj4+Pj4+PiBGaXhlczogN2Y0NjYw
MzJkYzllICgidmhvc3Q6IGFjY2VzcyB2cSBtZXRhZGF0YSB0aHJvdWdoIGtlcm5lbCB2aXJ0dWFs
Cj4+Pj4+Pj4+IGFkZHJlc3MiKQo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBGb3IgaW5mb3JtYXRpb24gYWJv
dXQgYmlzZWN0aW9uIHByb2Nlc3Mgc2VlOmh0dHBzOi8vZ29vLmdsL3Rwc21FSiNiaXNlY3Rpb24K
Pj4+Pj4+PiBPSyBJIHBva2VkIGF0IHRoaXMgZm9yIGEgYml0LCBJIHNlZSBzZXZlcmFsIHRoaW5n
cyB0aGF0Cj4+Pj4+Pj4gd2UgbmVlZCB0byBmaXgsIHRob3VnaCBJJ20gbm90IHlldCBzdXJlIGl0
J3MgdGhlIHJlYXNvbiBmb3IKPj4+Pj4+PiB0aGUgZmFpbHVyZXM6Cj4+Pj4+Pj4KPj4+Pj4+Pgo+
Pj4+Pj4+IDEuIG1tdV9ub3RpZmllcl9yZWdpc3RlciBzaG91bGRuJ3QgYmUgY2FsbGVkIGZyb20g
dmhvc3RfdnJpbmdfc2V0X251bV9hZGRyCj4+Pj4+Pj4gICAgICAgIFRoYXQncyBqdXN0IGEgYmFk
IGhhY2ssCj4+Pj4+PiBUaGlzIGlzIHVzZWQgdG8gYXZvaWQgaG9sZGluZyBsb2NrIHdoZW4gY2hl
Y2tpbmcgd2hldGhlciB0aGUgYWRkcmVzc2VzIGFyZQo+Pj4+Pj4gb3ZlcmxhcHBlZC4gT3RoZXJ3
aXNlIHdlIG5lZWQgdG8gdGFrZSBzcGlubG9jayBmb3IgZWFjaCBpbnZhbGlkYXRpb24gcmVxdWVz
dAo+Pj4+Pj4gZXZlbiBpZiBpdCB3YXMgdGhlIHZhIHJhbmdlIHRoYXQgaXMgbm90IGludGVyZXN0
ZWQgZm9yIHVzLiBUaGlzIHdpbGwgYmUgdmVyeQo+Pj4+Pj4gc2xvdyBlLmcgZHVyaW5nIGd1ZXN0
IGJvb3QuCj4+Pj4+IEtWTSBzZWVtcyB0byBkbyBleGFjdGx5IHRoYXQuCj4+Pj4+IEkgdHJpZWQg
YW5kIGd1ZXN0IGRvZXMgbm90IHNlZW0gdG8gYm9vdCBhbnkgc2xvd2VyLgo+Pj4+PiBEbyB5b3Ug
b2JzZXJ2ZSBhbnkgc2xvd2Rvd24/Cj4+Pj4gWWVzIEkgZG8uCj4+Pj4KPj4+Pgo+Pj4+PiBOb3cg
SSB0b29rIGEgaGFyZCBsb29rIGF0IHRoZSB1YWRkciBoYWNrZXJ5IGl0IHJlYWxseSBtYWtlcwo+
Pj4+PiBtZSBuZXJ2aW91cy4gU28gSSB0aGluayBmb3IgdGhpcyByZWxlYXNlIHdlIHdhbnQgc29t
ZXRoaW5nCj4+Pj4+IHNhZmUsIGFuZCBvcHRpbWl6YXRpb25zIG9uIHRvcC4gQXMgYW4gYWx0ZXJu
YXRpdmUgcmV2ZXJ0IHRoZQo+Pj4+PiBvcHRpbWl6YXRpb24gYW5kIHRyeSBhZ2FpbiBmb3IgbmV4
dCBtZXJnZSB3aW5kb3cuCj4+Pj4gV2lsbCBwb3N0IGEgc2VyaWVzIG9mIGZpeGVzLCBsZXQgbWUg
a25vdyBpZiB5b3UncmUgb2sgd2l0aCB0aGF0Lgo+Pj4+Cj4+Pj4gVGhhbmtzCj4+PiBJJ2QgcHJl
ZmVyIHlvdSB0byB0YWtlIGEgaGFyZCBsb29rIGF0IHRoZSBwYXRjaCBJIHBvc3RlZAo+Pj4gd2hp
Y2ggbWFrZXMgY29kZSBjbGVhbmVyLAo+PiBJIGRpZC4gQnV0IGl0IGxvb2tzIHRvIG1lIGEgc2Vy
aWVzIHRoYXQgaXMgb25seSBhYm91dCA2MCBsaW5lcyBvZiBjb2RlIGNhbgo+PiBmaXggYWxsIHRo
ZSBpc3N1ZXMgd2UgZm91bmQgd2l0aG91dCByZXZlcnRpbmcgdGhlIHVhZGRyIG9wdGltaXphdGlv
bi4KPj4KPj4KPj4+ICAgIGFuZCBhZCBvcHRpbWl6YXRpb25zIG9uIHRvcC4KPj4+IEJ1dCBvdGhl
ciB3YXlzIGNvdWxkIGJlIG9rIHRvby4KPj4gSSdtIHdhaXRpbmcgZm9yIHRoZSB0ZXN0IHJlc3Vs
dCBmcm9tIHN5emJvdCBhbmQgd2lsbCBwb3N0LiBMZXQncyBzZWUgaWYgeW91Cj4+IGFyZSBPSyB3
aXRoIHRoYXQuCj4+Cj4+IFRoYW5rcwo+IE9oIEkgZGlkbid0IGtub3cgb25lIGNhbiBwdXNoIGEg
dGVzdCB0byBzeXpib3QgYW5kIGdldCBiYWNrCj4gYSByZXN1bHQuIEhvdyBkb2VzIG9uZSBkbyB0
aGF0PwoKClNlZSBoZXJlIGh0dHBzOi8vZ2l0aHViLmNvbS9nb29nbGUvc3l6a2FsbGVyL2Jsb2Iv
bWFzdGVyL2RvY3Mvc3l6Ym90Lm1kCgpKdXN0IHJlcGx5IHRoaXMgdGhyZWFkIGJ5IGF0dGFjaGlu
ZyBhIGZpeCB3aXRoIGNvbW1hbmQgbGlrZTogIiNzeXogdGVzdDogCmdpdDovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0IAo3ZjQ2NjAz
MmRjOWU1YTYxMjE3ZjIyZWEzNGIyZGY5MzI3ODZiYmZjIgoKQnR3LCBJJ3ZlIGxldCBzeXpib3Qg
dGVzdCB5b3UgcGF0Y2gsIGFuZCBpdCBwYXNzZXMuCgpUaGFua3MKCgo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
