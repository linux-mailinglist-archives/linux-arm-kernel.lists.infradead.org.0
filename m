Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FBD9B133
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 15:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqLdb25C/BFRLcoZj7rrmyZle5L8/qDzwAqMs4xAdmA=; b=nH0PiqdO4sZZ+T
	9eRv6plhWq0xXCg6svzTXS7AkjxBYcG1voYBRidv/xScjN8dzJUKnSeIN4DQtHeEOOVxoI30s88Da
	kZNYcxm7Y3Bmgda/zv/aHLVH4aJQVj+NbZSeyTdU6TySFGx2lUGd5Ai3DL5cbeN1rOBIkJPW1MV2l
	z0RY8acswxw6NShdNmS14UnE2aHCK2j6AHkwnWDjd+HE4v3MvhrNfSZJkynPWYQWE4VGaN8jOmMbw
	YBgE1th68+KcviEWz0oJXqqvP+dPaVi7W2bmr9wdY4T+LKZf83i8bMFI7zBXb6ewrEC5N0IurCoS/
	ZNp1eXauNL3ArLdRcozQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19te-0004DO-3f; Fri, 23 Aug 2019 13:46:30 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i19ss-0003Tg-Q0; Fri, 23 Aug 2019 13:45:47 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 0935F5FCBB;
 Fri, 23 Aug 2019 15:45:40 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="rrueCjlL"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id ABE311D89683;
 Fri, 23 Aug 2019 15:45:39 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com ABE311D89683
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566567939;
 bh=l3LH2LXXO3eKUXtPwsnR+1aKDYlP7Tw+qdLDHb2Z0FA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rrueCjlL3dGtBfX6vHvpyl91XvLu8TUZMQmy6ILGledXGMFLT1Vj8Yr2bvPIg54bq
 z4V/0SoNlL098n8NtNjg12dMniiBtpyKXGG6B7s3TLjFkWZHEoxf4c4I00ISIXijZM
 VqYQRutRarS2PbbhP5LqmfIv9hWVq9lSIFpCTkJ5rC0kGIPbEw4oEGb+Ph87dIatfJ
 VFWwVVItjGtGJO14xVcssZbGn9QbwptvsxSI5wSWNARXN/Z+/F2aL89wW4abTRdtw3
 EPZu94LHCDEomCrRK3wIa7Pnlje5o5qm8UiGe6M5ui7qZDYE9zv8s1A7fr9AH8MeA4
 /Os/PzV6B1nDw==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Nelson Chang <nelson.chang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v3 2/3] net: ethernet: mediatek: Re-add support SGMII
Date: Fri, 23 Aug 2019 15:45:15 +0200
Message-Id: <20190823134516.27559-3-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190823134516.27559-1-opensource@vdorst.com>
References: <20190823134516.27559-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_064543_156959_7DC51D9D 
X-CRM114-Status: GOOD (  19.47  )
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
Cc: Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 linux-mips@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Stefan Roese <sr@denx.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBSZS1hZGQgU0dNSUkgc3VwcG9ydCBidXQgbm93IHdpdGggUEhZTElOSyBBUEkgc3VwcG9ydAog
IFNvIHRoZSBTR01JSSBjaGFuZ2VzIGFyZSBtb3JlIGNsZWFyCiogTW92ZSBTR01JSSBibG9jayBz
ZXR1cCBmcm9tIG10a19nbWFjX3NnbWlpX3BhdGhfc2V0dXAoKSB0bwogIG10a19tYWNfY29uZmln
KCkKKiBNZXJnZSBtdGtfc2V0dXBfaHdfcGF0aCgpIGludG8gbXRrX21hY19jb25maWcoKQoqIFJl
bW92ZSBtZWRpYXRlayxwaHlzcGVlZCBwcm9wZXJ0eSwgZml4ZWQtbGluayBzdXBwb3J0cyBub3cg
YW55IHNwZWVkIHNvCiAgc3BlZWQgPSA8MjUwMD47IGlzIG5vdyB2YWxpZCB3aXRoIFBIWUxJTksu
CiogRGVtYWdpYyBTR01JSSByZWdpc3RlciB2YWx1ZXMKKiBVc2UgcGh5bGluayBzdGF0ZSB0byBz
ZXR1cCBmaXhlZC1saW5rIG1vZGUKClNpZ25lZC1vZmYtYnk6IFJlbsOpIHZhbiBEb3JzdCA8b3Bl
bnNvdXJjZUB2ZG9yc3QuY29tPgotLQp2Mi0+djM6CiogUmVkbyB2YWxpZGF0ZSgpLCBpdCB3YXMg
dG90YWxseSB3cm9uZy4gTm90aWNlZCBieSBSdXNzZWxsIEtpbmcuCnYxLT52MjoKKiBTR01JSSBw
b3J0IG9ubHkgc3VwcG9ydCBTR01JSSBhdCAxR2JpdCwgMTAwMEJBU0UtWCBhbmQgMjUwMEJBU0Ut
WC4KICBBbHNvIFNHTUlJIG1vZGUgb25seSBkb2VzIGF1dG8tbmVnb3RpYXRpb24uCiogQ2hhbmdl
IHZhbGlkYXRlKCkgdG8gc3VwcG9ydCBtdDc2eDggY2hhbmdlcy4KLS0tCiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3BhdGguYyB8ICA3NSArLS0tLS0tLS0KIGRyaXZlcnMv
bmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMgIHwgMTU3ICsrKysrKysrKysrKysr
KystLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmggIHwgIDM3
ICsrKystCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfc2dtaWkuYyAgICB8ICA2
NSArKysrKy0tLQogNCBmaWxlcyBjaGFuZ2VkLCAyMTkgaW5zZXJ0aW9ucygrKSwgMTE1IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19l
dGhfcGF0aC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9wYXRoLmMK
aW5kZXggMjg5NjBlNGM0ZTQzLi5lZjExY2YzZDFjY2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfcGF0aC5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L21lZGlhdGVrL210a19ldGhfcGF0aC5jCkBAIC0yMzksMTAgKzIzOSw5IEBAIHN0YXRpYyBp
bnQgbXRrX2V0aF9tdXhfc2V0dXAoc3RydWN0IG10a19ldGggKmV0aCwgaW50IHBhdGgpCiAJcmV0
dXJuIGVycjsKIH0KIAotc3RhdGljIGludCBtdGtfZ21hY19zZ21paV9wYXRoX3NldHVwKHN0cnVj
dCBtdGtfZXRoICpldGgsIGludCBtYWNfaWQpCitpbnQgbXRrX2dtYWNfc2dtaWlfcGF0aF9zZXR1
cChzdHJ1Y3QgbXRrX2V0aCAqZXRoLCBpbnQgbWFjX2lkKQogewotCXVuc2lnbmVkIGludCB2YWwg
PSAwOwotCWludCBzaWQsIGVyciwgcGF0aDsKKwlpbnQgZXJyLCBwYXRoOwogCiAJcGF0aCA9ICht
YWNfaWQgPT0gMCkgPyAgTVRLX0VUSF9QQVRIX0dNQUMxX1NHTUlJIDoKIAkJCQlNVEtfRVRIX1BB
VEhfR01BQzJfU0dNSUk7CkBAIC0yNTIsMzMgKzI1MSwxMCBAQCBzdGF0aWMgaW50IG10a19nbWFj
X3NnbWlpX3BhdGhfc2V0dXAoc3RydWN0IG10a19ldGggKmV0aCwgaW50IG1hY19pZCkKIAlpZiAo
ZXJyKQogCQlyZXR1cm4gZXJyOwogCi0JLyogVGhlIHBhdGggR01BQyB0byBTR01JSSB3aWxsIGJl
IGVuYWJsZWQgb25jZSB0aGUgU0dNSUlTWVMgaXMgYmVpbmcKLQkgKiBzZXR1cCBkb25lLgotCSAq
LwotCXJlZ21hcF9yZWFkKGV0aC0+ZXRoc3lzLCBFVEhTWVNfU1lTQ0ZHMCwgJnZhbCk7Ci0KLQly
ZWdtYXBfdXBkYXRlX2JpdHMoZXRoLT5ldGhzeXMsIEVUSFNZU19TWVNDRkcwLAotCQkJICAgU1lT
Q0ZHMF9TR01JSV9NQVNLLCB+KHUzMilTWVNDRkcwX1NHTUlJX01BU0spOwotCi0JLyogRGVjaWRl
IGhvdyBHTUFDIGFuZCBTR01JSVNZUyBiZSBtYXBwZWQgKi8KLQlzaWQgPSAoTVRLX0hBU19DQVBT
KGV0aC0+c29jLT5jYXBzLCBNVEtfU0hBUkVEX1NHTUlJKSkgPyAwIDogbWFjX2lkOwotCi0JLyog
U2V0dXAgU0dNSUlTWVMgd2l0aCB0aGUgZGV0ZXJtaW5lZCBwcm9wZXJ0eSAqLwotCWlmIChNVEtf
SEFTX0ZMQUdTKGV0aC0+c2dtaWktPmZsYWdzW3NpZF0sIE1US19TR01JSV9QSFlTUEVFRF9BTikp
Ci0JCWVyciA9IG10a19zZ21paV9zZXR1cF9tb2RlX2FuKGV0aC0+c2dtaWksIHNpZCk7Ci0JZWxz
ZQotCQllcnIgPSBtdGtfc2dtaWlfc2V0dXBfbW9kZV9mb3JjZShldGgtPnNnbWlpLCBzaWQpOwot
Ci0JaWYgKGVycikKLQkJcmV0dXJuIGVycjsKLQotCXJlZ21hcF91cGRhdGVfYml0cyhldGgtPmV0
aHN5cywgRVRIU1lTX1NZU0NGRzAsCi0JCQkgICBTWVNDRkcwX1NHTUlJX01BU0ssIHZhbCk7Ci0K
IAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIGludCBtdGtfZ21hY19nZXBoeV9wYXRoX3NldHVwKHN0
cnVjdCBtdGtfZXRoICpldGgsIGludCBtYWNfaWQpCitpbnQgbXRrX2dtYWNfZ2VwaHlfcGF0aF9z
ZXR1cChzdHJ1Y3QgbXRrX2V0aCAqZXRoLCBpbnQgbWFjX2lkKQogewogCWludCBlcnIsIHBhdGgg
PSAwOwogCkBAIC0yOTYsNyArMjcyLDcgQEAgc3RhdGljIGludCBtdGtfZ21hY19nZXBoeV9wYXRo
X3NldHVwKHN0cnVjdCBtdGtfZXRoICpldGgsIGludCBtYWNfaWQpCiAJcmV0dXJuIDA7CiB9CiAK
LXN0YXRpYyBpbnQgbXRrX2dtYWNfcmdtaWlfcGF0aF9zZXR1cChzdHJ1Y3QgbXRrX2V0aCAqZXRo
LCBpbnQgbWFjX2lkKQoraW50IG10a19nbWFjX3JnbWlpX3BhdGhfc2V0dXAoc3RydWN0IG10a19l
dGggKmV0aCwgaW50IG1hY19pZCkKIHsKIAlpbnQgZXJyLCBwYXRoOwogCkBAIC0zMTEsNDYgKzI4
NywzIEBAIHN0YXRpYyBpbnQgbXRrX2dtYWNfcmdtaWlfcGF0aF9zZXR1cChzdHJ1Y3QgbXRrX2V0
aCAqZXRoLCBpbnQgbWFjX2lkKQogCXJldHVybiAwOwogfQogCi1pbnQgbXRrX3NldHVwX2h3X3Bh
dGgoc3RydWN0IG10a19ldGggKmV0aCwgaW50IG1hY19pZCwgaW50IHBoeW1vZGUpCi17Ci0JaW50
IGVycjsKLQotCS8qIE5vIG11eCdpbmcgZm9yIE1UNzYyOC84OCAqLwotCWlmIChNVEtfSEFTX0NB
UFMoZXRoLT5zb2MtPmNhcHMsIE1US19TT0NfTVQ3NjI4KSkKLQkJcmV0dXJuIDA7Ci0KLQlzd2l0
Y2ggKHBoeW1vZGUpIHsKLQljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9UUkdNSUk6Ci0JY2FzZSBQ
SFlfSU5URVJGQUNFX01PREVfUkdNSUlfVFhJRDoKLQljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9S
R01JSV9SWElEOgotCWNhc2UgUEhZX0lOVEVSRkFDRV9NT0RFX1JHTUlJX0lEOgotCWNhc2UgUEhZ
X0lOVEVSRkFDRV9NT0RFX1JHTUlJOgotCWNhc2UgUEhZX0lOVEVSRkFDRV9NT0RFX01JSToKLQlj
YXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9SRVZNSUk6Ci0JY2FzZSBQSFlfSU5URVJGQUNFX01PREVf
Uk1JSToKLQkJaWYgKE1US19IQVNfQ0FQUyhldGgtPnNvYy0+Y2FwcywgTVRLX1JHTUlJKSkgewot
CQkJZXJyID0gbXRrX2dtYWNfcmdtaWlfcGF0aF9zZXR1cChldGgsIG1hY19pZCk7Ci0JCQlpZiAo
ZXJyKQotCQkJCXJldHVybiBlcnI7Ci0JCX0KLQkJYnJlYWs7Ci0JY2FzZSBQSFlfSU5URVJGQUNF
X01PREVfU0dNSUk6Ci0JCWlmIChNVEtfSEFTX0NBUFMoZXRoLT5zb2MtPmNhcHMsIE1US19TR01J
SSkpIHsKLQkJCWVyciA9IG10a19nbWFjX3NnbWlpX3BhdGhfc2V0dXAoZXRoLCBtYWNfaWQpOwot
CQkJaWYgKGVycikKLQkJCQlyZXR1cm4gZXJyOwotCQl9Ci0JCWJyZWFrOwotCWNhc2UgUEhZX0lO
VEVSRkFDRV9NT0RFX0dNSUk6Ci0JCWlmIChNVEtfSEFTX0NBUFMoZXRoLT5zb2MtPmNhcHMsIE1U
S19HRVBIWSkpIHsKLQkJCWVyciA9IG10a19nbWFjX2dlcGh5X3BhdGhfc2V0dXAoZXRoLCBtYWNf
aWQpOwotCQkJaWYgKGVycikKLQkJCQlyZXR1cm4gZXJyOwotCQl9Ci0JCWJyZWFrOwotCWRlZmF1
bHQ6Ci0JCWJyZWFrOwotCX0KLQotCXJldHVybiAwOwotfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L21lZGlhdGVrL210a19ldGhfc29jLmMKaW5kZXggYTA0YmFhZDYzMzdjLi5kNDcxYThkMTZhYTUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMK
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYwpAQCAtMTkz
LDggKzE5Myw4IEBAIHN0YXRpYyB2b2lkIG10a19tYWNfY29uZmlnKHN0cnVjdCBwaHlsaW5rX2Nv
bmZpZyAqY29uZmlnLCB1bnNpZ25lZCBpbnQgbW9kZSwKIAlzdHJ1Y3QgbXRrX21hYyAqbWFjID0g
Y29udGFpbmVyX29mKGNvbmZpZywgc3RydWN0IG10a19tYWMsCiAJCQkJCSAgIHBoeWxpbmtfY29u
ZmlnKTsKIAlzdHJ1Y3QgbXRrX2V0aCAqZXRoID0gbWFjLT5odzsKLQl1MzIgbWNyX2N1ciwgbWNy
X25ldzsKLQlpbnQgdmFsLCBnZV9tb2RlID0gMDsKKwl1MzIgbWNyX2N1ciwgbWNyX25ldywgc2lk
OworCWludCB2YWwsIGdlX21vZGUsIGVycjsKIAogCS8qIE1UNzZ4OCBoYXMgbm8gaGFyZHdhcmUg
c2V0dGluZ3MgYmV0d2VlbiBmb3IgdGhlIE1BQyAqLwogCWlmICghTVRLX0hBU19DQVBTKGV0aC0+
c29jLT5jYXBzLCBNVEtfU09DX01UNzYyOCkgJiYKQEAgLTIwOCwyOSArMjA4LDQyIEBAIHN0YXRp
YyB2b2lkIG10a19tYWNfY29uZmlnKHN0cnVjdCBwaHlsaW5rX2NvbmZpZyAqY29uZmlnLCB1bnNp
Z25lZCBpbnQgbW9kZSwKIAkJCQkJICBNVEtfR01BQzFfVFJHTUlJKSkKIAkJCQlnb3RvIGVycl9w
aHk7CiAJCQkvKiBmYWxsIHRocm91Z2ggKi8KLQkJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfR01J
SToKIAkJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfUkdNSUlfVFhJRDoKIAkJY2FzZSBQSFlfSU5U
RVJGQUNFX01PREVfUkdNSUlfUlhJRDoKIAkJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfUkdNSUlf
SUQ6CiAJCWNhc2UgUEhZX0lOVEVSRkFDRV9NT0RFX1JHTUlJOgotCQkJYnJlYWs7CiAJCWNhc2Ug
UEhZX0lOVEVSRkFDRV9NT0RFX01JSToKLQkJCWdlX21vZGUgPSAxOwotCQkJYnJlYWs7CiAJCWNh
c2UgUEhZX0lOVEVSRkFDRV9NT0RFX1JFVk1JSToKLQkJCWdlX21vZGUgPSAyOwotCQkJYnJlYWs7
CiAJCWNhc2UgUEhZX0lOVEVSRkFDRV9NT0RFX1JNSUk6Ci0JCQlpZiAobWFjLT5pZCkKLQkJCQln
b3RvIGVycl9waHk7Ci0JCQlnZV9tb2RlID0gMzsKKwkJCWlmIChNVEtfSEFTX0NBUFMoZXRoLT5z
b2MtPmNhcHMsIE1US19SR01JSSkpIHsKKwkJCQllcnIgPSBtdGtfZ21hY19yZ21paV9wYXRoX3Nl
dHVwKGV0aCwgbWFjLT5pZCk7CisJCQkJaWYgKGVycikKKwkJCQkJZ290byBpbml0X2VycjsKKwkJ
CX0KKwkJCWJyZWFrOworCQljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV8xMDAwQkFTRVg6CisJCWNh
c2UgUEhZX0lOVEVSRkFDRV9NT0RFXzI1MDBCQVNFWDoKKwkJY2FzZSBQSFlfSU5URVJGQUNFX01P
REVfU0dNSUk6CisJCQlpZiAoTVRLX0hBU19DQVBTKGV0aC0+c29jLT5jYXBzLCBNVEtfU0dNSUkp
KSB7CisJCQkJZXJyID0gbXRrX2dtYWNfc2dtaWlfcGF0aF9zZXR1cChldGgsIG1hYy0+aWQpOwor
CQkJCWlmIChlcnIpCisJCQkJCWdvdG8gaW5pdF9lcnI7CisJCQl9CisJCQlicmVhazsKKwkJY2Fz
ZSBQSFlfSU5URVJGQUNFX01PREVfR01JSToKKwkJCWlmIChNVEtfSEFTX0NBUFMoZXRoLT5zb2Mt
PmNhcHMsIE1US19HRVBIWSkpIHsKKwkJCQllcnIgPSBtdGtfZ21hY19nZXBoeV9wYXRoX3NldHVw
KGV0aCwgbWFjLT5pZCk7CisJCQkJaWYgKGVycikKKwkJCQkJZ290byBpbml0X2VycjsKKwkJCX0K
IAkJCWJyZWFrOwogCQlkZWZhdWx0OgogCQkJZ290byBlcnJfcGh5OwogCQl9CiAKIAkJLyogU2V0
dXAgY2xvY2sgZm9yIDFzdCBnbWFjICovCi0JCWlmICghbWFjLT5pZCAmJgorCQlpZiAoIW1hYy0+
aWQgJiYgc3RhdGUtPmludGVyZmFjZSAhPSBQSFlfSU5URVJGQUNFX01PREVfU0dNSUkgJiYKKwkJ
ICAgICFwaHlfaW50ZXJmYWNlX21vZGVfaXNfODAyM3ooc3RhdGUtPmludGVyZmFjZSkgJiYKIAkJ
ICAgIE1US19IQVNfQ0FQUyhtYWMtPmh3LT5zb2MtPmNhcHMsIE1US19HTUFDMV9UUkdNSUkpKSB7
CiAJCQlpZiAoTVRLX0hBU19DQVBTKG1hYy0+aHctPnNvYy0+Y2FwcywKIAkJCQkJIE1US19UUkdN
SUlfTVQ3NjIxX0NMSykpIHsKQEAgLTI0NSw2ICsyNTgsMjMgQEAgc3RhdGljIHZvaWQgbXRrX21h
Y19jb25maWcoc3RydWN0IHBoeWxpbmtfY29uZmlnICpjb25maWcsIHVuc2lnbmVkIGludCBtb2Rl
LAogCQkJfQogCQl9CiAKKwkJZ2VfbW9kZSA9IDA7CisJCXN3aXRjaCAoc3RhdGUtPmludGVyZmFj
ZSkgeworCQljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9NSUk6CisJCQlnZV9tb2RlID0gMTsKKwkJ
CWJyZWFrOworCQljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9SRVZNSUk6CisJCQlnZV9tb2RlID0g
MjsKKwkJCWJyZWFrOworCQljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9STUlJOgorCQkJaWYgKG1h
Yy0+aWQpCisJCQkJZ290byBlcnJfcGh5OworCQkJZ2VfbW9kZSA9IDM7CisJCQlicmVhazsKKwkJ
ZGVmYXVsdDoKKwkJCWJyZWFrOworCQl9CisKIAkJLyogcHV0IHRoZSBnbWFjIGludG8gdGhlIHJp
Z2h0IG1vZGUgKi8KIAkJcmVnbWFwX3JlYWQoZXRoLT5ldGhzeXMsIEVUSFNZU19TWVNDRkcwLCAm
dmFsKTsKIAkJdmFsICY9IH5TWVNDRkcwX0dFX01PREUoU1lTQ0ZHMF9HRV9NQVNLLCBtYWMtPmlk
KTsKQEAgLTI1NCw2ICsyODQsNDAgQEAgc3RhdGljIHZvaWQgbXRrX21hY19jb25maWcoc3RydWN0
IHBoeWxpbmtfY29uZmlnICpjb25maWcsIHVuc2lnbmVkIGludCBtb2RlLAogCQltYWMtPmludGVy
ZmFjZSA9IHN0YXRlLT5pbnRlcmZhY2U7CiAJfQogCisJLyogU0dNSUkgKi8KKwlpZiAoc3RhdGUt
PmludGVyZmFjZSA9PSBQSFlfSU5URVJGQUNFX01PREVfU0dNSUkgfHwKKwkgICAgcGh5X2ludGVy
ZmFjZV9tb2RlX2lzXzgwMjN6KHN0YXRlLT5pbnRlcmZhY2UpKSB7CisJCS8qIFRoZSBwYXRoIEdN
QUMgdG8gU0dNSUkgd2lsbCBiZSBlbmFibGVkIG9uY2UgdGhlIFNHTUlJU1lTIGlzCisJCSAqIGJl
aW5nIHNldHVwIGRvbmUuCisJCSAqLworCQlyZWdtYXBfcmVhZChldGgtPmV0aHN5cywgRVRIU1lT
X1NZU0NGRzAsICZ2YWwpOworCisJCXJlZ21hcF91cGRhdGVfYml0cyhldGgtPmV0aHN5cywgRVRI
U1lTX1NZU0NGRzAsCisJCQkJICAgU1lTQ0ZHMF9TR01JSV9NQVNLLAorCQkJCSAgIH4odTMyKVNZ
U0NGRzBfU0dNSUlfTUFTSyk7CisKKwkJLyogRGVjaWRlIGhvdyBHTUFDIGFuZCBTR01JSVNZUyBi
ZSBtYXBwZWQgKi8KKwkJc2lkID0gKE1US19IQVNfQ0FQUyhldGgtPnNvYy0+Y2FwcywgTVRLX1NI
QVJFRF9TR01JSSkpID8KKwkJICAgICAgIDAgOiBtYWMtPmlkOworCisJCS8qIFNldHVwIFNHTUlJ
U1lTIHdpdGggdGhlIGRldGVybWluZWQgcHJvcGVydHkgKi8KKwkJaWYgKHN0YXRlLT5pbnRlcmZh
Y2UgIT0gUEhZX0lOVEVSRkFDRV9NT0RFX1NHTUlJKQorCQkJZXJyID0gbXRrX3NnbWlpX3NldHVw
X21vZGVfZm9yY2UoZXRoLT5zZ21paSwgc2lkLAorCQkJCQkJCSBzdGF0ZSk7CisJCWVsc2UgaWYg
KHBoeWxpbmtfYXV0b25lZ19pbmJhbmQobW9kZSkpCisJCQllcnIgPSBtdGtfc2dtaWlfc2V0dXBf
bW9kZV9hbihldGgtPnNnbWlpLCBzaWQpOworCisJCWlmIChlcnIpCisJCQlnb3RvIGluaXRfZXJy
OworCisJCXJlZ21hcF91cGRhdGVfYml0cyhldGgtPmV0aHN5cywgRVRIU1lTX1NZU0NGRzAsCisJ
CQkJICAgU1lTQ0ZHMF9TR01JSV9NQVNLLCB2YWwpOworCX0gZWxzZSBpZiAocGh5bGlua19hdXRv
bmVnX2luYmFuZChtb2RlKSkgeworCQlkZXZfZXJyKGV0aC0+ZGV2LAorCQkJIkluLWJhbmQgbW9k
ZSBub3Qgc3VwcG9ydGVkIGluIG5vbiBTR01JSSBtb2RlIVxuIik7CisJCXJldHVybjsKKwl9CisK
IAkvKiBTZXR1cCBnbWFjICovCiAJbWNyX2N1ciA9IG10a19yMzIobWFjLT5odywgTVRLX01BQ19N
Q1IobWFjLT5pZCkpOwogCW1jcl9uZXcgPSBtY3JfY3VyOwpAQCAtMjY0LDYgKzMyOCw3IEBAIHN0
YXRpYyB2b2lkIG10a19tYWNfY29uZmlnKHN0cnVjdCBwaHlsaW5rX2NvbmZpZyAqY29uZmlnLCB1
bnNpZ25lZCBpbnQgbW9kZSwKIAkJICAgTUFDX01DUl9CQUNLT0ZGX0VOIHwgTUFDX01DUl9CQUNL
UFJfRU4gfCBNQUNfTUNSX0ZPUkNFX0xJTks7CiAKIAlzd2l0Y2ggKHN0YXRlLT5zcGVlZCkgewor
CWNhc2UgU1BFRURfMjUwMDoKIAljYXNlIFNQRUVEXzEwMDA6CiAJCW1jcl9uZXcgfD0gTUFDX01D
Ul9TUEVFRF8xMDAwOwogCQlicmVhazsKQEAgLTI4OCw2ICszNTMsMTEgQEAgc3RhdGljIHZvaWQg
bXRrX21hY19jb25maWcoc3RydWN0IHBoeWxpbmtfY29uZmlnICpjb25maWcsIHVuc2lnbmVkIGlu
dCBtb2RlLAogZXJyX3BoeToKIAlkZXZfZXJyKGV0aC0+ZGV2LCAiJXM6IEdNQUMlZCBtb2RlICVz
IG5vdCBzdXBwb3J0ZWQhXG4iLCBfX2Z1bmNfXywKIAkJbWFjLT5pZCwgcGh5X21vZGVzKHN0YXRl
LT5pbnRlcmZhY2UpKTsKKwlyZXR1cm47CisKK2luaXRfZXJyOgorCWRldl9lcnIoZXRoLT5kZXYs
ICIlczogR01BQyVkIG1vZGUgJXMgZXJyOiAlZCFcbiIsIF9fZnVuY19fLAorCQltYWMtPmlkLCBw
aHlfbW9kZXMoc3RhdGUtPmludGVyZmFjZSksIGVycik7CiB9CiAKIHN0YXRpYyBpbnQgbXRrX21h
Y19saW5rX3N0YXRlKHN0cnVjdCBwaHlsaW5rX2NvbmZpZyAqY29uZmlnLApAQCAtMzI2LDcgKzM5
NiwxMCBAQCBzdGF0aWMgaW50IG10a19tYWNfbGlua19zdGF0ZShzdHJ1Y3QgcGh5bGlua19jb25m
aWcgKmNvbmZpZywKIAogc3RhdGljIHZvaWQgbXRrX21hY19hbl9yZXN0YXJ0KHN0cnVjdCBwaHls
aW5rX2NvbmZpZyAqY29uZmlnKQogewotCS8qIERvIG5vdGhpbmcgKi8KKwlzdHJ1Y3QgbXRrX21h
YyAqbWFjID0gY29udGFpbmVyX29mKGNvbmZpZywgc3RydWN0IG10a19tYWMsCisJCQkJCSAgIHBo
eWxpbmtfY29uZmlnKTsKKworCW10a19zZ21paV9yZXN0YXJ0X2FuKG1hYy0+aHcsIG1hYy0+aWQp
OwogfQogCiBzdGF0aWMgdm9pZCBtdGtfbWFjX2xpbmtfZG93bihzdHJ1Y3QgcGh5bGlua19jb25m
aWcgKmNvbmZpZywgdW5zaWduZWQgaW50IG1vZGUsCkBAIC0zNjYsNyArNDM5LDEwIEBAIHN0YXRp
YyB2b2lkIG10a192YWxpZGF0ZShzdHJ1Y3QgcGh5bGlua19jb25maWcgKmNvbmZpZywKIAkgICAg
IShNVEtfSEFTX0NBUFMobWFjLT5ody0+c29jLT5jYXBzLCBNVEtfUkdNSUkpICYmCiAJICAgICAg
cGh5X2ludGVyZmFjZV9tb2RlX2lzX3JnbWlpKHN0YXRlLT5pbnRlcmZhY2UpKSAmJgogCSAgICAh
KE1US19IQVNfQ0FQUyhtYWMtPmh3LT5zb2MtPmNhcHMsIE1US19UUkdNSUkpICYmCi0JICAgICAg
IW1hYy0+aWQgJiYgc3RhdGUtPmludGVyZmFjZSA9PSBQSFlfSU5URVJGQUNFX01PREVfVFJHTUlJ
KSkgeworCSAgICAgICFtYWMtPmlkICYmIHN0YXRlLT5pbnRlcmZhY2UgPT0gUEhZX0lOVEVSRkFD
RV9NT0RFX1RSR01JSSkgJiYKKwkgICAgIShNVEtfSEFTX0NBUFMobWFjLT5ody0+c29jLT5jYXBz
LCBNVEtfU0dNSUkpICYmCisJICAgICAgKHN0YXRlLT5pbnRlcmZhY2UgPT0gUEhZX0lOVEVSRkFD
RV9NT0RFX1NHTUlJIHx8CisJICAgICAgIHBoeV9pbnRlcmZhY2VfbW9kZV9pc184MDIzeihzdGF0
ZS0+aW50ZXJmYWNlKSkpKSB7CiAJCWxpbmttb2RlX3plcm8oc3VwcG9ydGVkKTsKIAkJcmV0dXJu
OwogCX0KQEAgLTM3NCwxOCArNDUwLDU4IEBAIHN0YXRpYyB2b2lkIG10a192YWxpZGF0ZShzdHJ1
Y3QgcGh5bGlua19jb25maWcgKmNvbmZpZywKIAlwaHlsaW5rX3NldF9wb3J0X21vZGVzKG1hc2sp
OwogCXBoeWxpbmtfc2V0KG1hc2ssIEF1dG9uZWcpOwogCi0JaWYgKHN0YXRlLT5pbnRlcmZhY2Ug
PT0gUEhZX0lOVEVSRkFDRV9NT0RFX1RSR01JSSkgeworCXN3aXRjaCAoc3RhdGUtPmludGVyZmFj
ZSkgeworCWNhc2UgUEhZX0lOVEVSRkFDRV9NT0RFX1NHTUlJOgorCQlwaHlsaW5rX3NldChtYXNr
LCAxMGJhc2VUX0hhbGYpOworCQlwaHlsaW5rX3NldChtYXNrLCAxMGJhc2VUX0Z1bGwpOworCQlw
aHlsaW5rX3NldChtYXNrLCAxMDBiYXNlVF9IYWxmKTsKKwkJcGh5bGlua19zZXQobWFzaywgMTAw
YmFzZVRfRnVsbCk7CisJCS8qIGZhbGwgdGhyb3VnaCAqLworCWNhc2UgUEhZX0lOVEVSRkFDRV9N
T0RFX1RSR01JSToKIAkJcGh5bGlua19zZXQobWFzaywgMTAwMGJhc2VUX0Z1bGwpOwotCX0gZWxz
ZSB7CisJCWJyZWFrOworCWNhc2UgUEhZX0lOVEVSRkFDRV9NT0RFXzI1MDBCQVNFWDoKKwkJcGh5
bGlua19zZXQobWFzaywgMjUwMGJhc2VYX0Z1bGwpOworCQkvKiBmYWxsIHRocm91Z2ggKi8KKwlj
YXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV8xMDAwQkFTRVg6CisJCXBoeWxpbmtfc2V0KG1hc2ssIDEw
MDBiYXNlWF9GdWxsKTsKKwkJYnJlYWs7CisJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfUkdNSUk6
CisJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfUkdNSUlfSUQ6CisJY2FzZSBQSFlfSU5URVJGQUNF
X01PREVfUkdNSUlfUlhJRDoKKwljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9SR01JSV9UWElEOgor
CQlwaHlsaW5rX3NldChtYXNrLCAxMDAwYmFzZVhfRnVsbCk7CisJCS8qIGZhbGwgdGhyb3VnaCAq
LworCWNhc2UgUEhZX0lOVEVSRkFDRV9NT0RFX0dNSUk6CisJCXBoeWxpbmtfc2V0KG1hc2ssIDEw
MDBiYXNlVF9GdWxsKTsKKwkJcGh5bGlua19zZXQobWFzaywgMTAwMGJhc2VUX0hhbGYpOworCQkv
KiBmYWxsIHRocm91Z2ggKi8KKwljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9NSUk6CisJY2FzZSBQ
SFlfSU5URVJGQUNFX01PREVfUk1JSToKKwljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9SRVZNSUk6
CisJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfTkE6CisJZGVmYXVsdDoKIAkJcGh5bGlua19zZXQo
bWFzaywgMTBiYXNlVF9IYWxmKTsKIAkJcGh5bGlua19zZXQobWFzaywgMTBiYXNlVF9GdWxsKTsK
IAkJcGh5bGlua19zZXQobWFzaywgMTAwYmFzZVRfSGFsZik7CiAJCXBoeWxpbmtfc2V0KG1hc2ss
IDEwMGJhc2VUX0Z1bGwpOworCQlicmVhazsKKwl9CiAKLQkJaWYgKHN0YXRlLT5pbnRlcmZhY2Ug
IT0gUEhZX0lOVEVSRkFDRV9NT0RFX01JSSkgewotCQkJcGh5bGlua19zZXQobWFzaywgMTAwMGJh
c2VUX0hhbGYpOworCWlmIChzdGF0ZS0+aW50ZXJmYWNlID09IFBIWV9JTlRFUkZBQ0VfTU9ERV9O
QSkgeworCQlpZiAoTVRLX0hBU19DQVBTKG1hYy0+aHctPnNvYy0+Y2FwcywgTVRLX1NHTUlJKSkg
ewogCQkJcGh5bGlua19zZXQobWFzaywgMTAwMGJhc2VUX0Z1bGwpOwogCQkJcGh5bGlua19zZXQo
bWFzaywgMTAwMGJhc2VYX0Z1bGwpOworCQkJcGh5bGlua19zZXQobWFzaywgMjUwMGJhc2VYX0Z1
bGwpOworCQl9CisJCWlmIChNVEtfSEFTX0NBUFMobWFjLT5ody0+c29jLT5jYXBzLCBNVEtfUkdN
SUkpKSB7CisJCQlwaHlsaW5rX3NldChtYXNrLCAxMDAwYmFzZVRfRnVsbCk7CisJCQlwaHlsaW5r
X3NldChtYXNrLCAxMDAwYmFzZVRfSGFsZik7CisJCQlwaHlsaW5rX3NldChtYXNrLCAxMDAwYmFz
ZVhfRnVsbCk7CisJCX0KKwkJaWYgKE1US19IQVNfQ0FQUyhtYWMtPmh3LT5zb2MtPmNhcHMsIE1U
S19HRVBIWSkpIHsKKwkJCXBoeWxpbmtfc2V0KG1hc2ssIDEwMDBiYXNlVF9GdWxsKTsKKwkJCXBo
eWxpbmtfc2V0KG1hc2ssIDEwMDBiYXNlVF9IYWxmKTsKIAkJfQogCX0KIApAQCAtMzk0LDYgKzUx
MCwxMSBAQCBzdGF0aWMgdm9pZCBtdGtfdmFsaWRhdGUoc3RydWN0IHBoeWxpbmtfY29uZmlnICpj
b25maWcsCiAKIAlsaW5rbW9kZV9hbmQoc3VwcG9ydGVkLCBzdXBwb3J0ZWQsIG1hc2spOwogCWxp
bmttb2RlX2FuZChzdGF0ZS0+YWR2ZXJ0aXNpbmcsIHN0YXRlLT5hZHZlcnRpc2luZywgbWFzayk7
CisKKwkvKiBXZSBjYW4gb25seSBvcGVyYXRlIGF0IDI1MDBCYXNlWCBvciAxMDAwQmFzZVguIElm
IHJlcXVlc3RlZAorCSAqIHRvIGFkdmVydGlzZSBib3RoLCBvbmx5IHJlcG9ydCBhZHZlcnRpc2lu
ZyBhdCAyNTAwQmFzZVguCisJICovCisJcGh5bGlua19oZWxwZXJfYmFzZXhfc3BlZWQoc3RhdGUp
OwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHBoeWxpbmtfbWFjX29wcyBtdGtfcGh5bGlua19v
cHMgPSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRo
X3NvYy5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuaAppbmRl
eCA3ZjVmNTQxZGFhZDcuLjc2YmQxMmNiODE1MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuaAorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9t
ZWRpYXRlay9tdGtfZXRoX3NvYy5oCkBAIC00MTIsMTQgKzQxMiwzOCBAQAogLyogUmVnaXN0ZXIg
dG8gYXV0by1uZWdvdGlhdGlvbiByZXN0YXJ0ICovCiAjZGVmaW5lIFNHTVNZU19QQ1NfQ09OVFJP
TF8xCTB4MAogI2RlZmluZSBTR01JSV9BTl9SRVNUQVJUCUJJVCg5KQorI2RlZmluZSBTR01JSV9J
U09MQVRFCQlCSVQoMTApCisjZGVmaW5lIFNHTUlJX0FOX0VOQUJMRQkJQklUKDEyKQorI2RlZmlu
ZSBTR01JSV9MSU5LX1NUQVRZUwlCSVQoMTgpCisjZGVmaW5lIFNHTUlJX0FOX0FCSUxJVFkJQklU
KDE5KQorI2RlZmluZSBTR01JSV9BTl9DT01QTEVURQlCSVQoMjEpCisjZGVmaW5lIFNHTUlJX1BD
U19GQVVMVAkJQklUKDIzKQorI2RlZmluZSBTR01JSV9BTl9FWFBBTlNJT05fQ0xSCUJJVCgzMCkK
IAogLyogUmVnaXN0ZXIgdG8gcHJvZ3JhbW1hYmxlIGxpbmsgdGltZXIsIHRoZSB1bml0IGluIDIg
KiA4bnMgKi8KICNkZWZpbmUgU0dNU1lTX1BDU19MSU5LX1RJTUVSCTB4MTgKICNkZWZpbmUgU0dN
SUlfTElOS19USU1FUl9ERUZBVUxUCSgweDE4NmEwICYgR0VOTUFTSygxOSwgMCkpCiAKIC8qIFJl
Z2lzdGVyIHRvIGNvbnRyb2wgcmVtb3RlIGZhdWx0ICovCi0jZGVmaW5lIFNHTVNZU19TR01JSV9N
T0RFCTB4MjAKLSNkZWZpbmUgU0dNSUlfUkVNT1RFX0ZBVUxUX0RJUwlCSVQoOCkKKyNkZWZpbmUg
U0dNU1lTX1NHTUlJX01PREUJCTB4MjAKKyNkZWZpbmUgU0dNSUlfSUZfTU9ERV9CSVQwCQlCSVQo
MCkKKyNkZWZpbmUgU0dNSUlfU1BFRURfRFVQTEVYX0FOCQlCSVQoMSkKKyNkZWZpbmUgU0dNSUlf
U1BFRURfMTAJCQkweDAKKyNkZWZpbmUgU0dNSUlfU1BFRURfMTAwCQkJQklUKDIpCisjZGVmaW5l
IFNHTUlJX1NQRUVEXzEwMDAJCUJJVCgzKQorI2RlZmluZSBTR01JSV9EVVBMRVhfRlVMTAkJQklU
KDQpCisjZGVmaW5lIFNHTUlJX0lGX01PREVfQklUNQkJQklUKDUpCisjZGVmaW5lIFNHTUlJX1JF
TU9URV9GQVVMVF9ESVMJCUJJVCg4KQorI2RlZmluZSBTR01JSV9DT0RFX1NZTkNfU0VUX1ZBTAkJ
QklUKDkpCisjZGVmaW5lIFNHTUlJX0NPREVfU1lOQ19TRVRfRU4JCUJJVCgxMCkKKyNkZWZpbmUg
U0dNSUlfU0VORF9BTl9FUlJPUl9FTgkJQklUKDExKQorI2RlZmluZSBTR01JSV9JRl9NT0RFX01B
U0sJCUdFTk1BU0soNSwgMSkKKworLyogUmVnaXN0ZXIgdG8gc2V0IFNHTUlJIHNwZWVkLCBBTkEg
UkdfIENvbnRyb2wgU2lnbmFscyBJSUkqLworI2RlZmluZSBTR01TWVNfQU5BX1JHX0NTMwkweDIw
MjgKKyNkZWZpbmUgUkdfUEhZX1NQRUVEX01BU0sJKEJJVCgyKSB8IEJJVCgzKSkKKyNkZWZpbmUg
UkdfUEhZX1NQRUVEXzFfMjVHCTB4MAorI2RlZmluZSBSR19QSFlfU1BFRURfM18xMjVHCUJJVCgy
KQogCiAvKiBSZWdpc3RlciB0byBwb3dlciB1cCBRUEhZICovCiAjZGVmaW5lIFNHTVNZU19RUEhZ
X1BXUl9TVEFURV9DVFJMIDB4ZTgKQEAgLTg5Nyw3ICs5MjEsMTIgQEAgdTMyIG10a19yMzIoc3Ry
dWN0IG10a19ldGggKmV0aCwgdW5zaWduZWQgcmVnKTsKIGludCBtdGtfc2dtaWlfaW5pdChzdHJ1
Y3QgbXRrX3NnbWlpICpzcywgc3RydWN0IGRldmljZV9ub2RlICpucCwKIAkJICAgdTMyIGFuYV9y
Z2MzKTsKIGludCBtdGtfc2dtaWlfc2V0dXBfbW9kZV9hbihzdHJ1Y3QgbXRrX3NnbWlpICpzcywg
aW50IGlkKTsKLWludCBtdGtfc2dtaWlfc2V0dXBfbW9kZV9mb3JjZShzdHJ1Y3QgbXRrX3NnbWlp
ICpzcywgaW50IGlkKTsKLWludCBtdGtfc2V0dXBfaHdfcGF0aChzdHJ1Y3QgbXRrX2V0aCAqZXRo
LCBpbnQgbWFjX2lkLCBpbnQgcGh5bW9kZSk7CitpbnQgbXRrX3NnbWlpX3NldHVwX21vZGVfZm9y
Y2Uoc3RydWN0IG10a19zZ21paSAqc3MsIGludCBpZCwKKwkJCSAgICAgICBjb25zdCBzdHJ1Y3Qg
cGh5bGlua19saW5rX3N0YXRlICpzdGF0ZSk7Cit2b2lkIG10a19zZ21paV9yZXN0YXJ0X2FuKHN0
cnVjdCBtdGtfZXRoICpldGgsIGludCBtYWNfaWQpOworCitpbnQgbXRrX2dtYWNfc2dtaWlfcGF0
aF9zZXR1cChzdHJ1Y3QgbXRrX2V0aCAqZXRoLCBpbnQgbWFjX2lkKTsKK2ludCBtdGtfZ21hY19n
ZXBoeV9wYXRoX3NldHVwKHN0cnVjdCBtdGtfZXRoICpldGgsIGludCBtYWNfaWQpOworaW50IG10
a19nbWFjX3JnbWlpX3BhdGhfc2V0dXAoc3RydWN0IG10a19ldGggKmV0aCwgaW50IG1hY19pZCk7
CiAKICNlbmRpZiAvKiBNVEtfRVRIX0ggKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L21lZGlhdGVrL210a19zZ21paS5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsv
bXRrX3NnbWlpLmMKaW5kZXggZmY1MDlkNDJkODE4Li40ZGIyN2RmYzdlYzEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19zZ21paS5jCisrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L21lZGlhdGVrL210a19zZ21paS5jCkBAIC0xNiw4ICsxNiw3IEBACiBpbnQg
bXRrX3NnbWlpX2luaXQoc3RydWN0IG10a19zZ21paSAqc3MsIHN0cnVjdCBkZXZpY2Vfbm9kZSAq
ciwgdTMyIGFuYV9yZ2MzKQogewogCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnA7Ci0JY29uc3QgY2hh
ciAqc3RyOwotCWludCBpLCBlcnI7CisJaW50IGk7CiAKIAlzcy0+YW5hX3JnYzMgPSBhbmFfcmdj
MzsKIApAQCAtMjksMTkgKzI4LDYgQEAgaW50IG10a19zZ21paV9pbml0KHN0cnVjdCBtdGtfc2dt
aWkgKnNzLCBzdHJ1Y3QgZGV2aWNlX25vZGUgKnIsIHUzMiBhbmFfcmdjMykKIAkJc3MtPnJlZ21h
cFtpXSA9IHN5c2Nvbl9ub2RlX3RvX3JlZ21hcChucCk7CiAJCWlmIChJU19FUlIoc3MtPnJlZ21h
cFtpXSkpCiAJCQlyZXR1cm4gUFRSX0VSUihzcy0+cmVnbWFwW2ldKTsKLQotCQllcnIgPSBvZl9w
cm9wZXJ0eV9yZWFkX3N0cmluZyhucCwgIm1lZGlhdGVrLHBoeXNwZWVkIiwgJnN0cik7Ci0JCWlm
IChlcnIpCi0JCQlyZXR1cm4gZXJyOwotCi0JCWlmICghc3RyY21wKHN0ciwgIjI1MDAiKSkKLQkJ
CXNzLT5mbGFnc1tpXSB8PSBNVEtfU0dNSUlfUEhZU1BFRURfMjUwMDsKLQkJZWxzZSBpZiAoIXN0
cmNtcChzdHIsICIxMDAwIikpCi0JCQlzcy0+ZmxhZ3NbaV0gfD0gTVRLX1NHTUlJX1BIWVNQRUVE
XzEwMDA7Ci0JCWVsc2UgaWYgKCFzdHJjbXAoc3RyLCAiYXV0byIpKQotCQkJc3MtPmZsYWdzW2ld
IHw9IE1US19TR01JSV9QSFlTUEVFRF9BTjsKLQkJZWxzZQotCQkJcmV0dXJuIC1FSU5WQUw7CiAJ
fQogCiAJcmV0dXJuIDA7CkBAIC03MywyNyArNTksNDUgQEAgaW50IG10a19zZ21paV9zZXR1cF9t
b2RlX2FuKHN0cnVjdCBtdGtfc2dtaWkgKnNzLCBpbnQgaWQpCiAJcmV0dXJuIDA7CiB9CiAKLWlu
dCBtdGtfc2dtaWlfc2V0dXBfbW9kZV9mb3JjZShzdHJ1Y3QgbXRrX3NnbWlpICpzcywgaW50IGlk
KQoraW50IG10a19zZ21paV9zZXR1cF9tb2RlX2ZvcmNlKHN0cnVjdCBtdGtfc2dtaWkgKnNzLCBp
bnQgaWQsCisJCQkgICAgICAgY29uc3Qgc3RydWN0IHBoeWxpbmtfbGlua19zdGF0ZSAqc3RhdGUp
CiB7CiAJdW5zaWduZWQgaW50IHZhbDsKLQlpbnQgbW9kZTsKIAogCWlmICghc3MtPnJlZ21hcFtp
ZF0pCiAJCXJldHVybiAtRUlOVkFMOwogCiAJcmVnbWFwX3JlYWQoc3MtPnJlZ21hcFtpZF0sIHNz
LT5hbmFfcmdjMywgJnZhbCk7Ci0JdmFsICY9IH5HRU5NQVNLKDMsIDIpOwotCW1vZGUgPSBzcy0+
ZmxhZ3NbaWRdICYgTVRLX1NHTUlJX1BIWVNQRUVEX01BU0s7Ci0JdmFsIHw9IChtb2RlID09IE1U
S19TR01JSV9QSFlTUEVFRF8xMDAwKSA/IDAgOiBCSVQoMik7CisJdmFsICY9IH5SR19QSFlfU1BF
RURfTUFTSzsKKwlpZiAoc3RhdGUtPmludGVyZmFjZSA9PSBQSFlfSU5URVJGQUNFX01PREVfMjUw
MEJBU0VYKQorCQl2YWwgfD0gUkdfUEhZX1NQRUVEXzNfMTI1RzsKIAlyZWdtYXBfd3JpdGUoc3Mt
PnJlZ21hcFtpZF0sIHNzLT5hbmFfcmdjMywgdmFsKTsKIAogCS8qIERpc2FibGUgU0dNSUkgQU4g
Ki8KIAlyZWdtYXBfcmVhZChzcy0+cmVnbWFwW2lkXSwgU0dNU1lTX1BDU19DT05UUk9MXzEsICZ2
YWwpOwotCXZhbCAmPSB+QklUKDEyKTsKKwl2YWwgJj0gflNHTUlJX0FOX0VOQUJMRTsKIAlyZWdt
YXBfd3JpdGUoc3MtPnJlZ21hcFtpZF0sIFNHTVNZU19QQ1NfQ09OVFJPTF8xLCB2YWwpOwogCiAJ
LyogU0dNSUkgZm9yY2UgbW9kZSBzZXR0aW5nICovCi0JdmFsID0gMHgzMTEyMDAxOTsKKwlyZWdt
YXBfcmVhZChzcy0+cmVnbWFwW2lkXSwgU0dNU1lTX1NHTUlJX01PREUsICZ2YWwpOworCXZhbCAm
PSB+U0dNSUlfSUZfTU9ERV9NQVNLOworCisJc3dpdGNoIChzdGF0ZS0+c3BlZWQpIHsKKwljYXNl
IFNQRUVEXzEwOgorCQl2YWwgfD0gU0dNSUlfU1BFRURfMTA7CisJCWJyZWFrOworCWNhc2UgU1BF
RURfMTAwOgorCQl2YWwgfD0gU0dNSUlfU1BFRURfMTAwOworCQlicmVhazsKKwljYXNlIFNQRUVE
XzI1MDA6CisJY2FzZSBTUEVFRF8xMDAwOgorCQl2YWwgfD0gU0dNSUlfU1BFRURfMTAwMDsKKwkJ
YnJlYWs7CisJfTsKKworCWlmIChzdGF0ZS0+ZHVwbGV4ID09IERVUExFWF9GVUxMKQorCQl2YWwg
fD0gU0dNSUlfRFVQTEVYX0ZVTEw7CisKIAlyZWdtYXBfd3JpdGUoc3MtPnJlZ21hcFtpZF0sIFNH
TVNZU19TR01JSV9NT0RFLCB2YWwpOwogCiAJLyogUmVsZWFzZSBQSFlBIHBvd2VyIGRvd24gc3Rh
dGUgKi8KQEAgLTEwMywzICsxMDcsMjAgQEAgaW50IG10a19zZ21paV9zZXR1cF9tb2RlX2ZvcmNl
KHN0cnVjdCBtdGtfc2dtaWkgKnNzLCBpbnQgaWQpCiAKIAlyZXR1cm4gMDsKIH0KKwordm9pZCBt
dGtfc2dtaWlfcmVzdGFydF9hbihzdHJ1Y3QgbXRrX2V0aCAqZXRoLCBpbnQgbWFjX2lkKQorewor
CXN0cnVjdCBtdGtfc2dtaWkgKnNzID0gZXRoLT5zZ21paTsKKwl1bnNpZ25lZCBpbnQgdmFsLCBz
aWQ7CisKKwkvKiBEZWNpZGUgaG93IEdNQUMgYW5kIFNHTUlJU1lTIGJlIG1hcHBlZCAqLworCXNp
ZCA9IChNVEtfSEFTX0NBUFMoZXRoLT5zb2MtPmNhcHMsIE1US19TSEFSRURfU0dNSUkpKSA/CisJ
ICAgICAgIDAgOiBtYWNfaWQ7CisKKwlpZiAoIXNzLT5yZWdtYXBbc2lkXSkKKwkJcmV0dXJuOwor
CisJcmVnbWFwX3JlYWQoc3MtPnJlZ21hcFtzaWRdLCBTR01TWVNfUENTX0NPTlRST0xfMSwgJnZh
bCk7CisJdmFsIHw9IFNHTUlJX0FOX1JFU1RBUlQ7CisJcmVnbWFwX3dyaXRlKHNzLT5yZWdtYXBb
c2lkXSwgU0dNU1lTX1BDU19DT05UUk9MXzEsIHZhbCk7Cit9Ci0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
