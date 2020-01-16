Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1E113FD52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 00:26:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYkkUcc6UneIzXYFekjNfnG6FO/7kb4jQqDuxKmYmew=; b=omwyAhDA/UsqZq
	cckCoH3l6G9ZIw4Mwxbyi02l85PlLSpweoALRyuZ6dfQIUlnlBlzmIc3TnTcMV8Q2euhhGw7biRVW
	zTiaOMv/uox/7/ySLYhMOeFiPeVPvFW/CNaK43jiOrdjJoi40gDMlTLiXPq71aVawTjj5fpaeJVTe
	tzT4heQbq0KwEDrnIYpO9+dqtIGc9kpK+v1lFuF85YzzqlF2bJcDKNQtOp04bg99ccO2wRmENbQJd
	Z0649K/7+oQUKejYMuGn2uHXXzmBL7lXXPg3xURPDOydMsi2bMJTkxrAQTxdzTbh93e8T1TjlCa2I
	nMnnVsIDcz0o6TMzxduQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isEWX-0001U4-Rm; Thu, 16 Jan 2020 23:26:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isEWL-0001TD-U3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 23:25:51 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D107B2072E;
 Thu, 16 Jan 2020 23:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579217149;
 bh=1RVsmw/AN+bMpGsTR/ZalrOfVHM0V8DoXXYrZD5lshs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uhl/oZSXzR9u+QDL0pzM0Crxo/vUuMN7Ra4lLJqDBkaK8pkGUMxunWoJ2i5taO3q8
 dLJJ0COfH0keWkckhkwQJ2OGBcSQl7uqW2vm68rgvjbsSmy4a+tLbmiWsMokwukA65
 Aoeh91GWxIyJ6V10OVgs/GWzkuR4zGbY5O+EVMiA=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.4 168/203] spi: pxa2xx: Set controller->max_transfer_size in
 dma mode
Date: Fri, 17 Jan 2020 00:18:05 +0100
Message-Id: <20200116231759.290885917@linuxfoundation.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200116231745.218684830@linuxfoundation.org>
References: <20200116231745.218684830@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_152550_010720_230A4D87 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, stable@vger.kernel.org,
 linux-spi@vger.kernel.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Mark Brown <broonie@kernel.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KCmNvbW1pdCBiMjY2
MmExNjRmOWRjNDhkYTg4MjJlNTY2MDA2ODZkNjM5MDU2MjgyIHVwc3RyZWFtLgoKSW4gRE1BIG1v
ZGUgd2UgaGF2ZSBhIG1heGltdW0gdHJhbnNmZXIgc2l6ZSwgcGFzdCB0aGF0IHRoZSBkcml2ZXIK
ZmFsbHMgYmFjayB0byBQSU8gKHNlZSB0aGUgY2hlY2sgYXQgdGhlIHRvcCBvZiBweGEyeHhfc3Bp
X3RyYW5zZmVyX29uZSkuCkZhbGxpbmcgYmFjayB0byBQSU8gZm9yIGJpZyB0cmFuc2ZlcnMgZGVm
ZWF0cyB0aGUgcG9pbnQgb2YgYSBkbWEgZW5naW5lLApoZW5jZSBzZXQgdGhlIG1heCB0cmFuc2Zl
ciBzaXplIHRvIGluZm9ybSBzcGkgY2xpZW50cyB0aGF0IHRoZXkgbmVlZAp0byBkbyBzb21ldGhp
bmcgc21hcnRlci4KClRoaXMgd2FzIHVuY292ZXJlZCBieSB0aGUgZHJtX21pcGlfZGJpIHNwaSBw
YW5lbCBjb2RlLCB3aGljaCBkb2VzCmxhcmdlIHNwaSB0cmFuc2ZlcnMsIGJ1dCBzdG9wcGVkIHNw
bGl0dGluZyB0aGVtIGFmdGVyOgoKY29tbWl0IGUxNDMzNjRiNGMxNzc0ZjY4ZTkyM2E1YTBiYjBm
Y2EyOGFjMjU4ODgKQXV0aG9yOiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4K
RGF0ZTogICBGcmkgSnVsIDE5IDE3OjU5OjEwIDIwMTkgKzAyMDAKCiAgICBkcm0vdGlueWRybTog
UmVtb3ZlIHRpbnlkcm1fc3BpX21heF90cmFuc2Zlcl9zaXplKCkKCkFmdGVyIHRoaXMgY29tbWl0
IHRoZSBjb2RlIHJlbGllZCBvbiB0aGUgc3BpIGNvcmUgdG8gc3BsaXQgdHJhbnNmZXJzCmludG8g
bWF4IGRtYS1hYmxlIGJsb2Nrcywgd2hpY2ggYWxzbyBwYXBlcmVkIG92ZXIgdGhlIFBJTyBmYWxs
YmFjayBpc3N1ZS4KCkZpeCB0aGlzIGJ5IHNldHRpbmcgdGhlIG92ZXJhbGwgbWF4IHRyYW5zZmVy
IHNpemUgdG8gdGhlIERNQSBsaW1pdCwKYnV0IG9ubHkgd2hlbiB0aGUgY29udHJvbGxlciBydW5z
IGluIERNQSBtb2RlLgoKRml4ZXM6IGUxNDMzNjRiNGMxNyAoImRybS90aW55ZHJtOiBSZW1vdmUg
dGlueWRybV9zcGlfbWF4X3RyYW5zZmVyX3NpemUoKSIpCkNjOiBTYW0gUmF2bmJvcmcgPHNhbUBy
YXZuYm9yZy5vcmc+CkNjOiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KQ2M6
IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AaW50ZWwuY29tPgpSZXBvcnRlZC1h
bmQtdGVzdGVkLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtvQGludGVsLmNv
bT4KQ2M6IERhbmllbCBNYWNrIDxkYW5pZWxAem9ucXVlLm9yZz4KQ2M6IEhhb2ppYW4gWmh1YW5n
IDxoYW9qaWFuLnpodWFuZ0BnbWFpbC5jb20+CkNjOiBSb2JlcnQgSmFyem1payA8cm9iZXJ0Lmph
cnptaWtAZnJlZS5mcj4KQ2M6IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KQ2M6IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogbGludXgtc3BpQHZnZXIua2Vy
bmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xs
LmNoPgpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMTkxMDE3MDY0NDI2LjMwODE0
LTEtZGFuaWVsLnZldHRlckBmZndsbC5jaApTaWduZWQtb2ZmLWJ5OiBNYXJrIEJyb3duIDxicm9v
bmllQGtlcm5lbC5vcmc+ClNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2to
QGxpbnV4Zm91bmRhdGlvbi5vcmc+CgotLS0KIGRyaXZlcnMvc3BpL3NwaS1weGEyeHguYyB8ICAg
IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKLS0tIGEvZHJpdmVy
cy9zcGkvc3BpLXB4YTJ4eC5jCisrKyBiL2RyaXZlcnMvc3BpL3NwaS1weGEyeHguYwpAQCAtMTYx
Miw2ICsxNjEyLDExIEBAIHN0YXRpYyBpbnQgcHhhMnh4X3NwaV9md190cmFuc2xhdGVfY3Moc3QK
IAlyZXR1cm4gY3M7CiB9CiAKK3N0YXRpYyBzaXplX3QgcHhhMnh4X3NwaV9tYXhfZG1hX3RyYW5z
ZmVyX3NpemUoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKK3sKKwlyZXR1cm4gTUFYX0RNQV9MRU47
Cit9CisKIHN0YXRpYyBpbnQgcHhhMnh4X3NwaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQogewogCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7CkBAIC0xNzE3LDYg
KzE3MjIsOCBAQCBzdGF0aWMgaW50IHB4YTJ4eF9zcGlfcHJvYmUoc3RydWN0IHBsYXRmCiAJCX0g
ZWxzZSB7CiAJCQljb250cm9sbGVyLT5jYW5fZG1hID0gcHhhMnh4X3NwaV9jYW5fZG1hOwogCQkJ
Y29udHJvbGxlci0+bWF4X2RtYV9sZW4gPSBNQVhfRE1BX0xFTjsKKwkJCWNvbnRyb2xsZXItPm1h
eF90cmFuc2Zlcl9zaXplID0KKwkJCQlweGEyeHhfc3BpX21heF9kbWFfdHJhbnNmZXJfc2l6ZTsK
IAkJfQogCX0KIAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
