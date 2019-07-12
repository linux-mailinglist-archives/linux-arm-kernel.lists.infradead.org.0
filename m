Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D246668E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:44:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ddm/VvqKy6OF2hh+Nqhy31swCPBVG4AcUesrwG18PUM=; b=scMRtXPfezG40Y
	jseaFafFV6EHieGBQvkhArMokFLsbJ5n/6jhLG0j/F2fV/BwRCT2E9DkYhEf6ByxuDSxKXrH64at+
	t2MeerTQeF6Y4SSCDwUEQCbf8nSpTGgz6xXuqsABIZL97BDYs5QPwvGk3rmZrgOLo08qGtT32PsZa
	tlXdsruKHmFfPd0Vpw7+FcAv9AihJaKinKlerseG5OAXG51mYyx5vmzGXnCnSqfigZpp3gvCoWjv3
	xQ/Pk/pj6XN+mTZ+HJwYvcb34WsWZs5H4dDq8t97Lonz/8Z4REZKLUGgVPmJynYAy05meBPPqd85t
	HffVK32Jpi61/MWGZy3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloLj-00044M-5R; Fri, 12 Jul 2019 05:44:03 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8Z-0002Ym-Mo
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:29 +0000
Received: by mail-pf1-x443.google.com with SMTP id c73so3777417pfb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sBbWRB3LgLlv2c3U4FxHDhn97v+yXFInuDLMYZ1aFeE=;
 b=LE9qttKz9JVHQZJ301vvMUJGamwX7YDgGYxVrR/vnjiJ8Jz/5xxe4200tspVVRXWk+
 W7XipnbG6F97cOGxwyGXPdCqkq3BRx2g4y26HaEqjAsFETioKBf/BZTT1PQlDrGjo7ou
 EAeXfl3TsM9qubCidTFeGydMyrJR/c6bJijftJkl1MWUPIeVdAUp5JN31QVDwcLvHVR4
 8urkOnbfh7ph5eojT6bcKlyIEOF7SVTdfu7V8JVCECv1woL27Eib/wR68NZrbXu3wBhJ
 e58ovEnhDxWGkX3plYNZ+KErAl2nlKIP7jvpIT/lTh6EdP+WvOUY/9tEUQSwyx9u3ttN
 GtOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sBbWRB3LgLlv2c3U4FxHDhn97v+yXFInuDLMYZ1aFeE=;
 b=A2GNXBNE3IiFm/hFHLEVOa6coiAzb3VbUXLz4Fe5iOJ2GBGm/+szQTC03hVhI26tu3
 cpe8It/dr1X3KAOi3T+5CGeRw7Upwv6wuANRmfLHAqVcl3yWZ10tbHNguUFs6239u/L6
 hFMvGBpcwf4pgvuR366i0wq5A+uijRq82PJZ4V+/m65VexUKsMHDDo2WjVuqf/sdpMuV
 Zt4bZVyLFpqeaPq/dk14FECvrRtnW2Stf5EaIciPGK+2x0RnTTziPDLODNroBKnA2TpN
 /yk7M6IqCwBn4kHC46Sa7wCnMTjiOeEI4T12ZoV/zaCaXJXVCSDZFu8GfrleUENV42j3
 m+cA==
X-Gm-Message-State: APjAAAU4+CphPdxkahAi7BFehOGvSspdktbmvOFW7HHhIGvlMlerrQEK
 ZcVB98xEgKbD68nFU/a5yNNLLA==
X-Google-Smtp-Source: APXvYqxyRaEvat1PpF7Xec8SgqPa/995PZH5g9J/aKyj66PHzIjCnc1qgeDxt+I54TOuoUWo47TglQ==
X-Received: by 2002:a65:508c:: with SMTP id r12mr8006992pgp.1.1562909426531;
 Thu, 11 Jul 2019 22:30:26 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id q63sm10762553pfb.81.2019.07.11.22.30.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:25 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 32/43] arm64: cputype: Add MIDR values for Cavium
 ThunderX2 CPUs
Date: Fri, 12 Jul 2019 10:58:20 +0530
Message-Id: <6565b88d21dbcfbb592fbf7a5a00f20caf2e934f.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223027_865076_33D8A540 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

From: Jayachandran C <jnair@caviumnetworks.com>

commit 0d90718871fe80f019b7295ec9d2b23121e396fb upstream.

Add the older Broadcom ID as well as the new Cavium ID for ThunderX2
CPUs.

Signed-off-by: Jayachandran C <jnair@caviumnetworks.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/cputype.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
index c6976dd6c32a..9cc7d485c812 100644
--- a/arch/arm64/include/asm/cputype.h
+++ b/arch/arm64/include/asm/cputype.h
@@ -87,6 +87,7 @@
 #define APM_CPU_PART_POTENZA		0x000
 
 #define CAVIUM_CPU_PART_THUNDERX	0x0A1
+#define CAVIUM_CPU_PART_THUNDERX2	0x0AF
 
 #define BRCM_CPU_PART_VULCAN		0x516
 
@@ -94,6 +95,8 @@
 #define MIDR_CORTEX_A72 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A72)
 #define MIDR_CORTEX_A73 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A73)
 #define MIDR_CORTEX_A75 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A75)
+#define MIDR_CAVIUM_THUNDERX2 MIDR_CPU_PART(ARM_CPU_IMP_CAVIUM, CAVIUM_CPU_PART_THUNDERX2)
+#define MIDR_BRCM_VULCAN MIDR_CPU_PART(ARM_CPU_IMP_BRCM, BRCM_CPU_PART_VULCAN)
 
 #ifndef __ASSEMBLY__
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
