Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291107D79A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXMLkbmZVFiK/rGV7YmOOUJSl4bcJ9/O6xIHf9QTBIo=; b=kdIaOxA8esutVA
	6pz/7OvZ6k5XkI6NoatvR7yRuSLA3Auy2LvY5ulG3Gz9KxsY/XiqvyN5t/fefXtEfLsQhbsS2660L
	1wSWW75wfQhMqRjxQhGEyaxu2w9luKgXLrBbaWbNb2zwWLS3kFGL6DEXMlOKoygS1Ps8RDkbJey40
	ftisEaMZNgN0yoZvfo7JK6/V4ly1uiepynf5k5uOaXIfrcHXz818Slmhb8NNrBtczOOpfh4UtFn0+
	atLDq6M/hNLGN/tDd0HQ8qbxLgpjwfOIQXcUX0YyS+3q/6YkEsrlvDKfGwa+quOgl5HrffHfwqaX6
	EkAId/pKVE5K6k7xHDoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6SD-0006Lx-TC; Thu, 01 Aug 2019 08:28:53 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6L9-0003uz-2p
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id n9so27510828pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VcM2nk9n3X98Yf/dvDVr4bULZaEs8I54Pvp1eUOtnUY=;
 b=wgago/zpfmyqQLLQdap7Xa8Uept+x1Qd1u033aMgpN9UcZ2k7xYDBKbb5+pAmTYGgD
 xC0edVXG08xxx5WF8v25YYSNhl7HmBj9YBcqUxBZKs17aXRlpwxG6PgS2mETq4g6D47P
 b/+wh1/eVUzBRinby/9SHWDbNCMO7HEhhQvRfOihSoqAuNP2z00/tm9PPpJqXaBngIua
 gUXFe57xxGWupNlan4xHj5ulZWnqY6FKmEJ00v+KbEbiHhP+rvhpjyEX1zjTqlJE75EW
 Iiyc2AY4u/qxd3536giEWMQrGCiPYXOZ0VVJbuqFv1J1Ws1noO/dSsWJolYOORmclwWU
 rPuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VcM2nk9n3X98Yf/dvDVr4bULZaEs8I54Pvp1eUOtnUY=;
 b=hNvQqV9QVTeu+O43qeSiSMyfpGrXe4QBboYQmd3R+LrHHaleQsYCzUDzVtMZxcHNhN
 DQkmZCPRjoNR12Vlqx8NtkiyAYr8cSmK0nUXO9IMIAijzp9tG3AxOwEINlD0V1J13Hu/
 yBobTYoxeyCdmUCJat7sYD7KcwfKjDlkrtMioTNTLxzo4nO6X0k+9td0va6WraQHF4Zt
 bRXk1CA4qQbM3scoc11mA55KwleJ+FGcVxPeDuMZeNVNnWUxQ6mExBuJxEN9/Ag6s3e2
 2XL9XBNeSsMJ2GUluXH4W+A/E4FBRhaIU33HcDcI7gefOuMod65fKVJ8s5byko1zMRMq
 EDBw==
X-Gm-Message-State: APjAAAXeEI4RIEGdJRiyIBP6Ewwwh2Vaeb59UYEzUaz4Ho8Tk10S+8SW
 eE+1hvFnyzZ2qmOIamgU3t1xQg==
X-Google-Smtp-Source: APXvYqz0smOXC/yRZCeLsmsqR+rYdReSDcJ5waTey1emtkemTksgldVG2ZffWaFMsTKpL11UnFLb9g==
X-Received: by 2002:a17:90a:8a91:: with SMTP id
 x17mr7257741pjn.95.1564647694091; 
 Thu, 01 Aug 2019 01:21:34 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id p19sm80677529pfn.99.2019.08.01.01.21.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:33 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 46/47] ARM: ensure that processor vtables is not
 lost after boot
Date: Thu,  1 Aug 2019 13:46:30 +0530
Message-Id: <1292f4e03c65f4cfa4665df9c0e6f7fb8bd526cc.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012135_168442_847B1CEC 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Commit 3a4d0c2172bcf15b7a3d9d498b2b355f9864286b upstream.

Marek Szyprowski reported problems with CPU hotplug in current kernels.
This was tracked down to the processor vtables being located in an
init section, and therefore discarded after kernel boot, despite being
required after boot to properly initialise the non-boot CPUs.

Arrange for these tables to end up in .rodata when required.

Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Tested-by: Krzysztof Kozlowski <krzk@kernel.org>
Fixes: 383fb3ee8024 ("ARM: spectre-v2: per-CPU vtables to work around big.Little systems")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/mm/proc-macros.S | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
index 212147c78f4b..d36a283b4099 100644
--- a/arch/arm/mm/proc-macros.S
+++ b/arch/arm/mm/proc-macros.S
@@ -259,6 +259,13 @@
 	.endm
 
 .macro define_processor_functions name:req, dabort:req, pabort:req, nommu=0, suspend=0, bugs=0
+/*
+ * If we are building for big.Little with branch predictor hardening,
+ * we need the processor function tables to remain available after boot.
+ */
+#if 1 // defined(CONFIG_BIG_LITTLE) && defined(CONFIG_HARDEN_BRANCH_PREDICTOR)
+	.section ".rodata"
+#endif
 	.type	\name\()_processor_functions, #object
 	.align 2
 ENTRY(\name\()_processor_functions)
@@ -294,6 +301,9 @@ ENTRY(\name\()_processor_functions)
 	.endif
 
 	.size	\name\()_processor_functions, . - \name\()_processor_functions
+#if 1 // defined(CONFIG_BIG_LITTLE) && defined(CONFIG_HARDEN_BRANCH_PREDICTOR)
+	.previous
+#endif
 .endm
 
 .macro define_cache_functions name:req
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
