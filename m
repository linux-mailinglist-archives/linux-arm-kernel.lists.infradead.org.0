Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE63A74416
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 05:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5q+NLxFMjFmf52kg47L2aI607QwXDCupNDJshUDsyfA=; b=J3VSO6/AyG5V8T2NbHoYKnieI
	RKTiehaPs/78P7+apyl2K/oeS8uaxnbGMYFPyZ4tOiU/t6zc53jYuTg2u7Wlr3sK75HP3NEye45oW
	2juB9eFj2XZNUTNYPtivbXX/hIN3guifyL/+AxHemIO7Idkh2DNUjtRKldq5niVEckncKNZ+EclxT
	MeeEabx9dfsjb9mR6k+7DqUNzzkrV8Rb8zYZZHXqWwiDI5LtjDOVUHLtvZRVWkniBnPBaeU0vAcE2
	Kfk14XpcrcEtZ79lCmCNhe4w0oTwFVWtAP21MzySArC3LGkoaZ/ATKN1XvLk6DuDuF0TYRozZmNqq
	CnvqcKlDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqUgx-0002xU-O8; Thu, 25 Jul 2019 03:45:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqUgk-0001lY-4b
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 03:45:08 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E14BF30C62A0;
 Thu, 25 Jul 2019 03:45:00 +0000 (UTC)
Received: from [10.72.12.18] (ovpn-12-18.pek2.redhat.com [10.72.12.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 40D9B60603;
 Thu, 25 Jul 2019 03:44:42 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190723010156-mutt-send-email-mst@kernel.org>
 <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
 <20190723032800-mutt-send-email-mst@kernel.org>
 <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
 <20190723062221-mutt-send-email-mst@kernel.org>
 <9baa4214-67fd-7ad2-cbad-aadf90bbfc20@redhat.com>
 <20190723110219-mutt-send-email-mst@kernel.org>
 <e0c91b89-d1e8-9831-00fe-23fe92d79fa2@redhat.com>
 <20190724040238-mutt-send-email-mst@kernel.org>
 <3dfa2269-60ba-7dd8-99af-5aef8552bd98@redhat.com>
 <20190724142533-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <d786141f-9145-788d-6a10-6fa673dd584c@redhat.com>
Date: Thu, 25 Jul 2019 11:44:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724142533-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 25 Jul 2019 03:45:01 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_204506_233339_0D70580A 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8yNSDkuIrljYgyOjI1LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
V2VkLCBKdWwgMjQsIDIwMTkgYXQgMDY6MDg6MDVQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzI0IOS4i+WNiDQ6MDUsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
IE9uIFdlZCwgSnVsIDI0LCAyMDE5IGF0IDEwOjE3OjE0QU0gKzA4MDAsIEphc29uIFdhbmcgd3Jv
dGU6Cj4+Pj4gT24gMjAxOS83LzIzIOS4i+WNiDExOjAyLCBNaWNoYWVsIFMuIFRzaXJraW4gd3Jv
dGU6Cj4+Pj4+IE9uIFR1ZSwgSnVsIDIzLCAyMDE5IGF0IDA5OjM0OjI5UE0gKzA4MDAsIEphc29u
IFdhbmcgd3JvdGU6Cj4+Pj4+PiBPbiAyMDE5LzcvMjMg5LiL5Y2INjoyNywgTWljaGFlbCBTLiBU
c2lya2luIHdyb3RlOgo+Pj4+Pj4+PiBZZXMsIHNpbmNlIHRoZXJlIGNvdWxkIGJlIG11bHRpcGxl
IGNvLWN1cnJlbnQgaW52YWxpZGF0aW9uIHJlcXVlc3RzLiBXZSBuZWVkCj4+Pj4+Pj4+IGNvdW50
IHRoZW0gdG8gbWFrZSBzdXJlIHdlIGRvbid0IHBpbiB3cm9uZyBwYWdlcy4KPj4+Pj4+Pj4KPj4+
Pj4+Pj4KPj4+Pj4+Pj4+IEkgYWxzbyB3b25kZXIgYWJvdXQgb3JkZXJpbmcuIGt2bSBoYXMgdGhp
czoKPj4+Pj4+Pj4+ICAgICAgICAgICAgIC8qCj4+Pj4+Pj4+PiAgICAgICAgICAgICAgICogVXNl
ZCB0byBjaGVjayBmb3IgaW52YWxpZGF0aW9ucyBpbiBwcm9ncmVzcywgb2YgdGhlIHBmbiB0aGF0
IGlzCj4+Pj4+Pj4+PiAgICAgICAgICAgICAgICogcmV0dXJuZWQgYnkgcGZuX3RvX3Bmbl9wcm90
IGJlbG93Lgo+Pj4+Pj4+Pj4gICAgICAgICAgICAgICAqLwo+Pj4+Pj4+Pj4gICAgICAgICAgICAg
IG1tdV9zZXEgPSBrdm0tPm1tdV9ub3RpZmllcl9zZXE7Cj4+Pj4+Pj4+PiAgICAgICAgICAgICAg
LyoKPj4+Pj4+Pj4+ICAgICAgICAgICAgICAgKiBFbnN1cmUgdGhlIHJlYWQgb2YgbW11X25vdGlm
aWVyX3NlcSBpc24ndCByZW9yZGVyZWQgd2l0aCBQVEUgcmVhZHMgaW4KPj4+Pj4+Pj4+ICAgICAg
ICAgICAgICAgKiBnZm5fdG9fcGZuX3Byb3QoKSAod2hpY2ggY2FsbHMgZ2V0X3VzZXJfcGFnZXMo
KSksIHNvIHRoYXQgd2UgZG9uJ3QKPj4+Pj4+Pj4+ICAgICAgICAgICAgICAgKiByaXNrIHRoZSBw
YWdlIHdlIGdldCBhIHJlZmVyZW5jZSB0byBnZXR0aW5nIHVubWFwcGVkIGJlZm9yZSB3ZSBoYXZl
IGEKPj4+Pj4+Pj4+ICAgICAgICAgICAgICAgKiBjaGFuY2UgdG8gZ3JhYiB0aGUgbW11X2xvY2sg
d2l0aG91dCBtbXVfbm90aWZpZXJfcmV0cnkoKSBub3RpY2luZy4KPj4+Pj4+Pj4+ICAgICAgICAg
ICAgICAgKgo+Pj4+Pj4+Pj4gICAgICAgICAgICAgICAqIFRoaXMgc21wX3JtYigpIHBhaXJzIHdp
dGggdGhlIGVmZmVjdGl2ZSBzbXBfd21iKCkgb2YgdGhlIGNvbWJpbmF0aW9uCj4+Pj4+Pj4+PiAg
ICAgICAgICAgICAgICogb2YgdGhlIHB0ZV91bm1hcF91bmxvY2soKSBhZnRlciB0aGUgUFRFIGlz
IHphcHBlZCwgYW5kIHRoZQo+Pj4+Pj4+Pj4gICAgICAgICAgICAgICAqIHNwaW5fbG9jaygpIGlu
IGt2bV9tbXVfbm90aWZpZXJfaW52YWxpZGF0ZV88cGFnZXxyYW5nZV9lbmQ+KCkgYmVmb3JlCj4+
Pj4+Pj4+PiAgICAgICAgICAgICAgICogbW11X25vdGlmaWVyX3NlcSBpcyBpbmNyZW1lbnRlZC4K
Pj4+Pj4+Pj4+ICAgICAgICAgICAgICAgKi8KPj4+Pj4+Pj4+ICAgICAgICAgICAgICBzbXBfcm1i
KCk7Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gZG9lcyB0aGlzIGFwcGx5IHRvIHVzPyBDYW4ndCB3ZSB1
c2UgYSBzZXFsb2NrIGluc3RlYWQgc28gd2UgZG8KPj4+Pj4+Pj4+IG5vdCBuZWVkIHRvIHdvcnJ5
Pwo+Pj4+Pj4+PiBJJ20gbm90IGZhbWlsaWFyIHdpdGgga3ZtIE1NVSBpbnRlcm5hbHMsIGJ1dCB3
ZSBkbyBldmVyeXRoaW5nIHVuZGVyIG9mCj4+Pj4+Pj4+IG1tdV9sb2NrLgo+Pj4+Pj4+Pgo+Pj4+
Pj4+PiBUaGFua3MKPj4+Pj4+PiBJIGRvbid0IHRoaW5rIHRoaXMgaGVscHMgYXQgYWxsLgo+Pj4+
Pj4+Cj4+Pj4+Pj4gVGhlcmUncyBubyBsb2NrIGJldHdlZW4gY2hlY2tpbmcgdGhlIGludmFsaWRh
dGUgY291bnRlciBhbmQKPj4+Pj4+PiBnZXQgdXNlciBwYWdlcyBmYXN0IHdpdGhpbiB2aG9zdF9t
YXBfcHJlZmV0Y2guIFNvIGl0J3MgcG9zc2libGUKPj4+Pj4+PiB0aGF0IGdldCB1c2VyIHBhZ2Vz
IGZhc3QgcmVhZHMgUFRFcyBzcGVjdWxhdGl2ZWx5IGJlZm9yZQo+Pj4+Pj4+IGludmFsaWRhdGUg
aXMgcmVhZC4KPj4+Pj4+Pgo+Pj4+Pj4+IC0tIAo+Pj4+Pj4gSW4gdmhvc3RfbWFwX3ByZWZldGNo
KCkgd2UgZG86Cj4+Pj4+Pgo+Pj4+Pj4gICAgwqDCoMKgwqDCoMKgwqAgc3Bpbl9sb2NrKCZ2cS0+
bW11X2xvY2spOwo+Pj4+Pj4KPj4+Pj4+ICAgIMKgIMKgIMKgIMKgIC4uLgo+Pj4+Pj4KPj4+Pj4+
ICAgIMKgwqDCoMKgwqDCoMKgIGVyciA9IC1FRkFVTFQ7Cj4+Pj4+PiAgICDCoMKgwqDCoMKgwqDC
oCBpZiAodnEtPmludmFsaWRhdGVfY291bnQpCj4+Pj4+PiAgICDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZ290byBlcnI7Cj4+Pj4+Pgo+Pj4+Pj4gICAgwqDCoMKgwqDCoMKgwqAgLi4u
Cj4+Pj4+Pgo+Pj4+Pj4gICAgwqDCoMKgwqDCoMKgwqAgbnBpbm5lZCA9IF9fZ2V0X3VzZXJfcGFn
ZXNfZmFzdCh1YWRkci0+dWFkZHIsIG5wYWdlcywKPj4+Pj4+ICAgIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB1YWRkci0+d3JpdGUsIHBhZ2VzKTsKPj4+Pj4+Cj4+Pj4+PiAgICDCoMKgwqDCoMKgwqDC
oCAuLi4KPj4+Pj4+Cj4+Pj4+PiAgICDCoMKgwqAgwqDCoMKgIHNwaW5fdW5sb2NrKCZ2cS0+bW11
X2xvY2spOwo+Pj4+Pj4KPj4+Pj4+IElzIHRoaXMgbm90IHN1ZmZpY2llbnQ/Cj4+Pj4+Pgo+Pj4+
Pj4gVGhhbmtzCj4+Pj4+IFNvIHdoYXQgb3JkZXJzIF9fZ2V0X3VzZXJfcGFnZXNfZmFzdCB3cnQg
aW52YWxpZGF0ZV9jb3VudCByZWFkPwo+Pj4+IFNvIGluIGludmFsaWRhdGVfZW5kKCkgY2FsbGJh
Y2sgd2UgaGF2ZToKPj4+Pgo+Pj4+IHNwaW5fbG9jaygmdnEtPm1tdV9sb2NrKTsKPj4+PiAtLXZx
LT5pbnZhbGlkYXRlX2NvdW50Owo+Pj4+ICAgwqDCoMKgwqDCoMKgwqAgc3Bpbl91bmxvY2soJnZx
LT5tbXVfbG9jayk7Cj4+Pj4KPj4+Pgo+Pj4+IFNvIGV2ZW4gUFRFIGlzIHJlYWQgc3BlY3VsYXRp
dmVseSBiZWZvcmUgcmVhZGluZyBpbnZhbGlkYXRlX2NvdW50IChvbmx5IGluCj4+Pj4gdGhlIGNh
c2Ugb2YgaW52YWxpZGF0ZV9jb3VudCBpcyB6ZXJvKS4gVGhlIHNwaW5sb2NrIGhhcyBndWFyYW50
ZWVkIHRoYXQgd2UKPj4+PiB3b24ndCByZWFkIGFueSBzdGFsZSBQVEVzLgo+Pj4+Cj4+Pj4gVGhh
bmtzCj4+PiBJJ20gc29ycnkgSSBqdXN0IGRvIG5vdCBnZXQgdGhlIGFyZ3VtZW50Lgo+Pj4gSWYg
eW91IHdhbnQgdG8gb3JkZXIgdHdvIHJlYWRzIHlvdSBuZWVkIGFuIHNtcF9ybWIKPj4+IG9yIHN0
cm9uZ2VyIGJldHdlZW4gdGhlbSBleGVjdXRlZCBvbiB0aGUgc2FtZSBDUFUuCj4+Pgo+Pj4gRXhl
Y3V0aW5nIGFueSBraW5kIG9mIGJhcnJpZXIgb24gYW5vdGhlciBDUFUKPj4+IHdpbGwgaGF2ZSBu
byBvcmRlcmluZyBlZmZlY3Qgb24gdGhlIDFzdCBvbmUuCj4+Pgo+Pj4KPj4+IFNvIGlmIENQVTEg
cnVucyB0aGUgcHJlZmV0Y2gsIGFuZCBDUFUyIHJ1bnMgaW52YWxpZGF0ZQo+Pj4gY2FsbGJhY2ss
IHJlYWQgb2YgaW52YWxpZGF0ZSBjb3VudGVyIG9uIENQVTEgY2FuIGJ5cGFzcwo+Pj4gcmVhZCBv
ZiBQVEUgb24gQ1BVMSB1bmxlc3MgdGhlcmUncyBhIGJhcnJpZXIKPj4+IGluIGJldHdlZW4sIGFu
ZCBub3RoaW5nIENQVTIgZG9lcyBjYW4gYWZmZWN0IHRoYXQgb3V0Y29tZS4KPj4+Cj4+Pgo+Pj4g
V2hhdCBkaWQgSSBtaXNzPwo+Pgo+PiBJdCBkb2Vzbid0IGhhcm0gaWYgUFRFIGlzIHJlYWQgYmVm
b3JlIGludmFsaWRhdGVfY291bnQsIHRoaXMgaXMgYmVjYXVzZToKPj4KPj4gMSkgVGhpcyBzcGVj
dWxhdGlvbiBpcyBzZXJpYWxpemVkIHdpdGggaW52YWxpZGF0ZV9yYW5nZV9lbmQoKSBiZWNhdXNl
IG9mIHRoZQo+PiBzcGlubG9jawo+Pgo+PiAyKSBUaGlzIHNwZWN1bGF0aW9uIGNhbiBvbmx5IG1h
a2UgZWZmZWN0IHdoZW4gd2UgcmVhZCBpbnZhbGlkYXRlX2NvdW50IGFzCj4+IHplcm8uCj4+Cj4+
IDMpIFRoaXMgbWVhbnMgdGhlIHNwZWN1bGF0aW9uIGlzIGRvbmUgYWZ0ZXIgdGhlIGxhc3QgaW52
YWxpZGF0ZV9yYW5nZV9lbmQoKQo+PiBhbmQgYmVjYXVzZSBvZiB0aGUgc3BpbmxvY2ssIHdoZW4g
d2UgZW50ZXIgdGhlIGNyaXRpY2FsIHNlY3Rpb24gb2Ygc3BpbmxvY2sKPj4gaW4gcHJlZmV0Y2gs
IHdlIGNhbiBub3Qgc2VlIGFueSBzdGFsZSBQVEUgdGhhdCB3YXMgdW5tYXBwZWQgYmVmb3JlLgo+
Pgo+PiBBbSBJIHdyb25nPwo+Pgo+PiBUaGFua3MKPiBPSyBJIHRoaW5rIHlvdSBhcmUgcmlnaHQu
IFNvcnJ5IGl0IHRvb2sgbWUgYSB3aGlsZSB0byBmaWd1cmUgb3V0LgoKCk5vIHByb2JsZW0uIFNv
IGRvIHlvdSB3YW50IG1lIHRvIHNlbmQgYSBWMiBvZiB0aGUgZml4ZXMgKGUuZyB3aXRoIHRoZSAK
Y29udmVyc2lvbiBmcm9tIHN5bmNocm9uaXplX3JjdSgpIHRvIGtmcmVlX3JjdSgpKS4gT3IgeW91
IHdhbnQgc29tZXRoaW5nIAplbHNlLiAoZS5nIHJldmVydCBvciBhIGNvbmZpZyBvcHRpb24pPwoK
VGhhbmtzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
