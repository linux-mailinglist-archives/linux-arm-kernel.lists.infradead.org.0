Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288B378DCB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 16:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ix6sB4qDUULNDBSnGtw7MrhmeWNzpdlJA4L8nLrJLM4=; b=GD4gX8UxFiNeDICy3AFYH/9rU
	bg3vOgJW/y7kKN/d8Cb646nyKxq/cOMByo9KYbvDNgCKr3aWpkIxdtFslr9Vq7b/Oy4N6ImTROHJL
	q4l3UCGgHXJbC9BAt04USpPEtrnKKXfXY5zgSuXlzu7X8jfYKZWF5j3uMTGTLZREM/EtsWqS8ypkH
	Rsy5dkS7+HK6mkwBwH3X1/9dYRt9WHPG2flVrqdsTV7qywB6YJWVYM6i+X2NYMRLOVPeYmXeqfpfb
	k83TYwBMCmw0skj7zbpV8ylCFNo6kBhRLNp0exbif3CPLv9Z9R4sjkhUIdHfxTa6MNwJgM9Vm5VwN
	8AW4S3Zpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6aX-0003NR-Oj; Mon, 29 Jul 2019 14:25:22 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6aB-00035a-SQ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 14:25:01 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 81BE3C049E12;
 Mon, 29 Jul 2019 14:24:58 +0000 (UTC)
Received: from [10.72.12.68] (ovpn-12-68.pek2.redhat.com [10.72.12.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 14E8E5D6A0;
 Mon, 29 Jul 2019 14:24:44 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
 <20190725092332-mutt-send-email-mst@kernel.org>
 <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
 <20190726074644-mutt-send-email-mst@kernel.org>
 <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
 <20190726082837-mutt-send-email-mst@kernel.org>
 <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
 <aaefa93e-a0de-1c55-feb0-509c87aae1f3@redhat.com>
 <20190726094756-mutt-send-email-mst@kernel.org>
 <0792ee09-b4b7-673c-2251-e5e0ce0fbe32@redhat.com>
 <20190729045127-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <4d43c094-44ed-dbac-b863-48fc3d754378@redhat.com>
Date: Mon, 29 Jul 2019 22:24:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729045127-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Mon, 29 Jul 2019 14:24:59 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_072459_951905_D1A7D156 
X-CRM114-Status: GOOD (  23.08  )
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

Ck9uIDIwMTkvNy8yOSDkuIvljYg0OjU5LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
TW9uLCBKdWwgMjksIDIwMTkgYXQgMDE6NTQ6NDlQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzI2IOS4i+WNiDk6NDksIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
Pj4gT2ssIGxldCBtZSByZXRyeSBpZiBuZWNlc3NhcnkgKGJ1dCBJIGRvIHJlbWVtYmVyIEkgZW5k
IHVwIHdpdGggZGVhZGxvY2tzCj4+Pj4+IGxhc3QgdHJ5KS4KPj4+PiBPaywgSSBwbGF5IGEgbGl0
dGxlIHdpdGggdGhpcy4gQW5kIGl0IHdvcmtzIHNvIGZhci4gV2lsbCBkbyBtb3JlIHRlc3RpbmcK
Pj4+PiB0b21vcnJvdy4KPj4+Pgo+Pj4+IE9uZSByZWFzb24gY291bGQgYmUgSSBzd2l0Y2ggdG8g
dXNlIGdldF91c2VyX3BhZ2VzX2Zhc3QoKSB0bwo+Pj4+IF9fZ2V0X3VzZXJfcGFnZXNfZmFzdCgp
IHdoaWNoIGRvZXNuJ3QgbmVlZCBtbWFwX3NlbS4KPj4+Pgo+Pj4+IFRoYW5rcwo+Pj4gT0sgdGhh
dCBzb3VuZHMgZ29vZC4gSWYgd2UgYWxzbyBzZXQgYSBmbGFnIHRvIG1ha2UKPj4+IHZob3N0X2V4
Y2VlZHNfd2VpZ2h0IGV4aXQsIHRoZW4gSSB0aGluayBpdCB3aWxsIGJlIGFsbCBnb29kLgo+Pgo+
PiBBZnRlciBzb21lIGV4cGVyaW1lbnRzLCBJIGNhbWUgdXAgdHdvIG1ldGhvZHM6Cj4+Cj4+IDEp
IHN3aXRjaCB0byB1c2UgdnEtPm11dGV4LCB0aGVuIHdlIG11c3QgdGFrZSB0aGUgdnEgbG9jayBk
dXJpbmcgcmFuZ2UKPj4gY2hlY2tpbmcgKGJ1dCBJIGRvbid0IHNlZSBvYnZpb3VzIHNsb3dkb3du
IGZvciAxNnZjcHVzICsgMTZxdWV1ZXMpLiBTZXR0aW5nCj4+IGZsYWdzIGR1cmluZyB3ZWlnaHQg
Y2hlY2sgc2hvdWxkIHdvcmsgYnV0IGl0IHN0aWxsIGNhbid0IGFkZHJlc3MgdGhlIHdvcnN0Cj4+
IGNhc2U6IHdhaXQgZm9yIHRoZSBwYWdlIHRvIGJlIHN3YXBwZWQgaW4uIElzIHRoaXMgYWNjZXB0
YWJsZT8KPj4KPj4gMikgdXNpbmcgY3VycmVudCBSQ1UgYnV0IHJlcGxhY2Ugc3luY2hyb25pemVf
cmN1KCkgd2l0aCB2aG9zdF93b3JrX2ZsdXNoKCkuCj4+IFRoZSB3b3JzdCBjYXNlIGlzIHRoZSBz
YW1lIGFzIDEpIGJ1dCB3ZSBjYW4gY2hlY2sgcmFuZ2Ugd2l0aG91dCBob2xkaW5nIGFueQo+PiBs
b2Nrcy4KPj4KPj4gV2hpY2ggb25lIGRpZCB5b3UgcHJlZmVyPwo+Pgo+PiBUaGFua3MKPiBJIHdv
dWxkIHJhdGhlciB3ZSBzdGFydCB3aXRoIDEgYW5kIHN3aXRjaCB0byAyIGFmdGVyIHdlCj4gY2Fu
IHNob3cgc29tZSBnYWluLgo+Cj4gQnV0IHRoZSB3b3JzdCBjYXNlIG5lZWRzIHRvIGJlIGFkZHJl
c3NlZC4KCgpZZXMuCgoKPiBIb3cgYWJvdXQgc2VuZGluZyBhIHNpZ25hbCB0bwo+IHRoZSB2aG9z
dCB0aHJlYWQ/ICBXZSB3aWxsIG5lZWQgdG8gZml4IHVwIGVycm9yIGhhbmRsaW5nIChJIHRoaW5r
IHRoYXQKPiBhdCB0aGUgbW9tZW50IGl0IHdpbGwgZXJyb3Igb3V0IGluIHRoYXQgY2FzZSwgaGFu
ZGxpbmcgdGhpcyBhcyBFRkFVTFQgLQo+IGFuZCB3ZSBkb24ndCB3YW50IHRvIGRyb3AgcGFja2V0
cyBpZiB3ZSBjYW4gaGVscCBpdCwgYW5kIHN1cmVseSBub3QKPiBlbnRlciBhbnkgZXJyb3Igc3Rh
dGVzLiAgSW4gcGFydGljdWxhciBpdCBtaWdodCBiZSBlc3BlY2lhbGx5IHRyaWNreSBpZgo+IHdl
IHdyb3RlIGludG8gdXNlcnNwYWNlIG1lbW9yeSBhbmQgYXJlIG5vdyB0cnlpbmcgdG8gbG9nIHRo
ZSB3cml0ZS4KPiBJIGd1ZXNzIHdlIGNhbiBkaXNhYmxlIHRoZSBvcHRpbWl6YXRpb24gaWYgbG9n
IGlzIGVuYWJsZWQ/KS4KCgpUaGlzIG1heSB3b3JrIGJ1dCByZXF1aXJlcyBhIGxvdCBvZiBjaGFu
Z2VzLiBBbmQgYWN0dWFsbHkgaXQncyB0aGUgcHJpY2UgCm9mIHVzaW5nIHZxIG11dGV4LiBBY3R1
YWxseSwgdGhlIGNyaXRpY2FsIHNlY3Rpb24gc2hvdWxkIGJlIHJhdGhlciAKc21hbGwsIGUuZyBq
dXN0IGluc2lkZSBtZW1vcnkgYWNjZXNzb3JzLgoKSSB3b25kZXIgd2hldGhlciBvciBub3QganVz
dCBkbyBzeW5jaHJvbml6ZSBvdXIgc2VsZiBsaWtlOgoKc3RhdGljIHZvaWQgaW5saW5lIHZob3N0
X2luY192cV9yZWYoc3RydWN0IHZob3N0X3ZpcnRxdWV1ZSAqdnEpCnsKIMKgwqDCoMKgwqDCoMKg
IGludCByZWYgPSBSRUFEX09OQ0UodnEtPnJlZik7CgogwqDCoMKgwqDCoMKgwqAgV1JJVEVfT05D
RSh2cS0+cmVmLCByZWYgKyAxKTsKc21wX3JtYigpOwp9CgpzdGF0aWMgdm9pZCBpbmxpbmUgdmhv
c3RfZGVjX3ZxX3JlZihzdHJ1Y3Qgdmhvc3RfdmlydHF1ZXVlICp2cSkKewogwqDCoMKgwqDCoMKg
wqAgaW50IHJlZiA9IFJFQURfT05DRSh2cS0+cmVmKTsKCnNtcF93bWIoKTsKIMKgwqDCoMKgwqDC
oMKgIFdSSVRFX09OQ0UodnEtPnJlZiwgcmVmIC0gMSk7Cn0KCnN0YXRpYyB2b2lkIGlubGluZSB2
aG9zdF93YWl0X2Zvcl9yZWYoc3RydWN0IHZob3N0X3ZpcnRxdWV1ZSAqdnEpCnsKIMKgwqDCoMKg
wqDCoMKgIHdoaWxlIChSRUFEX09OQ0UodnEtPnJlZikpOwptYigpOwp9CgoKT3IgdXNpbmcgc21w
X2xvYWRfYWNxdWlyZSgpL3NtcF9zdG9yZV9yZWxlYXNlKCkgaW5zdGVhZD8KClRoYW5rcwoKPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
