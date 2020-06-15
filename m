Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF961F90F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXg4nEUi+4Mv09bcQiKO+OzjgrBoc8yr4AJdbO4ifwc=; b=r8BoRJb8c1+QF/
	MjniAZ9Adh0CcvkycNZe6Mrj7Xwhkn25h210oUqfitKB+RG21rG77q6n7e7Ld7O6eUMIssdmNP+8q
	Q8bcOj5AgydnMLm6iCwn0a2cwjDQjVgDLwuNtVhwvtF9VKbwkNXGfZl4kXqXyTQkdyQJfYFNpb9W6
	fml2P7/NIVbh7yyWQfbYoIGIYhAUGkuWYXj7MXLfE4dBI/eLoWZbCbGNcUzbk15/9Vs0ne/8R8iEi
	R+pKURhwBpiUMzeIyjZMjr5ce43jPjLZegPfPAQa48r83sIv9YJF9aZ64HHLm18lbH9jgzfzgqPhK
	3JgueGTyMRuKWKJFkRRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkk5g-0007Ji-Gi; Mon, 15 Jun 2020 08:03:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkk5J-00079A-BL
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:03:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id l10so16016543wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 01:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NNdjIWpqOIzd0m8ttGrmgbfjsjDdO4jG01Ng0RZ57Yk=;
 b=up1WuBMwGRcvmOXYMRqouxeXOkJd2O/E8BLE+kbVXTkkODXYZWAPVAt1O3quhdfszR
 74kQKXRnYRikyNh6kE63AUijJ2vj/RSe05UTC6WIvc9OZJPEXFqP+RuYg0n1IVHPcLz8
 okU0do5NxuhAVm3YVIUur12LMzc4S24BbpD/oPgbaa0X6trDyrXfxf6MA5+nh8KzZem/
 72FTMablLMbz2NirPdcOyOLbc1czKcW+tI5iUGmL6A0RUg1Sr10l/YIghBvdWFSwqcKN
 +0gSmjenHZvX6dPeOSWJ0mtA6m0AdG928bMW09S4rsOpMCsoLSkxshtZpbE+FvIlmJCR
 vt5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NNdjIWpqOIzd0m8ttGrmgbfjsjDdO4jG01Ng0RZ57Yk=;
 b=poA8bdYB42kx5b/8K//h3eninZ3eCyl7VsGi8PTVdmxyttgT0e376F5fjxQ3GVmRvT
 BYN0Wt5hbbgaJHs4D6RKUIkQYv4l74BtfWrlYLR/DwmEkJEarWBR/6ERShH9e8CmTWQ7
 KxEubAN1jQDkPoCQS0XxEPpQtdyHl/fDcRl1uPXK9RkuPNvTq9KmrnjazsevGpUD5WG+
 Iho4EVqOxMN878/tCMeLCmq/p6HSKmdZoQe7faK1houcVkyq5i5vVaQhbWvtYLs0KzZD
 wRQgEVPp1ZDE6VFjEM+s1yuW5uZ1l4nFa/2Apt07GDGygfkNhbEtjaIl3iEcNr3vRSTK
 IA8A==
X-Gm-Message-State: AOAM530PjASYPwGQcVzuyAChIooj+HjIJTm/Yeb6mkmCAM/Px6OfBy3f
 jQnfQcHAmNvJTNMicpd0VpM=
X-Google-Smtp-Source: ABdhPJzete+uWJ/dRfkMk2DZxKBP3AjJL4ZDB4Hd3SecqASFs6WOH7JWnG/Kwn/bpOzCryfomdgelQ==
X-Received: by 2002:a5d:6b81:: with SMTP id n1mr27100208wrx.411.1592208192034; 
 Mon, 15 Jun 2020 01:03:12 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id d9sm23107054wre.28.2020.06.15.01.03.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 01:03:11 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] spi: bcm63xx-spi: add reset support
Date: Mon, 15 Jun 2020 10:03:06 +0200
Message-Id: <20200615080309.2897694-2-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615080309.2897694-1-noltari@gmail.com>
References: <20200615080309.2897694-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_010313_386985_3E4C0C7E 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YmNtNjN4eCBhcmNoIHJlc2V0cyB0aGUgU1BJIGNvbnRyb2xsZXIgYXQgZWFybHkgYm9vdC4gSG93
ZXZlciwgYm1pcHMgYXJjaApuZWVkcyB0byBwZXJmb3JtIGEgcmVzZXQgd2hlbiBwcm9iaW5nIHRo
ZSBkcml2ZXIuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRh
cmlAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvc3BpL3NwaS1iY202M3h4LmMgfCAxNyArKysrKysr
KysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jIGIvZHJpdmVycy9zcGkvc3BpLWJjbTYzeHguYwpp
bmRleCAwZjFiMTBhNGVmMGMuLjhhYjA0YWZmYWY3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zcGkv
c3BpLWJjbTYzeHguYworKysgYi9kcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jCkBAIC0xOCw2ICsx
OCw3IEBACiAjaW5jbHVkZSA8bGludXgvZXJyLmg+CiAjaW5jbHVkZSA8bGludXgvcG1fcnVudGlt
ZS5oPgogI2luY2x1ZGUgPGxpbnV4L29mLmg+CisjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4KIAog
LyogQkNNIDYzMzgvNjM0OCBTUEkgY29yZSAqLwogI2RlZmluZSBTUElfNjM0OF9SU0VUX1NJWkUJ
CTY0CkBAIC00OTMsNiArNDk0LDcgQEAgc3RhdGljIGludCBiY202M3h4X3NwaV9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXN0cnVjdCBiY202M3h4X3NwaSAqYnM7CiAJaW50
IHJldDsKIAl1MzIgbnVtX2NzID0gQkNNNjNYWF9TUElfTUFYX0NTOworCXN0cnVjdCByZXNldF9j
b250cm9sICpyZXNldDsKIAogCWlmIChkZXYtPm9mX25vZGUpIHsKIAkJY29uc3Qgc3RydWN0IG9m
X2RldmljZV9pZCAqbWF0Y2g7CkBAIC01MjksNiArNTMxLDE1IEBAIHN0YXRpYyBpbnQgYmNtNjN4
eF9zcGlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJcmV0dXJuIFBUUl9F
UlIoY2xrKTsKIAl9CiAKKwlyZXNldCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXQoZGV2LCBOVUxM
KTsKKwlpZiAoSVNfRVJSKHJlc2V0KSkgeworCQlyZXQgPSBQVFJfRVJSKHJlc2V0KTsKKwkJaWYg
KHJldCAhPSAtRVBST0JFX0RFRkVSKQorCQkJZGV2X2VycihkZXYsCisJCQkJImZhaWxlZCB0byBn
ZXQgcmVzZXQgY29udHJvbGxlcjogJWRcbiIsIHJldCk7CisJCXJldHVybiByZXQ7CisJfQorCiAJ
bWFzdGVyID0gc3BpX2FsbG9jX21hc3RlcihkZXYsIHNpemVvZigqYnMpKTsKIAlpZiAoIW1hc3Rl
cikgewogCQlkZXZfZXJyKGRldiwgIm91dCBvZiBtZW1vcnlcbiIpOwpAQCAtNTc5LDYgKzU5MCwx
MiBAQCBzdGF0aWMgaW50IGJjbTYzeHhfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiAJaWYgKHJldCkKIAkJZ290byBvdXRfZXJyOwogCisJcmV0ID0gcmVzZXRfY29udHJv
bF9yZXNldChyZXNldCk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKGRldiwgInVuYWJsZSB0byBy
ZXNldCBkZXZpY2U6ICVkXG4iLCByZXQpOworCQlnb3RvIG91dF9jbGtfZGlzYWJsZTsKKwl9CisK
IAliY21fc3BpX3dyaXRlYihicywgU1BJX0lOVFJfQ0xFQVJfQUxMLCBTUElfSU5UX1NUQVRVUyk7
CiAKIAkvKiByZWdpc3RlciBhbmQgd2UgYXJlIGRvbmUgKi8KLS0gCjIuMjcuMAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
