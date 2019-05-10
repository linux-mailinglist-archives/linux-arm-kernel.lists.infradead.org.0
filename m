Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C15719ACC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 11:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXTWpD25yzRV8ndPIR/k8bjbaalLSAW4qms6qr+gEng=; b=eUX87eD36hT5sc
	1mCVaAtQIt+Qf+lSwzmWW4y9RFzsLuJpU9/y9jvaEEEiiVpjSCflFtHesKF3A9XrVTlB+mCHmAHGS
	l1JKo3BahNxCh9SFj6vpy/s+CBuUd8PiIcb48GaRCLrwwU4ly3DN7LFPmm4SdU+pZIrYq225FWUuk
	hwM4wMr+yvHCbsBgALm6xQzYPMSqEyREqaw+oK88uTyIBORmoYEe7ZCvXHCauq+O0Lu4dXmp+IUoP
	0pln1rAtTvRyZga5dZgdL9369jQx510dRQcGv7EgTPO3DEE49rjxxWt23JRT7Z5IVqJi2MqVmElaK
	G5R5Utz2VNtM8y9WviKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1xG-000094-1N; Fri, 10 May 2019 09:36:38 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1wX-0007qy-PM; Fri, 10 May 2019 09:35:55 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D30F2434E;
 Fri, 10 May 2019 11:35:51 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 608a6a61;
 Fri, 10 May 2019 11:35:50 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, Felix Fietkau <nbd@nbd.name>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Roy Luo <royluo@google.com>,
 Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net 5/5] net: wireless: mt76: fix similar warning reported by
 kbuild test robot
Date: Fri, 10 May 2019 11:35:18 +0200
Message-Id: <1557480918-9627-6-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557480918-9627-1-git-send-email-ynezz@true.cz>
References: <1557480918-9627-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_023553_971643_FB2BEC5A 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh@kernel.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBmaXhlcyBmb2xsb3dpbmcgKHNpbWlsYXIpIHdhcm5pbmcgcmVwb3J0ZWQgYnkg
a2J1aWxkIHRlc3Qgcm9ib3Q6CgogSW4gZnVuY3Rpb24g4oCYbWVtY3B54oCZLAogIGlubGluZWQg
ZnJvbSDigJhzbXNjNzV4eF9pbml0X21hY19hZGRyZXNz4oCZIGF0IGRyaXZlcnMvbmV0L3VzYi9z
bXNjNzV4eC5jOjc3ODozLAogIGlubGluZWQgZnJvbSDigJhzbXNjNzV4eF9iaW5k4oCZIGF0IGRy
aXZlcnMvbmV0L3VzYi9zbXNjNzV4eC5jOjE1MDE6MjoKICAuL2luY2x1ZGUvbGludXgvc3RyaW5n
Lmg6MzU1Ojk6IHdhcm5pbmc6IGFyZ3VtZW50IDIgbnVsbCB3aGVyZSBub24tbnVsbCBleHBlY3Rl
ZCBbLVdub25udWxsXQogIHJldHVybiBfX2J1aWx0aW5fbWVtY3B5KHAsIHEsIHNpemUpOwogICAg
ICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CiAgZHJpdmVycy9uZXQvdXNiL3Ntc2M3
NXh4LmM6IEluIGZ1bmN0aW9uIOKAmHNtc2M3NXh4X2JpbmTigJk6CiAgLi9pbmNsdWRlL2xpbnV4
L3N0cmluZy5oOjM1NTo5OiBub3RlOiBpbiBhIGNhbGwgdG8gYnVpbHQtaW4gZnVuY3Rpb24g4oCY
X19idWlsdGluX21lbWNweeKAmQoKSSd2ZSByZXBsYWNlZCB0aGUgb2ZmZW5kaW5nIG1lbWNweSB3
aXRoIGV0aGVyX2FkZHJfY29weSwgYmVjYXVzZSBJJ20KMTAwJSBzdXJlLCB0aGF0IG9mX2dldF9t
YWNfYWRkcmVzcyBjYW4ndCByZXR1cm4gTlVMTCBhcyBpdCByZXR1cm5zIHZhbGlkCnBvaW50ZXIg
b3IgRVJSX1BUUiBlbmNvZGVkIHZhbHVlLCBub3RoaW5nIGVsc2UuCgpJJ20gaGVzaXRhbnQgdG8g
anVzdCBjaGFuZ2UgSVNfRVJSIGludG8gSVNfRVJSX09SX05VTEwgY2hlY2ssIGFzIHRoaXMKd291
bGQgbWFrZSB0aGUgd2FybmluZyBkaXNhcHBlYXIgYWxzbywgYnV0IGl0IHdvdWxkIGJlIGNvbmZ1
c2luZyB0bwpjaGVjayBmb3IgaW1wb3NzaWJsZSByZXR1cm4gdmFsdWUganVzdCB0byBtYWtlIGEg
Y29tcGlsZXIgaGFwcHkuCgpJJ20gbm93IGNoYW5naW5nIGFsbCBvY2N1cmVuY2llcyBvZiBtZW1j
cHkgdG8gZXRoZXJfYWRkcl9jb3B5IGFmdGVyIHRoZQpvZl9nZXRfbWFjX2FkZHJlc3MgY2FsbCwg
YXMgaXQncyB2ZXJ5IGxpa2VseSwgdGhhdCB3ZSdyZSBnb2luZyB0byBnZXQKc2ltaWxhciByZXBv
cnRzIGZyb20ga2J1aWxkIHRlc3Qgcm9ib3QgaW4gdGhlIGZ1dHVyZS4KCkZpeGVzOiBkMzFhMzZi
NWY0MDcgKCJuZXQ6IHdpcmVsZXNzOiBzdXBwb3J0IG9mX2dldF9tYWNfYWRkcmVzcyBuZXcgRVJS
X1BUUiBlcnJvciIpClJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBkcml2
ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L2VlcHJvbS5jIHwgMiArLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9lZXByb20uYyBiL2RyaXZlcnMvbmV0L3dpcmVs
ZXNzL21lZGlhdGVrL210NzYvZWVwcm9tLmMKaW5kZXggMDQ5NjQ5MzdhM2FmLi5iN2E0OWFlNmIz
MjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvZWVwcm9t
LmMKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9lZXByb20uYwpAQCAt
OTUsNyArOTUsNyBAQAogCiAJbWFjID0gb2ZfZ2V0X21hY19hZGRyZXNzKG5wKTsKIAlpZiAoIUlT
X0VSUihtYWMpKQotCQltZW1jcHkoZGV2LT5tYWNhZGRyLCBtYWMsIEVUSF9BTEVOKTsKKwkJZXRo
ZXJfYWRkcl9jb3B5KGRldi0+bWFjYWRkciwgbWFjKTsKICNlbmRpZgogCiAJaWYgKCFpc192YWxp
ZF9ldGhlcl9hZGRyKGRldi0+bWFjYWRkcikpIHsKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
