Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F01FB25510
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tctmu9SYjsQu4yJwS9mJlxpcSV6sO8eSE228VWXKkRs=; b=NwIpH2HN60eKni
	zshtHgIGuauBKQhw1T47uyOVkoTvWp1KBKUJxS/QcOViDxSYRZS0y2OX8IfRVxjbZGu/54dWBBoNx
	0/wJdQsx5XD/aG8ocWEbojEiKPwphSC0zDy/dmSx6687aBOpT1erVm8T3Awlsn3PE63k6fX+//Yzj
	aPU0QCAf+Fczq//taYsNUGbE4P9iu9VrRekiTZO80BiRC+W5f4f7af5S1hmNergfy11tClLQJjRAp
	fS8bueNro5ArS0l6UZmJ5rUz8j17ZDrczSnI+87nCkKIUIz23B+Vgf9jULIm4y0WNQaqaDG+q49x9
	keCHQ03VLc4rxODf/wuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7Me-0006wf-LZ; Tue, 21 May 2019 16:11:44 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7M7-0006Lm-Ah
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:11:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id f204so3594898wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pcynCO3Bhnyyyh0AzkuL7DAz7yiCtTiW/mLXsFC4qdg=;
 b=YrCzRXON/0Vpkv9VFfnH6p1V3nggv/XRBoBPsx+/vqNSV/s+pu9R6XK+Hki1MeKXVW
 iOGxBpY077JEobnVKhTOfi+3VNke0nn8+CBJ+6RMQgVF13yL9mF58lbebM+srWUv5Ueg
 wtq1dzjsCXbsJC34G8ddp6z6u4O0ALYJbv0DY8YbsesAgEjukZJX+OV7OOF8M8/wXK9g
 +18b+uxQzEKtktq6PDkGvCDZQAyNx3bhgElXQN/NYDo821mt7JsqhHJ2tH1JJGKwc6V4
 ZnBBhOp7m8/U1xHIe+bNL1LXtKSr2t+xK+KGDrUju6zr127Tm3Ui+E56cxeDNrKttAPL
 2Xew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pcynCO3Bhnyyyh0AzkuL7DAz7yiCtTiW/mLXsFC4qdg=;
 b=Vy0SX0W8AfjzU3YzBie/Fyvi9LcftWXuMd77TnD/R7JaNqIje5G0LGwvfw52z80+55
 v6DZ7lWifD7lPCwdAMFRrl+/LG4SkAQToLWm/eQ3ViCByUVdxae5Ba0z4qe0rgyKfd61
 RQD10dnioj7pkW80lfqQr8FVjADjwCF4wS8UGDaIxZVvZpX4Ii+qMk18VB7xalmJTW4i
 NCgjuvaZ+YmEIXHWQV704tG4oWqFOBs0rNsKDIrMNL74d3HqnS67GrNbGQL0HYLHgfpK
 89OG/4AQeqDQBDZp4ShFlA4q9hU3cQijPJVZv3riipbwgg658bEm/GvZXldf8AfLz+zU
 oe7w==
X-Gm-Message-State: APjAAAXpMFkw8NNrZFaErHJ7rOJnbTgi13c7xxBXZwezWNPax+/2gkut
 rlzl10fSs4UFP5uuLo5qquY=
X-Google-Smtp-Source: APXvYqynBK31B9gGuYlYbOmFDLrVXZyQ7MV/LPrhgtP4OE0MWCnSyrxl5VmWGWjgIOMTzPaP4WdGOw==
X-Received: by 2002:a7b:c76b:: with SMTP id x11mr4416026wmk.22.1558455069253; 
 Tue, 21 May 2019 09:11:09 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id n63sm3891094wmn.38.2019.05.21.09.11.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:11:08 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Steven Price <steven.price@arm.com>
Subject: [PATCH v6 1/6] drm: panfrost: add optional bus_clock
Date: Tue, 21 May 2019 18:10:57 +0200
Message-Id: <20190521161102.29620-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190521161102.29620-1-peron.clem@gmail.com>
References: <20190521161102.29620-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_091111_553713_C8493EAC 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IGhhcyBhbiBBUk0gTWFsaS1UNzIwIE1QMiB3aGljaCByZXF1aXJlZCBhIGJ1
c19jbG9jay4KCkFkZCBhbiBvcHRpb25hbCBidXNfY2xvY2sgYXQgdGhlIGluaXQgb2YgdGhlIHBh
bmZyb3N0IGRyaXZlci4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xl
bUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2Rldmlj
ZS5jIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0
L3BhbmZyb3N0X2RldmljZS5oIHwgIDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2Rldmlj
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5jCmluZGV4IDNi
MmJjZWQxYjAxNS4uY2NiOGViMmE1MThjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcGFu
ZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3Bh
bmZyb3N0X2RldmljZS5jCkBAIC01NSwxMSArNTUsMzMgQEAgc3RhdGljIGludCBwYW5mcm9zdF9j
bGtfaW5pdChzdHJ1Y3QgcGFuZnJvc3RfZGV2aWNlICpwZmRldikKIAlpZiAoZXJyKQogCQlyZXR1
cm4gZXJyOwogCisJcGZkZXYtPmJ1c19jbG9jayA9IGRldm1fY2xrX2dldF9vcHRpb25hbChwZmRl
di0+ZGV2LCAiYnVzIik7CisJaWYgKElTX0VSUihwZmRldi0+YnVzX2Nsb2NrKSkgeworCQlkZXZf
ZXJyKHBmZGV2LT5kZXYsICJnZXQgYnVzX2Nsb2NrIGZhaWxlZCAlbGRcbiIsCisJCQlQVFJfRVJS
KHBmZGV2LT5idXNfY2xvY2spKTsKKwkJcmV0dXJuIFBUUl9FUlIocGZkZXYtPmJ1c19jbG9jayk7
CisJfQorCisJaWYgKHBmZGV2LT5idXNfY2xvY2spIHsKKwkJcmF0ZSA9IGNsa19nZXRfcmF0ZShw
ZmRldi0+YnVzX2Nsb2NrKTsKKwkJZGV2X2luZm8ocGZkZXYtPmRldiwgImJ1c19jbG9jayByYXRl
ID0gJWx1XG4iLCByYXRlKTsKKworCQllcnIgPSBjbGtfcHJlcGFyZV9lbmFibGUocGZkZXYtPmJ1
c19jbG9jayk7CisJCWlmIChlcnIpCisJCQlnb3RvIGRpc2FibGVfY2xvY2s7CisJfQorCiAJcmV0
dXJuIDA7CisKK2Rpc2FibGVfY2xvY2s6CisJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHBmZGV2LT5j
bG9jayk7CisKKwlyZXR1cm4gZXJyOwogfQogCiBzdGF0aWMgdm9pZCBwYW5mcm9zdF9jbGtfZmlu
aShzdHJ1Y3QgcGFuZnJvc3RfZGV2aWNlICpwZmRldikKIHsKKwljbGtfZGlzYWJsZV91bnByZXBh
cmUocGZkZXYtPmJ1c19jbG9jayk7CiAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHBmZGV2LT5jbG9j
ayk7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9k
ZXZpY2UuaCBiL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kZXZpY2UuaAppbmRl
eCA1NmY0NTJkZmI0OTAuLjgwNzRmMjIxMDM0YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9z
dC9wYW5mcm9zdF9kZXZpY2UuaApAQCAtNjYsNiArNjYsNyBAQCBzdHJ1Y3QgcGFuZnJvc3RfZGV2
aWNlIHsKIAogCXZvaWQgX19pb21lbSAqaW9tZW07CiAJc3RydWN0IGNsayAqY2xvY2s7CisJc3Ry
dWN0IGNsayAqYnVzX2Nsb2NrOwogCXN0cnVjdCByZWd1bGF0b3IgKnJlZ3VsYXRvcjsKIAlzdHJ1
Y3QgcmVzZXRfY29udHJvbCAqcnN0YzsKIAotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
