Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1E213036
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMAdffW7SCGE80ZbuweIbW3JS3IllcZYNwRW8c0Cyfw=; b=LDJBr3ZgSX2JVN
	RUDumnOvFJ8K9Y50Rvuh2RU9m7m7fRGTIfHK0l0BqWH8sSLxxajhUpNPae07aDWdG+4QYKzj8Vlvb
	IX57FoaNEjusX3Y++qibwAjF3MU0tuQTp7SOdkQyH9qY8gpmbpMhOhDlghbXkWuRpIZ8zb1DPKkzm
	Vx5ehZ0WvnO32qlE+C7XO7ICQzzcivmq3e1i/sImNfvCz08uIapAJ+K7DW9t0nl7Sc9DgyjlnHpLO
	NUMDQydVAN+dM8G1f8yOAe/uddbhycN006NeTOY3QywyKNXSZQZstmXXY+/Uq6yr0eA7Y61/OcfoZ
	HE5zXXeez4Afcsq8skdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZBS-0002J9-UE; Fri, 03 May 2019 14:29:06 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZAG-0000lX-36
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:28:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 52D994AD8;
 Fri,  3 May 2019 16:27:50 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 58992be4;
 Fri, 3 May 2019 16:27:48 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH v4 09/10] ARM: Kirkwood: support of_get_mac_address new
 ERR_PTR error
Date: Fri,  3 May 2019 16:27:14 +0200
Message-Id: <1556893635-18549-10-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556893635-18549-1-git-send-email-ynezz@true.cz>
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_072752_753060_16ED149A 
X-CRM114-Status: GOOD (  11.49  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
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
CiBhcmNoL2FybS9tYWNoLW12ZWJ1L2tpcmt3b29kLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21h
Y2gtbXZlYnUva2lya3dvb2QuYyBiL2FyY2gvYXJtL21hY2gtbXZlYnUva2lya3dvb2QuYwppbmRl
eCAwYWE4ODEwLi45YjVmNGQ2IDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLW12ZWJ1L2tpcmt3
b29kLmMKKysrIGIvYXJjaC9hcm0vbWFjaC1tdmVidS9raXJrd29vZC5jCkBAIC05Miw3ICs5Miw4
IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBraXJrd29vZF9kdF9ldGhfZml4dXAodm9pZCkKIAkJCWNv
bnRpbnVlOwogCiAJCS8qIHNraXAgZGlzYWJsZWQgbm9kZXMgb3Igbm9kZXMgd2l0aCB2YWxpZCBN
QUMgYWRkcmVzcyovCi0JCWlmICghb2ZfZGV2aWNlX2lzX2F2YWlsYWJsZShwbnApIHx8IG9mX2dl
dF9tYWNfYWRkcmVzcyhucCkpCisJCWlmICghb2ZfZGV2aWNlX2lzX2F2YWlsYWJsZShwbnApIHx8
CisJCSAgICAhSVNfRVJSKG9mX2dldF9tYWNfYWRkcmVzcyhucCkpKQogCQkJZ290byBldGhfZml4
dXBfc2tpcDsKIAogCQljbGsgPSBvZl9jbGtfZ2V0KHBucCwgMCk7Ci0tIAoxLjkuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
