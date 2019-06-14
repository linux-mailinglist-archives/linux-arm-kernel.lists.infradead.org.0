Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3A445C8C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:18:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqLMpzyZ8jTtsesdc/3MQgPvN+Yq17Z438bhBOl18Vk=; b=upGIrI65xgUq5J
	A2XhugwVeSDBNwWkmf26+AnU5nDJp3NQg9RFAskYwqIzAaEGmQrfe0TUTBQNHOkYgSXTmOUCSnbOB
	mLmqx49DbFmRkl6s+1QYHDbiFtrPc1pD5Q/Yuv+Dxu+0l0/oETGK1CutJXZYEAvBNOw70WoguirOV
	TS5hp9FqxCwrimZqR2QRcOBEnI1uYCX9xDfXzKpzLb3chTxH3iZI1EjmMFCB6ByYT9K9rTZrarTYW
	SUJRPcLkQPpL9cTBVwVOg99e5L8LRUO18CBT0lHEUMJQ+ra6hMZglRuAVrcymryuOVExNYpRlGS0o
	/KWgqtnZrZCuOK9MEECw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl9z-0000ol-AD; Fri, 14 Jun 2019 12:18:23 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl5l-0004YB-2m
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:14:06 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 7362DE0010;
 Fri, 14 Jun 2019 12:13:54 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v4 10/12] drm/modes: Parse overscan properties
Date: Fri, 14 Jun 2019 14:13:17 +0200
Message-Id: <c16d281d1dc69ee60e95169807e7e2ab2992f133.1560514379.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051401_543404_37771B98 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, noralf@tronnes.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UHJvcGVybHkgY29uZmlndXJpbmcgdGhlIG92ZXJzY2FuIHByb3BlcnRpZXMgbWlnaHQgYmUgbmVl
ZGVkIGZvciB0aGUKaW5pdGlhbCBzZXR1cCBvZiB0aGUgZnJhbWVidWZmZXIgZm9yIGRpc3BsYXkg
dGhhdCBzdGlsbCBoYXZlIG92ZXJzY2FuLgpMZXQncyBhbGxvdyBmb3IgbW9yZSBwcm9wZXJ0aWVz
IG9uIHRoZSBrZXJuZWwgY29tbWFuZCBsaW5lIHRvIHNldHVwIGVhY2gKbWFyZ2luLgoKUmV2aWV3
ZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgpTaWduZWQtb2ZmLWJ5
OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9kcm1fbW9kZXMuYyB8IDQ0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrLQogaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oIHwgMTIgKysrKystLS0tLQogMiBm
aWxlcyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9k
ZXMuYwppbmRleCBiOTJiN2RmNjc4NGEuLjI1ZDJiYTU5NTc1MCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9tb2Rlcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYwpA
QCAtMTYwOSw2ICsxNjA5LDUwIEBAIHN0YXRpYyBpbnQgZHJtX21vZGVfcGFyc2VfY21kbGluZV9v
cHRpb25zKGNoYXIgKnN0ciwgc2l6ZV90IGxlbiwKIAkJfSBlbHNlIGlmICghc3RybmNtcChvcHRp
b24sICJyZWZsZWN0X3kiLCBkZWxpbSAtIG9wdGlvbikpIHsKIAkJCXJvdGF0aW9uIHw9IERSTV9N
T0RFX1JFRkxFQ1RfWTsKIAkJCXNlcCA9IGRlbGltOworCQl9IGVsc2UgaWYgKCFzdHJuY21wKG9w
dGlvbiwgIm1hcmdpbl9yaWdodCIsIGRlbGltIC0gb3B0aW9uKSkgeworCQkJY29uc3QgY2hhciAq
dmFsdWUgPSBkZWxpbSArIDE7CisJCQl1bnNpZ25lZCBpbnQgbWFyZ2luOworCisJCQltYXJnaW4g
PSBzaW1wbGVfc3RydG9sKHZhbHVlLCAmc2VwLCAxMCk7CisKKwkJCS8qIE1ha2Ugc3VyZSB3ZSBo
YXZlIHBhcnNlZCBzb21ldGhpbmcgKi8KKwkJCWlmIChzZXAgPT0gdmFsdWUpCisJCQkJcmV0dXJu
IC1FSU5WQUw7CisKKwkJCW1vZGUtPnR2X21hcmdpbnMucmlnaHQgPSBtYXJnaW47CisJCX0gZWxz
ZSBpZiAoIXN0cm5jbXAob3B0aW9uLCAibWFyZ2luX2xlZnQiLCBkZWxpbSAtIG9wdGlvbikpIHsK
KwkJCWNvbnN0IGNoYXIgKnZhbHVlID0gZGVsaW0gKyAxOworCQkJdW5zaWduZWQgaW50IG1hcmdp
bjsKKworCQkJbWFyZ2luID0gc2ltcGxlX3N0cnRvbCh2YWx1ZSwgJnNlcCwgMTApOworCisJCQkv
KiBNYWtlIHN1cmUgd2UgaGF2ZSBwYXJzZWQgc29tZXRoaW5nICovCisJCQlpZiAoc2VwID09IHZh
bHVlKQorCQkJCXJldHVybiAtRUlOVkFMOworCisJCQltb2RlLT50dl9tYXJnaW5zLmxlZnQgPSBt
YXJnaW47CisJCX0gZWxzZSBpZiAoIXN0cm5jbXAob3B0aW9uLCAibWFyZ2luX3RvcCIsIGRlbGlt
IC0gb3B0aW9uKSkgeworCQkJY29uc3QgY2hhciAqdmFsdWUgPSBkZWxpbSArIDE7CisJCQl1bnNp
Z25lZCBpbnQgbWFyZ2luOworCisJCQltYXJnaW4gPSBzaW1wbGVfc3RydG9sKHZhbHVlLCAmc2Vw
LCAxMCk7CisKKwkJCS8qIE1ha2Ugc3VyZSB3ZSBoYXZlIHBhcnNlZCBzb21ldGhpbmcgKi8KKwkJ
CWlmIChzZXAgPT0gdmFsdWUpCisJCQkJcmV0dXJuIC1FSU5WQUw7CisKKwkJCW1vZGUtPnR2X21h
cmdpbnMudG9wID0gbWFyZ2luOworCQl9IGVsc2UgaWYgKCFzdHJuY21wKG9wdGlvbiwgIm1hcmdp
bl9ib3R0b20iLCBkZWxpbSAtIG9wdGlvbikpIHsKKwkJCWNvbnN0IGNoYXIgKnZhbHVlID0gZGVs
aW0gKyAxOworCQkJdW5zaWduZWQgaW50IG1hcmdpbjsKKworCQkJbWFyZ2luID0gc2ltcGxlX3N0
cnRvbCh2YWx1ZSwgJnNlcCwgMTApOworCisJCQkvKiBNYWtlIHN1cmUgd2UgaGF2ZSBwYXJzZWQg
c29tZXRoaW5nICovCisJCQlpZiAoc2VwID09IHZhbHVlKQorCQkJCXJldHVybiAtRUlOVkFMOwor
CisJCQltb2RlLT50dl9tYXJnaW5zLmJvdHRvbSA9IG1hcmdpbjsKIAkJfSBlbHNlIHsKIAkJCXJl
dHVybiAtRUlOVkFMOwogCQl9CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9y
LmggYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKaW5kZXggYzU4YTM1YjM0YzFhLi42ODQx
YzQ2ZTY3ODEgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaAorKysgYi9p
bmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKQEAgLTUwNSwxMiArNTA1LDcgQEAgc3RydWN0IGRy
bV9jb25uZWN0b3JfdHZfbWFyZ2lucyB7CiAgKi8KIHN0cnVjdCBkcm1fdHZfY29ubmVjdG9yX3N0
YXRlIHsKIAllbnVtIGRybV9tb2RlX3N1YmNvbm5lY3RvciBzdWJjb25uZWN0b3I7Ci0Jc3RydWN0
IHsKLQkJdW5zaWduZWQgaW50IGxlZnQ7Ci0JCXVuc2lnbmVkIGludCByaWdodDsKLQkJdW5zaWdu
ZWQgaW50IHRvcDsKLQkJdW5zaWduZWQgaW50IGJvdHRvbTsKLQl9IG1hcmdpbnM7CisJc3RydWN0
IGRybV9jb25uZWN0b3JfdHZfbWFyZ2lucyBtYXJnaW5zOwogCXVuc2lnbmVkIGludCBtb2RlOwog
CXVuc2lnbmVkIGludCBicmlnaHRuZXNzOwogCXVuc2lnbmVkIGludCBjb250cmFzdDsKQEAgLTEw
MzksNiArMTAzNCwxMSBAQCBzdHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSB7CiAJICogRFJNX01PREVf
Uk9UQVRFXzE4MCBhcmUgc3VwcG9ydGVkIGF0IHRoZSBtb21lbnQuCiAJICovCiAJdW5zaWduZWQg
aW50IHJvdGF0aW9uOworCisJLyoqCisJICogQHR2X21hcmdpbnM6IFRWIG1hcmdpbnMgdG8gYXBw
bHkgdG8gdGhlIG1vZGUuCisJICovCisJc3RydWN0IGRybV9jb25uZWN0b3JfdHZfbWFyZ2lucyB0
dl9tYXJnaW5zOwogfTsKIAogLyoqCi0tIApnaXQtc2VyaWVzIDAuOS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
