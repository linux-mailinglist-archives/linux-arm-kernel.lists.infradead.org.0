Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067B2140DCE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 16:27:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvifCA4WcGMJD1XlLHGZhpY9Y6L7fW+8vif+cwta9dk=; b=GuRZBBMkjWJMvy
	OZ+7Dx+JQftLYCJ3xtaWv9XUSbSlk9+9FZA4xwpGe1MiQ2d6+JNCS2WT44mZKmdIXgHcjVPl4KIDj
	yxSx3wmaYY9PevgrEtLd9u3QVqSyA27GSHSxJro78MncJKyC6bZHZBUZDJp44UZSF//zNYFwK0FIA
	fPyk+Wjoj8jIlQxRu37sF++nXxosUv5mzb33t/5dV6In4weBRXb/t1lQoBVN4Mc6EXYHAEne6YKX5
	WWyQhySheJsqMNm9P2oFoZt0cqu9s4uto21sB2hd1FvuxvaYhMzvYG7gt3859G3Ptj1uOv9BZfbhE
	XMb/hX4qpjO2SuNjsdWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isTWW-0006Xf-NM; Fri, 17 Jan 2020 15:27:00 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isTWL-0006Wj-IW
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 15:26:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qJkC6dW2ZVljeXY7Bkw+krWJcPHn9qUW3kJH5+UG+40=; b=K34xgQDv/NwyKtiaVt80i97YuW
 pxr9wSRLxqGmmt5JYuFj2Bbr0KhWvLC/pic6xbfiKxDe/hyVbXVVPV6syWy+gsr7OUMGlrZ7/gJOX
 KwB5ZUIHGRtEomZADAJtr7d37t4oC8DqdZy67EfidAlhL6zVAAPo8/sXr95AUPY5Jg4E=;
Received: from fw-tnat-cam4.arm.com ([217.140.106.52]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1isTWF-0006mj-Ih; Fri, 17 Jan 2020 15:26:43 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 3A422D02C26; Fri, 17 Jan 2020 15:26:43 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v11 2/2] arm64: Use v8.5-RNG entropy for KASLR seed
Date: Fri, 17 Jan 2020 15:26:42 +0000
Message-Id: <20200117152642.4905-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200117152642.4905-1-broonie@kernel.org>
References: <20200117152642.4905-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_072649_606283_80C6C464 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When seeding KALSR on a system where we have architecture level random
number generation make use of that entropy, mixing it in with the seed
passed by the bootloader. Since this is run very early in init before
feature detection is complete we open code rather than use archrandom.h.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Richard Henderson <richard.henderson@linaro.org>
---
 arch/arm64/kernel/kaslr.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 2a11a962e571..53b8a4ee64ff 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -120,6 +120,17 @@ u64 __init kaslr_early_init(u64 dt_phys)
 		return 0;
 	}
 
+	/*
+	 * Mix in any entropy obtainable architecturally, open coded
+	 * since this runs extremely early.
+	 */
+	if (__early_cpu_has_rndr()) {
+		unsigned long raw;
+
+		if (__arm64_rndr(&raw))
+			seed ^= raw;
+	}
+
 	if (!seed) {
 		kaslr_status = KASLR_DISABLED_NO_SEED;
 		return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
