Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E0A1318FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:02:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AtgQvAKc/+EMGBbaXcYtt9DiIsS12wkHuVu7Ux6oRoc=; b=TfmqbpN+dkwGks
	7kMlX4IUY672TxbmdPt57lYo/JjuQRLxRF6YjHOfY2gZocWquDbF5XdbomDGqZzG0qvZWBF5zE4MY
	iCy5TNYMnhJSTaVsHv4eDkCiW5HgNOtwHpxW6LUKlRbgepO/aaCXzSgW2F27qM+bD00n1DMfdibZ+
	7HtafDkBoixgl9hoL22wefXiub47yD7EjjJNVivYz5Hjz/3zlSF4hMEyVzUlYA17sHh0eJd/YzHBO
	V1PErWYSYytqMeXULk9+HFTWnQMVEDsxxhb7pJfz9+pJdVtX+YXLcG2A4vr0a/+5NlbU0zJ/PKVj1
	CntP7/YyK0RXajbS0Etg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioYZn-0002gf-Ld; Mon, 06 Jan 2020 20:02:11 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioYZg-0002fp-0P
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 20:02:05 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 860DB1A0E48;
 Mon,  6 Jan 2020 21:02:00 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 794061A0E3F;
 Mon,  6 Jan 2020 21:02:00 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 0284C203CC;
 Mon,  6 Jan 2020 21:01:59 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH 1/2] crypto: caam - add support for i.MX8M Nano
Date: Mon,  6 Jan 2020 22:01:53 +0200
Message-Id: <20200106200154.30643-1-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_120204_184720_366941B1 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Aymen Sghaier <aymen.sghaier@nxp.com>,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHN1cHBvcnQgZm9yIHRoZSBjcnlwdG8gZW5naW5lIHVzZWQgaW4gaS5teDhtbiAoaS5NWCA4
TSAiTmFubyIpLAp3aGljaCBpcyB2ZXJ5IHNpbWlsYXIgdG8gdGhlIG9uZSB1c2VkIGluIGkubXg4
bXEsIGkubXg4bW0uCgpTaW5jZSB0aGUgY2xvY2tzIGFyZSBpZGVudGljYWwgZm9yIGFsbCBtZW1i
ZXJzIG9mIGkuTVggOE0gZmFtaWx5LApzaW1wbGlmeSB0aGUgU29DIDwtLT4gY2xvY2sgYXJyYXkg
bWFwcGluZyB0YWJsZS4KClNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50
YUBueHAuY29tPgotLS0KIGRyaXZlcnMvY3J5cHRvL2NhYW0vY3RybC5jIHwgOCArKysrLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2NyeXB0by9jYWFtL2N0cmwuYyBiL2RyaXZlcnMvY3J5cHRvL2NhYW0vY3Ry
bC5jCmluZGV4IDY2NTljOGQ5NjcyZS4uODhhNThhOGZjNTMzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2NyeXB0by9jYWFtL2N0cmwuYworKysgYi9kcml2ZXJzL2NyeXB0by9jYWFtL2N0cmwuYwpAQCAt
OTksMTEgKzk5LDEyIEBAIHN0YXRpYyBpbmxpbmUgaW50IHJ1bl9kZXNjcmlwdG9yX2RlY28wKHN0
cnVjdCBkZXZpY2UgKmN0cmxkZXYsIHUzMiAqZGVzYywKIAogCWlmIChjdHJscHJpdi0+dmlydF9l
biA9PSAxIHx8CiAJICAgIC8qCi0JICAgICAqIEFwcGFyZW50bHkgb24gaS5NWDhNUSBpdCBkb2Vz
bid0IG1hdHRlciBpZiB2aXJ0X2VuID09IDEKKwkgICAgICogQXBwYXJlbnRseSBvbiBpLk1YOE1R
LCA4TU0sIDhNTiBpdCBkb2Vzbid0IG1hdHRlciBpZiB2aXJ0X2VuID09IDEKIAkgICAgICogYW5k
IHRoZSBmb2xsb3dpbmcgc3RlcHMgc2hvdWxkIGJlIHBlcmZvcm1lZCByZWdhcmRsZXNzCiAJICAg
ICAqLwogCSAgICBvZl9tYWNoaW5lX2lzX2NvbXBhdGlibGUoImZzbCxpbXg4bXEiKSB8fAotCSAg
ICBvZl9tYWNoaW5lX2lzX2NvbXBhdGlibGUoImZzbCxpbXg4bW0iKSkgeworCSAgICBvZl9tYWNo
aW5lX2lzX2NvbXBhdGlibGUoImZzbCxpbXg4bW0iKSB8fAorCSAgICBvZl9tYWNoaW5lX2lzX2Nv
bXBhdGlibGUoImZzbCxpbXg4bW4iKSkgewogCQljbHJzZXRiaXRzXzMyKCZjdHJsLT5kZWNvX3Jz
ciwgMCwgREVDT1JTUl9KUjApOwogCiAJCXdoaWxlICghKHJkX3JlZzMyKCZjdHJsLT5kZWNvX3Jz
cikgJiBERUNPUlNSX1ZBTElEKSAmJgpAQCAtNTA5LDggKzUxMCw3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3Qgc29jX2RldmljZV9hdHRyaWJ1dGUgY2FhbV9pbXhfc29jX3RhYmxlW10gPSB7CiAJeyAu
c29jX2lkID0gImkuTVg2VUwiLCAuZGF0YSA9ICZjYWFtX2lteDZ1bF9kYXRhIH0sCiAJeyAuc29j
X2lkID0gImkuTVg2KiIsICAuZGF0YSA9ICZjYWFtX2lteDZfZGF0YSB9LAogCXsgLnNvY19pZCA9
ICJpLk1YNyoiLCAgLmRhdGEgPSAmY2FhbV9pbXg3X2RhdGEgfSwKLQl7IC5zb2NfaWQgPSAiaS5N
WDhNUSIsIC5kYXRhID0gJmNhYW1faW14N19kYXRhIH0sCi0JeyAuc29jX2lkID0gImkuTVg4TU0i
LCAuZGF0YSA9ICZjYWFtX2lteDdfZGF0YSB9LAorCXsgLnNvY19pZCA9ICJpLk1YOE0qIiwgLmRh
dGEgPSAmY2FhbV9pbXg3X2RhdGEgfSwKIAl7IC5mYW1pbHkgPSAiRnJlZXNjYWxlIGkuTVgiIH0s
CiAJeyAvKiBzZW50aW5lbCAqLyB9CiB9OwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
