Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D241784C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 07:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BnJXZXWse+bg/NK9qoBM7/GvmAXJhoTl/zP3bW1vjQk=; b=RueUPUj+lwD8AWVc99FEQXAeS
	fVJieTbHpxBXWaZvzrY/KEGgSXJw2E7JQSgNT9BaAdob2gwfJZ4pxtGwDVsGExL9DT+ojvJdqHFfL
	f1260uLkaibjARY41UJDSHB8/1G5VgZt8UTWrE9biWmLBOiGcaloCc2ybsP65UvKgwsfBlKvP3F/M
	RiMBNF6rqL2d15KMX8eF2Sd4dkt5VAuTiAT0S4UbN8mCWGJASb9CmgoPf/Dp4QnP4UhABJhgvH/eG
	Yg8R2531vc7xPyaXErRdwWSajmoiX11PNVNq8Lc54C1y8chAj5RHgj1vhtcUivzCWL1Z6o++Lj6uQ
	uw84QgdMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hryfQ-0008HK-7X; Mon, 29 Jul 2019 05:57:52 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrye3-0007VL-BD
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 05:56:29 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 78B46308FC47;
 Mon, 29 Jul 2019 05:56:26 +0000 (UTC)
Received: from [10.72.12.53] (ovpn-12-53.pek2.redhat.com [10.72.12.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7C62660C5F;
 Mon, 29 Jul 2019 05:56:10 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20190725042651-mutt-send-email-mst@kernel.org>
 <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
 <20190725092332-mutt-send-email-mst@kernel.org>
 <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
 <20190726074644-mutt-send-email-mst@kernel.org>
 <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
 <20190726082837-mutt-send-email-mst@kernel.org>
 <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
 <20190726094353-mutt-send-email-mst@kernel.org>
 <63754251-a39a-1e0e-952d-658102682094@redhat.com>
 <20190726150322.GB8695@ziepe.ca>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <e3850664-6c2e-689b-8a1f-4d3b8e03cbc7@redhat.com>
Date: Mon, 29 Jul 2019 13:56:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726150322.GB8695@ziepe.ca>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Mon, 29 Jul 2019 05:56:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_225627_477281_0E488971 
X-CRM114-Status: GOOD (  14.60  )
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
Cc: mhocko@suse.com, "Michael S. Tsirkin" <mst@redhat.com>,
 peterz@infradead.org, ldv@altlinux.org, james.bottomley@hansenpartnership.com,
 linux-mm@kvack.org, namit@vmware.com, mingo@kernel.org,
 elena.reshetova@intel.com, keescook@chromium.org, aarcange@redhat.com,
 davem@davemloft.net, hch@infradead.org, christian@brauner.io,
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

Ck9uIDIwMTkvNy8yNiDkuIvljYgxMTowMywgSmFzb24gR3VudGhvcnBlIHdyb3RlOgo+IE9uIEZy
aSwgSnVsIDI2LCAyMDE5IGF0IDEwOjAwOjIwUE0gKzA4MDAsIEphc29uIFdhbmcgd3JvdGU6Cj4+
IFRoZSBxdWVzdGlvbiBpcywgTU1VIG5vdGlmaWVyIGFyZSBhbGxvd2VkIHRvIGJlIGJsb2NrZWQg
b24KPj4gaW52YWxpZGF0ZV9yYW5nZV9zdGFydCgpIHdoaWNoIGNvdWxkIGJlIG11Y2ggc2xvd2Vy
IHRoYW4gc3luY2hyb25pemVfcmN1KCkKPj4gdG8gZmluaXNoLgo+Pgo+PiBMb29raW5nIGF0IGFt
ZGdwdV9tbl9pbnZhbGlkYXRlX3JhbmdlX3N0YXJ0X2dmeCgpIHdoaWNoIGNhbGxzCj4+IGFtZGdw
dV9tbl9pbnZhbGlkYXRlX25vZGUoKSB3aGljaCBkaWQ6Cj4+Cj4+ICDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgciA9IHJlc2VydmF0aW9uX29iamVjdF93YWl0X3RpbWVvdXRfcmN1KGJv
LT50Ym8ucmVzdiwKPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgdHJ1ZSwgZmFsc2UsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKPj4KPj4gLi4uCj4gVGhl
IGdlbmVyYWwgZ3VpZGFuY2UgaGFzIGJlZW4gdGhhdCBpbnZhbGlkYXRlX3N0YXJ0IHNob3VsZCBi
bG9jawo+IG1pbmltYWxseSwgaWYgYXQgYWxsLgo+Cj4gSSB3b3VsZCBzYXkgc3luY2hyb25pemVf
cmN1IGlzIG91dHNpZGUgdGhhdCBndWlkYW5jZS4KCgpZZXMsIEkgZ2V0IHRoaXMuCgoKPgo+IEJU
VywgYWx3YXlzIHJldHVybmluZyBFQUdBSU4gZm9yIG1tdV9ub3RpZmllcl9yYW5nZV9ibG9ja2Fi
bGUoKSBpcyBub3QKPiBnb29kIGVpdGhlciwgaXQgc2hvdWxkIGluc3RlYWQgb25seSByZXR1cm4g
RUFHQUlOIGlmIGFueQo+IHZob3N0X21hcF9yYW5nZV9vdmVybGFwKCkgaXMgdHJ1ZS4KCgpSaWdo
dCwgbGV0IG1lIG9wdGltaXplIHRoYXQuCgpUaGFua3MKCgo+Cj4gSmFzb24KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
