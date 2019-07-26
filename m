Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C92976AE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=68CzFilRc45Y/6KuIqsghlf4Wb+SWX8BXJuTB9HnVmo=; b=nsDpLhSPI+oA2wA8K76vF9wUD
	tr3NUlCJznYGnbmay2MWqfXCm7ZaGzYX7HmWFnNkCAjQghuQ0oR+NI1gyldfSAYuCMZuUfrw797Bb
	UHXwbQp8i4V5Bp9TADyl6783MBk2/z5QQ0bECTnE/w5MjwVR+bQyc82B3JoB/2qeAOyjIHnS3IZ/T
	Jbf4yE2jsHZdxFUK2Y+Q8ORcMREiPn8IrjsW2f1iHHzTty+Js0/0MZc+2G3rZXutbstMRwgwHgG3p
	yYo71eqpKxXW2F1R1DjCWas+WhS1p6qgfGAPwdfxkh9y4ymOT3n2ij/M6xAevipkZX6jUptuq5Mll
	7cEHPSDjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0ne-0006wP-Qe; Fri, 26 Jul 2019 14:02:22 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0mA-0005o9-Iy
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:00:53 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 07A33C059B6F;
 Fri, 26 Jul 2019 14:00:49 +0000 (UTC)
Received: from [10.72.12.238] (ovpn-12-238.pek2.redhat.com [10.72.12.238])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 894BC6062E;
 Fri, 26 Jul 2019 14:00:22 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190725012149-mutt-send-email-mst@kernel.org>
 <55e8930c-2695-365f-a07b-3ad169654d28@redhat.com>
 <20190725042651-mutt-send-email-mst@kernel.org>
 <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
 <20190725092332-mutt-send-email-mst@kernel.org>
 <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
 <20190726074644-mutt-send-email-mst@kernel.org>
 <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
 <20190726082837-mutt-send-email-mst@kernel.org>
 <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
 <20190726094353-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <63754251-a39a-1e0e-952d-658102682094@redhat.com>
Date: Fri, 26 Jul 2019 22:00:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726094353-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Fri, 26 Jul 2019 14:00:49 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_070050_755429_891504F2 
X-CRM114-Status: GOOD (  25.26  )
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

Ck9uIDIwMTkvNy8yNiDkuIvljYg5OjQ3LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
RnJpLCBKdWwgMjYsIDIwMTkgYXQgMDg6NTM6MThQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzI2IOS4i+WNiDg6MzgsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDA4OjAwOjU4UE0gKzA4MDAsIEphc29uIFdhbmcgd3Jv
dGU6Cj4+Pj4gT24gMjAxOS83LzI2IOS4i+WNiDc6NDksIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90
ZToKPj4+Pj4gT24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMTA6MjU6MjVQTSArMDgwMCwgSmFzb24g
V2FuZyB3cm90ZToKPj4+Pj4+IE9uIDIwMTkvNy8yNSDkuIvljYg5OjI2LCBNaWNoYWVsIFMuIFRz
aXJraW4gd3JvdGU6Cj4+Pj4+Pj4+IEV4YWN0bHksIGFuZCB0aGF0J3MgdGhlIHJlYXNvbiBhY3R1
YWxseSBJIHVzZSBzeW5jaHJvbml6ZV9yY3UoKSB0aGVyZS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gU28g
dGhlIGNvbmNlcm4gaXMgc3RpbGwgdGhlIHBvc3NpYmxlIHN5bmNocm9uaXplX2V4cGVkaXRlZCgp
Pwo+Pj4+Pj4+IEkgdGhpbmsgc3luY2hyb25pemVfc3JjdV9leHBlZGl0ZWQuCj4+Pj4+Pj4KPj4+
Pj4+PiBzeW5jaHJvbml6ZV9leHBlZGl0ZWQgc2VuZHMgbG90cyBvZiBJUEkgYW5kIGlzIGJhZCBm
b3IgcmVhbHRpbWUgVk1zLgo+Pj4+Pj4+Cj4+Pj4+Pj4+IENhbiBJIGRvIHRoaXMKPj4+Pj4+Pj4g
b24gdGhyb3VnaCBhbm90aGVyIHNlcmllcyBvbiB0b3Agb2YgdGhlIGluY29taW5nIFYyPwo+Pj4+
Pj4+Pgo+Pj4+Pj4+PiBUaGFua3MKPj4+Pj4+Pj4KPj4+Pj4+PiBUaGUgcXVlc3Rpb24gaXMgdGhp
czogaXMgdGhpcyBzdGlsbCBhIGdhaW4gaWYgd2Ugc3dpdGNoIHRvIHRoZQo+Pj4+Pj4+IG1vcmUg
ZXhwZW5zaXZlIHNyY3U/IElmIHllcyB0aGVuIHdlIGNhbiBrZWVwIHRoZSBmZWF0dXJlIG9uLAo+
Pj4+Pj4gSSB0aGluayB3ZSBvbmx5IGNhcmUgYWJvdXQgdGhlIGNvc3Qgb24gc3JjdV9yZWFkX2xv
Y2soKSB3aGljaCBsb29rcyBwcmV0dHkKPj4+Pj4+IHRpbnkgZm9ybSBteSBwb2ludCBvZiB2aWV3
LiBXaGljaCBpcyBiYXNpY2FsbHkgYSBSRUFEX09OQ0UoKSArIFdSSVRFX09OQ0UoKS4KPj4+Pj4+
Cj4+Pj4+PiBPZiBjb3Vyc2UgSSBjYW4gYmVuY2htYXJrIHRvIHNlZSB0aGUgZGlmZmVyZW5jZS4K
Pj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4+IGlmIG5vdCB3ZSdsbCBwdXQgaXQgb2ZmIHVudGlsIG5leHQg
cmVsZWFzZSBhbmQgdGhpbmsKPj4+Pj4+PiBvZiBiZXR0ZXIgc29sdXRpb25zLiByY3UtPnNyY3Ug
aXMganVzdCBhIGZpbmQgYW5kIHJlcGxhY2UsCj4+Pj4+Pj4gZG9uJ3Qgc2VlIHdoeSB3ZSBuZWVk
IHRvIGRlZmVyIHRoYXQuIGNhbiBiZSBhIHNlcGFyYXRlIHBhdGNoCj4+Pj4+Pj4gZm9yIHN1cmUs
IGJ1dCB3ZSBuZWVkIHRvIGtub3cgaG93IHdlbGwgaXQgd29ya3MuCj4+Pj4+PiBJIHRoaW5rIEkg
Z2V0IGhlcmUsIGxldCBtZSB0cnkgdG8gZG8gdGhhdCBpbiBWMiBhbmQgbGV0J3Mgc2VlIHRoZSBu
dW1iZXJzLgo+Pj4+Pj4KPj4+Pj4+IFRoYW5rcwo+Pj4+IEl0IGxvb2tzIHRvIG1lIGZvciB0cmVl
IHJjdSwgaXRzIHNyY3VfcmVhZF9sb2NrKCkgaGF2ZSBhIG1iKCkgd2hpY2ggaXMgdG9vCj4+Pj4g
ZXhwZW5zaXZlIGZvciB1cy4KPj4+IEkgd2lsbCB0cnkgdG8gcG9uZGVyIHVzaW5nIHZxIGxvY2sg
aW4gc29tZSB3YXkuCj4+PiBNYXliZSB3aXRoIHRyeWxvY2sgc29tZWhvdyAuLi4KPj4KPj4gT2ss
IGxldCBtZSByZXRyeSBpZiBuZWNlc3NhcnkgKGJ1dCBJIGRvIHJlbWVtYmVyIEkgZW5kIHVwIHdp
dGggZGVhZGxvY2tzCj4+IGxhc3QgdHJ5KS4KPj4KPj4KPj4+Cj4+Pj4gSWYgd2UganVzdCB3b3Jy
eSBhYm91dCB0aGUgSVBJLAo+Pj4gV2l0aCBzeW5jaHJvbml6ZV9yY3Ugd2hhdCBJIHdvdWxkIHdv
cnJ5IGFib3V0IGlzIHRoYXQgZ3Vlc3QgaXMgc3RhbGxlZAo+Pgo+PiBDYW4gdGhpcyBzeW5jaHJv
bml6ZV9yY3UoKSBiZSB0cmlnZ2VyZWQgYnkgZ3Vlc3Q/IElmIHllcywgdGhlcmUgYXJlIHNldmVy
YWwKPj4gb3RoZXIgTU1VIG5vdGlmaWVycyB0aGF0IGNhbiBibG9jay4gSXMgdmhvc3Qgc29tZXRo
aW5nIHNwZWNpYWwgaGVyZT8KPiBTb3JyeSwgbGV0IG1lIGV4cGxhaW46IGd1ZXN0cyAoYW5kIHRh
c2tzIGluIGdlbmVyYWwpCj4gY2FuIHRyaWdnZXIgYWN0aXZpdHkgdGhhdCB3aWxsCj4gbWFrZSBz
eW5jaHJvbml6ZV9yY3UgdGFrZSBhIGxvbmcgdGltZS4KCgpZZXMsIEkgZ2V0IHRoaXMuCgoKPiAg
IFRodXMgYmxvY2tpbmcKPiBhbiBtbXUgbm90aWZpZXIgdW50aWwgc3luY2hyb25pemVfcmN1IGZp
bmlzaGVzCj4gaXMgYSBiYWQgaWRlYS4KCgpUaGUgcXVlc3Rpb24gaXMsIE1NVSBub3RpZmllciBh
cmUgYWxsb3dlZCB0byBiZSBibG9ja2VkIG9uIAppbnZhbGlkYXRlX3JhbmdlX3N0YXJ0KCkgd2hp
Y2ggY291bGQgYmUgbXVjaCBzbG93ZXIgdGhhbiAKc3luY2hyb25pemVfcmN1KCkgdG8gZmluaXNo
LgoKTG9va2luZyBhdCBhbWRncHVfbW5faW52YWxpZGF0ZV9yYW5nZV9zdGFydF9nZngoKSB3aGlj
aCBjYWxscyAKYW1kZ3B1X21uX2ludmFsaWRhdGVfbm9kZSgpIHdoaWNoIGRpZDoKCiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgciA9IHJlc2VydmF0aW9uX29iamVjdF93YWl0X3RpbWVv
dXRfcmN1KGJvLT50Ym8ucmVzdiwKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgdHJ1ZSwgZmFsc2UsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKCi4uLgoKCj4+
PiBiZWNhdXNlIHN5c3RlbSBpcyBidXN5IGJlY2F1c2Ugb2Ygb3RoZXIgZ3Vlc3RzLgo+Pj4gV2l0
aCBleHBlZGl0ZWQgaXQncyB0aGUgSVBJcy4uLgo+Pj4KPj4gVGhlIGN1cnJlbnQgc3luY2hyb25p
emVfcmN1KCnCoCBjYW4gZm9yY2UgYSBleHBlZGl0ZWQgZ3JhY2UgcGVyaW9kOgo+Pgo+PiB2b2lk
IHN5bmNocm9uaXplX3JjdSh2b2lkKQo+PiB7Cj4+ICDCoMKgwqAgwqDCoMKgIC4uLgo+PiAgwqDC
oMKgwqDCoMKgwqAgaWYgKHJjdV9ibG9ja2luZ19pc19ncCgpKQo+PiByZXR1cm47Cj4+ICDCoMKg
wqDCoMKgwqDCoCBpZiAocmN1X2dwX2lzX2V4cGVkaXRlZCgpKQo+PiBzeW5jaHJvbml6ZV9yY3Vf
ZXhwZWRpdGVkKCk7Cj4+IGVsc2UKPj4gd2FpdF9yY3VfZ3AoY2FsbF9yY3UpOwo+PiB9Cj4+IEVY
UE9SVF9TWU1CT0xfR1BMKHN5bmNocm9uaXplX3JjdSk7Cj4KPiBBbiBhZG1pbiBjYW4gZm9yY2Ug
cmN1IHRvIGZpbmlzaCBmYXN0ZXIsIHRyYWRpbmcKPiBpbnRlcnJ1cHRzIGZvciByZXNwb25zaXZl
bmVzcy4KCgpZZXMsIHNvIHdoZW4gc2V0LCBhbGwgZWFjaCBzeW5jaHJvbml6ZV9yY3UoKSB3aWxs
IGdvIGZvciAKc3luY2hyb25pemVfcmN1X2V4cGVkaXRlZCgpLgoKCj4KPj4+PiBjYW4gd2UgZG8g
c29tZXRoaW5nIGxpa2UgaW4KPj4+PiB2aG9zdF9pbnZhbGlkYXRlX3ZxX3N0YXJ0KCk/Cj4+Pj4K
Pj4+PiAgIMKgwqDCoMKgwqDCoMKgIGlmIChtYXApIHsKPj4+PiAgIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAvKiBJbiBvcmRlciB0byBhdm9pZCBwb3NzaWJsZSBJUElzIHdpdGgKPj4+
PiAgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogc3luY2hyb25pemVfcmN1X2V4
cGVkaXRlZCgpIHdlIHVzZSBjYWxsX3JjdSgpICsKPj4+PiAgIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICogY29tcGxldGlvbi4KPj4+PiAqLwo+Pj4+IGluaXRfY29tcGxldGlvbigm
Yy5jb21wbGV0aW9uKTsKPj4+PiAgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjYWxs
X3JjdSgmYy5yY3VfaGVhZCwgdmhvc3RfZmluaXNoX3ZxX2ludmFsaWRhdGlvbik7Cj4+Pj4gd2Fp
dF9mb3JfY29tcGxldGlvbigmYy5jb21wbGV0aW9uKTsKPj4+PiAgIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB2aG9zdF9zZXRfbWFwX2RpcnR5KHZxLCBtYXAsIGluZGV4KTsKPj4+PiB2
aG9zdF9tYXBfdW5wcmVmZXRjaChtYXApOwo+Pj4+ICAgwqDCoMKgwqDCoMKgwqAgfQo+Pj4+Cj4+
Pj4gPwo+Pj4gV2h5IHdvdWxkIHRoYXQgYmUgZmFzdGVyIHRoYW4gc3luY2hyb25pemVfcmN1Pwo+
Pgo+PiBObyBmYXN0ZXIgYnV0IG5vIElQSS4KPj4KPiBTb3JyeSBJIHN0aWxsIGRvbid0IHNlZSB0
aGUgcG9pbnQuCj4gc3luY2hyb25pemVfcmN1IGRvZXNuJ3Qgbm9ybWFsbHkgZG8gYW4gSVBJIGVp
dGhlci4KPgoKTm90IHRoZSBjYXNlIG9mIHdoZW4gcmN1X2V4cGVkaXRlZCBpcyBzZXQuIFRoaXMg
Y2FuIGp1c3QgMTAwJSBtYWtlIHN1cmUgCnRoZXJlJ3Mgbm8gSVBJLgoKCj4+Pgo+Pj4+PiBUaGVy
ZSdzIG9uZSBvdGhlciB0aGluZyB0aGF0IGJvdGhlcnMgbWUsIGFuZCB0aGF0IGlzIHRoYXQKPj4+
Pj4gZm9yIGxhcmdlIHJpbmdzIHdoaWNoIGFyZSBub3QgcGh5c2ljYWxseSBjb250aWd1b3VzCj4+
Pj4+IHdlIGRvbid0IGltcGxlbWVudCB0aGUgb3B0aW1pemF0aW9uLgo+Pj4+Pgo+Pj4+PiBGb3Ig
c3VyZSwgdGhhdCBjYW4gd2FpdCwgYnV0IEkgdGhpbmsgZXZlbnR1YWxseSB3ZSBzaG91bGQKPj4+
Pj4gdm1hcCBsYXJnZSByaW5ncy4KPj4+PiBZZXMsIHdvcnRoIHRvIHRyeS4gQnV0IHVzaW5nIGRp
cmVjdCBtYXAgaGFzIGl0cyBvd24gYWR2YW50YWdlOiBpdCBjYW4gdXNlCj4+Pj4gaHVnZXBhZ2Ug
dGhhdCB2bWFwIGNhbid0Cj4+Pj4KPj4+PiBUaGFua3MKPj4+IFN1cmUsIHNvIHdlIGNhbiBkbyB0
aGF0IGZvciBzbWFsbCByaW5ncy4KPj4KPj4gWWVzLCB0aGF0J3MgcG9zc2libGUgYnV0IHNob3Vs
ZCBiZSBkb25lIG9uIHRvcC4KPj4KPj4gVGhhbmtzCj4gQWJzb2x1dGVseS4gTmVlZCB0byBmaXgg
dXAgdGhlIGJ1Z3MgZmlyc3QuCj4KClllcy4KClRoYW5rcwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
