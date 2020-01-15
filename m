Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC2213BD7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 11:34:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LELnha8yrC5ZWI2KRsH0nzLkYr5zYPmfL91kdhHzMk=; b=STXdK2ndFQQCJg
	yZcqm6th1Oj9F+iPNaKi6B3HeKQpBxIw5M/EBqnubf0XTCkWo8Y59vs1RWKQZHCyxzgLNx1FEYq7I
	63qOEvGHnirqrn3oI1lI676o4N8g3WfAWN/aQmJ6Iai8LBR3pgsBJ0xyAFfJf/mXtK6R4wOAZFzJk
	Uhr7y5evcknDMd+mP0NAl8r8rSmzL6xh0zHkCI+sRFte/IT1E5ghprC9Dmqt0j8RFBmRFHmBU+9tY
	S3JV925d5obbh2RHryfXhsv6/g0ptfdSQkH5mevoXYFhjkxmV+sa3z8rLA4Y1lLcrR7J0oQGQcU5Y
	AXRX7rXZhCwRWt//NFHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfzo-0000ZB-SN; Wed, 15 Jan 2020 10:33:56 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfzb-0000W1-FP; Wed, 15 Jan 2020 10:33:48 +0000
X-Originating-IP: 90.76.211.102
Received: from xps13 (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 78D3D1BF217;
 Wed, 15 Jan 2020 10:33:29 +0000 (UTC)
Date: Wed, 15 Jan 2020 11:33:28 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 06/40] mtd: rawnand: Use the new ECC engine type
 enumeration
Message-ID: <20200115113311.320986f3@xps13>
In-Reply-To: <20191012112824.1ebb914c@dhcp-172-31-174-146.wireless.concordia.ca>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-7-miquel.raynal@bootlin.com>
 <20191012112824.1ebb914c@dhcp-172-31-174-146.wireless.concordia.ca>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_023343_792894_0E37E106 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBTYXQsIDEyIE9jdAoyMDE5IDExOjI4OjI0ICswMjAwOgoKPiBPbiBUaHUsIDE5
IFNlcCAyMDE5IDIxOjMxOjA2ICswMjAwCj4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9y
YXcvbmFuZF9iYXNlLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2Jhc2UuYwo+ID4gaW5k
ZXggMDBhMjYxMjg0YWFkLi5hZDBiODkyYzI1MjMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL210
ZC9uYW5kL3Jhdy9uYW5kX2Jhc2UuYwo+ID4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFu
ZF9iYXNlLmMKPiA+IEBAIC00ODM1LDcgKzQ4MzUsNyBAQCBzdGF0aWMgaW50IG5hbmRfZGV0ZWN0
KHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIHN0cnVjdCBuYW5kX2ZsYXNoX2RldiAqdHlwZSkKPiA+
ICAKPiA+ICBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IG5hbmRfZWNjX21vZGVzW10gPSB7Cj4g
PiAgCVtOQU5EX0VDQ19OT05FXQkJPSAibm9uZSIsCj4gPiAtCVtOQU5EX0VDQ19TT0ZUXQkJPSAi
c29mdCIsCj4gPiArCVtOQU5EX1NPRlRfRUNDX0VOR0lORV0JCT0gInNvZnQiLCAgCj4gCj4gTm90
IHN1cmUgd2h5IHRoaXMgb25lIGlzIGNoYW5nZWQuIFRoaXMgc3RyaW5nIGFycmF5IHN0aWxsIGRl
c2NyaWJlcyBFQ0MKPiBtb2Rlcywgbm90IEVDQyBlbmdpbmUgdHlwZXMuCj4gCj4gPiAgCVtOQU5E
X0VDQ19IV10JCT0gImh3IiwKPiA+ICAJW05BTkRfRUNDX0hXX1NZTkRST01FXQk9ICJod19zeW5k
cm9tZSIsCj4gPiAgCVtOQU5EX0VDQ19IV19PT0JfRklSU1RdCT0gImh3X29vYl9maXJzdCIsCj4g
PiBAQCAtNDg2MywyMSArNDg2Myw0NCBAQCBzdGF0aWMgaW50IG9mX2dldF9uYW5kX2VjY19tb2Rl
KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4gPiAgCWlmIChlcnIgPCAwKQo+ID4gIAkJcmV0dXJu
IGVycjsKPiA+ICAKPiA+IC0JZm9yIChpID0gTkFORF9FQ0NfTk9ORTsgaSA8IEFSUkFZX1NJWkUo
bmFuZF9lY2NfbW9kZXMpOyBpKyspCj4gPiAtCQlpZiAoIXN0cmNhc2VjbXAocG0sIG5hbmRfZWNj
X21vZGVzW2ldKSkKPiA+ICsJZm9yIChpID0gTkFORF9OT19FQ0NfRU5HSU5FOwo+ID4gKwkgICAg
IGkgPCBBUlJBWV9TSVpFKG5hbmRfZWNjX2VuZ2luZV9wcm92aWRlcnMpOyBpKyspCj4gPiArCQlp
ZiAoIXN0cmNhc2VjbXAocG0sIG5hbmRfZWNjX2VuZ2luZV9wcm92aWRlcnNbaV0pKQo+ID4gIAkJ
CXJldHVybiBpOyAgCj4gCj4gSG0sIHlvdSBzdGlsbCBuZWVkIHRvIHN1cHBvcnQgdGhlIG9sZCBi
aW5kaW5ncyAoSSB3b25kZXIgaG93IHRoYXQgY2FuCj4gd29yaykuIFdoYXQgc2hvdWxkIGJlIGRv
bmUgaW5zdGVhZCBpcyBoYXZlIGEgY29udmVyc2lvbiB0YWJsZSB0aGF0IHR1cm5zCj4gYW4gZWNj
X21vZGUgc3RyaW5nIGludG8gYSBlbmdpbmVfdHlwZStwbGFjZW1lbnQgcGFpciwgc28geW91IGRv
bid0IGhhdmUKPiB0byB1cGRhdGUgdGhlIERUIGJpbmRpbmdzICh0aG91Z2ggd2UgbWlnaHQgd2Fu
dCB0byBleHBvc2UgbmV3IHByb3BzIGZvcgo+IHRoZSBuZXcgbW9kZWwsIGxpa2UgZWNjLXBsYWNl
bWVudCBhbmQgZWNjLWVuZ2luZSkuCgpBcyB5b3Uga25vdyB0aGlzIHNlcmllcyBpcyBhbHJlYWR5
IHF1aXRlIGJpZyA6cC4gTXkgcG9pbnQgaGVyZSBpcyB0bwpjbGFyaWZ5IGEgYml0IGJ1dCBub3cg
cmV3b3JrIHRoZSBEVCBwcm9wZXJ0aWVzIHdoaWNoIGFyZSB0aGluZ3MgdGhhdAp5b3UgY2FuIG5l
dmVyIGdldCBlbnRpcmVseSByaWQgb2YuIFRoaXMgaXMgZXhhY3RseSB3aHkgSSBrZXB0IHRoZQpz
dHJpbmcgcHJvcGVydGllcyBhcyBiZWZvcmU6IG5vdCBjaGFuZ2luZyBhbnl0aGluZyBpbiB0aGUg
RFQKcmVwcmVzZW50YXRpb24uIEFueW9uZSB3aXRoIHRoZSB0aW1lIGFuZCBkZXNpcmUgdG8gZG8g
c28gaXMgd2VsY29tZSwKYnV0IEknbSBub3Qgd2lsbGluZyB0byBkbyBpdCBpbiB0aGlzIHNlcmll
cyA6KQoKSSdtIGFkZHJlc3NpbmcgbW9zdCBvZiB5b3VyIGNvbW1lbnRzIChtYWlubHkgZW51bS9u
YW1lIGNoYW5nZXMpIGJ1dCB0aGUKc3RyaW5nIGRlZmluaXRpb25zIHdpbGwgcmVtYWluIHRoZSBz
YW1lLCBldmVuIGlmIHRoZXkgYXJlIG5vdCBlbnRpcmVseQphY2N1cmF0ZS4gV2l0aCB0aGVzZSBi
aXRzIGtlcHQgaW50YWN0LCB0aGUgYmVsb3cgbG9naWMgd29ya3MsIEkga25vdwppdCBpcyBub3Qg
Y2xlYW4sIGFuZCBkZXNlcnZlcyBtb3JlIGNsZWFuaW5nLCBidXQgdGhpcyBpcyBhIGRpc3RpbmN0
CndvcmsgOikKCj4gCj4gPiAgCj4gPiArCWZvciAoaSA9IE5BTkRfRUNDX1NZTkRST01FX09PQl9Q
TEFDRU1FTlQ7Cj4gPiArCSAgICAgaSA8IEFSUkFZX1NJWkUobmFuZF9lY2NfZW5naW5lX29vYl9w
bGFjZW1lbnQpOyBpKyspCj4gPiArCQlpZiAoIXN0cmNhc2VjbXAocG0sIG5hbmRfZWNjX2VuZ2lu
ZV9vb2JfcGxhY2VtZW50W2ldKSkKPiA+ICsJCQlyZXR1cm4gTkFORF9IV19FQ0NfRU5HSU5FOwo+
ID4gKyAgCj4gCj4gSSBhbHNvIGRvbid0IHVuZGVyc3RhbmQgaG93IHRoaXMgb25lIHdvcmtzLCBw
bGFjZW1lbnQgZG9lcyBub3QgZ2l2ZSBhbnkKPiBjbHVlIG9uIHRoZSB0eXBlIG9mIEVDQyBlbmdp
bmUgKGF0IGxlYXN0IGl0IHNob3VsZG4ndCkuCj4gCj4gPiAgCS8qCj4gPiAgCSAqIEZvciBiYWNr
d2FyZCBjb21wYXRpYmlsaXR5IHdlIHN1cHBvcnQgZmV3IG9ic29sZXRlZCB2YWx1ZXMgdGhhdCBk
b24ndAo+ID4gLQkgKiBoYXZlIHRoZWlyIG1hcHBpbmdzIGludG8gdGhlIG5hbmRfZWNjX21vZGUg
ZW51bSBhbnltb3JlICh0aGV5IHdlcmUKPiA+IC0JICogbWVyZ2VkIHdpdGggb3RoZXIgZW51bXMp
Lgo+ID4gKwkgKiBoYXZlIHRoZWlyIG1hcHBpbmdzIGludG8gdGhlIG5hbmRfZWNjX2VuZ2luZV9w
cm92aWRlcnMgZW51bSBhbnltb3JlCj4gPiArCSAqICh0aGV5IHdlcmUgbWVyZ2VkIHdpdGggb3Ro
ZXIgZW51bXMpLgo+ID4gIAkgKi8KPiA+ICAJaWYgKCFzdHJjYXNlY21wKHBtLCAic29mdF9iY2gi
KSkKPiA+IC0JCXJldHVybiBOQU5EX0VDQ19TT0ZUOwo+ID4gKwkJcmV0dXJuIE5BTkRfU09GVF9F
Q0NfRU5HSU5FOwo+ID4gIAo+ID4gIAlyZXR1cm4gLUVOT0RFVjsKPiA+ICB9ICAKClRoYW5rcywK
TWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
