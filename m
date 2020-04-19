Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EADB31AFE18
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 22:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IFLWYccfiVIVemZtdqI3OCOZ5HmVm2PCyxfqJ7uxqM=; b=XW2IVg0Dj5MIE1
	tKXjFpIF1LqHFpKyZSj+4ZdTl7H37hQua/wn93cQ2OjcvrcuH2V3sx+vYYI/b6/9xhunrLrrhnTEU
	FTvbpKeM1G7dVE0NJUtwBRTjWnJg+37ld8ubR9R3g4VRw4T9wCnv+UOeay+bHv4YdewYEr9TSWZoN
	IdSrcKriQeOgPLs4m1B5yxs0+m6PyYWByOQWKafMfb1xlytCR3DrW6XMMfaIfBy9McZXwG+mdcdVk
	c+3tayCEU7VYrFT7vesxHllsTINofE9R6cX0lB2KMwTP60ms2+V3rQxRowZmYo4JWxQg5rjY9oeTP
	Sr8Wrw5lXDhbtA86CcCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQGYf-0005vF-Ec; Sun, 19 Apr 2020 20:28:53 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQGYY-0005ts-7l
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 20:28:47 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 18D085C0084;
 Sun, 19 Apr 2020 16:28:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 19 Apr 2020 16:28:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=m
 8nOJw+Z9F4lReJR0fhjaHFuWCklfpeOw1D2axiYS5c=; b=CBQA0jUorFy+U2ion
 +nSvu4U6qNGJQ/88+0mleR+bp/6Ip+ECV01ulrpX5f9iuZxF7+4oCc+hWfe7SHLY
 Yo71bZ5Tyttjzsv6RvH+F01071cA9KP2F7eZ4VfqMpDwbkTTEm6YsbCAQIYyi6sn
 ydM+joHgL/0r+tS8ajVG5eEaSykGhY/08+viIQnck7s9Y0vqXP5AVqtPovDbE5aS
 yWaVjcnoaphm8po8ASTY5QtlnqrFujg6Ac/+sX9GxBkt+CaXZ4RerwuXHO91k4Ze
 ALVYJlV4kex4GlSt8uTS6NfP2elyZ9dVn3i2bhf7adjzxQsuqBgAiap6zSFZADfE
 M4MGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=m8nOJw+Z9F4lReJR0fhjaHFuWCklfpeOw1D2axiYS
 5c=; b=1V6LqL+G9rWe+iBAO12iSdZJpHfdbV+F57d258JvKaatREgAUaW5jjxe7
 7J7v0bBtUTkpBAhjGtwaE+lHtw01YZhMKfdv1/3BmnYSguwpeAcMKPOHhWf5ryWF
 Vv+plbXxh1Vl1DtHU/PDhADrHefxkf0MPMM+OjgDx6d3HRnNLoATSorQp0KvSaba
 UAue9b81SEVI3zK1reSsLOsxkRiptJ78wXzHToaOOdQ3PHXbvwX7qvYXz6Toe8Y+
 uc8PTTlkEi5wXChYtASIHFAwPgS9QPd872GF/DynaNtomGStWkyeCgyAzae56D7L
 lR7Gz7a4K9FLF0lc6/pKyf+GkTIIQ==
X-ME-Sender: <xms:cLScXkCTuOu9ySV9GVzc68xjDwPHR06azN4xKeTBrucSbxVGvbaQqQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgedugdduhedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomhepufgrmhhu
 vghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecuff
 homhgrihhnpehgihhthhhusgdrtghomhenucfkphepjedtrddufeehrddugeekrdduhedu
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmh
 huvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:cLScXnnpklh0nQ-dmZ4r-psQBBCylMDDeq2ksZWZ2Lvfq7YdNxqggw>
 <xmx:cLScXqjzYxRRSrxPiwTf4hfSPbVwA9WsLoradNW63lzgO9WYUVvUCw>
 <xmx:cLScXof0MR3FhhSks1aNFis9ueaDV_HJ7yLpa10bKVQg7dRNcaTRbA>
 <xmx:dLScXoa3E7ML7wNvAuTzkkXj5_hg2fGdvfkbUrNmvgdB8cgO5K9mMg>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2F3343280060;
 Sun, 19 Apr 2020 16:28:32 -0400 (EDT)
Subject: Re: [linux-sunxi] [PATCH] media: cedrus: Implement runtime PM
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-sunxi@googlegroups.com
References: <20200408010232.48432-1-samuel@sholland.org>
 <9673642.nUPlyArG6x@jernej-laptop>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <244922ec-ed3a-eca7-6640-49de7ad9c605@sholland.org>
Date: Sun, 19 Apr 2020 15:28:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <9673642.nUPlyArG6x@jernej-laptop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_132846_411951_577CA074 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNC84LzIwIDExOjAxIEFNLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gSGkgU2FtdWVsIQo+
IAo+IERuZSBzcmVkYSwgMDguIGFwcmlsIDIwMjAgb2IgMDM6MDI6MzIgQ0VTVCBqZSBTYW11ZWwg
SG9sbGFuZCBuYXBpc2FsKGEpOgo+PiBUaGlzIGFsbG93cyB0aGUgVkUgY2xvY2tzIGFuZCBQTExf
VkUgdG8gYmUgZGlzYWJsZWQgbW9zdCBvZiB0aGUgdGltZS4KPj4KPj4gU2luY2UgdGhlIGRldmlj
ZSBpcyBzdGF0ZWxlc3MsIGVhY2ggZnJhbWUgZ2V0cyBhIHNlcGFyYXRlIHJ1bnRpbWUgUE0KPj4g
cmVmZXJlbmNlLiBFbmFibGUgYXV0b3N1c3BlbmQgc28gdGhlIFBNIGNhbGxiYWNrcyBhcmUgbm90
IHJ1biBiZWZvcmUgYW5kCj4+IGFmdGVyIGV2ZXJ5IGZyYW1lLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBTYW11ZWwgSG9sbGFuZCA8c2FtdWVsQHNob2xsYW5kLm9yZz4KPj4gLS0tCj4+Cj4+IEkgdGVz
dGVkIHRoaXMgd2l0aCB2NGwyLXJlcXVlc3QtdGVzdC4gSSBkb24ndCBoYXZlIHRoZSBzZXR1cCB0
byBkbwo+PiBhbnl0aGluZyBtb3JlIGNvbXBsaWNhdGVkIGF0IHRoZSBtb21lbnQuCj4+Cj4+IC0t
LQo+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXMuYyAgIHwgICA3
ICsrCj4+ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2h3LmMgICAgfCAx
MTUgKysrKysrKysrKysrLS0tLS0tCj4+ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMv
Y2VkcnVzX2h3LmggICAgfCAgIDMgKwo+PiAgMyBmaWxlcyBjaGFuZ2VkLCA4OCBpbnNlcnRpb25z
KCspLCAzNyBkZWxldGlvbnMoLSkKCltzbmlwXQoKPiBSZXNldCBhYm92ZSBjYXVzZXMgcHJvYmxl
bS4gV2hlbiBmb3JtYXQgaXMgc2V0IGluIGNlZHJ1c19zX2ZtdF92aWRfY2FwKCkgYSAKPiBmdW5j
dGlvbiBpcyBjYWxsZWQsIHdoaWNoIHNldHMgZmV3IHJlZ2lzdGVycyBpbiBIVy4gT2YgY291cnNl
LCB0aGVyZSBpcyBubyAKPiBndWFyYW50ZWUgdGhhdCBzb21lb25lIHdpbGwgc3RhcnQgZGVjb2Rp
bmcgaW1tZWRpYXRlbHkgYWZ0ZXIgY2FwdHVyZSBmb3JtYXQgaXMgCj4gc2V0LiBTbywgaWYgdGhl
IGRyaXZlciBwdXRzIFZQVSB0byBzbGVlcCBpbiB0aGUgbWVhbiB0aW1lLCByZXNldCB3aWxsIGNs
ZWFyIAo+IHRob3NlIHJlZ2lzdGVycyBhbmQgZGVjb2RlZCB2aWRlbyB3aWxsIGJlIGluIGRpZmZl
cmVudCBmb3JtYXQgdGhhbiBleHBlY3RlZC4gSXQgCj4gY291bGQgYmUgZXZlbiBhcmd1ZWQgdGhh
dCByZWdpc3RlcnMgc2hvdWxkIG5vdCBiZSBzZXQgaW4gdGhhdCBmdW5jdGlvbiBhbmQgCj4gdGhh
dCB0aGlzIGlzIGRlc2lnbiBpc3N1ZSBvciBidWcgaW4gZHJpdmVyLgoKWW91J3JlIHJpZ2h0LiBJ
IGRpZG4ndCBzZWUgdGhhdCBjZWRydXNfZHN0X2Zvcm1hdF9zZXQoKSB3YXMgY2FsbGVkIG91dHNp
ZGUKY2VkcnVzX2VuZ2luZV9lbmFibGUvZGlzYWJsZSgpLgoKPiBBbnl3YXksIEkgbWFkZSBhIHJ1
bnRpbWUgUE0gc3VwcG9ydCBsb25nIHRpbWUgYWdvLCBidXQgbmV2ZXIgZG8gYW55dGhpbmcgCj4g
YmVzaWRlcyBydW5uaW5nIGZldyB0ZXN0czoKPiBodHRwczovL2dpdGh1Yi5jb20vamVybmVqc2sv
bGludXgtMS9jb21taXQvCj4gZDI0NWI3ZmEyYTI2ZTUxOWZmNjc1YTI1NWM0NTIzMDU3NWE0YTg0
OAo+IAo+IEl0IHRha2VzIGEgYml0IGRpZmZlcmVudCBhcHByb2FjaC4gUG93ZXIgaXMgZW5hYmxl
ZCBpbiBzdGFydCBzdHJlYW1pbmcgYW5kIAo+IGRpc2FibGVkIGluIHN0b3Agc3RyZWFtaW5nLiBU
aGlzIGlzIHNpbXBsZXIgYXBwcm9hY2ggYW5kIGRvZXNuJ3QgbmVlZCAKPiBhdXRvc3VzcGVuZCBm
dW5jdGlvbmFsaXR5LiBJIGFsc28gbW92ZWQgY2FsbCB0byBhIGZ1bmN0aW9uIHdoaWNoIHNldHMg
Zm9ybWF0IAo+IGluIEhXIHJlZ2lzdGVycyB0byBzdGFydCBzdHJlYW1pbmcgaGFuZGxlciwgc28g
aXQncyBndWFyYW50ZWVkIHRvIGJlIHNldCBhdCAKPiB0aGUgYmVnaW5uaW5nLgoKQXNzdW1pbmcg
Y2VkcnVzX2RldmljZV9ydW4oKSBvbmx5IGdldHMgY2FsbGVkIGJldHdlZW4gc3RyZWFtb24gYW5k
IHN0cmVhbW9mZgood2hpY2ggYXBwZWFycyB0byBiZSB0aGUgY2FzZSksIHRoaXMgbG9va3MgbGlr
ZSBhIGJldHRlciBkZXNpZ24uCgo+IE5vdGUgdGhhdCBzb21lIHJlZ2lzdGVycyBhcmUgb25seSBz
ZXQgaW4gc3RhcnQgc3RyZWFtaW5nIGhhbmRsZXIuIFdpdGggeW91ciAKPiBhcHByb2FjaCwgaWYg
Zmlyc3QgZnJhbWUgaXMgc3VibWl0dGVkIHRvbyBsYXRlLCBhc3NlcnRpbmcgYW5kIGRlLWFzc2Vy
dGluZyAKPiByZXNldCBsaW5lIGNvdWxkIHJlc2V0IHRob3NlIHJlZ2lzdGVycy4KCkkgb25seSBz
ZWUgcmVnaXN0ZXJzIGJlaW5nIHNldCBpbiBjZWRydXNfc3RhcnRfc3RyZWFtaW5nKCkgYWZ0ZXIg
eW91ciBwYXRjaCwKd2hlcmUgeW91IGFkZCBhIGNhbGwgdG8gY2VkcnVzX2RzdF9mb3JtYXRfc2V0
KCkuIEkgY2FuJ3QgZmluZCBhbnkgcmVnaXN0ZXJzCmJlaW5nIHdyaXR0ZW4gaW4gYW55IG9mIHRo
ZSAtPnN0YXJ0KCkgY2FsbGJhY2tzLgoKSSdsbCBzZW5kIGEgdjIgd2hpY2ggY29tYmluZXMgdGhl
IHR3byBwYXRjaGVzOiB5b3VycyB3aGljaCBoYW5kbGVzIHRoZSBydW50aW1lCnBhcnQgYmV0dGVy
LCBhbmQgbWluZSB3aGljaCBoYW5kbGVzIHRoZSBwcm9iZS9yZW1vdmUgcGFydCBiZXR0ZXIgd2l0
aCAhQ09ORklHX1BNLgoKPiBCZXN0IHJlZ2FyZHMsCj4gSmVybmVqCgpUaGFua3MgZm9yIHRoZSBy
ZXZpZXchClNhbXVlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
