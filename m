Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CC9C2380
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:40:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gesRFFxerXozEuiom+BJk/ZRT0lI6uAoFthE9T3bh94=; b=PoXY7xoU4bq8el
	XbESh6b0pJdrTFwPl2TyN2nNKv7Dr/3b4Jz37UKnduAF3tv7ob6O3/jT/qDV2/AvVvrDBOiTX6Hu6
	KZ+vlfOOR/7PVyWNOWO0PpTqv5k4Y5s6Wg1XjdxoauIKi3bkTgt0P78xuiZEi90UNOVJc7X5kNpoQ
	Yb49EfjPyoi5lA9z9wGrs1AIRzgC2LsxvPUtAb9Gt/eMd+Z//B+udzFUVRQz6Fe9gvq2zwyNRJO/J
	y+4aOY7HMdfecwrs2g+m3HLNB/LJR0OjbsPfO9oLXwjlESg3hY1Y9fQAh9aZUS8oJD+d4aJYEqUuS
	b8+5tESCSDD/VtWe+Xtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwqJ-0000pH-Nc; Mon, 30 Sep 2019 14:40:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwq5-0000oJ-NU
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:39:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACB0428;
 Mon, 30 Sep 2019 07:39:47 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A963B3F706;
 Mon, 30 Sep 2019 07:39:46 -0700 (PDT)
Date: Mon, 30 Sep 2019 15:39:41 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Grzegorz Jaszczyk <jaz@semihalf.com>
Subject: Re: [PATCH v2] PCI: aardvark: fix big endian support
Message-ID: <20190930143941.GA3744@e121166-lin.cambridge.arm.com>
References: <1563279127-30678-1-git-send-email-jaz@semihalf.com>
 <CAH76GKMZy7z05Gc9HVDUkpM04+tXMa8xEEMBWMQ7Zx1Bt_B0xQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH76GKMZy7z05Gc9HVDUkpM04+tXMa8xEEMBWMQ7Zx1Bt_B0xQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_073949_807883_CD3038DA 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-pci@vger.kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBTZXAgMzAsIDIwMTkgYXQgMTA6MTc6MzNBTSArMDIwMCwgR3J6ZWdvcnogSmFzemN6
eWsgd3JvdGU6Cj4gSGVsbG8sCj4gCj4gSSB3YW50IHRvIGtpbmRseSByZW1pbmQgYWJvdXQgdGhp
cyBwYXRjaC4KCkkgbmVlZCBUaG9tYXMnIEFDSyBvbiB0aGVzZSBwYXRjaGVzIHRvIG1lcmdlIHRo
ZW0uCgpUaGFua3MsCkxvcmVuem8KCj4gQmVzdCByZWdhcmRzLAo+IEdyemVnb3J6Cj4gCj4gd3Qu
LCAxNiBsaXAgMjAxOSBvIDE0OjEyIEdyemVnb3J6IEphc3pjenlrIDxqYXpAc2VtaWhhbGYuY29t
PiBuYXBpc2HFgihhKToKPiA+Cj4gPiBJbml0aWFsaXNlIGV2ZXJ5IG5vdC1ieXRlIHdpZGUgZmll
bGRzIG9mIGVtdWxhdGVkIHBjaSBicmlkZ2UgY29uZmlnCj4gPiBzcGFjZSB3aXRoIHByb3BlciBj
cHVfdG9fbGUqIG1hY3JvLiBUaGlzIGlzIHJlcXVpcmVkIHNpbmNlIHRoZSBzdHJ1Y3R1cmUKPiA+
IGRlc2NyaWJpbmcgY29uZmlnIHNwYWNlIG9mIGVtdWxhdGVkIGJyaWRnZSBhc3N1bWVzIGxpdHRs
ZS1lbmRpYW4KPiA+IGNvbnZlbnRpb24uCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogR3J6ZWdvcnog
SmFzemN6eWsgPGphekBzZW1paGFsZi5jb20+Cj4gPiAtLS0KPiA+IHYxLT52Mgo+ID4gLSBhZGQg
bWlzc2luZyBjcHVfdG9fbGUzMiBmb3IgY2xhc3NfcmV2aXNvbiBhc3NpZ25tZW50IChpc3N1ZXMg
Zm91bmQgYnkKPiA+IFRob21hcyBQZXRhenpvbmkgYW5kIGFsc28gZGV0ZWN0ZWQgYnkgU3BhcnNl
IHRvb2wpLgo+ID4KPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jIHwg
MTIgKysrKysrKy0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2ktYWFyZHZhcmsuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKPiA+
IGluZGV4IDEzNGUwMzAuLjE3OGU5MmYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaS1hYXJkdmFyay5jCj4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3Bj
aS1hYXJkdmFyay5jCj4gPiBAQCAtNDc5LDE4ICs0NzksMjAgQEAgc3RhdGljIHZvaWQgYWR2a19z
d19wY2lfYnJpZGdlX2luaXQoc3RydWN0IGFkdmtfcGNpZSAqcGNpZSkKPiA+ICB7Cj4gPiAgICAg
ICAgIHN0cnVjdCBwY2lfYnJpZGdlX2VtdWwgKmJyaWRnZSA9ICZwY2llLT5icmlkZ2U7Cj4gPgo+
ID4gLSAgICAgICBicmlkZ2UtPmNvbmYudmVuZG9yID0gYWR2a19yZWFkbChwY2llLCBQQ0lFX0NP
UkVfREVWX0lEX1JFRykgJiAweGZmZmY7Cj4gPiAtICAgICAgIGJyaWRnZS0+Y29uZi5kZXZpY2Ug
PSBhZHZrX3JlYWRsKHBjaWUsIFBDSUVfQ09SRV9ERVZfSURfUkVHKSA+PiAxNjsKPiA+ICsgICAg
ICAgYnJpZGdlLT5jb25mLnZlbmRvciA9Cj4gPiArICAgICAgICAgICAgICAgY3B1X3RvX2xlMTYo
YWR2a19yZWFkbChwY2llLCBQQ0lFX0NPUkVfREVWX0lEX1JFRykgJiAweGZmZmYpOwo+ID4gKyAg
ICAgICBicmlkZ2UtPmNvbmYuZGV2aWNlID0KPiA+ICsgICAgICAgICAgICAgICBjcHVfdG9fbGUx
NihhZHZrX3JlYWRsKHBjaWUsIFBDSUVfQ09SRV9ERVZfSURfUkVHKSA+PiAxNik7Cj4gPiAgICAg
ICAgIGJyaWRnZS0+Y29uZi5jbGFzc19yZXZpc2lvbiA9Cj4gPiAtICAgICAgICAgICAgICAgYWR2
a19yZWFkbChwY2llLCBQQ0lFX0NPUkVfREVWX1JFVl9SRUcpICYgMHhmZjsKPiA+ICsgICAgICAg
ICAgICAgICBjcHVfdG9fbGUzMihhZHZrX3JlYWRsKHBjaWUsIFBDSUVfQ09SRV9ERVZfUkVWX1JF
RykgJiAweGZmKTsKPiA+Cj4gPiAgICAgICAgIC8qIFN1cHBvcnQgMzIgYml0cyBJL08gYWRkcmVz
c2luZyAqLwo+ID4gICAgICAgICBicmlkZ2UtPmNvbmYuaW9iYXNlID0gUENJX0lPX1JBTkdFX1RZ
UEVfMzI7Cj4gPiAgICAgICAgIGJyaWRnZS0+Y29uZi5pb2xpbWl0ID0gUENJX0lPX1JBTkdFX1RZ
UEVfMzI7Cj4gPgo+ID4gICAgICAgICAvKiBTdXBwb3J0IDY0IGJpdHMgbWVtb3J5IHByZWYgKi8K
PiA+IC0gICAgICAgYnJpZGdlLT5jb25mLnByZWZfbWVtX2Jhc2UgPSBQQ0lfUFJFRl9SQU5HRV9U
WVBFXzY0Owo+ID4gLSAgICAgICBicmlkZ2UtPmNvbmYucHJlZl9tZW1fbGltaXQgPSBQQ0lfUFJF
Rl9SQU5HRV9UWVBFXzY0Owo+ID4gKyAgICAgICBicmlkZ2UtPmNvbmYucHJlZl9tZW1fYmFzZSA9
IGNwdV90b19sZTE2KFBDSV9QUkVGX1JBTkdFX1RZUEVfNjQpOwo+ID4gKyAgICAgICBicmlkZ2Ut
PmNvbmYucHJlZl9tZW1fbGltaXQgPSBjcHVfdG9fbGUxNihQQ0lfUFJFRl9SQU5HRV9UWVBFXzY0
KTsKPiA+Cj4gPiAgICAgICAgIC8qIFN1cHBvcnQgaW50ZXJydXB0IEEgZm9yIE1TSSBmZWF0dXJl
ICovCj4gPiAgICAgICAgIGJyaWRnZS0+Y29uZi5pbnRwaW4gPSBQQ0lFX0NPUkVfSU5UX0FfQVNT
RVJUX0VOQUJMRTsKPiA+IC0tCj4gPiAyLjcuNAo+ID4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
