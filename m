Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED1A72C16
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 12:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B9AAhm6T+Ub0RPq3ogRhL1yeXlVqoVnWOrT1N2Ey2QI=; b=Q4n30nx+Nd8hNOQbnv0Va+5hA
	Be3rDuGOxNCer7tuwO+5ip1NLRffaA2Krgh5wChk24K55gWELrer8nZuvistV9kLhvGgIX5rJX9Us
	gaYbaoxCndECLjADJxBj1ugI+FvBbVmjLQheDmUztsWg232rFizGsZFhYvrZIEr7J+eKi59kLcNVD
	ZdKXjdkGhupkbVA5BYJXtPLFcpoASF6SOJzem+IiUZvaHPPM1qXhdapDtFiE+dR1EU/xpynuY1ERM
	TYMYkorRPkQWpbH0GjsMJSuEhh5DJxlaMJ4KnF/03Q1xnP/pd3NrnyOA4XFu3w9i+3jrVU/mzyBeI
	Xy4N417aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqECg-0005Dh-9P; Wed, 24 Jul 2019 10:08:58 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqECB-0005Cu-DC
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 10:08:29 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 15AD230ADC87;
 Wed, 24 Jul 2019 10:08:26 +0000 (UTC)
Received: from [10.72.12.18] (ovpn-12-18.pek2.redhat.com [10.72.12.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7395F19C70;
 Wed, 24 Jul 2019 10:08:10 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190722035657-mutt-send-email-mst@kernel.org>
 <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
 <20190723010156-mutt-send-email-mst@kernel.org>
 <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
 <20190723032800-mutt-send-email-mst@kernel.org>
 <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
 <20190723062221-mutt-send-email-mst@kernel.org>
 <9baa4214-67fd-7ad2-cbad-aadf90bbfc20@redhat.com>
 <20190723110219-mutt-send-email-mst@kernel.org>
 <e0c91b89-d1e8-9831-00fe-23fe92d79fa2@redhat.com>
 <20190724040238-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <3dfa2269-60ba-7dd8-99af-5aef8552bd98@redhat.com>
Date: Wed, 24 Jul 2019 18:08:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724040238-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 24 Jul 2019 10:08:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_030827_545123_DAE15C41 
X-CRM114-Status: GOOD (  21.55  )
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

Ck9uIDIwMTkvNy8yNCDkuIvljYg0OjA1LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
V2VkLCBKdWwgMjQsIDIwMTkgYXQgMTA6MTc6MTRBTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzIzIOS4i+WNiDExOjAyLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4+
PiBPbiBUdWUsIEp1bCAyMywgMjAxOSBhdCAwOTozNDoyOVBNICswODAwLCBKYXNvbiBXYW5nIHdy
b3RlOgo+Pj4+IE9uIDIwMTkvNy8yMyDkuIvljYg2OjI3LCBNaWNoYWVsIFMuIFRzaXJraW4gd3Jv
dGU6Cj4+Pj4+PiBZZXMsIHNpbmNlIHRoZXJlIGNvdWxkIGJlIG11bHRpcGxlIGNvLWN1cnJlbnQg
aW52YWxpZGF0aW9uIHJlcXVlc3RzLiBXZSBuZWVkCj4+Pj4+PiBjb3VudCB0aGVtIHRvIG1ha2Ug
c3VyZSB3ZSBkb24ndCBwaW4gd3JvbmcgcGFnZXMuCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+PiBJIGFs
c28gd29uZGVyIGFib3V0IG9yZGVyaW5nLiBrdm0gaGFzIHRoaXM6Cj4+Pj4+Pj4gICAgICAgICAg
ICAvKgo+Pj4+Pj4+ICAgICAgICAgICAgICAqIFVzZWQgdG8gY2hlY2sgZm9yIGludmFsaWRhdGlv
bnMgaW4gcHJvZ3Jlc3MsIG9mIHRoZSBwZm4gdGhhdCBpcwo+Pj4+Pj4+ICAgICAgICAgICAgICAq
IHJldHVybmVkIGJ5IHBmbl90b19wZm5fcHJvdCBiZWxvdy4KPj4+Pj4+PiAgICAgICAgICAgICAg
Ki8KPj4+Pj4+PiAgICAgICAgICAgICBtbXVfc2VxID0ga3ZtLT5tbXVfbm90aWZpZXJfc2VxOwo+
Pj4+Pj4+ICAgICAgICAgICAgIC8qCj4+Pj4+Pj4gICAgICAgICAgICAgICogRW5zdXJlIHRoZSBy
ZWFkIG9mIG1tdV9ub3RpZmllcl9zZXEgaXNuJ3QgcmVvcmRlcmVkIHdpdGggUFRFIHJlYWRzIGlu
Cj4+Pj4+Pj4gICAgICAgICAgICAgICogZ2ZuX3RvX3Bmbl9wcm90KCkgKHdoaWNoIGNhbGxzIGdl
dF91c2VyX3BhZ2VzKCkpLCBzbyB0aGF0IHdlIGRvbid0Cj4+Pj4+Pj4gICAgICAgICAgICAgICog
cmlzayB0aGUgcGFnZSB3ZSBnZXQgYSByZWZlcmVuY2UgdG8gZ2V0dGluZyB1bm1hcHBlZCBiZWZv
cmUgd2UgaGF2ZSBhCj4+Pj4+Pj4gICAgICAgICAgICAgICogY2hhbmNlIHRvIGdyYWIgdGhlIG1t
dV9sb2NrIHdpdGhvdXQgbW11X25vdGlmaWVyX3JldHJ5KCkgbm90aWNpbmcuCj4+Pj4+Pj4gICAg
ICAgICAgICAgICoKPj4+Pj4+PiAgICAgICAgICAgICAgKiBUaGlzIHNtcF9ybWIoKSBwYWlycyB3
aXRoIHRoZSBlZmZlY3RpdmUgc21wX3dtYigpIG9mIHRoZSBjb21iaW5hdGlvbgo+Pj4+Pj4+ICAg
ICAgICAgICAgICAqIG9mIHRoZSBwdGVfdW5tYXBfdW5sb2NrKCkgYWZ0ZXIgdGhlIFBURSBpcyB6
YXBwZWQsIGFuZCB0aGUKPj4+Pj4+PiAgICAgICAgICAgICAgKiBzcGluX2xvY2soKSBpbiBrdm1f
bW11X25vdGlmaWVyX2ludmFsaWRhdGVfPHBhZ2V8cmFuZ2VfZW5kPigpIGJlZm9yZQo+Pj4+Pj4+
ICAgICAgICAgICAgICAqIG1tdV9ub3RpZmllcl9zZXEgaXMgaW5jcmVtZW50ZWQuCj4+Pj4+Pj4g
ICAgICAgICAgICAgICovCj4+Pj4+Pj4gICAgICAgICAgICAgc21wX3JtYigpOwo+Pj4+Pj4+Cj4+
Pj4+Pj4gZG9lcyB0aGlzIGFwcGx5IHRvIHVzPyBDYW4ndCB3ZSB1c2UgYSBzZXFsb2NrIGluc3Rl
YWQgc28gd2UgZG8KPj4+Pj4+PiBub3QgbmVlZCB0byB3b3JyeT8KPj4+Pj4+IEknbSBub3QgZmFt
aWxpYXIgd2l0aCBrdm0gTU1VIGludGVybmFscywgYnV0IHdlIGRvIGV2ZXJ5dGhpbmcgdW5kZXIg
b2YKPj4+Pj4+IG1tdV9sb2NrLgo+Pj4+Pj4KPj4+Pj4+IFRoYW5rcwo+Pj4+PiBJIGRvbid0IHRo
aW5rIHRoaXMgaGVscHMgYXQgYWxsLgo+Pj4+Pgo+Pj4+PiBUaGVyZSdzIG5vIGxvY2sgYmV0d2Vl
biBjaGVja2luZyB0aGUgaW52YWxpZGF0ZSBjb3VudGVyIGFuZAo+Pj4+PiBnZXQgdXNlciBwYWdl
cyBmYXN0IHdpdGhpbiB2aG9zdF9tYXBfcHJlZmV0Y2guIFNvIGl0J3MgcG9zc2libGUKPj4+Pj4g
dGhhdCBnZXQgdXNlciBwYWdlcyBmYXN0IHJlYWRzIFBURXMgc3BlY3VsYXRpdmVseSBiZWZvcmUK
Pj4+Pj4gaW52YWxpZGF0ZSBpcyByZWFkLgo+Pj4+Pgo+Pj4+PiAtLSAKPj4+PiBJbiB2aG9zdF9t
YXBfcHJlZmV0Y2goKSB3ZSBkbzoKPj4+Pgo+Pj4+ICAgwqDCoMKgwqDCoMKgwqAgc3Bpbl9sb2Nr
KCZ2cS0+bW11X2xvY2spOwo+Pj4+Cj4+Pj4gICDCoCDCoCDCoCDCoCAuLi4KPj4+Pgo+Pj4+ICAg
wqDCoMKgwqDCoMKgwqAgZXJyID0gLUVGQVVMVDsKPj4+PiAgIMKgwqDCoMKgwqDCoMKgIGlmICh2
cS0+aW52YWxpZGF0ZV9jb3VudCkKPj4+PiAgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBnb3RvIGVycjsKPj4+Pgo+Pj4+ICAgwqDCoMKgwqDCoMKgwqAgLi4uCj4+Pj4KPj4+PiAgIMKg
wqDCoMKgwqDCoMKgIG5waW5uZWQgPSBfX2dldF91c2VyX3BhZ2VzX2Zhc3QodWFkZHItPnVhZGRy
LCBucGFnZXMsCj4+Pj4gICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdWFkZHItPndyaXRlLCBwYWdl
cyk7Cj4+Pj4KPj4+PiAgIMKgwqDCoMKgwqDCoMKgIC4uLgo+Pj4+Cj4+Pj4gICDCoMKgwqAgwqDC
oMKgIHNwaW5fdW5sb2NrKCZ2cS0+bW11X2xvY2spOwo+Pj4+Cj4+Pj4gSXMgdGhpcyBub3Qgc3Vm
ZmljaWVudD8KPj4+Pgo+Pj4+IFRoYW5rcwo+Pj4gU28gd2hhdCBvcmRlcnMgX19nZXRfdXNlcl9w
YWdlc19mYXN0IHdydCBpbnZhbGlkYXRlX2NvdW50IHJlYWQ/Cj4+Cj4+IFNvIGluIGludmFsaWRh
dGVfZW5kKCkgY2FsbGJhY2sgd2UgaGF2ZToKPj4KPj4gc3Bpbl9sb2NrKCZ2cS0+bW11X2xvY2sp
Owo+PiAtLXZxLT5pbnZhbGlkYXRlX2NvdW50Owo+PiAgwqDCoMKgwqDCoMKgwqAgc3Bpbl91bmxv
Y2soJnZxLT5tbXVfbG9jayk7Cj4+Cj4+Cj4+IFNvIGV2ZW4gUFRFIGlzIHJlYWQgc3BlY3VsYXRp
dmVseSBiZWZvcmUgcmVhZGluZyBpbnZhbGlkYXRlX2NvdW50IChvbmx5IGluCj4+IHRoZSBjYXNl
IG9mIGludmFsaWRhdGVfY291bnQgaXMgemVybykuIFRoZSBzcGlubG9jayBoYXMgZ3VhcmFudGVl
ZCB0aGF0IHdlCj4+IHdvbid0IHJlYWQgYW55IHN0YWxlIFBURXMuCj4+Cj4+IFRoYW5rcwo+IEkn
bSBzb3JyeSBJIGp1c3QgZG8gbm90IGdldCB0aGUgYXJndW1lbnQuCj4gSWYgeW91IHdhbnQgdG8g
b3JkZXIgdHdvIHJlYWRzIHlvdSBuZWVkIGFuIHNtcF9ybWIKPiBvciBzdHJvbmdlciBiZXR3ZWVu
IHRoZW0gZXhlY3V0ZWQgb24gdGhlIHNhbWUgQ1BVLgo+Cj4gRXhlY3V0aW5nIGFueSBraW5kIG9m
IGJhcnJpZXIgb24gYW5vdGhlciBDUFUKPiB3aWxsIGhhdmUgbm8gb3JkZXJpbmcgZWZmZWN0IG9u
IHRoZSAxc3Qgb25lLgo+Cj4KPiBTbyBpZiBDUFUxIHJ1bnMgdGhlIHByZWZldGNoLCBhbmQgQ1BV
MiBydW5zIGludmFsaWRhdGUKPiBjYWxsYmFjaywgcmVhZCBvZiBpbnZhbGlkYXRlIGNvdW50ZXIg
b24gQ1BVMSBjYW4gYnlwYXNzCj4gcmVhZCBvZiBQVEUgb24gQ1BVMSB1bmxlc3MgdGhlcmUncyBh
IGJhcnJpZXIKPiBpbiBiZXR3ZWVuLCBhbmQgbm90aGluZyBDUFUyIGRvZXMgY2FuIGFmZmVjdCB0
aGF0IG91dGNvbWUuCj4KPgo+IFdoYXQgZGlkIEkgbWlzcz8KCgpJdCBkb2Vzbid0IGhhcm0gaWYg
UFRFIGlzIHJlYWQgYmVmb3JlIGludmFsaWRhdGVfY291bnQsIHRoaXMgaXMgYmVjYXVzZToKCjEp
IFRoaXMgc3BlY3VsYXRpb24gaXMgc2VyaWFsaXplZCB3aXRoIGludmFsaWRhdGVfcmFuZ2VfZW5k
KCkgYmVjYXVzZSBvZiAKdGhlIHNwaW5sb2NrCgoyKSBUaGlzIHNwZWN1bGF0aW9uIGNhbiBvbmx5
IG1ha2UgZWZmZWN0IHdoZW4gd2UgcmVhZCBpbnZhbGlkYXRlX2NvdW50IAphcyB6ZXJvLgoKMykg
VGhpcyBtZWFucyB0aGUgc3BlY3VsYXRpb24gaXMgZG9uZSBhZnRlciB0aGUgbGFzdCAKaW52YWxp
ZGF0ZV9yYW5nZV9lbmQoKSBhbmQgYmVjYXVzZSBvZiB0aGUgc3BpbmxvY2ssIHdoZW4gd2UgZW50
ZXIgdGhlIApjcml0aWNhbCBzZWN0aW9uIG9mIHNwaW5sb2NrIGluIHByZWZldGNoLCB3ZSBjYW4g
bm90IHNlZSBhbnkgc3RhbGUgUFRFIAp0aGF0IHdhcyB1bm1hcHBlZCBiZWZvcmUuCgpBbSBJIHdy
b25nPwoKVGhhbmtzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
