Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8963B97D85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFoHQCobi2Z+Uqrf7CPRv0oAarPjbyONtQu0a0hH9fU=; b=dIklIqjeD6P8iz
	7Hx52rVJOvy5q8If4Y6oyiUNQznnbJfTAo1rWiJy31eXyzGL2Z9e8RfUfh+n75RknnAMHseNqVUMq
	xpnZOgpCrBhVfeg33TTMz5YtMLVf+P7F+Oz38XikZoNtBd0mREI2d3GnjytXG3mdXj8kzBPDAhh6H
	PxeuIwBZ9hYWXD3xftkoL0EYyDLffVfu4EI9P0DmgIUUntBZjY03N9WmKcXhhy9IUhUcQG3uDBCX8
	+jZtjXqrJRU81GMD3dLsoKLt+mf3eBmkjfit5JcyQVZFnGyiS/VMKi8Tvrtp/Q8iLyp2WHYpuVQuI
	Y7OVNw2gFm03Ri6FK1JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Rsz-0008UA-GF; Wed, 21 Aug 2019 14:46:53 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Rs4-0007la-LI; Wed, 21 Aug 2019 14:46:00 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id D68315FD0D;
 Wed, 21 Aug 2019 16:45:55 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="TvPUKkFL"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 996881D8290F;
 Wed, 21 Aug 2019 16:45:55 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 996881D8290F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566398755;
 bh=rQQjaVJu6F0+ngomi26cD5hFUcxFi6/NsMWrdUzjt0g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TvPUKkFLvcKRdpgl2L2y2E8l3DFHIi3J0OuN2i+zyYPl1GbYoMiI0DUo9DdupLl2J
 0lxT0p/RrCZ76CF5GZdBBdhX1fhw9UL6MH/LrAPgJ1+qfZI6Jn5jXTwiOJsHczmbYu
 vnOC4NZsU/btekmtLkemRqebGWFKQ9mYgxn9vwgIAM8027C7txsbDWy+sdy6dm76zV
 9JlbOMpLe4vlPSMyRohufh90RqhXmA5DCiSJHI7gWCrTHWYfqCcjK3W2qumd8KJSOV
 UiJK2fER5n9YTdx+tdx4Fz6Rgwbqo/GIH3Sf0AuEnWvE54wDLPC3/6TZO4ip6T9wdb
 j++wRr2LV03Kg==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: Sean Wang <sean.wang@mediatek.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v2 2/3] dt-bindings: net: dsa: mt7530: Add support
 for port 5
Date: Wed, 21 Aug 2019 16:45:46 +0200
Message-Id: <20190821144547.15113-3-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190821144547.15113-1-opensource@vdorst.com>
References: <20190821144547.15113-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_074557_151936_31B25EA7 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Lm9yZwpDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KdjEtPnYyOgoqIEFkZGluZyBl
eHRyYSBub3RlIGFib3V0IFJHTUlJMiBhbmQgZ3BpbyB1c2UuCnJmYy0+djE6CiogTm8gY2hhbmdl
Ci0tLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9tdDc1MzAudHh0ICAgIHwgMjE4
ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIxOCBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kc2EvbXQ3
NTMwLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNhL210NzUz
MC50eHQKaW5kZXggNDdhYTIwNWVlMGJkLi40Mzk5M2FhZTNmOWMgMTAwNjQ0Ci0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNhL210NzUzMC50eHQKKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kc2EvbXQ3NTMwLnR4dApAQCAtMzUs
NiArMzUsNDIgQEAgUmVxdWlyZWQgcHJvcGVydGllcyBmb3IgdGhlIGNoaWxkIG5vZGVzIHdpdGhp
biBwb3J0cyBjb250YWluZXI6CiAtIHBoeS1tb2RlOiBTdHJpbmcsIG11c3QgYmUgZWl0aGVyICJ0
cmdtaWkiIG9yICJyZ21paSIgZm9yIHBvcnQgbGFiZWxlZAogCSAiY3B1Ii4KIAorUG9ydCA1IG9m
IHRoZSBzd2l0Y2ggaXMgbXV4ZWQgYmV0d2VlbjoKKzEuIEdNQUM1OiBHTUFDNSBjYW4gaW50ZXJm
YWNlIHdpdGggYW5vdGhlciBleHRlcm5hbCBNQUMgb3IgUEhZLgorMi4gUEhZIG9mIHBvcnQgMCBv
ciBwb3J0IDQ6IFBIWSBpbnRlcmZhY2VzIHdpdGggYW4gZXh0ZXJuYWwgTUFDIGxpa2UgMm5kIEdN
QUMKKyAgIG9mIHRoZSBTT0MuIFVzZWQgaW4gbWFueSBzZXR1cHMgd2hlcmUgcG9ydCAwLzQgYmVj
b21lcyB0aGUgV0FOIHBvcnQuCisgICBOb3RlOiBPbiBhIE1UNzYyMSBTT0Mgd2l0aCBpbnRlZ3Jh
dGVkIHN3aXRjaDogMm5kIEdNQUMgY2FuIG9ubHkgY29ubmVjdGVkIHRvCisJIEdNQUM1IHdoZW4g
dGhlIGdwaW9zIGZvciBSR01JSTIgKEdQSU8gMjItMzMpIGFyZSBub3QgdXNlZCBhbmQgbm90CisJ
IGNvbm5lY3RlZCB0byBleHRlcm5hbCBjb21wb25lbnQhCisKK1BvcnQgNSBtb2Rlcy9jb25maWd1
cmF0aW9uczoKKzEuIFBvcnQgNSBpcyBkaXNhYmxlZCBhbmQgaXNvbGF0ZWQ6IEFuIGV4dGVybmFs
IHBoeSBjYW4gaW50ZXJmYWNlIHRvIHRoZSAybmQKKyAgIEdNQUMgb2YgdGhlIFNPQy4KKyAgIElu
IHRoZSBjYXNlIG9mIGEgYnVpbGQtaW4gTVQ3NTMwIHN3aXRjaCwgcG9ydCA1IHNoYXJlcyB0aGUg
UkdNSUkgYnVzIHdpdGggMm5kCisgICBHTUFDIGFuZCBhbiBvcHRpb25hbCBleHRlcm5hbCBwaHku
IE1pbmQgdGhlIEdQSU8vcGluY3RsIHNldHRpbmdzIG9mIHRoZSBTT0MhCisyLiBQb3J0IDUgaXMg
bXV4ZWQgdG8gUEhZIG9mIHBvcnQgMC80OiBQb3J0IDAvNCBpbnRlcmZhY2VzIHdpdGggMm5kIEdN
QUMuCisgICBJdCBpcyBhIHNpbXBsZSBNQUMgdG8gUEhZIGludGVyZmFjZSwgcG9ydCA1IG5lZWRz
IHRvIGJlIHNldHVwIGZvciB4TUlJIG1vZGUKKyAgIGFuZCBSR01JSSBkZWxheS4KKzMuIFBvcnQg
NSBpcyBtdXhlZCB0byBHTUFDNSBhbmQgY2FuIGludGVyZmFjZSB0byBhbiBleHRlcm5hbCBwaHku
CisgICBQb3J0IDUgYmVjb21lcyBhbiBleHRyYSBzd2l0Y2ggcG9ydC4KKyAgIE9ubHkgd29ya3Mg
b24gcGxhdGZvcm0gd2hlcmUgZXh0ZXJuYWwgcGh5IFRYPC0+UlggbGluZXMgYXJlIHN3YXBwZWQu
CisgICBMaWtlIGluIHRoZSBVYmlxdWl0aSBFUi1YLVNGUC4KKzQuIFBvcnQgNSBpcyBtdXhlZCB0
byBHTUFDNSBhbmQgaW50ZXJmYWNlcyB3aXRoIHRoZSAybmQgR0FNQyBhcyAybmQgQ1BVIHBvcnQu
CisgICBDdXJyZW50bHkgYSAybmQgQ1BVIHBvcnQgaXMgbm90IHN1cHBvcnRlZCBieSBEU0EgY29k
ZS4KKworRGVwZW5kaW5nIG9uIGhvdyB0aGUgZXh0ZXJuYWwgUEhZIGlzIHdpcmVkOgorMS4gbm9y
bWFsOiBUaGUgUEhZIGNhbiBvbmx5IGNvbm5lY3QgdG8gMm5kIEdNQUMgYnV0IG5vdCB0byB0aGUg
c3dpdGNoCisyLiBzd2FwcGVkOiBSR01JSSBUWCwgUlggYXJlIHN3YXBwZWQ7IGV4dGVybmFsIHBo
eSBpbnRlcmZhY2Ugd2l0aCB0aGUgc3dpdGNoIGFzCisgICBhIGV0aGVybmV0IHBvcnQuIEJ1dCBj
YW4ndCBpbnRlcmZhY2UgdG8gdGhlIDJuZCBHTUFDLgorCitCYXNlZCBvbiB0aGUgRFQgdGhlIHBv
cnQgNSBtb2RlIGlzIGNvbmZpZ3VyZWQuCisKK0RyaXZlciB0cmllcyB0byBsb29rdXAgdGhlIHBo
eS1oYW5kbGUgb2YgdGhlIDJuZCBHTUFDIG9mIHRoZSBtYXN0ZXIgZGV2aWNlLgorV2hlbiBwaHkt
aGFuZGxlIG1hdGNoZXMgUEhZIG9mIHBvcnQgMCBvciA0IHRoZW4gcG9ydCA1IHNldC11cCBhcyBt
b2RlIDIuCitwaHktbW9kZSBtdXN0IGJlIHNldCwgc2VlIGFsc28gZXhhbXBsZSAyIGJlbG93IQor
ICogbXQ3NjIxOiBwaHktbW9kZSA9ICJyZ21paS10eGlkIjsKKyAqIG10NzYyMzogcGh5LW1vZGUg
PSAicmdtaWkiOworCiBTZWUgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9k
c2EvZHNhLnR4dCBmb3IgYSBsaXN0IG9mIGFkZGl0aW9uYWwKIHJlcXVpcmVkLCBvcHRpb25hbCBw
cm9wZXJ0aWVzIGFuZCBob3cgdGhlIGludGVncmF0ZWQgc3dpdGNoIHN1Ym5vZGVzIG11c3QKIGJl
IHNwZWNpZmllZC4KQEAgLTk0LDMgKzEzMCwxODUgQEAgRXhhbXBsZToKIAkJCX07CiAJCX07CiAJ
fTsKKworRXhhbXBsZSAyOiBNVDc2MjE6IFBvcnQgNCBpcyBXQU4gcG9ydDogMm5kIEdNQUMgLT4g
UG9ydCA1IC0+IFBIWSBwb3J0IDQuCisKKyZldGggeworCXN0YXR1cyA9ICJva2F5IjsKKworCWdt
YWMwOiBtYWNAMCB7CisJCWNvbXBhdGlibGUgPSAibWVkaWF0ZWssZXRoLW1hYyI7CisJCXJlZyA9
IDwwPjsKKwkJcGh5LW1vZGUgPSAicmdtaWkiOworCisJCWZpeGVkLWxpbmsgeworCQkJc3BlZWQg
PSA8MTAwMD47CisJCQlmdWxsLWR1cGxleDsKKwkJCXBhdXNlOworCQl9OworCX07CisKKwlnbWFj
MTogbWFjQDEgeworCQljb21wYXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOworCQlyZWcgPSA8
MT47CisJCXBoeS1tb2RlID0gInJnbWlpLXR4aWQiOworCQlwaHktaGFuZGxlID0gPCZwaHk0PjsK
Kwl9OworCisJbWRpbzogbWRpby1idXMgeworCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3Np
emUtY2VsbHMgPSA8MD47CisKKwkJLyogSW50ZXJuYWwgcGh5ICovCisJCXBoeTQ6IGV0aGVybmV0
LXBoeUA0IHsKKwkJCXJlZyA9IDw0PjsKKwkJfTsKKworCQltdDc1MzA6IHN3aXRjaEAxZiB7CisJ
CQljb21wYXRpYmxlID0gIm1lZGlhdGVrLG10NzYyMSI7CisJCQkjYWRkcmVzcy1jZWxscyA9IDwx
PjsKKwkJCSNzaXplLWNlbGxzID0gPDA+OworCQkJcmVnID0gPDB4MWY+OworCQkJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKKwkJCW1lZGlhdGVrLG1jbTsKKworCQkJcmVzZXRzID0gPCZyc3Rj
dHJsIDI+OworCQkJcmVzZXQtbmFtZXMgPSAibWNtIjsKKworCQkJcG9ydHMgeworCQkJCSNhZGRy
ZXNzLWNlbGxzID0gPDE+OworCQkJCSNzaXplLWNlbGxzID0gPDA+OworCisJCQkJcG9ydEAwIHsK
KwkJCQkJcmVnID0gPDA+OworCQkJCQlsYWJlbCA9ICJsYW4wIjsKKwkJCQl9OworCisJCQkJcG9y
dEAxIHsKKwkJCQkJcmVnID0gPDE+OworCQkJCQlsYWJlbCA9ICJsYW4xIjsKKwkJCQl9OworCisJ
CQkJcG9ydEAyIHsKKwkJCQkJcmVnID0gPDI+OworCQkJCQlsYWJlbCA9ICJsYW4yIjsKKwkJCQl9
OworCisJCQkJcG9ydEAzIHsKKwkJCQkJcmVnID0gPDM+OworCQkJCQlsYWJlbCA9ICJsYW4zIjsK
KwkJCQl9OworCisvKiBDb21tZW50ZWQgb3V0LiBQb3J0IDQgaXMgaGFuZGxlZCBieSAybmQgR01B
Qy4KKwkJCQlwb3J0QDQgeworCQkJCQlyZWcgPSA8ND47CisJCQkJCWxhYmVsID0gImxhbjQiOwor
CQkJCX07CisqLworCisJCQkJY3B1X3BvcnQwOiBwb3J0QDYgeworCQkJCQlyZWcgPSA8Nj47CisJ
CQkJCWxhYmVsID0gImNwdSI7CisJCQkJCWV0aGVybmV0ID0gPCZnbWFjMD47CisJCQkJCXBoeS1t
b2RlID0gInJnbWlpIjsKKworCQkJCQlmaXhlZC1saW5rIHsKKwkJCQkJCXNwZWVkID0gPDEwMDA+
OworCQkJCQkJZnVsbC1kdXBsZXg7CisJCQkJCQlwYXVzZTsKKwkJCQkJfTsKKwkJCQl9OworCQkJ
fTsKKwkJfTsKKwl9OworfTsKKworRXhhbXBsZSAzOiBNVDc2MjE6IFBvcnQgNSBpcyBjb25uZWN0
ZWQgdG8gZXh0ZXJuYWwgUEhZOiBQb3J0IDUgLT4gZXh0ZXJuYWwgUEhZLgorCismZXRoIHsKKwlz
dGF0dXMgPSAib2theSI7CisKKwlnbWFjMDogbWFjQDAgeworCQljb21wYXRpYmxlID0gIm1lZGlh
dGVrLGV0aC1tYWMiOworCQlyZWcgPSA8MD47CisJCXBoeS1tb2RlID0gInJnbWlpIjsKKworCQlm
aXhlZC1saW5rIHsKKwkJCXNwZWVkID0gPDEwMDA+OworCQkJZnVsbC1kdXBsZXg7CisJCQlwYXVz
ZTsKKwkJfTsKKwl9OworCisJbWRpbzogbWRpby1idXMgeworCQkjYWRkcmVzcy1jZWxscyA9IDwx
PjsKKwkJI3NpemUtY2VsbHMgPSA8MD47CisKKwkJLyogRXh0ZXJuYWwgcGh5ICovCisJCWVwaHk1
OiBldGhlcm5ldC1waHlANyB7CisJCQlyZWcgPSA8Nz47CisJCX07CisKKwkJbXQ3NTMwOiBzd2l0
Y2hAMWYgeworCQkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDc2MjEiOworCQkJI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47CisJCQkjc2l6ZS1jZWxscyA9IDwwPjsKKwkJCXJlZyA9IDwweDFmPjsKKwkJ
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCQltZWRpYXRlayxtY207CisKKwkJCXJlc2V0
cyA9IDwmcnN0Y3RybCAyPjsKKwkJCXJlc2V0LW5hbWVzID0gIm1jbSI7CisKKwkJCXBvcnRzIHsK
KwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKKworCQkJ
CXBvcnRAMCB7CisJCQkJCXJlZyA9IDwwPjsKKwkJCQkJbGFiZWwgPSAibGFuMCI7CisJCQkJfTsK
KworCQkJCXBvcnRAMSB7CisJCQkJCXJlZyA9IDwxPjsKKwkJCQkJbGFiZWwgPSAibGFuMSI7CisJ
CQkJfTsKKworCQkJCXBvcnRAMiB7CisJCQkJCXJlZyA9IDwyPjsKKwkJCQkJbGFiZWwgPSAibGFu
MiI7CisJCQkJfTsKKworCQkJCXBvcnRAMyB7CisJCQkJCXJlZyA9IDwzPjsKKwkJCQkJbGFiZWwg
PSAibGFuMyI7CisJCQkJfTsKKworCQkJCXBvcnRANCB7CisJCQkJCXJlZyA9IDw0PjsKKwkJCQkJ
bGFiZWwgPSAibGFuNCI7CisJCQkJfTsKKworCQkJCXBvcnRANSB7CisJCQkJCXJlZyA9IDw1PjsK
KwkJCQkJbGFiZWwgPSAibGFuNSI7CisJCQkJCXBoeS1tb2RlID0gInJnbWlpIjsKKwkJCQkJcGh5
LWhhbmRsZSA9IDwmZXBoeTU+OworCQkJCX07CisKKwkJCQljcHVfcG9ydDA6IHBvcnRANiB7CisJ
CQkJCXJlZyA9IDw2PjsKKwkJCQkJbGFiZWwgPSAiY3B1IjsKKwkJCQkJZXRoZXJuZXQgPSA8Jmdt
YWMwPjsKKwkJCQkJcGh5LW1vZGUgPSAicmdtaWkiOworCisJCQkJCWZpeGVkLWxpbmsgeworCQkJ
CQkJc3BlZWQgPSA8MTAwMD47CisJCQkJCQlmdWxsLWR1cGxleDsKKwkJCQkJCXBhdXNlOworCQkJ
CQl9OworCQkJCX07CisJCQl9OworCQl9OworCX07Cit9OwotLSAKMi4yMC4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
