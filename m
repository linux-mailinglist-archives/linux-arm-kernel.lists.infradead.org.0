Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE7A11934E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1Gj9YfdvaXdmn2EXnqZhXECqn47296yjFB20vulG8M=; b=icWiej/TzgQEPf
	WC1vKAzx/V8RGmTx/5hp3Jf1wg17y4pdSyy4AH8XkPgI3p9OcWB0j6F/l1C1ZWnnEzELq/Akp4oQN
	bRgeNJnkm04ZvpmH0Kteh7s+JfEjkfxHsbe3oAncFvDY+Hmc7LZxDcvKoERBT61UaDOaF90sltpNW
	aJMuiizg5AsxJNC+nujsvru03eV7Yy+D3QC7bONrhYbZfWezuMgES7UOWqA0vzmOPxPc0Gkl97a3a
	NfoCdFYSmc78KZTHcathHYu9NWKP9cb9RSaRCQ8OSosrzt6MAAxt+1MpDjV5X0d18P9hLEtoyWqFn
	Ci/XT8GDXjaNNJ+/WtOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemlH-0002L1-6G; Tue, 10 Dec 2019 21:09:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieml7-0002K2-4A
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:09:30 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98335246A4;
 Tue, 10 Dec 2019 21:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012168;
 bh=7zS+SDS48IEOsmWMqVS9szWqKcLCdfqqnTboh0ROiA8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=h6NxWoHpf4jvOfFxe1TcDdN66B9NfEhuAvGYzUvSytyKFEvWNW4G395qKHB5wvlHy
 voAnrDcVu7njwomCeYAW3X3oaqVY+Gwtvg/sW6x1Q9JqWGNe6ecpWZ13yoFcF69wBu
 ES9JBeHCzoyzWZZxdvcydSeqNnOFQw00LhNZaiG4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 128/350] spi: pxa2xx: Set
 controller->max_transfer_size in dma mode
Date: Tue, 10 Dec 2019 16:03:53 -0500
Message-Id: <20191210210735.9077-89-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_130929_204784_8A43F6AE 
X-CRM114-Status: GOOD (  11.07  )
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
cHhhMnh4LmMgYi9kcml2ZXJzL3NwaS9zcGktcHhhMnh4LmMKaW5kZXggYmI2YTE0ZDFhYjBmOS4u
MDY4YzIxMDM3Njc5OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zcGkvc3BpLXB4YTJ4eC5jCisrKyBi
L2RyaXZlcnMvc3BpL3NwaS1weGEyeHguYwpAQCAtMTYwMiw2ICsxNjAyLDExIEBAIHN0YXRpYyBp
bnQgcHhhMnh4X3NwaV9md190cmFuc2xhdGVfY3Moc3RydWN0IHNwaV9jb250cm9sbGVyICpjb250
cm9sbGVyLAogCXJldHVybiBjczsKIH0KIAorc3RhdGljIHNpemVfdCBweGEyeHhfc3BpX21heF9k
bWFfdHJhbnNmZXJfc2l6ZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQoreworCXJldHVybiBNQVhf
RE1BX0xFTjsKK30KKwogc3RhdGljIGludCBweGEyeHhfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKQEAg
LTE3MDcsNiArMTcxMiw4IEBAIHN0YXRpYyBpbnQgcHhhMnh4X3NwaV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQogCQl9IGVsc2UgewogCQkJY29udHJvbGxlci0+Y2FuX2RtYSA9
IHB4YTJ4eF9zcGlfY2FuX2RtYTsKIAkJCWNvbnRyb2xsZXItPm1heF9kbWFfbGVuID0gTUFYX0RN
QV9MRU47CisJCQljb250cm9sbGVyLT5tYXhfdHJhbnNmZXJfc2l6ZSA9CisJCQkJcHhhMnh4X3Nw
aV9tYXhfZG1hX3RyYW5zZmVyX3NpemU7CiAJCX0KIAl9CiAKLS0gCjIuMjAuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
