Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2468213E141
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nd229rqAvJCZTPtpyOUH9jbw5S/0z6MP6aimdsoiGDA=; b=iPEgTk9wz3UvuT
	jL7eT2Ccnba7h1ARwM5niMM9AB3I6tkJJb/TLdDDEM0BnbZAwDNDvgCd1uU99mjIDeYqvjMqQdZ2X
	xhxvC4sLqSLh8FrX9xMrS/kWSZLtEYDTu3bEa8YsQj8ocxM3AXky1Pbp+7P4EEp/7M9A61Wehislb
	bvjj8BxvJMhuDWBIe4yw4dnXD/VNwR0gQf1Vfc5FYkwl08N0dDjwBRrVm44pI6nB8EPf8a/2I49xY
	MigOI/QywpdJ4NZRr9m0EQ0sumnQZMmK1UBV3E0u5DzAy6lVeH9RS45JlUR57k6RGaq32VtsKzuVU
	RrJUs3LogKwT2jtSbACw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8KN-0003ID-39; Thu, 16 Jan 2020 16:49:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Ic-0001zb-Ro
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:47:18 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA502207FF;
 Thu, 16 Jan 2020 16:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193234;
 bh=9vrH7eGOuyb/R/jiwPq/xiEbrRzRYIOG8/WpfWE1YTs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yDP/cl00kURY0MmPHmozWNhpgdoRvQIJ9I5ayn6Tr2VO0BtNTpVUhLDGlh7WuAL5q
 6x9jVc/mDGKRVQ5gcIurimJsMUJM87g7mGmBR0BQbTC+P5RAKzS+kqU+9e7JGkVmfn
 GeTWaR7aCrv0V94OaQR6nLN2G4vL2pFIfAr3ix20=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 051/205] spi: pxa2xx: Set
 controller->max_transfer_size in dma mode
Date: Thu, 16 Jan 2020 11:40:26 -0500
Message-Id: <20200116164300.6705-51-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_084715_114293_1657108E 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, Sasha Levin <sashal@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-spi@vger.kernel.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Mark Brown <broonie@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KClsgVXBzdHJlYW0g
Y29tbWl0IGIyNjYyYTE2NGY5ZGM0OGRhODgyMmU1NjYwMDY4NmQ2MzkwNTYyODIgXQoKSW4gRE1B
IG1vZGUgd2UgaGF2ZSBhIG1heGltdW0gdHJhbnNmZXIgc2l6ZSwgcGFzdCB0aGF0IHRoZSBkcml2
ZXIKZmFsbHMgYmFjayB0byBQSU8gKHNlZSB0aGUgY2hlY2sgYXQgdGhlIHRvcCBvZiBweGEyeHhf
c3BpX3RyYW5zZmVyX29uZSkuCkZhbGxpbmcgYmFjayB0byBQSU8gZm9yIGJpZyB0cmFuc2ZlcnMg
ZGVmZWF0cyB0aGUgcG9pbnQgb2YgYSBkbWEgZW5naW5lLApoZW5jZSBzZXQgdGhlIG1heCB0cmFu
c2ZlciBzaXplIHRvIGluZm9ybSBzcGkgY2xpZW50cyB0aGF0IHRoZXkgbmVlZAp0byBkbyBzb21l
dGhpbmcgc21hcnRlci4KClRoaXMgd2FzIHVuY292ZXJlZCBieSB0aGUgZHJtX21pcGlfZGJpIHNw
aSBwYW5lbCBjb2RlLCB3aGljaCBkb2VzCmxhcmdlIHNwaSB0cmFuc2ZlcnMsIGJ1dCBzdG9wcGVk
IHNwbGl0dGluZyB0aGVtIGFmdGVyOgoKY29tbWl0IGUxNDMzNjRiNGMxNzc0ZjY4ZTkyM2E1YTBi
YjBmY2EyOGFjMjU4ODgKQXV0aG9yOiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9y
Zz4KRGF0ZTogICBGcmkgSnVsIDE5IDE3OjU5OjEwIDIwMTkgKzAyMDAKCiAgICBkcm0vdGlueWRy
bTogUmVtb3ZlIHRpbnlkcm1fc3BpX21heF90cmFuc2Zlcl9zaXplKCkKCkFmdGVyIHRoaXMgY29t
bWl0IHRoZSBjb2RlIHJlbGllZCBvbiB0aGUgc3BpIGNvcmUgdG8gc3BsaXQgdHJhbnNmZXJzCmlu
dG8gbWF4IGRtYS1hYmxlIGJsb2Nrcywgd2hpY2ggYWxzbyBwYXBlcmVkIG92ZXIgdGhlIFBJTyBm
YWxsYmFjayBpc3N1ZS4KCkZpeCB0aGlzIGJ5IHNldHRpbmcgdGhlIG92ZXJhbGwgbWF4IHRyYW5z
ZmVyIHNpemUgdG8gdGhlIERNQSBsaW1pdCwKYnV0IG9ubHkgd2hlbiB0aGUgY29udHJvbGxlciBy
dW5zIGluIERNQSBtb2RlLgoKRml4ZXM6IGUxNDMzNjRiNGMxNyAoImRybS90aW55ZHJtOiBSZW1v
dmUgdGlueWRybV9zcGlfbWF4X3RyYW5zZmVyX3NpemUoKSIpCkNjOiBTYW0gUmF2bmJvcmcgPHNh
bUByYXZuYm9yZy5vcmc+CkNjOiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4K
Q2M6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AaW50ZWwuY29tPgpSZXBvcnRl
ZC1hbmQtdGVzdGVkLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtvQGludGVs
LmNvbT4KQ2M6IERhbmllbCBNYWNrIDxkYW5pZWxAem9ucXVlLm9yZz4KQ2M6IEhhb2ppYW4gWmh1
YW5nIDxoYW9qaWFuLnpodWFuZ0BnbWFpbC5jb20+CkNjOiBSb2JlcnQgSmFyem1payA8cm9iZXJ0
LmphcnptaWtAZnJlZS5mcj4KQ2M6IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KQ2M6
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogbGludXgtc3BpQHZnZXIu
a2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZm
d2xsLmNoPgpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMTkxMDE3MDY0NDI2LjMw
ODE0LTEtZGFuaWVsLnZldHRlckBmZndsbC5jaApTaWduZWQtb2ZmLWJ5OiBNYXJrIEJyb3duIDxi
cm9vbmllQGtlcm5lbC5vcmc+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxAa2Vy
bmVsLm9yZz4KLS0tCiBkcml2ZXJzL3NwaS9zcGktcHhhMnh4LmMgfCA3ICsrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NwaS9zcGkt
cHhhMnh4LmMgYi9kcml2ZXJzL3NwaS9zcGktcHhhMnh4LmMKaW5kZXggYWU5NWVjMGJjOTY0Li45
ZjkyMTY1ZmUwOWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3BpL3NwaS1weGEyeHguYworKysgYi9k
cml2ZXJzL3NwaS9zcGktcHhhMnh4LmMKQEAgLTE2MTIsNiArMTYxMiwxMSBAQCBzdGF0aWMgaW50
IHB4YTJ4eF9zcGlfZndfdHJhbnNsYXRlX2NzKHN0cnVjdCBzcGlfY29udHJvbGxlciAqY29udHJv
bGxlciwKIAlyZXR1cm4gY3M7CiB9CiAKK3N0YXRpYyBzaXplX3QgcHhhMnh4X3NwaV9tYXhfZG1h
X3RyYW5zZmVyX3NpemUoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKK3sKKwlyZXR1cm4gTUFYX0RN
QV9MRU47Cit9CisKIHN0YXRpYyBpbnQgcHhhMnh4X3NwaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQogewogCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7CkBAIC0x
NzE3LDYgKzE3MjIsOCBAQCBzdGF0aWMgaW50IHB4YTJ4eF9zcGlfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKIAkJfSBlbHNlIHsKIAkJCWNvbnRyb2xsZXItPmNhbl9kbWEgPSBw
eGEyeHhfc3BpX2Nhbl9kbWE7CiAJCQljb250cm9sbGVyLT5tYXhfZG1hX2xlbiA9IE1BWF9ETUFf
TEVOOworCQkJY29udHJvbGxlci0+bWF4X3RyYW5zZmVyX3NpemUgPQorCQkJCXB4YTJ4eF9zcGlf
bWF4X2RtYV90cmFuc2Zlcl9zaXplOwogCQl9CiAJfQogCi0tIAoyLjIwLjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
