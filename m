Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5426A2BB4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5irJEbwgj6DrIl7NUc6KksbLXxvY06JCSrL7v+6Dxpw=; b=mn5vglRMEoJS1A
	L1aCZCd8cml2v57oYujUr3G9J4YRjy+u30FBVQvS3w7DXaKJyetTB2MT3mKgNrtG0MLsHOFqLlOKv
	2Cxw7JKXch3pVG99JsrhxRXnnn8uUJTm1IN0U3kbT2I/Mc/I2NcFfnzqTuK112sX12DE/Z+4h6x1x
	MIOM0sIOB/0Blu4v8nxOC4ij9KGvXXxB8UCXbMQta1fTrsNWcTW161EA/tu6p46K2GD7m98KTBXFH
	aX7ug96lquMeOyrGlaTHeQ9vyVG6CiROqgHyPXwvjDaJxbxXi4ZP31sG4U//E/FszMxWvDMJIzYYT
	UekwLn1V5GIad2l9ri7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVM20-0006p4-KT; Mon, 27 May 2019 20:15:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM1V-00068H-AB
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:15:11 +0000
Received: by mail-wm1-x344.google.com with SMTP id 7so542413wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pQgSnfiOxm9+C2oUtvzxOg9ar7+568ZBuQBswlwkWls=;
 b=UB67cg6dM2MYwdlgtwUEZNRNdFd0VssZcedutE7UD7ABLUFax7Of1ifqS7Ip1Sks/0
 4syjuOAkx+BkGoh/P/1Y2IRqsjUecVbrl/T5WjVeOlPvTMrY5UjNwGc8QbJI0GXWCc6I
 eJPL8VCWLxJ/pKipq87k0fdwYEzHhGXgXjZBkvCuNw/6I062OIW1qeqq9tPXzKnqHjIu
 EAJ/rPKqCUrDE1FxBTIAGzrGjZspnA6PLewZCTT6avIqAdo/uSAF+osYqnc5L66PKYif
 K4MbE1EPFCh+8lQXLL7HTq6adUYOUHh09YBcW7oxNgjEoBXygmxoS0EmER64vHFLgINx
 IlEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pQgSnfiOxm9+C2oUtvzxOg9ar7+568ZBuQBswlwkWls=;
 b=h2RgDD0z3DJt25fd4ZmprV4f4C9zsWdZ5gaJCuqhhnTqLt3oD/km/xg8tLMWEysqH1
 qNJC0X8qqkJkItK3stwnZrQbIxMPq7Hj2In8Cq4V5tDdJWC3DvUjdzTYOivKweJwbtH4
 f0HP09NQcJsBg7VD5og4Bdf0db+XdOjqK8Qo7gsdYdoUuSXlVZGcqzoGSD2CzocRtH8C
 xovdtGZNnAlSrqFEkvpo4FIdyDpynB9a/U7F2T3jEqY/IN/L1wjfWHPKTGtd4X0snK6O
 k6ntGUb1Wj0TDlfwEX0yGd57z/lKBN6Ij/tt6DyFQl9oiL+Nep9+QbsWCv6Yd7CFGbC2
 5oIg==
X-Gm-Message-State: APjAAAVbtsWaUFYSSxmKuJjj/fVzLzS4MEcrRvQSgtS66By+7yu+koxZ
 avu3M+vPxvdDQYDab2NbChA=
X-Google-Smtp-Source: APXvYqwzoDGTbBLXVJJLJz1FkLrv/MispS3RxPXrKHrKQ6B5jtJQcZJY6Suy9gAU9yI3a7QJbJypIA==
X-Received: by 2002:a1c:2889:: with SMTP id o131mr498095wmo.101.1558988107636; 
 Mon, 27 May 2019 13:15:07 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id i27sm347146wmb.16.2019.05.27.13.15.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:15:06 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v3 2/7] dmaengine: sun6i: Add a quirk for additional mbus clock
Date: Mon, 27 May 2019 22:14:54 +0200
Message-Id: <20190527201459.20130-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527201459.20130-1-peron.clem@gmail.com>
References: <20190527201459.20130-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131509_366658_3DD0ED3C 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgRE1BIGNv
bnRyb2xsZXIgbmVlZHMgYWRkaXRpb25hbCBtYnVzIGNsb2NrIHRvIGJlIGVuYWJsZWQuCgpBZGQg
YSBxdWlyayBmb3IgaXQgYW5kIGhhbmRsZSBpdCBhY2NvcmRpbmdseS4KClNpZ25lZC1vZmYtYnk6
IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KU2lnbmVkLW9mZi1ieTog
Q2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS9z
dW42aS1kbWEuYyB8IDIzICsrKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwg
MjIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
L3N1bjZpLWRtYS5jIGIvZHJpdmVycy9kbWEvc3VuNmktZG1hLmMKaW5kZXggMGNkMTNmMTdmYzEx
Li43ZDk2MDY5OTcyNTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hL3N1bjZpLWRtYS5jCisrKyBi
L2RyaXZlcnMvZG1hL3N1bjZpLWRtYS5jCkBAIC0xMjksNiArMTI5LDcgQEAgc3RydWN0IHN1bjZp
X2RtYV9jb25maWcgewogCXUzMiBkc3RfYnVyc3RfbGVuZ3RoczsKIAl1MzIgc3JjX2FkZHJfd2lk
dGhzOwogCXUzMiBkc3RfYWRkcl93aWR0aHM7CisJYm9vbCBoYXNfbWJ1c19jbGs7CiB9OwogCiAv
KgpAQCAtMTgyLDYgKzE4Myw3IEBAIHN0cnVjdCBzdW42aV9kbWFfZGV2IHsKIAlzdHJ1Y3QgZG1h
X2RldmljZQlzbGF2ZTsKIAl2b2lkIF9faW9tZW0JCSpiYXNlOwogCXN0cnVjdCBjbGsJCSpjbGs7
CisJc3RydWN0IGNsawkJKmNsa19tYnVzOwogCWludAkJCWlycTsKIAlzcGlubG9ja190CQlsb2Nr
OwogCXN0cnVjdCByZXNldF9jb250cm9sCSpyc3RjOwpAQCAtMTIwOCw2ICsxMjEwLDE0IEBAIHN0
YXRpYyBpbnQgc3VuNmlfZG1hX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
CXJldHVybiBQVFJfRVJSKHNkYy0+Y2xrKTsKIAl9CiAKKwlpZiAoc2RjLT5jZmctPmhhc19tYnVz
X2NsaykgeworCQlzZGMtPmNsa19tYnVzID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsICJtYnVz
Iik7CisJCWlmIChJU19FUlIoc2RjLT5jbGtfbWJ1cykpIHsKKwkJCWRldl9lcnIoJnBkZXYtPmRl
diwgIk5vIG1idXMgY2xvY2sgc3BlY2lmaWVkXG4iKTsKKwkJCXJldHVybiBQVFJfRVJSKHNkYy0+
Y2xrX21idXMpOworCQl9CisJfQorCiAJc2RjLT5yc3RjID0gZGV2bV9yZXNldF9jb250cm9sX2dl
dCgmcGRldi0+ZGV2LCBOVUxMKTsKIAlpZiAoSVNfRVJSKHNkYy0+cnN0YykpIHsKIAkJZGV2X2Vy
cigmcGRldi0+ZGV2LCAiTm8gcmVzZXQgY29udHJvbGxlciBzcGVjaWZpZWRcbiIpOwpAQCAtMTMx
MiwxMSArMTMyMiwxOSBAQCBzdGF0aWMgaW50IHN1bjZpX2RtYV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCQlnb3RvIGVycl9yZXNldF9hc3NlcnQ7CiAJfQogCisJaWYgKHNk
Yy0+Y2ZnLT5oYXNfbWJ1c19jbGspIHsKKwkJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHNkYy0+
Y2xrX21idXMpOworCQlpZiAocmV0KSB7CisJCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJDb3VsZG4n
dCBlbmFibGUgbWJ1cyBjbG9ja1xuIik7CisJCQlnb3RvIGVycl9jbGtfZGlzYWJsZTsKKwkJfQor
CX0KKwogCXJldCA9IGRldm1fcmVxdWVzdF9pcnEoJnBkZXYtPmRldiwgc2RjLT5pcnEsIHN1bjZp
X2RtYV9pbnRlcnJ1cHQsIDAsCiAJCQkgICAgICAgZGV2X25hbWUoJnBkZXYtPmRldiksIHNkYyk7
CiAJaWYgKHJldCkgewogCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJDYW5ub3QgcmVxdWVzdCBJUlFc
biIpOwotCQlnb3RvIGVycl9jbGtfZGlzYWJsZTsKKwkJZ290byBlcnJfbWJ1c19jbGtfZGlzYWJs
ZTsKIAl9CiAKIAlyZXQgPSBkbWFfYXN5bmNfZGV2aWNlX3JlZ2lzdGVyKCZzZGMtPnNsYXZlKTsK
QEAgLTEzNDEsNiArMTM1OSw4IEBAIHN0YXRpYyBpbnQgc3VuNmlfZG1hX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJZG1hX2FzeW5jX2RldmljZV91bnJlZ2lzdGVyKCZzZGMt
PnNsYXZlKTsKIGVycl9pcnFfZGlzYWJsZToKIAlzdW42aV9raWxsX3Rhc2tsZXQoc2RjKTsKK2Vy
cl9tYnVzX2Nsa19kaXNhYmxlOgorCWNsa19kaXNhYmxlX3VucHJlcGFyZShzZGMtPmNsa19tYnVz
KTsKIGVycl9jbGtfZGlzYWJsZToKIAljbGtfZGlzYWJsZV91bnByZXBhcmUoc2RjLT5jbGspOwog
ZXJyX3Jlc2V0X2Fzc2VydDoKQEAgLTEzNTksNiArMTM3OSw3IEBAIHN0YXRpYyBpbnQgc3VuNmlf
ZG1hX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiAJc3VuNmlfa2lsbF90
YXNrbGV0KHNkYyk7CiAKKwljbGtfZGlzYWJsZV91bnByZXBhcmUoc2RjLT5jbGtfbWJ1cyk7CiAJ
Y2xrX2Rpc2FibGVfdW5wcmVwYXJlKHNkYy0+Y2xrKTsKIAlyZXNldF9jb250cm9sX2Fzc2VydChz
ZGMtPnJzdGMpOwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
