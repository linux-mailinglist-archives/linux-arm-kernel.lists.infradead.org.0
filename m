Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D665171954
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YPeOuZSnyry43jc9qGoDhrZV6OCxOsfeHOIA38uhYdU=; b=Foz4+3iqmZLW1ouVn6fowZJko
	8Zxg/hv0Jk0cboK7Q4+3q1Kwu7mXKBNFE5bh1oljrmR3fQK3dYyjK/zjiGbHau3MMMW6sBGQHNUxL
	wEALlMqdzC7lbgKqXZmdRWNIHDDlTU4xJ3VSxvnuJURi6kSmiHk8/17Do1M5lXf85xAyJgSpPrqPV
	GUf75OSPgag4Er9Gcg55vj+wMw880TzDFFfQWiKrhU89mzBH6y+WnQRvgcZ82I579MMt+Rbvf+1xM
	JuYJLi7XQYfkQCTu7CT7SSybfGMqeGmtVR5pm/NvtNHqVDLtR9eNGRGSOpgvB9BLNUaSv1nKtxcPZ
	ZZJqkuwxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuwO-0001qE-Cx; Tue, 23 Jul 2019 13:34:52 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuwA-0001pp-Kj
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:34:39 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E9D3785365;
 Tue, 23 Jul 2019 13:34:37 +0000 (UTC)
Received: from [10.72.12.26] (ovpn-12-26.pek2.redhat.com [10.72.12.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4DB5A1001B29;
 Tue, 23 Jul 2019 13:34:24 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
 <20190722035657-mutt-send-email-mst@kernel.org>
 <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
 <20190723010156-mutt-send-email-mst@kernel.org>
 <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
 <20190723032800-mutt-send-email-mst@kernel.org>
 <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
 <20190723062221-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <9baa4214-67fd-7ad2-cbad-aadf90bbfc20@redhat.com>
Date: Tue, 23 Jul 2019 21:34:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723062221-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 23 Jul 2019 13:34:38 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063438_713611_545F870C 
X-CRM114-Status: GOOD (  15.54  )
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

Ck9uIDIwMTkvNy8yMyDkuIvljYg2OjI3LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4+IFll
cywgc2luY2UgdGhlcmUgY291bGQgYmUgbXVsdGlwbGUgY28tY3VycmVudCBpbnZhbGlkYXRpb24g
cmVxdWVzdHMuIFdlIG5lZWQKPj4gY291bnQgdGhlbSB0byBtYWtlIHN1cmUgd2UgZG9uJ3QgcGlu
IHdyb25nIHBhZ2VzLgo+Pgo+Pgo+Pj4gSSBhbHNvIHdvbmRlciBhYm91dCBvcmRlcmluZy4ga3Zt
IGhhcyB0aGlzOgo+Pj4gICAgICAgICAgLyoKPj4+ICAgICAgICAgICAgKiBVc2VkIHRvIGNoZWNr
IGZvciBpbnZhbGlkYXRpb25zIGluIHByb2dyZXNzLCBvZiB0aGUgcGZuIHRoYXQgaXMKPj4+ICAg
ICAgICAgICAgKiByZXR1cm5lZCBieSBwZm5fdG9fcGZuX3Byb3QgYmVsb3cuCj4+PiAgICAgICAg
ICAgICovCj4+PiAgICAgICAgICAgbW11X3NlcSA9IGt2bS0+bW11X25vdGlmaWVyX3NlcTsKPj4+
ICAgICAgICAgICAvKgo+Pj4gICAgICAgICAgICAqIEVuc3VyZSB0aGUgcmVhZCBvZiBtbXVfbm90
aWZpZXJfc2VxIGlzbid0IHJlb3JkZXJlZCB3aXRoIFBURSByZWFkcyBpbgo+Pj4gICAgICAgICAg
ICAqIGdmbl90b19wZm5fcHJvdCgpICh3aGljaCBjYWxscyBnZXRfdXNlcl9wYWdlcygpKSwgc28g
dGhhdCB3ZSBkb24ndAo+Pj4gICAgICAgICAgICAqIHJpc2sgdGhlIHBhZ2Ugd2UgZ2V0IGEgcmVm
ZXJlbmNlIHRvIGdldHRpbmcgdW5tYXBwZWQgYmVmb3JlIHdlIGhhdmUgYQo+Pj4gICAgICAgICAg
ICAqIGNoYW5jZSB0byBncmFiIHRoZSBtbXVfbG9jayB3aXRob3V0IG1tdV9ub3RpZmllcl9yZXRy
eSgpIG5vdGljaW5nLgo+Pj4gICAgICAgICAgICAqCj4+PiAgICAgICAgICAgICogVGhpcyBzbXBf
cm1iKCkgcGFpcnMgd2l0aCB0aGUgZWZmZWN0aXZlIHNtcF93bWIoKSBvZiB0aGUgY29tYmluYXRp
b24KPj4+ICAgICAgICAgICAgKiBvZiB0aGUgcHRlX3VubWFwX3VubG9jaygpIGFmdGVyIHRoZSBQ
VEUgaXMgemFwcGVkLCBhbmQgdGhlCj4+PiAgICAgICAgICAgICogc3Bpbl9sb2NrKCkgaW4ga3Zt
X21tdV9ub3RpZmllcl9pbnZhbGlkYXRlXzxwYWdlfHJhbmdlX2VuZD4oKSBiZWZvcmUKPj4+ICAg
ICAgICAgICAgKiBtbXVfbm90aWZpZXJfc2VxIGlzIGluY3JlbWVudGVkLgo+Pj4gICAgICAgICAg
ICAqLwo+Pj4gICAgICAgICAgIHNtcF9ybWIoKTsKPj4+Cj4+PiBkb2VzIHRoaXMgYXBwbHkgdG8g
dXM/IENhbid0IHdlIHVzZSBhIHNlcWxvY2sgaW5zdGVhZCBzbyB3ZSBkbwo+Pj4gbm90IG5lZWQg
dG8gd29ycnk/Cj4+IEknbSBub3QgZmFtaWxpYXIgd2l0aCBrdm0gTU1VIGludGVybmFscywgYnV0
IHdlIGRvIGV2ZXJ5dGhpbmcgdW5kZXIgb2YKPj4gbW11X2xvY2suCj4+Cj4+IFRoYW5rcwo+IEkg
ZG9uJ3QgdGhpbmsgdGhpcyBoZWxwcyBhdCBhbGwuCj4KPiBUaGVyZSdzIG5vIGxvY2sgYmV0d2Vl
biBjaGVja2luZyB0aGUgaW52YWxpZGF0ZSBjb3VudGVyIGFuZAo+IGdldCB1c2VyIHBhZ2VzIGZh
c3Qgd2l0aGluIHZob3N0X21hcF9wcmVmZXRjaC4gU28gaXQncyBwb3NzaWJsZQo+IHRoYXQgZ2V0
IHVzZXIgcGFnZXMgZmFzdCByZWFkcyBQVEVzIHNwZWN1bGF0aXZlbHkgYmVmb3JlCj4gaW52YWxp
ZGF0ZSBpcyByZWFkLgo+Cj4gLS0gCgoKSW4gdmhvc3RfbWFwX3ByZWZldGNoKCkgd2UgZG86Cgog
wqDCoMKgwqDCoMKgwqAgc3Bpbl9sb2NrKCZ2cS0+bW11X2xvY2spOwoKIMKgIMKgIMKgIMKgIC4u
LgoKIMKgwqDCoMKgwqDCoMKgIGVyciA9IC1FRkFVTFQ7CiDCoMKgwqDCoMKgwqDCoCBpZiAodnEt
PmludmFsaWRhdGVfY291bnQpCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBl
cnI7CgogwqDCoMKgwqDCoMKgwqAgLi4uCgogwqDCoMKgwqDCoMKgwqAgbnBpbm5lZCA9IF9fZ2V0
X3VzZXJfcGFnZXNfZmFzdCh1YWRkci0+dWFkZHIsIG5wYWdlcywKIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB1YWRkci0+d3JpdGUsIHBhZ2VzKTsKCiDCoMKgwqDCoMKgwqDCoCAuLi4KCiDCoMKgwqAg
wqDCoMKgIHNwaW5fdW5sb2NrKCZ2cS0+bW11X2xvY2spOwoKSXMgdGhpcyBub3Qgc3VmZmljaWVu
dD8KClRoYW5rcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
