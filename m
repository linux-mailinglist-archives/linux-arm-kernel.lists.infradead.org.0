Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616651C7785
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 19:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59DFitRI6MrvZYtrszeI5TryUezdhjYbGjRWjqZeD9U=; b=u0Dg14CqOeg9mC
	22SYFKysq9a9JPzwMv8tpzJkbYsMFKPR0qopSNLkPVBgxJSmcdUFQK3hawfNo/pntAj/rMDvSb0xI
	K1RXB+lRqQwHjlh/XU5CFoqjS4MOw3YPwaYIdBzqsFOWLt/HSWVOn2H3WUdjwROKjYJggUb/3gTMQ
	mYWSgw02CG3Cp7JrYiI4qWoVhAOdwwpUK/s7l0IJxMqJ2bW3YoIR4hiX64qzCMNhXIkQRVrOYaBOQ
	3UL7jjm3eSG+157VRyyynzYIVF89wGTs6cgOAf75rJng7X3zjyuOY56RBqaLIJkQVWG2Szjn2plCD
	v/0/4E0/Rh+y2jKR2JNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNbM-0000Cp-G0; Wed, 06 May 2020 17:12:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWNbC-0000Ap-I6; Wed, 06 May 2020 17:12:47 +0000
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93D802080D;
 Wed,  6 May 2020 17:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588785159;
 bh=Ku4krUxbTherJ1BmYQGERwCK85kJqmidRIcKAfQ+LUs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Bl45Xx9kN8e0nI9GisLHFuEbadb0UmmV/OXVRIFerYwtfJVsE3S16UNt3cKepxZhh
 tvvGIeKyNDcMwKISdVoioIUzWXNYKID7abt59NSW0pBsVWd0xkOofIu2LboxsTI6F0
 WYE7TUQyrQj6ZMojfQt96oGAkpCCCRZXKrVj1tXM=
Date: Wed, 6 May 2020 10:12:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH 05/11] net: core: provide devm_register_netdev()
Message-ID: <20200506101236.25a13609@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAMRc=Mf0ipaeLKhHCZaq2YeZKzi=QBAse7bEz2hHxXN5OL=ptg@mail.gmail.com>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-6-brgl@bgdev.pl>
 <20200505103105.1c8b0ce3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMRc=Mf0ipaeLKhHCZaq2YeZKzi=QBAse7bEz2hHxXN5OL=ptg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_101246_621034_9221DB1F 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree <devicetree@vger.kernel.org>, Felix Fietkau <nbd@openwrt.org>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCA2IE1heSAyMDIwIDA4OjM5OjQ3ICswMjAwIEJhcnRvc3ogR29sYXN6ZXdza2kgd3Jv
dGU6Cj4gd3QuLCA1IG1haiAyMDIwIG8gMTk6MzEgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVs
Lm9yZz4gbmFwaXNhxYIoYSk6Cj4gPgo+ID4gT24gVHVlLCAgNSBNYXkgMjAyMCAxNjowMjoyNSAr
MDIwMCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOiAgCj4gPiA+IEZyb206IEJhcnRvc3ogR29s
YXN6ZXdza2kgPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+Cj4gPiA+Cj4gPiA+IFByb3ZpZGUg
ZGV2bV9yZWdpc3Rlcl9uZXRkZXYoKSAtIGEgZGV2aWNlIHJlc291cmNlIG1hbmFnZWQgdmFyaWFu
dAo+ID4gPiBvZiByZWdpc3Rlcl9uZXRkZXYoKS4gVGhpcyBuZXcgaGVscGVyIHdpbGwgb25seSB3
b3JrIGZvciBuZXRfZGV2aWNlCj4gPiA+IHN0cnVjdHMgdGhhdCBoYXZlIGEgcGFyZW50IGRldmlj
ZSBhc3NpZ25lZCBhbmQgYXJlIGRldnJlcyBtYW5hZ2VkIHRvby4KPiA+ID4KPiA+ID4gU2lnbmVk
LW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4g
IAo+ID4gIAo+ID4gPiBkaWZmIC0tZ2l0IGEvbmV0L2NvcmUvZGV2LmMgYi9uZXQvY29yZS9kZXYu
Ywo+ID4gPiBpbmRleCA1MjIyODgxNzdiYmQuLjk5ZGI1MzdjOTQ2OCAxMDA2NDQKPiA+ID4gLS0t
IGEvbmV0L2NvcmUvZGV2LmMKPiA+ID4gKysrIGIvbmV0L2NvcmUvZGV2LmMKPiA+ID4gQEAgLTk1
MTksNiArOTUxOSw1NCBAQCBpbnQgcmVnaXN0ZXJfbmV0ZGV2KHN0cnVjdCBuZXRfZGV2aWNlICpk
ZXYpCj4gPiA+ICB9Cj4gPiA+ICBFWFBPUlRfU1lNQk9MKHJlZ2lzdGVyX25ldGRldik7Cj4gPiA+
Cj4gPiA+ICtzdHJ1Y3QgbmV0ZGV2aWNlX2RldnJlcyB7Cj4gPiA+ICsgICAgIHN0cnVjdCBuZXRf
ZGV2aWNlICpuZGV2Owo+ID4gPiArfTsgIAo+ID4KPiA+IElzIHRoZXJlIHJlYWxseSBhIG5lZWQg
dG8gZGVmaW5lIGEgc3RydWN0dXJlIGlmIHdlIG9ubHkgbmVlZCBhIHBvaW50ZXI/Cj4gPiAgCj4g
Cj4gVGhlcmUgaXMgbm8gbmVlZCBmb3IgdGhhdCwgYnV0IGl0IHJlYWxseSBpcyBtb3JlIHJlYWRh
YmxlIHRoaXMgd2F5Lgo+IEFsc286IHVzaW5nIGEgcG9pbnRlciBkaXJlY3RseSBkb2Vzbid0IHNh
dmUgdXMgYW55IG1lbW9yeSBub3IgY29kZQo+IGhlcmUuCgpJIGRvbid0IGNhcmUgZWl0aGVyIHdh
eSBidXQgZGV2bV9hbGxvY19ldGhlcmRldl9tcXMoKSBhbmQgY28uIGFyZSB1c2luZwp0aGUgZG91
YmxlIHBvaW50ZXIgZGlyZWN0bHkuIFBsZWFzZSBtYWtlIHRoaW5ncyBjb25zaXN0ZW50LiBFaXRo
ZXIgZG8KdGhlIHNhbWUsIG9yIGRlZmluZSB0aGUgc3RydWN0dXJlIGluIHNvbWUgaGVhZGVyIGFu
ZCBjb252ZXJ0IG90aGVyCmhlbHBlcnMgdG8gYWxzbyBtYWtlIHVzZSBvZiBpdC4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
