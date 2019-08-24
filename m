Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44F39BD4B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 13:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nBmBNZFStVnRNVicYm1I6QsfA3U6ZbPfQdD8zoLjTA=; b=schGQyPjxa4cyD
	blKxARdcAiD3tmvSmVzupDWyDSzSmxDwdy1yDgBhCquh3lzzAFYfmP9Rv6qR4ehETNSI2plyEtEea
	LaF8pKfja8cO64m/4mbWhC+ZbJhD2m3+QfojVIbIPY2/dq1r9WV1pvf0xzjIQDBpUjSt7QdaNxe8o
	W7oWPu1QkjdfLLG3s4LxebTy+WmL+NJaa6ZntfiIOX9+txfS4rAvFTs4Q0cEfKPfgj2poQMUsV9TN
	5DRaKldeVqKNrfSUl3yPfueSckoD6Dq7G8VxerMC/AN44wOjVKG0cZCGKvUsxuP/CdZ2rNOTA/zW8
	YIlrk/J8qmyc3zQTmMFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1UFw-0005Tu-Gt; Sat, 24 Aug 2019 11:30:52 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1UFm-0005TR-7Q
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 11:30:43 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id EF5E61BF206;
 Sat, 24 Aug 2019 11:30:37 +0000 (UTC)
Date: Sat, 24 Aug 2019 13:30:36 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 16/20] dt-bindings: marvell: Declare the CN913x SoC
 compatibles
Message-ID: <20190824133036.798da540@xps13>
In-Reply-To: <20190821193726.GA32220@bogus>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
 <20190806145500.24109-17-miquel.raynal@bootlin.com>
 <20190821193726.GA32220@bogus>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_043042_565691_F77FCA44 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGUgb24gV2VkLCAyMSBB
dWcgMjAxOSAxNDozNzoyNiAtMDUwMDoKCj4gT24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDQ6NTQ6
NTZQTSArMDIwMCwgTWlxdWVsIFJheW5hbCB3cm90ZToKPiA+IEZyb206IEdyemVnb3J6IEphc3pj
enlrIDxqYXpAc2VtaWhhbGYuY29tPgo+ID4gCj4gPiBEZXNjcmliZSB0aGUgY29tcGF0aWJsZSBw
cm9wZXJ0aWVzIGZvciB0aGUgbmV3IE1hcnZlbGwgU29DczoKPiA+ICogQ045MTMwOiAxeCBBUDgw
Ny1xdWFkICsgMXggQ1AxMTUgKDF4IGVtYmVkZGVkKQo+ID4gKiBDTjkxMzE6IDF4IEFQODA3LXF1
YWQgKyAyeCBDUDExNSAoMXggZW1iZWRkZWQgKyAxeCBtb2R1bGFyKQo+ID4gKiBDTjkxMzI6IDF4
IEFQODA3LXF1YWQgKyAzeCBDUDExNSAoMXggZW1iZWRkZWQgKyAyeCBtb2R1bGFyKQo+ID4gCj4g
PiBDUDExNSBhcmUgc2ltaWxhciB0byBDUDExMCBpbiB0ZXJtcyBvZiBmZWF0dXJlcy4KPiA+IAo+
ID4gVGhlcmUgYXJlIHRocmVlIGRldmVsb3BtZW50IGJvYXJkcyBiYXNlZCBvbiB0aGVzZSBTb0Nz
Ogo+ID4gKiBDTjkxMzAtREI6IGNvbWVzIGFzIGEgc2luZ2xlIG1vdGhlciBib2FyZCAod2l0aCB0
aGUgQ1AxMTUgYnVuZGxlZCkKPiA+ICogQ045MTMxLURCOiBzYW1lIGFzIENOOTEzMC1EQiB3aXRo
IG9uZSBhZGRpdGlvbmFsIG1vZHVsYXIgQ1AxMTUKPiA+ICogQ045MTMyLURCOiBzYW1lIGFzIENO
OTEzMC1EQiB3aXRoIHR3byBhZGRpdGlvbmFsIG1vZHVsYXIgQ1AxMTUKPiA+IAo+ID4gU2lnbmVk
LW9mZi1ieTogR3J6ZWdvcnogSmFzemN6eWsgPGphekBzZW1paGFsZi5jb20+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+ID4gLS0t
Cj4gPiAgLi4uL2JpbmRpbmdzL2FybS9tYXJ2ZWxsL2FybWFkYS03ay04ay50eHQgICAgICAgICAg
IHwgMTMgKysrKysrKysrKysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pICAKPiAKPiBQbGVhc2UgY29udmVydCB0aGlzIHRvIERUIHNjaGVtYSBm
aXJzdC4KCkFzIHlvdSB3aXNoLgoKPiAKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWFydmVsbC9hcm1hZGEtN2stOGsudHh0IGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tYXJ2ZWxsL2FybWFkYS03ay04ay50
eHQKPiA+IGluZGV4IGRmOThhOWM4MmE4Yy4uOGViMzRjYTRjNGYwIDEwMDY0NAo+ID4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tYXJ2ZWxsL2FybWFkYS03ay04
ay50eHQKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWFy
dmVsbC9hcm1hZGEtN2stOGsudHh0Cj4gPiBAQCAtMSw3ICsxLDcgQEAKPiA+ICBNYXJ2ZWxsIEFy
bWFkYSA3Sy84SyBQbGF0Zm9ybXMgRGV2aWNlIFRyZWUgQmluZGluZ3MKPiA+ICAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ICAKPiA+IC1Cb2Fy
ZHMgdXNpbmcgYSBTb0Mgb2YgdGhlIE1hcnZlbGwgQXJtYWRhIDdLIG9yIDhLIGZhbWlsaWVzIG11
c3QgY2FycnkKPiA+ICtCb2FyZHMgdXNpbmcgYSBTb0Mgb2YgdGhlIE1hcnZlbGwgQXJtYWRhIDdL
LzhLIG9yIENOOTEzeCBmYW1pbGllcyBtdXN0IGNhcnJ5Cj4gPiAgdGhlIGZvbGxvd2luZyByb290
IG5vZGUgcHJvcGVydHk6Cj4gPiAgCj4gPiAgIC0gY29tcGF0aWJsZSwgd2l0aCBvbmUgb2YgdGhl
IGZvbGxvd2luZyB2YWx1ZXM6Cj4gPiBAQCAtMTgsNiArMTgsMTcgQEAgdGhlIGZvbGxvd2luZyBy
b290IG5vZGUgcHJvcGVydHk6Cj4gPiAgICAgLSAibWFydmVsbCxhcm1hZGE4MDQwIiwgIm1hcnZl
bGwsYXJtYWRhLWFwODA2LXF1YWQiLCAibWFydmVsbCxhcm1hZGEtYXA4MDYiCj4gPiAgICAgICAg
d2hlbiB0aGUgU29DIGJlaW5nIHVzZWQgaXMgdGhlIEFybWFkYSA4MDQwCj4gPiAgCj4gPiArICAg
LSAibWFydmVsbCxjbjkxMzAiLCAibWFydmVsbCxhcm1hZGEtYXA4MDctcXVhZCIsICJtYXJ2ZWxs
LGFybWFkYS1hcDgwNyIKPiA+ICsgICAgICB3aGVuIHRoZSBTb0MgYmVpbmcgdXNlZCBpcyB0aGUg
QXJtYWRhIENOOTEzMCB3aXRoIG5vIGV4dGVybmFsIENQLgo+ID4gKwo+ID4gKyAgIC0gIm1hcnZl
bGwsY245MTMxIiwgIm1hcnZlbGwsY245MTMwIiwKPiA+ICsgICAgICJtYXJ2ZWxsLGFybWFkYS1h
cDgwNy1xdWFkIiwgIm1hcnZlbGwsYXJtYWRhLWFwODA3Igo+ID4gKyAgICAgIHdoZW4gdGhlIFNv
QyBiZWluZyB1c2VkIGlzIHRoZSBBcm1hZGEgQ045MTMwIHdpdGggb25lIGV4dGVybmFsIENQLgo+
ID4gKwo+ID4gKyAgIC0gIm1hcnZlbGwsY245MTMyIiwgIm1hcnZlbGwsY245MTMxIiwgIm1hcnZl
bGwsY245MTMwIiwKPiA+ICsgICAgICJtYXJ2ZWxsLGFybWFkYS1hcDgwNy1xdWFkIiwgIm1hcnZl
bGwsYXJtYWRhLWFwODA3IiAgCj4gCj4gSXQncyBnZW5lcmFsbHkgbm90IGFsbCB0aGF0IHVzZWZ1
bCB0byBoYXZlIGFsbCB0aGVzZSBjb21wYXRpYmxlcy4KPiAKPiA+ICsgICAgICB3aGVuIHRoZSBT
b0MgYmVpbmcgdXNlZCBpcyB0aGUgQXJtYWRhIENOOTEzMCB3aXRoIHR3byBleHRlcm5hbCBDUHMu
ICAKPiAKPiBJcyB0aGUgbnVtYmVyIG9mIGV4dGVybmFsIENQcyBub3QgZGlzY292ZXJhYmxlIHNv
bWV3aGVyZSBlbHNlIGluIHRoZSBEVD8KCkkgZG9uJ3QgdGhpbmsgc28uCgpXaGF0IGRvIHlvdSBz
dWdnZXN0PyBLZWVwIG9ubHkgdGhlIG1hcnZlbGwsY245MTMwIGNvbXBhdGlibGU/IEkgYW0gbm90
CnN1cmUgaGF2aW5nIHRoZSB0aHJlZSBjb21wYXRpYmxlcyBpcyBhY3R1YWxseSB1c2VmdWwgYnV0
IGZvciB0aGUgcmVhZGVyCkkgZmluZCBpdCBtb3JlIGZyaWVuZGx5LiBPZiBjb3Vyc2UgdGhlIG1v
ZGVsIG5hbWUgd2lsbCByZWZsZWN0IHRoZQpudW1iZXIgb2YgZXh0ZXJuYWwgQ1AgYnV0IGZyb20g
YSBjb21wdXRhdGlvbmFsIHBvaW50IG9mIHZpZXcgdGhhdCdzCmhhcmQgdG8gcGFyc2UgaWYgbmVl
ZGVkLgoKPiAKPiA+ICsKPiA+ICBFeGFtcGxlOgo+ID4gIAo+ID4gIGNvbXBhdGlibGUgPSAibWFy
dmVsbCxhcm1hZGE3MDQwLWRiIiwgIm1hcnZlbGwsYXJtYWRhNzA0MCIsCj4gPiAtLSAKPiA+IDIu
MjAuMQo+ID4gICAKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
