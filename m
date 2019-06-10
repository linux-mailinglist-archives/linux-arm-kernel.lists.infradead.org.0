Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948FB3ADC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 05:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q+V8OOkAi8A7G+lNeLeFhMM3kCCgXQ4CXN8DiFB8kBM=; b=Ry7weBIn5QUqxxC/w9fC3haWc
	nTtXWMz1QK58sCQQJe/kCjKXAZ3TpFqd/WuSjYbg/7IKu4ZOXhU2U4sE7bqCSdr8h6D3y7l0LF4QI
	5oDX+1FKwiMlxUULfnjLGYpV+Pt3fQp6509tqMsd5nYqxs6ePgJPyv9BMgyQCWktlDPLXF540kv5y
	8lPnWU5U3kLnOIuGCxWDAejL/ihPKSDD0Rovw++bKu3uNRR6PQBjwnV8TrxCrg91+FeeOuIVGJDeG
	WfL816lx+dqhm7xlirp6DUgkpRCvNC71kG57hzyogjR9hj23wWLiugWrvW81a9/mLFK6+aMh4r7Oo
	BlrmrYsoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haBL2-0000Jx-AD; Mon, 10 Jun 2019 03:51:16 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haBKo-0000Ix-Cu
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 03:51:03 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D9A5D3082B15;
 Mon, 10 Jun 2019 03:50:57 +0000 (UTC)
Received: from [10.72.12.206] (ovpn-12-206.pek2.redhat.com [10.72.12.206])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1AB5660BEC;
 Mon, 10 Jun 2019 03:50:46 +0000 (UTC)
Subject: Re: [PATCH net-next 0/6] vhost: accelerate metadata access
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190524081218.2502-1-jasowang@redhat.com>
 <20190605162631-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <c233324c-cb66-c0ab-45c4-6e6e0499bb22@redhat.com>
Date: Mon, 10 Jun 2019 11:50:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190605162631-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Mon, 10 Jun 2019 03:50:58 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_205102_453853_BD447ED6 
X-CRM114-Status: GOOD (  13.11  )
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
Cc: hch@infradead.org, linux-parisc@vger.kernel.org, kvm@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, peterx@redhat.com,
 virtualization@lists.linux-foundation.org,
 James.Bottomley@hansenpartnership.com, linux-mm@kvack.org, jglisse@redhat.com,
 jrdr.linux@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, christophe.de.dinechin@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNi82IOS4iuWNiDQ6MjcsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPiBPbiBG
cmksIE1heSAyNCwgMjAxOSBhdCAwNDoxMjoxMkFNIC0wNDAwLCBKYXNvbiBXYW5nIHdyb3RlOgo+
PiBIaToKPj4KPj4gVGhpcyBzZXJpZXMgdHJpZXMgdG8gYWNjZXNzIHZpcnRxdWV1ZSBtZXRhZGF0
YSB0aHJvdWdoIGtlcm5lbCB2aXJ0dWFsCj4+IGFkZHJlc3MgaW5zdGVhZCBvZiBjb3B5X3VzZXIo
KSBmcmllbmRzIHNpbmNlIHRoZXkgaGFkIHRvbyBtdWNoCj4+IG92ZXJoZWFkcyBsaWtlIGNoZWNr
cywgc3BlYyBiYXJyaWVycyBvciBldmVuIGhhcmR3YXJlIGZlYXR1cmUKPj4gdG9nZ2xpbmcgbGlr
ZSBTTUFQLiBUaGlzIGlzIGRvbmUgdGhyb3VnaCBzZXR1cCBrZXJuZWwgYWRkcmVzcyB0aHJvdWdo
Cj4+IGRpcmVjdCBtYXBwaW5nIGFuZCBjby1vcHJlYXRlIFZNIG1hbmFnZW1lbnQgd2l0aCBNTVUg
bm90aWZpZXJzLgo+Pgo+PiBUZXN0IHNob3dzIGFib3V0IDIzJSBpbXByb3ZlbWVudCBvbiBUWCBQ
UFMuIFRDUF9TVFJFQU0gZG9lc24ndCBzZWUKPj4gb2J2aW91cyBpbXByb3ZlbWVudC4KPj4KPj4g
VGhhbmtzCj4gVGhhbmtzIHRoaXMgaXMgcXVldWVkIGZvciBuZXh0Lgo+Cj4gRGlkIHlvdSB3YW50
IHRvIHJlYmFzZSBhbmQgcmVwb3N0IHBhY2tlZCByaW5nIHN1cHBvcnQgb24gdG9wPwo+IElJVUMg
aXQncyBvbiBwYXIgd2l0aCBzcGxpdCByaW5nIHdpdGggdGhlc2UgcGF0Y2hlcy4KPgo+CgpZZXMs
IGl0J3Mgb24gdGhlIHdheS4KClRoYW5rcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
