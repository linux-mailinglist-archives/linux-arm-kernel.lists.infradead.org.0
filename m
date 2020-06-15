Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148811F934A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3xKUR+QgT2njX67lyVczCKsNtme+FqUJMSHbY/DaUs=; b=lXrmx+dfpgeurb
	Fq70ITfEEQH72rhjnNGBfau4MvfRkkZDBIamMMh/rSRVG5E7tqbvuUugXyFB6dZU7MpnhR5//vyGt
	L7wMDTyF6hl6e22TxzhjXgrpaI7NWxDXOFrG6rdATX5mAHOAhT+N2uhrREngu1DrqNJePUaqrhaEe
	qtt6SiRX0ONSnaFXrlmkAC0CcQeGNuZpRtUxNPzmmUwBsp6Zt/xp6MKY24yPwYc5293+OHvfIRfp5
	Q8suo/etmF9XgT4SRERQC87N1W9TlXlemIuYucAvwXQDtc/BhQPPmulw1/H1HsfVQIW/w8tg99pU4
	dJF7dK/vbTWLBl9G6QuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklLy-0000ve-Ab; Mon, 15 Jun 2020 09:24:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklFQ-0001P4-LV; Mon, 15 Jun 2020 09:17:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id e1so16315266wrt.5;
 Mon, 15 Jun 2020 02:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ViDG/uNaLf+kHGoLWwh7AEgB81iiukfSSIutqnlLBfs=;
 b=esXNHJ/yPdIUKaOhRsqZnZ0bBMnXZY/5Gr1KOnjLV5fdxZYpw8whEz80nQdUpe10ju
 RtG6yTLCAEsBhmKScyva3SDjRZg1ttEf21P04eugHnABT9ofj1rhptSByP4upST+ew/q
 NpK56ud7fIMEicDXidhi2K5YnSYNw45ga9+oIaF/sM69zJtgcng5PUjBXQphGuaera8o
 S8E7K+26dIMweAIoyhuvmvrnTe8h8CVIP0GNy+zHhOIfVkkQvwrb2CvvrntRdNtSFtOw
 vEvzZMwdnXeBP0thGyxf5k7K5lEzeazHFDFuMYflSs9Or6YBMZRurJ7KTlHiXCkjaAIX
 1NJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ViDG/uNaLf+kHGoLWwh7AEgB81iiukfSSIutqnlLBfs=;
 b=Ia3blCiilhO46GS5vXFGBsk8pTQzzDFQdyKfzYZZwhqYJ2eRJT8HqFwClC+WF7RiIb
 9aqVxitcCmbNbc9+KVNlv9KuydM2UHgB/fnPf0ukZ9H1cI7AbVxSxXEbDJrFZGcYFFk5
 +/dgzpxdekKR/VhO2StMg0cFzBOZWAQi0OL2SWphewARHvyVV5fErDmqRex3MHo4ap1t
 hQ/h2BNcPplTgGP0eHkv/2afyFchTdBr0crYOCsGIL5HtkQ5kW4IdCYi9/33dnBek/MV
 +K2P8sKHlnqGGdeBY+OAm7UqpUprnOiB6yIjqqAJgX2qtHO1A9QmhPv+gwlpSF4GLGey
 Ikmg==
X-Gm-Message-State: AOAM532+96XiSW/MtZC+OIX2hGN0TQ6n+l2Wkjqp0ycCJ9Mo4/rxJrOz
 nd1Rhy6y8z2sm5ZYne4xpdU=
X-Google-Smtp-Source: ABdhPJx8i5wy03KmXkXmCHQsrLmD1GWhxkDsUKs0ZAE2/d+hX0PBNi9YajMHPT4+f//fb5CE0mfj9A==
X-Received: by 2002:adf:82ab:: with SMTP id 40mr26566597wrc.85.1592212662596; 
 Mon, 15 Jun 2020 02:17:42 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id z12sm25840592wrg.9.2020.06.15.02.17.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:17:42 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: tsbogend@alpha.franken.de, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, jonas.gorski@gmail.com,
 linus.walleij@linaro.org, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
Subject: [PATCH v4] mtd: parsers: bcm63xx: simplify CFE detection
Date: Mon, 15 Jun 2020 11:17:40 +0200
Message-Id: <20200615091740.2958303-1-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200612073549.1658336-1-noltari@gmail.com>
References: <20200612073549.1658336-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_021744_727766_D5527419 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

SW5zdGVhZCBvZiB0cnlpbmcgdG8gcGFyc2UgQ0ZFIHZlcnNpb24gc3RyaW5nLCB3aGljaCBpcyBj
dXN0b21pemVkIGJ5IHNvbWUKdmVuZG9ycywgbGV0J3MganVzdCBjaGVjayB0aGF0ICJDRkUxIiB3
YXMgcGFzc2VkIG9uIGFyZ3VtZW50IDMuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5k
ZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb25hcyBHb3Jza2kg
PGpvbmFzLmdvcnNraUBnbWFpbC5jb20+Ci0tLQogdjQ6IHNob3J0ZW4gY29uZGl0aW9uYWwgY29t
cGlsYXRpb24gcGFydCBhcyBzdWdnZXN0ZWQgYnkgTWlxdcOobC4KIHYzOiBrZWVwIENPTVBJTEVf
VEVTVCBjb21wYXRpYmlsaXR5IGJ5IGFkZGluZyBhIG5ldyBmdW5jdGlvbiB0aGF0IG9ubHkgY2hl
Y2tzCiAgICAgZndfYXJnMyB3aGVuIENPTkZJR19NSVBTIGlzIGRlZmluZWQuCiB2MjogdXNlIENG
RV9FUFRTRUFMIGRlZmluaXRpb24gYW5kIGF2b2lkIHVzaW5nIGFuIGFkZGl0aW9uYWwgZnVuY3Rp
b24uCgogZHJpdmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5jIHwgMzIgKysrKysrKysrKysr
LS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDIw
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL3BhcnNlcnMvYmNtNjN4eHBh
cnQuYyBiL2RyaXZlcnMvbXRkL3BhcnNlcnMvYmNtNjN4eHBhcnQuYwppbmRleCA3OGY5MGM2YzE4
ZmQuLmIxNWJkYWRhZWRiNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tdGQvcGFyc2Vycy9iY202M3h4
cGFydC5jCisrKyBiL2RyaXZlcnMvbXRkL3BhcnNlcnMvYmNtNjN4eHBhcnQuYwpAQCAtMjIsNiAr
MjIsMTEgQEAKICNpbmNsdWRlIDxsaW51eC9tdGQvcGFydGl0aW9ucy5oPgogI2luY2x1ZGUgPGxp
bnV4L29mLmg+CiAKKyNpZmRlZiBDT05GSUdfTUlQUworI2luY2x1ZGUgPGFzbS9ib290aW5mby5o
PgorI2luY2x1ZGUgPGFzbS9mdy9jZmUvY2ZlX2FwaS5oPgorI2VuZGlmIC8qIENPTkZJR19NSVBT
ICovCisKICNkZWZpbmUgQkNNOTYzWFhfQ0ZFX0JMT0NLX1NJWkUJCVNaXzY0SwkvKiBhbHdheXMg
YXQgbGVhc3QgNjRLaUIgKi8KIAogI2RlZmluZSBCQ005NjNYWF9DRkVfTUFHSUNfT0ZGU0VUCTB4
NGUwCkBAIC0zMiwyOCArMzcsMTUgQEAKICNkZWZpbmUgU1RSX05VTExfVEVSTUlOQVRFKHgpIFwK
IAlkbyB7IGNoYXIgKl9zdHIgPSAoeCk7IF9zdHJbc2l6ZW9mKHgpIC0gMV0gPSAwOyB9IHdoaWxl
ICgwKQogCi1zdGF0aWMgaW50IGJjbTYzeHhfZGV0ZWN0X2NmZShzdHJ1Y3QgbXRkX2luZm8gKm1h
c3RlcikKK3N0YXRpYyBpbmxpbmUgaW50IGJjbTYzeHhfZGV0ZWN0X2NmZSh2b2lkKQogewotCWNo
YXIgYnVmWzldOwotCWludCByZXQ7Ci0Jc2l6ZV90IHJldGxlbjsKKwlpbnQgcmV0ID0gMDsKIAot
CXJldCA9IG10ZF9yZWFkKG1hc3RlciwgQkNNOTYzWFhfQ0ZFX1ZFUlNJT05fT0ZGU0VULCA1LCAm
cmV0bGVuLAotCQkgICAgICAgKHZvaWQgKilidWYpOwotCWJ1ZltyZXRsZW5dID0gMDsKKyNpZmRl
ZiBDT05GSUdfTUlQUworCXJldCA9IChmd19hcmczID09IENGRV9FUFRTRUFMKTsKKyNlbmRpZiAv
KiBDT05GSUdfTUlQUyAqLwogCi0JaWYgKHJldCkKLQkJcmV0dXJuIHJldDsKLQotCWlmIChzdHJu
Y21wKCJjZmUtdiIsIGJ1ZiwgNSkgPT0gMCkKLQkJcmV0dXJuIDA7Ci0KLQkvKiB2ZXJ5IG9sZCBD
RkUncyBkbyBub3QgaGF2ZSB0aGUgY2ZlLXYgc3RyaW5nLCBzbyBjaGVjayBmb3IgbWFnaWMgKi8K
LQlyZXQgPSBtdGRfcmVhZChtYXN0ZXIsIEJDTTk2M1hYX0NGRV9NQUdJQ19PRkZTRVQsIDgsICZy
ZXRsZW4sCi0JCSAgICAgICAodm9pZCAqKWJ1Zik7Ci0JYnVmW3JldGxlbl0gPSAwOwotCi0JcmV0
dXJuIHN0cm5jbXAoIkNGRTFDRkUxIiwgYnVmLCA4KTsKKwlyZXR1cm4gcmV0OwogfQogCiBzdGF0
aWMgaW50IGJjbTYzeHhfcmVhZF9udnJhbShzdHJ1Y3QgbXRkX2luZm8gKm1hc3RlciwKQEAgLTEz
OCw3ICsxMzAsNyBAQCBzdGF0aWMgaW50IGJjbTYzeHhfcGFyc2VfY2ZlX3BhcnRpdGlvbnMoc3Ry
dWN0IG10ZF9pbmZvICptYXN0ZXIsCiAJc3RydWN0IGJjbTk2M3h4X252cmFtICpudnJhbSA9IE5V
TEw7CiAJaW50IHJldDsKIAotCWlmIChiY202M3h4X2RldGVjdF9jZmUobWFzdGVyKSkKKwlpZiAo
IWJjbTYzeHhfZGV0ZWN0X2NmZSgpKQogCQlyZXR1cm4gLUVJTlZBTDsKIAogCW52cmFtID0gdnph
bGxvYyhzaXplb2YoKm52cmFtKSk7Ci0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
