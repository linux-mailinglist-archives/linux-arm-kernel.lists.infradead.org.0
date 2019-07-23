Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0137193F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cJXTFGtmpwpt7f/2M/pWXy91aWuyZPnm5cRrAqoUnvI=; b=jBFo838BFGYtuD71Vueph6zaE
	FwFviL8aNL0KwPGgQFmQskBIWCzb/X/3FFPqBzQYWs17U0cMebOziI7R/CTZUi+cj7AfodHY7ds/B
	ocCiKPG3HSAoWS437nKG00ab7sXODHyZjo5EsUwzv4fTNQ7qSNqH1Ajvl/btlfaKV9Ls7+lX0nBlq
	E9ZxT5nTSq1u03m4QXGApP0wHn4uAq5sBPcd1vYgXiG1M+2Gg4Ol9MkDmZ5oP/vav5cCNvQVzB9cC
	s304x14LRDgECf3tESKgNxdIAvGY0cETU11rVAtKugJoBkysoSkQNwZOxhCo+M2GUN2jzTdTEgQHU
	O8FKnd/Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hputd-0000nF-Fr; Tue, 23 Jul 2019 13:32:01 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hputR-0000mj-6u
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:31:50 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B85FF2CD801;
 Tue, 23 Jul 2019 13:31:47 +0000 (UTC)
Received: from [10.72.12.26] (ovpn-12-26.pek2.redhat.com [10.72.12.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6BBD55C22D;
 Tue, 23 Jul 2019 13:31:33 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190721081447-mutt-send-email-mst@kernel.org>
 <85dd00e2-37a6-72b7-5d5a-8bf46a3526cf@redhat.com>
 <20190722040230-mutt-send-email-mst@kernel.org>
 <4bd2ff78-6871-55f2-44dc-0982ffef3337@redhat.com>
 <20190723010019-mutt-send-email-mst@kernel.org>
 <b4696f2e-678a-bdb2-4b7c-fb4ce040ec2a@redhat.com>
 <20190723032024-mutt-send-email-mst@kernel.org>
 <1d14de4d-0133-1614-9f64-3ded381de04e@redhat.com>
 <20190723035725-mutt-send-email-mst@kernel.org>
 <3f4178f1-0d71-e032-0f1f-802428ceca59@redhat.com>
 <20190723051828-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <caff362a-e208-3468-3688-63e1d093a9d3@redhat.com>
Date: Tue, 23 Jul 2019 21:31:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723051828-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 23 Jul 2019 13:31:48 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063149_300037_C96C6AC4 
X-CRM114-Status: GOOD (  16.95  )
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

Ck9uIDIwMTkvNy8yMyDkuIvljYg1OjI2LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
VHVlLCBKdWwgMjMsIDIwMTkgYXQgMDQ6NDk6MDFQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzIzIOS4i+WNiDQ6MTAsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
IE9uIFR1ZSwgSnVsIDIzLCAyMDE5IGF0IDAzOjUzOjA2UE0gKzA4MDAsIEphc29uIFdhbmcgd3Jv
dGU6Cj4+Pj4gT24gMjAxOS83LzIzIOS4i+WNiDM6MjMsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90
ZToKPj4+Pj4+PiBSZWFsbHkgbGV0J3MganVzdCB1c2Uga2ZyZWVfcmN1LiBJdCdzIHdheSBjbGVh
bmVyOiBmaXJlIGFuZCBmb3JnZXQuCj4+Pj4+PiBMb29rcyBub3QsIHlvdSBuZWVkIHJhdGUgbGlt
aXQgdGhlIGZpcmUgYXMgeW91J3ZlIGZpZ3VyZWQgb3V0Pwo+Pj4+PiBTZWUgdGhlIGRpc2N1c3Np
b24gdGhhdCBmb2xsb3dlZC4gQmFzaWNhbGx5IG5vLCBpdCdzIGdvb2QgZW5vdWdoCj4+Pj4+IGFs
cmVhZHkgYW5kIGlzIG9ubHkgZ29pbmcgdG8gYmUgYmV0dGVyLgo+Pj4+Pgo+Pj4+Pj4gQW5kIGlu
IGZhY3QsCj4+Pj4+PiB0aGUgc3luY2hyb25pemF0aW9uIGlzIG5vdCBldmVuIG5lZWRlZCwgZG9l
cyBpdCBoZWxwIGlmIEkgbGVhdmUgYSBjb21tZW50IHRvCj4+Pj4+PiBleHBsYWluPwo+Pj4+PiBM
ZXQncyB0cnkgdG8gZmlndXJlIGl0IG91dCBpbiB0aGUgbWFpbCBmaXJzdC4gSSdtIHByZXR0eSBz
dXJlIHRoZQo+Pj4+PiBjdXJyZW50IGxvZ2ljIGlzIHdyb25nLgo+Pj4+IEhlcmUgaXMgd2hhdCB0
aGUgY29kZSB3aGF0IHRvIGFjaGlldmU6Cj4+Pj4KPj4+PiAtIFRoZSBtYXAgd2FzIHByb3RlY3Rl
ZCBieSBSQ1UKPj4+Pgo+Pj4+IC0gV3JpdGVycyBhcmU6IE1NVSBub3RpZmllciBpbnZhbGlkYXRp
b24gY2FsbGJhY2tzLCBmaWxlIG9wZXJhdGlvbnMgKGlvY3Rscwo+Pj4+IGV0YyksIG1ldGFfcHJl
ZmV0Y2ggKGRhdGFwYXRoKQo+Pj4+Cj4+Pj4gLSBSZWFkZXJzIGFyZTogbWVtb3J5IGFjY2Vzc29y
Cj4+Pj4KPj4+PiBXcml0ZXIgYXJlIHN5bmNocm9uaXplZCB0aHJvdWdoIG1tdV9sb2NrLiBSQ1Ug
aXMgdXNlZCB0byBzeW5jaHJvbml6ZWQKPj4+PiBiZXR3ZWVuIHdyaXRlcnMgYW5kIHJlYWRlcnMu
Cj4+Pj4KPj4+PiBUaGUgc3luY2hyb25pemVfcmN1KCkgaW4gdmhvc3RfcmVzZXRfdnFfbWFwcygp
IHdhcyB1c2VkIHRvIHN5bmNocm9uaXplZCBpdAo+Pj4+IHdpdGggcmVhZGVycyAobWVtb3J5IGFj
Y2Vzc29ycykgaW4gdGhlIHBhdGggb2YgZmlsZSBvcGVyYXRpb25zLiBCdXQgaW4gdGhpcwo+Pj4+
IGNhc2UsIHZxLT5tdXRleCB3YXMgYWxyZWFkeSBoZWxkLCB0aGlzIG1lYW5zIGl0IGhhcyBiZWVu
IHNlcmlhbGl6ZWQgd2l0aAo+Pj4+IG1lbW9yeSBhY2Nlc3Nvci4gVGhhdCdzIHdoeSBJIHRoaW5r
IGl0IGNvdWxkIGJlIHJlbW92ZWQgc2FmZWx5Lgo+Pj4+Cj4+Pj4gQW55dGhpbmcgSSBtaXNzIGhl
cmU/Cj4+Pj4KPj4+IFNvIGludmFsaWRhdGUgY2FsbGJhY2tzIG5lZWQgdG8gcmVzZXQgdGhlIG1h
cCwgYW5kIHRoZXkgZG8KPj4+IG5vdCBoYXZlIHZxIG11dGV4LiBIb3cgY2FuIHRoZXkgZG8gdGhp
cyBhbmQgZnJlZQo+Pj4gdGhlIG1hcCBzYWZlbHk/IFRoZXkgbmVlZCBzeW5jaHJvbml6ZV9yY3Ug
b3Iga2ZyZWVfcmN1IHJpZ2h0Pwo+PiBJbnZhbGlkYXRpb24gY2FsbGJhY2tzIG5lZWQgYnV0IGZp
bGUgb3BlcmF0aW9ucyAoZS5nIGlvY3RsKSBub3QuCj4+Cj4+Cj4+PiBBbmQgSSB3b3JyeSBzb21l
d2hhdCB0aGF0IHN5bmNocm9uaXplX3JjdSBpbiBhbiBNTVUgbm90aWZpZXIKPj4+IGlzIGEgcHJv
YmxlbSwgTU1VIG5vdGlmaWVycyBhcmUgc3VwcG9zZWQgdG8gYmUgcXVpY2s6Cj4+IExvb2tzIG5v
dCwgc2luY2UgaXQgY2FuIGFsbG93IHRvIGJlIGJsb2NrZWQgYW5kIGxvdHMgb2YgZHJpdmVyIGRl
cGVuZHMgb24KPj4gdGhpcy4gKEUuZyBtbXVfbm90aWZpZXJfcmFuZ2VfYmxvY2thYmxlKCkpLgo+
IFJpZ2h0LCB0aGV5IGNhbiBibG9jay4gU28gd2h5IGRvbid0IHdlIHRha2UgYSBWUSBtdXRleCBh
bmQgYmUKPiBkb25lIHdpdGggaXQgdGhlbj8gTm8gUkNVIHRyaWNrcy4KCgpUaGlzIGlzIGhvdyBJ
IHdhbnQgdG8gZ28gd2l0aCBSRkMgYW5kIFYxLiBCdXQgSSBlbmQgdXAgd2l0aCBkZWFkbG9jayAK
YmV0d2VlbiB2cSBsb2NrcyBhbmQgc29tZSBNTSBpbnRlcm5hbCBsb2Nrcy4gU28gSSBkZWNpZGUg
dG8gdXNlIFJDVSAKd2hpY2ggaXMgMTAwJSB1bmRlciB0aGUgY29udHJvbCBvZiB2aG9zdC4KClRo
YW5rcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
