Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC1AAB868
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 14:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AiKjq5YTgw5ln7L3RumQhQDa8nhN4TYG7WQVx2Lc5+I=; b=seT+TVYhFUirqABdMMTZPFnJf
	kvc7M1Z0JAzSuyiO48mrAssNve/J9phUjUutl6ZUGXb9C/3sWh12eepK1nKGfECBo8JN2OXXXudNq
	KEmJlxRmk3Q0aQIxRG+hCiK4sO55Fg/0eUY2tW0MLQ3t4Ze29V+I/qWol75gQJtG919DeBF6FVWPq
	8fLgjrvBZTblsnoKyAalh8gWdVJnM6cWfTQoFDLYWkIZ5TwUjwrppGqg502RoY5P/kKMaIrwQzRrm
	3xi3U6kPAreiKYo87Q9kA8UaPg18hNbTFbX51Vzehd49ym4jIji0jcDuu9cCTHlAFbpD+c5w8GJ0x
	VT1bB/n8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6DiM-0000Ly-EJ; Fri, 06 Sep 2019 12:51:46 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6DiG-0000LD-Dm
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 12:51:41 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 383D38980E3;
 Fri,  6 Sep 2019 12:51:39 +0000 (UTC)
Received: from [10.72.12.95] (ovpn-12-95.pek2.redhat.com [10.72.12.95])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1D1A260605;
 Fri,  6 Sep 2019 12:51:30 +0000 (UTC)
Subject: Re: [PATCH 2/2] vhost: re-introducing metadata acceleration through
 kernel virtual address
To: Hillf Danton <hdanton@sina.com>
References: <20190905122736.19768-1-jasowang@redhat.com>
 <20190906032154.9376-1-hdanton@sina.com>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <cd2ed116-4b19-73b2-a3f0-4377cc0f2db3@redhat.com>
Date: Fri, 6 Sep 2019 20:51:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190906032154.9376-1-hdanton@sina.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Fri, 06 Sep 2019 12:51:39 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_055140_485355_C917587F 
X-CRM114-Status: GOOD (  14.43  )
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
Cc: aarcange@redhat.com, Christoph Hellwig <hch@infradead.org>,
 linux-parisc@vger.kernel.org, kvm@vger.kernel.org, mst@redhat.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>, linux-mm@kvack.org,
 jglisse@redhat.com, jgg@mellanox.com, David Miller <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvOS82IOS4iuWNiDExOjIxLCBIaWxsZiBEYW50b24gd3JvdGU6Cj4gT24gVGh1LCAg
NSBTZXAgMjAxOSAyMDoyNzozNiArMDgwMCBGcm9tOiAgIEphc29uIFdhbmcgPGphc293YW5nQHJl
ZGhhdC5jb20+Cj4+ICtzdGF0aWMgdm9pZCB2aG9zdF9zZXRfbWFwX2RpcnR5KHN0cnVjdCB2aG9z
dF92aXJ0cXVldWUgKnZxLAo+PiArCQkJCXN0cnVjdCB2aG9zdF9tYXAgKm1hcCwgaW50IGluZGV4
KQo+PiArewo+PiArCXN0cnVjdCB2aG9zdF91YWRkciAqdWFkZHIgPSAmdnEtPnVhZGRyc1tpbmRl
eF07Cj4+ICsJaW50IGk7Cj4+ICsKPj4gKwlpZiAodWFkZHItPndyaXRlKSB7Cj4+ICsJCWZvciAo
aSA9IDA7IGkgPCBtYXAtPm5wYWdlczsgaSsrKQo+PiArCQkJc2V0X3BhZ2VfZGlydHkobWFwLT5w
YWdlc1tpXSk7Cj4+ICsJfQo+IE5vdCBzdXJlIG5lZWQgdG8gc2V0IHBhZ2UgZGlydHkgdW5kZXIg
cGFnZSBsb2NrLgoKCkp1c3QgdG8gbWFrZSBzdXJlIEkgdW5kZXJzdGFuZCB0aGUgaXNzdWUuIERv
IHlvdSBtZWFuIHRoZXJlJ3Mgbm8gbmVlZCAKZm9yIHNldF9wYWdlX2RpcnR5KCkgaGVyZT8gSWYg
eWVzLCBpcyB0aGVyZSBhbnkgb3RoZXIgZnVuY3Rpb24gdGhhdCAKYWxyZWFkeSBkaWQgdGhpcz8K
ClRoYW5rcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
