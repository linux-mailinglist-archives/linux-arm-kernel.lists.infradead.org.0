Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CA410845E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 18:31:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMwcJAM8xzMCwhNr5/amxCwpsltLlLyvapitDqamjzg=; b=OnHGStlwwBqM4c
	tQcLeih6enVzTKatUWDyKzu/CeuYx8geM6DcEsnuSSJjtg6pH3Yv/OJarMoYDR2E7cxYxWUZ6R/Gg
	yJAjDuV7IEtqWC35ldV2zKr/wvRgKDxC3d6d1Rg5oe7HYi8YKCg9ob+EnExtJStfGC5Pu8YNlMcbw
	DrUbOFQh6xMrhktHehGMxzwul3jp4hTwCeNHdQpCcElj1q6T657LDmdGr6UkU5aSKRAUzjG7wvRq4
	fMdo5aTGmSUbiUKwz3WFqJL4ydW09SHAwsyKmG6367ylMoRkX7oZ9UCdgVZEUaDL3noF4W52EDTfw
	k16PKfK5aSQ3iZVe+qCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYviv-0006R9-2Q; Sun, 24 Nov 2019 17:31:01 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYvi2-0004y7-Rd
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 17:30:08 +0000
Received: by mail-wm1-x341.google.com with SMTP id t26so13121338wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 Nov 2019 09:30:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sr+7BNL0b4tCp1MqDsXudPxzWoZbpaPXSrRxNlurcYk=;
 b=UqEa69xKeg3cqB4VbMFljhQGtuxAd10jRTcPE0LGk4j/hSErxDTUllZ/GrJa/FbIXG
 ZVT2g7Iv0pXgaqBE3UOEnoydCDGbMzmteXCcELyEpn+smCmGGRiT2J8/oW/+cacN7VnC
 zTzpErhnp/KBF7MCToR0Zdrk0C1rAOdg9fACXZEh9BFypwjVuXFPEKW/N0ZHME5X4l7n
 eX4kXDzdAA6JeSzhLoWOm3XEEazDC6+/lbCzA1bVcUUYvZ7tGQQ5OdD8lk56bsETe6eY
 YMm00Y9+IuadMtL4FawcIBSBWvHNbHtqgVoCsurLldWkwT4PL6f6QZyOJXhJXcOg/z7d
 HXuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sr+7BNL0b4tCp1MqDsXudPxzWoZbpaPXSrRxNlurcYk=;
 b=uLIfCMaAP6wZAmJjXBfaR4POLLLBfSeqCimKVO1rQRylrj1PuUZh9Vj/s/OblRyuPK
 rnBIA1Yz9oOPa9Q0RcYv/sHySNIu8ezCjPPGejIREqpSGjrbQtwAHCvQZNARMhAleTpQ
 ozFETkIURt4tUsOp2VLcZ5U57tnKfNPdl3aLy5rRtvL1rVOuGX/2Xgvu7JDdMl1Hs5EW
 Q6ur/S/H8voHFQDIIUwK9QaBkiSTOCobVVe3wnn6QbwiBEOgiZTwhN7GwFA0tSVBEbZP
 8A/w6BUDIQaE6PAPZwS9u6Oewmu/bLaZxNeonIMiLJC5puHbRIf8OrPKMI7/3VOYT4bS
 MHbA==
X-Gm-Message-State: APjAAAWRiVYu8foI/JgRh8Yvr/zMhajH1zeeBGGK6xKUVw50W8LM9a2K
 SPiTE57gwkxQ6P8XbqU4vmI=
X-Google-Smtp-Source: APXvYqwb7kqkYB4bJbTmfa2R2ggNhznLIfWi1+2SWPBX/8mre7n4Sp7dEOjIC8bHGA4RcFkWR4cteA==
X-Received: by 2002:a7b:c416:: with SMTP id k22mr7117238wmi.10.1574616605112; 
 Sun, 24 Nov 2019 09:30:05 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id n13sm5537275wmi.25.2019.11.24.09.30.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Nov 2019 09:30:04 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v9 3/6] pwm: sun4i: Add an optional probe for bus clock
Date: Sun, 24 Nov 2019 18:29:05 +0100
Message-Id: <20191124172908.10804-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191124172908.10804-1-peron.clem@gmail.com>
References: <20191124172908.10804-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_093006_919988_E79BF389 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGNv
cmUgbmVlZHMgYnVzIGNsb2NrIHRvIGJlIGVuYWJsZWQgaW4gb3JkZXIgdG8gd29yay4KCkFkZCBh
biBvcHRpb25hbCBwcm9iZSBmb3IgaXQuCgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8
amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8
cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCAyMyAr
KysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYyBiL2RyaXZlcnMvcHdtL3B3bS1z
dW40aS5jCmluZGV4IDgwMDI2MTY3MDQ0Yi4uYTY3MjdkZDg5ZTI4IDEwMDY0NAotLS0gYS9kcml2
ZXJzL3B3bS9wd20tc3VuNGkuYworKysgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwpAQCAtNzgs
NiArNzgsNyBAQCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgewogCiBzdHJ1Y3Qgc3VuNGlfcHdtX2No
aXAgewogCXN0cnVjdCBwd21fY2hpcCBjaGlwOworCXN0cnVjdCBjbGsgKmJ1c19jbGs7CiAJc3Ry
dWN0IGNsayAqY2xrOwogCXN0cnVjdCByZXNldF9jb250cm9sICpyc3Q7CiAJdm9pZCBfX2lvbWVt
ICpiYXNlOwpAQCAtMzkxLDYgKzM5MiwxNCBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQl9CiAJfQogCisJcHdtLT5idXNfY2xrID0g
ZGV2bV9jbGtfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJidXMiKTsKKwlpZiAoSVNfRVJSKHB3
bS0+YnVzX2NsaykpIHsKKwkJaWYgKFBUUl9FUlIocHdtLT5yc3QpICE9IC1FUFJPQkVfREVGRVIp
CisJCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJnZXQgYnVzIGNsb2NrIGZhaWxlZCAlcGVcbiIsCisJ
CQkJcHdtLT5idXNfY2xrKTsKKwkJcmV0dXJuIFBUUl9FUlIocHdtLT5idXNfY2xrKTsKKwl9CisK
IAlwd20tPnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWxfc2hhcmVkKCZwZGV2
LT5kZXYsIE5VTEwpOwogCWlmIChJU19FUlIocHdtLT5yc3QpKSB7CiAJCWlmIChQVFJfRVJSKHB3
bS0+cnN0KSAhPSAtRVBST0JFX0RFRkVSKQpAQCAtNDA3LDYgKzQxNiwxNyBAQCBzdGF0aWMgaW50
IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlyZXR1cm4g
cmV0OwogCX0KIAorCS8qCisJICogV2UncmUga2VlcGluZyB0aGUgYnVzIGNsb2NrIG9uIGZvciB0
aGUgc2FrZSBvZiBzaW1wbGljaXR5LgorCSAqIEFjdHVhbGx5IGl0IG9ubHkgbmVlZHMgdG8gYmUg
b24gZm9yIGhhcmR3YXJlIHJlZ2lzdGVyIGFjY2Vzc2VzLgorCSAqLworCXJldCA9IGNsa19wcmVw
YXJlX2VuYWJsZShwd20tPmJ1c19jbGspOworCWlmIChyZXQpIHsKKwkJZGV2X2VycigmcGRldi0+
ZGV2LCAiY2Fubm90IHByZXBhcmUgYW5kIGVuYWJsZSBidXNfY2xrICVwZVxuIiwKKwkJCUVSUl9Q
VFIocmV0KSk7CisJCWdvdG8gZXJyX2J1czsKKwl9CisKIAlwd20tPmNoaXAuZGV2ID0gJnBkZXYt
PmRldjsKIAlwd20tPmNoaXAub3BzID0gJnN1bjRpX3B3bV9vcHM7CiAJcHdtLT5jaGlwLmJhc2Ug
PSAtMTsKQEAgLTQyNyw2ICs0NDcsOCBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVybiAwOwogCiBlcnJfcHdtX2FkZDoKKwlj
bGtfZGlzYWJsZV91bnByZXBhcmUocHdtLT5idXNfY2xrKTsKK2Vycl9idXM6CiAJcmVzZXRfY29u
dHJvbF9hc3NlcnQocHdtLT5yc3QpOwogCiAJcmV0dXJuIHJldDsKQEAgLTQ0MSw2ICs0NjMsNyBA
QCBzdGF0aWMgaW50IHN1bjRpX3B3bV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCisJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHB3
bS0+YnVzX2Nsayk7CiAJcmVzZXRfY29udHJvbF9hc3NlcnQocHdtLT5yc3QpOwogCiAJcmV0dXJu
IDA7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
