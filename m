Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B9A6667A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqQCVBK4XsUKPzPFHTcQNcV+ZJxLN+2v4NoSsBhKWfU=; b=adf8kEpIJFQYH+
	T9UBM65ukBRF74n5+7oW4oocZXHOeViimzt8tE+lP4gdHijPnJI40KpsLYJerMQbi16ZIFVsz2a6j
	Ay7Ljwi9Rx4DBbJX7RPy27kePYK0/QSSv1c+ADNvwCbbbjyxb0H0oa5qCd6Fr68IXcb9MH+KNTpv0
	ww9siJB32lUDU8JLXHLcQ/S7PdCbzoQHIBl+IcTlk/mX9VQ9qYMVdqCjv1kit34kHQuZz7M0pdTWd
	RvNfit99NiQU9Lt0DvOrRwBqL/v6aXj5y0FFdhBH+3ANdeBHel1voRTe/E/gC+YZL0u/SLa3Za7fb
	2TFPpGPaNmLAZ2ObrdgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloJT-0002vD-FK; Fri, 12 Jul 2019 05:41:43 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8O-0002Jt-4e
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:17 +0000
Received: by mail-pl1-x644.google.com with SMTP id az7so4204631plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D7dDso9mEizkFlSNIpcQXEVsYMAg+0dXCi9osCif4dQ=;
 b=SHX7e7FubaU7wyT+0UYJDMKcleNuApOH3nQjSdAAJSgKC8Q+xG65Uzre6wh+7Sf1o3
 W+qVNTVWlECArHmOnif3X4WWMWuL5pI07rLChElsvGHJFDCihXEoQfg95FS4j5+Dr5bc
 c/ga9/JS/1+6kWpJGDkBOWcY54FXVwqT5/1S+bPCpOKqTwJjITMrmJByIWxeuuYKWq22
 sm87pvXFxIDBVpEslQEvWHvl2pRxE+K0YB+gz5O8ECmtQYbNlMnE1fHDyJSwLTxraHym
 T6L/4VWus1+kiQFadEKTHBtw/FX2wmeSV3WzH4Gk0aNApRRHiO9JSPgUYP4UjP/QsgPq
 d+Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D7dDso9mEizkFlSNIpcQXEVsYMAg+0dXCi9osCif4dQ=;
 b=TPn7EKALvXBxbTIaMgHwagKr8Fff8oPEPed6nwnpJssYKrN2Uime4WL6wAmUHf6uPC
 btaoCDR/NVqhrR11Pjqvjqe+gUxQdEg/aPp7YP/G9S2Xbhw+IQIKJXFMGQ33CSSL1EsZ
 x6+ol2k7BY+GIomCY+5LmOM6foco2V2G8tlR77P6vezQRBXh4gdfP7paxSBfQKowUUdC
 UPvn/h2QNK/pDUXwijPhkBtDCvVTM7BPGCSJILnS6+gvT7jVFnyr4E0tMAxFJEpW8UPm
 FgzTE11RNRr+H12fiDrMHhbDrac0pMw1n+wCsTLEK962/8Z39MpBBX7t+vOyYhVFC/Vj
 T8mw==
X-Gm-Message-State: APjAAAX+9/QcuS3Wc6DIUS0r+fMHyM9xE7vsqOv9vKzExuEn3J+OUBci
 mVbOFw7awLThXbRDWIYb4PC/NQ==
X-Google-Smtp-Source: APXvYqyIaG/7Rrm/kLEPryUwj4JWmUkr4V8IhVlPS2BmeeOp9j54WkRyBNl7cKrjGq7h53MpgS18mA==
X-Received: by 2002:a17:902:8d97:: with SMTP id
 v23mr8886449plo.157.1562909415500; 
 Thu, 11 Jul 2019 22:30:15 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id w2sm3669852pgc.32.2019.07.11.22.30.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:15 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 28/43] arm64: cputype: Add missing MIDR values for
 Cortex-A72 and Cortex-A75
Date: Fri, 12 Jul 2019 10:58:16 +0530
Message-Id: <70bec6c6d4248724df18ac5b7a0719d7d9733e9b.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223016_235568_403EED8D 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit a65d219fe5dc7887fd5ca04c2ac3e9a34feb8dfc upstream.

Hook up MIDR values for the Cortex-A72 and Cortex-A75 CPUs, since they
will soon need MIDR matches for hardening the branch predictor.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Add A73 values as well ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/cputype.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
index f43e10cfeda2..2a1f44646048 100644
--- a/arch/arm64/include/asm/cputype.h
+++ b/arch/arm64/include/asm/cputype.h
@@ -77,14 +77,20 @@
 #define ARM_CPU_PART_AEM_V8		0xD0F
 #define ARM_CPU_PART_FOUNDATION		0xD00
 #define ARM_CPU_PART_CORTEX_A57		0xD07
+#define ARM_CPU_PART_CORTEX_A72		0xD08
 #define ARM_CPU_PART_CORTEX_A53		0xD03
 #define ARM_CPU_PART_CORTEX_A55		0xD05
+#define ARM_CPU_PART_CORTEX_A73		0xD09
+#define ARM_CPU_PART_CORTEX_A75		0xD0A
 
 #define APM_CPU_PART_POTENZA		0x000
 
 #define CAVIUM_CPU_PART_THUNDERX	0x0A1
 
 #define MIDR_CORTEX_A55 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A55)
+#define MIDR_CORTEX_A72 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A72)
+#define MIDR_CORTEX_A73 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A73)
+#define MIDR_CORTEX_A75 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A75)
 
 #ifndef __ASSEMBLY__
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
