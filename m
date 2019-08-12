Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 856E88A953
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:30:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSRJeMaUzl/sl+VkBfjLH8zr+IDJ05nYyHx1tKvQD1E=; b=mG1ESUr+XXAaoA
	XxfpZ9f9UwFCUXCKHwXFm7HgpeXu+Qg0kfCrpvkkRot+LQh+mGPwrd01m1FI57oAX9bzEbtGH1niL
	e35B6cBw8utNeCebmRZJfPnkKnyeS8tqiLl/ydY5SvDLhoVm6Awgz01fxIIBxrG+j/+EfIZ57n+VL
	6mlhGdN3PZaK+lWv7+Ar064Wd+gwKG7ohRDo5fH4b8PcDKJWZTkr1YzIwHH+eFy+QIhnS+iBKxgqA
	I+azXQ2Rn0lztYlU92kkMGQtdsHgEqUsOwucH8I8Zfu5e2jWu0d40jM0Jiwe7ncPYG2t2ZbGg8Rh3
	xfrQF2U5xiwFjdZL3znA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHt4-0002Oa-QQ; Mon, 12 Aug 2019 21:29:54 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHrd-0001Hp-Fa
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:28:26 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 487A5763AFD; Mon, 12 Aug 2019 23:28:24 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH 6/9] ARM: dts: at91: at91sam9g15: Style cleanup
Date: Mon, 12 Aug 2019 23:27:54 +0200
Message-Id: <20190812212757.23432-6-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190812212757.23432-1-uwe@kleine-koenig.org>
References: <20190812212757.23432-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_142825_718412_0CD18171 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.130.110.236 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LSB1c2UgdGFncyBmcm9tIGluY2x1ZGVkIGR0c2kgaW5zdGVhZCBvZiBkdXBsaWNhdGluZyB0aGUg
aGllcmFyY2h5CgpUaGVyZSBhcmUgbm8gZGlmZmVyZW5jZXMgaW4gdGhlIGdlbmVyYXRlZCAuZHRi
cwoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9y
Zz4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOWcxNS5kdHNpIHwgMjggKysrKysrKysr
KysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDE2
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05ZzE1
LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOWcxNS5kdHNpCmluZGV4IGQ3N2M2OWFk
N2YwMi4uZGRlODgyNzZmZTUyIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9hdDkxc2Ft
OWcxNS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05ZzE1LmR0c2kKQEAgLTEx
LDIyICsxMSwxOCBAQAogLyB7CiAJbW9kZWwgPSAiQXRtZWwgQVQ5MVNBTTlHMTUgU29DIjsKIAlj
b21wYXRpYmxlID0gImF0bWVsLGF0OTFzYW05ZzE1IiwgImF0bWVsLGF0OTFzYW05eDUiOworfTsK
IAotCWFoYiB7Ci0JCWFwYiB7Ci0JCQlwaW5jdHJsQGZmZmZmNDAwIHsKLQkJCQlhdG1lbCxtdXgt
bWFzayA9IDwKLQkJCQkgICAgICAvKiAgICBBICAgICAgICAgQiAgICAgICAgICBDICAgICAqLwot
CQkJCSAgICAgICAweGZmZmZmZmZmIDB4ZmZlMDM5OWYgMHgwMDAwMDAwMCAgLyogcGlvQSAqLwot
CQkJCSAgICAgICAweDAwMDQwMDAwIDB4MDAwNDdlM2YgMHgwMDAwMDAwMCAgLyogcGlvQiAqLwot
CQkJCSAgICAgICAweGZkZmZmZmZmIDB4MDAwMDAwMDAgMHhiODNmZmZmZiAgLyogcGlvQyAqLwot
CQkJCSAgICAgICAweDAwM2ZmZmZmIDB4MDAzZjgwMDAgMHgwMDAwMDAwMCAgLyogcGlvRCAqLwot
CQkJCSAgICAgID47Ci0JCQl9OworJnBpbmN0cmwgeworCWF0bWVsLG11eC1tYXNrID0gPAorCSAg
ICAgIC8qICAgIEEgICAgICAgICBCICAgICAgICAgIEMgICAgICovCisJICAgICAgIDB4ZmZmZmZm
ZmYgMHhmZmUwMzk5ZiAweDAwMDAwMDAwICAvKiBwaW9BICovCisJICAgICAgIDB4MDAwNDAwMDAg
MHgwMDA0N2UzZiAweDAwMDAwMDAwICAvKiBwaW9CICovCisJICAgICAgIDB4ZmRmZmZmZmYgMHgw
MDAwMDAwMCAweGI4M2ZmZmZmICAvKiBwaW9DICovCisJICAgICAgIDB4MDAzZmZmZmYgMHgwMDNm
ODAwMCAweDAwMDAwMDAwICAvKiBwaW9EICovCisJICAgICAgPjsKK307CiAKLQkJCXBtYzogcG1j
QGZmZmZmYzAwIHsKLQkJCQljb21wYXRpYmxlID0gImF0bWVsLGF0OTFzYW05ZzE1LXBtYyIsICJh
dG1lbCxhdDkxc2FtOXg1LXBtYyIsICJzeXNjb24iOwotCQkJfTsKLQkJfTsKLQl9OworJnBtYyB7
CisJY29tcGF0aWJsZSA9ICJhdG1lbCxhdDkxc2FtOWcxNS1wbWMiLCAiYXRtZWwsYXQ5MXNhbTl4
NS1wbWMiLCAic3lzY29uIjsKIH07Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
