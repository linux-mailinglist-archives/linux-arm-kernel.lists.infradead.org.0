Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C569A12945
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcrJ7BS7ABzP493ypXyASzwY937daxJcXu18QhnEeZ0=; b=FuKwH4obaoLSpM
	XoMl2aiNR2V+o+XNwxLNiWLLyED8ci/WYPcGrsNkjYWAMNdOvNYg/VpiJ++lNIrJ2MlZ+eFdZKn8J
	xXfJ9e2GHkP7QkEOHtx89Pz/uUAYHgPE3JrDqb/i6tgrZghdSX+lO23Y0TRlMujx7kD8+yx5wD6CJ
	32ooQ8Xh/ED681SBucYc7mk0ZpJo62g638t2bWNidgSX3b8llEQTzKWLF4IjIxYZn+d3xUAKmlDyq
	SbawNpt9msxhL24APLqC4T0Z5Z0YHbD2zDcuKLMkgKVZHvL8drgpwDFocYIidTgVlBarWNjE+9FrP
	T5hYYFhHQaAjc0Kmd9cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMT4N-0001K2-VF; Fri, 03 May 2019 07:57:23 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMT3u-0000oT-Fc
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:57:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9A0A3358C;
 Fri,  3 May 2019 09:56:52 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 0e2e355d;
 Fri, 3 May 2019 09:56:51 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@free-electrons.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH v3 09/10] ARM: Kirkwood: support of_get_mac_address new
 ERR_PTR error
Date: Fri,  3 May 2019 09:56:06 +0200
Message-Id: <1556870168-26864-10-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556870168-26864-1-git-send-email-ynezz@true.cz>
References: <1556870168-26864-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_005655_323044_9D484F8A 
X-CRM114-Status: GOOD (  11.72  )
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
dCBjb3VsZCBub3cKcmV0dXJuIE5VTEwgYW5kIEVSUl9QVFIgZW5jb2RlZCBlcnJvciB2YWx1ZXMs
IHNvIHdlIG5lZWQgdG8gYWRqdXN0IGFsbApjdXJyZW50IHVzZXJzIG9mIG9mX2dldF9tYWNfYWRk
cmVzcyB0byB0aGlzIG5ldyBmYWN0LgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5l
enpAdHJ1ZS5jej4KLS0tCiBhcmNoL2FybS9tYWNoLW12ZWJ1L2tpcmt3b29kLmMgfCAzICsrLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL21hY2gtbXZlYnUva2lya3dvb2QuYyBiL2FyY2gvYXJtL21hY2gtbXZlYnUv
a2lya3dvb2QuYwppbmRleCAwYWE4ODEwLi45MDNhNGNiIDEwMDY0NAotLS0gYS9hcmNoL2FybS9t
YWNoLW12ZWJ1L2tpcmt3b29kLmMKKysrIGIvYXJjaC9hcm0vbWFjaC1tdmVidS9raXJrd29vZC5j
CkBAIC05Miw3ICs5Miw4IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBraXJrd29vZF9kdF9ldGhfZml4
dXAodm9pZCkKIAkJCWNvbnRpbnVlOwogCiAJCS8qIHNraXAgZGlzYWJsZWQgbm9kZXMgb3Igbm9k
ZXMgd2l0aCB2YWxpZCBNQUMgYWRkcmVzcyovCi0JCWlmICghb2ZfZGV2aWNlX2lzX2F2YWlsYWJs
ZShwbnApIHx8IG9mX2dldF9tYWNfYWRkcmVzcyhucCkpCisJCWlmICghb2ZfZGV2aWNlX2lzX2F2
YWlsYWJsZShwbnApIHx8CisJCSAgICAhSVNfRVJSX09SX05VTEwob2ZfZ2V0X21hY19hZGRyZXNz
KG5wKSkpCiAJCQlnb3RvIGV0aF9maXh1cF9za2lwOwogCiAJCWNsayA9IG9mX2Nsa19nZXQocG5w
LCAwKTsKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
