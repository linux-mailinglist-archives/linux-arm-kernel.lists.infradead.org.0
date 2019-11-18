Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61606100180
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:39:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYZaRw9/884mxHr9xjtjJTfgg8UDz1qXg9bAGpFbZtA=; b=lgQxQYv48mYjhZ
	9kPWgreP12r+KCDw6UcYPMhPO+4Cizc7H5Ax95bIf3kzq3hKW1QNXUQKdgsdZ2eOcUlCJaixcT6Qv
	q0wHWEMFzEUhCt+2qbHf8aNkVJ3yyFajhFvju9h1ybJTUDIKL23fMPxhiZCZnrvjVlhHWbMMFWy42
	iiPZPIhQSyThU6pUUW9n4+zloYzIwGLpnxBL8jXkE5+GJw5llrVoTv9SXgymQ/ZKAjvyt1WC8D0kw
	WlaZqTGL77fGRGqw5LYyCY4aMv5Dq1D3nXulVWMbiGuSI/UNZPl75EwdJd0NeWCkQSt0qanbSQTpP
	oLqsQjAKXQHQCKcSeDCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdUs-00055b-Vr; Mon, 18 Nov 2019 09:39:02 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdTf-00047G-Qc
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:37:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id l7so18543641wrp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 01:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HiEB14HdJo07lXE127L0D4zLI4SiB6r7sIlA8IG1R+w=;
 b=P8eEcz0rpMwHCPRfIcNF7thKCA2HcPHqC95B0QFpDk663hyYC/nXYlpRG2l0mANVq8
 vmDXNF3g4M5+cNxIy1taw8q3s9r2d5QAmFcHAjQ7kBNpjqjaUKL7DXIDBUOrLd80TdT2
 C+lAUnZCi5tKfFCNtcrSYboJJDA596WPmEiuF09l1lT5+pCLs2tqAoFfiBjnr9xaEjcp
 8X6hDjMU/t+C/xxdCapOxprOWxjoOK0It7gzOyMEOneDBqTlfCnqFaaCGIeM5OKFPM+M
 GyBstZgzR8aenHjLxpjqmPnubVKgiF1l2f9LaaHUoE+rnucKwLNk2P6tyHyZ+2lPJGdJ
 eEZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HiEB14HdJo07lXE127L0D4zLI4SiB6r7sIlA8IG1R+w=;
 b=BwtXN38fOHzwTdSJ/OWwuUcIOyiB2ySLEPQHO0RkD8JodXmpFStFkAG+0LPT60HYcQ
 bzbIKIkbdOquoSwxzi5mWbGZ540Bb+rwCpeHIF/AhLTHxvwPFmzTAPKxk36tZVRQItu8
 Wk2Fb4XZrnf5oIXUE6mJmWcpK/kKfYoGVenW09r+3ySZHgV1BAgzMJft4HVsLg8i3gAJ
 sqx02m+Y5w/QcDXZRcCuHOmpXLL4ctsGRnvwnFMpQOzc5AnCnXAuw1nMA2Ta0onMe2xD
 ANe5TyJGv08gP9hD2DJV1GVZcz1ageA84CMZZd2QudJL3idPiQa70+T3NlvCimn4tTZ3
 0+ZA==
X-Gm-Message-State: APjAAAWhWsIAXu7Kr922LTmvHvIhG/R7FfYlXLrRREZDPQhsdOflnOGF
 PiuPFEU2vrp93bciWJhFC7Q=
X-Google-Smtp-Source: APXvYqwTngUkIiY9ZbT6/ObAG2RnFts4cd7nnJ9PwnrchZyQajMB6mNe0CMJioRCBqdlAR8I5rEy9g==
X-Received: by 2002:adf:db4b:: with SMTP id f11mr1434099wrj.239.1574069866054; 
 Mon, 18 Nov 2019 01:37:46 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id w10sm19006687wmd.26.2019.11.18.01.37.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 01:37:45 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v5 4/8] pwm: sun4i: Add an optional probe for bus clock
Date: Mon, 18 Nov 2019 10:37:23 +0100
Message-Id: <20191118093727.21899-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118093727.21899-1-peron.clem@gmail.com>
References: <20191118093727.21899-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_013747_889398_AC10A38B 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGNv
cmUgbmVlZHMgYnVzIGNsb2NrIHRvIGJlIGVuYWJsZWQgaW4gb3JkZXIgdG8gd29yay4KCkFkZCBh
biBvcHRpb25hbCBwcm9iZSBmb3IgaXQgYW5kIGEgZmFsbGJhY2sgZm9yIHByZXZpb3VzCmJpbmRp
bmdzIHdpdGhvdXQgbmFtZSBvbiBtb2R1bGUgY2xvY2suCgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWog
U2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50
IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9wd20vcHdtLXN1bjRp
LmMgfCAyMiArKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jIGIvZHJpdmVycy9w
d20vcHdtLXN1bjRpLmMKaW5kZXggYmJiMWVkMTk0YzBlLi45M2Y0ZDQ0ZTlmYTggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5j
CkBAIC03OCw2ICs3OCw3IEBAIHN0cnVjdCBzdW40aV9wd21fZGF0YSB7CiAKIHN0cnVjdCBzdW40
aV9wd21fY2hpcCB7CiAJc3RydWN0IHB3bV9jaGlwIGNoaXA7CisJc3RydWN0IGNsayAqYnVzX2Ns
azsKIAlzdHJ1Y3QgY2xrICpjbGs7CiAJc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdDsKIAl2b2lk
IF9faW9tZW0gKmJhc2U7CkBAIC0zOTEsNiArMzkyLDE0IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdt
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCX0KIAl9CiAKKwlwd20tPmJ1
c19jbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwoJnBkZXYtPmRldiwgImJ1cyIpOworCWlmIChJ
U19FUlIocHdtLT5idXNfY2xrKSkgeworCQlpZiAoUFRSX0VSUihwd20tPnJzdCkgIT0gLUVQUk9C
RV9ERUZFUikKKwkJCWRldl9lcnIoJnBkZXYtPmRldiwgImdldCBidXNfY2xvY2sgZmFpbGVkICVw
ZVxuIiwKKwkJCQlwd20tPmJ1c19jbGspOworCQlyZXR1cm4gUFRSX0VSUihwd20tPmJ1c19jbGsp
OworCX0KKwogCXB3bS0+cnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25hbF9zaGFy
ZWQoJnBkZXYtPmRldiwgTlVMTCk7CiAJaWYgKElTX0VSUihwd20tPnJzdCkpIHsKIAkJaWYgKFBU
Ul9FUlIocHdtLT5yc3QpICE9IC1FUFJPQkVfREVGRVIpCkBAIC00MDYsNiArNDE1LDE2IEBAIHN0
YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
CXJldHVybiByZXQ7CiAJfQogCisJLyoKKwkgKiBXZSdyZSBrZWVwaW5nIHRoZSBidXMgY2xvY2sg
b24gZm9yIHRoZSBzYWtlIG9mIHNpbXBsaWNpdHkuCisJICogQWN0dWFsbHkgaXQgb25seSBuZWVk
cyB0byBiZSBvbiBmb3IgaGFyZHdhcmUgcmVnaXN0ZXIgYWNjZXNzZXMuCisJICovCisJcmV0ID0g
Y2xrX3ByZXBhcmVfZW5hYmxlKHB3bS0+YnVzX2Nsayk7CisJaWYgKHJldCkgeworCQlkZXZfZXJy
KCZwZGV2LT5kZXYsICJDYW5ub3QgcHJlcGFyZSBhbmQgZW5hYmxlIGJ1c19jbGtcbiIpOworCQln
b3RvIGVycl9idXM7CisJfQorCiAJcHdtLT5jaGlwLmRldiA9ICZwZGV2LT5kZXY7CiAJcHdtLT5j
aGlwLm9wcyA9ICZzdW40aV9wd21fb3BzOwogCXB3bS0+Y2hpcC5iYXNlID0gLTE7CkBAIC00MjYs
NiArNDQ1LDggQEAgc3RhdGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKIAlyZXR1cm4gMDsKIAogZXJyX3B3bV9hZGQ6CisJY2xrX2Rpc2FibGVfdW5w
cmVwYXJlKHB3bS0+YnVzX2Nsayk7CitlcnJfYnVzOgogCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KHB3
bS0+cnN0KTsKIAogCXJldHVybiByZXQ7CkBAIC00NDAsNiArNDYxLDcgQEAgc3RhdGljIGludCBz
dW40aV9wd21fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKHJldCkK
IAkJcmV0dXJuIHJldDsKIAorCWNsa19kaXNhYmxlX3VucHJlcGFyZShwd20tPmJ1c19jbGspOwog
CXJlc2V0X2NvbnRyb2xfYXNzZXJ0KHB3bS0+cnN0KTsKIAogCXJldHVybiAwOwotLSAKMi4yMC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
