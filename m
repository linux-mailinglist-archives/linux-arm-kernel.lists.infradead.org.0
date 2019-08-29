Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F4FA1924
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hl5+AR8uxOGh0U9Zlc1OBpGZbi6Uw3x3INAeq5pewYU=; b=VWKt4eV4Pv5fPb
	CkLSrVQrSkvdF0FHh0f9agC8qxoyyUlHTiElpHUh1uyE0gNgNUV7luYc17XmT1exocqQl7lbhDNAc
	ig7n9T+myS134CDVVqjXDeclllRvqV4ZIIIC6+NZ1PNcdNCK+iC3zrKbaI1HSV64W3oPR9gyjF9D0
	3T5E9w83y7s3GBlo/LAegfaaXY3HH0P2TVbK1A+LwYdvA3sQPjY/MhtBmseV9nopDf1qcpZaONpWW
	Wn538kiCcs+cIZxXFaoyB9h7/kVOXKs3Mb8XumPPyUOJ+qZUCrC25DcwXex9Njj+6Tg4fM7I70GCU
	rGkpf+5WnZKeahc1Wemg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Irk-0007vU-Qm; Thu, 29 Aug 2019 11:45:25 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ij1-0007C5-Mc
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id w16so1861910pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dkWh8S1DsW6tSZCYoLWe69ClR5UVvKugQ1/Th9fCzhU=;
 b=gwTGiqyd1i0ey/EjaZDRrHjSr8gfQOYUawu8ybrHlGoJXfZFdHdv76ymB94bXuy5C7
 OA8AjmChqVIkkYPWK6ygHXDBNYOYGkoAhRrShHbZeaRHGG53Y1D/k+gLdO/GKe5Q5xfE
 fL+Tsj+BL7rll0SI0ZZBa1dm7YrfAjXR5n4N0rRmfms8qWKXuJ4l+GDnDgwzMOkGo21/
 y+PSskm+p0nA+iofaGta5EIfhGWlzRFkkJkGjknmZA97KV2JxrIxV3u+p2+9xBCbOxn5
 XrrjPAED5EXO56K+jXLwqfrgwwt1csJ5/dIOzzOK3kwWQj9/g9Yg6pmR1pnkdhGs1lSG
 In5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dkWh8S1DsW6tSZCYoLWe69ClR5UVvKugQ1/Th9fCzhU=;
 b=qHyyn//E03Wb2KiwfGcV+u7x3V574qpjbnYOtLDKaSbplK+ZBENSXxQM3Og7ylqJ4Q
 cX56g9oAd57TLNwCfWZV9ZNLfahTvofy8f8jUqm5gSEjNeYaSLGTiburZOAC57Hehjo7
 PVKCOtRjEWCkcMxsNZX3Ol45R8AR/6HI8ST/afu8cyHUZtf/tAB8gb1hEy2NEgMDNT37
 7+8TAmAhsFtkuokm2NijQB7PesW8BTomfCziQIzANaimshL0U9NYBHe3HIJKwonjSY/z
 xl6GMRnvAAXrK8nlZpH2DrY+g+qOk7EG3vx70ENCqVmlKA8KQPNbXhUyRZuNHU1rey7j
 Cnbg==
X-Gm-Message-State: APjAAAW43jhYRbnitF2k/Z9KPZOv8Yan2+1OpK8Rb+uDBQuYmKzjWgYa
 AkIQ1BPr7zfVz9ToEKSTmxX5BA==
X-Google-Smtp-Source: APXvYqzTHRKKxZSvYweM1RXzr/hfakx4PFLfP2Vzugpkk0lBFl/uJ44vEFiMkRPeEiHmbJ30wUPvAQ==
X-Received: by 2002:a17:90a:b303:: with SMTP id
 d3mr9677868pjr.28.1567078583076; 
 Thu, 29 Aug 2019 04:36:23 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id y8sm3422359pfe.146.2019.08.29.04.36.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:22 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 34/44] arm64: Branch predictor hardening for
 Cavium ThunderX2
Date: Thu, 29 Aug 2019 17:04:19 +0530
Message-Id: <428a36a4c7d91a280917ec2a65b16ab0cb11bb6b.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043623_827426_206E3DF6 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jayachandran C <jnair@caviumnetworks.com>

commit f3d795d9b360523beca6d13ba64c2c532f601149 upstream.

Use PSCI based mitigation for speculative execution attacks targeting
the branch predictor. We use the same mechanism as the one used for
Cortex-A CPUs, we expect the PSCI version call to have a side effect
of clearing the BTBs.

Acked-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Jayachandran C <jnair@caviumnetworks.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index dbd7b944a37e..ff22915a2865 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -234,6 +234,16 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		MIDR_ALL_VERSIONS(MIDR_CORTEX_A75),
 		.enable = enable_psci_bp_hardening,
 	},
+	{
+		.capability = ARM64_HARDEN_BRANCH_PREDICTOR,
+		MIDR_ALL_VERSIONS(MIDR_BRCM_VULCAN),
+		.enable = enable_psci_bp_hardening,
+	},
+	{
+		.capability = ARM64_HARDEN_BRANCH_PREDICTOR,
+		MIDR_ALL_VERSIONS(MIDR_CAVIUM_THUNDERX2),
+		.enable = enable_psci_bp_hardening,
+	},
 #endif
 	{
 	}
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
