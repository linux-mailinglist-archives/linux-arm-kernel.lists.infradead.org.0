Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF127DC7BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 16:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifSkBt6qmh3LU+j67kTPHXo9N47J9ZUey88zDDdZd9U=; b=hZtl5vwL+ulDVS
	arv9kQ12jAyIzkTYPkL2Df2sGL5r3lSLWJg+80gdMQECe7sKdTNRadpZu/vQPVQaATkR5Ke5agQv5
	9mCdsU41H2HztfEQf8DEwlicAET8Rm34ccR40TATJJaf2ARaPfpsN8JyskVIVkePG1n8d87XqfRiD
	z9Ppt1b31EHUemoKulU5xjX498OuLXybw+OghXXTFAq6rPBWXvPDOjhTvoL5MusOnSwQ7thdAJFpw
	I8Y3GAxRby4mvi4AXVNl5nUKwfYqYDSwitbzrm9ySsDy18tpn8YEwnhjZJVVj9gCe8Dt3zpuJ/z7W
	PAR5XZAneaBlDChRJwcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLTZh-00034G-Vj; Fri, 18 Oct 2019 14:49:53 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLTZJ-0002ol-UA; Fri, 18 Oct 2019 14:49:32 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 50B6860015;
 Fri, 18 Oct 2019 14:49:21 +0000 (UTC)
Date: Fri, 18 Oct 2019 16:49:20 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse
 <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, Marek
 Vasut <marek.vasut@gmail.com>, Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH] mtd: spear_smi: Fix nonalignment not handled in
 memcpy_toio
Message-ID: <20191018164920.11250935@xps13>
In-Reply-To: <20191018143643.29676-1-miquel.raynal@bootlin.com>
References: <20191018143643.29676-1-miquel.raynal@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_074930_122041_7E991BA7 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: stable@vger.kernel.org, Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 rmk+kernel@arm.linux.org.uk, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgorUnVzc2VsbCB3aG8gbWlnaHQgaGF2ZSB0aG91Z2h0cyBhYm91dCB0aGUgaXNzdWUK
Ck1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IHdyb3RlIG9uIEZyaSwg
MTggT2N0IDIwMTkKMTY6MzY6NDMgKzAyMDA6Cgo+IEFueSB3cml0ZSB3aXRoIGVpdGhlciBkZCBv
ciBmbGFzaGNwIHRvIGEgZGV2aWNlIGRyaXZlbiBieSB0aGUKPiBzcGVhcl9zbWkuYyBkcml2ZXIg
d2lsbCBwYXNzIHRocm91Z2ggdGhlIHNwZWFyX3NtaV9jcHlfdG9pbygpCj4gZnVuY3Rpb24uIFRo
aXMgZnVuY3Rpb24gd2lsbCBnZXQgY2FsbGVkIGZvciBjaHVua3Mgb2YgdXAgdG8gMjU2IGJ5dGVz
Lgo+IElmIHRoZSBhbW91bnQgb2YgZGF0YSBpcyBzbWFsbGVyLCB3ZSBtYXkgaGF2ZSBhIHByb2Js
ZW0gaWYgdGhlIGRhdGEKPiBsZW5ndGggaXMgbm90IDQtYnl0ZSBhbGlnbmVkLiBJbiB0aGlzIHNp
dHVhdGlvbiwgdGhlIGtlcm5lbCBwYW5pY3MKPiBkdXJpbmcgdGhlIG1lbWNweToKPiAKPiAgICAg
IyBkZCBpZj0vZGV2L3VyYW5kb20gYnM9MTAwMSBjb3VudD0xIG9mPS9kZXYvbXRkNgo+ICAgICBz
cGVhcl9zbWlfY3B5X3RvaW8gWzYyMF0gZGVzdCBjOTA3MDAwMCwgc3JjIGM3YmU4ODAwLCBsZW4g
MjU2Cj4gICAgIHNwZWFyX3NtaV9jcHlfdG9pbyBbNjIwXSBkZXN0IGM5MDcwMTAwLCBzcmMgYzdi
ZTg5MDAsIGxlbiAyNTYKPiAgICAgc3BlYXJfc21pX2NweV90b2lvIFs2MjBdIGRlc3QgYzkwNzAy
MDAsIHNyYyBjN2JlOGEwMCwgbGVuIDI1Ngo+ICAgICBzcGVhcl9zbWlfY3B5X3RvaW8gWzYyMF0g
ZGVzdCBjOTA3MDMwMCwgc3JjIGM3YmU4YjAwLCBsZW4gMjMzCj4gICAgIFVuaGFuZGxlZCBmYXVs
dDogZXh0ZXJuYWwgYWJvcnQgb24gbm9uLWxpbmVmZXRjaCAoMHg4MDgpIGF0IDB4YzkwNzAzZTgK
PiAgICAgWy4uLl0KPiAgICAgUEMgaXMgYXQgbWVtY3B5KzB4Y2MvMHgzMzAKPiAKPiBXb3JrYXJv
dW5kIHRoaXMgaXNzdWUgYnkgdXNpbmcgdGhlIGFsdGVybmF0ZSBfbWVtY3B5X3RvaW8oKSBtZXRo
b2QKPiB3aGljaCBhdCBsZWFzdCBkb2VzIG5vdCBwcmVzZW50IHRoZSBzYW1lIHByb2JsZW0uCj4g
Cj4gRml4ZXM6IGYxOGRiYmIxYmZlMCAoIm10ZDogU1QgU1BFQXI6IEFkZCBTTUkgZHJpdmVyIGZv
ciBzZXJpYWwgTk9SIGZsYXNoIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IFN1Z2dl
c3RlZC1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29t
Pgo+IC0tLQo+IAo+IEhlbGxvLAo+IAo+IFRoaXMgcGF0Y2ggY291bGQgbm90IGJlIHRlc3RlZCB3
aXRoIGEgbWFpbmxpbmUga2VybmVsIChvbmx5IGNvbXBpbGVkKQo+IGJ1dCB3YXMgdGVzdGVkIHdp
dGggYSBzdGFibGUgNC4xNC54IGtlcm5lbC4gSSBoYXZlIHJlYWxseSBubyBpZGVhIHdoeQo+IG1l
bWNweSBmYWlscyBpbiB0aGlzIHNpdHVhdGlvbiB0aGF0J3Mgd2h5IEkgcHJvcG9zZSB0aGlzIHdv
cmthcm91bmQKPiBidXQgSSBiZXQgdGhlcmUgaXMgc29tZXRoaW5nIGRlZXBlciBub3Qgd29ya2lu
Zy4KCkkgZGlkIG5vdCBtZW50aW9uIHRoYXQgdGhlIG9wcG9zaXRlIGRpcmVjdGlvbiB1c2luZyBt
ZW1jcHlfZnJvbWlvKCkgZG9lcwpub3QgcHJlc2VudCBhbnkgaXNzdWUuCgo+IAo+IFRoYW5rcywK
PiBNaXF1w6hsCj4gCj4gIGRyaXZlcnMvbXRkL2RldmljZXMvc3BlYXJfc21pLmMgfCAyICstCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL210ZC9kZXZpY2VzL3NwZWFyX3NtaS5jIGIvZHJpdmVycy9tdGQvZGV2
aWNlcy9zcGVhcl9zbWkuYwo+IGluZGV4IDk4NmY4MWQyZjkzZS4uZDg4ODYyNWEzMjQ0IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbXRkL2RldmljZXMvc3BlYXJfc21pLmMKPiArKysgYi9kcml2ZXJz
L210ZC9kZXZpY2VzL3NwZWFyX3NtaS5jCj4gQEAgLTYxNCw3ICs2MTQsNyBAQCBzdGF0aWMgaW5s
aW5lIGludCBzcGVhcl9zbWlfY3B5X3RvaW8oc3RydWN0IHNwZWFyX3NtaSAqZGV2LCB1MzIgYmFu
aywKPiAgCWN0cmxyZWcxID0gcmVhZGwoZGV2LT5pb19iYXNlICsgU01JX0NSMSk7Cj4gIAl3cml0
ZWwoKGN0cmxyZWcxIHwgV0JfTU9ERSkgJiB+U1dfTU9ERSwgZGV2LT5pb19iYXNlICsgU01JX0NS
MSk7Cj4gIAo+IC0JbWVtY3B5X3RvaW8oZGVzdCwgc3JjLCBsZW4pOwo+ICsJX21lbWNweV90b2lv
KGRlc3QsIHNyYywgbGVuKTsKPiAgCj4gIAl3cml0ZWwoY3RybHJlZzEsIGRldi0+aW9fYmFzZSAr
IFNNSV9DUjEpOwo+ICAKCgoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
