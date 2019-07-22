Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296F26FAEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 10:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AloIDB6QDojdjULrtMHu48MnZLajfJzgBfUpL2hhnN8=; b=TJW2RNzxRtk+7V
	UK25HvdPgH1BqRpstWBdZ97Uqna8n7x1T3JUgtPXOSmxRYXpcYcPM48BDbv7hUa8fF5P9cga+d4M7
	h0LuiLBY8NzuT5/s8Az00klryTO5qO8sY811IkSB1saTyZ+JW+2Yp562uberF5mpxfGdDpufQa97/
	ScJmWluf6/nZ71SJ6ZSWsovLBIpoHRJqDr2JafbnMlXPuhLCapq+HE6ey5/W96X0HGUGu9zTSWbDG
	1ieEW3tpW9HzwkMyKQMcS5bpv/R5nrhDXl5R4sFKaW0HpJj4F7R8IIHrYIo7MfpiHDPRgtS19tkRD
	832FY09nwn4jQCbmDK5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTNc-0001Qz-DA; Mon, 22 Jul 2019 08:09:08 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTNO-0001QP-P6
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 08:08:56 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 10D6B2F8BC9;
 Mon, 22 Jul 2019 08:08:54 +0000 (UTC)
Received: from redhat.com (ovpn-120-233.rdu2.redhat.com [10.10.120.233])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 41D3F5FCA3;
 Mon, 22 Jul 2019 08:08:46 +0000 (UTC)
Date: Mon, 22 Jul 2019 04:08:44 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190722040230-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081447-mutt-send-email-mst@kernel.org>
 <85dd00e2-37a6-72b7-5d5a-8bf46a3526cf@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85dd00e2-37a6-72b7-5d5a-8bf46a3526cf@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 22 Jul 2019 08:08:54 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_010854_857493_6979841E 
X-CRM114-Status: GOOD (  32.95  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDE6MjQ6MjRQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjEg5LiL5Y2IODoxOCwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gU3VuLCBKdWwgMjEsIDIwMTkgYXQgMDY6MDI6NTJBTSAtMDQwMCwgTWljaGFlbCBT
LiBUc2lya2luIHdyb3RlOgo+ID4gPiBPbiBTYXQsIEp1bCAyMCwgMjAxOSBhdCAwMzowODowMEFN
IC0wNzAwLCBzeXpib3Qgd3JvdGU6Cj4gPiA+ID4gc3l6Ym90IGhhcyBiaXNlY3RlZCB0aGlzIGJ1
ZyB0bzoKPiA+ID4gPiAKPiA+ID4gPiBjb21taXQgN2Y0NjYwMzJkYzllNWE2MTIxN2YyMmVhMzRi
MmRmOTMyNzg2YmJmYwo+ID4gPiA+IEF1dGhvcjogSmFzb24gV2FuZzxqYXNvd2FuZ0ByZWRoYXQu
Y29tPgo+ID4gPiA+IERhdGU6ICAgRnJpIE1heSAyNCAwODoxMjoxOCAyMDE5ICswMDAwCj4gPiA+
ID4gCj4gPiA+ID4gICAgICB2aG9zdDogYWNjZXNzIHZxIG1ldGFkYXRhIHRocm91Z2gga2VybmVs
IHZpcnR1YWwgYWRkcmVzcwo+ID4gPiA+IAo+ID4gPiA+IGJpc2VjdGlvbiBsb2c6aHR0cHM6Ly9z
eXprYWxsZXIuYXBwc3BvdC5jb20veC9iaXNlY3QudHh0P3g9MTQ5YThhMjA2MDAwMDAKPiA+ID4g
PiBzdGFydCBjb21taXQ6ICAgNmQyMWE0MWIgQWRkIGxpbnV4LW5leHQgc3BlY2lmaWMgZmlsZXMg
Zm9yIDIwMTkwNzE4Cj4gPiA+ID4gZ2l0IHRyZWU6ICAgICAgIGxpbnV4LW5leHQKPiA+ID4gPiBm
aW5hbCBjcmFzaDpodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L3JlcG9ydC50eHQ/eD0x
NjlhOGEyMDYwMDAwMAo+ID4gPiA+IGNvbnNvbGUgb3V0cHV0Omh0dHBzOi8vc3l6a2FsbGVyLmFw
cHNwb3QuY29tL3gvbG9nLnR4dD94PTEyOWE4YTIwNjAwMDAwCj4gPiA+ID4ga2VybmVsIGNvbmZp
ZzpodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94Ly5jb25maWc/eD0zNDMwYTE1MWUxNDUy
MzMxCj4gPiA+ID4gZGFzaGJvYXJkIGxpbms6aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20v
YnVnP2V4dGlkPWU1ODExMmQ3MWY3NzExM2RkYjdiCj4gPiA+ID4gc3l6IHJlcHJvOmh0dHBzOi8v
c3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVwcm8uc3l6P3g9MTAxMzllNjg2MDAwMDAKPiA+ID4g
PiAKPiA+ID4gPiBSZXBvcnRlZC1ieTpzeXpib3QrZTU4MTEyZDcxZjc3MTEzZGRiN2JAc3l6a2Fs
bGVyLmFwcHNwb3RtYWlsLmNvbQo+ID4gPiA+IEZpeGVzOiA3ZjQ2NjAzMmRjOWUgKCJ2aG9zdDog
YWNjZXNzIHZxIG1ldGFkYXRhIHRocm91Z2gga2VybmVsIHZpcnR1YWwKPiA+ID4gPiBhZGRyZXNz
IikKPiA+ID4gPiAKPiA+ID4gPiBGb3IgaW5mb3JtYXRpb24gYWJvdXQgYmlzZWN0aW9uIHByb2Nl
c3Mgc2VlOmh0dHBzOi8vZ29vLmdsL3Rwc21FSiNiaXNlY3Rpb24KPiA+ID4gT0sgSSBwb2tlZCBh
dCB0aGlzIGZvciBhIGJpdCwgSSBzZWUgc2V2ZXJhbCB0aGluZ3MgdGhhdAo+ID4gPiB3ZSBuZWVk
IHRvIGZpeCwgdGhvdWdoIEknbSBub3QgeWV0IHN1cmUgaXQncyB0aGUgcmVhc29uIGZvcgo+ID4g
PiB0aGUgZmFpbHVyZXM6Cj4gPiA+IAo+ID4gPiAKPiA+ID4gMS4gbW11X25vdGlmaWVyX3JlZ2lz
dGVyIHNob3VsZG4ndCBiZSBjYWxsZWQgZnJvbSB2aG9zdF92cmluZ19zZXRfbnVtX2FkZHIKPiA+
ID4gICAgIFRoYXQncyBqdXN0IGEgYmFkIGhhY2ssIGluIHBhcnRpY3VsYXIgSSBkb24ndCB0aGlu
ayBkZXZpY2UKPiA+ID4gICAgIG11dGV4IGlzIHRha2VuIGFuZCBzbyBwb2tpbmcgYXQgdHdvIFZR
cyB3aWxsIGNvcnJ1cHQKPiA+ID4gICAgIG1lbW9yeS4KPiA+ID4gICAgIFNvIHdoYXQgdG8gZG8/
IEhvdyBhYm91dCBhIHBlciB2cSBub3RpZmllcj8KPiA+ID4gICAgIE9mIGNvdXJzZSB3ZSBhbHNv
IGhhdmUgc3luY2hyb25pemVfcmN1Cj4gPiA+ICAgICBpbiB0aGUgbm90aWZpZXIgd2hpY2ggaXMg
c2xvdyBhbmQgaXMgbm93IGdvaW5nIHRvIGJlIGNhbGxlZCB0d2ljZS4KPiA+ID4gICAgIEkgdGhp
bmsgY2FsbF9yY3Ugd291bGQgYmUgbW9yZSBhcHByb3ByaWF0ZSBoZXJlLgo+ID4gPiAgICAgV2Ug
dGhlbiBuZWVkIHJjdV9iYXJyaWVyIG9uIG1vZHVsZSB1bmxvYWQuCj4gPiA+ICAgICBPVE9IIGlm
IHdlIG1ha2UgcGFnZXMgbGluZWFyIHdpdGggbWFwIHRoZW4gd2UgYXJlIGdvb2QKPiA+ID4gICAg
IHdpdGgga2ZyZWVfcmN1IHdoaWNoIGlzIGV2ZW4gbmljZXIuCj4gPiA+IAo+ID4gPiAyLiBEb2Vz
bid0IG1hcCBsZWFrIGFmdGVyIHZob3N0X21hcF91bnByZWZldGNoPwo+ID4gPiAgICAgQW5kIHdo
eSBkb2VzIGl0IHBva2UgYXQgY29udGVudHMgb2YgdGhlIG1hcD8KPiA+ID4gICAgIE5vIG9uZSBz
aG91bGQgdXNlIGl0IHJpZ2h0Pwo+ID4gPiAKPiA+ID4gMy4gbm90aWZpZXIgdW5yZWdpc3RlciBo
YXBwZW5zIGxhc3QgaW4gdmhvc3RfZGV2X2NsZWFudXAsCj4gPiA+ICAgICBidXQgcmVnaXN0ZXIg
aGFwcGVucyBmaXJzdC4gVGhpcyBsb29rcyB3cm9uZyB0byBtZS4KPiA+ID4gCj4gPiA+IDQuIE9L
IHNvIHdlIHVzZSB0aGUgaW52YWxpZGF0ZSBjb3VudCB0byB0cnkgYW5kIGRldGVjdCB0aGF0Cj4g
PiA+ICAgICBzb21lIGludmFsaWRhdGUgaXMgaW4gcHJvZ3Jlc3MuCj4gPiA+ICAgICBJIGFtIG5v
dCAxMDAlIHN1cmUgd2h5IGRvIHdlIGNhcmUuCj4gPiA+ICAgICBBc3N1bWluZyB3ZSBkbywgdWFk
ZHIgY2FuIGNoYW5nZSBiZXR3ZWVuIHN0YXJ0IGFuZCBlbmQKPiA+ID4gICAgIGFuZCB0aGVuIHRo
ZSBjb3VudGVyIGNhbiBnZXQgbmVnYXRpdmUsIG9yIGdlbmVyYWxseQo+ID4gPiAgICAgb3V0IG9m
IHN5bmMuCj4gPiA+IAo+ID4gPiBTbyB3aGF0IHRvIGRvIGFib3V0IGFsbCB0aGlzPwo+ID4gPiBJ
IGFtIGluY2xpbmVkIHRvIHNheSBsZXQncyBqdXN0IGRyb3AgdGhlIHVhZGRyIG9wdGltaXphdGlv
bgo+ID4gPiBmb3Igbm93LiBFLmcuIGt2bSBpbnZhbGlkYXRlcyB1bmNvbmRpdGlvbmFsbHkuCj4g
PiA+IDMgc2hvdWxkIGJlIGZpeGVkIGluZGVwZW5kZW50bHkuCj4gPiBBYm92ZSBpbXBsZW1lbnRz
IHRoaXMgYnV0IGlzIG9ubHkgYnVpbGQtdGVzdGVkLgo+ID4gSmFzb24sIHBscyB0YWtlIGEgbG9v
ay4gSWYgeW91IGxpa2UgdGhlIGFwcHJvYWNoIGZlZWwKPiA+IGZyZWUgdG8gdGFrZSBpdCBmcm9t
IGhlcmUuCj4gPiAKPiA+IE9uZSB0aGluZyB0aGUgYmVsb3cgZG9lcyBub3QgaGF2ZSBpcyBhbnkg
a2luZCBvZiByYXRlLWxpbWl0aW5nLgo+ID4gR2l2ZW4gaXQncyBzbyBlYXN5IHRvIHJlc3RhcnQg
SSdtIHRoaW5raW5nIGl0IG1ha2VzIHNlbnNlCj4gPiB0byBhZGQgYSBnZW5lcmljIGluZnJhc3Ry
dWN0dXJlIGZvciB0aGlzLgo+ID4gQ2FuIGJlIGEgc2VwYXJhdGUgcGF0Y2ggSSBndWVzcy4KPiAK
PiAKPiBJIGRvbid0IGdldCB3aHkgbXVzdCB1c2Uga2ZyZWVfcmN1KCkgaW5zdGVhZCBvZiBzeW5j
aHJvbml6ZV9yY3UoKSBoZXJlLgoKc3luY2hyb25pemVfcmN1IGhhcyB2ZXJ5IGhpZ2ggbGF0ZW5j
eSBvbiBidXN5IHN5c3RlbXMuCkl0IGlzIG5vdCBzb21ldGhpbmcgdGhhdCBzaG91bGQgYmUgdXNl
ZCBvbiBhIHN5c2NhbGwgcGF0aC4KS1ZNIGhhZCB0byBzd2l0Y2ggdG8gU1JDVSB0byBrZWVwIGl0
IHNhbmUuCk90aGVyd2lzZSBvbmUgZ3Vlc3QgY2FuIHRyaXZpYWxseSBzbG93IGRvd24gYW5vdGhl
ciBvbmUuCgo+IAo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIFMuIFRzaXJraW48bXN0
QHJlZGhhdC5jb20+Cj4gCj4gCj4gTGV0IG1lIHRyeSB0byBmaWd1cmUgb3V0IHRoZSByb290IGNh
dXNlIHRoZW4gZGVjaWRlIHdoZXRoZXIgb3Igbm90IHRvIGdvIGZvcgo+IHRoaXMgd2F5Lgo+IAo+
IFRoYW5rcwoKVGhlIHJvb3QgY2F1c2Ugb2YgdGhlIGNyYXNoIGlzIHJlbGV2YW50LCBidXQgd2Ug
c3RpbGwgbmVlZAp0byBmaXggaXNzdWVzIDEtNC4KCk1vcmUgaXNzdWVzIChteSBwYXRjaCB0cmll
cyB0byBmaXggdGhlbSB0b28pOgoKNS4gcGFnZSBub3QgZGlydGllZCB3aGVuIG1hcHBpbmdzIGFy
ZSB0b3JuIGRvd24gb3V0c2lkZQogICBvZiBpbnZhbGlkYXRlIGNhbGxiYWNrCgo2LiBwb3RlbnRp
YWwgY3Jvc3MtVk0gRE9TIGJ5IG9uZSBndWVzdCBrZWVwaW5nIHN5c3RlbSBidXN5CiAgIGFuZCBp
bmNyZWFzaW5nIHN5bmNocm9uaXplX3JjdSBsYXRlbmN5IHRvIHRoZSBwb2ludCB3aGVyZQogICBh
bm90aGVyIGd1ZXN0IHN0YXJzIHRpbWluZyBvdXQgYW5kIGNyYXNoZXMKCgoKLS0gCk1TVAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
