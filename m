Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BA47D78E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsCy+2rj6hI3jksvkIwNpuRD5wN5hYx7HnsbFpU4T00=; b=Mbq9oK5RrgbPJk
	ddtqbSEwIY/7HrvSBp0tqhlnGEtZNEzAuQiUMrp55strvwhZoejvNJMc3rPn/CnPdZL2MkqmzoIzj
	7QPsG0s/qdwaJPRqN85EZI0QPh8UQb+0AayWfndNVT2jVsR+m2ONxLCvCy5GR9GyAtJwkEdVHgRs8
	nfPU7hK5cpwhd2YnUH/M/QvHqiADg125K6Q9zdX5ocxS4yrJKkOBXbnVzsYpfsP93YqyyIZescXdS
	m5vE81hyHVC+1HypOge+GjvlYPwfpCEPdI2M2NR0A40nXhr1XDXIyVIejNHeDsPkpo4/It5Tqplo/
	nCDRexJ7WO0z96UGBfZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Qc-0003jA-OO; Thu, 01 Aug 2019 08:27:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Kj-0003Ei-38
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:11 +0000
Received: by mail-pf1-x443.google.com with SMTP id r7so33607069pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K9TMbtUgLTyiUr1AVMR6X3v/Vfqpdps5jv4IrzU02gI=;
 b=u2IY36x0captMh4lU1M0wOFOAmston0O2MSPdh8WfOWDhEl6wCe1fHWEB302u0RLea
 ojVO3+6Uw8ngcEcpYwUKq96/4ZNyKwEJSwrmqBpTewb+1cTQJdgIBsGPrIcskcI3D/WE
 5Eg2rHSAqdcoxT2Rx0APBgbNWmChW6h+Ch+VfBXwjDUY8xtjNpJh8eZCmXoMtYQOIAnB
 KDRBkaRJKx2tqjYEejnBltvZKwg1B+mta/JF1UVSfxbYY86SwBJDW+O9haVVpEQ7x9Ou
 qnTAXeFV4PukhvZIY1cb0Nqw3H7EhNmjHszAQmsiggMC3v6tFdCB8MczrpQKPRwPqCdj
 P4SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K9TMbtUgLTyiUr1AVMR6X3v/Vfqpdps5jv4IrzU02gI=;
 b=PTfbAGlheYt0XhjxAeOoqEwS3PoXMMtfZYpah/qZNquEgJ41ewv28A/Y9pI8Kv42Lr
 MjwFuPQ3ByPR6gyJsP56Kui87ON983FE6B6Q0XDFabxQ784JVXFPr8odvj0Jb1DCCi/x
 bljfh3YtehpRBqsQALXIdZTUujQ65aTuttc97JShieNwXA+3FqnkGISE8IwJK94LG2Yj
 fVGV4XinI0l5ydanEty8cThQ135XUKKNrQkI3DFIwKKNS4By9DFCLjwCgjBkysYmYzOE
 iiMPIocTRDyfKlU1gfRRLs+5ctAE1+Mgoy6NSKhTymYPPlggWwvdIkkLLgVAa2MX6U4j
 0W5g==
X-Gm-Message-State: APjAAAUMvDXGVWirglI+k1+RMNDER6SNOzeGFGhu0BA7E+3/cjZ53TOF
 8YsQ3x+rcKwDenOXxjTmukk2kQ==
X-Google-Smtp-Source: APXvYqzf4Da2l4H3VbnCpzaG3Gl/2i8UZm2Ug4a/Qfb/Ei7T9vRFRA4QvB/43nQ/qYdiWxALcg224w==
X-Received: by 2002:a62:e901:: with SMTP id j1mr52916707pfh.189.1564647668335; 
 Thu, 01 Aug 2019 01:21:08 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id y194sm47244254pfg.116.2019.08.01.01.21.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:07 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 36/47] ARM: 8797/1: spectre-v1.1: harden
 __copy_to_user
Date: Thu,  1 Aug 2019 13:46:20 +0530
Message-Id: <d4353075bcd15cf29b4ff5f0d8dada48a4c28ea2.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012109_238650_B121470F 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Julien Thierry <julien.thierry@arm.com>

Commit a1d09e074250fad24f1b993f327b18cc6812eb7a upstream.

Sanitize user pointer given to __copy_to_user, both for standard version
and memcopy version of the user accessor.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/lib/copy_to_user.S        | 6 +++++-
 arch/arm/lib/uaccess_with_memcpy.c | 3 ++-
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib/copy_to_user.S b/arch/arm/lib/copy_to_user.S
index caf5019d8161..970abe521197 100644
--- a/arch/arm/lib/copy_to_user.S
+++ b/arch/arm/lib/copy_to_user.S
@@ -94,6 +94,11 @@
 
 ENTRY(__copy_to_user_std)
 WEAK(arm_copy_to_user)
+#ifdef CONFIG_CPU_SPECTRE
+	get_thread_info r3
+	ldr	r3, [r3, #TI_ADDR_LIMIT]
+	uaccess_mask_range_ptr r0, r2, r3, ip
+#endif
 
 #include "copy_template.S"
 
@@ -108,4 +113,3 @@ ENDPROC(__copy_to_user_std)
 	rsb	r0, r0, r2
 	copy_abort_end
 	.popsection
-
diff --git a/arch/arm/lib/uaccess_with_memcpy.c b/arch/arm/lib/uaccess_with_memcpy.c
index 588bbc288396..0b4fe892d00b 100644
--- a/arch/arm/lib/uaccess_with_memcpy.c
+++ b/arch/arm/lib/uaccess_with_memcpy.c
@@ -153,7 +153,8 @@ arm_copy_to_user(void __user *to, const void *from, unsigned long n)
 		n = __copy_to_user_std(to, from, n);
 		uaccess_restore(ua_flags);
 	} else {
-		n = __copy_to_user_memcpy(to, from, n);
+		n = __copy_to_user_memcpy(uaccess_mask_range_ptr(to, n),
+					  from, n);
 	}
 	return n;
 }
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
