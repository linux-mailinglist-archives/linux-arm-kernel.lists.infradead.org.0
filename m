Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 740891D4C0D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:04:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyene1VB2LbPIC13S0OlwQJunJghfmyH9WRyzGhQrhs=; b=T3k5nh291mIwfT
	/t4wEPKhANNuma5UiEUGDgRuAEjHvGBSJLCBg+z+Ow2k1hNNyzgvn98K2qN3Wh6LvFglZlhwWyrEs
	JtFzusfQBfsxak/gX/oTjv7nZwcn4pYT9HMC+CXI5kHMYI8akDQLUNefK7S3MuvnjskimC51cF7FA
	9WpbVRgxNNW62E954J8ZG9vKubWYJTt/Udz6l7UtWwfUb4RE/PzpBY5dmps4rtx2WtzRpdvhMk3jU
	oZpUwrd+1wvOpHByh7Ah3filOHXfPt1PaJuxXEKhOs33gsh7xd7UlPnKq5WozVnYHVG/BdEBfjj2g
	5qRhrWuGoJUnuCRXnDCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZY8S-0000hL-8x; Fri, 15 May 2020 11:04:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZY3m-000264-JO
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:59:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id 50so2980375wrc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sW/5ZwfUkcrq8MNsWbZB8lRN7UAKxOnejMG35fACcpU=;
 b=tqre/qi7LotrlOupGSzYt/UzPtBy6RKj8xVepwDzpdtgmD2j1I7oQ4kcPPdkV2ZGOJ
 hkb6qLAW45uzBZeohJSLIXIGRY/7SVGY1leLVFJVuP4CMq9xSsZjxdeS5vfPPIJEl/y4
 MHUYKk1DPQdCyvYh7bT9gvsdjIWCHy1cgZBKcG/RbceKT+P2dXPlyzEVONehZKyuPUXL
 388pp6M15+gpipCoh7DAoq00mt0q5cZfUMfLfunZYQv4+z9cvbDoEj4JB4JSpO7k2DxO
 V5ckh4Ftfrl4+RmZy2SzVWEqFvC/U1b7tjmCt7qIYEAU6yVfSEpjBRvfcTtbYrhOj0xo
 KVHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sW/5ZwfUkcrq8MNsWbZB8lRN7UAKxOnejMG35fACcpU=;
 b=PjK0iokVFlEKOkYm6yA2jmvMILVsYEGaoRRnfGUuTytl6Eg+y0GriAIbPAWwKb6bTp
 M9Sqh2NW+RT6ZRCeUEZkzzAHVtRK3q7usuaqni9Okw3He8kVSmG+cUUS7IoxS9P5pdlT
 Xp8nd1tJ2pKgI8658VLh03SV8tuZAB5jG2UoWFuRy3QeIw/z8DP8CqRe4t9263Xb481p
 rTgf0AMRtzpk9sQ717Pd4Ad14UWcJu+K6PoUXn2FP2fttmPlNNZRy4wDlo/V4Jx6ismm
 Bte8KDiBtiwThJibkvbBLLltyLYr1lhcH8d3Y+CcXMaTQCWaIzSn9LVaj+Ui1TGETnXs
 JFrg==
X-Gm-Message-State: AOAM530Q73RengIN4BOBRgO/VAUJIsEr1oyocNZdRSDJdWI1tJSZfrUC
 jGmTwQSM95JEIK8Ib1Sow0yJCgRR+Sk=
X-Google-Smtp-Source: ABdhPJypINRB1vch83S8A4T3nKixjdrHNtaJjymSWdrumgmpTeVVmG20s6/LdGZ7yzPGLe/h25kr3w==
X-Received: by 2002:adf:d4c6:: with SMTP id w6mr3816250wrk.92.1589540360508;
 Fri, 15 May 2020 03:59:20 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d11b:f847:8002:7411])
 by smtp.gmail.com with ESMTPSA id f128sm3300011wme.1.2020.05.15.03.59.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 03:59:19 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH v2 14/14] arm64: kvm: Lift instrumentation restrictions on VHE
Date: Fri, 15 May 2020 11:58:41 +0100
Message-Id: <20200515105841.73532-15-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515105841.73532-1-dbrazdil@google.com>
References: <20200515105841.73532-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_035922_868482_056948B0 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: David Brazdil <dbrazdil@google.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With VHE and nVHE executable code completely separated, remove build config
that disabled GCOV/KASAN/UBSAN/KCOV instrumentation for VHE as these now
execute under the same memory mappings as the rest of the kernel.

No violations are currently being reported by either KASAN or UBSAN.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kvm/hyp/Makefile | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index c9fd8618980d..69113bf193de 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -11,11 +11,3 @@ obj-$(CONFIG_KVM_INDIRECT_VECTORS) += smccc_wa.o
 
 vhe-y := vgic-v3-sr.o timer-sr.o aarch32.o vgic-v2-cpuif-proxy.o sysreg-sr.o \
 	 debug-sr.o entry.o switch.o fpsimd.o tlb.o hyp-entry.o
-
-# KVM code is run at a different exception code with a different map, so
-# compiler instrumentation that inserts callbacks or checks into the code may
-# cause crashes. Just disable it.
-GCOV_PROFILE	:= n
-KASAN_SANITIZE	:= n
-UBSAN_SANITIZE	:= n
-KCOV_INSTRUMENT	:= n
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
