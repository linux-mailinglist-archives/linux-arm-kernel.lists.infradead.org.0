Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34102A625
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9tgpPpB71S/FzwtJFU1LR6+FqOvrc4d+BJgCEbwZ5Q=; b=F7hJDQyCZjvPB8
	a5POf9BfCJgBnQmkBj/tM6tUOsNlzyOi9mlHIu668SV9VMsH+H+V6TeqXvNZjnbncTfUn1sDfUSmE
	uaPsSUIx9A8SK+fEJ4VWqwCGyYS2l8MKJafNWxKnN7lYfF5FT9xrk4y2m0weLE+pTnFZ/SfEXMoz6
	iYJ6XmmMmW30olApbMp80FI9oKdg6kDeE/LWM9CjE8A5U/lgf8cW5t2xRIsK4CjcP04f7bjBkGrBs
	x4eeVYYAGf5I1ZKDB3xdFFUG0DYIWjFlNYFzR6y7eR2iORNTaWmmmZKBnRZokRCUhZo+rKsfQCEUA
	/scx2HWjTlH41iR5N5cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUb8e-0001aE-2C; Sat, 25 May 2019 18:11:24 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb6w-0006oD-Lx
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:09:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id u16so9053697wrn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R1TrUBLHizxFWFYnh82Tb6JksFQp4tXKDFJjPZlwuug=;
 b=bztJEtjGVEzLCQKBijd7LY00q29OKEZkESIIv4tobjgRIMG7FxRoCZhUYPHSAugj/F
 8BZKmLYzu1D4pwAaCqaEKHsLbQ6T3TF4Kr0SMWEFuyQrHXCRq+DQPrxS0fgY2jzELadM
 wZl+XsTvjJuTLWqaFodzUjj8zyum8ba9DE3o+YPy9vObFimXnv8JoTObrdj0LaXT/f6p
 wpHhU6h/+GRY8aQSiZhyycH3BErS8heKp+j4uShzgqs/s1/hZK17ijZR1gKdTiwqzX1u
 kBtJsesZH79A4pCweI5oyzyaOTeKE9pXl7u3AcuLDJRvZrgeeEmV19Xobw3zyU1G4RY2
 QzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R1TrUBLHizxFWFYnh82Tb6JksFQp4tXKDFJjPZlwuug=;
 b=p5CmyIQYX+sS5tElGCsZFxuGMwG982NmTD4WVlExqX6k10jSno1W86tFHUlkGiHANt
 pwQzYrO1MBsM/NZxPsyfCVGiuCjEl48VviH1c+4OMWKz58WWrGFWBZRk90Ns6IyErAIb
 QRZrCzAO6392hxxVWq441mzRN+XzpIgi1SoyxHMWb1snvV0Qg8RDc/YpgpM2RwCi1iox
 0Fn35s0UxfOKjcapHQElClXLEKkR/o3osJfRenOcnMyBQO1I/Wk/dC/a8GbKIDzOXbgf
 oXQsU9GLRNSXah8qllmEuZ77CmhdfP3n4ZKoVjMXlvnbpOoJyAotjfWVl3m6jsSfRSud
 4L2A==
X-Gm-Message-State: APjAAAVRd4uksRzOgwZWre5ULysVgCwqHXkctBfG+Rv8o1JQPfj/5fxU
 gnLcwp1ENgZNfDg8a8qw+o4=
X-Google-Smtp-Source: APXvYqzrcZPJ2R6fswQPjolYgQ11yKyySqMZbDMfSQX7hfW1xFyWYxs21JhYCO7IdLiI733HYS4S8A==
X-Received: by 2002:a5d:400b:: with SMTP id n11mr18100396wrp.123.1558807776783; 
 Sat, 25 May 2019 11:09:36 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm5656914wmf.48.2019.05.25.11.09.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:09:36 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 07/10] dt-bindings: media: sunxi-ir: Add H6 compatible
Date: Sat, 25 May 2019 20:09:20 +0200
Message-Id: <20190525180923.6105-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525180923.6105-1-peron.clem@gmail.com>
References: <20190525180923.6105-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_110938_713718_F10D9B27 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlcmUgaXMgc29tZSBtaW5vciBkaWZmZXJlbmNlcyBiZXR3ZWVuIEEzMSBvciBBNjQgYW5kIEg2
IGRyaXZlci4KCkJ1dCBBMzEgSVIgZHJpdmVyIGlzIGNvbXBhdGlibGUgd2l0aCBINi4KClNpZ25l
ZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dCB8IDEgKwog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50eHQKaW5kZXggZGE1YWViYTg0M2Rl
Li5kYzk1OWNlODQ1MjggMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9tZWRpYS9zdW54aS1pci50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dApAQCAtNiw2ICs2LDcgQEAgUmVxdWlyZWQgcHJvcGVy
dGllczoKIAkiYWxsd2lubmVyLHN1bjVpLWExMy1pciIKIAkiYWxsd2lubmVyLHN1bjZpLWEzMS1p
ciIKIAkiYWxsd2lubmVyLHN1bjUwaS1hNjQtaXIiLCAiYWxsd2lubmVyLHN1bjZpLWEzMS1pciIK
KwkiYWxsd2lubmVyLHN1bjUwaS1oNi1pciIsICJhbGx3aW5uZXIsc3VuNmktYTMxLWlyIgogLSBj
bG9ja3MJICAgIDogbGlzdCBvZiBjbG9jayBzcGVjaWZpZXJzLCBjb3JyZXNwb25kaW5nIHRvCiAJ
CSAgICAgIGVudHJpZXMgaW4gY2xvY2stbmFtZXMgcHJvcGVydHk7CiAtIGNsb2NrLW5hbWVzCSAg
ICA6IHNob3VsZCBjb250YWluICJhcGIiIGFuZCAiaXIiIGVudHJpZXM7Ci0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
