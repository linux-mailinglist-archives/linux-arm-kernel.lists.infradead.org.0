Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9945BA5727
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiVUJdIFP4pGx4oDrqeWLadOGNDRmNevI8AbmxZPwuU=; b=pQ3nS2Z9MHNGyx
	jcQ46mkPizAc9fOOf/PxjegMY+3rg8RVltwNGrIZN/aDjMZxRQ8o6W3VH61G+zB0Xb2qWHUPeEPqg
	0RVQ9fnMwOM6h/3ti+Jc5kJR0nQTw7MuIStPyiYS3Hv4KH0G4/g9ybTUBDxVsisamYB8n30PuGw1F
	AeZrBUim+E2ZzfwA4OC/+6qRNrkWOeFB1+Wc6RdaO++yqT/N2v0IBxhRZ7V44TOT32hg0MbFUokyH
	btVwJ8MlDXEiWGjptcTxElqbjoAjPvGi5sC0MlKv2tdYsQYG0Nv2r+Rg7ScnXEQIFUsXY+0ZKf99C
	6Uo14+qzpRHRuxi+mqsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4m2J-0004sd-A2; Mon, 02 Sep 2019 13:06:23 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4m0l-000056-RH; Mon, 02 Sep 2019 13:04:49 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id A7E575FC4B;
 Mon,  2 Sep 2019 15:02:35 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="LhJEJsW3"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.232])
 by mail.vdorst.com (Postfix) with ESMTPA id 64F6B1DB401B;
 Mon,  2 Sep 2019 15:02:35 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 64F6B1DB401B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1567429355;
 bh=UHciqm/4YKRSRYfKMGzXa5FgKHnSG2boSl+FvMHHCns=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LhJEJsW3EOGTBA9zGrBkk1Ewo+ZU6hUlJwd6TguYvl3BVQi54LEgWAPoZHxrbyip9
 raWMRth0K1XilZWTLI6f5owNYS9DyanfXTZwi8Z8vqgJJyZTm0pkDrXOLBedn1JNmF
 CBcdLb6/X1qQuFYDS6yKN3RKtSfLHH1q+lE9i7yRwVNPdyEwHwxM1P+AiUfHUPjtg8
 T9LxyEwzJoBZ4gKiJOt4PaWL88Dg1XV/xX8MnjjcMRadcmkbH/hPwOBBWjlldzHEde
 /jPZ2mZAdBr3f0ZOm/SnprQ9/iSmHJGItbOF9QNqGkuHbkgbKHJ95jqP0WpqtJhDYn
 XaYJ4UKAaIDPQ==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: Sean Wang <sean.wang@mediatek.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v3 2/3] dt-bindings: net: dsa: mt7530: Add support
 for port 5
Date: Mon,  2 Sep 2019 15:02:25 +0200
Message-Id: <20190902130226.26845-3-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190902130226.26845-1-opensource@vdorst.com>
References: <20190902130226.26845-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_060448_196360_26E1A4B6 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Frank Wunderlich <frank-w@public-files.de>,
 netdev@vger.kernel.org, linux-mips@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TVQ3NTMwIHBvcnQgNSBoYXMgbWFueSBtb2Rlcy9jb25maWd1cmF0aW9ucy4KVXBkYXRlIHRoZSBk
b2N1bWVudGF0aW9uIGhvdyB0byB1c2UgcG9ydCA1LgoKU2lnbmVkLW9mZi1ieTogUmVuw6kgdmFu
IERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+CkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVs
Lm9yZwpDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KLS0tCnYyLT52MzoKKiBSZW1v
dmUgJ3N0YXR1cyA9ICJva2F5IjsnIGxpbmVzLCBzdWdnZXN0ZWQgYnkgUm9iIEhlcnJpbmcKdjEt
PnYyOgoqIEFkZGluZyBleHRyYSBub3RlIGFib3V0IFJHTUlJMiBhbmQgZ3BpbyB1c2UuCnJmYy0+
djE6CiogTm8gY2hhbmdlCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9tdDc1MzAu
dHh0ICAgIHwgMjE0ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIxNCBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L25ldC9kc2EvbXQ3NTMwLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9u
ZXQvZHNhL210NzUzMC50eHQKaW5kZXggNDdhYTIwNWVlMGJkLi5jNWVkNWQyNWY2NDIgMTAwNjQ0
Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNhL210NzUzMC50
eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kc2EvbXQ3NTMw
LnR4dApAQCAtMzUsNiArMzUsNDIgQEAgUmVxdWlyZWQgcHJvcGVydGllcyBmb3IgdGhlIGNoaWxk
IG5vZGVzIHdpdGhpbiBwb3J0cyBjb250YWluZXI6CiAtIHBoeS1tb2RlOiBTdHJpbmcsIG11c3Qg
YmUgZWl0aGVyICJ0cmdtaWkiIG9yICJyZ21paSIgZm9yIHBvcnQgbGFiZWxlZAogCSAiY3B1Ii4K
IAorUG9ydCA1IG9mIHRoZSBzd2l0Y2ggaXMgbXV4ZWQgYmV0d2VlbjoKKzEuIEdNQUM1OiBHTUFD
NSBjYW4gaW50ZXJmYWNlIHdpdGggYW5vdGhlciBleHRlcm5hbCBNQUMgb3IgUEhZLgorMi4gUEhZ
IG9mIHBvcnQgMCBvciBwb3J0IDQ6IFBIWSBpbnRlcmZhY2VzIHdpdGggYW4gZXh0ZXJuYWwgTUFD
IGxpa2UgMm5kIEdNQUMKKyAgIG9mIHRoZSBTT0MuIFVzZWQgaW4gbWFueSBzZXR1cHMgd2hlcmUg
cG9ydCAwLzQgYmVjb21lcyB0aGUgV0FOIHBvcnQuCisgICBOb3RlOiBPbiBhIE1UNzYyMSBTT0Mg
d2l0aCBpbnRlZ3JhdGVkIHN3aXRjaDogMm5kIEdNQUMgY2FuIG9ubHkgY29ubmVjdGVkIHRvCisJ
IEdNQUM1IHdoZW4gdGhlIGdwaW9zIGZvciBSR01JSTIgKEdQSU8gMjItMzMpIGFyZSBub3QgdXNl
ZCBhbmQgbm90CisJIGNvbm5lY3RlZCB0byBleHRlcm5hbCBjb21wb25lbnQhCisKK1BvcnQgNSBt
b2Rlcy9jb25maWd1cmF0aW9uczoKKzEuIFBvcnQgNSBpcyBkaXNhYmxlZCBhbmQgaXNvbGF0ZWQ6
IEFuIGV4dGVybmFsIHBoeSBjYW4gaW50ZXJmYWNlIHRvIHRoZSAybmQKKyAgIEdNQUMgb2YgdGhl
IFNPQy4KKyAgIEluIHRoZSBjYXNlIG9mIGEgYnVpbGQtaW4gTVQ3NTMwIHN3aXRjaCwgcG9ydCA1
IHNoYXJlcyB0aGUgUkdNSUkgYnVzIHdpdGggMm5kCisgICBHTUFDIGFuZCBhbiBvcHRpb25hbCBl
eHRlcm5hbCBwaHkuIE1pbmQgdGhlIEdQSU8vcGluY3RsIHNldHRpbmdzIG9mIHRoZSBTT0MhCisy
LiBQb3J0IDUgaXMgbXV4ZWQgdG8gUEhZIG9mIHBvcnQgMC80OiBQb3J0IDAvNCBpbnRlcmZhY2Vz
IHdpdGggMm5kIEdNQUMuCisgICBJdCBpcyBhIHNpbXBsZSBNQUMgdG8gUEhZIGludGVyZmFjZSwg
cG9ydCA1IG5lZWRzIHRvIGJlIHNldHVwIGZvciB4TUlJIG1vZGUKKyAgIGFuZCBSR01JSSBkZWxh
eS4KKzMuIFBvcnQgNSBpcyBtdXhlZCB0byBHTUFDNSBhbmQgY2FuIGludGVyZmFjZSB0byBhbiBl
eHRlcm5hbCBwaHkuCisgICBQb3J0IDUgYmVjb21lcyBhbiBleHRyYSBzd2l0Y2ggcG9ydC4KKyAg
IE9ubHkgd29ya3Mgb24gcGxhdGZvcm0gd2hlcmUgZXh0ZXJuYWwgcGh5IFRYPC0+UlggbGluZXMg
YXJlIHN3YXBwZWQuCisgICBMaWtlIGluIHRoZSBVYmlxdWl0aSBFUi1YLVNGUC4KKzQuIFBvcnQg
NSBpcyBtdXhlZCB0byBHTUFDNSBhbmQgaW50ZXJmYWNlcyB3aXRoIHRoZSAybmQgR0FNQyBhcyAy
bmQgQ1BVIHBvcnQuCisgICBDdXJyZW50bHkgYSAybmQgQ1BVIHBvcnQgaXMgbm90IHN1cHBvcnRl
ZCBieSBEU0EgY29kZS4KKworRGVwZW5kaW5nIG9uIGhvdyB0aGUgZXh0ZXJuYWwgUEhZIGlzIHdp
cmVkOgorMS4gbm9ybWFsOiBUaGUgUEhZIGNhbiBvbmx5IGNvbm5lY3QgdG8gMm5kIEdNQUMgYnV0
IG5vdCB0byB0aGUgc3dpdGNoCisyLiBzd2FwcGVkOiBSR01JSSBUWCwgUlggYXJlIHN3YXBwZWQ7
IGV4dGVybmFsIHBoeSBpbnRlcmZhY2Ugd2l0aCB0aGUgc3dpdGNoIGFzCisgICBhIGV0aGVybmV0
IHBvcnQuIEJ1dCBjYW4ndCBpbnRlcmZhY2UgdG8gdGhlIDJuZCBHTUFDLgorCitCYXNlZCBvbiB0
aGUgRFQgdGhlIHBvcnQgNSBtb2RlIGlzIGNvbmZpZ3VyZWQuCisKK0RyaXZlciB0cmllcyB0byBs
b29rdXAgdGhlIHBoeS1oYW5kbGUgb2YgdGhlIDJuZCBHTUFDIG9mIHRoZSBtYXN0ZXIgZGV2aWNl
LgorV2hlbiBwaHktaGFuZGxlIG1hdGNoZXMgUEhZIG9mIHBvcnQgMCBvciA0IHRoZW4gcG9ydCA1
IHNldC11cCBhcyBtb2RlIDIuCitwaHktbW9kZSBtdXN0IGJlIHNldCwgc2VlIGFsc28gZXhhbXBs
ZSAyIGJlbG93IQorICogbXQ3NjIxOiBwaHktbW9kZSA9ICJyZ21paS10eGlkIjsKKyAqIG10NzYy
MzogcGh5LW1vZGUgPSAicmdtaWkiOworCiBTZWUgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL25ldC9kc2EvZHNhLnR4dCBmb3IgYSBsaXN0IG9mIGFkZGl0aW9uYWwKIHJlcXVpcmVk
LCBvcHRpb25hbCBwcm9wZXJ0aWVzIGFuZCBob3cgdGhlIGludGVncmF0ZWQgc3dpdGNoIHN1Ym5v
ZGVzIG11c3QKIGJlIHNwZWNpZmllZC4KQEAgLTk0LDMgKzEzMCwxODEgQEAgRXhhbXBsZToKIAkJ
CX07CiAJCX07CiAJfTsKKworRXhhbXBsZSAyOiBNVDc2MjE6IFBvcnQgNCBpcyBXQU4gcG9ydDog
Mm5kIEdNQUMgLT4gUG9ydCA1IC0+IFBIWSBwb3J0IDQuCisKKyZldGggeworCWdtYWMwOiBtYWNA
MCB7CisJCWNvbXBhdGlibGUgPSAibWVkaWF0ZWssZXRoLW1hYyI7CisJCXJlZyA9IDwwPjsKKwkJ
cGh5LW1vZGUgPSAicmdtaWkiOworCisJCWZpeGVkLWxpbmsgeworCQkJc3BlZWQgPSA8MTAwMD47
CisJCQlmdWxsLWR1cGxleDsKKwkJCXBhdXNlOworCQl9OworCX07CisKKwlnbWFjMTogbWFjQDEg
eworCQljb21wYXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOworCQlyZWcgPSA8MT47CisJCXBo
eS1tb2RlID0gInJnbWlpLXR4aWQiOworCQlwaHktaGFuZGxlID0gPCZwaHk0PjsKKwl9OworCisJ
bWRpbzogbWRpby1idXMgeworCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMg
PSA8MD47CisKKwkJLyogSW50ZXJuYWwgcGh5ICovCisJCXBoeTQ6IGV0aGVybmV0LXBoeUA0IHsK
KwkJCXJlZyA9IDw0PjsKKwkJfTsKKworCQltdDc1MzA6IHN3aXRjaEAxZiB7CisJCQljb21wYXRp
YmxlID0gIm1lZGlhdGVrLG10NzYyMSI7CisJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCSNz
aXplLWNlbGxzID0gPDA+OworCQkJcmVnID0gPDB4MWY+OworCQkJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKKwkJCW1lZGlhdGVrLG1jbTsKKworCQkJcmVzZXRzID0gPCZyc3RjdHJsIDI+Owor
CQkJcmVzZXQtbmFtZXMgPSAibWNtIjsKKworCQkJcG9ydHMgeworCQkJCSNhZGRyZXNzLWNlbGxz
ID0gPDE+OworCQkJCSNzaXplLWNlbGxzID0gPDA+OworCisJCQkJcG9ydEAwIHsKKwkJCQkJcmVn
ID0gPDA+OworCQkJCQlsYWJlbCA9ICJsYW4wIjsKKwkJCQl9OworCisJCQkJcG9ydEAxIHsKKwkJ
CQkJcmVnID0gPDE+OworCQkJCQlsYWJlbCA9ICJsYW4xIjsKKwkJCQl9OworCisJCQkJcG9ydEAy
IHsKKwkJCQkJcmVnID0gPDI+OworCQkJCQlsYWJlbCA9ICJsYW4yIjsKKwkJCQl9OworCisJCQkJ
cG9ydEAzIHsKKwkJCQkJcmVnID0gPDM+OworCQkJCQlsYWJlbCA9ICJsYW4zIjsKKwkJCQl9Owor
CisvKiBDb21tZW50ZWQgb3V0LiBQb3J0IDQgaXMgaGFuZGxlZCBieSAybmQgR01BQy4KKwkJCQlw
b3J0QDQgeworCQkJCQlyZWcgPSA8ND47CisJCQkJCWxhYmVsID0gImxhbjQiOworCQkJCX07Cisq
LworCisJCQkJY3B1X3BvcnQwOiBwb3J0QDYgeworCQkJCQlyZWcgPSA8Nj47CisJCQkJCWxhYmVs
ID0gImNwdSI7CisJCQkJCWV0aGVybmV0ID0gPCZnbWFjMD47CisJCQkJCXBoeS1tb2RlID0gInJn
bWlpIjsKKworCQkJCQlmaXhlZC1saW5rIHsKKwkJCQkJCXNwZWVkID0gPDEwMDA+OworCQkJCQkJ
ZnVsbC1kdXBsZXg7CisJCQkJCQlwYXVzZTsKKwkJCQkJfTsKKwkJCQl9OworCQkJfTsKKwkJfTsK
Kwl9OworfTsKKworRXhhbXBsZSAzOiBNVDc2MjE6IFBvcnQgNSBpcyBjb25uZWN0ZWQgdG8gZXh0
ZXJuYWwgUEhZOiBQb3J0IDUgLT4gZXh0ZXJuYWwgUEhZLgorCismZXRoIHsKKwlnbWFjMDogbWFj
QDAgeworCQljb21wYXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOworCQlyZWcgPSA8MD47CisJ
CXBoeS1tb2RlID0gInJnbWlpIjsKKworCQlmaXhlZC1saW5rIHsKKwkJCXNwZWVkID0gPDEwMDA+
OworCQkJZnVsbC1kdXBsZXg7CisJCQlwYXVzZTsKKwkJfTsKKwl9OworCisJbWRpbzogbWRpby1i
dXMgeworCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMgPSA8MD47CisKKwkJ
LyogRXh0ZXJuYWwgcGh5ICovCisJCWVwaHk1OiBldGhlcm5ldC1waHlANyB7CisJCQlyZWcgPSA8
Nz47CisJCX07CisKKwkJbXQ3NTMwOiBzd2l0Y2hAMWYgeworCQkJY29tcGF0aWJsZSA9ICJtZWRp
YXRlayxtdDc2MjEiOworCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkjc2l6ZS1jZWxscyA9
IDwwPjsKKwkJCXJlZyA9IDwweDFmPjsKKwkJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJ
CQltZWRpYXRlayxtY207CisKKwkJCXJlc2V0cyA9IDwmcnN0Y3RybCAyPjsKKwkJCXJlc2V0LW5h
bWVzID0gIm1jbSI7CisKKwkJCXBvcnRzIHsKKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJ
CQkjc2l6ZS1jZWxscyA9IDwwPjsKKworCQkJCXBvcnRAMCB7CisJCQkJCXJlZyA9IDwwPjsKKwkJ
CQkJbGFiZWwgPSAibGFuMCI7CisJCQkJfTsKKworCQkJCXBvcnRAMSB7CisJCQkJCXJlZyA9IDwx
PjsKKwkJCQkJbGFiZWwgPSAibGFuMSI7CisJCQkJfTsKKworCQkJCXBvcnRAMiB7CisJCQkJCXJl
ZyA9IDwyPjsKKwkJCQkJbGFiZWwgPSAibGFuMiI7CisJCQkJfTsKKworCQkJCXBvcnRAMyB7CisJ
CQkJCXJlZyA9IDwzPjsKKwkJCQkJbGFiZWwgPSAibGFuMyI7CisJCQkJfTsKKworCQkJCXBvcnRA
NCB7CisJCQkJCXJlZyA9IDw0PjsKKwkJCQkJbGFiZWwgPSAibGFuNCI7CisJCQkJfTsKKworCQkJ
CXBvcnRANSB7CisJCQkJCXJlZyA9IDw1PjsKKwkJCQkJbGFiZWwgPSAibGFuNSI7CisJCQkJCXBo
eS1tb2RlID0gInJnbWlpIjsKKwkJCQkJcGh5LWhhbmRsZSA9IDwmZXBoeTU+OworCQkJCX07CisK
KwkJCQljcHVfcG9ydDA6IHBvcnRANiB7CisJCQkJCXJlZyA9IDw2PjsKKwkJCQkJbGFiZWwgPSAi
Y3B1IjsKKwkJCQkJZXRoZXJuZXQgPSA8JmdtYWMwPjsKKwkJCQkJcGh5LW1vZGUgPSAicmdtaWki
OworCisJCQkJCWZpeGVkLWxpbmsgeworCQkJCQkJc3BlZWQgPSA8MTAwMD47CisJCQkJCQlmdWxs
LWR1cGxleDsKKwkJCQkJCXBhdXNlOworCQkJCQl9OworCQkJCX07CisJCQl9OworCQl9OworCX07
Cit9OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
