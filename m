Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDA46F8D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SkXEzfhKdaG7qWFQdj1WV+5Ro5VTt2hfFBwAyCHAa4U=; b=mqzluoCvS+riWDGChYX8UOBRr
	3g7wurZP3A81VyVI75abWY3/drU+68sGK+z+WtO+OraFknuXjGjaV0g5wxTRxLgWDCU/sL7X/gV/9
	SWo751lw4JFtf9MBcws+YzeYsscmuT/fCb8kHiO+ALOfhAoXllHiBt9FsVn6nU8ySu7YfggJ/kPIb
	mOlxfSCOiY2gNJ7ZYG602mT/N/wWclmGVAAKVaOCkz+SHK5HcGp05nV9RwhWUJxxT09qkLTTTqG/y
	7zxFvXkdv9JvLCBeSkMZU0db2DMtzoOUqG9BBbXwlOmFVfQM1vcmgDibqFZztdg/HmUVQRxFPsQVH
	MHxQzuCWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpQog-0001FF-0A; Mon, 22 Jul 2019 05:24:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpQoR-0001Eu-I8
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 05:24:41 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 145078535C;
 Mon, 22 Jul 2019 05:24:39 +0000 (UTC)
Received: from [10.72.12.30] (ovpn-12-30.pek2.redhat.com [10.72.12.30])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C6EBC1001DE1;
 Mon, 22 Jul 2019 05:24:28 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>,
 syzbot <syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081447-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <85dd00e2-37a6-72b7-5d5a-8bf46a3526cf@redhat.com>
Date: Mon, 22 Jul 2019 13:24:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190721081447-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Mon, 22 Jul 2019 05:24:39 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_222439_639622_B5174EF2 
X-CRM114-Status: GOOD (  21.71  )
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
 mingo@kernel.org, elena.reshetova@intel.com, aarcange@redhat.com,
 davem@davemloft.net, hch@infradead.org, christian@brauner.io,
 keescook@chromium.org, syzkaller-bugs@googlegroups.com, jglisse@redhat.com,
 viro@zeniv.linux.org.uk, linux-arm-kernel@lists.infradead.org,
 wad@chromium.org, linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, akpm@linux-foundation.org,
 guro@fb.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8yMSDkuIvljYg4OjE4LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
U3VuLCBKdWwgMjEsIDIwMTkgYXQgMDY6MDI6NTJBTSAtMDQwMCwgTWljaGFlbCBTLiBUc2lya2lu
IHdyb3RlOgo+PiBPbiBTYXQsIEp1bCAyMCwgMjAxOSBhdCAwMzowODowMEFNIC0wNzAwLCBzeXpi
b3Qgd3JvdGU6Cj4+PiBzeXpib3QgaGFzIGJpc2VjdGVkIHRoaXMgYnVnIHRvOgo+Pj4KPj4+IGNv
bW1pdCA3ZjQ2NjAzMmRjOWU1YTYxMjE3ZjIyZWEzNGIyZGY5MzI3ODZiYmZjCj4+PiBBdXRob3I6
IEphc29uIFdhbmc8amFzb3dhbmdAcmVkaGF0LmNvbT4KPj4+IERhdGU6ICAgRnJpIE1heSAyNCAw
ODoxMjoxOCAyMDE5ICswMDAwCj4+Pgo+Pj4gICAgICB2aG9zdDogYWNjZXNzIHZxIG1ldGFkYXRh
IHRocm91Z2gga2VybmVsIHZpcnR1YWwgYWRkcmVzcwo+Pj4KPj4+IGJpc2VjdGlvbiBsb2c6aHR0
cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9iaXNlY3QudHh0P3g9MTQ5YThhMjA2MDAwMDAK
Pj4+IHN0YXJ0IGNvbW1pdDogICA2ZDIxYTQxYiBBZGQgbGludXgtbmV4dCBzcGVjaWZpYyBmaWxl
cyBmb3IgMjAxOTA3MTgKPj4+IGdpdCB0cmVlOiAgICAgICBsaW51eC1uZXh0Cj4+PiBmaW5hbCBj
cmFzaDpodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L3JlcG9ydC50eHQ/eD0xNjlhOGEy
MDYwMDAwMAo+Pj4gY29uc29sZSBvdXRwdXQ6aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20v
eC9sb2cudHh0P3g9MTI5YThhMjA2MDAwMDAKPj4+IGtlcm5lbCBjb25maWc6aHR0cHM6Ly9zeXpr
YWxsZXIuYXBwc3BvdC5jb20veC8uY29uZmlnP3g9MzQzMGExNTFlMTQ1MjMzMQo+Pj4gZGFzaGJv
YXJkIGxpbms6aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20vYnVnP2V4dGlkPWU1ODExMmQ3
MWY3NzExM2RkYjdiCj4+PiBzeXogcmVwcm86aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20v
eC9yZXByby5zeXo/eD0xMDEzOWU2ODYwMDAwMAo+Pj4KPj4+IFJlcG9ydGVkLWJ5OnN5emJvdCtl
NTgxMTJkNzFmNzcxMTNkZGI3YkBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tCj4+PiBGaXhlczog
N2Y0NjYwMzJkYzllICgidmhvc3Q6IGFjY2VzcyB2cSBtZXRhZGF0YSB0aHJvdWdoIGtlcm5lbCB2
aXJ0dWFsCj4+PiBhZGRyZXNzIikKPj4+Cj4+PiBGb3IgaW5mb3JtYXRpb24gYWJvdXQgYmlzZWN0
aW9uIHByb2Nlc3Mgc2VlOmh0dHBzOi8vZ29vLmdsL3Rwc21FSiNiaXNlY3Rpb24KPj4gT0sgSSBw
b2tlZCBhdCB0aGlzIGZvciBhIGJpdCwgSSBzZWUgc2V2ZXJhbCB0aGluZ3MgdGhhdAo+PiB3ZSBu
ZWVkIHRvIGZpeCwgdGhvdWdoIEknbSBub3QgeWV0IHN1cmUgaXQncyB0aGUgcmVhc29uIGZvcgo+
PiB0aGUgZmFpbHVyZXM6Cj4+Cj4+Cj4+IDEuIG1tdV9ub3RpZmllcl9yZWdpc3RlciBzaG91bGRu
J3QgYmUgY2FsbGVkIGZyb20gdmhvc3RfdnJpbmdfc2V0X251bV9hZGRyCj4+ICAgICBUaGF0J3Mg
anVzdCBhIGJhZCBoYWNrLCBpbiBwYXJ0aWN1bGFyIEkgZG9uJ3QgdGhpbmsgZGV2aWNlCj4+ICAg
ICBtdXRleCBpcyB0YWtlbiBhbmQgc28gcG9raW5nIGF0IHR3byBWUXMgd2lsbCBjb3JydXB0Cj4+
ICAgICBtZW1vcnkuCj4+ICAgICBTbyB3aGF0IHRvIGRvPyBIb3cgYWJvdXQgYSBwZXIgdnEgbm90
aWZpZXI/Cj4+ICAgICBPZiBjb3Vyc2Ugd2UgYWxzbyBoYXZlIHN5bmNocm9uaXplX3JjdQo+PiAg
ICAgaW4gdGhlIG5vdGlmaWVyIHdoaWNoIGlzIHNsb3cgYW5kIGlzIG5vdyBnb2luZyB0byBiZSBj
YWxsZWQgdHdpY2UuCj4+ICAgICBJIHRoaW5rIGNhbGxfcmN1IHdvdWxkIGJlIG1vcmUgYXBwcm9w
cmlhdGUgaGVyZS4KPj4gICAgIFdlIHRoZW4gbmVlZCByY3VfYmFycmllciBvbiBtb2R1bGUgdW5s
b2FkLgo+PiAgICAgT1RPSCBpZiB3ZSBtYWtlIHBhZ2VzIGxpbmVhciB3aXRoIG1hcCB0aGVuIHdl
IGFyZSBnb29kCj4+ICAgICB3aXRoIGtmcmVlX3JjdSB3aGljaCBpcyBldmVuIG5pY2VyLgo+Pgo+
PiAyLiBEb2Vzbid0IG1hcCBsZWFrIGFmdGVyIHZob3N0X21hcF91bnByZWZldGNoPwo+PiAgICAg
QW5kIHdoeSBkb2VzIGl0IHBva2UgYXQgY29udGVudHMgb2YgdGhlIG1hcD8KPj4gICAgIE5vIG9u
ZSBzaG91bGQgdXNlIGl0IHJpZ2h0Pwo+Pgo+PiAzLiBub3RpZmllciB1bnJlZ2lzdGVyIGhhcHBl
bnMgbGFzdCBpbiB2aG9zdF9kZXZfY2xlYW51cCwKPj4gICAgIGJ1dCByZWdpc3RlciBoYXBwZW5z
IGZpcnN0LiBUaGlzIGxvb2tzIHdyb25nIHRvIG1lLgo+Pgo+PiA0LiBPSyBzbyB3ZSB1c2UgdGhl
IGludmFsaWRhdGUgY291bnQgdG8gdHJ5IGFuZCBkZXRlY3QgdGhhdAo+PiAgICAgc29tZSBpbnZh
bGlkYXRlIGlzIGluIHByb2dyZXNzLgo+PiAgICAgSSBhbSBub3QgMTAwJSBzdXJlIHdoeSBkbyB3
ZSBjYXJlLgo+PiAgICAgQXNzdW1pbmcgd2UgZG8sIHVhZGRyIGNhbiBjaGFuZ2UgYmV0d2VlbiBz
dGFydCBhbmQgZW5kCj4+ICAgICBhbmQgdGhlbiB0aGUgY291bnRlciBjYW4gZ2V0IG5lZ2F0aXZl
LCBvciBnZW5lcmFsbHkKPj4gICAgIG91dCBvZiBzeW5jLgo+Pgo+PiBTbyB3aGF0IHRvIGRvIGFi
b3V0IGFsbCB0aGlzPwo+PiBJIGFtIGluY2xpbmVkIHRvIHNheSBsZXQncyBqdXN0IGRyb3AgdGhl
IHVhZGRyIG9wdGltaXphdGlvbgo+PiBmb3Igbm93LiBFLmcuIGt2bSBpbnZhbGlkYXRlcyB1bmNv
bmRpdGlvbmFsbHkuCj4+IDMgc2hvdWxkIGJlIGZpeGVkIGluZGVwZW5kZW50bHkuCj4gQWJvdmUg
aW1wbGVtZW50cyB0aGlzIGJ1dCBpcyBvbmx5IGJ1aWxkLXRlc3RlZC4KPiBKYXNvbiwgcGxzIHRh
a2UgYSBsb29rLiBJZiB5b3UgbGlrZSB0aGUgYXBwcm9hY2ggZmVlbAo+IGZyZWUgdG8gdGFrZSBp
dCBmcm9tIGhlcmUuCj4KPiBPbmUgdGhpbmcgdGhlIGJlbG93IGRvZXMgbm90IGhhdmUgaXMgYW55
IGtpbmQgb2YgcmF0ZS1saW1pdGluZy4KPiBHaXZlbiBpdCdzIHNvIGVhc3kgdG8gcmVzdGFydCBJ
J20gdGhpbmtpbmcgaXQgbWFrZXMgc2Vuc2UKPiB0byBhZGQgYSBnZW5lcmljIGluZnJhc3RydWN0
dXJlIGZvciB0aGlzLgo+IENhbiBiZSBhIHNlcGFyYXRlIHBhdGNoIEkgZ3Vlc3MuCgoKSSBkb24n
dCBnZXQgd2h5IG11c3QgdXNlIGtmcmVlX3JjdSgpIGluc3RlYWQgb2Ygc3luY2hyb25pemVfcmN1
KCkgaGVyZS4KCgo+Cj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBTLiBUc2lya2luPG1zdEByZWRo
YXQuY29tPgoKCkxldCBtZSB0cnkgdG8gZmlndXJlIG91dCB0aGUgcm9vdCBjYXVzZSB0aGVuIGRl
Y2lkZSB3aGV0aGVyIG9yIG5vdCB0byBnbyAKZm9yIHRoaXMgd2F5LgoKVGhhbmtzCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
