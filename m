Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6564E1F903A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nibEktGQogbazL6yRh/Acs3GEvWhfHfaIuh9K8isgSo=; b=rP4b5SzcqFcjET
	domL2yc5kk17gCr0VYjfR3fssilIj3aVEBF8Yka+Cu0Qf/L+kA/ZvIIlqyohuj0n91lRJgAavld/8
	stbjLP+ClY4/BQKD26SqZ3R6E9nE12q00+UEcND9eCgHbnRIHbBfHNCSbZGdstHol7EUBWdUNGs3o
	Qu7jkeikrelbYcLSZpK+dGUJchRh4w2swzoyHu05WtC7sy9o0VjIl2x6HI3bZmfhm0ChaZ8zNw/A/
	ySkW4Mp7qCaZqpHRpa1BWHSZIjhhDU77FgGuc7M0tWDqolgvIlT5K/g2BgU3mkTbmWpFrmVvEFrLT
	QBpRs2jiuREIJ1bzYkQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjpv-0005Zy-Dm; Mon, 15 Jun 2020 07:47:19 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjpj-0005Yu-Tm; Mon, 15 Jun 2020 07:47:10 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 928171C0003;
 Mon, 15 Jun 2020 07:47:01 +0000 (UTC)
Date: Mon, 15 Jun 2020 09:47:00 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v6 2/8] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK2928 and others
Message-ID: <20200615094700.69342be1@xps13>
In-Reply-To: <7e4ce8b1-73c4-8b9a-5726-b121f53de8df@gmail.com>
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
 <20200609074020.23860-3-yifeng.zhao@rock-chips.com>
 <7e4ce8b1-73c4-8b9a-5726-b121f53de8df@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_004708_231943_3B72CDC8 
X-CRM114-Status: GOOD (  28.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, richard@nod.at,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 vigneshr@ti.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSm9oYW4sCgpKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPiB3cm90ZSBvbiBTYXQs
IDEzIEp1biAyMDIwIDE1OjMxOjUyCiswMjAwOgoKPiBIaSBZaWZlbmcsIE1pcXVlbCwKPiAKPiBT
b21lIG1vcmUgY29tbWVudHMgYWJvdXQgc3dhcCgpOwo+IAo+IE9uIDYvOS8yMCA5OjQwIEFNLCBZ
aWZlbmcgWmhhbyB3cm90ZToKPiAKPiBbLi5dCj4gCj4gPiArc3RhdGljIGludCBya19uZmNfb29i
bGF5b3V0X2ZyZWUoc3RydWN0IG10ZF9pbmZvICptdGQsIGludCBzZWN0aW9uLAo+ID4gKwkJCQkg
c3RydWN0IG10ZF9vb2JfcmVnaW9uICpvb2JfcmVnaW9uKQo+ID4gK3sKPiA+ICsJc3RydWN0IG5h
bmRfY2hpcCAqY2hpcCA9IG10ZF90b19uYW5kKG10ZCk7Cj4gPiArICAKPiAKPiA+ICsJaWYgKHNl
Y3Rpb24gPj0gY2hpcC0+ZWNjLnN0ZXBzKQo+ID4gKwkJcmV0dXJuIC1FUkFOR0U7ICAKPiAKPiBH
aXZlbjoKPiAKPiBORkNfU1lTX0RBVEFfU0laRSA9IDQKPiBjaGlwLT5lY2Muc3RlcHMgPSA4Cj4g
c2VjdGlvbiBbMC4uN10KPiAKPiBUb3RhbCBmcmVlIE9PQiBzaXplIGFkdmVydGlzZWQgdG8gdGhl
IE1URCBmcmFtZXdvcmsgaXM6Cj4gCj4gZWNjLnN0ZXBzICogTkZDX1NZU19EQVRBX1NJWkUgLSAx
IEJCTQo+IDggKiA0IC0gMSA9IDMxIGJ5dGVzCj4gCj4gV2l0aCBsaW5rIGFkZHJlc3MgaW4gT09C
IGJ5dGUgWzAuLjNdIHRoaXMgYmVjb21lOgo+IDMxIC0gNCA9IDI3IGJ5dGVzCj4gCj4gRG9lcyB0
aGF0IGdpdmUgZGF0YSBsb3N0Pwo+IFNob3VsZCB3ZSBsaW1pdCB0aGUgbnVtYmVyIG9mIGZyZWUg
T09CIGJ5dGVzIGJ5IDQgbW9yZSB0byBiZSBzYXZlPwo+IElzIG15IGNhbGN1bGF0aW9uIGNvcnJl
Y3Q/CgpJIGRvbid0IGtub3cgd2hhdCBsaW5rIGFkZHJlc3MgaXMsIGJ1dCB5ZXMgaWYgaXQncyBh
biBhcmVhIHVzZWQgYnkgdGhlCmNvbnRyb2xsZXIgZm9yIHdoYXRldmVyIHJlYXNvbiBpdCBzaG91
bGQgYmUgbGVmdCBhbG9uZSwgbmVpdGhlciAiZnJlZSIKbm9yICJlY2MiLgoKPiAKPiBTZWUgZnVy
dGhlciBxdWVzdGlvbnMgYWJvdXQgdGhpcyBiZWxvdy4KPiAKPiA+ICsKPiA+ICsJaWYgKCFzZWN0
aW9uKSB7Cj4gPiArCQkvKiBUaGUgZmlyc3QgYnl0ZSBpcyBiYWQgYmxvY2sgbWFzayBmbGFnLiAq
Lwo+ID4gKwkJb29iX3JlZ2lvbi0+bGVuZ3RoID0gTkZDX1NZU19EQVRBX1NJWkUgLSAxOwo+ID4g
KwkJb29iX3JlZ2lvbi0+b2Zmc2V0ID0gMTsKPiA+ICsJfSBlbHNlIHsKPiA+ICsJCW9vYl9yZWdp
b24tPmxlbmd0aCA9IE5GQ19TWVNfREFUQV9TSVpFOwo+ID4gKwkJb29iX3JlZ2lvbi0+b2Zmc2V0
ID0gc2VjdGlvbiAqIE5GQ19TWVNfREFUQV9TSVpFOwo+ID4gKwl9Cj4gPiArCj4gPiArCXJldHVy
biAwOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW50IHJrX25mY19vb2JsYXlvdXRfZWNjKHN0
cnVjdCBtdGRfaW5mbyAqbXRkLCBpbnQgc2VjdGlvbiwKPiA+ICsJCQkJc3RydWN0IG10ZF9vb2Jf
cmVnaW9uICpvb2JfcmVnaW9uKQo+ID4gK3sKPiA+ICsJc3RydWN0IG5hbmRfY2hpcCAqY2hpcCA9
IG10ZF90b19uYW5kKG10ZCk7Cj4gPiArICAKPiAKPiA+ICsJaWYgKHNlY3Rpb24pCj4gPiArCQly
ZXR1cm4gLUVSQU5HRTsgIAo+IAo+IFdpdGggdGhlIGZvcm11bGUgYWJvdmUgYSBzZWN0aW9uID4g
MCBkb2VzIG5vdCBhbG93IEVDQy4KPiAKPiBKdXN0IGEgcXVlc3Rpb24gYWJvdXQgdGhlIE1URCBp
bm5lciB3b3JraW5nIGZvciBNaXF1ZWw6Cj4gCj4gV2l0aCBvb2JsYXlvdXRfZnJlZSB1c2luZyA4
IHN0ZXBzIGFuZCB0aGlzIGp1c3QgMSBkb2VzIGl0IHN0aWxsIGdlbmVyYXRlCj4gdGhlIGNvcnJl
Y3QgRUNDPyBEb2VzIGl0IGNhbGN1bGF0ZSBFQ0Mgb3ZlciAxMDI0QiBvciBvdmVyIDgqMTAyNEIg
PwoKVGhlc2UgZnVuY3Rpb25zIGRvIG5vdCBnZW5lcmF0ZSBhbnl0aGluZyBhbmQgaXQncyBqdXN0
IGEgaGVscGVyIHRvCnJldHJpZXZlIHRoZSBFQ0Mgb3IgZnJlZSBieXRlcywgbWVhbmluZyB0aGF0
IGlmIHlvdSBoYXZlIDQgRUNDIGJ5dGVzCnBlciBzdGVwLCBhbGwgY29uY2F0ZW5hdGVkLCB5b3Ug
d2lsbCBlbmQgd2l0aCB3aXRoIGFuIHVuaXF1ZSAgRUNDCnNlY3Rpb24gb2YgOCAqIDQgRUNDIGJ5
dGVzLCB0aGlzIGlzIHBlcmZlY3RseSBmaW5lLgoKPiAKPiBTaG91bGQgd2UgbW92ZSB0aGUgdGV4
dCB0aGF0IGV4cGxhaW5zIHRoZSBsYXlvdXQgY2xvc2VyIHRvIHRoZXNlCj4gZnVuY3Rpb25zIGFu
ZCBhZGQgYSBsaXR0bGUgbW9yZSB0ZXh0IHRvIGV4cGxhaW4gd2h5IHdlIGNob29zZSB0aGlzCj4g
cGFydGljdWxhciBsYXlvdXQ/CgpZZXMgcGxlYXNlLgoKPiAKPiAvKgo+ICAqIE5GQyBQYWdlIERh
dGEgTGF5b3V0Ogo+ICAqCTEwMjQgQnl0ZXMgRGF0YSArIDRCeXRlcyBzeXMgZGF0YSArIDI4Qnl0
ZXN+MTI0Qnl0ZXMgZWNjICsKPiAgKgkxMDI0IEJ5dGVzIERhdGEgKyA0Qnl0ZXMgc3lzIGRhdGEg
KyAyOEJ5dGVzfjEyNEJ5dGVzIGVjYyArCj4gICoJLi4uLi4uCj4gICogTkFORCBQYWdlIERhdGEg
TGF5b3V0Ogo+ICAqCTEwMjQgKiBuIERhdGEgKyBtIEJ5dGVzIG9vYgo+ICAqIE9yaWdpbmFsIEJh
ZCBCbG9jayBNYXNrIExvY2F0aW9uOgo+ICAqCUZpcnN0IGJ5dGUgb2Ygb29iKHNwYXJlKS4KPiAg
KiBuYW5kX2NoaXAtPm9vYl9wb2kgZGF0YSBsYXlvdXQ6Cj4gICoJNEJ5dGVzIHN5cyBkYXRhICsg
Li4uLiArIDRCeXRlcyBzeXMgZGF0YSArIGVjYyBkYXRhLgo+ICAqLwo+IAo+IFdlIGV4cGVjdCBu
b3cgRUNDIGRhdGEgYWZ0ZXIgbiBzdGVwcyAqIDQgT09CIGJ5dGVzLAoKZmluZQoKPiBidXQgYXJl
IHdlIHN0aWxsIHVzaW5nIGl0IHdpdGggSFcgRUNDIG9yIG9ubHkgZm9yIHJhdz8KCmJvdGgsIHlv
dSBuZWVkIHRvIGVuc3VyZSByZWFkaW5nIGEgcmF3IHBhZ2VzIGdpdmVzIHlvdSBhIHJlZ3VsYXIK
ZGF0YStlY2Mgb3JnYW5pemF0aW9uIGluc3RlYWQgb2YgdGhlIE5GQydzIGxheW91dC4KCj4gCj4g
PiArCj4gPiArCW9vYl9yZWdpb24tPm9mZnNldCA9IE5GQ19TWVNfREFUQV9TSVpFICogY2hpcC0+
ZWNjLnN0ZXBzOwo+ID4gKwlvb2JfcmVnaW9uLT5sZW5ndGggPSBtdGQtPm9vYnNpemUgLSBvb2Jf
cmVnaW9uLT5vZmZzZXQ7Cj4gPiArCj4gPiArCXJldHVybiAwOwo+ID4gK30KPiA+ICsKPiA+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IG10ZF9vb2JsYXlvdXRfb3BzIHJrX25mY19vb2JsYXlvdXRfb3Bz
ID0gewo+ID4gKwkuZnJlZSA9IHJrX25mY19vb2JsYXlvdXRfZnJlZSwKPiA+ICsJLmVjYyA9IHJr
X25mY19vb2JsYXlvdXRfZWNjLAo+ID4gK307ICAKPiAKPiBbLi5dCj4gCj4gPiArc3RhdGljIGlu
dCBya19uZmNfd3JpdGVfcGFnZShzdHJ1Y3QgbXRkX2luZm8gKm10ZCwgc3RydWN0IG5hbmRfY2hp
cCAqY2hpcCwKPiA+ICsJCQkgICAgIGNvbnN0IHU4ICpidWYsIGludCBwYWdlLCBpbnQgcmF3KQo+
ID4gK3sKPiA+ICsJc3RydWN0IHJrX25mYyAqbmZjID0gbmFuZF9nZXRfY29udHJvbGxlcl9kYXRh
KGNoaXApOwo+ID4gKwlzdHJ1Y3QgcmtfbmZjX25hbmRfY2hpcCAqcmtfbmFuZCA9IHRvX3JrX25h
bmQoY2hpcCk7Cj4gPiArCXN0cnVjdCBuYW5kX2VjY19jdHJsICplY2MgPSAmY2hpcC0+ZWNjOwo+
ID4gKwlpbnQgb29iX3N0ZXAgPSAoZWNjLT5ieXRlcyA+IDYwKSA/IE5GQ19NQVhfT09CX1BFUl9T
VEVQIDoKPiA+ICsJCQlORkNfTUlOX09PQl9QRVJfU1RFUDsKPiA+ICsJaW50IHBhZ2VzX3Blcl9i
bGsgPSBtdGQtPmVyYXNlc2l6ZSAvIG10ZC0+d3JpdGVzaXplOwo+ID4gKwlpbnQgcmV0ID0gMCwg
aSwgYm9vdF9yb21fbW9kZSA9IDA7Cj4gPiArCWRtYV9hZGRyX3QgZG1hX2RhdGEsIGRtYV9vb2I7
Cj4gPiArCXUzMiByZWc7Cj4gPiArCXU4ICpvb2I7Cj4gPiArCj4gPiArCW5hbmRfcHJvZ19wYWdl
X2JlZ2luX29wKGNoaXAsIHBhZ2UsIDAsIE5VTEwsIDApOwo+ID4gKwo+ID4gKwlpZiAoIXJhdykg
ewo+ID4gKwkJbWVtY3B5KG5mYy0+cGFnZV9idWYsIGJ1ZiwgbXRkLT53cml0ZXNpemUpOwo+ID4g
KwkJbWVtc2V0KG5mYy0+b29iX2J1ZiwgMHhmZiwgb29iX3N0ZXAgKiBlY2MtPnN0ZXBzKTsKPiA+
ICsKPiA+ICsJCS8qCj4gPiArCQkgKiBUaGUgZmlyc3QgOChzb21lIGRldmljZXMgYXJlIDQgb3Ig
MTYpIGJsb2NrcyBpbiB1c2UgYnkKPiA+ICsJCSAqIHRoZSBib290IFJPTSBhbmQgdGhlIGZpcnN0
IDMyIGJpdHMgb2Ygb29iIG5lZWQgdG8gbGluawo+ID4gKwkJICogdG8gdGhlIG5leHQgcGFnZSBh
ZGRyZXNzIGluIHRoZSBzYW1lIGJsb2NrLgo+ID4gKwkJICogQ29uZmlnIHRoZSBFQ0MgYWxnb3Jp
dGhtIHN1cHBvcnRlZCBieSB0aGUgYm9vdCBST00uCj4gPiArCQkgKi8KPiA+ICsJCWlmIChwYWdl
IDwgcGFnZXNfcGVyX2JsayAqIHJrX25hbmQtPmJvb3RfYmxrcyAmJgo+ID4gKwkJICAgIGNoaXAt
Pm9wdGlvbnMgJiBOQU5EX0lTX0JPT1RfTUVESVVNKSB7Cj4gPiArCQkJYm9vdF9yb21fbW9kZSA9
IDE7Cj4gPiArCQkJaWYgKHJrX25hbmQtPmJvb3RfZWNjICE9IGVjYy0+c3RyZW5ndGgpCj4gPiAr
CQkJCXJrX25mY19od19lY2Nfc2V0dXAoY2hpcCwgZWNjLAo+ID4gKwkJCQkJCSAgICBya19uYW5k
LT5ib290X2VjYyk7Cj4gPiArCQl9Cj4gPiArCj4gPiArCQkvKgo+ID4gKwkJICogU3dhcCB0aGUg
Zmlyc3Qgb29iIHdpdGggdGhlIHNldmVudGggb29iIGFuZCBiYWQgYmxvY2sKPiA+ICsJCSAqIG1h
c2sgaXMgc2F2ZWQgYXQgdGhlIHNldmVudGggb29iLgo+ID4gKwkJICovCj4gPiArCQlzd2FwKGNo
aXAtPm9vYl9wb2lbMF0sIGNoaXAtPm9vYl9wb2lbN10pOyAgCj4gCj4gQWRkIG1vcmUgaW5mbyBv
biB3aHkgdGhpcyBpcyBzd2FwcGVkLgo+IAo+IExBWzAuLjNdIGlzIGEgbGluayBhZGRyZXNzIHRo
YXQgdGhlIEJCTSBzaG91bGRuJ3Qgb3ZlciB3cml0ZS4KPiBGb3IgWWlmZW5nOiBJcyB0aGVyZSBh
biBvdGhlciByZWFzb24/Cj4gCj4gQmVmb3JlIHN3YXA6Cj4gCj4gQkJNICBPT0IxIE9PQjIgT09C
MywgT09CNCBPT0I1IE9PQjYgT09CNywgT09COCAuLi4uCj4gCj4gQWZ0ZXIgc3dhcDoKPiAKPiBP
T0I3IE9PQjEgT09CMiBPT0IzLCBPT0I0IE9PQjUgT09CNiBCQk0gLCBPT0I4IC4uLi4KPiAKPiBJ
ZiAoIWkgJiYgYm9vdF9yb21fbW9kZSk6Cj4gCj4gTEEwICBMQTEgIExBMiAgTEEzICwgT09CNCBP
T0I1IE9PQjYgQkJNICwgT09COCAuLi4uCj4gCj4gUmVhZCBiYWNrIGFmdGVyIHN3YXAgYWdhaW46
Cj4gCj4gQkJNICBMQTEgIExBMiAgTEEzICwgT09CNCBPT0I1IE9PQjYgTEEwICwgT09COCAuLi4u
Cj4gCj4gUXVlc3Rpb246Cj4gQXJlIGRhdGEgT09CNyBPT0IxIE9PQjIgT09CMyBsb3N0IG5vdz8K
PiBJcyB0aGlzIGNvcnJlY3Q/Cj4gCj4gIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIwo+IFByb3Bvc2FsOgo+IFNob3VsZCB3ZSByZWR1Y2UgdGhlIGZyZWUg
T09CIHNpemUgYnkgNAo+IGFuZCBzaGlmdCBldmVyeXRoaW5nIDQgYnl0ZXMgdG8gcmVjb3ZlciBh
bGwgYnl0ZXM/Cj4gUmVwbGFjZSB0aGUgZmlyc3QgNCBieXRlcyB3aXRoIDBYRkYgb3IgTEFbMC4u
M10uCj4gCj4gTm9ybWFsOgo+IDB4RkYgMFhGRiAwWEZGIDB4RkYsIEJCTSAgT09CMSBPT0IyIE9P
QjMsIE9PQjQKPiAKPiBJZiAoIWkgJiYgYm9vdF9yb21fbW9kZSk6Cj4gTEEwICBMQTEgIExBMiAg
TEEzICwgQkJNICBPT0IxIE9PQjIgT09CMywgT09CNAo+IAo+IFF1ZXN0aW9uIGZvciBNaXF1ZWwg
YW5kIFlpZmVuZzoKPiBEb2VzIHRoaXMgd29yaz8gQ291bGQgeW91IHRlc3Q/Cj4gCj4gPiArCj4g
PiArCQlmb3IgKGkgPSAwOyBpIDwgZWNjLT5zdGVwczsgaSsrKSB7ICAKPiAKPiBKdXN0IGEgcHJv
cG9zZWw6Cj4gCj4gCQlpZiAoIWkgJiYgYm9vdF9yb21fbW9kZSkKPiAJCQlyZWcgPSAocGFnZSAm
IChwYWdlc19wZXJfYmxrIC0gMSkpICogNDsKPiAJCWVsc2UgaWYgKCFpKQo+IAkJCXJlZyA9IDB4
RkZGRkZGRkY7Cj4gCQllbHNlCQo+IAkJCW9vYiA9IGNoaXAtPm9vYl9wb2kgKyAoaS0xKSAqIE5G
Q19TWVNfREFUQV9TSVpFOwo+IAkJCXJlZyA9IG9vYlswXSB8IG9vYlsxXSA8PCA4IHwgb29iWzJd
IDw8IDE2IHwKPiAJCQkgICAgICBvb2JbM10gPDwgMjQ7Cj4gCj4gPiArCj4gPiArCQkJaWYgKG5m
Yy0+Y2ZnLT50eXBlID09IE5GQ19WNiB8fAo+ID4gKwkJCSAgICBuZmMtPmNmZy0+dHlwZSA9PSBO
RkNfVjgpCj4gPiArCQkJCW5mYy0+b29iX2J1ZltpICogb29iX3N0ZXAgLyA0XSA9IHJlZzsKPiA+
ICsJCQllbHNlCj4gPiArCQkJCW5mYy0+b29iX2J1ZltpXSA9IHJlZzsKPiA+ICsJCX0KPiA+ICsK
PiA+ICsJCWRtYV9kYXRhID0gZG1hX21hcF9zaW5nbGUobmZjLT5kZXYsICh2b2lkICopbmZjLT5w
YWdlX2J1ZiwKPiA+ICsJCQkJCSAgbXRkLT53cml0ZXNpemUsIERNQV9UT19ERVZJQ0UpOwo+ID4g
KwkJZG1hX29vYiA9IGRtYV9tYXBfc2luZ2xlKG5mYy0+ZGV2LCBuZmMtPm9vYl9idWYsCj4gPiAr
CQkJCQkgZWNjLT5zdGVwcyAqIG9vYl9zdGVwLAo+ID4gKwkJCQkJIERNQV9UT19ERVZJQ0UpOwo+
ID4gKwo+ID4gKwkJcmVpbml0X2NvbXBsZXRpb24oJm5mYy0+ZG9uZSk7Cj4gPiArCQl3cml0ZWwo
SU5UX0RNQSwgbmZjLT5yZWdzICsgbmZjLT5jZmctPmludF9lbl9vZmYpOwo+ID4gKwo+ID4gKwkJ
cmtfbmZjX3hmZXJfc3RhcnQobmZjLCBORkNfV1JJVEUsIGVjYy0+c3RlcHMsIGRtYV9kYXRhLAo+
ID4gKwkJCQkgIGRtYV9vb2IpOwo+ID4gKwkJcmV0ID0gd2FpdF9mb3JfY29tcGxldGlvbl90aW1l
b3V0KCZuZmMtPmRvbmUsCj4gPiArCQkJCQkJICBtc2Vjc190b19qaWZmaWVzKDEwMCkpOwo+ID4g
KwkJaWYgKCFyZXQpCj4gPiArCQkJZGV2X3dhcm4obmZjLT5kZXYsICJ3cml0ZTogd2FpdCBkbWEg
ZG9uZSB0aW1lb3V0LlxuIik7Cj4gPiArCQkvKgo+ID4gKwkJICogV2hldGhlciB0aGUgRE1BIHRy
YW5zZmVyIGlzIGNvbXBsZXRlZCBvciBub3QuIFRoZSBkcml2ZXIKPiA+ICsJCSAqIG5lZWRzIHRv
IGNoZWNrIHRoZSBORkNgcyBzdGF0dXMgcmVnaXN0ZXIgdG8gc2VlIGlmIHRoZSBkYXRhCj4gPiAr
CQkgKiB0cmFuc2ZlciB3YXMgY29tcGxldGVkLgo+ID4gKwkJICovCj4gPiArCQlyZXQgPSBya19u
ZmNfd2FpdF9mb3JfeGZlcl9kb25lKG5mYyk7Cj4gPiArCj4gPiArCQlkbWFfdW5tYXBfc2luZ2xl
KG5mYy0+ZGV2LCBkbWFfZGF0YSwgbXRkLT53cml0ZXNpemUsCj4gPiArCQkJCSBETUFfVE9fREVW
SUNFKTsKPiA+ICsJCWRtYV91bm1hcF9zaW5nbGUobmZjLT5kZXYsIGRtYV9vb2IsIGVjYy0+c3Rl
cHMgKiBvb2Jfc3RlcCwKPiA+ICsJCQkJIERNQV9UT19ERVZJQ0UpOwo+ID4gKwo+ID4gKwkJaWYg
KGJvb3Rfcm9tX21vZGUgJiYgcmtfbmFuZC0+Ym9vdF9lY2MgIT0gZWNjLT5zdHJlbmd0aCkKPiA+
ICsJCQlya19uZmNfaHdfZWNjX3NldHVwKGNoaXAsIGVjYywgZWNjLT5zdHJlbmd0aCk7Cj4gPiAr
Cj4gPiArCQlpZiAocmV0KSB7Cj4gPiArCQkJcmV0ID0gLUVJTzsKPiA+ICsJCQlkZXZfZXJyKG5m
Yy0+ZGV2LAo+ID4gKwkJCQkgIndyaXRlOiB3YWl0IHRyYW5zZmVyIGRvbmUgdGltZW91dC5cbiIp
Owo+ID4gKwkJfQo+ID4gKwl9IGVsc2Ugewo+ID4gKwkJcmtfbmZjX3dyaXRlX2J1ZihjaGlwLCBi
dWYsIG10ZC0+d3JpdGVzaXplICsgKyBtdGQtPm9vYnNpemUpOyAgCj4gCj4gUmVtb3ZlIGEgJysn
Cj4gCj4gPiArCX0KPiA+ICsKPiA+ICsJaWYgKHJldCkKPiA+ICsJCXJldHVybiByZXQ7Cj4gPiAr
Cj4gPiArCXJldCA9IG5hbmRfcHJvZ19wYWdlX2VuZF9vcChjaGlwKTsKPiA+ICsKPiA+ICsJLyog
RGVzZWxlY3QgdGhlIGN1cnJlbnRseSBzZWxlY3RlZCB0YXJnZXQuICovCj4gPiArCXJrX25mY19z
ZWxlY3RfY2hpcChjaGlwLCAtMSk7Cj4gPiArCj4gPiArCXJldHVybiByZXQ7Cj4gPiArfQo+ID4g
Kwo+ID4gK3N0YXRpYyBpbnQgcmtfbmZjX3dyaXRlX3BhZ2VfcmF3KHN0cnVjdCBuYW5kX2NoaXAg
KmNoaXAsIGNvbnN0IHU4ICpidWYsCj4gPiArCQkJCSBpbnQgb29iX29uLCBpbnQgcGFnZSkKPiA+
ICt7Cj4gPiArCXN0cnVjdCBtdGRfaW5mbyAqbXRkID0gbmFuZF90b19tdGQoY2hpcCk7Cj4gPiAr
CXN0cnVjdCBya19uZmMgKm5mYyA9IG5hbmRfZ2V0X2NvbnRyb2xsZXJfZGF0YShjaGlwKTsKPiA+
ICsJdTMyIGk7Cj4gPiArCj4gPiArCW1lbXNldChuZmMtPmJ1ZmZlciwgMHhmZiwgbXRkLT53cml0
ZXNpemUgKyBtdGQtPm9vYnNpemUpOwo+ID4gKwlzd2FwKGNoaXAtPm9vYl9wb2lbMF0sIGNoaXAt
Pm9vYl9wb2lbN10pOwo+ID4gKwlmb3IgKGkgPSAwOyBpIDwgY2hpcC0+ZWNjLnN0ZXBzOyBpKysp
IHsKPiA+ICsJCWlmIChidWYpCj4gPiArCQkJbWVtY3B5KHJrX2RhdGFfcHRyKGNoaXAsIGkpLCBk
YXRhX3B0cihjaGlwLCBidWYsIGkpLAo+ID4gKwkJCSAgICAgICBjaGlwLT5lY2Muc2l6ZSk7Cj4g
PiArCj4gPiArCQltZW1jcHkocmtfb29iX3B0cihjaGlwLCBpKSwgb29iX3B0cihjaGlwLCBpKSwK
PiA+ICsJCSAgICAgICBORkNfU1lTX0RBVEFfU0laRSk7Cj4gPiArCX0KPiA+ICsKPiA+ICsJcmV0
dXJuIHJrX25mY193cml0ZV9wYWdlKG10ZCwgY2hpcCwgbmZjLT5idWZmZXIsIHBhZ2UsIDEpOwo+
ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW50IHJrX25mY193cml0ZV9vb2Jfc3RkKHN0cnVjdCBu
YW5kX2NoaXAgKmNoaXAsIGludCBwYWdlKQo+ID4gK3sKPiA+ICsJcmV0dXJuIHJrX25mY193cml0
ZV9wYWdlX3JhdyhjaGlwLCBOVUxMLCAxLCBwYWdlKTsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGlj
IGludCBya19uZmNfcmVhZF9wYWdlKHN0cnVjdCBtdGRfaW5mbyAqbXRkLCBzdHJ1Y3QgbmFuZF9j
aGlwICpjaGlwLAo+ID4gKwkJCSAgICB1MzIgZGF0YV9vZmZzLCB1MzIgcmVhZGxlbiwKPiA+ICsJ
CQkgICAgdTggKmJ1ZiwgaW50IHBhZ2UsIGludCByYXcpCj4gPiArewo+ID4gKwlzdHJ1Y3Qgcmtf
bmZjICpuZmMgPSBuYW5kX2dldF9jb250cm9sbGVyX2RhdGEoY2hpcCk7Cj4gPiArCXN0cnVjdCBy
a19uZmNfbmFuZF9jaGlwICpya19uYW5kID0gdG9fcmtfbmFuZChjaGlwKTsKPiA+ICsJc3RydWN0
IG5hbmRfZWNjX2N0cmwgKmVjYyA9ICZjaGlwLT5lY2M7Cj4gPiArCWludCBvb2Jfc3RlcCA9IChl
Y2MtPmJ5dGVzID4gNjApID8gTkZDX01BWF9PT0JfUEVSX1NURVAgOgo+ID4gKwkJCU5GQ19NSU5f
T09CX1BFUl9TVEVQOwo+ID4gKwlpbnQgcGFnZXNfcGVyX2JsayA9IG10ZC0+ZXJhc2VzaXplIC8g
bXRkLT53cml0ZXNpemU7Cj4gPiArCWRtYV9hZGRyX3QgZG1hX2RhdGEsIGRtYV9vb2I7Cj4gPiAr
CWludCByZXQgPSAwLCBpLCBib290X3JvbV9tb2RlID0gMDsKPiA+ICsJaW50IGJpdGZsaXBzID0g
MCwgYmNoX3N0Owo+ID4gKwl1OCAqb29iOwo+ID4gKwl1MzIgdG1wOwo+ID4gKwo+ID4gKwluYW5k
X3JlYWRfcGFnZV9vcChjaGlwLCBwYWdlLCAwLCBOVUxMLCAwKTsKPiA+ICsJaWYgKCFyYXcpIHsK
PiA+ICsJCWRtYV9kYXRhID0gZG1hX21hcF9zaW5nbGUobmZjLT5kZXYsIG5mYy0+cGFnZV9idWYs
Cj4gPiArCQkJCQkgIG10ZC0+d3JpdGVzaXplLAo+ID4gKwkJCQkJICBETUFfRlJPTV9ERVZJQ0Up
Owo+ID4gKwkJZG1hX29vYiA9IGRtYV9tYXBfc2luZ2xlKG5mYy0+ZGV2LCBuZmMtPm9vYl9idWYs
Cj4gPiArCQkJCQkgZWNjLT5zdGVwcyAqIG9vYl9zdGVwLAo+ID4gKwkJCQkJIERNQV9GUk9NX0RF
VklDRSk7Cj4gPiArCj4gPiArCQkvKgo+ID4gKwkJICogVGhlIGZpcnN0IDgoc29tZSBkZXZpY2Vz
IGFyZSA0IG9yIDE2KSBibG9ja3MgaW4gdXNlIGJ5Cj4gPiArCQkgKiB0aGUgYm9vdHJvbS4KPiA+
ICsJCSAqIENvbmZpZyB0aGUgRUNDIGFsZ29yaXRobSBzdXBwb3J0ZWQgYnkgdGhlIGJvb3QgUk9N
Lgo+ID4gKwkJICovCj4gPiArCQlpZiAocGFnZSA8IHBhZ2VzX3Blcl9ibGsgKiBya19uYW5kLT5i
b290X2Jsa3MgJiYKPiA+ICsJCSAgICBjaGlwLT5vcHRpb25zICYgTkFORF9JU19CT09UX01FRElV
TSkgewo+ID4gKwkJCWJvb3Rfcm9tX21vZGUgPSAxOwo+ID4gKwkJCWlmIChya19uYW5kLT5ib290
X2VjYyAhPSBlY2MtPnN0cmVuZ3RoKQo+ID4gKwkJCQlya19uZmNfaHdfZWNjX3NldHVwKGNoaXAs
IGVjYywKPiA+ICsJCQkJCQkgICAgcmtfbmFuZC0+Ym9vdF9lY2MpOwo+ID4gKwkJfQo+ID4gKwo+
ID4gKwkJcmVpbml0X2NvbXBsZXRpb24oJm5mYy0+ZG9uZSk7Cj4gPiArCQl3cml0ZWwoSU5UX0RN
QSwgbmZjLT5yZWdzICsgbmZjLT5jZmctPmludF9lbl9vZmYpOwo+ID4gKwkJcmtfbmZjX3hmZXJf
c3RhcnQobmZjLCBORkNfUkVBRCwgZWNjLT5zdGVwcywgZG1hX2RhdGEsCj4gPiArCQkJCSAgZG1h
X29vYik7Cj4gPiArCQlyZXQgPSB3YWl0X2Zvcl9jb21wbGV0aW9uX3RpbWVvdXQoJm5mYy0+ZG9u
ZSwKPiA+ICsJCQkJCQkgIG1zZWNzX3RvX2ppZmZpZXMoMTAwKSk7Cj4gPiArCQlpZiAoIXJldCkK
PiA+ICsJCQlkZXZfd2FybihuZmMtPmRldiwgInJlYWQ6IHdhaXQgZG1hIGRvbmUgdGltZW91dC5c
biIpOwo+ID4gKwkJLyoKPiA+ICsJCSAqIFdoZXRoZXIgdGhlIERNQSB0cmFuc2ZlciBpcyBjb21w
bGV0ZWQgb3Igbm90LiBUaGUgZHJpdmVyCj4gPiArCQkgKiBuZWVkcyB0byBjaGVjayB0aGUgTkZD
YHMgc3RhdHVzIHJlZ2lzdGVyIHRvIHNlZSBpZiB0aGUgZGF0YQo+ID4gKwkJICogdHJhbnNmZXIg
d2FzIGNvbXBsZXRlZC4KPiA+ICsJCSAqLwo+ID4gKwkJcmV0ID0gcmtfbmZjX3dhaXRfZm9yX3hm
ZXJfZG9uZShuZmMpOwo+ID4gKwkJZG1hX3VubWFwX3NpbmdsZShuZmMtPmRldiwgZG1hX2RhdGEs
IG10ZC0+d3JpdGVzaXplLAo+ID4gKwkJCQkgRE1BX0ZST01fREVWSUNFKTsKPiA+ICsJCWRtYV91
bm1hcF9zaW5nbGUobmZjLT5kZXYsIGRtYV9vb2IsIGVjYy0+c3RlcHMgKiBvb2Jfc3RlcCwKPiA+
ICsJCQkJIERNQV9GUk9NX0RFVklDRSk7Cj4gPiArCj4gPiArCQlpZiAocmV0KSB7Cj4gPiArCQkJ
Yml0ZmxpcHMgPSAtRUlPOwo+ID4gKwkJCWRldl9lcnIobmZjLT5kZXYsCj4gPiArCQkJCSAicmVh
ZDogd2FpdCB0cmFuc2ZlciBkb25lIHRpbWVvdXQuXG4iKTsKPiA+ICsJCQlnb3RvIG91dDsKPiA+
ICsJCX0KPiA+ICsKPiA+ICsJCWZvciAoaSA9IDA7IGkgPCBlY2MtPnN0ZXBzOyBpKyspIHsKPiA+
ICsJCQlvb2IgPSBjaGlwLT5vb2JfcG9pICsgaSAqIE5GQ19TWVNfREFUQV9TSVpFOwo+ID4gKwkJ
CWlmIChuZmMtPmNmZy0+dHlwZSA9PSBORkNfVjYgfHwKPiA+ICsJCQkgICAgbmZjLT5jZmctPnR5
cGUgPT0gTkZDX1Y4KQo+ID4gKwkJCQl0bXAgPSBuZmMtPm9vYl9idWZbaSAqIG9vYl9zdGVwIC8g
NF07Cj4gPiArCQkJZWxzZQo+ID4gKwkJCQl0bXAgPSBuZmMtPm9vYl9idWZbaV07Cj4gPiArCQkJ
Km9vYisrID0gKHU4KXRtcDsKPiA+ICsJCQkqb29iKysgPSAodTgpKHRtcCA+PiA4KTsKPiA+ICsJ
CQkqb29iKysgPSAodTgpKHRtcCA+PiAxNik7Cj4gPiArCQkJKm9vYisrID0gKHU4KSh0bXAgPj4g
MjQpOwo+ID4gKwkJfQo+ID4gKwo+ID4gKwkJLyoKPiA+ICsJCSAqIFN3YXAgdGhlIGZpcnN0IG9v
YiB3aXRoIHRoZSBzZXZlbnRoIG9vYiBhbmQgYmFkIGJsb2NrCj4gPiArCQkgKiBtYXNrIGlzIHNh
dmVkIGF0IHRoZSBzZXZlbnRoIG9vYi4KPiA+ICsJCSAqLwo+ID4gKwkJc3dhcChjaGlwLT5vb2Jf
cG9pWzBdLCBjaGlwLT5vb2JfcG9pWzddKTsKPiA+ICsKPiA+ICsJCWZvciAoaSA9IDA7IGkgPCBl
Y2MtPnN0ZXBzIC8gMjsgaSsrKSB7Cj4gPiArCQkJYmNoX3N0ID0gcmVhZGxfcmVsYXhlZChuZmMt
PnJlZ3MgKwo+ID4gKwkJCQkJICAgICAgIG5mYy0+Y2ZnLT5iY2hfc3Rfb2ZmICsgaSAqIDQpOwo+
ID4gKwkJCWlmIChiY2hfc3QgJiBCSVQobmZjLT5jZmctPmVjYzAuZXJyX2ZsYWdfYml0KSB8fAo+
ID4gKwkJCSAgICBiY2hfc3QgJiBCSVQobmZjLT5jZmctPmVjYzEuZXJyX2ZsYWdfYml0KSkgewo+
ID4gKwkJCQltdGQtPmVjY19zdGF0cy5mYWlsZWQrKzsKPiA+ICsJCQkJYml0ZmxpcHMgPSAtMTsK
PiA+ICsJCQl9IGVsc2Ugewo+ID4gKwkJCQlyZXQgPSBFQ0NfRVJSX0NOVChiY2hfc3QsIG5mYy0+
Y2ZnLT5lY2MwKTsKPiA+ICsJCQkJbXRkLT5lY2Nfc3RhdHMuY29ycmVjdGVkICs9IHJldDsKPiA+
ICsJCQkJYml0ZmxpcHMgPSBtYXhfdCh1MzIsIGJpdGZsaXBzLCByZXQpOwo+ID4gKwo+ID4gKwkJ
CQlyZXQgPSBFQ0NfRVJSX0NOVChiY2hfc3QsIG5mYy0+Y2ZnLT5lY2MxKTsKPiA+ICsJCQkJbXRk
LT5lY2Nfc3RhdHMuY29ycmVjdGVkICs9IHJldDsKPiA+ICsJCQkJYml0ZmxpcHMgPSBtYXhfdCh1
MzIsIGJpdGZsaXBzLCByZXQpOwo+ID4gKwkJCX0KPiA+ICsJCX0KPiA+ICtvdXQ6Cj4gPiArCQlt
ZW1jcHkoYnVmLCBuZmMtPnBhZ2VfYnVmLCBtdGQtPndyaXRlc2l6ZSk7Cj4gPiArCj4gPiArCQlp
ZiAoYm9vdF9yb21fbW9kZSAmJiBya19uYW5kLT5ib290X2VjYyAhPSBlY2MtPnN0cmVuZ3RoKQo+
ID4gKwkJCXJrX25mY19od19lY2Nfc2V0dXAoY2hpcCwgZWNjLCBlY2MtPnN0cmVuZ3RoKTsKPiA+
ICsKPiA+ICsJCWlmIChiaXRmbGlwcyA8IDApCj4gPiArCQkJZGV2X2VycihuZmMtPmRldiwgInJl
YWQgcGFnZTogJXggZWNjIGVycm9yIVxuIiwgcGFnZSk7Cj4gPiArCX0gZWxzZSB7Cj4gPiArCQly
a19uZmNfcmVhZF9idWYoY2hpcCwgYnVmLCBtdGQtPndyaXRlc2l6ZSArIG10ZC0+b29ic2l6ZSk7
Cj4gPiArCX0KPiA+ICsJLyogRGVzZWxlY3QgdGhlIGN1cnJlbnRseSBzZWxlY3RlZCB0YXJnZXQu
ICovCj4gPiArCXJrX25mY19zZWxlY3RfY2hpcChjaGlwLCAtMSk7Cj4gPiArCj4gPiArCXJldHVy
biBiaXRmbGlwczsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGludCBya19uZmNfd3JpdGVfcGFn
ZV9od2VjYyhzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLCBjb25zdCB1OCAqYnVmLAo+ID4gKwkJCQkg
ICBpbnQgb29iX29uLCBpbnQgcGFnZSkKPiA+ICt7Cj4gPiArCXJldHVybiBya19uZmNfd3JpdGVf
cGFnZShuYW5kX3RvX210ZChjaGlwKSwgY2hpcCwgYnVmLCBwYWdlLCAwKTsKPiA+ICt9Cj4gPiAr
Cj4gPiArc3RhdGljIGludCBya19uZmNfcmVhZF9wYWdlX2h3ZWNjKHN0cnVjdCBuYW5kX2NoaXAg
KmNoaXAsIHU4ICpwLCBpbnQgb29iX29uLAo+ID4gKwkJCQkgIGludCBwZykKPiA+ICt7Cj4gPiAr
CXN0cnVjdCBtdGRfaW5mbyAqbXRkID0gbmFuZF90b19tdGQoY2hpcCk7Cj4gPiArCj4gPiArCXJl
dHVybiBya19uZmNfcmVhZF9wYWdlKG10ZCwgY2hpcCwgMCwgbXRkLT53cml0ZXNpemUsIHAsIHBn
LCAwKTsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGludCBya19uZmNfcmVhZF9wYWdlX3Jhdyhz
dHJ1Y3QgbmFuZF9jaGlwICpjaGlwLCB1OCAqYnVmLCBpbnQgb29iX29uLAo+ID4gKwkJCQlpbnQg
cGFnZSkKPiA+ICt7Cj4gPiArCXN0cnVjdCBtdGRfaW5mbyAqbXRkID0gbmFuZF90b19tdGQoY2hp
cCk7Cj4gPiArCXN0cnVjdCBya19uZmMgKm5mYyA9IG5hbmRfZ2V0X2NvbnRyb2xsZXJfZGF0YShj
aGlwKTsKPiA+ICsJaW50IGksIHJldDsKPiA+ICsKPiA+ICsJcmV0ID0gcmtfbmZjX3JlYWRfcGFn
ZShtdGQsIGNoaXAsIDAsIG10ZC0+d3JpdGVzaXplLCBuZmMtPmJ1ZmZlciwKPiA+ICsJCQkgICAg
ICAgcGFnZSwgMSk7Cj4gPiArCWlmIChyZXQgPCAwKQo+ID4gKwkJcmV0dXJuIHJldDsKPiA+ICsK
PiA+ICsJZm9yIChpID0gMDsgaSA8IGNoaXAtPmVjYy5zdGVwczsgaSsrKSB7Cj4gPiArCQltZW1j
cHkob29iX3B0cihjaGlwLCBpKSwgcmtfb29iX3B0cihjaGlwLCBpKSwKPiA+ICsJCSAgICAgICBO
RkNfU1lTX0RBVEFfU0laRSk7Cj4gPiArCj4gPiArCQlpZiAoYnVmKQo+ID4gKwkJCW1lbWNweShk
YXRhX3B0cihjaGlwLCBidWYsIGkpLCBya19kYXRhX3B0cihjaGlwLCBpKSwKPiA+ICsJCQkgICAg
ICAgY2hpcC0+ZWNjLnNpemUpOwo+ID4gKwl9Cj4gPiArCXN3YXAoY2hpcC0+b29iX3BvaVswXSwg
Y2hpcC0+b29iX3BvaVs3XSk7Cj4gPiArCj4gPiArCXJldHVybiByZXQ7Cj4gPiArfSAgCj4gCj4g
Wy4uXQoKCgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
