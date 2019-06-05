Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ED936650
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 23:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKRw+eu4gY7VXbIdz5iqhEg1SyOBFi77nHEMzISkyaU=; b=odldu3Uo2719FN
	YVLvVEP9fiDtYkGqELKkCmGxlDjQD2WESmczQgRxVEsKoSu8wh3MJ4zvNIe+4sD8L6M6ACKukr1yp
	hVYAIfWXCX98mbbxT/Js1CWxlGVypul/JrQRUC+HT/6gW6mEvXcCCHCOujVulAEGwlSV0Bn17eF3t
	1h7Wv+GZOqTgFP0Ti5U/kLZHMG/0YDayUrzebwM0E2eh7tLnAXbA83KHaHJgHb3bBAKVjNWZxL+K4
	sCcNl0fvqdZTbzkLP48a3mRyPB03+i3abGaY3bS9DTC4mqp2CPYFMC1lJoyAFNBh1+z2SKl/u6PY3
	4BSA7l6GpNLGb2utsRjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYd97-0002Au-QO; Wed, 05 Jun 2019 21:08:33 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYd90-0002AP-9z
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 21:08:27 +0000
X-Originating-IP: 93.29.109.196
Received: from collins (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 9B30F40003;
 Wed,  5 Jun 2019 21:08:07 +0000 (UTC)
Message-ID: <5c2217a4e80eaaa6a8eefd8752ce9a86933d0a80.camel@bootlin.com>
Subject: Re: [PATCH 5/7] media: cedrus: Don't set chroma size for scale &
 rotation
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>, maxime.ripard@bootlin.com
Date: Wed, 05 Jun 2019 23:08:07 +0200
In-Reply-To: <20190530211516.1891-6-jernej.skrabec@siol.net>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-6-jernej.skrabec@siol.net>
User-Agent: Evolution 3.32.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_140826_501123_96A4A454 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpMZSBqZXVkaSAzMCBtYWkgMjAxOSDDoCAyMzoxNSArMDIwMCwgSmVybmVqIFNrcmFiZWMg
YSDDqWNyaXQgOgo+IFNjYWxlIGFuZCByb3RhdGlvbiBhcmUgY3VycmVudGx5IG5vdCBpbXBsZW1l
bnRlZCwgc28gaXQgbWFrZXMgbm8gc2Vuc2UgdG8KPiBzZXQgY2hyb21hIHNpemUgZm9yIGl0Lgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5l
dD4KCkFja2VkLWJ5OiBQYXVsIEtvY2lhbGtvd3NraSA8cGF1bC5rb2NpYWxrb3dza2lAYm9vdGxp
bi5jb20+CkNoZWVycywKClBhdWwKCj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54
aS9jZWRydXMvY2VkcnVzX2h3LmMgfCAzIC0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1
cy9jZWRydXNfaHcuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVz
X2h3LmMKPiBpbmRleCA5YzU4MTlkZWYxODYuLjlkZTIwYWU0NzkxNiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19ody5jCj4gKysrIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaHcuYwo+IEBAIC03OSw5ICs3
OSw2IEBAIHZvaWQgY2VkcnVzX2RzdF9mb3JtYXRfc2V0KHN0cnVjdCBjZWRydXNfZGV2ICpkZXYs
Cj4gIAkJcmVnID0gVkVfUFJJTUFSWV9PVVRfRk1UX05WMTI7Cj4gIAkJY2VkcnVzX3dyaXRlKGRl
diwgVkVfUFJJTUFSWV9PVVRfRk1ULCByZWcpOwo+ICAKPiAtCQlyZWcgPSBWRV9DSFJPTUFfQlVG
X0xFTl9TRFJUKGNocm9tYV9zaXplIC8gMik7Cj4gLQkJY2VkcnVzX3dyaXRlKGRldiwgVkVfQ0hS
T01BX0JVRl9MRU4sIHJlZyk7Cj4gLQo+ICAJCXJlZyA9IGNocm9tYV9zaXplIC8gMjsKPiAgCQlj
ZWRydXNfd3JpdGUoZGV2LCBWRV9QUklNQVJZX0NIUk9NQV9CVUZfTEVOLCByZWcpOwo+ICAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
