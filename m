Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F5621DAB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 20:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNbUjg2SLjWsg4+gbVzDtvNgm8CJe7ws/hbtSKHKZeY=; b=a7s45xXAKtnZ8D
	cKqT7w6GWz39srDZDLQplzc7f0zXlOaFMKRdWV64Hp+MJXUszK319C7cN7ojX7aQkr219/Wj3xtlO
	rcEI9V5WmUEa9OEZbF8ZZ9ThgXhMePtAFG/r7IPy2otBqWbRZHIP0v87YoU/nvKY2absAtDYkVkDO
	7LDXbEozztDYRXQiJdxlGZ9oPVkUegbqi8qHDeLW7QprOGmTUoRmWeAVry7fSGfkh1CUve2ww2qRm
	aUs3BjYrkLtBUPR/3F+ATuzK/Wu3hglNKSsMa3X0wSdu9XyFhOYvdhQGKQoxbHbQd3pPND6lRsAir
	nmA2OCZSpiX1xYC60oFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRht9-000575-GD; Fri, 17 May 2019 18:47:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhsr-0004vm-1x
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 18:47:10 +0000
Received: by mail-wr1-x444.google.com with SMTP id f8so1773319wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 11:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4QRWDFkVz3xUnUzR3+DHbkRCIRl8pbjmxCa/vhR9hvo=;
 b=IzX0fpNh7WWzngetTRMHcGGlBKa4/Y10ND0MNxVowv35ASa6AyO+qLIiBx3oorQdoE
 gIMiRRTn12Vsg2PSpAtRil1uUy8xkxChgYigzhBilxkZX68upC2GKDNyLfBUb7Z2bHUQ
 l3UW0QKhlFhotuDCigGjT0urbWePYMe8D/Pqzy4lHHDPtWu2SCcAKN5A52dsJNj3f/9u
 wkbw9NIvOfWOihlEVc51Vd3gqhyPPlvGT64PX4ziAJrrUtqwzN1IUvq1Nm5N1J3wTFtQ
 EAhiuVgi6wE0rGJSFc9r5guK7YM9/7d0ISQhpYx5+RHA1MbYhrZU48H4aCLkI/T/pxBx
 RsxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4QRWDFkVz3xUnUzR3+DHbkRCIRl8pbjmxCa/vhR9hvo=;
 b=SgyTHP2itgT1XUAXdMe4mu0JpAAT+0B6DoIdVhv5TEONy+LSWiPFZbdiepypQNU+bv
 4DCoBjbxGJhQUER2u6XKK668P4DeKwmmWXCawGTD8skSaNw7ciWAIMQGhbiruJH+/Mvu
 tLqnHobvnBktasELPbjTi8gg6jDZa/fBFpUro6y4YRyI1FTyLN+EGKpQrciCNkJkhVbH
 qL8MPP8w+9fKtr+I2EHi3mTDSA1Z962EhE2op0gvpPy2dAIRBkbtYmHX/F2agW28ksXZ
 6AG2nYwSMK3jG+XtK8C39u4XOOP1XoF8ECrLZQ0giboL3OKXEpMnYrpDFB0Wd0ackeRm
 fT4g==
X-Gm-Message-State: APjAAAWypqiEDPMfzI7vYwj7miztYx9CVtFgC8Zc0cp2KISBnl6KwTPd
 6Gb67N2Ryj+b8RH5Ea2sHUI=
X-Google-Smtp-Source: APXvYqzQ3Rol+3txTzhDDbnTRdYC6TTbSHhpgNCNWdrgxxOScCII+60hVNsOpiwPvn2YYuVJGvfLtA==
X-Received: by 2002:a5d:658d:: with SMTP id q13mr19937938wru.61.1558118827335; 
 Fri, 17 May 2019 11:47:07 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id v20sm5801112wmj.10.2019.05.17.11.47.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 11:47:06 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Steven Price <steven.price@arm.com>
Subject: [PATCH v5 1/6] drm: panfrost: add optional bus_clock
Date: Fri, 17 May 2019 20:46:54 +0200
Message-Id: <20190517184659.18828-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190517184659.18828-1-peron.clem@gmail.com>
References: <20190517184659.18828-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_114709_098146_7E2D882E 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
ZS5jIHwgMjUgKysrKysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0
L3BhbmZyb3N0X2RldmljZS5oIHwgIDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0
L3BhbmZyb3N0X2RldmljZS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2Rl
dmljZS5jCmluZGV4IDNiMmJjZWQxYjAxNS4uOGRhNmU2MTJkMzg0IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5jCkBAIC00NCw3ICs0NCw4IEBAIHN0YXRpYyBp
bnQgcGFuZnJvc3RfY2xrX2luaXQoc3RydWN0IHBhbmZyb3N0X2RldmljZSAqcGZkZXYpCiAKIAlw
ZmRldi0+Y2xvY2sgPSBkZXZtX2Nsa19nZXQocGZkZXYtPmRldiwgTlVMTCk7CiAJaWYgKElTX0VS
UihwZmRldi0+Y2xvY2spKSB7Ci0JCWRldl9lcnIocGZkZXYtPmRldiwgImdldCBjbG9jayBmYWls
ZWQgJWxkXG4iLCBQVFJfRVJSKHBmZGV2LT5jbG9jaykpOworCQlkZXZfZXJyKHBmZGV2LT5kZXYs
ICJnZXQgY2xvY2sgZmFpbGVkICVsZFxuIiwKKwkJCVBUUl9FUlIocGZkZXYtPmNsb2NrKSk7CiAJ
CXJldHVybiBQVFJfRVJSKHBmZGV2LT5jbG9jayk7CiAJfQogCkBAIC01NSwxMSArNTYsMzMgQEAg
c3RhdGljIGludCBwYW5mcm9zdF9jbGtfaW5pdChzdHJ1Y3QgcGFuZnJvc3RfZGV2aWNlICpwZmRl
dikKIAlpZiAoZXJyKQogCQlyZXR1cm4gZXJyOwogCisJcGZkZXYtPmJ1c19jbG9jayA9IGRldm1f
Y2xrX2dldF9vcHRpb25hbChwZmRldi0+ZGV2LCAiYnVzIik7CisJaWYgKElTX0VSUihwZmRldi0+
YnVzX2Nsb2NrKSkgeworCQlkZXZfZXJyKHBmZGV2LT5kZXYsICJnZXQgYnVzX2Nsb2NrIGZhaWxl
ZCAlbGRcbiIsCisJCQlQVFJfRVJSKHBmZGV2LT5idXNfY2xvY2spKTsKKwkJcmV0dXJuIFBUUl9F
UlIocGZkZXYtPmJ1c19jbG9jayk7CisJfQorCisJaWYgKHBmZGV2LT5idXNfY2xvY2spIHsKKwkJ
cmF0ZSA9IGNsa19nZXRfcmF0ZShwZmRldi0+YnVzX2Nsb2NrKTsKKwkJZGV2X2luZm8ocGZkZXYt
PmRldiwgImJ1c19jbG9jayByYXRlID0gJWx1XG4iLCByYXRlKTsKKworCQllcnIgPSBjbGtfcHJl
cGFyZV9lbmFibGUocGZkZXYtPmJ1c19jbG9jayk7CisJCWlmIChlcnIpCisJCQlnb3RvIGRpc2Fi
bGVfY2xvY2s7CisJfQorCiAJcmV0dXJuIDA7CisKK2Rpc2FibGVfY2xvY2s6CisJY2xrX2Rpc2Fi
bGVfdW5wcmVwYXJlKHBmZGV2LT5jbG9jayk7CisKKwlyZXR1cm4gZXJyOwogfQogCiBzdGF0aWMg
dm9pZCBwYW5mcm9zdF9jbGtfZmluaShzdHJ1Y3QgcGFuZnJvc3RfZGV2aWNlICpwZmRldikKIHsK
KwljbGtfZGlzYWJsZV91bnByZXBhcmUocGZkZXYtPmJ1c19jbG9jayk7CiAJY2xrX2Rpc2FibGVf
dW5wcmVwYXJlKHBmZGV2LT5jbG9jayk7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9wYW5mcm9zdC9wYW5mcm9zdF9kZXZpY2UuaCBiL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9w
YW5mcm9zdF9kZXZpY2UuaAppbmRleCA1NmY0NTJkZmI0OTAuLjgwNzRmMjIxMDM0YiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kZXZpY2UuaApAQCAtNjYsNiArNjYsNyBA
QCBzdHJ1Y3QgcGFuZnJvc3RfZGV2aWNlIHsKIAogCXZvaWQgX19pb21lbSAqaW9tZW07CiAJc3Ry
dWN0IGNsayAqY2xvY2s7CisJc3RydWN0IGNsayAqYnVzX2Nsb2NrOwogCXN0cnVjdCByZWd1bGF0
b3IgKnJlZ3VsYXRvcjsKIAlzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0YzsKIAotLSAKMi4xNy4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
