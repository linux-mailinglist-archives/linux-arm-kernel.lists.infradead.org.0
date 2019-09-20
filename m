Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 154E4B8939
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 04:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wuJtfYstU8Sg9ZEFnTnODPDc3gDPufq1iNdN3DNNQBU=; b=X3AR1FPprwgTvmxaB/O9R+Gv5Q
	mQ7jFizfkjWdmrVGcgVykY2XYl0YK47wh8Z2kWxN0TcIQc+2s3uedRIy8uyp/IZV/E1yuGRRES2mV
	SmEZcbiSzCQS/VlPfS91c6yvsAOzoELnzzyLH1WxIqce+FhoVf+4jzVKXIpNuyE7DRDIen+PuZ9Vy
	aQU5LppxB7Ox+V4IipJtFIDjCtjUoY6DS5CQgib+Eze7lpPa+miBF4L17S5erGERjO4d0poh3YfSB
	5IGvqkvFQw3LacF58LHUMquBNNRQHtxBaybDg0mMYGBPGoMW80pCG3ZaSTTtJVKUifm5y+6I4A/gQ
	MaApGe3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB8Yp-0002Yz-Es; Fri, 20 Sep 2019 02:22:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB8YR-0002Nb-S9
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 02:21:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FCAD1570;
 Thu, 19 Sep 2019 19:21:50 -0700 (PDT)
Received: from localhost.localdomain (entos-thunderx2-02.shanghai.arm.com
 [10.169.40.54])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0AD113F67D;
 Thu, 19 Sep 2019 19:21:45 -0700 (PDT)
From: Jia He <justin.he@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Suzuki Poulose <Suzuki.Poulose@arm.com>
Subject: [PATCH v6 1/3] arm64: cpufeature: introduce helper cpu_has_hw_af()
Date: Fri, 20 Sep 2019 10:21:30 +0800
Message-Id: <20190920022132.149467-2-justin.he@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920022132.149467-1-justin.he@arm.com>
References: <20190920022132.149467-1-justin.he@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_192151_952544_25FD1F4C 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ralph Campbell <rcampbell@nvidia.com>, Jia He <justin.he@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Kaly Xin <Kaly.Xin@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Punit Agrawal <punitagrawal@gmail.com>, hejianet@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>,
 Alex Van Brunt <avanbrunt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We unconditionally set the HW_AFDBM capability and only enable it on
CPUs which really have the feature. But sometimes we need to know
whether this cpu has the capability of HW AF. So decouple AF from
DBM by new helper cpu_has_hw_af().

Reported-by: kbuild test robot <lkp@intel.com>
Suggested-by: Suzuki Poulose <Suzuki.Poulose@arm.com>
Signed-off-by: Jia He <justin.he@arm.com>
---
 arch/arm64/include/asm/cpufeature.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index c96ffa4722d3..46caf934ba4e 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -667,6 +667,16 @@ static inline u32 id_aa64mmfr0_parange_to_phys_shift(int parange)
 	default: return CONFIG_ARM64_PA_BITS;
 	}
 }
+
+/* Decouple AF from AFDBM. */
+static inline bool cpu_has_hw_af(void)
+{
+	if (IS_ENABLED(CONFIG_ARM64_HW_AFDBM))
+		return read_cpuid(ID_AA64MMFR1_EL1) & 0xf;
+
+	return false;
+}
+
 #endif /* __ASSEMBLY__ */
 
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
