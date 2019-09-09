Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1323BAD1F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 04:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mSnEAF5aVkpAJxChfmLEB6pa3uGFMUIzOV9HKjja2IQ=; b=rGHLIk3lBmF3lBAL+mmP0APJV
	2m2+JozFbjTXZIIy9aV6rJafCWjs3Q5HIGLvBov1/g3TaPVkq3xnWkHCiCw/O175IgKmyzvhWUTJo
	axONqVNuasb7Y56+fghf1vwXxyuuclmAeXLP9zIEDL4c9p1+rZfGdkGrCYR/4HKy66EXQ8BOBgta3
	8tVZb65JdZ6UnACIBmKJMEJcblOG4c3Rzqwhkz2Z0Pu63087uRbiqHPWrKrlaSUbxPSA5F1eaFKTk
	WGvNsq8J0KKVHx9mZmFjddlk3n4lCCvFBKBsGRlPn0EXFimyiJ8vSMTc8XjLh4mJK2+CGLhu6AaQY
	MdCybpEVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i79SQ-0000ub-N4; Mon, 09 Sep 2019 02:31:10 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i79SB-0000uF-MU
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 02:30:56 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 278F160ACF;
 Mon,  9 Sep 2019 02:30:55 +0000 (UTC)
Received: from [10.72.12.61] (ovpn-12-61.pek2.redhat.com [10.72.12.61])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7B5E560166;
 Mon,  9 Sep 2019 02:30:24 +0000 (UTC)
Subject: Re: [PATCH 2/2] vhost: re-introducing metadata acceleration through
 kernel virtual address
From: Jason Wang <jasowang@redhat.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190905122736.19768-1-jasowang@redhat.com>
 <20190905122736.19768-3-jasowang@redhat.com>
 <20190908063618-mutt-send-email-mst@kernel.org>
 <1cb5aa8d-6213-5fce-5a77-fcada572c882@redhat.com>
Message-ID: <868bfaed-ede4-6da8-0247-af2a03ea121d@redhat.com>
Date: Mon, 9 Sep 2019 10:30:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1cb5aa8d-6213-5fce-5a77-fcada572c882@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 09 Sep 2019 02:30:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_193055_756954_7D2EE39D 
X-CRM114-Status: GOOD (  12.16  )
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
 linux-parisc@vger.kernel.org, kvm@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>, linux-mm@kvack.org,
 jglisse@redhat.com, jgg@mellanox.com, David Miller <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvOS85IOS4iuWNiDEwOjE4LCBKYXNvbiBXYW5nIHdyb3RlOgo+Pj4KPj4+IE9uIGEg
ZWxkZXIgQ1BVIFNhbmR5IEJyaWRnZSB3aXRob3V0IFNNQVAgc3VwcG9ydC4gVFggUFBTIGRvZXNu
J3Qgc2VlCj4+PiBhbnkgZGlmZmVyZW5jZS4KPj4gV2h5IGlzIG5vdCBLYWJ5IExha2Ugd2l0aCBT
TUFQIG9mZiB0aGUgc2FtZSBhcyBTYW5keSBCcmlkZ2U/Cj4KPgo+IEkgZG9uJ3Qga25vdywgSSBn
dWVzcyBpdCB3YXMgYmVjYXVzZSB0aGUgYXRvbWljIGlzIGwgCgoKU29ycnksIEkgbWVhbnQgYXRv
bWljIGNvc3RzIGxlc3MgZm9yIEthYnkgTGFrZS4KClRoYW5rcwoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
