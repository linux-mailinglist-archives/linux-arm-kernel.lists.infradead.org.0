Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D431F9392
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Tt48M0ejCk0c6Apd+ltNiSWFByE/IqShWsIq7o2sbNA=; b=DgqP/4jBhFmdXw
	6nSUrbZsbwo9caU3SZGNaUy8X3XMQUWnD4EBjh3FXTeXiepZ+3a+xzgtbC7XcmOEfBEZs+QrMonEX
	nW/hpQf/XX0fzSikvxE4yQ2O8rV4kTp0/sI9hCllvAFbmC2hbw1nvWlrM31dBW4qpsAFaxMi93XWK
	fcXBe+4xIUIcLNfFx8R4XXVMrCSztapjgyOwAqq1hhNwSpq/cYN3UXJrCrmpkIFQa7hx81nW09ZEH
	9gTq7mkR1ej4FcVq/iS+ek7CAPhUtaPnxqHq4Mz0lSF7COROz+yjgHt9VXmYitPOVkiggHFeQZPh5
	RjkYwO7b0OgGuHRMVUsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklVm-0007ZD-Pn; Mon, 15 Jun 2020 09:34:38 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklVY-0007YV-23; Mon, 15 Jun 2020 09:34:27 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id EB9F6438;
 Mon, 15 Jun 2020 17:34:13 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from hp1216 (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25386T140143151273728S1592213652537803_; 
 Mon, 15 Jun 2020 17:34:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6ea19b41db0b22b348498d9ade5564eb>
X-RL-SENDER: zyf@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: zyf@rock-chips.com
X-FST-TO: jbx6244@gmail.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Date: Mon, 15 Jun 2020 17:34:14 +0800
Organization: =?UTF-8?B?55Ge6Iqv5b6u55S15a2Q?=
From: =?UTF-8?B?6LW15Luq5bOw?= <yifeng.zhao@rock-chips.com>
To: "Johan Jonker" <jbx6244@gmail.com>, 
 "Miquel Raynal" <miquel.raynal@bootlin.com>, richard <richard@nod.at>, 
 vigneshr <vigneshr@ti.com>, robh+dt <robh+dt@kernel.org>
Subject: Re: Re: [PATCH v6 2/8] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK2928 and others
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>, 
 <20200609074020.23860-3-yifeng.zhao@rock-chips.com>, 
 <7e4ce8b1-73c4-8b9a-5726-b121f53de8df@gmail.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.16.188[cn]
Mime-Version: 1.0
Message-ID: <2020061517300662418531@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_023424_504755_2D9F7D7F 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [211.150.70.202 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?B?SGVpa29TdMO8Ym5lcg==?= <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSm9oYW4sCgpKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPiB3cm90ZSBvbiBTYXQs
IDEzIEp1biAyMDIwIDE1OjMxOjUyCiswMjAwOgo+SGkgWWlmZW5nLCBNaXF1ZWwsCj4KPlNvbWUg
bW9yZSBjb21tZW50cyBhYm91dCBzd2FwKCk7Cj4KPk9uIDYvOS8yMCA5OjQwIEFNLCBZaWZlbmcg
WmhhbyB3cm90ZToKPgo+Wy4uXQo+Cj4+ICtzdGF0aWMgaW50IHJrX25mY19vb2JsYXlvdXRfZnJl
ZShzdHJ1Y3QgbXRkX2luZm8gKm10ZCwgaW50IHNlY3Rpb24sCj4+ICsJc3RydWN0IG10ZF9vb2Jf
cmVnaW9uICpvb2JfcmVnaW9uKQo+PiArewo+PiArCXN0cnVjdCBuYW5kX2NoaXAgKmNoaXAgPSBt
dGRfdG9fbmFuZChtdGQpOwo+PiArCj4KPj4gKwlpZiAoc2VjdGlvbiA+PSBjaGlwLT5lY2Muc3Rl
cHMpCj4+ICsJcmV0dXJuIC1FUkFOR0U7Cj4KPkdpdmVuOgo+Cj5ORkNfU1lTX0RBVEFfU0laRSA9
IDQKPmNoaXAtPmVjYy5zdGVwcyA9IDgKPnNlY3Rpb24gWzAuLjddCj4KPlRvdGFsIGZyZWUgT09C
IHNpemUgYWR2ZXJ0aXNlZCB0byB0aGUgTVREIGZyYW1ld29yayBpczoKPgo+ZWNjLnN0ZXBzICog
TkZDX1NZU19EQVRBX1NJWkUgLSAxIEJCTQo+OCAqIDQgLSAxID0gMzEgYnl0ZXMKPgo+V2l0aCBs
aW5rIGFkZHJlc3MgaW4gT09CIGJ5dGUgWzAuLjNdIHRoaXMgYmVjb21lOgo+MzEgLSA0ID0gMjcg
Ynl0ZXMKPgo+RG9lcyB0aGF0IGdpdmUgZGF0YSBsb3N0Pwo+U2hvdWxkIHdlIGxpbWl0IHRoZSBu
dW1iZXIgb2YgZnJlZSBPT0IgYnl0ZXMgYnkgNCBtb3JlIHRvIGJlIHNhdmU/Cj5JcyBteSBjYWxj
dWxhdGlvbiBjb3JyZWN0Pwo+U2VlIGZ1cnRoZXIgcXVlc3Rpb25zIGFib3V0IHRoaXMgYmVsb3cu
Cj4KPj4gKwo+PiArCWlmICghc2VjdGlvbikgewo+PiArCS8qIFRoZSBmaXJzdCBieXRlIGlzIGJh
ZCBibG9jayBtYXNrIGZsYWcuICovCj4+ICsJb29iX3JlZ2lvbi0+bGVuZ3RoID0gTkZDX1NZU19E
QVRBX1NJWkUgLSAxOwo+PiArCW9vYl9yZWdpb24tPm9mZnNldCA9IDE7Cj4+ICsJfSBlbHNlIHsK
Pj4gKwlvb2JfcmVnaW9uLT5sZW5ndGggPSBORkNfU1lTX0RBVEFfU0laRTsKPj4gKwlvb2JfcmVn
aW9uLT5vZmZzZXQgPSBzZWN0aW9uICogTkZDX1NZU19EQVRBX1NJWkU7Cj4+ICsJfQo+PiArCj4+
ICsJcmV0dXJuIDA7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbnQgcmtfbmZjX29vYmxheW91dF9l
Y2Moc3RydWN0IG10ZF9pbmZvICptdGQsIGludCBzZWN0aW9uLAo+PiArCXN0cnVjdCBtdGRfb29i
X3JlZ2lvbiAqb29iX3JlZ2lvbikKPj4gK3sKPj4gKwlzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwID0g
bXRkX3RvX25hbmQobXRkKTsKPj4gKwo+Cj4+ICsJaWYgKHNlY3Rpb24pCj4+ICsJcmV0dXJuIC1F
UkFOR0U7Cj4KPldpdGggdGhlIGZvcm11bGUgYWJvdmUgYSBzZWN0aW9uID4gMCBkb2VzIG5vdCBh
bG93IEVDQy4KPgo+SnVzdCBhIHF1ZXN0aW9uIGFib3V0IHRoZSBNVEQgaW5uZXIgd29ya2luZyBm
b3IgTWlxdWVsOgo+Cj5XaXRoIG9vYmxheW91dF9mcmVlIHVzaW5nIDggc3RlcHMgYW5kIHRoaXMg
anVzdCAxIGRvZXMgaXQgc3RpbGwgZ2VuZXJhdGUKPnRoZSBjb3JyZWN0IEVDQz8gRG9lcyBpdCBj
YWxjdWxhdGUgRUNDIG92ZXIgMTAyNEIgb3Igb3ZlciA4KjEwMjRCID8KPgo+U2hvdWxkIHdlIG1v
dmUgdGhlIHRleHQgdGhhdCBleHBsYWlucyB0aGUgbGF5b3V0IGNsb3NlciB0byB0aGVzZQo+ZnVu
Y3Rpb25zIGFuZCBhZGQgYSBsaXR0bGUgbW9yZSB0ZXh0IHRvIGV4cGxhaW4gd2h5IHdlIGNob29z
ZSB0aGlzCj5wYXJ0aWN1bGFyIGxheW91dD8KPgo+LyoKPiAqIE5GQyBQYWdlIERhdGEgTGF5b3V0
Ogo+ICoJMTAyNCBCeXRlcyBEYXRhICsgNEJ5dGVzIHN5cyBkYXRhICsgMjhCeXRlc34xMjRCeXRl
cyBlY2MgKwo+ICoJMTAyNCBCeXRlcyBEYXRhICsgNEJ5dGVzIHN5cyBkYXRhICsgMjhCeXRlc34x
MjRCeXRlcyBlY2MgKwo+ICoJLi4uLi4uCj4gKiBOQU5EIFBhZ2UgRGF0YSBMYXlvdXQ6Cj4gKgkx
MDI0ICogbiBEYXRhICsgbSBCeXRlcyBvb2IKPiAqIE9yaWdpbmFsIEJhZCBCbG9jayBNYXNrIExv
Y2F0aW9uOgo+ICoJRmlyc3QgYnl0ZSBvZiBvb2Ioc3BhcmUpLgo+ICogbmFuZF9jaGlwLT5vb2Jf
cG9pIGRhdGEgbGF5b3V0Ogo+ICoJNEJ5dGVzIHN5cyBkYXRhICsgLi4uLiArIDRCeXRlcyBzeXMg
ZGF0YSArIGVjYyBkYXRhLgo+ICovCj4KPldlIGV4cGVjdCBub3cgRUNDIGRhdGEgYWZ0ZXIgbiBz
dGVwcyAqIDQgT09CIGJ5dGVzLAo+YnV0IGFyZSB3ZSBzdGlsbCB1c2luZyBpdCB3aXRoIEhXIEVD
QyBvciBvbmx5IGZvciByYXc/Cj4KPj4gKwo+PiArCW9vYl9yZWdpb24tPm9mZnNldCA9IE5GQ19T
WVNfREFUQV9TSVpFICogY2hpcC0+ZWNjLnN0ZXBzOwo+PiArCW9vYl9yZWdpb24tPmxlbmd0aCA9
IG10ZC0+b29ic2l6ZSAtIG9vYl9yZWdpb24tPm9mZnNldDsKPj4gKwo+PiArCXJldHVybiAwOwo+
PiArfQo+PiArCj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG10ZF9vb2JsYXlvdXRfb3BzIHJrX25m
Y19vb2JsYXlvdXRfb3BzID0gewo+PiArCS5mcmVlID0gcmtfbmZjX29vYmxheW91dF9mcmVlLAo+
PiArCS5lY2MgPSBya19uZmNfb29ibGF5b3V0X2VjYywKPj4gK307Cj4KPlsuLl0KPgo+PiArc3Rh
dGljIGludCBya19uZmNfd3JpdGVfcGFnZShzdHJ1Y3QgbXRkX2luZm8gKm10ZCwgc3RydWN0IG5h
bmRfY2hpcCAqY2hpcCwKPj4gKwnCoMKgwqDCoCBjb25zdCB1OCAqYnVmLCBpbnQgcGFnZSwgaW50
IHJhdykKPj4gK3sKPj4gKwlzdHJ1Y3QgcmtfbmZjICpuZmMgPSBuYW5kX2dldF9jb250cm9sbGVy
X2RhdGEoY2hpcCk7Cj4+ICsJc3RydWN0IHJrX25mY19uYW5kX2NoaXAgKnJrX25hbmQgPSB0b19y
a19uYW5kKGNoaXApOwo+PiArCXN0cnVjdCBuYW5kX2VjY19jdHJsICplY2MgPSAmY2hpcC0+ZWNj
Owo+PiArCWludCBvb2Jfc3RlcCA9IChlY2MtPmJ5dGVzID4gNjApID8gTkZDX01BWF9PT0JfUEVS
X1NURVAgOgo+PiArCU5GQ19NSU5fT09CX1BFUl9TVEVQOwo+PiArCWludCBwYWdlc19wZXJfYmxr
ID0gbXRkLT5lcmFzZXNpemUgLyBtdGQtPndyaXRlc2l6ZTsKPj4gKwlpbnQgcmV0ID0gMCwgaSwg
Ym9vdF9yb21fbW9kZSA9IDA7Cj4+ICsJZG1hX2FkZHJfdCBkbWFfZGF0YSwgZG1hX29vYjsKPj4g
Kwl1MzIgcmVnOwo+PiArCXU4ICpvb2I7Cj4+ICsKPj4gKwluYW5kX3Byb2dfcGFnZV9iZWdpbl9v
cChjaGlwLCBwYWdlLCAwLCBOVUxMLCAwKTsKPj4gKwo+PiArCWlmICghcmF3KSB7Cj4+ICsJbWVt
Y3B5KG5mYy0+cGFnZV9idWYsIGJ1ZiwgbXRkLT53cml0ZXNpemUpOwo+PiArCW1lbXNldChuZmMt
Pm9vYl9idWYsIDB4ZmYsIG9vYl9zdGVwICogZWNjLT5zdGVwcyk7Cj4+ICsKPj4gKwkvKgo+PiAr
CSogVGhlIGZpcnN0IDgoc29tZSBkZXZpY2VzIGFyZSA0IG9yIDE2KSBibG9ja3MgaW4gdXNlIGJ5
Cj4+ICsJKiB0aGUgYm9vdCBST00gYW5kIHRoZSBmaXJzdCAzMiBiaXRzIG9mIG9vYiBuZWVkIHRv
IGxpbmsKPj4gKwkqIHRvIHRoZSBuZXh0IHBhZ2UgYWRkcmVzcyBpbiB0aGUgc2FtZSBibG9jay4K
Pj4gKwkqIENvbmZpZyB0aGUgRUNDIGFsZ29yaXRobSBzdXBwb3J0ZWQgYnkgdGhlIGJvb3QgUk9N
Lgo+PiArCSovCj4+ICsJaWYgKHBhZ2UgPCBwYWdlc19wZXJfYmxrICogcmtfbmFuZC0+Ym9vdF9i
bGtzICYmCj4+ICsJwqDCoMKgIGNoaXAtPm9wdGlvbnMgJiBOQU5EX0lTX0JPT1RfTUVESVVNKSB7
Cj4+ICsJYm9vdF9yb21fbW9kZSA9IDE7Cj4+ICsJaWYgKHJrX25hbmQtPmJvb3RfZWNjICE9IGVj
Yy0+c3RyZW5ndGgpCj4+ICsJcmtfbmZjX2h3X2VjY19zZXR1cChjaGlwLCBlY2MsCj4+ICsJwqDC
oMKgIHJrX25hbmQtPmJvb3RfZWNjKTsKPj4gKwl9Cj4+ICsKPj4gKwkvKgo+PiArCSogU3dhcCB0
aGUgZmlyc3Qgb29iIHdpdGggdGhlIHNldmVudGggb29iIGFuZCBiYWQgYmxvY2sKPj4gKwkqIG1h
c2sgaXMgc2F2ZWQgYXQgdGhlIHNldmVudGggb29iLgo+PiArCSovCj4+ICsJc3dhcChjaGlwLT5v
b2JfcG9pWzBdLCBjaGlwLT5vb2JfcG9pWzddKTsKPgo+QWRkIG1vcmUgaW5mbyBvbiB3aHkgdGhp
cyBpcyBzd2FwcGVkLgo+Cj5MQVswLi4zXSBpcyBhIGxpbmsgYWRkcmVzcyB0aGF0IHRoZSBCQk0g
c2hvdWxkbid0IG92ZXIgd3JpdGUuCj5Gb3IgWWlmZW5nOiBJcyB0aGVyZSBhbiBvdGhlciByZWFz
b24/CgpObyBvdGhlciByZWFzb27vvIx0aGlzIHN3YXAgb3BzIG9ubHkgZm9yIHRoZSBsaW5rIGFk
ZHJlc3MuCgo+QmVmb3JlIHN3YXA6Cj4KPkJCTcKgIE9PQjEgT09CMiBPT0IzLCBPT0I0IE9PQjUg
T09CNiBPT0I3LCBPT0I4IC4uLi4KPgo+QWZ0ZXIgc3dhcDoKPgo+T09CNyBPT0IxIE9PQjIgT09C
MywgT09CNCBPT0I1IE9PQjYgQkJNICwgT09COCAuLi4uCj4KPklmICghaSAmJiBib290X3JvbV9t
b2RlKToKPgo+TEEwwqAgTEExwqAgTEEywqAgTEEzICwgT09CNCBPT0I1IE9PQjYgQkJNICwgT09C
OCAuLi4uCj4KPlJlYWQgYmFjayBhZnRlciBzd2FwIGFnYWluOgo+Cj5CQk3CoCBMQTHCoCBMQTLC
oCBMQTMgLCBPT0I0IE9PQjUgT09CNiBMQTAgLCBPT0I4IC4uLi4KPgo+UXVlc3Rpb246Cj5BcmUg
ZGF0YSBPT0I3IE9PQjEgT09CMiBPT0IzIGxvc3Qgbm93Pwo+SXMgdGhpcyBjb3JyZWN0PwoKWWVz
LCB0aGUgZGF0YSBPT0I3IE9PQjEgT09CMiBPT0IzIHdpbGwgbG9zdCBpbiB0aGUgYmxvY2tzIHdo
aWNoIHVzZWQgZm9yIHRoZSBib290IFJPTS4KCj4jIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjCj5Qcm9wb3NhbDoKPlNob3VsZCB3ZSByZWR1Y2UgdGhlIGZy
ZWUgT09CIHNpemUgYnkgNAo+YW5kIHNoaWZ0IGV2ZXJ5dGhpbmcgNCBieXRlcyB0byByZWNvdmVy
IGFsbCBieXRlcz8KPlJlcGxhY2UgdGhlIGZpcnN0IDQgYnl0ZXMgd2l0aCAwWEZGIG9yIExBWzAu
LjNdLgo+Cj5Ob3JtYWw6Cj4weEZGIDBYRkYgMFhGRiAweEZGLCBCQk3CoCBPT0IxIE9PQjIgT09C
MywgT09CNAo+Cj5JZiAoIWkgJiYgYm9vdF9yb21fbW9kZSk6Cj5MQTDCoCBMQTHCoCBMQTLCoCBM
QTMgLCBCQk3CoCBPT0IxIE9PQjIgT09CMywgT09CNAo+Cj5RdWVzdGlvbiBmb3IgTWlxdWVsIGFu
ZCBZaWZlbmc6Cj5Eb2VzIHRoaXMgd29yaz8gQ291bGQgeW91IHRlc3Q/CgpJIHdhbnQgdG8gbW9k
aWZ5IHRoZSBkcml2ZXJzIGluIG5leHQgdmVyc2lvbjoKVGhlIGRhdGEgc3dhcCBvcHMgb25seSBk
b25lIGZvciB0aGUgYmxvY2tzIHdoaWNoIHVzZWQgZm9yIHRoZSBib290IFJPTe+8jEluIHRoaXMg
d2F5LAp0aGUgc3BlY2lhbGx5IHByb2Nlc3NlZCBjb2RlIHdpbGwgbm90IGFmZmVjdCB0aGUgcmVz
dCBibG9ja3MuCkZvciBNaXF1ZWwgYW5kIFlpZmVuZzoKSXMgdGhpcyBPS++8nwoKPj4gKwo+PiAr
CWZvciAoaSA9IDA7IGkgPCBlY2MtPnN0ZXBzOyBpKyspIHsKPgo+SnVzdCBhIHByb3Bvc2VsOgo+
Cj4JaWYgKCFpICYmIGJvb3Rfcm9tX21vZGUpCj4JcmVnID0gKHBhZ2UgJiAocGFnZXNfcGVyX2Js
ayAtIDEpKSAqIDQ7Cj4JZWxzZSBpZiAoIWkpCj4JcmVnID0gMHhGRkZGRkZGRjsKPgllbHNlCj4J
b29iID0gY2hpcC0+b29iX3BvaSArIChpLTEpICogTkZDX1NZU19EQVRBX1NJWkU7Cj4JcmVnID0g
b29iWzBdIHwgb29iWzFdIDw8IDggfCBvb2JbMl0gPDwgMTYgfAo+CcKgwqDCoMKgwqAgb29iWzNd
IDw8IDI0Owo+Cj4+ICsKPj4gKwlpZiAobmZjLT5jZmctPnR5cGUgPT0gTkZDX1Y2IHx8Cj4+ICsJ
wqDCoMKgIG5mYy0+Y2ZnLT50eXBlID09IE5GQ19WOCkKPj4gKwluZmMtPm9vYl9idWZbaSAqIG9v
Yl9zdGVwIC8gNF0gPSByZWc7Cj4+ICsJZWxzZQo+PiArCW5mYy0+b29iX2J1ZltpXSA9IHJlZzsK
Pj4gKwl9Cj4+ICsKPj4gKwlkbWFfZGF0YSA9IGRtYV9tYXBfc2luZ2xlKG5mYy0+ZGV2LCAodm9p
ZCAqKW5mYy0+cGFnZV9idWYsCj4+ICsJwqAgbXRkLT53cml0ZXNpemUsIERNQV9UT19ERVZJQ0Up
Owo+PiArCWRtYV9vb2IgPSBkbWFfbWFwX3NpbmdsZShuZmMtPmRldiwgbmZjLT5vb2JfYnVmLAo+
PiArCWVjYy0+c3RlcHMgKiBvb2Jfc3RlcCwKPj4gKwlETUFfVE9fREVWSUNFKTsKPj4gKwo+PiAr
CXJlaW5pdF9jb21wbGV0aW9uKCZuZmMtPmRvbmUpOwo+PiArCXdyaXRlbChJTlRfRE1BLCBuZmMt
PnJlZ3MgKyBuZmMtPmNmZy0+aW50X2VuX29mZik7Cj4+ICsKPj4gKwlya19uZmNfeGZlcl9zdGFy
dChuZmMsIE5GQ19XUklURSwgZWNjLT5zdGVwcywgZG1hX2RhdGEsCj4+ICsJwqAgZG1hX29vYik7
Cj4+ICsJcmV0ID0gd2FpdF9mb3JfY29tcGxldGlvbl90aW1lb3V0KCZuZmMtPmRvbmUsCj4+ICsJ
wqAgbXNlY3NfdG9famlmZmllcygxMDApKTsKPj4gKwlpZiAoIXJldCkKPj4gKwlkZXZfd2Fybihu
ZmMtPmRldiwgIndyaXRlOiB3YWl0IGRtYSBkb25lIHRpbWVvdXQuXG4iKTsKPj4gKwkvKgo+PiAr
CSogV2hldGhlciB0aGUgRE1BIHRyYW5zZmVyIGlzIGNvbXBsZXRlZCBvciBub3QuIFRoZSBkcml2
ZXIKPj4gKwkqIG5lZWRzIHRvIGNoZWNrIHRoZSBORkNgcyBzdGF0dXMgcmVnaXN0ZXIgdG8gc2Vl
IGlmIHRoZSBkYXRhCj4+ICsJKiB0cmFuc2ZlciB3YXMgY29tcGxldGVkLgo+PiArCSovCj4+ICsJ
cmV0ID0gcmtfbmZjX3dhaXRfZm9yX3hmZXJfZG9uZShuZmMpOwo+PiArCj4+ICsJZG1hX3VubWFw
X3NpbmdsZShuZmMtPmRldiwgZG1hX2RhdGEsIG10ZC0+d3JpdGVzaXplLAo+PiArCURNQV9UT19E
RVZJQ0UpOwo+PiArCWRtYV91bm1hcF9zaW5nbGUobmZjLT5kZXYsIGRtYV9vb2IsIGVjYy0+c3Rl
cHMgKiBvb2Jfc3RlcCwKPj4gKwlETUFfVE9fREVWSUNFKTsKPj4gKwo+PiArCWlmIChib290X3Jv
bV9tb2RlICYmIHJrX25hbmQtPmJvb3RfZWNjICE9IGVjYy0+c3RyZW5ndGgpCj4+ICsJcmtfbmZj
X2h3X2VjY19zZXR1cChjaGlwLCBlY2MsIGVjYy0+c3RyZW5ndGgpOwo+PiArCj4+ICsJaWYgKHJl
dCkgewo+PiArCXJldCA9IC1FSU87Cj4+ICsJZGV2X2VycihuZmMtPmRldiwKPj4gKwkid3JpdGU6
IHdhaXQgdHJhbnNmZXIgZG9uZSB0aW1lb3V0LlxuIik7Cj4+ICsJfQo+PiArCX0gZWxzZSB7Cj4+
ICsJcmtfbmZjX3dyaXRlX2J1ZihjaGlwLCBidWYsIG10ZC0+d3JpdGVzaXplICsgKyBtdGQtPm9v
YnNpemUpOwo+Cj5SZW1vdmUgYSAnKycKPgo+PiArCX0KPj4gKwo+PiArCWlmIChyZXQpCj4+ICsJ
cmV0dXJuIHJldDsKPj4gKwo+PiArCXJldCA9IG5hbmRfcHJvZ19wYWdlX2VuZF9vcChjaGlwKTsK
Pj4gKwo+PiArCS8qIERlc2VsZWN0IHRoZSBjdXJyZW50bHkgc2VsZWN0ZWQgdGFyZ2V0LiAqLwo+
PiArCXJrX25mY19zZWxlY3RfY2hpcChjaGlwLCAtMSk7Cj4+ICsKPj4gKwlyZXR1cm4gcmV0Owo+
PiArfQo+PiArCj4+ICtzdGF0aWMgaW50IHJrX25mY193cml0ZV9wYWdlX3JhdyhzdHJ1Y3QgbmFu
ZF9jaGlwICpjaGlwLCBjb25zdCB1OCAqYnVmLAo+PiArCWludCBvb2Jfb24sIGludCBwYWdlKQo+
PiArewo+PiArCXN0cnVjdCBtdGRfaW5mbyAqbXRkID0gbmFuZF90b19tdGQoY2hpcCk7Cj4+ICsJ
c3RydWN0IHJrX25mYyAqbmZjID0gbmFuZF9nZXRfY29udHJvbGxlcl9kYXRhKGNoaXApOwo+PiAr
CXUzMiBpOwo+PiArCj4+ICsJbWVtc2V0KG5mYy0+YnVmZmVyLCAweGZmLCBtdGQtPndyaXRlc2l6
ZSArIG10ZC0+b29ic2l6ZSk7Cj4+ICsJc3dhcChjaGlwLT5vb2JfcG9pWzBdLCBjaGlwLT5vb2Jf
cG9pWzddKTsKPj4gKwlmb3IgKGkgPSAwOyBpIDwgY2hpcC0+ZWNjLnN0ZXBzOyBpKyspIHsKPj4g
KwlpZiAoYnVmKQo+PiArCW1lbWNweShya19kYXRhX3B0cihjaGlwLCBpKSwgZGF0YV9wdHIoY2hp
cCwgYnVmLCBpKSwKPj4gKwnCoMKgwqDCoMKgwqAgY2hpcC0+ZWNjLnNpemUpOwo+PiArCj4+ICsJ
bWVtY3B5KHJrX29vYl9wdHIoY2hpcCwgaSksIG9vYl9wdHIoY2hpcCwgaSksCj4+ICsJwqDCoMKg
wqDCoMKgIE5GQ19TWVNfREFUQV9TSVpFKTsKPj4gKwl9Cj4+ICsKPj4gKwlyZXR1cm4gcmtfbmZj
X3dyaXRlX3BhZ2UobXRkLCBjaGlwLCBuZmMtPmJ1ZmZlciwgcGFnZSwgMSk7Cj4+ICt9Cj4+ICsK
Pj4gK3N0YXRpYyBpbnQgcmtfbmZjX3dyaXRlX29vYl9zdGQoc3RydWN0IG5hbmRfY2hpcCAqY2hp
cCwgaW50IHBhZ2UpCj4+ICt7Cj4+ICsJcmV0dXJuIHJrX25mY193cml0ZV9wYWdlX3JhdyhjaGlw
LCBOVUxMLCAxLCBwYWdlKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIGludCBya19uZmNfcmVhZF9w
YWdlKHN0cnVjdCBtdGRfaW5mbyAqbXRkLCBzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLAo+PiArCcKg
wqDCoCB1MzIgZGF0YV9vZmZzLCB1MzIgcmVhZGxlbiwKPj4gKwnCoMKgwqAgdTggKmJ1ZiwgaW50
IHBhZ2UsIGludCByYXcpCj4+ICt7Cj4+ICsJc3RydWN0IHJrX25mYyAqbmZjID0gbmFuZF9nZXRf
Y29udHJvbGxlcl9kYXRhKGNoaXApOwo+PiArCXN0cnVjdCBya19uZmNfbmFuZF9jaGlwICpya19u
YW5kID0gdG9fcmtfbmFuZChjaGlwKTsKPj4gKwlzdHJ1Y3QgbmFuZF9lY2NfY3RybCAqZWNjID0g
JmNoaXAtPmVjYzsKPj4gKwlpbnQgb29iX3N0ZXAgPSAoZWNjLT5ieXRlcyA+IDYwKSA/IE5GQ19N
QVhfT09CX1BFUl9TVEVQIDoKPj4gKwlORkNfTUlOX09PQl9QRVJfU1RFUDsKPj4gKwlpbnQgcGFn
ZXNfcGVyX2JsayA9IG10ZC0+ZXJhc2VzaXplIC8gbXRkLT53cml0ZXNpemU7Cj4+ICsJZG1hX2Fk
ZHJfdCBkbWFfZGF0YSwgZG1hX29vYjsKPj4gKwlpbnQgcmV0ID0gMCwgaSwgYm9vdF9yb21fbW9k
ZSA9IDA7Cj4+ICsJaW50IGJpdGZsaXBzID0gMCwgYmNoX3N0Owo+PiArCXU4ICpvb2I7Cj4+ICsJ
dTMyIHRtcDsKPj4gKwo+PiArCW5hbmRfcmVhZF9wYWdlX29wKGNoaXAsIHBhZ2UsIDAsIE5VTEws
IDApOwo+PiArCWlmICghcmF3KSB7Cj4+ICsJZG1hX2RhdGEgPSBkbWFfbWFwX3NpbmdsZShuZmMt
PmRldiwgbmZjLT5wYWdlX2J1ZiwKPj4gKwnCoCBtdGQtPndyaXRlc2l6ZSwKPj4gKwnCoCBETUFf
RlJPTV9ERVZJQ0UpOwo+PiArCWRtYV9vb2IgPSBkbWFfbWFwX3NpbmdsZShuZmMtPmRldiwgbmZj
LT5vb2JfYnVmLAo+PiArCWVjYy0+c3RlcHMgKiBvb2Jfc3RlcCwKPj4gKwlETUFfRlJPTV9ERVZJ
Q0UpOwo+PiArCj4+ICsJLyoKPj4gKwkqIFRoZSBmaXJzdCA4KHNvbWUgZGV2aWNlcyBhcmUgNCBv
ciAxNikgYmxvY2tzIGluIHVzZSBieQo+PiArCSogdGhlIGJvb3Ryb20uCj4+ICsJKiBDb25maWcg
dGhlIEVDQyBhbGdvcml0aG0gc3VwcG9ydGVkIGJ5IHRoZSBib290IFJPTS4KPj4gKwkqLwo+PiAr
CWlmIChwYWdlIDwgcGFnZXNfcGVyX2JsayAqIHJrX25hbmQtPmJvb3RfYmxrcyAmJgo+PiArCcKg
wqDCoCBjaGlwLT5vcHRpb25zICYgTkFORF9JU19CT09UX01FRElVTSkgewo+PiArCWJvb3Rfcm9t
X21vZGUgPSAxOwo+PiArCWlmIChya19uYW5kLT5ib290X2VjYyAhPSBlY2MtPnN0cmVuZ3RoKQo+
PiArCXJrX25mY19od19lY2Nfc2V0dXAoY2hpcCwgZWNjLAo+PiArCcKgwqDCoCBya19uYW5kLT5i
b290X2VjYyk7Cj4+ICsJfQo+PiArCj4+ICsJcmVpbml0X2NvbXBsZXRpb24oJm5mYy0+ZG9uZSk7
Cj4+ICsJd3JpdGVsKElOVF9ETUEsIG5mYy0+cmVncyArIG5mYy0+Y2ZnLT5pbnRfZW5fb2ZmKTsK
Pj4gKwlya19uZmNfeGZlcl9zdGFydChuZmMsIE5GQ19SRUFELCBlY2MtPnN0ZXBzLCBkbWFfZGF0
YSwKPj4gKwnCoCBkbWFfb29iKTsKPj4gKwlyZXQgPSB3YWl0X2Zvcl9jb21wbGV0aW9uX3RpbWVv
dXQoJm5mYy0+ZG9uZSwKPj4gKwnCoCBtc2Vjc190b19qaWZmaWVzKDEwMCkpOwo+PiArCWlmICgh
cmV0KQo+PiArCWRldl93YXJuKG5mYy0+ZGV2LCAicmVhZDogd2FpdCBkbWEgZG9uZSB0aW1lb3V0
LlxuIik7Cj4+ICsJLyoKPj4gKwkqIFdoZXRoZXIgdGhlIERNQSB0cmFuc2ZlciBpcyBjb21wbGV0
ZWQgb3Igbm90LiBUaGUgZHJpdmVyCj4+ICsJKiBuZWVkcyB0byBjaGVjayB0aGUgTkZDYHMgc3Rh
dHVzIHJlZ2lzdGVyIHRvIHNlZSBpZiB0aGUgZGF0YQo+PiArCSogdHJhbnNmZXIgd2FzIGNvbXBs
ZXRlZC4KPj4gKwkqLwo+PiArCXJldCA9IHJrX25mY193YWl0X2Zvcl94ZmVyX2RvbmUobmZjKTsK
Pj4gKwlkbWFfdW5tYXBfc2luZ2xlKG5mYy0+ZGV2LCBkbWFfZGF0YSwgbXRkLT53cml0ZXNpemUs
Cj4+ICsJRE1BX0ZST01fREVWSUNFKTsKPj4gKwlkbWFfdW5tYXBfc2luZ2xlKG5mYy0+ZGV2LCBk
bWFfb29iLCBlY2MtPnN0ZXBzICogb29iX3N0ZXAsCj4+ICsJRE1BX0ZST01fREVWSUNFKTsKPj4g
Kwo+PiArCWlmIChyZXQpIHsKPj4gKwliaXRmbGlwcyA9IC1FSU87Cj4+ICsJZGV2X2VycihuZmMt
PmRldiwKPj4gKwkicmVhZDogd2FpdCB0cmFuc2ZlciBkb25lIHRpbWVvdXQuXG4iKTsKPj4gKwln
b3RvIG91dDsKPj4gKwl9Cj4+ICsKPj4gKwlmb3IgKGkgPSAwOyBpIDwgZWNjLT5zdGVwczsgaSsr
KSB7Cj4+ICsJb29iID0gY2hpcC0+b29iX3BvaSArIGkgKiBORkNfU1lTX0RBVEFfU0laRTsKPj4g
KwlpZiAobmZjLT5jZmctPnR5cGUgPT0gTkZDX1Y2IHx8Cj4+ICsJwqDCoMKgIG5mYy0+Y2ZnLT50
eXBlID09IE5GQ19WOCkKPj4gKwl0bXAgPSBuZmMtPm9vYl9idWZbaSAqIG9vYl9zdGVwIC8gNF07
Cj4+ICsJZWxzZQo+PiArCXRtcCA9IG5mYy0+b29iX2J1ZltpXTsKPj4gKwkqb29iKysgPSAodTgp
dG1wOwo+PiArCSpvb2IrKyA9ICh1OCkodG1wID4+IDgpOwo+PiArCSpvb2IrKyA9ICh1OCkodG1w
ID4+IDE2KTsKPj4gKwkqb29iKysgPSAodTgpKHRtcCA+PiAyNCk7Cj4+ICsJfQo+PiArCj4+ICsJ
LyoKPj4gKwkqIFN3YXAgdGhlIGZpcnN0IG9vYiB3aXRoIHRoZSBzZXZlbnRoIG9vYiBhbmQgYmFk
IGJsb2NrCj4+ICsJKiBtYXNrIGlzIHNhdmVkIGF0IHRoZSBzZXZlbnRoIG9vYi4KPj4gKwkqLwo+
PiArCXN3YXAoY2hpcC0+b29iX3BvaVswXSwgY2hpcC0+b29iX3BvaVs3XSk7Cj4+ICsKPj4gKwlm
b3IgKGkgPSAwOyBpIDwgZWNjLT5zdGVwcyAvIDI7IGkrKykgewo+PiArCWJjaF9zdCA9IHJlYWRs
X3JlbGF4ZWQobmZjLT5yZWdzICsKPj4gKwnCoMKgwqDCoMKgwqAgbmZjLT5jZmctPmJjaF9zdF9v
ZmYgKyBpICogNCk7Cj4+ICsJaWYgKGJjaF9zdCAmIEJJVChuZmMtPmNmZy0+ZWNjMC5lcnJfZmxh
Z19iaXQpIHx8Cj4+ICsJwqDCoMKgIGJjaF9zdCAmIEJJVChuZmMtPmNmZy0+ZWNjMS5lcnJfZmxh
Z19iaXQpKSB7Cj4+ICsJbXRkLT5lY2Nfc3RhdHMuZmFpbGVkKys7Cj4+ICsJYml0ZmxpcHMgPSAt
MTsKPj4gKwl9IGVsc2Ugewo+PiArCXJldCA9IEVDQ19FUlJfQ05UKGJjaF9zdCwgbmZjLT5jZmct
PmVjYzApOwo+PiArCW10ZC0+ZWNjX3N0YXRzLmNvcnJlY3RlZCArPSByZXQ7Cj4+ICsJYml0Zmxp
cHMgPSBtYXhfdCh1MzIsIGJpdGZsaXBzLCByZXQpOwo+PiArCj4+ICsJcmV0ID0gRUNDX0VSUl9D
TlQoYmNoX3N0LCBuZmMtPmNmZy0+ZWNjMSk7Cj4+ICsJbXRkLT5lY2Nfc3RhdHMuY29ycmVjdGVk
ICs9IHJldDsKPj4gKwliaXRmbGlwcyA9IG1heF90KHUzMiwgYml0ZmxpcHMsIHJldCk7Cj4+ICsJ
fQo+PiArCX0KPj4gK291dDoKPj4gKwltZW1jcHkoYnVmLCBuZmMtPnBhZ2VfYnVmLCBtdGQtPndy
aXRlc2l6ZSk7Cj4+ICsKPj4gKwlpZiAoYm9vdF9yb21fbW9kZSAmJiBya19uYW5kLT5ib290X2Vj
YyAhPSBlY2MtPnN0cmVuZ3RoKQo+PiArCXJrX25mY19od19lY2Nfc2V0dXAoY2hpcCwgZWNjLCBl
Y2MtPnN0cmVuZ3RoKTsKPj4gKwo+PiArCWlmIChiaXRmbGlwcyA8IDApCj4+ICsJZGV2X2Vycihu
ZmMtPmRldiwgInJlYWQgcGFnZTogJXggZWNjIGVycm9yIVxuIiwgcGFnZSk7Cj4+ICsJfSBlbHNl
IHsKPj4gKwlya19uZmNfcmVhZF9idWYoY2hpcCwgYnVmLCBtdGQtPndyaXRlc2l6ZSArIG10ZC0+
b29ic2l6ZSk7Cj4+ICsJfQo+PiArCS8qIERlc2VsZWN0IHRoZSBjdXJyZW50bHkgc2VsZWN0ZWQg
dGFyZ2V0LiAqLwo+PiArCXJrX25mY19zZWxlY3RfY2hpcChjaGlwLCAtMSk7Cj4+ICsKPj4gKwly
ZXR1cm4gYml0ZmxpcHM7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbnQgcmtfbmZjX3dyaXRlX3Bh
Z2VfaHdlY2Moc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgY29uc3QgdTggKmJ1ZiwKPj4gKwnCoMKg
IGludCBvb2Jfb24sIGludCBwYWdlKQo+PiArewo+PiArCXJldHVybiBya19uZmNfd3JpdGVfcGFn
ZShuYW5kX3RvX210ZChjaGlwKSwgY2hpcCwgYnVmLCBwYWdlLCAwKTsKPj4gK30KPj4gKwo+PiAr
c3RhdGljIGludCBya19uZmNfcmVhZF9wYWdlX2h3ZWNjKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAs
IHU4ICpwLCBpbnQgb29iX29uLAo+PiArCcKgIGludCBwZykKPj4gK3sKPj4gKwlzdHJ1Y3QgbXRk
X2luZm8gKm10ZCA9IG5hbmRfdG9fbXRkKGNoaXApOwo+PiArCj4+ICsJcmV0dXJuIHJrX25mY19y
ZWFkX3BhZ2UobXRkLCBjaGlwLCAwLCBtdGQtPndyaXRlc2l6ZSwgcCwgcGcsIDApOwo+PiArfQo+
PiArCj4+ICtzdGF0aWMgaW50IHJrX25mY19yZWFkX3BhZ2VfcmF3KHN0cnVjdCBuYW5kX2NoaXAg
KmNoaXAsIHU4ICpidWYsIGludCBvb2Jfb24sCj4+ICsJaW50IHBhZ2UpCj4+ICt7Cj4+ICsJc3Ry
dWN0IG10ZF9pbmZvICptdGQgPSBuYW5kX3RvX210ZChjaGlwKTsKPj4gKwlzdHJ1Y3QgcmtfbmZj
ICpuZmMgPSBuYW5kX2dldF9jb250cm9sbGVyX2RhdGEoY2hpcCk7Cj4+ICsJaW50IGksIHJldDsK
Pj4gKwo+PiArCXJldCA9IHJrX25mY19yZWFkX3BhZ2UobXRkLCBjaGlwLCAwLCBtdGQtPndyaXRl
c2l6ZSwgbmZjLT5idWZmZXIsCj4+ICsJwqDCoMKgwqDCoMKgIHBhZ2UsIDEpOwo+PiArCWlmIChy
ZXQgPCAwKQo+PiArCXJldHVybiByZXQ7Cj4+ICsKPj4gKwlmb3IgKGkgPSAwOyBpIDwgY2hpcC0+
ZWNjLnN0ZXBzOyBpKyspIHsKPj4gKwltZW1jcHkob29iX3B0cihjaGlwLCBpKSwgcmtfb29iX3B0
cihjaGlwLCBpKSwKPj4gKwnCoMKgwqDCoMKgwqAgTkZDX1NZU19EQVRBX1NJWkUpOwo+PiArCj4+
ICsJaWYgKGJ1ZikKPj4gKwltZW1jcHkoZGF0YV9wdHIoY2hpcCwgYnVmLCBpKSwgcmtfZGF0YV9w
dHIoY2hpcCwgaSksCj4+ICsJwqDCoMKgwqDCoMKgIGNoaXAtPmVjYy5zaXplKTsKPj4gKwl9Cj4+
ICsJc3dhcChjaGlwLT5vb2JfcG9pWzBdLCBjaGlwLT5vb2JfcG9pWzddKTsKPj4gKwo+PiArCXJl
dHVybiByZXQ7Cj4+ICt9Cj4KPlsuLl0KPgo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
