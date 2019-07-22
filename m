Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7816F8CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jZfxLEuTxzFIYIWxBbDi8Yvw1O7SgfHDgZQyGPwoTak=; b=DrCUTup/pnO+DTCSsbeDGBW7q
	gVqe03zVEgAbGUQYlp04yHT7K8Hdi9kFzjBBrwYdOK+DtXZ6V30AsYyYIhCbu9liIkyhuOgu5T+DL
	oHAiyLUjZW644zBPg+68wTpFYXuh8zoOn0H+Q9oAm91gBhOF8rCLmeOy5Kt7GaY/pEW4L7Y5Qo4N9
	MDFPG/hFcCofUYiR/cH9nO/Tz2lbDYLNzQ1EAOsTSx9IPk5ZKXe/vYxDd2TA/cKOMSgdVkHs8mPYA
	SrxNmXQ1pxNO0rpLn5FgzAIZCm+SoZCdOYdTT/vP8dqMiWhOVvKZL24jQId1QhG+rmHdpremjEkJN
	5bvgIMCww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpQmN-0000u2-GV; Mon, 22 Jul 2019 05:22:31 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpQmA-0000th-FP
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 05:22:20 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 911E9335CF;
 Mon, 22 Jul 2019 05:22:16 +0000 (UTC)
Received: from [10.72.12.30] (ovpn-12-30.pek2.redhat.com [10.72.12.30])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B99D65DA2E;
 Mon, 22 Jul 2019 05:22:03 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>,
 syzbot <syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
Date: Mon, 22 Jul 2019 13:21:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190721044615-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 22 Jul 2019 05:22:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_222218_556402_6D2A9DD1 
X-CRM114-Status: GOOD (  27.10  )
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

Ck9uIDIwMTkvNy8yMSDkuIvljYg2OjAyLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
U2F0LCBKdWwgMjAsIDIwMTkgYXQgMDM6MDg6MDBBTSAtMDcwMCwgc3l6Ym90IHdyb3RlOgo+PiBz
eXpib3QgaGFzIGJpc2VjdGVkIHRoaXMgYnVnIHRvOgo+Pgo+PiBjb21taXQgN2Y0NjYwMzJkYzll
NWE2MTIxN2YyMmVhMzRiMmRmOTMyNzg2YmJmYwo+PiBBdXRob3I6IEphc29uIFdhbmcgPGphc293
YW5nQHJlZGhhdC5jb20+Cj4+IERhdGU6ICAgRnJpIE1heSAyNCAwODoxMjoxOCAyMDE5ICswMDAw
Cj4+Cj4+ICAgICAgdmhvc3Q6IGFjY2VzcyB2cSBtZXRhZGF0YSB0aHJvdWdoIGtlcm5lbCB2aXJ0
dWFsIGFkZHJlc3MKPj4KPj4gYmlzZWN0aW9uIGxvZzogIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNw
b3QuY29tL3gvYmlzZWN0LnR4dD94PTE0OWE4YTIwNjAwMDAwCj4+IHN0YXJ0IGNvbW1pdDogICA2
ZDIxYTQxYiBBZGQgbGludXgtbmV4dCBzcGVjaWZpYyBmaWxlcyBmb3IgMjAxOTA3MTgKPj4gZ2l0
IHRyZWU6ICAgICAgIGxpbnV4LW5leHQKPj4gZmluYWwgY3Jhc2g6ICAgIGh0dHBzOi8vc3l6a2Fs
bGVyLmFwcHNwb3QuY29tL3gvcmVwb3J0LnR4dD94PTE2OWE4YTIwNjAwMDAwCj4+IGNvbnNvbGUg
b3V0cHV0OiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L2xvZy50eHQ/eD0xMjlhOGEy
MDYwMDAwMAo+PiBrZXJuZWwgY29uZmlnOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20v
eC8uY29uZmlnP3g9MzQzMGExNTFlMTQ1MjMzMQo+PiBkYXNoYm9hcmQgbGluazogaHR0cHM6Ly9z
eXprYWxsZXIuYXBwc3BvdC5jb20vYnVnP2V4dGlkPWU1ODExMmQ3MWY3NzExM2RkYjdiCj4+IHN5
eiByZXBybzogICAgICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L3JlcHJvLnN5ej94
PTEwMTM5ZTY4NjAwMDAwCj4+Cj4+IFJlcG9ydGVkLWJ5OiBzeXpib3QrZTU4MTEyZDcxZjc3MTEz
ZGRiN2JAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+PiBGaXhlczogN2Y0NjYwMzJkYzllICgi
dmhvc3Q6IGFjY2VzcyB2cSBtZXRhZGF0YSB0aHJvdWdoIGtlcm5lbCB2aXJ0dWFsCj4+IGFkZHJl
c3MiKQo+Pgo+PiBGb3IgaW5mb3JtYXRpb24gYWJvdXQgYmlzZWN0aW9uIHByb2Nlc3Mgc2VlOiBo
dHRwczovL2dvby5nbC90cHNtRUojYmlzZWN0aW9uCj4KPiBPSyBJIHBva2VkIGF0IHRoaXMgZm9y
IGEgYml0LCBJIHNlZSBzZXZlcmFsIHRoaW5ncyB0aGF0Cj4gd2UgbmVlZCB0byBmaXgsIHRob3Vn
aCBJJ20gbm90IHlldCBzdXJlIGl0J3MgdGhlIHJlYXNvbiBmb3IKPiB0aGUgZmFpbHVyZXM6Cj4K
Pgo+IDEuIG1tdV9ub3RpZmllcl9yZWdpc3RlciBzaG91bGRuJ3QgYmUgY2FsbGVkIGZyb20gdmhv
c3RfdnJpbmdfc2V0X251bV9hZGRyCj4gICAgIFRoYXQncyBqdXN0IGEgYmFkIGhhY2ssCgoKVGhp
cyBpcyB1c2VkIHRvIGF2b2lkIGhvbGRpbmcgbG9jayB3aGVuIGNoZWNraW5nIHdoZXRoZXIgdGhl
IGFkZHJlc3NlcyAKYXJlIG92ZXJsYXBwZWQuIE90aGVyd2lzZSB3ZSBuZWVkIHRvIHRha2Ugc3Bp
bmxvY2sgZm9yIGVhY2ggaW52YWxpZGF0aW9uIApyZXF1ZXN0IGV2ZW4gaWYgaXQgd2FzIHRoZSB2
YSByYW5nZSB0aGF0IGlzIG5vdCBpbnRlcmVzdGVkIGZvciB1cy4gVGhpcyAKd2lsbCBiZSB2ZXJ5
IHNsb3cgZS5nIGR1cmluZyBndWVzdCBib290LgoKCj4gICBpbiBwYXJ0aWN1bGFyIEkgZG9uJ3Qg
dGhpbmsgZGV2aWNlCj4gICAgIG11dGV4IGlzIHRha2VuIGFuZCBzbyBwb2tpbmcgYXQgdHdvIFZR
cyB3aWxsIGNvcnJ1cHQKPiAgICAgbWVtb3J5LgoKClRoZSBjYWxsZXIgdmhvc3RfbmV0X2lvY3Rs
KCkgKG9yIHNjc2kgYW5kIHZzb2NrKSB3aWxsIGhvbGQgZGV2aWNlIG11dGV4IApiZWZvcmUgY2Fs
bGluZyB1cy4KCgo+ICAgICBTbyB3aGF0IHRvIGRvPyBIb3cgYWJvdXQgYSBwZXIgdnEgbm90aWZp
ZXI/Cj4gICAgIE9mIGNvdXJzZSB3ZSBhbHNvIGhhdmUgc3luY2hyb25pemVfcmN1Cj4gICAgIGlu
IHRoZSBub3RpZmllciB3aGljaCBpcyBzbG93IGFuZCBpcyBub3cgZ29pbmcgdG8gYmUgY2FsbGVk
IHR3aWNlLgo+ICAgICBJIHRoaW5rIGNhbGxfcmN1IHdvdWxkIGJlIG1vcmUgYXBwcm9wcmlhdGUg
aGVyZS4KPiAgICAgV2UgdGhlbiBuZWVkIHJjdV9iYXJyaWVyIG9uIG1vZHVsZSB1bmxvYWQuCgoK
U28gdGhpcyBzZWVtcyB1bm5lY2Vzc2FyeS4KCgo+ICAgICBPVE9IIGlmIHdlIG1ha2UgcGFnZXMg
bGluZWFyIHdpdGggbWFwIHRoZW4gd2UgYXJlIGdvb2QKPiAgICAgd2l0aCBrZnJlZV9yY3Ugd2hp
Y2ggaXMgZXZlbiBuaWNlci4KCgpJdCBjb3VsZCBiZSBhbiBvcHRpbWl6YXRpb24gb24gdG9wLgoK
Cj4KPiAyLiBEb2Vzbid0IG1hcCBsZWFrIGFmdGVyIHZob3N0X21hcF91bnByZWZldGNoPwo+ICAg
ICBBbmQgd2h5IGRvZXMgaXQgcG9rZSBhdCBjb250ZW50cyBvZiB0aGUgbWFwPwo+ICAgICBObyBv
bmUgc2hvdWxkIHVzZSBpdCByaWdodD8KCgpZZXMsIGl0J3Mgbm90IGhhcmQgdG8gZml4IGp1c3Qg
a2ZyZWUgbWFwIGluIHRoaXMgZnVuY3Rpb24uCgoKPgo+IDMuIG5vdGlmaWVyIHVucmVnaXN0ZXIg
aGFwcGVucyBsYXN0IGluIHZob3N0X2Rldl9jbGVhbnVwLAo+ICAgICBidXQgcmVnaXN0ZXIgaGFw
cGVucyBmaXJzdC4gVGhpcyBsb29rcyB3cm9uZyB0byBtZS4KCgpJJ20gbm90IHN1cmUgSSBnZXQg
dGhlIHRoZSBleGFjdCBpc3N1ZSBoZXJlLgoKCj4KPiA0LiBPSyBzbyB3ZSB1c2UgdGhlIGludmFs
aWRhdGUgY291bnQgdG8gdHJ5IGFuZCBkZXRlY3QgdGhhdAo+ICAgICBzb21lIGludmFsaWRhdGUg
aXMgaW4gcHJvZ3Jlc3MuCj4gICAgIEkgYW0gbm90IDEwMCUgc3VyZSB3aHkgZG8gd2UgY2FyZS4K
PiAgICAgQXNzdW1pbmcgd2UgZG8sIHVhZGRyIGNhbiBjaGFuZ2UgYmV0d2VlbiBzdGFydCBhbmQg
ZW5kCj4gICAgIGFuZCB0aGVuIHRoZSBjb3VudGVyIGNhbiBnZXQgbmVnYXRpdmUsIG9yIGdlbmVy
YWxseQo+ICAgICBvdXQgb2Ygc3luYy4KCgpZZXMsIHNvIHRoZSBmaXggaXMgYXMgc2ltcGxlIGFz
IHplcm8gdGhlIGludmFsaWRhdGVfY291bnQgYWZ0ZXIgCnVucmVnaXN0ZXLCoCB0aGUgbW11IG5v
dGlmaWVyIGluIHZob3N0X3NldF92cmluZ19udW1fYWRkcigpLgoKCj4KPiBTbyB3aGF0IHRvIGRv
IGFib3V0IGFsbCB0aGlzPwo+IEkgYW0gaW5jbGluZWQgdG8gc2F5IGxldCdzIGp1c3QgZHJvcCB0
aGUgdWFkZHIgb3B0aW1pemF0aW9uCj4gZm9yIG5vdy4gRS5nLiBrdm0gaW52YWxpZGF0ZXMgdW5j
b25kaXRpb25hbGx5Lgo+IDMgc2hvdWxkIGJlIGZpeGVkIGluZGVwZW5kZW50bHkuCgoKTWF5YmUg
aXQncyBiZXR0ZXIgdG8gdHJ5IHRvIGZpeCB3aXRoIHRoZSBleGlzdCB1YWRkciBvcHRpbWl6YXRp
b24gZmlyc3QuCgpJIGRpZCBzcG90IHR3byBvdGhlciBpc3N1ZXM6CgoxKSB3ZSBkb24ndCBjaGVj
ayB0aGUgcmV0dXJuIHZhbHVlIG1tdV9yZWdpc3RlciBpbiB2aG9zdF9zZXRfdnJpbmdfbnVtKCkK
CjIpIHdlIHRyeSB0byBzZXR1cCB2cSBhZGRyZXNzIGV2ZW4gaWYgc2V0X3ZyaW5nX2FkZHIoKSBm
YWlsCgoKRm9yIHRoZSBidWcgaXQgc2VsZiwgaXQgbG9va3MgdG8gbWUgdGhhdCB0aGUgbW0gcmVm
Y291bnQgd2FzIG1lc3NlZCB1cCAKc2luY2Ugd2UgdHJ5IHRvIHJlZ2lzdGVyIGFuZCB1bnJlZ2lz
dGVyIE1NVSBub3RpZmllci4gQnV0IEkgaGF2ZW4ndCAKZmlndXJlZCBvdXQgd2h5LCB3aWxsIGRv
IG1vcmUgaW52ZXN0aWdhdGlvbi4KClRoYW5rcwoKCj4KPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
