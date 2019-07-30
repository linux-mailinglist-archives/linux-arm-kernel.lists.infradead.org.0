Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF317A27C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 09:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xNODeYOMfYOGLffW5pwpMh1SLS7km7nvySS7hqepicM=; b=MlZzx3FLGlVghyomJu0deXrrv
	pIRLWo7stooZe/IXwPmtYNZihwE1++xx/MenHT5aqe1LAiJzkWkO36e2O+xRgKQZH1OyxdsnHCgke
	m93BYakSJUAc59qBowo1+ARk1p3TD/s81m/M4z0tzVDT/nNC2QNrytjA1HUMjzWYEFhIMukCiZccT
	L/BoglB85rVuJoseKOJ34FF7+XNzmHSyqeh6UaTfUshehmeqeZD/B/DR0xyFZSa+wvAtnnR+ppEB4
	3Rh9dfOqc52DAG9maGvaDC/LQT1K8RL4w9LbFjjYToe+Bn37FpWEHR+uTMHVtpbdPxtP4N6ic+0uo
	HsaIVVROg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsMp7-0004La-9H; Tue, 30 Jul 2019 07:45:29 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsMok-0003gD-CO
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 07:45:08 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3AD0BC027339;
 Tue, 30 Jul 2019 07:45:03 +0000 (UTC)
Received: from [10.72.12.185] (ovpn-12-185.pek2.redhat.com [10.72.12.185])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ECA805C1A1;
 Tue, 30 Jul 2019 07:44:48 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
 <20190726074644-mutt-send-email-mst@kernel.org>
 <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
 <20190726082837-mutt-send-email-mst@kernel.org>
 <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
 <aaefa93e-a0de-1c55-feb0-509c87aae1f3@redhat.com>
 <20190726094756-mutt-send-email-mst@kernel.org>
 <0792ee09-b4b7-673c-2251-e5e0ce0fbe32@redhat.com>
 <20190729045127-mutt-send-email-mst@kernel.org>
 <4d43c094-44ed-dbac-b863-48fc3d754378@redhat.com>
 <20190729104028-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <96b1d67c-3a8d-1224-e9f0-5f7725a3dc10@redhat.com>
Date: Tue, 30 Jul 2019 15:44:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729104028-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 30 Jul 2019 07:45:04 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_004506_490516_477DC541 
X-CRM114-Status: GOOD (  25.00  )
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

Ck9uIDIwMTkvNy8yOSDkuIvljYgxMDo0NCwgTWljaGFlbCBTLiBUc2lya2luIHdyb3RlOgo+IE9u
IE1vbiwgSnVsIDI5LCAyMDE5IGF0IDEwOjI0OjQzUE0gKzA4MDAsIEphc29uIFdhbmcgd3JvdGU6
Cj4+IE9uIDIwMTkvNy8yOSDkuIvljYg0OjU5LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4+
PiBPbiBNb24sIEp1bCAyOSwgMjAxOSBhdCAwMTo1NDo0OVBNICswODAwLCBKYXNvbiBXYW5nIHdy
b3RlOgo+Pj4+IE9uIDIwMTkvNy8yNiDkuIvljYg5OjQ5LCBNaWNoYWVsIFMuIFRzaXJraW4gd3Jv
dGU6Cj4+Pj4+Pj4gT2ssIGxldCBtZSByZXRyeSBpZiBuZWNlc3NhcnkgKGJ1dCBJIGRvIHJlbWVt
YmVyIEkgZW5kIHVwIHdpdGggZGVhZGxvY2tzCj4+Pj4+Pj4gbGFzdCB0cnkpLgo+Pj4+Pj4gT2ss
IEkgcGxheSBhIGxpdHRsZSB3aXRoIHRoaXMuIEFuZCBpdCB3b3JrcyBzbyBmYXIuIFdpbGwgZG8g
bW9yZSB0ZXN0aW5nCj4+Pj4+PiB0b21vcnJvdy4KPj4+Pj4+Cj4+Pj4+PiBPbmUgcmVhc29uIGNv
dWxkIGJlIEkgc3dpdGNoIHRvIHVzZSBnZXRfdXNlcl9wYWdlc19mYXN0KCkgdG8KPj4+Pj4+IF9f
Z2V0X3VzZXJfcGFnZXNfZmFzdCgpIHdoaWNoIGRvZXNuJ3QgbmVlZCBtbWFwX3NlbS4KPj4+Pj4+
Cj4+Pj4+PiBUaGFua3MKPj4+Pj4gT0sgdGhhdCBzb3VuZHMgZ29vZC4gSWYgd2UgYWxzbyBzZXQg
YSBmbGFnIHRvIG1ha2UKPj4+Pj4gdmhvc3RfZXhjZWVkc193ZWlnaHQgZXhpdCwgdGhlbiBJIHRo
aW5rIGl0IHdpbGwgYmUgYWxsIGdvb2QuCj4+Pj4gQWZ0ZXIgc29tZSBleHBlcmltZW50cywgSSBj
YW1lIHVwIHR3byBtZXRob2RzOgo+Pj4+Cj4+Pj4gMSkgc3dpdGNoIHRvIHVzZSB2cS0+bXV0ZXgs
IHRoZW4gd2UgbXVzdCB0YWtlIHRoZSB2cSBsb2NrIGR1cmluZyByYW5nZQo+Pj4+IGNoZWNraW5n
IChidXQgSSBkb24ndCBzZWUgb2J2aW91cyBzbG93ZG93biBmb3IgMTZ2Y3B1cyArIDE2cXVldWVz
KS4gU2V0dGluZwo+Pj4+IGZsYWdzIGR1cmluZyB3ZWlnaHQgY2hlY2sgc2hvdWxkIHdvcmsgYnV0
IGl0IHN0aWxsIGNhbid0IGFkZHJlc3MgdGhlIHdvcnN0Cj4+Pj4gY2FzZTogd2FpdCBmb3IgdGhl
IHBhZ2UgdG8gYmUgc3dhcHBlZCBpbi4gSXMgdGhpcyBhY2NlcHRhYmxlPwo+Pj4+Cj4+Pj4gMikg
dXNpbmcgY3VycmVudCBSQ1UgYnV0IHJlcGxhY2Ugc3luY2hyb25pemVfcmN1KCkgd2l0aCB2aG9z
dF93b3JrX2ZsdXNoKCkuCj4+Pj4gVGhlIHdvcnN0IGNhc2UgaXMgdGhlIHNhbWUgYXMgMSkgYnV0
IHdlIGNhbiBjaGVjayByYW5nZSB3aXRob3V0IGhvbGRpbmcgYW55Cj4+Pj4gbG9ja3MuCj4+Pj4K
Pj4+PiBXaGljaCBvbmUgZGlkIHlvdSBwcmVmZXI/Cj4+Pj4KPj4+PiBUaGFua3MKPj4+IEkgd291
bGQgcmF0aGVyIHdlIHN0YXJ0IHdpdGggMSBhbmQgc3dpdGNoIHRvIDIgYWZ0ZXIgd2UKPj4+IGNh
biBzaG93IHNvbWUgZ2Fpbi4KPj4+Cj4+PiBCdXQgdGhlIHdvcnN0IGNhc2UgbmVlZHMgdG8gYmUg
YWRkcmVzc2VkLgo+Pgo+PiBZZXMuCj4+Cj4+Cj4+PiBIb3cgYWJvdXQgc2VuZGluZyBhIHNpZ25h
bCB0bwo+Pj4gdGhlIHZob3N0IHRocmVhZD8gIFdlIHdpbGwgbmVlZCB0byBmaXggdXAgZXJyb3Ig
aGFuZGxpbmcgKEkgdGhpbmsgdGhhdAo+Pj4gYXQgdGhlIG1vbWVudCBpdCB3aWxsIGVycm9yIG91
dCBpbiB0aGF0IGNhc2UsIGhhbmRsaW5nIHRoaXMgYXMgRUZBVUxUIC0KPj4+IGFuZCB3ZSBkb24n
dCB3YW50IHRvIGRyb3AgcGFja2V0cyBpZiB3ZSBjYW4gaGVscCBpdCwgYW5kIHN1cmVseSBub3QK
Pj4+IGVudGVyIGFueSBlcnJvciBzdGF0ZXMuICBJbiBwYXJ0aWN1bGFyIGl0IG1pZ2h0IGJlIGVz
cGVjaWFsbHkgdHJpY2t5IGlmCj4+PiB3ZSB3cm90ZSBpbnRvIHVzZXJzcGFjZSBtZW1vcnkgYW5k
IGFyZSBub3cgdHJ5aW5nIHRvIGxvZyB0aGUgd3JpdGUuCj4+PiBJIGd1ZXNzIHdlIGNhbiBkaXNh
YmxlIHRoZSBvcHRpbWl6YXRpb24gaWYgbG9nIGlzIGVuYWJsZWQ/KS4KPj4KPj4gVGhpcyBtYXkg
d29yayBidXQgcmVxdWlyZXMgYSBsb3Qgb2YgY2hhbmdlcy4KPiBJIGFncmVlLgo+Cj4+IEFuZCBh
Y3R1YWxseSBpdCdzIHRoZSBwcmljZSBvZgo+PiB1c2luZyB2cSBtdXRleC4KPiBOb3Qgc3VyZSB3
aGF0J3MgbWVhbnQgaGVyZS4KCgpJIG1lYW4gaWYgd2UgdXNlIHZxIG11dGV4LCBpdCBtZWFucyB0
aGUgY3JpdGljYWwgc2VjdGlvbiB3YXMgaW5jcmVhc2VkIAphbmQgd2UgbmVlZCB0byBkZWFsIHdp
dGggc3dhcHBpbmcgdGhlbi4KCgo+Cj4+IEFjdHVhbGx5LCB0aGUgY3JpdGljYWwgc2VjdGlvbiBz
aG91bGQgYmUgcmF0aGVyIHNtYWxsLCBlLmcKPj4ganVzdCBpbnNpZGUgbWVtb3J5IGFjY2Vzc29y
cy4KPiBBbHNvIHRydWUuCj4KPj4gSSB3b25kZXIgd2hldGhlciBvciBub3QganVzdCBkbyBzeW5j
aHJvbml6ZSBvdXIgc2VsZiBsaWtlOgo+Pgo+PiBzdGF0aWMgdm9pZCBpbmxpbmUgdmhvc3RfaW5j
X3ZxX3JlZihzdHJ1Y3Qgdmhvc3RfdmlydHF1ZXVlICp2cSkKPj4gewo+PiAgwqDCoMKgwqDCoMKg
wqAgaW50IHJlZiA9IFJFQURfT05DRSh2cS0+cmVmKTsKPj4KPj4gIMKgwqDCoMKgwqDCoMKgIFdS
SVRFX09OQ0UodnEtPnJlZiwgcmVmICsgMSk7Cj4+IHNtcF9ybWIoKTsKPj4gfQo+Pgo+PiBzdGF0
aWMgdm9pZCBpbmxpbmUgdmhvc3RfZGVjX3ZxX3JlZihzdHJ1Y3Qgdmhvc3RfdmlydHF1ZXVlICp2
cSkKPj4gewo+PiAgwqDCoMKgwqDCoMKgwqAgaW50IHJlZiA9IFJFQURfT05DRSh2cS0+cmVmKTsK
Pj4KPj4gc21wX3dtYigpOwo+PiAgwqDCoMKgwqDCoMKgwqAgV1JJVEVfT05DRSh2cS0+cmVmLCBy
ZWYgLSAxKTsKPj4gfQo+Pgo+PiBzdGF0aWMgdm9pZCBpbmxpbmUgdmhvc3Rfd2FpdF9mb3JfcmVm
KHN0cnVjdCB2aG9zdF92aXJ0cXVldWUgKnZxKQo+PiB7Cj4+ICDCoMKgwqDCoMKgwqDCoCB3aGls
ZSAoUkVBRF9PTkNFKHZxLT5yZWYpKTsKPj4gbWIoKTsKPj4gfQo+IExvb2tzIGdvb2QgYnV0IEkn
ZCBsaWtlIHRvIHRoaW5rIG9mIGEgc3RyYXRlZ3kvZXhpc3RpbmcgbG9jayB0aGF0IGxldCB1cwo+
IGJsb2NrIHByb3Blcmx5IGFzIG9wcG9zZWQgdG8gc3Bpbm5pbmcsIHRoYXQgd291bGQgYmUgbW9y
ZSBmcmllbmRseSB0bwo+IGUuZy4gdGhlIHJlYWx0aW1lIHBhdGNoLgoKCkRvZXMgaXQgbWFrZSBz
ZW5zZSB0byBkaXNhYmxlIHByZWVtcHRpb24gaW4gdGhlIGNyaXRpY2FsIHNlY3Rpb24/IFRoZW4g
CndlIGRvbid0IG5lZWQgdG8gYmxvY2sgYW5kIHdlIGhhdmUgYSBkZXRlcm1pbmlzdGljIHRpbWUg
c3BlbnQgb24gbWVtb3J5IAphY2Nzc29ycz8KCgo+Cj4+IE9yIHVzaW5nIHNtcF9sb2FkX2FjcXVp
cmUoKS9zbXBfc3RvcmVfcmVsZWFzZSgpIGluc3RlYWQ/Cj4+Cj4+IFRoYW5rcwo+IFRoZXNlIGFy
ZSBjaGVhcGVyIG9uIHg4NiwgeWVzLgoKCldpbGwgdXNlIHRoaXMuCgpUaGFua3MKCgo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
