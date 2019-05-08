Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E31D17F16
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 19:31:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeKhBASZwJ3jQ8RwJ6YKyt14wZlfTWtND0OJol8tzZs=; b=YSf5d6aRB5Tfhb
	5YwmbM4AGqWtXrsypfsFc0YB0fyucYLCihShVLujXI8x9IYqjifvue+58TKzCr2jLizLpRUjUlzAb
	U2hO2uIOK+OIomXkuIcmF/CP0v3BdJzJV8lenDHtHgJxYbp8ZKhT+c5me7J0o/1S4NFrDm48gwsMv
	7rV5KNgHk5tgUwIar2Bxd9VdwCIL2Bkc81BYAz0q2va0bTYbgTenunMTJJF+tQV4L4ajpKjBnKKS+
	l9GjPJapMWOk5mZXzZodo9e4rYNZ+Dhi+UWZ/IoWjLnkEBa+5UO1NxVF2Ue1CLH1JAju7FJnjUUDe
	vIMWCmpHuiegEJzCJlsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOQPF-0006zv-1g; Wed, 08 May 2019 17:31:01 +0000
Received: from gateway22.websitewelcome.com ([192.185.47.163])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOQP7-0006zY-JN
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 17:30:54 +0000
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id 64E70BA28
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  8 May 2019 12:30:52 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id OQP6h4WOTYTGMOQP6h7qMa; Wed, 08 May 2019 12:30:52 -0500
X-Authority-Reason: nr=8
Received: from [189.250.119.7] (port=38944 helo=[192.168.1.76])
 by gator4166.hostgator.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hOQP5-0004Im-Ga; Wed, 08 May 2019 12:30:51 -0500
Subject: Re: [PATCH] can: mark expected switch fall-throughs
To: Marc Kleine-Budde <mkl@pengutronix.de>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "David S. Miller" <davem@davemloft.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
References: <20190129180612.GA28650@embeddedor>
 <31d206cd-65f2-66be-ed79-583210a88d57@pengutronix.de>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <0527d7c5-78f8-d581-1960-7ceda8bc3f49@embeddedor.com>
Date: Wed, 8 May 2019 12:30:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <31d206cd-65f2-66be-ed79-583210a88d57@pengutronix.de>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.250.119.7
X-Source-L: No
X-Exim-ID: 1hOQP5-0004Im-Ga
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.76]) [189.250.119.7]:38944
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 9
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_103053_721784_273117AC 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.47.163 listed in list.dnswl.org]
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-can@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIvMjYvMTkgMjowMiBBTSwgTWFyYyBLbGVpbmUtQnVkZGUgd3JvdGU6Cj4g
T24gMS8yOS8xOSA3OjA2IFBNLCBHdXN0YXZvIEEuIFIuIFNpbHZhIHdyb3RlOgo+PiBJbiBwcmVw
YXJhdGlvbiB0byBlbmFibGluZyAtV2ltcGxpY2l0LWZhbGx0aHJvdWdoLCBtYXJrIHN3aXRjaCBj
YXNlcwo+PiB3aGVyZSB3ZSBhcmUgZXhwZWN0aW5nIHRvIGZhbGwgdGhyb3VnaC4KPj4KPj4gVGhp
cyBwYXRjaCBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmdzOgo+Pgo+PiBkcml2ZXJzL25ldC9j
YW4vcGVha19jYW5mZC9wZWFrX3BjaWVmZF9tYWluLmM6NjY4OjM6IHdhcm5pbmc6IHRoaXMgc3Rh
dGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+PiBkcml2
ZXJzL25ldC9jYW4vc3BpL21jcDI1MXguYzo4NzU6Nzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQg
bWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4+IGRyaXZlcnMvbmV0
L2Nhbi91c2IvcGVha191c2IvcGNhbl91c2IuYzo0MjI6Njogd2FybmluZzogdGhpcyBzdGF0ZW1l
bnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4+IGRyaXZlcnMv
bmV0L2Nhbi9hdDkxX2Nhbi5jOjg5NTo2OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFs
bCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KPj4gZHJpdmVycy9uZXQvY2FuL2F0
OTFfY2FuLmM6OTUzOjE1OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdo
IFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KPj4gZHJpdmVycy9uZXQvY2FuL3VzYi9wZWFrX3Vz
Yi9wY2FuX3VzYi5jOiBJbiBmdW5jdGlvbiDigJhwY2FuX3VzYl9kZWNvZGVfZXJyb3LigJk6Cj4+
IGRyaXZlcnMvbmV0L2Nhbi91c2IvcGVha191c2IvcGNhbl91c2IuYzo0MjI6Njogd2FybmluZzog
dGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1d
Cj4+ICAgIGlmIChuICYgUENBTl9VU0JfRVJST1JfQlVTX0xJR0hUKSB7Cj4+ICAgICAgIF4KPj4g
ZHJpdmVycy9uZXQvY2FuL3VzYi9wZWFrX3VzYi9wY2FuX3VzYi5jOjQyODoyOiBub3RlOiBoZXJl
Cj4+ICAgY2FzZSBDQU5fU1RBVEVfRVJST1JfV0FSTklORzoKPj4gICBefn5+Cj4+Cj4+IFdhcm5p
bmcgbGV2ZWwgMyB3YXMgdXNlZDogLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD0zCj4+Cj4+IFRoaXMg
cGF0Y2ggaXMgcGFydCBvZiB0aGUgb25nb2luZyBlZmZvcnRzIHRvIGVuYWJsaW5nCj4+IC1XaW1w
bGljaXQtZmFsbHRocm91Z2guCj4+Cj4+IE5vdGljZSB0aGF0IGluIHNvbWUgY2FzZXMgc3BlbGxp
bmcgbWlzdGFrZXMgd2VyZSBmaXhlZC4KPj4gSW4gb3RoZXIgY2FzZXMsIHRoZSAvKiBmYWxsIHRo
cm91Z2ggKi8gY29tbWVudCBpcyBwbGFjZWQKPj4gYXQgdGhlIGJvdHRvbSBvZiB0aGUgY2FzZSBz
dGF0ZW1lbnQsIHdoaWNoIGlzIHdoYXQgR0NDCj4+IGlzIGV4cGVjdGluZyB0byBmaW5kLgo+Pgo+
PiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxndXN0YXZvQGVtYmVkZGVkb3Iu
Y29tPgo+IAo+IEFkZGVkIHRvIGxpbnV4LWNhbi1uZXh0Lgo+IAoKSSB3b25kZXIgaWYgdGhlcmUg
aXMgYW55IGNoYW5jZSBmb3IgdGhpcyBwYXRjaCB0byBiZSBxdWV1ZWQgdXAgZm9yIDUuMi1yYzEu
CgpUaGFua3MKLS0KR3VzdGF2bwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
