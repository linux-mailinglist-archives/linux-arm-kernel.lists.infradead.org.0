Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BD12A544
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQbzqnG6Sbj/Sb5NV0YPAXuJSj9/a4Vs4udWdpDMs+4=; b=az2cfi7OJBuCtL
	dkbEBt3eTYmrigc7tNgCb6dMkD4NZn51+5eqQ5pgYI9zrjvudokjddtiT5OhY1OLvaq6pkWWYseXN
	0xpmj3rONMSoMX/uiuTWsY2HCifvk+hb8aWxDmKzqmxbTeDtFmG29TZC9icauB0L9RKG+UmnZkdhd
	vtr4/arMKkHPhIB3vovdLcIlwfKIP+rvAo+YVTCoYhDdqNd5Aj587PXwcT0Kf+nyPyXyLlMyixYyU
	lagc3x8uwTeBbwFMzkcsp9HC1ny5FxLbSEwKIxc9S6X9I4FZjPXlWb4/0rbdFB5NMs1J2f4HbTSHq
	W3YYAgLgLRRfnW3JT52g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZT9-0006o4-58; Sat, 25 May 2019 16:24:27 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZSL-0005uY-Hb
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:23:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id m3so12812445wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5uUaYKFKqVciIG3lVseFyzbyz6GKlPhTPtvbtba51oA=;
 b=bHLkAWb9RfaNiXMj3sBfSi6dpURjsbFlzSAaDE8K334xT29EiBpmbLYA0Gk6IdaNIb
 2mZY4BDMqGmHswFGwX20J00imoNKgA8vT1DSgaJR437fnNk6ylUGk6Zm7+Yp2ih11lDm
 vbHzXF7kJFN6bEXymy0y1E3n/OU+uW9HJTHTFeahfVhQeYY5QVo4o9+M6yY0n71WdKfV
 b9BtKnuVccwPam5ipRCVE7iP0vV8f/cOEGMjjNVIOH5/FckfXzpBxNcPKNV/MBHWOs6K
 ZBxdukjjSbTsNYLW5IDaUvM1BDTjNL8l9/QPT3cg8xtaUpQxOPG7zjKdk7GIeW6Mf7hj
 /FPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5uUaYKFKqVciIG3lVseFyzbyz6GKlPhTPtvbtba51oA=;
 b=fursKaT3JnKCw1xVrJmbU4d+vjcFfQxTAcHwWN8cLmXdV+j4OBKIMvkqf6JA+apJsL
 ygqtQKpliJnWl+LhyJmfriexN1BQDvosp6Cw2yLH6WbI+Ydudkjzn7NmQPx2kCkcOF1i
 PhqF0dKHBQ0u18EJ69k7v+FUKYgVFPAKQxMR3Fzf/bKns+2dhIy3IymIiaUxowrYaNBO
 TL+/ECJcWEMum7acuI3FjKvl5zpya+Lhv3fqew1UcIQ6UnsznCTSTVYwZFv1FunlM+Th
 aO2f1mrEuym8XJ9feDqyqcQNNIFA8f9YyVuRiGlEnQknB6pBtG5jwlwZxwpWy+7HiDV1
 szAg==
X-Gm-Message-State: APjAAAU6+Vd9ENixJCQUwgQ1/0/cvP+ZYps9bqwb6/C5xuib4eewChnE
 H77mXrQ+AHvDexYJP/OVYF4=
X-Google-Smtp-Source: APXvYqwkPqO3mn4ga/iil/wlxyKMkJ5pDpNfzOJHHLu+QPgmwmExfzMvPXSHTN8LXOo1cqiuCvs5UA==
X-Received: by 2002:a05:6000:1c6:: with SMTP id
 t6mr18063975wrx.236.1558801415765; 
 Sat, 25 May 2019 09:23:35 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id k184sm13194409wmk.0.2019.05.25.09.23.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 09:23:35 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 4/7] ASoC: sun4i-spdif: Add support for H6 SoC
Date: Sat, 25 May 2019 18:23:20 +0200
Message-Id: <20190525162323.20216-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525162323.20216-1-peron.clem@gmail.com>
References: <20190525162323.20216-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_092337_799053_DE3C1A30 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IGhhcyBhIGRpZmZlcmVudCBtYXBwaW5nIGZvciB0aGUgZmlmbyByZWdpc3Rl
ciBjb250cm9sbGVyLgoKQWN0dWFsbHkgb25seSB0aGUgZmlmbyBUWCBiaXQgaXMgdXNlZCBpbiB0
aGUgZHJpdmVycy4KClVzZSB0aGUgZnJlc2hseSBpbnRyb2R1Y2VkIHF1aXJrcyB0byBtYWtlIHRo
aXMgZHJpdmVycyBjb21wYXRpYmxlIHdpdGgKdGhlIEFsbHdpbm5lciBINi4KClNpZ25lZC1vZmYt
Ynk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogc291bmQvc29j
L3N1bnhpL3N1bjRpLXNwZGlmLmMgfCAyMiArKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NvdW5kL3NvYy9zdW54aS9z
dW40aS1zcGRpZi5jIGIvc291bmQvc29jL3N1bnhpL3N1bjRpLXNwZGlmLmMKaW5kZXggODMxN2Ji
ZWUwNzEyLi44NmJmNmE5OTcwM2YgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9zdW54aS9zdW40aS1z
cGRpZi5jCisrKyBiL3NvdW5kL3NvYy9zdW54aS9zdW40aS1zcGRpZi5jCkBAIC03NSw2ICs3NSwx
OCBAQAogCSNkZWZpbmUgU1VONElfU1BESUZfRkNUTF9SWE9NKHYpCQkoKHYpIDw8IDApCiAJI2Rl
ZmluZSBTVU40SV9TUERJRl9GQ1RMX1JYT01fTUFTSwkJR0VOTUFTSygxLCAwKQogCisjZGVmaW5l
IFNVTjUwSV9INl9TUERJRl9GQ1RMICgweDE0KQorCSNkZWZpbmUgU1VONTBJX0g2X1NQRElGX0ZD
VExfSFVCX0VOCQlCSVQoMzEpCisJI2RlZmluZSBTVU41MElfSDZfU1BESUZfRkNUTF9GVFgJCUJJ
VCgzMCkKKwkjZGVmaW5lIFNVTjUwSV9INl9TUERJRl9GQ1RMX0ZSWAkJQklUKDI5KQorCSNkZWZp
bmUgU1VONTBJX0g2X1NQRElGX0ZDVExfVFhUTCh2KQkJKCh2KSA8PCAxMikKKwkjZGVmaW5lIFNV
TjUwSV9INl9TUERJRl9GQ1RMX1RYVExfTUFTSwkJR0VOTUFTSygxOSwgMTIpCisJI2RlZmluZSBT
VU41MElfSDZfU1BESUZfRkNUTF9SWFRMKHYpCQkoKHYpIDw8IDQpCisJI2RlZmluZSBTVU41MElf
SDZfU1BESUZfRkNUTF9SWFRMX01BU0sJCUdFTk1BU0soMTAsIDQpCisJI2RlZmluZSBTVU41MElf
SDZfU1BESUZfRkNUTF9UWElNCQlCSVQoMikKKwkjZGVmaW5lIFNVTjUwSV9INl9TUERJRl9GQ1RM
X1JYT00odikJCSgodikgPDwgMCkKKwkjZGVmaW5lIFNVTjUwSV9INl9TUERJRl9GQ1RMX1JYT01f
TUFTSwkJR0VOTUFTSygxLCAwKQorCiAjZGVmaW5lIFNVTjRJX1NQRElGX0ZTVEEJKDB4MTgpCiAJ
I2RlZmluZSBTVU40SV9TUERJRl9GU1RBX1RYRQkJCUJJVCgxNCkKIAkjZGVmaW5lIFNVTjRJX1NQ
RElGX0ZTVEFfVFhFQ05UU0hUCQkoOCkKQEAgLTQzOCw2ICs0NTAsMTIgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBzdW40aV9zcGRpZl9xdWlya3Mgc3VuOGlfaDNfc3BkaWZfcXVpcmtzID0gewogCS5o
YXNfcmVzZXQJPSB0cnVlLAogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40aV9zcGRpZl9x
dWlya3Mgc3VuNTBpX2g2X3NwZGlmX3F1aXJrcyA9IHsKKwkucmVnX2RhY190eGRhdGEgPSBTVU44
SV9TUERJRl9UWEZJRk8sCisJLnJlZ19mY3RsX2Z0eCAgID0gU1VONTBJX0g2X1NQRElGX0ZDVExf
RlRYLAorCS5oYXNfcmVzZXQgICAgICA9IHRydWUsCit9OworCiBzdGF0aWMgY29uc3Qgc3RydWN0
IG9mX2RldmljZV9pZCBzdW40aV9zcGRpZl9vZl9tYXRjaFtdID0gewogCXsKIAkJLmNvbXBhdGli
bGUgPSAiYWxsd2lubmVyLHN1bjRpLWExMC1zcGRpZiIsCkBAIC00NTEsNiArNDY5LDEwIEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHN1bjRpX3NwZGlmX29mX21hdGNoW10gPSB7
CiAJCS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1oMy1zcGRpZiIsCiAJCS5kYXRhID0g
JnN1bjhpX2gzX3NwZGlmX3F1aXJrcywKIAl9LAorCXsKKwkJLmNvbXBhdGlibGUgPSAiYWxsd2lu
bmVyLHN1bjUwaS1oNi1zcGRpZiIsCisJCS5kYXRhID0gJnN1bjUwaV9oNl9zcGRpZl9xdWlya3Ms
CisJfSwKIAl7IC8qIHNlbnRpbmVsICovIH0KIH07CiBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBz
dW40aV9zcGRpZl9vZl9tYXRjaCk7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
