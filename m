Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427853CE35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMtzKZDQrwsVe7Jhy+hhnLv2GrG9+ssQlm5/8BPSl4k=; b=Mjjj58fbjdOaGu
	kEhLXHw959X1jMFFDkaYGXUmec4RF5frsy3gaasl+k1/yd+iygR+FQIhrUNTnEp4v62RF3WVXU4sW
	wPHcHci2MYKQIPG5wAi/pkKKfdRpzNmFoSaeqRrm/cofiVLNr+S4DcZX276lF43GcfYwDOMwqrLlW
	TmgMNp1gsfHZkwTF6uZ/F6OQB4Jp27ipUvGSOba0eHLB/VSsvoGVI8wjKjNhCbRiB/YjwHCZ/suBG
	Rzotn5siEpaRuKdGB302Y9kCJMz5yKf6JdDyRma+/s5wVrcdfPLuAU8QWNfF576bItZiq5NDotBlS
	oPqtjO6sGzAeKj7Ethng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahYP-0005Vr-Fg; Tue, 11 Jun 2019 14:15:13 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahW1-00044d-A3
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:12:48 +0000
Received: from [199.195.250.187] (port=52838 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1hahVx-0002ui-EO; Tue, 11 Jun 2019 15:12:41 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 8FCE78229F;
 Tue, 11 Jun 2019 14:12:36 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 09/11] dt-bindings: vendor-prefixes: add Sipeed
Date: Tue, 11 Jun 2019 22:09:38 +0800
Message-Id: <20190611140940.14357-10-icenowy@aosc.io>
In-Reply-To: <20190611140940.14357-1-icenowy@aosc.io>
References: <20190611140940.14357-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 24
X-Spam-Status: No, score=2.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_071247_503903_9ACF98E0 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2hlbnpoZW7CoFNpcGVlZMKgVGVjaG5vbG9necKgQ28uLMKgTHRkLiBpcyBhIGNvbXBhbnkgZm9j
dXNlZCBvbiBkZXZlbG9wbWVudApraXRzLCB3aGljaCBhbHNvIGNvbnRhaW5zIHJlYnJhbmRlZCBM
aWNoZWUgUGkgc2VyaWVzLgoKQWRkIGl0cyB2ZW5kb3IgcHJlZml4IGJpbmRpbmcuCgpTaWduZWQt
b2ZmLWJ5OiBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFvc2MuaW8+Ci0tLQpOZXcgcGF0Y2ggaW4g
djIuCgogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55
YW1sIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbApp
bmRleCAyYzhhOGIxOTVjMDcuLmMwY2QyMmU1NjcyYSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sCisrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbApAQCAtNzkxLDYg
Kzc5MSw4IEBAIHBhdHRlcm5Qcm9wZXJ0aWVzOgogICAgIGRlc2NyaXB0aW9uOiBTaWxpY29uIE1p
dHVzLCBJbmMuCiAgICJec2ltdGVrLC4qIjoKICAgICBkZXNjcmlwdGlvbjogQ3lwcmVzcyBTZW1p
Y29uZHVjdG9yIENvcnBvcmF0aW9uIChTaW10ZWsgQ29ycG9yYXRpb24pCisgICJec2lwZWVkLC4q
IjoKKyAgICBkZXNjcmlwdGlvbjogU2hlbnpoZW7CoFNpcGVlZMKgVGVjaG5vbG9necKgQ28uLMKg
THRkLgogICAiXnNpcmYsLioiOgogICAgIGRlc2NyaXB0aW9uOiBTaVJGIFRlY2hub2xvZ3ksIElu
Yy4KICAgIl5zaXMsLioiOgotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
