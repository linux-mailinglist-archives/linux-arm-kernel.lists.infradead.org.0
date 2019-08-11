Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A23F893AE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 22:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0p1NwVf3B6noHNQCMhi3MGBLpVeOekaqU6aYjlYFnc=; b=sXOoGDcQ2VT9Um
	he5XSkOhSyyselREuj9PRc41lmvOrK+FD8p7iGbK4ky1U7a2yEckv3Ez6w6PIj+9FH9IJuSw359Mw
	cvg/yUBmTqypPwjnbXzKmstzfukgbMdd/qEjr/bmTF9P/udlWayvY6Vdo2E0mEq2YNHUhLJs0BnD8
	QHBlrTLBJRiBOHfRpMMOTJokRtaZfZyCHwwRkehKU0M09VGC8ZtOI0fNUTkIgrsLd99d3Sp8xQn8V
	+yq7RAezJPV8Pzr4+MqwJFXqviZHfmW8OEsTO9v/d+7lN+4AC6bB9waqaDO3Ce1A6h26l9r7XeMx4
	m24dsnIMQIXHwVULXbaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwuVh-0002PH-HL; Sun, 11 Aug 2019 20:32:13 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwuVR-0002HD-35
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 20:31:58 +0000
Received: by mail-wm1-x343.google.com with SMTP id g67so10031694wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 13:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VmJANs6ADrzmj7CF2pwPHk66RmEAqBp61/Sj+xq22Nc=;
 b=oXSmSfYFRVvVK9HlfrUEv/VpPMEzztyoEuPkETohNSxYvim/+DIFnl4roDjE4M+Q7C
 pM1GWR5ea4sg3sA5Urj8lLcwC/4wrt9HGUM9wu3ukdZrg9PM/T2AnU7PeL2jS+Yd9qmk
 C+I46kDxvxT9ZLL7aAmVXOUxzzrWfhBZImGF3EwNOobu0O1H+SkMec/i35IXDeDsNDap
 Pvh6xpJS596vjLoSVUpaX8uv7FraOaV6E6zziqDrvOP5vAmWV85V9RYikAjAxVHp+S1J
 a5APp4StEx+4Z8QwY83WduuxACFSqRMP/SDgLT7V8erZRCQRQMBIWiYZQY6s/OeT/YyG
 FfCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VmJANs6ADrzmj7CF2pwPHk66RmEAqBp61/Sj+xq22Nc=;
 b=mzSS567pJUZBoWye5pndwZ17TSNSykBOOfaf6em/zYrtogDANyjXAEeViV3+YV6VKb
 ZhDjz4x6F+09cMiA/qOlTSdJRPSMWIblrq729eXF+o/JbhhQZh+Q5+OhnnC/qqavKvaG
 wuMXL1WW1liRataxIYfE2NlamY8nFxRMs3FduPvHiy0Dbv1OHASPAD0kCzi7CidmOe3O
 36sxIQEdYCnhS73gM1/6X7VaUfntNMw/OJoXtmMEaU4HAdb0PNT/FrFaC3iytGu8z1S4
 UVbewn7m+9IZsIVz7Q9s+OlufkD4b4lZaXtVpp9qRCKC56xvWBkkcz7HoYZwYf3d5EHI
 l7qA==
X-Gm-Message-State: APjAAAWYwiWY+Pi/Nn4PJK/P3wxLsoWd8COfYWfzke9LZ2+IHCkpRZ7U
 1Yc3V3/hmFxd9bcdkutK+28=
X-Google-Smtp-Source: APXvYqz5EW5ZeCJAojOp6CW/ocpmh260LXSUmp5dYTFVkvKIjvNHd65nG3jLSSoKZIhate3Y+4Eksg==
X-Received: by 2002:a1c:9a95:: with SMTP id c143mr10613581wme.2.1565555515436; 
 Sun, 11 Aug 2019 13:31:55 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id a8sm11063269wma.31.2019.08.11.13.31.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 11 Aug 2019 13:31:55 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 1/3] arm64: dts: allwinner: Add SPDIF node for Allwinner H6
Date: Sun, 11 Aug 2019 22:31:42 +0200
Message-Id: <20190811203144.5999-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190811203144.5999-1-peron.clem@gmail.com>
References: <20190811203144.5999-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_133157_130128_A9ACD9FD 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIEFsbHdpbm5lciBINiBoYXMgYSBTUERJRiBjb250cm9sbGVyIGNhbGxlZCBPV0EgKE9uZSBX
aXJlIEF1ZGlvKS4KCk9ubHkgb25lIHBpbm11eGluZyBpcyBhdmFpbGFibGUgc28gc2V0IGl0IGFz
IGRlZmF1bHQuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21h
aWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNp
IHwgMzggKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQppbmRl
eCA3NjI4YTdjODMwOTYuLjY3N2ViMzc0Njc4ZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTgzLDYgKzgzLDI0IEBACiAJCW1ldGhvZCA9ICJz
bWMiOwogCX07CiAKKwlzb3VuZC1zcGRpZiB7CisJCWNvbXBhdGlibGUgPSAic2ltcGxlLWF1ZGlv
LWNhcmQiOworCQlzaW1wbGUtYXVkaW8tY2FyZCxuYW1lID0gInN1bjUwaS1oNi1zcGRpZiI7CisK
KwkJc2ltcGxlLWF1ZGlvLWNhcmQsY3B1IHsKKwkJCXNvdW5kLWRhaSA9IDwmc3BkaWY+OworCQl9
OworCisJCXNpbXBsZS1hdWRpby1jYXJkLGNvZGVjIHsKKwkJCXNvdW5kLWRhaSA9IDwmc3BkaWZf
b3V0PjsKKwkJfTsKKwl9OworCisJc3BkaWZfb3V0OiBzcGRpZi1vdXQgeworCQkjc291bmQtZGFp
LWNlbGxzID0gPDA+OworCQljb21wYXRpYmxlID0gImxpbnV4LHNwZGlmLWRpdCI7CisJfTsKKwog
CXRpbWVyIHsKIAkJY29tcGF0aWJsZSA9ICJhcm0sYXJtdjgtdGltZXIiOwogCQlpbnRlcnJ1cHRz
ID0gPEdJQ19QUEkgMTMKQEAgLTI4Miw2ICszMDAsMTEgQEAKIAkJCQliaWFzLXB1bGwtdXA7CiAJ
CQl9OwogCisJCQlzcGRpZl90eF9waW46IHNwZGlmLXR4LXBpbiB7CisJCQkJcGlucyA9ICJQSDci
OworCQkJCWZ1bmN0aW9uID0gInNwZGlmIjsKKwkJCX07CisKIAkJCXVhcnQwX3BoX3BpbnM6IHVh
cnQwLXBoLXBpbnMgewogCQkJCXBpbnMgPSAiUEgwIiwgIlBIMSI7CiAJCQkJZnVuY3Rpb24gPSAi
dWFydDAiOwpAQCAtNDExLDYgKzQzNCwyMSBAQAogCQkJfTsKIAkJfTsKIAorCQlzcGRpZjogc3Bk
aWZANTA5MzAwMCB7CisJCQkjc291bmQtZGFpLWNlbGxzID0gPDA+OworCQkJY29tcGF0aWJsZSA9
ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXNwZGlmIjsKKwkJCXJlZyA9IDwweDA1MDkzMDAwIDB4NDAw
PjsKKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAyMSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJ
CWNsb2NrcyA9IDwmY2N1IENMS19CVVNfU1BESUY+LCA8JmNjdSBDTEtfU1BESUY+OworCQkJY2xv
Y2stbmFtZXMgPSAiYXBiIiwgInNwZGlmIjsKKwkJCXJlc2V0cyA9IDwmY2N1IFJTVF9CVVNfU1BE
SUY+OworCQkJZG1hcyA9IDwmZG1hIDI+OworCQkJZG1hLW5hbWVzID0gInR4IjsKKwkJCXBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCQlwaW5jdHJsLTAgPSA8JnNwZGlmX3R4X3Bpbj47CisJ
CQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQl9OworCiAJCXVzYjJvdGc6IHVzYkA1MTAwMDAwIHsK
IAkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1tdXNiIiwKIAkJCQkgICAgICJh
bGx3aW5uZXIsc3VuOGktYTMzLW11c2IiOwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
