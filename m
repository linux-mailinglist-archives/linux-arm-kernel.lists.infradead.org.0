Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E11D19EA95
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 12:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgT7skpmS0+qK3UF2DYuAWHtAqwU0lkdmw4dCNzv6Eg=; b=NudLAFkNXI+P/L
	J94KaTbCEzqR99QJBNTZt9d8Yjzdq6FUo3tDqaI/VhG25MVvNkoZW4EbpxZGQb7EWS870aWP5eTOv
	qk9OW2X3bMdUFQOHzE9f9AeBeQlDh8kpqeEbdw+RbOXM+14motZ4a4SYtQhzYpjO3o/SBYg56i6K6
	zJOq1IsMDlyTxwhuAbqooj2puvQsh8XcRNRPpREYsfT+InrLxhovgrH1euwMzr2rWeuAouN0+segU
	1+qb/MVYCTHHJMo0+vL3QDNkmBe0PEh/KLi0tuyip/EIMQjD2kdmIcHrmlxdrx0pIaLpnG08fCs/D
	hNOg2d+Wrdg/9CYA5WRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL2rB-0005nZ-H6; Sun, 05 Apr 2020 10:50:25 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL2q9-00051K-3j
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 10:49:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id a81so12618025wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 03:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PlVxpMo3N8K7wg75iggPuxNbQ7akl7aPxo796TvewWU=;
 b=ptusWilBR0UMywqaFMTzUaLupeLJwjXw4MZ/RAe4QkPfPnyGKOUW5OVQ2EDb+LPiUa
 xtcCrPUAChJe2Q20e28jKt3qMRGfEjPniioDDt3ThduS5EmZ0rZrFLK0KtFQoJxCVwmF
 /qzwkKpKUwg9XuUi5HwJ3+EVEugPXK+F8HFZAVfIITBY/+gHf3ayMK3m6zkQTiwFbyfr
 PU+SYre5EFhvIjh8w3gJwhoHGCGn+5DznxVXfTyMM8DZ9mh9cqLTlC5kws8ZqWKpXBoU
 ZWQ288Ji2RvH30uJmywF+c/FEJSZtPz9guLSQY7ikKVC0iPMihparMUFQQSXgO3Yslzg
 9Avg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PlVxpMo3N8K7wg75iggPuxNbQ7akl7aPxo796TvewWU=;
 b=EvU8Fj6C+CqastrATSINNrmgwgq1fVWxHVwM3a0ZZlNftTL2wSCuP8tQjw5B0NcciS
 tYiI3xHBQf4h+x8pqt+y17lMml+MtRTgUJLr1KrpEU0gF9bvO1OfzyXBPo/CKCBJTbdC
 V9tC2Raq1pvfiA0HLjJLPBVBrbmhYFeRLPR/E2sqFDmgE4gTJYOfs4J7puq5j6kxQQmv
 /ejKPElTb5svqRtXbBBpaf/NL3q3gA1peSfkuDyr5OmvV7u7urXidQS40mx8+pGvXr2z
 YmhL4zEknhAU8v+rGqeBduAyaaTQ2lX/PoD6VCfcNwln0G34A7QCSZDQ+IXjq2YzMlpb
 y0nA==
X-Gm-Message-State: AGi0Pub/X2cUUt/tnxYyKtoOsUUqOg6bC86+V7FcLXY0r1zlpgKtFxQO
 00j0XvepavPZJZ4mzEbIanY=
X-Google-Smtp-Source: APiQypKOcJ97wwE4UtOnmuAVjQvnUJ4R+GsdW7s2pCGH0nZt+rhOuVsOiqSQ/cf8nJqCNs12RNJa8A==
X-Received: by 2002:a1c:b743:: with SMTP id h64mr17307450wmf.88.1586083759594; 
 Sun, 05 Apr 2020 03:49:19 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id u13sm21606411wru.88.2020.04.05.03.49.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 03:49:18 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 3/7] arm64: dts: allwinner: h6: set thermal polling time
Date: Sun,  5 Apr 2020 12:49:09 +0200
Message-Id: <20200405104913.22806-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405104913.22806-1-peron.clem@gmail.com>
References: <20200405104913.22806-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_034921_152996_D9AFE0A1 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHJlYXNvbmFibGUgdGhlcm1hbCBwb2xsaW5nIHRpbWUgZm9yIEFsbHdpbm5lciBINi4KClNp
Z25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQog
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCA4ICsrKystLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKaW5kZXggZDRkMzk2Mzcw
NWY1Li5jM2U0ZjA5ZjYwY2UgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1oNi5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi5kdHNpCkBAIC05MDUsOCArOTA1LDggQEAKIAogCXRoZXJtYWwtem9uZXMgewogCQlj
cHUtdGhlcm1hbCB7Ci0JCQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MD47Ci0JCQlwb2xsaW5n
LWRlbGF5ID0gPDA+OworCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDEwMD47CisJCQlwb2xs
aW5nLWRlbGF5ID0gPDEwMDA+OwogCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0aHMgMD47CiAKIAkJ
CXRyaXBzIHsKQEAgLTkzNSw4ICs5MzUsOCBAQAogCQl9OwogCiAJCWdwdS10aGVybWFsIHsKLQkJ
CXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwwPjsKLQkJCXBvbGxpbmctZGVsYXkgPSA8MD47CisJ
CQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MTAwPjsKKwkJCXBvbGxpbmctZGVsYXkgPSA8MTAw
MD47CiAJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRocyAxPjsKIAkJfTsKIAl9OwotLSAKMi4yMC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
