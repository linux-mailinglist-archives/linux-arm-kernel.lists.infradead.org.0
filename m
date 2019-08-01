Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BE47D772
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJyVqD7k+H+Khzgr4zQbVlfJoS6jpdyAQbOhHnQKnWU=; b=r2M99ncizPKKUV
	eVz0FTVSgKjzxlUMa0B1eHlkgMDaIFmtd2O2Jx1/oRO/TtDxqIEynex9OzyyICU1MWxNUPLIur2wE
	+n/jtp+SdzIR2B8XjeA9iwZ9I27hnABKYjnweEKlgZkacJJPdDNIEkukRj7L9eArxrFw1lDYy5yrH
	t05LAy6fh3ewoObkfcq8SeB/17Wm/5Xr1AIY/sZh8xumSLuyagW2WEx5988MzZHQiiKkMA42AaRgW
	UHwSr1G6PNnzTZ9E+esNF6CBMTa9HD+hLJgkufwtwJocbbpwE1eEqTnd6rr9hbgyGkRS53DYxynfu
	2Odnkvg2+k4VXoPuAEEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6NB-0006ak-IQ; Thu, 01 Aug 2019 08:23:41 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6K5-0002JU-2Y
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so31875777plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ws1lkPqBsn87EY7GxNn+AzRrtY/P0vuzwO4T5yjsQK0=;
 b=vibnYP12Yj8WtQhINzxmLEByeOMlswC0F2GsMI8dE21QSoRhhqbMo+P7AxcGVojRUA
 /hT+AkEZH0AS115dCqaaXUuSv0k+4joEOreBP/68Gjb0QidyVKyPg0W89H6SlBkzcfcp
 +cgas23ax3Ib54qSLu3Dip6Am24mT5q2SQImorxH2sBLXwAJweYLO4iBosEvBRd4DZrN
 efKdS/jHbZT1/UT+qeOxf/oohBhdIpK1I7/N7ZoMU/QH/q6/zPpQlJjvHkjPsQK66OCr
 FiBeYSXRrQraypOAvPkKR35SP+Z/gRLeDjKA3IcMFJn1qq0vSD4pyg4aIYuWEK11NbbJ
 rqEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ws1lkPqBsn87EY7GxNn+AzRrtY/P0vuzwO4T5yjsQK0=;
 b=fRMRLRVib73zkVQ9zpxCjvaLCPp3I1QrTdqfXqBWRniEeTfurGNquUu6jyTJ9ge6ul
 8tgdlvrnwNI+5UEp2+JK4MnvfmD9BqyiyqylBTFhUNuxYbzTzxytx39p4nmanc+5Ei0f
 7lqiH15hDKCfMZQi0IxvlDwzN5vpiABcpABGjWIGDRiTr5r3zFQcnrouBdC58V2y0vHs
 uFRTjRdBvoEvhWBpM+HjndeqzUCcBsyLgKmXzoWj2WAOqrZVZOC5+z0CBDpO1MD0xsGy
 YZvSfTR6Y4IRn9KRcugcXWFmhUiVyUe9O/yLs+AAgNokUy0A7NCLuoDWQ9sHfOj9eiE7
 /IHg==
X-Gm-Message-State: APjAAAWyp37SYnXbGYkGSCgskR8VM4D/wALIfsWrB+gGjr3u/dUqDZ6X
 eYlFAIxYUUVsG7l/ofYwkJwNAQ==
X-Google-Smtp-Source: APXvYqx1oIG3Ac36vr5PTQduzADZMjARqFq2CKsmLOvD+dcJcvRucBlmCQDJEBuv0oww4PyrxKWUqw==
X-Received: by 2002:a17:902:7043:: with SMTP id
 h3mr97891950plt.10.1564647627732; 
 Thu, 01 Aug 2019 01:20:27 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id y194sm47237763pfg.116.2019.08.01.01.20.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:27 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 20/47] ARM: spectre-v1: add
 array_index_mask_nospec() implementation
Date: Thu,  1 Aug 2019 13:46:04 +0530
Message-Id: <68b8f200fef6b51b5a140ef541fd4455ef704294.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012029_134012_B0C27F7F 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 1d4238c56f9816ce0f9c8dbe42d7f2ad81cb6613 upstream.

Add an implementation of the array_index_mask_nospec() function for
mitigating Spectre variant 1 throughout the kernel.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/barrier.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/include/asm/barrier.h b/arch/arm/include/asm/barrier.h
index edd9e633a84b..744d70e1d202 100644
--- a/arch/arm/include/asm/barrier.h
+++ b/arch/arm/include/asm/barrier.h
@@ -108,5 +108,24 @@ do {									\
 #define smp_mb__before_atomic()	smp_mb()
 #define smp_mb__after_atomic()	smp_mb()
 
+#ifdef CONFIG_CPU_SPECTRE
+static inline unsigned long array_index_mask_nospec(unsigned long idx,
+						    unsigned long sz)
+{
+	unsigned long mask;
+
+	asm volatile(
+		"cmp	%1, %2\n"
+	"	sbc	%0, %1, %1\n"
+	CSDB
+	: "=r" (mask)
+	: "r" (idx), "Ir" (sz)
+	: "cc");
+
+	return mask;
+}
+#define array_index_mask_nospec array_index_mask_nospec
+#endif
+
 #endif /* !__ASSEMBLY__ */
 #endif /* __ASM_BARRIER_H */
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
