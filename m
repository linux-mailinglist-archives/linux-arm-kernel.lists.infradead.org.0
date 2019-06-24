Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58793503CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZ8EgZ+x9fdSDf1s+FclzDVWpslk1+/t8Wgh8EnfLXU=; b=AhYEwWaks+IUTb
	DuwgHwClcZvKmJR+58svyQwmZ86WJq97SXj+H7oIOs8Oi3XCv8+m2E5xlf3OlWvtlBo6XglZcCYxi
	eH6zT/r5i+mxgKJ94hT9Vt+Gr7V56V0nhO2DLNOUMZdg/Yd9TAwP1HvTe8r18rmTIVHL2Ym2OSAsb
	qQ9C+Kwa5oJd1D5dUprxRAMkMJ9vCsKkdKiccxQYMDR0wT4mzwfPbFcZz5OGvtK/N6clGjgU5VHKa
	vsdBVS8xeA/EQ2D0yMlPckpuC7G2V4X8iipYfd9518C6ePzJPS/SgWkbnpGUpGzw8eGYt/vw8aGoW
	V+yD96GQ/dk3FlXywnDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJbS-0001pl-Lf; Mon, 24 Jun 2019 07:41:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJYi-0007Hh-OZ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:38:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so12703616wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aJ2frxtItoOdASfDgurNaEGo6zzAMYWog88kS6QDgiQ=;
 b=GuNoLYkQKEU73mu3/7iHpGXtDE+J0Nd0TNcCdU6ENNEMDknqTRlPJkhNiJtN6X8LOk
 UJaYxKKUmwWaaGE0+q4Hy1X4+x28ia8GCF14Fnv5YTOeitJncZab/Lg/AO5KIXUYuw7K
 xQ+JwqjXBnXhPv/L0Ewmc+JpHT/UxLuXuhn4EQdVS2Eyp/TyZWyzvfVrlcd1FM/xKvpd
 SJH/lmMK6E2ngO5gcfqOOlKMOEBQv0Z8KIQyF1IUfGs2ianTBsljWsydcgGn8PDE0ijk
 woY+ekqMzRGdtoFlBhhF6BktgLzmeBS93UsYTqkN7OFvOB3DMv9fdWmUAQjFfQCMFU0h
 g22Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aJ2frxtItoOdASfDgurNaEGo6zzAMYWog88kS6QDgiQ=;
 b=br59+nXbWZHNS140wpDgp4lkZSxSK75ug+SlBB4u+ttV3Y0CIv8lsJG2G5pTkMgezJ
 uZd7KYC967TYi3Q8Uye5GTrnScw98lVeFdtZPY6oNkiPcbSuYdhxhFTkZAwmoaeXzRCY
 SVBdKL6eZDRwIp6HtwSAVpN+YBPFAh8egcEkSULk/yhbKsM8Xfnsq1tcoqLKzvk/VNr5
 psQmbLq3OaWy5YlIWZinESTDYPy8PqVv69w6AT/KbD+aJ/Kti9Y1QtTxFEy3Ld6wIds0
 2ZSq+bfIT3Z7kjjmNV3iF2jvLJWVxEgvtUSQn/U6sJjhak/UCRTjNdAMxw1UbNgq2gQ1
 VckA==
X-Gm-Message-State: APjAAAUMqLU/1wdSlftb6j1KUJj8QogzXR0mc8m4JhGj4aDtx2fhHbzL
 SeFQO8uT0AnOHWY/T3MxscGBCQ==
X-Google-Smtp-Source: APXvYqwTCNM4G7LjMyIADZGbLdD98jvNvZCoT4STmxytYs5x9ZEd9raiToSMzhIk9cfrM5w9PaqhYA==
X-Received: by 2002:a5d:4001:: with SMTP id n1mr92777173wrp.293.1561361915452; 
 Mon, 24 Jun 2019 00:38:35 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:4866:7cdc:a930:8455])
 by smtp.gmail.com with ESMTPSA id 203sm7419280wmc.30.2019.06.24.00.38.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 00:38:34 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 6/6] crypto: tcrypt - add a speed test for AEGIS128
Date: Mon, 24 Jun 2019 09:38:18 +0200
Message-Id: <20190624073818.29296-7-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_003836_948428_9CAB61B0 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Steve Capper <steve.capper@arm.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/tcrypt.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/crypto/tcrypt.c b/crypto/tcrypt.c
index ad78ab5b93cb..c578ccd92c57 100644
--- a/crypto/tcrypt.c
+++ b/crypto/tcrypt.c
@@ -2327,6 +2327,13 @@ static int do_test(const char *alg, u32 type, u32 mask, int m, u32 num_mb)
 				  0, speed_template_32);
 		break;
 
+	case 221:
+		test_aead_speed("aegis128", ENCRYPT, sec,
+				NULL, 0, 16, 8, speed_template_16);
+		test_aead_speed("aegis128", DECRYPT, sec,
+				NULL, 0, 16, 8, speed_template_16);
+		break;
+
 	case 300:
 		if (alg) {
 			test_hash_speed(alg, sec, generic_hash_speed_template);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
