Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A68819AC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 11:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FttWo5TnyF4n+sSxLYbgWgO2uA1dzIcvolTGLcLA+kM=; b=KVQUiZ6H8ozAdS
	R3zSzyBlFpoz5hzH5AGGf3mENK6TsMLJ12mFYiYkfEeCYEcmcz9j38vRTG9F6uknxi5syaZkGH6ws
	yyXP7ldQSDhDfb77SBfAKeMV6ev0u7LEz0rV3fYzyG2w9wQ9jC95f0ilb3LbaOObEOjbhegNQxRwe
	1bQ3Zc3e/WyTvnTBKiGhovwf9+Vcdg1/VWTsLNT2CjQKaEs/H57ZBupq5i9P79sNRabn9MU2LGZ1U
	RlSw3eXdWJ7aYSf1E/2IYETFhhl2/QWDuUWwGBdF+HT6GlSErsRsL4Ps47Px3ZswuazaoGFy0xGMi
	V9PinXkHaZYiJTNE8Aew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1x6-0008Ow-Be; Fri, 10 May 2019 09:36:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1wW-0007qu-V7
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 09:35:55 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D8024434D;
 Fri, 10 May 2019 11:35:50 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 0141c5c7;
 Fri, 10 May 2019 11:35:49 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Madalin Bucur <madalin.bucur@nxp.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mirko Lindner <mlindner@marvell.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Michal Simek <michal.simek@xilinx.com>
Subject: [PATCH net 4/5] net: ethernet: fix similar warning reported by kbuild
 test robot
Date: Fri, 10 May 2019 11:35:17 +0200
Message-Id: <1557480918-9627-5-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557480918-9627-1-git-send-email-ynezz@true.cz>
References: <1557480918-9627-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_023553_336033_FB324F8F 
X-CRM114-Status: GOOD (  15.81  )
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
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>, linux-omap@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
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
cnRzIGZyb20ga2J1aWxkIHRlc3Qgcm9ib3QgaW4gdGhlIGZ1dHVyZS4KCkZpeGVzOiBhNTE2NDVm
NzBmNjMgKCJuZXQ6IGV0aGVybmV0OiBzdXBwb3J0IG9mX2dldF9tYWNfYWRkcmVzcyBuZXcgRVJS
X1BUUiBlcnJvciIpClJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9hbGx3aW5uZXIvc3VuNGktZW1hYy5jICAgICAgICAgICB8IDIgKy0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2FyYy9lbWFjX21haW4uYyAgICAgICAgICAgICAgICAgIHwg
MiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvY2F2aXVtL29jdGVvbi9vY3Rlb25fbWdtdC5jICAg
ICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9kYXZpY29tL2RtOTAwMC5jICAgICAgICAg
ICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9mZWNfbXBjNTJ4
eC5jICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL2ZtYW4v
bWFjLmMgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUv
ZnNfZW5ldC9mc19lbmV0LW1haW4uYyB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVz
Y2FsZS9naWFuZmFyLmMgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
ZnJlZXNjYWxlL3VjY19nZXRoLmMgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9tYXJ2ZWxsL212NjQzeHhfZXRoLmMgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0
L2V0aGVybmV0L21hcnZlbGwvbXZuZXRhLmMgICAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWFydmVsbC9za3kyLmMgICAgICAgICAgICAgICAgICAgfCAyICstCiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9taWNyZWwva3M4ODUxLmMgICAgICAgICAgICAgICAgICB8IDIg
Ky0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21pY3JlbC9rczg4NTFfbWxsLmMgICAgICAgICAgICAg
IHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbnhwL2xwY19ldGguYyAgICAgICAgICAgICAg
ICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9yZW5lc2FzL3NoX2V0aC5jICAgICAg
ICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L3RpL2Nwc3cuYyAgICAgICAg
ICAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L2xsX3Rl
bWFjX21haW4uYyAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC94aWxpbngv
eGlsaW54X2VtYWNsaXRlLmMgICAgICAgICB8IDIgKy0KIDE5IGZpbGVzIGNoYW5nZWQsIDE5IGlu
c2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2FsbHdpbm5lci9zdW40aS1lbWFjLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9hbGx3
aW5uZXIvc3VuNGktZW1hYy5jCmluZGV4IDM3ZWJkODkwZWY1MS4uOWUwNmRmZjYxOWMzIDEwMDY0
NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9hbGx3aW5uZXIvc3VuNGktZW1hYy5jCisrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2FsbHdpbm5lci9zdW40aS1lbWFjLmMKQEAgLTg3MSw3ICs4
NzEsNyBAQCBzdGF0aWMgaW50IGVtYWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAkvKiBSZWFkIE1BQy1hZGRyZXNzIGZyb20gRFQgKi8KIAltYWNfYWRkciA9IG9mX2dldF9t
YWNfYWRkcmVzcyhucCk7CiAJaWYgKCFJU19FUlIobWFjX2FkZHIpKQotCQltZW1jcHkobmRldi0+
ZGV2X2FkZHIsIG1hY19hZGRyLCBFVEhfQUxFTik7CisJCWV0aGVyX2FkZHJfY29weShuZGV2LT5k
ZXZfYWRkciwgbWFjX2FkZHIpOwogCiAJLyogQ2hlY2sgaWYgdGhlIE1BQyBhZGRyZXNzIGlzIHZh
bGlkLCBpZiBub3QgZ2V0IGEgcmFuZG9tIG9uZSAqLwogCWlmICghaXNfdmFsaWRfZXRoZXJfYWRk
cihuZGV2LT5kZXZfYWRkcikpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2Fy
Yy9lbWFjX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2FyYy9lbWFjX21haW4uYwppbmRl
eCA3Zjg5YWQ1YzMzNmQuLjEzYTFkOTliMjljNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvYXJjL2VtYWNfbWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2FyYy9lbWFj
X21haW4uYwpAQCAtOTYxLDcgKzk2MSw3IEBAIGludCBhcmNfZW1hY19wcm9iZShzdHJ1Y3QgbmV0
X2RldmljZSAqbmRldiwgaW50IGludGVyZmFjZSkKIAltYWNfYWRkciA9IG9mX2dldF9tYWNfYWRk
cmVzcyhkZXYtPm9mX25vZGUpOwogCiAJaWYgKCFJU19FUlIobWFjX2FkZHIpKQotCQltZW1jcHko
bmRldi0+ZGV2X2FkZHIsIG1hY19hZGRyLCBFVEhfQUxFTik7CisJCWV0aGVyX2FkZHJfY29weShu
ZGV2LT5kZXZfYWRkciwgbWFjX2FkZHIpOwogCWVsc2UKIAkJZXRoX2h3X2FkZHJfcmFuZG9tKG5k
ZXYpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9jYXZpdW0vb2N0ZW9uL29j
dGVvbl9tZ210LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9jYXZpdW0vb2N0ZW9uL29jdGVvbl9t
Z210LmMKaW5kZXggMTViMTEzMGFhNGFlLi4wZTVkZTg4ZmQ2ZTggMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2Nhdml1bS9vY3Rlb24vb2N0ZW9uX21nbXQuYworKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9jYXZpdW0vb2N0ZW9uL29jdGVvbl9tZ210LmMKQEAgLTE1MDQsNyArMTUw
NCw3IEBAIHN0YXRpYyBpbnQgb2N0ZW9uX21nbXRfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKIAltYWMgPSBvZl9nZXRfbWFjX2FkZHJlc3MocGRldi0+ZGV2Lm9mX25vZGUpOwog
CiAJaWYgKCFJU19FUlIobWFjKSkKLQkJbWVtY3B5KG5ldGRldi0+ZGV2X2FkZHIsIG1hYywgRVRI
X0FMRU4pOworCQlldGhlcl9hZGRyX2NvcHkobmV0ZGV2LT5kZXZfYWRkciwgbWFjKTsKIAllbHNl
CiAJCWV0aF9od19hZGRyX3JhbmRvbShuZXRkZXYpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9kYXZpY29tL2RtOTAwMC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvZGF2aWNv
bS9kbTkwMDAuYwppbmRleCA5NTNlZTU2MTY4MDEuLjVlMWFmZjlhNWZkNiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvZGF2aWNvbS9kbTkwMDAuYworKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9kYXZpY29tL2RtOTAwMC5jCkBAIC0xNDEzLDcgKzE0MTMsNyBAQCBzdGF0aWMgc3Ry
dWN0IGRtOTAwMF9wbGF0X2RhdGEgKmRtOTAwMF9wYXJzZV9kdChzdHJ1Y3QgZGV2aWNlICpkZXYp
CiAKIAltYWNfYWRkciA9IG9mX2dldF9tYWNfYWRkcmVzcyhucCk7CiAJaWYgKCFJU19FUlIobWFj
X2FkZHIpKQotCQltZW1jcHkocGRhdGEtPmRldl9hZGRyLCBtYWNfYWRkciwgc2l6ZW9mKHBkYXRh
LT5kZXZfYWRkcikpOworCQlldGhlcl9hZGRyX2NvcHkocGRhdGEtPmRldl9hZGRyLCBtYWNfYWRk
cik7CiAKIAlyZXR1cm4gcGRhdGE7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9mcmVlc2NhbGUvZmVjX21wYzUyeHguYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2Fs
ZS9mZWNfbXBjNTJ4eC5jCmluZGV4IDdiN2U1MjY4NjlhNy4uMzBjZGIyNDZkMDIwIDEwMDY0NAot
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUvZmVjX21wYzUyeHguYworKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUvZmVjX21wYzUyeHguYwpAQCAtOTAzLDcgKzkw
Myw3IEBAIHN0YXRpYyBpbnQgbXBjNTJ4eF9mZWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqb3ApCiAJICovCiAJbWFjX2FkZHIgPSBvZl9nZXRfbWFjX2FkZHJlc3MobnApOwogCWlmICgh
SVNfRVJSKG1hY19hZGRyKSkgewotCQltZW1jcHkobmRldi0+ZGV2X2FkZHIsIG1hY19hZGRyLCBF
VEhfQUxFTik7CisJCWV0aGVyX2FkZHJfY29weShuZGV2LT5kZXZfYWRkciwgbWFjX2FkZHIpOwog
CX0gZWxzZSB7CiAJCXN0cnVjdCBtcGM1Mnh4X2ZlYyBfX2lvbWVtICpmZWMgPSBwcml2LT5mZWM7
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9mbWFuL21hYy5j
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL2ZtYW4vbWFjLmMKaW5kZXggOWNkMmMy
OGQxN2RmLi43YWI4MDk1ZGIxOTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2Zy
ZWVzY2FsZS9mbWFuL21hYy5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9m
bWFuL21hYy5jCkBAIC03MjksNyArNzI5LDcgQEAgc3RhdGljIGludCBtYWNfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqX29mX2RldikKIAkJZXJyID0gLUVJTlZBTDsKIAkJZ290byBfcmV0
dXJuX29mX2dldF9wYXJlbnQ7CiAJfQotCW1lbWNweShtYWNfZGV2LT5hZGRyLCBtYWNfYWRkciwg
c2l6ZW9mKG1hY19kZXYtPmFkZHIpKTsKKwlldGhlcl9hZGRyX2NvcHkobWFjX2Rldi0+YWRkciwg
bWFjX2FkZHIpOwogCiAJLyogR2V0IHRoZSBwb3J0IGhhbmRsZXMgKi8KIAlucGggPSBvZl9jb3Vu
dF9waGFuZGxlX3dpdGhfYXJncyhtYWNfbm9kZSwgImZzbCxmbWFuLXBvcnRzIiwgTlVMTCk7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUvZnNfZW5ldC9mc19lbmV0
LW1haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9mc19lbmV0L2ZzX2VuZXQt
bWFpbi5jCmluZGV4IDkwZWE3YTExNWQwZi4uNWZhZDczYjJlMTIzIDEwMDY0NAotLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUvZnNfZW5ldC9mc19lbmV0LW1haW4uYworKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUvZnNfZW5ldC9mc19lbmV0LW1haW4uYwpAQCAt
MTAxNSw3ICsxMDE1LDcgQEAgc3RhdGljIGludCBmc19lbmV0X3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKm9mZGV2KQogCiAJbWFjX2FkZHIgPSBvZl9nZXRfbWFjX2FkZHJlc3Mob2ZkZXYt
PmRldi5vZl9ub2RlKTsKIAlpZiAoIUlTX0VSUihtYWNfYWRkcikpCi0JCW1lbWNweShuZGV2LT5k
ZXZfYWRkciwgbWFjX2FkZHIsIEVUSF9BTEVOKTsKKwkJZXRoZXJfYWRkcl9jb3B5KG5kZXYtPmRl
dl9hZGRyLCBtYWNfYWRkcik7CiAKIAlyZXQgPSBmZXAtPm9wcy0+YWxsb2NhdGVfYmQobmRldik7
CiAJaWYgKHJldCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9n
aWFuZmFyLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUvZ2lhbmZhci5jCmluZGV4
IGRmMTNjNjkzYjAzOC4uZTY3MGNkMjkzZGJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9mcmVlc2NhbGUvZ2lhbmZhci5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVz
Y2FsZS9naWFuZmFyLmMKQEAgLTg3Myw3ICs4NzMsNyBAQCBzdGF0aWMgaW50IGdmYXJfb2ZfaW5p
dChzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpvZmRldiwgc3RydWN0IG5ldF9kZXZpY2UgKipwZGV2
KQogCW1hY19hZGRyID0gb2ZfZ2V0X21hY19hZGRyZXNzKG5wKTsKIAogCWlmICghSVNfRVJSKG1h
Y19hZGRyKSkKLQkJbWVtY3B5KGRldi0+ZGV2X2FkZHIsIG1hY19hZGRyLCBFVEhfQUxFTik7CisJ
CWV0aGVyX2FkZHJfY29weShkZXYtPmRldl9hZGRyLCBtYWNfYWRkcik7CiAKIAlpZiAobW9kZWwg
JiYgIXN0cmNhc2VjbXAobW9kZWwsICJUU0VDIikpCiAJCXByaXYtPmRldmljZV9mbGFncyB8PSBG
U0xfR0lBTkZBUl9ERVZfSEFTX0dJR0FCSVQgfApkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvZnJlZXNjYWxlL3VjY19nZXRoLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2Nh
bGUvdWNjX2dldGguYwppbmRleCAyMTZlOTlhZjJiNWEuLjRkNjg5MmQyZjBhNCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL3VjY19nZXRoLmMKKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL3VjY19nZXRoLmMKQEAgLTM5MTEsNyArMzkxMSw3IEBA
IHN0YXRpYyBpbnQgdWNjX2dldGhfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSogb2ZkZXYp
CiAKIAltYWNfYWRkciA9IG9mX2dldF9tYWNfYWRkcmVzcyhucCk7CiAJaWYgKCFJU19FUlIobWFj
X2FkZHIpKQotCQltZW1jcHkoZGV2LT5kZXZfYWRkciwgbWFjX2FkZHIsIEVUSF9BTEVOKTsKKwkJ
ZXRoZXJfYWRkcl9jb3B5KGRldi0+ZGV2X2FkZHIsIG1hY19hZGRyKTsKIAogCXVnZXRoLT51Z19p
bmZvID0gdWdfaW5mbzsKIAl1Z2V0aC0+ZGV2ID0gZGV2aWNlOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWFydmVsbC9tdjY0M3h4X2V0aC5jIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvbWFydmVsbC9tdjY0M3h4X2V0aC5jCmluZGV4IDA3ZTI1NGZjOTZlZi4uNDA5YjY5ZmQ0Mzc0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tYXJ2ZWxsL212NjQzeHhfZXRoLmMK
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWFydmVsbC9tdjY0M3h4X2V0aC5jCkBAIC0yNzUw
LDcgKzI3NTAsNyBAQCBzdGF0aWMgaW50IG12NjQzeHhfZXRoX3NoYXJlZF9vZl9hZGRfcG9ydChz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAogCiAJbWFjX2FkZHIgPSBvZl9nZXRfbWFjX2Fk
ZHJlc3MocG5wKTsKIAlpZiAoIUlTX0VSUihtYWNfYWRkcikpCi0JCW1lbWNweShwcGQubWFjX2Fk
ZHIsIG1hY19hZGRyLCBFVEhfQUxFTik7CisJCWV0aGVyX2FkZHJfY29weShwcGQubWFjX2FkZHIs
IG1hY19hZGRyKTsKIAogCW12NjQzeHhfZXRoX3Byb3BlcnR5KHBucCwgInR4LXF1ZXVlLXNpemUi
LCBwcGQudHhfcXVldWVfc2l6ZSk7CiAJbXY2NDN4eF9ldGhfcHJvcGVydHkocG5wLCAidHgtc3Jh
bS1hZGRyIiwgcHBkLnR4X3NyYW1fYWRkcik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9tYXJ2ZWxsL212bmV0YS5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWFydmVsbC9tdm5l
dGEuYwppbmRleCA4MTg2MTM1ODgzZWQuLmU3NTg2NTBiMmMyNiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWFydmVsbC9tdm5ldGEuYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9tYXJ2ZWxsL212bmV0YS5jCkBAIC00NTY1LDcgKzQ1NjUsNyBAQCBzdGF0aWMgaW50IG12bmV0
YV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWR0X21hY19hZGRyID0gb2Zf
Z2V0X21hY19hZGRyZXNzKGRuKTsKIAlpZiAoIUlTX0VSUihkdF9tYWNfYWRkcikpIHsKIAkJbWFj
X2Zyb20gPSAiZGV2aWNlIHRyZWUiOwotCQltZW1jcHkoZGV2LT5kZXZfYWRkciwgZHRfbWFjX2Fk
ZHIsIEVUSF9BTEVOKTsKKwkJZXRoZXJfYWRkcl9jb3B5KGRldi0+ZGV2X2FkZHIsIGR0X21hY19h
ZGRyKTsKIAl9IGVsc2UgewogCQltdm5ldGFfZ2V0X21hY19hZGRyKHBwLCBod19tYWNfYWRkcik7
CiAJCWlmIChpc192YWxpZF9ldGhlcl9hZGRyKGh3X21hY19hZGRyKSkgewpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvbWFydmVsbC9za3kyLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9tYXJ2ZWxsL3NreTIuYwppbmRleCA5ZDA3MGNjYTNlOWUuLjVhZGYzMDdmYmJmZCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWFydmVsbC9za3kyLmMKKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvbWFydmVsbC9za3kyLmMKQEAgLTQ4MDUsNyArNDgwNSw3IEBAIHN0YXRpYyBz
dHJ1Y3QgbmV0X2RldmljZSAqc2t5Ml9pbml0X25ldGRldihzdHJ1Y3Qgc2t5Ml9odyAqaHcsIHVu
c2lnbmVkIHBvcnQsCiAJICovCiAJaWFwID0gb2ZfZ2V0X21hY19hZGRyZXNzKGh3LT5wZGV2LT5k
ZXYub2Zfbm9kZSk7CiAJaWYgKCFJU19FUlIoaWFwKSkKLQkJbWVtY3B5KGRldi0+ZGV2X2FkZHIs
IGlhcCwgRVRIX0FMRU4pOworCQlldGhlcl9hZGRyX2NvcHkoZGV2LT5kZXZfYWRkciwgaWFwKTsK
IAllbHNlCiAJCW1lbWNweV9mcm9taW8oZGV2LT5kZXZfYWRkciwgaHctPnJlZ3MgKyBCMl9NQUNf
MSArIHBvcnQgKiA4LAogCQkJICAgICAgRVRIX0FMRU4pOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvbWljcmVsL2tzODg1MS5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWljcmVs
L2tzODg1MS5jCmluZGV4IGI0NDE3MmE5MDFlZC4uYmE0ZmRmMWIwZGVhIDEwMDY0NAotLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9taWNyZWwva3M4ODUxLmMKKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvbWljcmVsL2tzODg1MS5jCkBAIC00MjYsNyArNDI2LDcgQEAgc3RhdGljIHZvaWQga3M4
ODUxX2luaXRfbWFjKHN0cnVjdCBrczg4NTFfbmV0ICprcykKIAogCW1hY19hZGRyID0gb2ZfZ2V0
X21hY19hZGRyZXNzKGtzLT5zcGlkZXYtPmRldi5vZl9ub2RlKTsKIAlpZiAoIUlTX0VSUihtYWNf
YWRkcikpIHsKLQkJbWVtY3B5KGRldi0+ZGV2X2FkZHIsIG1hY19hZGRyLCBFVEhfQUxFTik7CisJ
CWV0aGVyX2FkZHJfY29weShkZXYtPmRldl9hZGRyLCBtYWNfYWRkcik7CiAJCWtzODg1MV93cml0
ZV9tYWNfYWRkcihkZXYpOwogCQlyZXR1cm47CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvbWljcmVsL2tzODg1MV9tbGwuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21pY3Jl
bC9rczg4NTFfbWxsLmMKaW5kZXggZGM3NmIwZDE1MjM0Li5lNWM4NDEyYzA4YzEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21pY3JlbC9rczg4NTFfbWxsLmMKKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWljcmVsL2tzODg1MV9tbGwuYwpAQCAtMTMyOCw3ICsxMzI4LDcgQEAg
c3RhdGljIGludCBrczg4NTFfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlp
ZiAocGRldi0+ZGV2Lm9mX25vZGUpIHsKIAkJbWFjID0gb2ZfZ2V0X21hY19hZGRyZXNzKHBkZXYt
PmRldi5vZl9ub2RlKTsKIAkJaWYgKCFJU19FUlIobWFjKSkKLQkJCW1lbWNweShrcy0+bWFjX2Fk
ZHIsIG1hYywgRVRIX0FMRU4pOworCQkJZXRoZXJfYWRkcl9jb3B5KGtzLT5tYWNfYWRkciwgbWFj
KTsKIAl9IGVsc2UgewogCQlzdHJ1Y3Qga3M4ODUxX21sbF9wbGF0Zm9ybV9kYXRhICpwZGF0YTsK
IApkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbnhwL2xwY19ldGguYyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L254cC9scGNfZXRoLmMKaW5kZXggZGExMzhlZGRkZDMyLi5mZWM2MDRj
NGMwZDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L254cC9scGNfZXRoLmMKKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbnhwL2xwY19ldGguYwpAQCAtMTM2OSw3ICsxMzY5LDcg
QEAgc3RhdGljIGludCBscGNfZXRoX2Rydl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQogCWlmICghaXNfdmFsaWRfZXRoZXJfYWRkcihuZGV2LT5kZXZfYWRkcikpIHsKIAkJY29u
c3QgY2hhciAqbWFjYWRkciA9IG9mX2dldF9tYWNfYWRkcmVzcyhucCk7CiAJCWlmICghSVNfRVJS
KG1hY2FkZHIpKQotCQkJbWVtY3B5KG5kZXYtPmRldl9hZGRyLCBtYWNhZGRyLCBFVEhfQUxFTik7
CisJCQlldGhlcl9hZGRyX2NvcHkobmRldi0+ZGV2X2FkZHIsIG1hY2FkZHIpOwogCX0KIAlpZiAo
IWlzX3ZhbGlkX2V0aGVyX2FkZHIobmRldi0+ZGV2X2FkZHIpKQogCQlldGhfaHdfYWRkcl9yYW5k
b20obmRldik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9yZW5lc2FzL3NoX2V0
aC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvcmVuZXNhcy9zaF9ldGguYwppbmRleCA3YzRlMjgy
MjQyZDUuLjYzNTRmMTlhMzFlYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvcmVu
ZXNhcy9zaF9ldGguYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9yZW5lc2FzL3NoX2V0aC5j
CkBAIC0zMTkzLDcgKzMxOTMsNyBAQCBzdGF0aWMgc3RydWN0IHNoX2V0aF9wbGF0X2RhdGEgKnNo
X2V0aF9wYXJzZV9kdChzdHJ1Y3QgZGV2aWNlICpkZXYpCiAKIAltYWNfYWRkciA9IG9mX2dldF9t
YWNfYWRkcmVzcyhucCk7CiAJaWYgKCFJU19FUlIobWFjX2FkZHIpKQotCQltZW1jcHkocGRhdGEt
Pm1hY19hZGRyLCBtYWNfYWRkciwgRVRIX0FMRU4pOworCQlldGhlcl9hZGRyX2NvcHkocGRhdGEt
Pm1hY19hZGRyLCBtYWNfYWRkcik7CiAKIAlwZGF0YS0+bm9fZXRoZXJfbGluayA9CiAJCW9mX3By
b3BlcnR5X3JlYWRfYm9vbChucCwgInJlbmVzYXMsbm8tZXRoZXItbGluayIpOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvY3Bzdy5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
dGkvY3Bzdy5jCmluZGV4IGIxOGVlYjA1Yjk5My4uNjM0ZmM0ODRhMGIzIDEwMDY0NAotLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC90aS9jcHN3LmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
dGkvY3Bzdy5jCkBAIC0yMjMzLDcgKzIyMzMsNyBAQCBzdGF0aWMgaW50IGNwc3dfcHJvYmVfZHQo
c3RydWN0IGNwc3dfcGxhdGZvcm1fZGF0YSAqZGF0YSwKIG5vX3BoeV9zbGF2ZToKIAkJbWFjX2Fk
ZHIgPSBvZl9nZXRfbWFjX2FkZHJlc3Moc2xhdmVfbm9kZSk7CiAJCWlmICghSVNfRVJSKG1hY19h
ZGRyKSkgewotCQkJbWVtY3B5KHNsYXZlX2RhdGEtPm1hY19hZGRyLCBtYWNfYWRkciwgRVRIX0FM
RU4pOworCQkJZXRoZXJfYWRkcl9jb3B5KHNsYXZlX2RhdGEtPm1hY19hZGRyLCBtYWNfYWRkcik7
CiAJCX0gZWxzZSB7CiAJCQlyZXQgPSB0aV9jbV9nZXRfbWFjaWQoJnBkZXYtPmRldiwgaSwKIAkJ
CQkJICAgICAgc2xhdmVfZGF0YS0+bWFjX2FkZHIpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQveGlsaW54L2xsX3RlbWFjX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3hp
bGlueC9sbF90ZW1hY19tYWluLmMKaW5kZXggOTk3NDc1YzIwOWMwLi40N2M0NTE1MjEzMmUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC9sbF90ZW1hY19tYWluLmMKKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L2xsX3RlbWFjX21haW4uYwpAQCAtMzYxLDcg
KzM2MSw3IEBAIHN0YXRpYyB2b2lkIHRlbWFjX2RvX3NldF9tYWNfYWRkcmVzcyhzdHJ1Y3QgbmV0
X2RldmljZSAqbmRldikKIAogc3RhdGljIGludCB0ZW1hY19pbml0X21hY19hZGRyZXNzKHN0cnVj
dCBuZXRfZGV2aWNlICpuZGV2LCBjb25zdCB2b2lkICphZGRyZXNzKQogewotCW1lbWNweShuZGV2
LT5kZXZfYWRkciwgYWRkcmVzcywgRVRIX0FMRU4pOworCWV0aGVyX2FkZHJfY29weShuZGV2LT5k
ZXZfYWRkciwgYWRkcmVzcyk7CiAJaWYgKCFpc192YWxpZF9ldGhlcl9hZGRyKG5kZXYtPmRldl9h
ZGRyKSkKIAkJZXRoX2h3X2FkZHJfcmFuZG9tKG5kZXYpOwogCXRlbWFjX2RvX3NldF9tYWNfYWRk
cmVzcyhuZGV2KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxp
bnhfZW1hY2xpdGUuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfZW1hY2xp
dGUuYwppbmRleCA2OTExNzA3NTM1NjMuLjY4ODYyNzBkYTY5NSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jCisrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L3hpbGlueC94aWxpbnhfZW1hY2xpdGUuYwpAQCAtMTE2Nyw3ICsxMTY3LDcgQEAg
c3RhdGljIGludCB4ZW1hY2xpdGVfb2ZfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqb2Zk
ZXYpCiAKIAlpZiAoIUlTX0VSUihtYWNfYWRkcmVzcykpIHsKIAkJLyogU2V0IHRoZSBNQUMgYWRk
cmVzcy4gKi8KLQkJbWVtY3B5KG5kZXYtPmRldl9hZGRyLCBtYWNfYWRkcmVzcywgRVRIX0FMRU4p
OworCQlldGhlcl9hZGRyX2NvcHkobmRldi0+ZGV2X2FkZHIsIG1hY19hZGRyZXNzKTsKIAl9IGVs
c2UgewogCQlkZXZfd2FybihkZXYsICJObyBNQUMgYWRkcmVzcyBmb3VuZCwgdXNpbmcgcmFuZG9t
XG4iKTsKIAkJZXRoX2h3X2FkZHJfcmFuZG9tKG5kZXYpOwotLSAKMS45LjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
