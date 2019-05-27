Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B90452BB21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BC9R5f8935ciQHkhShYBje3CaS0cmE5pE5oSuMr5mQ=; b=CKcgSxHCa7fcYw
	EbJkpI4bBJJnXdXgxoO3o7erjLoObRA2jdpqjr96tNLqAvpDvuXAmFdDBgnPqBGH/bMalWM2eO6Hv
	IhHNW45lvUWFVLAhY+uxusXmiyGxLUYEOqyb2sDDWDCEFuJ93pWy4foQ7tZTs9KuV5VbpqKqC6EfC
	2G4mtZB1VQtV6jhs9T5CJXMIBos9TeUejwM3EIZAZ5HVckR/v24tdHrHY1okR6j5ZXbfNaDSZoPVD
	QnfLwH9fS9xdx7JuNuTsUEd2YqAxYb03x8usZbuM9bSfepWUH4nBqG5kdwgzTXNUQ51OpYD3pOp+a
	fptwO++cW+mdgOeY8QFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVLxb-0003gd-Nl; Mon, 27 May 2019 20:11:07 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVLwp-0002pZ-JI
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:10:23 +0000
Received: by mail-wm1-x342.google.com with SMTP id v22so531733wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k+c7EUbgBQhlzZ37NOreDYMAwd8bxw3irPCzpd3kWrE=;
 b=gbyFYMESgLGOeRm9ME4IdNBI0YZ6YdBSJXE5ykZmP6QQOKtNBykYFL/TeH6nOX4ri/
 Uz0Q3jJQta0zUKjvSyF2lNxeL0X9oSahiY2dNOFQrRyAWqhtMl+izapHKYdsSNiRELAV
 NRL6k9eCnfks+xQfkBtino4GQqq8IPYHSQWWERBX1DhZgaLXYCKHSc9wihGoDfRZ5o+0
 mt99CI2qM/8kEn0y/CqkVoGpOOpqtOj1FbR380vVKTpk83ujGaK/ZkXL1+sHO41PI+En
 vUBzcF1h9fVTLpVAQV9n8/s1U4aSVd92wspN+HW2fS1I5bWGhduT0VVhoCCWB7Zx/HyH
 eT/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k+c7EUbgBQhlzZ37NOreDYMAwd8bxw3irPCzpd3kWrE=;
 b=nCEHlTYBnLFMc3vlrKnAgLm9wJhvtZ8wRKHa+m+FQWrS/jbRXxuuuSTeKkcl6oz2I9
 RtKTrfYgY9+xoUpAPEBcCIbkTEz3PH3ijoly4pkiiAQqWQQ5tjVepvWV0xO0cD4Xg6k/
 s3AGvFz7LEj20gtpUcpo+tITfNCvvkwfgKZD5mBSm8rOivZa4cU+AAwBOlCGSIwrjEwv
 KwSIjoke3VlYB4fu0auRkU8aDCSOHxAqI7NhN9M355utfgitCb7eoWkYlPJvDlkGaUa6
 WA1844B434RqG0pARGJC4lvEy/53FaBMeKmxq272frjNGHdTu9GBTE2IRplepSe3X9wl
 f+Qg==
X-Gm-Message-State: APjAAAWiwM6UhSWP9pkCy5WmOzxhkCe6nQk0WrhMuOSFwLvRp9uLPG4J
 OUacIpQ37ts4pq9lKVDeXIM=
X-Google-Smtp-Source: APXvYqw+dciatO5GNWSimwPwvfx+GkadexGDSVXlmLIezPzMcRKJXzffRGQ5/NfbGb/tBQECadYRQQ==
X-Received: by 2002:a7b:ca43:: with SMTP id m3mr488971wml.45.1558987817783;
 Mon, 27 May 2019 13:10:17 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm308523wmf.48.2019.05.27.13.10.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:10:16 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 4/7] ASoC: sun4i-spdif: Add support for H6 SoC
Date: Mon, 27 May 2019 22:06:24 +0200
Message-Id: <20190527200627.8635-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527200627.8635-1-peron.clem@gmail.com>
References: <20190527200627.8635-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131019_937201_B4F88E5F 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
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
dW40aS1zcGRpZi5jIGIvc291bmQvc29jL3N1bnhpL3N1bjRpLXNwZGlmLmMKaW5kZXggMDQ1ZDBj
YzRiNjJhLi41NGMwOTM0NmQyOTggMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9zdW54aS9zdW40aS1z
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
SV9TUERJRl9UWEZJRk8sCisJLnZhbF9mY3RsX2Z0eCAgID0gU1VONTBJX0g2X1NQRElGX0ZDVExf
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
