Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C11F1F6303
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02jpiyqzc7pjBiPR/V6r/NhFOn26vK0jhFWIz98Ow7Y=; b=q36Znob+iruPQd
	BYlM+dIq9EHmY9F48wI9lBUG5+BmJ17Kav3RRvJHdW2oZFxPCKUmzQK+GHWta6gFOUkKg0v/LhkzZ
	XdUp/PjYHHYni9OKWMQlTvCKY+iYcF1LCCoWv5Ppwl/w8iM1V35IKmOhe78doxCDVZ6Mh059MP1vd
	ZVJZ5Xy08QtheSPymBWORQQJcXF+hfwqRgTnbNDErXzU3ybgxkQ0pxgXTWp+SGdQktXzL5+Yhom8k
	IyU2BoKS0jhKRvs7pvrB5GTBLHlzDLL8rCxwFlloAJWwximqWJGBmGAma9MRLOBI2KGNxNg9KOYez
	0kUMCEI7GD+do9zn2EzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjI2Z-0003dd-8r; Thu, 11 Jun 2020 07:54:23 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjI2L-0003cn-7b; Thu, 11 Jun 2020 07:54:11 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 11A6D20015;
 Thu, 11 Jun 2020 07:53:59 +0000 (UTC)
Date: Thu, 11 Jun 2020 09:53:58 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v6 2/8] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK2928 and others
Message-ID: <20200611095358.7fceea83@xps13>
In-Reply-To: <20200609074020.23860-3-yifeng.zhao@rock-chips.com>
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
 <20200609074020.23860-3-yifeng.zhao@rock-chips.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_005409_546214_426CF327 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, vigneshr@ti.com, richard@nod.at,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWlmZW5nLAoKClsuLi5dCgo+ICtzdGF0aWMgdm9pZCBya19uZmNfZGlzYWJsZV9jbGsoc3Ry
dWN0IHJrX25mY19jbGsgKmNsaykKPiArewo+ICsJaWYgKCFJU19FUlIoY2xrLT5uZmNfY2xrKSkK
PiArCQljbGtfZGlzYWJsZV91bnByZXBhcmUoY2xrLT5uZmNfY2xrKTsKPiArCWNsa19kaXNhYmxl
X3VucHJlcGFyZShjbGstPmFoYl9jbGspOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IHJrX25mY19v
b2JsYXlvdXRfZnJlZShzdHJ1Y3QgbXRkX2luZm8gKm10ZCwgaW50IHNlY3Rpb24sCj4gKwkJCQkg
c3RydWN0IG10ZF9vb2JfcmVnaW9uICpvb2JfcmVnaW9uKQo+ICt7Cj4gKwlzdHJ1Y3QgbmFuZF9j
aGlwICpjaGlwID0gbXRkX3RvX25hbmQobXRkKTsKPiArCj4gKwlpZiAoc2VjdGlvbiA+PSBjaGlw
LT5lY2Muc3RlcHMpCj4gKwkJcmV0dXJuIC1FUkFOR0U7Cj4gKwo+ICsJaWYgKCFzZWN0aW9uKSB7
Cj4gKwkJLyogVGhlIGZpcnN0IGJ5dGUgaXMgYmFkIGJsb2NrIG1hc2sgZmxhZy4gKi8KPiArCQlv
b2JfcmVnaW9uLT5sZW5ndGggPSBORkNfU1lTX0RBVEFfU0laRSAtIDE7Cj4gKwkJb29iX3JlZ2lv
bi0+b2Zmc2V0ID0gMTsKPiArCX0gZWxzZSB7Cj4gKwkJb29iX3JlZ2lvbi0+bGVuZ3RoID0gTkZD
X1NZU19EQVRBX1NJWkU7Cj4gKwkJb29iX3JlZ2lvbi0+b2Zmc2V0ID0gc2VjdGlvbiAqIE5GQ19T
WVNfREFUQV9TSVpFOwo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMg
aW50IHJrX25mY19vb2JsYXlvdXRfZWNjKHN0cnVjdCBtdGRfaW5mbyAqbXRkLCBpbnQgc2VjdGlv
biwKPiArCQkJCXN0cnVjdCBtdGRfb29iX3JlZ2lvbiAqb29iX3JlZ2lvbikKPiArewo+ICsJc3Ry
dWN0IG5hbmRfY2hpcCAqY2hpcCA9IG10ZF90b19uYW5kKG10ZCk7Cj4gKwo+ICsJaWYgKHNlY3Rp
b24pCj4gKwkJcmV0dXJuIC1FUkFOR0U7Cj4gKwo+ICsJb29iX3JlZ2lvbi0+b2Zmc2V0ID0gTkZD
X1NZU19EQVRBX1NJWkUgKiBjaGlwLT5lY2Muc3RlcHM7Cj4gKwlvb2JfcmVnaW9uLT5sZW5ndGgg
PSBtdGQtPm9vYnNpemUgLSBvb2JfcmVnaW9uLT5vZmZzZXQ7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4g
K30KPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbXRkX29vYmxheW91dF9vcHMgcmtfbmZjX29v
YmxheW91dF9vcHMgPSB7Cj4gKwkuZnJlZSA9IHJrX25mY19vb2JsYXlvdXRfZnJlZSwKPiArCS5l
Y2MgPSBya19uZmNfb29ibGF5b3V0X2VjYywKPiArfTsKClRoaXMgbG9va3MgbGlrZSBhIGNvcHkg
b2YgdGhlIGNvcmUncyBuYW5kX2xwX29vYmxheW91dCwgYmV0dGVyIHVzZSB0aGUKZ2VuZXJpYyBv
bmUgdGhhbiBjcmVhdGlvbiB5b3VyIG93bi4KCj4gKwo+ICtzdGF0aWMgaW50IHJrX25mY19lY2Nf
aW5pdChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBtdGRfaW5mbyAqbXRkKQo+ICt7Cj4gKwlz
dHJ1Y3QgbmFuZF9jaGlwICpjaGlwID0gbXRkX3RvX25hbmQobXRkKTsKPiArCXN0cnVjdCBya19u
ZmMgKm5mYyA9IG5hbmRfZ2V0X2NvbnRyb2xsZXJfZGF0YShjaGlwKTsKPiArCXN0cnVjdCBuYW5k
X2VjY19jdHJsICplY2MgPSAmY2hpcC0+ZWNjOwo+ICsJY29uc3QgdTggKnN0cmVuZ3RocyA9IG5m
Yy0+Y2ZnLT5lY2Nfc3RyZW5ndGhzOwo+ICsJdTggbWF4X3N0cmVuZ3RoLCBuZmNfbWF4X3N0cmVu
Z3RoOwo+ICsJaW50IGk7Cj4gKwo+ICsJbmZjX21heF9zdHJlbmd0aCA9IG5mYy0+Y2ZnLT5lY2Nf
c3RyZW5ndGhzWzBdOwo+ICsJLyogSWYgb3B0aW9uYWwgZHQgc2V0dGluZ3Mgbm90IHByZXNlbnQu
ICovCj4gKwlpZiAoIWVjYy0+c2l6ZSB8fCAhZWNjLT5zdHJlbmd0aCB8fAo+ICsJICAgIGVjYy0+
c3RyZW5ndGggPiBuZmNfbWF4X3N0cmVuZ3RoKSB7Cj4gKwkJLyogVXNlIGRhdGFzaGVldCByZXF1
aXJlbWVudHMuICovCj4gKwkJZWNjLT5zdHJlbmd0aCA9IGNoaXAtPmJhc2UuZWNjcmVxLnN0cmVu
Z3RoOwo+ICsJCWVjYy0+c2l6ZSA9IGNoaXAtPmJhc2UuZWNjcmVxLnN0ZXBfc2l6ZTsKPiArCj4g
KwkJLyoKPiArCQkgKiBBbGlnbiBlY2NzdHJlbmd0aCBhbmQgZWNjc2l6ZS4KPiArCQkgKiBUaGlz
IGNvbnRyb2xsZXIgb25seSBzdXBwb3J0cyA1MTIgYW5kIDEwMjQgc2l6ZXMuCj4gKwkJICovCj4g
KwkJaWYgKGNoaXAtPmVjYy5zaXplIDwgMTAyNCkgewo+ICsJCQlpZiAobXRkLT53cml0ZXNpemUg
PiA1MTIpIHsKPiArCQkJCWNoaXAtPmVjYy5zaXplID0gMTAyNDsKPiArCQkJCWNoaXAtPmVjYy5z
dHJlbmd0aCA8PD0gMTsKPiArCQkJfSBlbHNlIHsKPiArCQkJCWRldl9lcnIoZGV2LCAiZWNjLnNp
emUgbm90IHN1cHBvcnRlZFxuIik7Cj4gKwkJCQlyZXR1cm4gLUVJTlZBTDsKPiArCQkJfQo+ICsJ
CX0gZWxzZSB7Cj4gKwkJCWNoaXAtPmVjYy5zaXplID0gMTAyNDsKPiArCQl9Cj4gKwo+ICsJCWVj
Yy0+c3RlcHMgPSBtdGQtPndyaXRlc2l6ZSAvIGVjYy0+c2l6ZTsKPiArCj4gKwkJLyoKPiArCQkg
KiBIVyBFQ0MgYWx3YXlzIHJlcXVlc3QgRUNDIGJ5dGVzIGZvciAxMDI0IGJ5dGVzIGJsb2Nrcy4K
PiArCQkgKiA0IEJ5dGVzIGlzIG9vYiBmb3Igc3lzIGRhdGEuCj4gKwkJICovCj4gKwkJbWF4X3N0
cmVuZ3RoID0gKChtdGQtPm9vYnNpemUgLyBlY2MtPnN0ZXBzKSAtIDQpICogOCAvCj4gKwkJCQkg
ZmxzKDggKiAxMDI0KTsKPiArCQlpZiAobWF4X3N0cmVuZ3RoID4gbmZjX21heF9zdHJlbmd0aCkK
PiArCQkJbWF4X3N0cmVuZ3RoID0gbmZjX21heF9zdHJlbmd0aDsKPiArCj4gKwkJZm9yIChpID0g
MDsgaSA8IDQ7IGkrKykgewo+ICsJCQlpZiAobWF4X3N0cmVuZ3RoID49IHN0cmVuZ3Roc1tpXSkK
PiArCQkJCWJyZWFrOwo+ICsJCX0KPiArCj4gKwkJaWYgKGkgPj0gNCkgewo+ICsJCQlkZXZfZXJy
KG5mYy0+ZGV2LCAidW5zdXBwb3J0ZWQgc3RyZW5ndGhcbiIpOwo+ICsJCQlyZXR1cm4gLUVOT1RT
VVBQOwo+ICsJCX0KPiArCj4gKwkJZWNjLT5zdHJlbmd0aCA9IHN0cmVuZ3Roc1tpXTsKPiArCX0K
PiArCWVjYy0+c3RlcHMgPSBtdGQtPndyaXRlc2l6ZSAvIGVjYy0+c2l6ZTsKPiArCWVjYy0+Ynl0
ZXMgPSBESVZfUk9VTkRfVVAoZWNjLT5zdHJlbmd0aCAqIGZscyg4ICogMTAyNCksIDgpOwo+ICsJ
LyogSFcgRUNDIGFsd2F5cyB3b3JrIHdpdGggZXZlbiBudW1iZXJzIG9mIEVDQyBieXRlcy4gKi8K
PiArCWVjYy0+Ynl0ZXMgPSBBTElHTihlY2MtPmJ5dGVzLCAyKTsKPiArCj4gKwlya19uZmNfaHdf
ZWNjX3NldHVwKGNoaXAsIGVjYywgZWNjLT5zdHJlbmd0aCk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4g
K30KPiArCj4gK3N0YXRpYyBpbnQgcmtfbmZjX2F0dGFjaF9jaGlwKHN0cnVjdCBuYW5kX2NoaXAg
KmNoaXApCj4gK3sKPiArCXN0cnVjdCBtdGRfaW5mbyAqbXRkID0gbmFuZF90b19tdGQoY2hpcCk7
Cj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBtdGQtPmRldi5wYXJlbnQ7Cj4gKwlzdHJ1Y3Qgcmtf
bmZjICpuZmMgPSBuYW5kX2dldF9jb250cm9sbGVyX2RhdGEoY2hpcCk7Cj4gKwlzdHJ1Y3Qgcmtf
bmZjX25hbmRfY2hpcCAqcmtfbmFuZCA9IHRvX3JrX25hbmQoY2hpcCk7Cj4gKwlzdHJ1Y3QgbmFu
ZF9lY2NfY3RybCAqZWNjID0gJmNoaXAtPmVjYzsKPiArCWludCBsZW47Cj4gKwlpbnQgcmV0Owo+
ICsKPiArCWlmIChjaGlwLT5vcHRpb25zICYgTkFORF9CVVNXSURUSF8xNikgewo+ICsJCWRldl9l
cnIoZGV2LCAiMTYgYml0cyBidXMgd2lkdGggbm90IHN1cHBvcnRlZCIpOwo+ICsJCXJldHVybiAt
RUlOVkFMOwo+ICsJfQo+ICsKPiArCWlmIChlY2MtPm1vZGUgIT0gTkFORF9FQ0NfSFcpCj4gKwkJ
cmV0dXJuIDA7Cj4gKwo+ICsJcmV0ID0gcmtfbmZjX2VjY19pbml0KGRldiwgbXRkKTsKPiArCWlm
IChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCXJrX25hbmQtPnNwYXJlX3Blcl9zZWN0b3IgPSBl
Y2MtPmJ5dGVzICsgTkZDX1NZU19EQVRBX1NJWkU7Cj4gKwo+ICsJLyogQ2hlY2sgYnVmZmVyIGZp
cnN0LCBhdm9pZCBkdXBsaWNhdGUgYWxsb2MgYnVmZmVyLiAqLwo+ICsJaWYgKG5mYy0+YnVmZmVy
KQo+ICsJCXJldHVybiAwOwo+ICsKPiArCWxlbiA9IG10ZC0+d3JpdGVzaXplICsgbXRkLT5vb2Jz
aXplOwo+ICsJbmZjLT5idWZmZXIgPSBkZXZtX2t6YWxsb2MoZGV2LCBsZW4sIEdGUF9LRVJORUwg
fCBHRlBfRE1BKTsKPiArCWlmICghbmZjLT5idWZmZXIpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4g
Kwo+ICsJbmZjLT5wYWdlX2J1ZiA9IG5mYy0+YnVmZmVyOwo+ICsJbGVuID0gZWNjLT5zdGVwcyAq
IE5GQ19NQVhfT09CX1BFUl9TVEVQOwo+ICsJbmZjLT5vb2JfYnVmID0gZGV2bV9remFsbG9jKGRl
diwgbGVuLCBHRlBfS0VSTkVMIHwgR0ZQX0RNQSk7Cj4gKwlpZiAoIW5mYy0+b29iX2J1Zikgewo+
ICsJCWRldm1fa2ZyZWUoZGV2LCBuZmMtPmJ1ZmZlcik7CgpUaGlzIGlzIG5vdCBuZWVkZWQgSSBz
dXBwb3NlIGFuZCB5b3Ugc2hvdWxkIHByb2JhYmx5IGp1c3QgcmV0dXJuIHRoZQplcnJvci4KCj4g
KwkJbmZjLT5idWZmZXIgPSBOVUxMOwo+ICsJCW5mYy0+b29iX2J1ZiA9IE5VTEw7Cj4gKwkJcmV0
dXJuIC1FTk9NRU07Cj4gKwl9Cj4gKwo+ICsJY2hpcC0+ZWNjLndyaXRlX3BhZ2VfcmF3ID0gcmtf
bmZjX3dyaXRlX3BhZ2VfcmF3Owo+ICsJY2hpcC0+ZWNjLndyaXRlX3BhZ2UgPSBya19uZmNfd3Jp
dGVfcGFnZV9od2VjYzsKPiArCWNoaXAtPmVjYy53cml0ZV9vb2JfcmF3ID0gcmtfbmZjX3dyaXRl
X29vYl9zdGQ7Cj4gKwljaGlwLT5lY2Mud3JpdGVfb29iID0gcmtfbmZjX3dyaXRlX29vYl9zdGQ7
Cj4gKwo+ICsJY2hpcC0+ZWNjLnJlYWRfcGFnZV9yYXcgPSBya19uZmNfcmVhZF9wYWdlX3JhdzsK
PiArCWNoaXAtPmVjYy5yZWFkX3BhZ2UgPSBya19uZmNfcmVhZF9wYWdlX2h3ZWNjOwo+ICsJY2hp
cC0+ZWNjLnJlYWRfb29iX3JhdyA9IHJrX25mY19yZWFkX29vYl9zdGQ7Cj4gKwljaGlwLT5lY2Mu
cmVhZF9vb2IgPSBya19uZmNfcmVhZF9vb2Jfc3RkOwo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4g
Kwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG5hbmRfY29udHJvbGxlcl9vcHMgcmtfbmZjX2NvbnRy
b2xsZXJfb3BzID0gewo+ICsJLmF0dGFjaF9jaGlwID0gcmtfbmZjX2F0dGFjaF9jaGlwLAo+ICsJ
LmV4ZWNfb3AgPSBya19uZmNfZXhlY19vcCwKPiArCS5zZXR1cF9kYXRhX2ludGVyZmFjZSA9IHJr
X25mY19zZXR1cF9kYXRhX2ludGVyZmFjZSwKPiArfTsKPiArCj4gK3N0YXRpYyBpbnQgcmtfbmZj
X25hbmRfY2hpcF9pbml0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHJrX25mYyAqbmZjLAo+
ICsJCQkJIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4gK3sKPiArCXN0cnVjdCBya19uZmNfbmFu
ZF9jaGlwICpuYW5kOwoKQ291bGQgeW91IGNhbGwgaXQgcmtuYW5kIG9yIHNvbWV0aGluZyBzaW1p
bGFyLCBqdXN0IHNvIHRoYXQgaXQgaXMgZWFzeQp0byBnZXQgdGhlIGRpZmZlcmVuY2Ugd2l0aCB0
aGUgbmFuZF9jaGlwIHN0cnVjdHVyZS4KCj4gKwlzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwOwo+ICsJ
c3RydWN0IG10ZF9pbmZvICptdGQ7Cj4gKwlpbnQgbnNlbHM7Cj4gKwl1MzIgdG1wOwo+ICsJaW50
IHJldDsKPiArCWludCBpOwo+ICsKPiArCWlmICghb2ZfZ2V0X3Byb3BlcnR5KG5wLCAicmVnIiwg
Jm5zZWxzKSkKPiArCQlyZXR1cm4gLUVOT0RFVjsKPiArCW5zZWxzIC89IHNpemVvZih1MzIpOwo+
ICsJaWYgKCFuc2VscyB8fCBuc2VscyA+IE5GQ19NQVhfTlNFTFMpIHsKPiArCQlkZXZfZXJyKGRl
diwgImludmFsaWQgcmVnIHByb3BlcnR5IHNpemUgJWRcbiIsIG5zZWxzKTsKPiArCQlyZXR1cm4g
LUVJTlZBTDsKPiArCX0KPiArCj4gKwluYW5kID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpu
YW5kKSArIG5zZWxzICogc2l6ZW9mKHU4KSwKPiArCQkJICAgIEdGUF9LRVJORUwpOwo+ICsJaWYg
KCFuYW5kKQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiArCW5hbmQtPm5zZWxzID0gbnNlbHM7
Cj4gKwlmb3IgKGkgPSAwOyBpIDwgbnNlbHM7IGkrKykgewo+ICsJCXJldCA9IG9mX3Byb3BlcnR5
X3JlYWRfdTMyX2luZGV4KG5wLCAicmVnIiwgaSwgJnRtcCk7Cj4gKwkJaWYgKHJldCkgewo+ICsJ
CQlkZXZfZXJyKGRldiwgInJlZyBwcm9wZXJ0eSBmYWlsdXJlIDogJWRcbiIsIHJldCk7Cj4gKwkJ
CXJldHVybiByZXQ7Cj4gKwkJfQo+ICsKPiArCQlpZiAodG1wID49IE5GQ19NQVhfTlNFTFMpIHsK
PiArCQkJZGV2X2VycihkZXYsICJpbnZhbGlkIENTOiAldVxuIiwgdG1wKTsKPiArCQkJcmV0dXJu
IC1FSU5WQUw7Cj4gKwkJfQo+ICsKPiArCQlpZiAodGVzdF9hbmRfc2V0X2JpdCh0bXAsICZuZmMt
PmFzc2lnbmVkX2NzKSkgewo+ICsJCQlkZXZfZXJyKGRldiwgIkNTICV1IGFscmVhZHkgYXNzaWdu
ZWRcbiIsIHRtcCk7Cj4gKwkJCXJldHVybiAtRUlOVkFMOwo+ICsJCX0KPiArCj4gKwkJbmFuZC0+
c2Vsc1tpXSA9IHRtcDsKPiArCX0KPiArCj4gKwljaGlwID0gJm5hbmQtPmNoaXA7Cj4gKwljaGlw
LT5jb250cm9sbGVyID0gJm5mYy0+Y29udHJvbGxlcjsKPiArCj4gKwluYW5kX3NldF9mbGFzaF9u
b2RlKGNoaXAsIG5wKTsKPiArCj4gKwluYW5kX3NldF9jb250cm9sbGVyX2RhdGEoY2hpcCwgbmZj
KTsKPiArCj4gKwljaGlwLT5vcHRpb25zIHw9IE5BTkRfVVNFX0JPVU5DRV9CVUZGRVIgfCBOQU5E
X05PX1NVQlBBR0VfV1JJVEU7Cj4gKwljaGlwLT5iYnRfb3B0aW9ucyA9IE5BTkRfQkJUX1VTRV9G
TEFTSCB8IE5BTkRfQkJUX05PX09PQjsKPiArCj4gKwkvKiBTZXQgZGVmYXVsdCBtb2RlIGluIGNh
c2UgZHQgZW50cnkgaXMgbWlzc2luZy4gKi8KPiArCWNoaXAtPmVjYy5tb2RlID0gTkFORF9FQ0Nf
SFc7Cj4gKwo+ICsJbXRkID0gbmFuZF90b19tdGQoY2hpcCk7Cj4gKwltdGQtPm93bmVyID0gVEhJ
U19NT0RVTEU7Cj4gKwltdGQtPmRldi5wYXJlbnQgPSBkZXY7Cj4gKwo+ICsJaWYgKCFtdGQtPm5h
bWUpIHsKPiArCQlkZXZfZXJyKG5mYy0+ZGV2LCAiTkFORCBsYWJlbCBwcm9wZXJ0eSBpcyBtYW5k
YXRvcnlcbiIpOwo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsJfQo+ICsKPiArCW10ZF9zZXRfb29i
bGF5b3V0KG10ZCwgJnJrX25mY19vb2JsYXlvdXRfb3BzKTsKPiArCXJrX25mY19od19pbml0KG5m
Yyk7Cj4gKwlyZXQgPSBuYW5kX3NjYW4oY2hpcCwgbnNlbHMpOwo+ICsJaWYgKHJldCkKPiArCQly
ZXR1cm4gcmV0Owo+ICsKPiArCWlmIChjaGlwLT5vcHRpb25zICYgTkFORF9JU19CT09UX01FRElV
TSkgewo+ICsJCXJldCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyKG5wLCAicm9ja2NoaXAsYm9vdC1i
bGtzIiwgJnRtcCk7Cj4gKwkJbmFuZC0+Ym9vdF9ibGtzID0gcmV0ID8gMCA6IHRtcDsKPiArCj4g
KwkJcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF91MzIobnAsICJyb2NrY2hpcCxib290LWVjYy1zdHJl
bmd0aCIsCj4gKwkJCQkJICAgJnRtcCk7Cj4gKwkJbmFuZC0+Ym9vdF9lY2MgPSByZXQgPyBjaGlw
LT5lY2Muc3RyZW5ndGggOiB0bXA7Cj4gKwl9Cj4gKwo+ICsJcmV0ID0gbXRkX2RldmljZV9yZWdp
c3RlcihtdGQsIE5VTEwsIDApOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIoZGV2LCAibXRk
IHBhcnNlIHBhcnRpdGlvbiBlcnJvclxuIik7Cj4gKwkJbmFuZF9yZWxlYXNlKGNoaXApOwoKbmFu
ZF9jbGVhbnVwKCkgaGVyZQoKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCWxpc3RfYWRk
X3RhaWwoJm5hbmQtPm5vZGUsICZuZmMtPmNoaXBzKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+
ICsKPiArc3RhdGljIGludCBya19uZmNfbmFuZF9jaGlwc19pbml0KHN0cnVjdCBkZXZpY2UgKmRl
diwgc3RydWN0IHJrX25mYyAqbmZjKQo+ICt7Cj4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0g
ZGV2LT5vZl9ub2RlOwo+ICsJc3RydWN0IGRldmljZV9ub2RlICpuYW5kX25wOwo+ICsJaW50IHJl
dCA9IC1FSU5WQUw7Cj4gKwlpbnQgdG1wOwo+ICsKPiArCWZvcl9lYWNoX2NoaWxkX29mX25vZGUo
bnAsIG5hbmRfbnApIHsKPiArCQl0bXAgPSBya19uZmNfbmFuZF9jaGlwX2luaXQoZGV2LCBuZmMs
IG5hbmRfbnApOwo+ICsJCWlmICh0bXApIHsKPiArCQkJb2Zfbm9kZV9wdXQobmFuZF9ucCk7Cj4g
KwkJCXJldHVybiByZXQ7Cj4gKwkJfQo+ICsJCS8qIEF0IGxlYXN0IG9uZSBuYW5kIGNoaXAgaXMg
aW5pdGlhbGl6ZWQuICovCj4gKwkJcmV0ID0gMDsKCkkgdGhpbmsgaXQncyBtb3JlIHJlYWRhYmxl
IGlmIHlvdSBjb3VudCB1cCB0aGUgbnVtYmVyIG9mIGRldmljZXMKaW5pdGlhbGl6ZWQgYnkgYnJv
d3NpbmcgdGhlIGxpc3Qgb2YgY2hpcHMgaGFuZGxlZCBieSB0aGUgY29udHJvbGxlcgoobGlzdF9p
c19lbXB0eSgpIHdvdWxkIHdvcmsganVzdCBmaW5lKS4KCj4gKwl9Cj4gKwo+ICsJcmV0dXJuIHJl
dDsKPiArfQo+ICsKPiArc3RhdGljIHN0cnVjdCBuZmNfY2ZnIG5mY192Nl9jZmcgPSB7Cj4gKwkJ
LnR5cGUJCQk9IE5GQ19WNiwKPiArCQkuZWNjX3N0cmVuZ3RocwkJPSB7NjAsIDQwLCAyNCwgMTZ9
LAo+ICsJCS5lY2NfY2ZncwkJPSB7Cj4gKwkJCTB4MDAwNDAwMTEsIDB4MDAwNDAwMDEsIDB4MDAw
MDAwMTEsIDB4MDAwMDAwMDEsCj4gKwkJfSwKPiArCQkuZmxjdGxfb2ZmCQk9IDB4MDgsCj4gKwkJ
LmJjaGN0bF9vZmYJCT0gMHgwQywKPiArCQkuZG1hX2NmZ19vZmYJCT0gMHgxMCwKPiArCQkuZG1h
X2RhdGFfYnVmX29mZgk9IDB4MTQsCj4gKwkJLmRtYV9vb2JfYnVmX29mZgk9IDB4MTgsCj4gKwkJ
LmRtYV9zdF9vZmYJCT0gMHgxQywKPiArCQkuYmNoX3N0X29mZgkJPSAweDIwLAo+ICsJCS5yYW5k
bXpfb2ZmCQk9IDB4MTUwLAo+ICsJCS5pbnRfZW5fb2ZmCQk9IDB4MTZDLAo+ICsJCS5pbnRfY2xy
X29mZgkJPSAweDE3MCwKPiArCQkuaW50X3N0X29mZgkJPSAweDE3NCwKPiArCQkub29iMF9vZmYJ
CT0gMHgyMDAsCj4gKwkJLm9vYjFfb2ZmCQk9IDB4MjMwLAo+ICsJCS5lY2MwCQkJPSB7Cj4gKwkJ
CS5lcnJfZmxhZ19iaXQJPSAyLAo+ICsJCQkubG93CQk9IDMsCj4gKwkJCS5sb3dfbWFzawk9IDB4
MUYsCj4gKwkJCS5sb3dfYm4JCT0gNSwKPiArCQkJLmhpZ2gJCT0gMjcsCj4gKwkJCS5oaWdoX21h
c2sJPSAweDEsCj4gKwkJfSwKPiArCQkuZWNjMQkJCT0gewo+ICsJCQkuZXJyX2ZsYWdfYml0CT0g
MTUsCj4gKwkJCS5sb3cJCT0gMTYsCj4gKwkJCS5sb3dfbWFzawk9IDB4MUYsCj4gKwkJCS5sb3df
Ym4JCT0gNSwKPiArCQkJLmhpZ2gJCT0gMjksCj4gKwkJCS5oaWdoX21hc2sJPSAweDEsCj4gKwkJ
fSwKPiArfTsKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgbmZjX2NmZyBuZmNfdjhfY2ZnID0gewo+ICsJ
CS50eXBlCQkJPSBORkNfVjgsCj4gKwkJLmVjY19zdHJlbmd0aHMJCT0gezE2LCAxNiwgMTYsIDE2
fSwKPiArCQkuZWNjX2NmZ3MJCT0gewo+ICsJCQkweDAwMDAwMDAxLCAweDAwMDAwMDAxLCAweDAw
MDAwMDAxLCAweDAwMDAwMDAxLAo+ICsJCX0sCj4gKwkJLmZsY3RsX29mZgkJPSAweDA4LAo+ICsJ
CS5iY2hjdGxfb2ZmCQk9IDB4MEMsCj4gKwkJLmRtYV9jZmdfb2ZmCQk9IDB4MTAsCj4gKwkJLmRt
YV9kYXRhX2J1Zl9vZmYJPSAweDE0LAo+ICsJCS5kbWFfb29iX2J1Zl9vZmYJPSAweDE4LAo+ICsJ
CS5kbWFfc3Rfb2ZmCQk9IDB4MUMsCj4gKwkJLmJjaF9zdF9vZmYJCT0gMHgyMCwKPiArCQkuYmNo
X3N0X29mZgkJPSAweDIwLAo+ICsJCS5yYW5kbXpfb2ZmCQk9IDB4MTUwLAo+ICsJCS5pbnRfZW5f
b2ZmCQk9IDB4MTZDLAo+ICsJCS5pbnRfY2xyX29mZgkJPSAweDE3MCwKPiArCQkuaW50X3N0X29m
ZgkJPSAweDE3NCwKPiArCQkub29iMF9vZmYJCT0gMHgyMDAsCj4gKwkJLm9vYjFfb2ZmCQk9IDB4
MjMwLAo+ICsJCS5lY2MwCQkJPSB7Cj4gKwkJCS5lcnJfZmxhZ19iaXQJPSAyLAo+ICsJCQkubG93
CQk9IDMsCj4gKwkJCS5sb3dfbWFzawk9IDB4MUYsCj4gKwkJCS5sb3dfYm4JCT0gNSwKPiArCQkJ
LmhpZ2gJCT0gMjcsCj4gKwkJCS5oaWdoX21hc2sJPSAweDEsCj4gKwkJfSwKPiArCQkuZWNjMQkJ
CT0gewo+ICsJCQkuZXJyX2ZsYWdfYml0CT0gMTUsCj4gKwkJCS5sb3cJCT0gMTYsCj4gKwkJCS5s
b3dfbWFzawk9IDB4MUYsCj4gKwkJCS5sb3dfYm4JCT0gNSwKPiArCQkJLmhpZ2gJCT0gMjksCj4g
KwkJCS5oaWdoX21hc2sJPSAweDEsCj4gKwkJfSwKPiArfTsKPiArCj4gK3N0YXRpYyBzdHJ1Y3Qg
bmZjX2NmZyBuZmNfdjlfY2ZnID0gewo+ICsJCS50eXBlCQkJPSBORkNfVjksCj4gKwkJLmVjY19z
dHJlbmd0aHMJCT0gezcwLCA2MCwgNDAsIDE2fSwKPiArCQkuZWNjX2NmZ3MJCT0gewo+ICsJCQkw
eDAwMDAwMDAxLCAweDA2MDAwMDAxLCAweDA0MDAwMDAxLCAweDAyMDAwMDAxLAo+ICsJCX0sCj4g
KwkJLmZsY3RsX29mZgkJPSAweDEwLAo+ICsJCS5iY2hjdGxfb2ZmCQk9IDB4MjAsCj4gKwkJLmRt
YV9jZmdfb2ZmCQk9IDB4MzAsCj4gKwkJLmRtYV9kYXRhX2J1Zl9vZmYJPSAweDM0LAo+ICsJCS5k
bWFfb29iX2J1Zl9vZmYJPSAweDM4LAo+ICsJCS5kbWFfc3Rfb2ZmCQk9IDB4M0MsCj4gKwkJLmJj
aF9zdF9vZmYJCT0gMHgxNTAsCj4gKwkJLnJhbmRtel9vZmYJCT0gMHgyMDgsCj4gKwkJLmludF9l
bl9vZmYJCT0gMHgxMjAsCj4gKwkJLmludF9jbHJfb2ZmCQk9IDB4MTI0LAo+ICsJCS5pbnRfc3Rf
b2ZmCQk9IDB4MTI4LAo+ICsJCS5vb2IwX29mZgkJPSAweDIwMCwKPiArCQkub29iMV9vZmYJCT0g
MHgyMDQsCj4gKwkJLmVjYzAJCQk9IHsKPiArCQkJLmVycl9mbGFnX2JpdAk9IDIsCj4gKwkJCS5s
b3cJCT0gMywKPiArCQkJLmxvd19tYXNrCT0gMHg3RiwKPiArCQkJLmxvd19ibgkJPSA3LAo+ICsJ
CQkuaGlnaAkJPSAwLAo+ICsJCQkuaGlnaF9tYXNrCT0gMHgwLAo+ICsJCX0sCj4gKwkJLmVjYzEJ
CQk9IHsKPiArCQkJLmVycl9mbGFnX2JpdAk9IDE4LAo+ICsJCQkubG93CQk9IDE5LAo+ICsJCQku
bG93X21hc2sJPSAweDdGLAo+ICsJCQkubG93X2JuCQk9IDcsCj4gKwkJCS5oaWdoCQk9IDAsCj4g
KwkJCS5oaWdoX21hc2sJPSAweDAsCj4gKwkJfSwKPiArfTsKPiArCj4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJrX25mY19pZF90YWJsZVtdID0gewo+ICsJey5jb21wYXRpYmxl
ID0gInJvY2tjaGlwLHB4MzAtbmZjIiwKPiArCQkuZGF0YSA9ICZuZmNfdjlfY2ZnIH0sCj4gKwl7
LmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmsyOTI4LW5mYyIsCj4gKwkJLmRhdGEgPSAmbmZjX3Y2
X2NmZyB9LAo+ICsJey5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJ2MTEwOC1uZmMiLAo+ICsJCS5k
YXRhID0gJm5mY192OF9jZmcgfSwKPiArCXsgLyogc2VudGluZWwgKi8gfQo+ICt9Owo+ICtNT0RV
TEVfREVWSUNFX1RBQkxFKG9mLCBya19uZmNfaWRfdGFibGUpOwo+ICsKPiArc3RhdGljIGludCBy
a19uZmNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiArewo+ICsJc3RydWN0
IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiArCXN0cnVjdCBya19uZmMgKm5mYzsKPiArCXN0
cnVjdCByZXNvdXJjZSAqcmVzOwo+ICsJaW50IHJldCwgaXJxOwo+ICsKPiArCW5mYyA9IGRldm1f
a3phbGxvYyhkZXYsIHNpemVvZigqbmZjKSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIW5mYykKPiAr
CQlyZXR1cm4gLUVOT01FTTsKPiArCj4gKwluYW5kX2NvbnRyb2xsZXJfaW5pdCgmbmZjLT5jb250
cm9sbGVyKTsKPiArCUlOSVRfTElTVF9IRUFEKCZuZmMtPmNoaXBzKTsKPiArCW5mYy0+Y29udHJv
bGxlci5vcHMgPSAmcmtfbmZjX2NvbnRyb2xsZXJfb3BzOwo+ICsKPiArCW5mYy0+Y2ZnID0gb2Zf
ZGV2aWNlX2dldF9tYXRjaF9kYXRhKGRldik7Cj4gKwluZmMtPmRldiA9IGRldjsKPiArCj4gKwlp
bml0X2NvbXBsZXRpb24oJm5mYy0+ZG9uZSk7Cj4gKwo+ICsJcmVzID0gcGxhdGZvcm1fZ2V0X3Jl
c291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKPiArCW5mYy0+cmVncyA9IGRldm1faW9y
ZW1hcF9yZXNvdXJjZShkZXYsIHJlcyk7CgpUaGVyZSBpcyBhIGRldm1fcGxhdGZvcm1faW9yZW1h
cF9yZXNvdXJjZSBmb3IgdGhhdAoKPiArCWlmIChJU19FUlIobmZjLT5yZWdzKSkgewo+ICsJCXJl
dCA9IFBUUl9FUlIobmZjLT5yZWdzKTsKPiArCQlnb3RvIHJlbGVhc2VfbmZjOwo+ICsJfQo+ICsK
PiArCW5mYy0+Y2xrLm5mY19jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAibmZjIik7Cj4gKwlpZiAo
SVNfRVJSKG5mYy0+Y2xrLm5mY19jbGspKSB7Cj4gKwkJZGV2X2RiZyhkZXYsICJubyBuZmMgY2xr
XG4iKTsKPiArCQkvKiBTb21lIG9sZCBkZXZpY2UsIHN1c2ggYXMgcmszMDY2LCBoYXMgbm8gbmZj
IGNsay4gKi8KCkkgd291bGQgZHJvcCB0aGUgZGJnIHRyYWNlIGFuZCByZWluaW5nIG5mY19jbGsg
dG8gTlVMTC4KCkFsc28gaXQgbWlnaHQgYmUgd29ydGggY2hlY2tpbmcgdGhlIGNvbXBhdGlibGUg
aGVyZSB0byBlbnN1cmUgdGhpcyBpcwphbGxvd2VkLgoKPiArCX0KPiArCj4gKwluZmMtPmNsay5h
aGJfY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgImFoYiIpOwo+ICsJaWYgKElTX0VSUihuZmMtPmNs
ay5haGJfY2xrKSkgewo+ICsJCWRldl9lcnIoZGV2LCAibm8gYWhiIGNsa1xuIik7Cj4gKwkJcmV0
ID0gUFRSX0VSUihuZmMtPmNsay5haGJfY2xrKTsKPiArCQlnb3RvIHJlbGVhc2VfbmZjOwo+ICsJ
fQo+ICsKPiArCXJldCA9IHJrX25mY19lbmFibGVfY2xrKGRldiwgJm5mYy0+Y2xrKTsKPiArCWlm
IChyZXQpCj4gKwkJZ290byByZWxlYXNlX25mYzsKPiArCj4gKwlpcnEgPSBwbGF0Zm9ybV9nZXRf
aXJxKHBkZXYsIDApOwo+ICsJaWYgKGlycSA8IDApIHsKPiArCQlkZXZfZXJyKGRldiwgIm5vIG5m
YyBpcnEgcmVzb3VyY2VcbiIpOwo+ICsJCXJldCA9IC1FSU5WQUw7Cj4gKwkJZ290byBjbGtfZGlz
YWJsZTsKPiArCX0KPiArCj4gKwl3cml0ZWwoMCwgbmZjLT5yZWdzICsgbmZjLT5jZmctPmludF9l
bl9vZmYpOwo+ICsJcmV0ID0gZGV2bV9yZXF1ZXN0X2lycShkZXYsIGlycSwgcmtfbmZjX2lycSwg
MHgwLCAicmstbmFuZCIsIG5mYyk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X2VycihkZXYsICJm
YWlsZWQgdG8gcmVxdWVzdCBuZmMgaXJxXG4iKTsKPiArCQlnb3RvIGNsa19kaXNhYmxlOwo+ICsJ
fQo+ICsKPiArCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIG5mYyk7Cj4gKwo+ICsJcmV0ID0g
cmtfbmZjX25hbmRfY2hpcHNfaW5pdChkZXYsIG5mYyk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2
X2VycihkZXYsICJmYWlsZWQgdG8gaW5pdCBuYW5kIGNoaXBzXG4iKTsKPiArCQlnb3RvIGNsa19k
aXNhYmxlOwo+ICsJfQo+ICsJcmV0dXJuIDA7Cj4gKwo+ICtjbGtfZGlzYWJsZToKPiArCXJrX25m
Y19kaXNhYmxlX2NsaygmbmZjLT5jbGspOwo+ICtyZWxlYXNlX25mYzoKPiArCXJldHVybiByZXQ7
Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgcmtfbmZjX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ICt7Cj4gKwlzdHJ1Y3QgcmtfbmZjICpuZmMgPSBwbGF0Zm9ybV9nZXRfZHJ2
ZGF0YShwZGV2KTsKPiArCXN0cnVjdCBya19uZmNfbmFuZF9jaGlwICpuYW5kOwo+ICsKPiArCXdo
aWxlICghbGlzdF9lbXB0eSgmbmZjLT5jaGlwcykpIHsKPiArCQluYW5kID0gbGlzdF9maXJzdF9l
bnRyeSgmbmZjLT5jaGlwcywgc3RydWN0IHJrX25mY19uYW5kX2NoaXAsCj4gKwkJCQkJbm9kZSk7
Cj4gKwkJbmFuZF9yZWxlYXNlKCZuYW5kLT5jaGlwKTsKCm5hbmRfcmVsZWFzZSBoYXMgYmVlbiBy
ZW1vdmVkIChpbiBMaW51cycgYnJhbmNoIHNpbmNlIHRoaXMKd2VlaykuCgo+ICsJCWxpc3RfZGVs
KCZuYW5kLT5ub2RlKTsKPiArCX0KPiArCj4gKwlya19uZmNfZGlzYWJsZV9jbGsoJm5mYy0+Y2xr
KTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBfX21heWJlX3VudXNl
ZCBya19uZmNfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gK3sKPiArCXN0cnVjdCBya19u
ZmMgKm5mYyA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ICsKPiArCXJrX25mY19kaXNhYmxlX2Ns
aygmbmZjLT5jbGspOwo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IF9f
bWF5YmVfdW51c2VkIHJrX25mY19yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICt7Cj4gKwlz
dHJ1Y3QgcmtfbmZjICpuZmMgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiArCXN0cnVjdCBya19u
ZmNfbmFuZF9jaGlwICpuYW5kOwo+ICsJc3RydWN0IG5hbmRfY2hpcCAqY2hpcDsKPiArCWludCBy
ZXQ7Cj4gKwl1MzIgaTsKPiArCj4gKwlyZXQgPSBya19uZmNfZW5hYmxlX2NsayhkZXYsICZuZmMt
PmNsayk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+ICsJLyogUmVzZXQgTkFO
RCBjaGlwIGlmIFZDQyB3YXMgcG93ZXJlZCBvZmYuICovCj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5
KG5hbmQsICZuZmMtPmNoaXBzLCBub2RlKSB7Cj4gKwkJY2hpcCA9ICZuYW5kLT5jaGlwOwo+ICsJ
CWZvciAoaSA9IDA7IGkgPCBuYW5kLT5uc2VsczsgaSsrKQo+ICsJCQluYW5kX3Jlc2V0KGNoaXAs
IGkpOwo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRldl9wbV9vcHMgcmtfbmZjX3BtX29wcyA9IHsKPiArCVNFVF9TWVNURU1fU0xFRVBfUE1f
T1BTKHJrX25mY19zdXNwZW5kLCBya19uZmNfcmVzdW1lKQo+ICt9Owo+ICsKPiArc3RhdGljIHN0
cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcmtfbmZjX2RyaXZlciA9IHsKPiArCS5wcm9iZSA9IHJrX25m
Y19wcm9iZSwKPiArCS5yZW1vdmUgPSBya19uZmNfcmVtb3ZlLAo+ICsJLmRyaXZlciA9IHsKPiAr
CQkubmFtZSA9ICJyb2NrY2hpcC1uZmMiLAo+ICsJCS5vZl9tYXRjaF90YWJsZSA9IHJrX25mY19p
ZF90YWJsZSwKPiArCQkucG0gPSAmcmtfbmZjX3BtX29wcywKPiArCX0sCj4gK307Cj4gKwo+ICtt
b2R1bGVfcGxhdGZvcm1fZHJpdmVyKHJrX25mY19kcml2ZXIpOwo+ICsKPiArTU9EVUxFX0xJQ0VO
U0UoIkR1YWwgTUlUL0dQTCIpOwo+ICtNT0RVTEVfQVVUSE9SKCJZaWZlbmcgWmhhbyA8eWlmZW5n
LnpoYW9Acm9jay1jaGlwcy5jb20+Iik7Cj4gK01PRFVMRV9ERVNDUklQVElPTigiUm9ja2NoaXAg
TmFuZCBGbGFzaCBDb250cm9sbGVyIERyaXZlciIpOwo+ICtNT0RVTEVfQUxJQVMoInBsYXRmb3Jt
OnJvY2tjaGlwLW5hbmQtY29udHJvbGxlciIpOwoKCgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
