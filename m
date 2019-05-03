Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE8C13027
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBMRBxR/aWQPywP124J9xrF9g3boVnhuRavQZHH6WzI=; b=PytsC+8XfFJMZo
	Ls+vJ2GRrVBKNXHSCcIX5XscIaIIlshjbql9K5zN115xyr/4o5q80UbubysVk/74eg1n4IacsYOEN
	r8gqg2qBNCB7TWxU3RcevsyrgNj/X5K21yy2BxwQr9tERyUoLcg+y52yJrJOoT/sPa0GYoWhHyGx4
	km0KO9ckGLjNVJAMiVX2DvY4/5obulDbN4HgL2P9/QC2z6qPx5FHwkqTGve08evuI0vbDYbGr28PA
	55ywBn9kii7xtYGgZmj1BgTBpXaEvLwzJzbVaV1topezfKILXfPIF2Y4o9jm/YFGnNMp90TABIu8H
	W7IN7w8gBEwlZkqGdzUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZAV-0000ua-7E; Fri, 03 May 2019 14:28:07 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZAD-0000h7-5o; Fri, 03 May 2019 14:27:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2BDF24AD4;
 Fri,  3 May 2019 16:27:47 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id cbd31f28;
 Fri, 3 May 2019 16:27:45 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 QCA ath9k Development <ath9k-devel@qca.qualcomm.com>,
 Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Felix Fietkau <nbd@nbd.name>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Stanislaw Gruszka <sgruszka@redhat.com>,
 Helmut Schaa <helmut.schaa@googlemail.com>
Subject: [PATCH v4 07/10] net: wireless: support of_get_mac_address new
 ERR_PTR error
Date: Fri,  3 May 2019 16:27:12 +0200
Message-Id: <1556893635-18549-8-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556893635-18549-1-git-send-email-ynezz@true.cz>
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_072749_694922_E10D6627 
X-CRM114-Status: GOOD (  10.51  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-mediatek@lists.infradead.org,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlcmUgd2FzIE5WTUVNIHN1cHBvcnQgYWRkZWQgdG8gb2ZfZ2V0X21hY19hZGRyZXNzLCBzbyBp
dCBjb3VsZCBub3cgcmV0dXJuCkVSUl9QVFIgZW5jb2RlZCBlcnJvciB2YWx1ZXMsIHNvIHdlIG5l
ZWQgdG8gYWRqdXN0IGFsbCBjdXJyZW50IHVzZXJzIG9mCm9mX2dldF9tYWNfYWRkcmVzcyB0byB0
aGlzIG5ldyBmYWN0LgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4KLS0tCgogQ2hhbmdlcyBzaW5jZSB2MzoKCiAgKiBJU19FUlJfT1JfTlVMTCAtPiBJU19FUlIK
CiBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoOWsvaW5pdC5jICAgICAgICAgIHwgMiArLQog
ZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9lZXByb20uYyAgICB8IDIgKy0KIGRy
aXZlcnMvbmV0L3dpcmVsZXNzL3JhbGluay9ydDJ4MDAvcnQyeDAwZGV2LmMgfCAyICstCiAzIGZp
bGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoOWsvaW5pdC5jIGIvZHJpdmVycy9uZXQvd2ly
ZWxlc3MvYXRoL2F0aDlrL2luaXQuYwppbmRleCA5ODE0MWI2Li5hMDRkODYxIDEwMDY0NAotLS0g
YS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoOWsvaW5pdC5jCisrKyBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL2F0aC9hdGg5ay9pbml0LmMKQEAgLTY0Miw3ICs2NDIsNyBAQCBzdGF0aWMgaW50
IGF0aDlrX29mX2luaXQoc3RydWN0IGF0aF9zb2Z0YyAqc2MpCiAJfQogCiAJbWFjID0gb2ZfZ2V0
X21hY19hZGRyZXNzKG5wKTsKLQlpZiAobWFjKQorCWlmICghSVNfRVJSKG1hYykpCiAJCWV0aGVy
X2FkZHJfY29weShjb21tb24tPm1hY2FkZHIsIG1hYyk7CiAKIAlyZXR1cm4gMDsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvZWVwcm9tLmMgYi9kcml2ZXJz
L25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L2VlcHJvbS5jCmluZGV4IGExNTI5OTIwZC4uMDQ5
NjQ5MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9lZXBy
b20uYworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L2VlcHJvbS5jCkBA
IC05NCw3ICs5NCw3IEBACiAJCXJldHVybjsKIAogCW1hYyA9IG9mX2dldF9tYWNfYWRkcmVzcyhu
cCk7Ci0JaWYgKG1hYykKKwlpZiAoIUlTX0VSUihtYWMpKQogCQltZW1jcHkoZGV2LT5tYWNhZGRy
LCBtYWMsIEVUSF9BTEVOKTsKICNlbmRpZgogCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJl
bGVzcy9yYWxpbmsvcnQyeDAwL3J0MngwMGRldi5jIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvcmFs
aW5rL3J0MngwMC9ydDJ4MDBkZXYuYwppbmRleCAzNTdjMDk0Li4xOWE3OTRhIDEwMDY0NAotLS0g
YS9kcml2ZXJzL25ldC93aXJlbGVzcy9yYWxpbmsvcnQyeDAwL3J0MngwMGRldi5jCisrKyBiL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL3JhbGluay9ydDJ4MDAvcnQyeDAwZGV2LmMKQEAgLTEwMDcsNyAr
MTAwNyw3IEBAIHZvaWQgcnQyeDAwbGliX3NldF9tYWNfYWRkcmVzcyhzdHJ1Y3QgcnQyeDAwX2Rl
diAqcnQyeDAwZGV2LCB1OCAqZWVwcm9tX21hY19hZGRyCiAJY29uc3QgY2hhciAqbWFjX2FkZHI7
CiAKIAltYWNfYWRkciA9IG9mX2dldF9tYWNfYWRkcmVzcyhydDJ4MDBkZXYtPmRldi0+b2Zfbm9k
ZSk7Ci0JaWYgKG1hY19hZGRyKQorCWlmICghSVNfRVJSKG1hY19hZGRyKSkKIAkJZXRoZXJfYWRk
cl9jb3B5KGVlcHJvbV9tYWNfYWRkciwgbWFjX2FkZHIpOwogCiAJaWYgKCFpc192YWxpZF9ldGhl
cl9hZGRyKGVlcHJvbV9tYWNfYWRkcikpIHsKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
