Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D280674F26
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+62Y1P9QeTUiNxZKXmjdqG3Swzst8vRqI6RIwOoId8c=; b=d+mU9NN+OcFd2hp0PBd1aGzyw
	id5Pyncy0glmhC8x2vNrQPfu4mwgmwAVIMgDD6vPqoRYGlfj5znnAYiaSEmrlIYIZIhK99X1FKM7c
	t9tmPSMHoWAqKR9fRoPdzkUhbrcwx1HbSOJCXWpn+iUkKFCEo1JMKb09IczI6F6kNvEDTQuy6gFck
	eFxdL5AIvD/9SgpHg6mDCMr+TIWPwfuqieSHrSgtYw2vi6MPk84JLgLcJEPE1Uav5KKtq9MlgdRIp
	zMbJFXK/wttVAnFDvlZLSy0jx8BLyGwv942WzhUv12hIjecw/Gh3nTYVUBoeZVnxJCa2W/8SxUYy2
	kCE/14pdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdhG-0000qK-2R; Thu, 25 Jul 2019 13:22:14 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdh2-0000oW-6Q
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:22:01 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3513730860BE;
 Thu, 25 Jul 2019 13:21:57 +0000 (UTC)
Received: from [10.72.12.18] (ovpn-12-18.pek2.redhat.com [10.72.12.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A59BD19723;
 Thu, 25 Jul 2019 13:21:44 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190723010019-mutt-send-email-mst@kernel.org>
 <b4696f2e-678a-bdb2-4b7c-fb4ce040ec2a@redhat.com>
 <20190723032024-mutt-send-email-mst@kernel.org>
 <1d14de4d-0133-1614-9f64-3ded381de04e@redhat.com>
 <20190723035725-mutt-send-email-mst@kernel.org>
 <3f4178f1-0d71-e032-0f1f-802428ceca59@redhat.com>
 <20190723051828-mutt-send-email-mst@kernel.org>
 <caff362a-e208-3468-3688-63e1d093a9d3@redhat.com>
 <20190725012149-mutt-send-email-mst@kernel.org>
 <55e8930c-2695-365f-a07b-3ad169654d28@redhat.com>
 <20190725042651-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
Date: Thu, 25 Jul 2019 21:21:22 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725042651-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 25 Jul 2019 13:21:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_062200_279434_2C1989A1 
X-CRM114-Status: GOOD (  24.77  )
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

Ck9uIDIwMTkvNy8yNSDkuIvljYg0OjI4LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
VGh1LCBKdWwgMjUsIDIwMTkgYXQgMDM6NDM6NDFQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzI1IOS4i+WNiDE6NTIsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
IE9uIFR1ZSwgSnVsIDIzLCAyMDE5IGF0IDA5OjMxOjM1UE0gKzA4MDAsIEphc29uIFdhbmcgd3Jv
dGU6Cj4+Pj4gT24gMjAxOS83LzIzIOS4i+WNiDU6MjYsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90
ZToKPj4+Pj4gT24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDQ6NDk6MDFQTSArMDgwMCwgSmFzb24g
V2FuZyB3cm90ZToKPj4+Pj4+IE9uIDIwMTkvNy8yMyDkuIvljYg0OjEwLCBNaWNoYWVsIFMuIFRz
aXJraW4gd3JvdGU6Cj4+Pj4+Pj4gT24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDM6NTM6MDZQTSAr
MDgwMCwgSmFzb24gV2FuZyB3cm90ZToKPj4+Pj4+Pj4gT24gMjAxOS83LzIzIOS4i+WNiDM6MjMs
IE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+Pj4+Pj4+Pj4gUmVhbGx5IGxldCdzIGp1c3Qg
dXNlIGtmcmVlX3JjdS4gSXQncyB3YXkgY2xlYW5lcjogZmlyZSBhbmQgZm9yZ2V0Lgo+Pj4+Pj4+
Pj4+IExvb2tzIG5vdCwgeW91IG5lZWQgcmF0ZSBsaW1pdCB0aGUgZmlyZSBhcyB5b3UndmUgZmln
dXJlZCBvdXQ/Cj4+Pj4+Pj4+PiBTZWUgdGhlIGRpc2N1c3Npb24gdGhhdCBmb2xsb3dlZC4gQmFz
aWNhbGx5IG5vLCBpdCdzIGdvb2QgZW5vdWdoCj4+Pj4+Pj4+PiBhbHJlYWR5IGFuZCBpcyBvbmx5
IGdvaW5nIHRvIGJlIGJldHRlci4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gQW5kIGluIGZhY3QsCj4+
Pj4+Pj4+Pj4gdGhlIHN5bmNocm9uaXphdGlvbiBpcyBub3QgZXZlbiBuZWVkZWQsIGRvZXMgaXQg
aGVscCBpZiBJIGxlYXZlIGEgY29tbWVudCB0bwo+Pj4+Pj4+Pj4+IGV4cGxhaW4/Cj4+Pj4+Pj4+
PiBMZXQncyB0cnkgdG8gZmlndXJlIGl0IG91dCBpbiB0aGUgbWFpbCBmaXJzdC4gSSdtIHByZXR0
eSBzdXJlIHRoZQo+Pj4+Pj4+Pj4gY3VycmVudCBsb2dpYyBpcyB3cm9uZy4KPj4+Pj4+Pj4gSGVy
ZSBpcyB3aGF0IHRoZSBjb2RlIHdoYXQgdG8gYWNoaWV2ZToKPj4+Pj4+Pj4KPj4+Pj4+Pj4gLSBU
aGUgbWFwIHdhcyBwcm90ZWN0ZWQgYnkgUkNVCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IC0gV3JpdGVycyBh
cmU6IE1NVSBub3RpZmllciBpbnZhbGlkYXRpb24gY2FsbGJhY2tzLCBmaWxlIG9wZXJhdGlvbnMg
KGlvY3Rscwo+Pj4+Pj4+PiBldGMpLCBtZXRhX3ByZWZldGNoIChkYXRhcGF0aCkKPj4+Pj4+Pj4K
Pj4+Pj4+Pj4gLSBSZWFkZXJzIGFyZTogbWVtb3J5IGFjY2Vzc29yCj4+Pj4+Pj4+Cj4+Pj4+Pj4+
IFdyaXRlciBhcmUgc3luY2hyb25pemVkIHRocm91Z2ggbW11X2xvY2suIFJDVSBpcyB1c2VkIHRv
IHN5bmNocm9uaXplZAo+Pj4+Pj4+PiBiZXR3ZWVuIHdyaXRlcnMgYW5kIHJlYWRlcnMuCj4+Pj4+
Pj4+Cj4+Pj4+Pj4+IFRoZSBzeW5jaHJvbml6ZV9yY3UoKSBpbiB2aG9zdF9yZXNldF92cV9tYXBz
KCkgd2FzIHVzZWQgdG8gc3luY2hyb25pemVkIGl0Cj4+Pj4+Pj4+IHdpdGggcmVhZGVycyAobWVt
b3J5IGFjY2Vzc29ycykgaW4gdGhlIHBhdGggb2YgZmlsZSBvcGVyYXRpb25zLiBCdXQgaW4gdGhp
cwo+Pj4+Pj4+PiBjYXNlLCB2cS0+bXV0ZXggd2FzIGFscmVhZHkgaGVsZCwgdGhpcyBtZWFucyBp
dCBoYXMgYmVlbiBzZXJpYWxpemVkIHdpdGgKPj4+Pj4+Pj4gbWVtb3J5IGFjY2Vzc29yLiBUaGF0
J3Mgd2h5IEkgdGhpbmsgaXQgY291bGQgYmUgcmVtb3ZlZCBzYWZlbHkuCj4+Pj4+Pj4+Cj4+Pj4+
Pj4+IEFueXRoaW5nIEkgbWlzcyBoZXJlPwo+Pj4+Pj4+Pgo+Pj4+Pj4+IFNvIGludmFsaWRhdGUg
Y2FsbGJhY2tzIG5lZWQgdG8gcmVzZXQgdGhlIG1hcCwgYW5kIHRoZXkgZG8KPj4+Pj4+PiBub3Qg
aGF2ZSB2cSBtdXRleC4gSG93IGNhbiB0aGV5IGRvIHRoaXMgYW5kIGZyZWUKPj4+Pj4+PiB0aGUg
bWFwIHNhZmVseT8gVGhleSBuZWVkIHN5bmNocm9uaXplX3JjdSBvciBrZnJlZV9yY3UgcmlnaHQ/
Cj4+Pj4+PiBJbnZhbGlkYXRpb24gY2FsbGJhY2tzIG5lZWQgYnV0IGZpbGUgb3BlcmF0aW9ucyAo
ZS5nIGlvY3RsKSBub3QuCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+PiBBbmQgSSB3b3JyeSBzb21ld2hh
dCB0aGF0IHN5bmNocm9uaXplX3JjdSBpbiBhbiBNTVUgbm90aWZpZXIKPj4+Pj4+PiBpcyBhIHBy
b2JsZW0sIE1NVSBub3RpZmllcnMgYXJlIHN1cHBvc2VkIHRvIGJlIHF1aWNrOgo+Pj4+Pj4gTG9v
a3Mgbm90LCBzaW5jZSBpdCBjYW4gYWxsb3cgdG8gYmUgYmxvY2tlZCBhbmQgbG90cyBvZiBkcml2
ZXIgZGVwZW5kcyBvbgo+Pj4+Pj4gdGhpcy4gKEUuZyBtbXVfbm90aWZpZXJfcmFuZ2VfYmxvY2th
YmxlKCkpLgo+Pj4+PiBSaWdodCwgdGhleSBjYW4gYmxvY2suIFNvIHdoeSBkb24ndCB3ZSB0YWtl
IGEgVlEgbXV0ZXggYW5kIGJlCj4+Pj4+IGRvbmUgd2l0aCBpdCB0aGVuPyBObyBSQ1UgdHJpY2tz
Lgo+Pj4+IFRoaXMgaXMgaG93IEkgd2FudCB0byBnbyB3aXRoIFJGQyBhbmQgVjEuIEJ1dCBJIGVu
ZCB1cCB3aXRoIGRlYWRsb2NrIGJldHdlZW4KPj4+PiB2cSBsb2NrcyBhbmQgc29tZSBNTSBpbnRl
cm5hbCBsb2Nrcy4gU28gSSBkZWNpZGUgdG8gdXNlIFJDVSB3aGljaCBpcyAxMDAlCj4+Pj4gdW5k
ZXIgdGhlIGNvbnRyb2wgb2Ygdmhvc3QuCj4+Pj4KPj4+PiBUaGFua3MKPj4+IEFuZCBJIGd1ZXNz
IHRoZSBkZWFkbG9jayBpcyBiZWNhdXNlIEdVUCBpcyB0YWtpbmcgbW11IGxvY2tzIHdoaWNoIGFy
ZQo+Pj4gdGFrZW4gb24gbW11IG5vdGlmaWVyIHBhdGgsIHJpZ2h0Pwo+Pgo+PiBZZXMsIGJ1dCBp
dCdzIG5vdCB0aGUgb25seSBsb2NrLiBJIGRvbid0IHJlbWVtYmVyIHRoZSBkZXRhaWxzLCBidXQg
SSBjYW4KPj4gY29uZmlybSBJIG1lZXQgaXNzdWVzIHdpdGggb25lIG9yIHR3byBvdGhlciBsb2Nr
cy4KPj4KPj4KPj4+ICAgICBIb3cgYWJvdXQgd2UgYWRkIGEgc2VxbG9jayBhbmQgdGFrZQo+Pj4g
dGhhdCBpbiBpbnZhbGlkYXRlIGNhbGxiYWNrcz8gIFdlIGNhbiB0aGVuIGRyb3AgdGhlIFZRIGxv
Y2sgYmVmb3JlIEdVUCwKPj4+IGFuZCB0YWtlIGl0IGFnYWluIGltbWVkaWF0ZWx5IGFmdGVyLgo+
Pj4KPj4+IHNvbWV0aGluZyBsaWtlCj4+PiAJaWYgKCF2cV9tZXRhX21hcHBlZCh2cSkpIHsKPj4+
IAkJdnFfbWV0YV9zZXR1cCgmdWFkZHJzKTsKPj4+IAkJbXV0ZXhfdW5sb2NrKHZxLT5tdXRleCkK
Pj4+IAkJdnFfbWV0YV9tYXAoJnVhZGRycyk7Cj4+Cj4+IFRoZSBwcm9ibGVtIGlzIHRoZSB2cSBh
ZGRyZXNzIGNvdWxkIGJlIGNoYW5nZWQgYXQgdGhpcyB0aW1lLgo+Pgo+Pgo+Pj4gCQltdXRleF9s
b2NrKHZxLT5tdXRleCkKPj4+Cj4+PiAJCS8qIHJlY2hlY2sgYm90aCBzb2NrLT5wcml2YXRlX2Rh
dGEgYW5kIHNlcWxvY2sgY291bnQuICovCj4+PiAJCWlmIGNoYW5nZWQgLSBiYWlsIG91dAo+Pj4g
CX0KPj4+Cj4+PiBBbmQgYWxzbyByZXF1aXJlcyB0aGF0IFZRIHVhZGRycyBpcyBkZWZpbmVkIGxp
a2UgdGhpczoKPj4+IC0gd3JpdGVycyBtdXN0IGhhdmUgYm90aCB2cSBtdXRleCBhbmQgZGV2IG11
dGV4Cj4+PiAtIHJlYWRlcnMgbXVzdCBoYXZlIGVpdGhlciB2cSBtdXRleCBvciBkZXYgbXV0ZXgK
Pj4+Cj4+Pgo+Pj4gVGhhdCdzIGEgYmlnIGNoYW5nZSB0aG91Z2guIEZvciBub3csIGhvdyBhYm91
dCBzd2l0Y2hpbmcgdG8gYSBwZXItdnEgU1JDVT8KPj4+IFRoYXQgaXMgb25seSBhIGxpdHRsZSBi
aXQgbW9yZSBleHBlbnNpdmUgdGhhbiBSQ1UsIGFuZCB3ZQo+Pj4gY2FuIHVzZSBzeW5jaHJvbml6
ZV9zcmN1X2V4cGVkaXRlZC4KPj4+Cj4+IENvbnNpZGVyIHdlIHN3aXRjaCB0byB1c2Uga2ZyZWVf
cmN1KCksIHdoYXQncyB0aGUgYWR2YW50YWdlIG9mIHBlci12cSBTUkNVPwo+Pgo+PiBUaGFua3MK
Pgo+IEkgdGhvdWdodCB3ZSBlc3RhYmxpc2hlZCB0aGF0IG5vdGlmaWVycyBtdXN0IHdhaXQgZm9y
Cj4gYWxsIHJlYWRlcnMgdG8gZmluaXNoIGJlZm9yZSB0aGV5IG1hcmsgcGFnZSBkaXJ0eSwgdG8K
PiBwcmV2ZW50IHBhZ2UgZnJvbSBiZWNvbWluZyBkaXJ0eSBhZnRlciBhZGRyZXNzCj4gaGFzIGJl
ZW4gaW52YWxpZGF0ZWQuCj4gUmlnaHQ/CgoKRXhhY3RseSwgYW5kIHRoYXQncyB0aGUgcmVhc29u
IGFjdHVhbGx5IEkgdXNlIHN5bmNocm9uaXplX3JjdSgpIHRoZXJlLgoKU28gdGhlIGNvbmNlcm4g
aXMgc3RpbGwgdGhlIHBvc3NpYmxlIHN5bmNocm9uaXplX2V4cGVkaXRlZCgpPyBDYW4gSSBkbyAK
dGhpcyBvbiB0aHJvdWdoIGFub3RoZXIgc2VyaWVzIG9uIHRvcCBvZiB0aGUgaW5jb21pbmcgVjI/
CgpUaGFua3MKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
