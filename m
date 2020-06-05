Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CA81EF1CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 09:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kwENxNE4nyATRPPNcNz7lbdeh1Bz5GLFzPrBaH1GV0=; b=fsCtiNC/EJX6Lp
	9Yde4P0nNbe79VMOlXj864WYdY3CJ5pfxISq/QVK+4QmEIZ0b/vL9/Ge5enxae22lFpKNTL2MMlVw
	6UsoM8pauAZ7JXrAEUCONC9rRX5pX6uqF5TiMBV1dJdtmycDn3Xdm9yqeetxw0Rp4/srvfam2HDj9
	mk34VAb9sCS1pspW48nTKGqdLa86A5rjOwxnei0QIRUh7198J5ydPl8Qb956b6ZasjlvuQZQcjsnu
	D3JxoVCYHqEy5lBbFl8hg77GUo3XdMeuWx8RIn0Pmq5mFQWwBod6FdnKp8Y44dLoKLeOGAec5+aNh
	wJTdseMan3kshwjnpEaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh6cm-0006OQ-KN; Fri, 05 Jun 2020 07:18:44 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh6cf-0006Na-M8; Fri, 05 Jun 2020 07:18:39 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 61F4820014;
 Fri,  5 Jun 2020 07:18:19 +0000 (UTC)
Date: Fri, 5 Jun 2020 09:18:15 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v10 07/20] dt-bindings: mtd: Document boolean NAND ECC
 properties
Message-ID: <20200605091815.714012d9@xps13>
In-Reply-To: <20200604230804.GA13821@bogus>
References: <20200603175759.19948-1-miquel.raynal@bootlin.com>
 <20200603175759.19948-8-miquel.raynal@bootlin.com>
 <20200604230804.GA13821@bogus>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_001837_857661_D188335F 
X-CRM114-Status: GOOD (  16.34  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGUgb24gVGh1LCA0IEp1
biAyMDIwIDE3OjA4OjA0IC0wNjAwOgoKPiBPbiBXZWQsIEp1biAwMywgMjAyMCBhdCAwNzo1Nzo0
NlBNICswMjAwLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+ID4gRG9jdW1lbnQgbmFuZC11c2Utc29m
dC1lY2MtZW5naW5lIGFuZCBuYW5kLW5vLWVjYy1lbmdpbmUgcHJvcGVydGllcy4KPiA+IFRoZSBm
b3JtZXIgaXMgaGVyZSB0byBmb3JjZSBzb2Z0d2FyZSBjb3JyZWN0aW9uLCB0aGUgbGF0dGVyIHBy
ZXZlbnRzCj4gPiBhbnkgY29ycmVjdGlvbiB0byBoYXBwZW4uCj4gPiAKPiA+IFRoZXNlIHByb3Bl
cnRpZXMgKGFsb25nIHdpdGggbmFuZC1lY2MtZW5naW5lKSBhcmUgc3VwcG9zZWQgdG8gYmUgbW9y
ZQo+ID4gYWNjdXJhdGUgdGhhbiB0aGUgY3VycmVudCBuYW5kLWVjYy1tb2RlcyB3aWNoIGlzIHZl
cnkgbWlzbGVhZGluZyBhbmQKPiA+IHZlcnkgb2Z0ZW4gcGVvcGxlIHRoaW5rIGl0IGlzIG1hbmRh
dG9yeSB3aGlsZSB0aGUgY29yZSBzaG91bGQgYmUKPiA+IHJlbGllZCB1cG9uIHRvIGRlY2lkZSB3
aGljaCBjb3JyZWN0aW9uIHRvIGhhbmRsZS4KPiA+IAo+ID4gbmFuZC1lY2MtbW9kZSB3YXMgYWxy
ZWFkeSBpbmFjdXJhdGUsIGJ1dCBpdCBiZWNvbWVzIHRvdGFsbHkKPiA+IHByb2JsZW1hdGljIHdp
dGggc2V0dXBzIHdoZXJlIHRoZXJlIGFyZSBzZXZlcmFsIGhhcmR3YXJlIGVuZ2luZXMuCj4gPiAK
PiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5j
b20+Cj4gPiAtLS0KPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL25h
bmQtY29udHJvbGxlci55YW1sIHwgNiArKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbXRkL25hbmQtY29udHJvbGxlci55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL210ZC9uYW5kLWNvbnRyb2xsZXIueWFtbAo+ID4gaW5kZXggMDk2OWQyZTY3
MjBiLi5hMzc1MDk3OGViYjggMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbXRkL25hbmQtY29udHJvbGxlci55YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL25hbmQtY29udHJvbGxlci55YW1sCj4gPiBAQCAt
NjgsNiArNjgsMTIgQEAgcGF0dGVyblByb3BlcnRpZXM6Cj4gPiAgICAgICAgICAgIDMvIFRoZSBF
Q0MgZW5naW5lIGlzIGV4dGVybmFsLCBpbiB0aGlzIGNhc2UgdGhlIHBoYW5kbGUgc2hvdWxkCj4g
PiAgICAgICAgICAgIHJlZmVyZW5jZSB0aGUgc3BlY2lmaWMgRUNDIGVuZ2luZSBub2RlLgo+ID4g
IAo+ID4gKyAgICAgIG5hbmQtdXNlLXNvZnQtZWNjLWVuZ2luZTogdHJ1ZQo+ID4gKyAgICAgICAg
ZGVzY3JpcHRpb246IFVzZSBhIHNvZnR3YXJlIEVDQyBlbmdpbmUuICAKPiAKPiBIdW1tLCBJJ20g
c3VycHJpc2VkIHRoaXMgaXMgdmFsaWQgWUFNTC4gbmFuZC11c2Utc29mdC1lY2MtZW5naW5lIGNh
bid0IAo+IGJlIGJvdGggYSBib29sZWFuIGFuZCBhIG1hcCAoYWthIHNjaGVtYSwgYWthIGRpY3Qp
Lgo+IAo+IG5hbmQtdXNlLXNvZnQtZWNjLWVuZ2luZToKPiAgIHR5cGU6IGJvb2xlYW4KPiAgIGRl
c2NyaXB0aW9uOiAuLi4KPiAKCk9rLCBJIG1pZ2h0IGhhdmUgYmVlbiBpbnNwaXJlZCBmcm9tIHRo
aXMgbGluZSBpbiBleGFtcGxlLXNjaGVtYS55YW1sOgoKICBpbnRlcnJ1cHQtY29udHJvbGxlcjog
dHJ1ZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgIyBUaGUg
Y29yZSBjaGVja3MgdGhpcyBpcyBhIGJvb2xlYW4sIHNvIGp1c3QgaGF2ZSB0byBsaXN0IGl0IGhl
cmUgdG8gYmUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgCiAgICAjIHZhbGlkIGZvciB0aGlzIGJpbmRpbmcuCgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3
LCBJJ2xsIGNvcnJlY3QgaXQuCgpDaGVlcnMsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
