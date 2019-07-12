Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDF466689
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyQKICsRL4bdEk460xFN5vkT2JDw4zFYDIceE0Gjn6g=; b=CDePMqJpB2EtIp
	VGGasVZkz7/EJZdQ2ByJ3Mk6JxPJ7EJumsUxVpjT9gcDNNLVa5RcM498+PF28uJYIPGsklV3l0sKa
	kgwc+uZaDtw0Rn0iMmEsiLPFzfsteQaf2RMq/L4c7b0UM/uNPhFBJYuv94dLSgc44zRoOoFQgk8s0
	f2DtBPhi+u81auRigvbSmQLRZU6WCpTlMPuQN+6P7Y0xCCCXxOiB6kRfLyYJWu6Cexa8uTD5CZRpl
	YRg40tnXstEJqYwmdK7tpoi/40EFRFhsoFtvjOHndu8BGZ+x2CPoPACCdr4AT/TcVE4CD2FR6JAK2
	jY1t5fBipXILYJsjPLSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloKx-0003o3-EJ; Fri, 12 Jul 2019 05:43:15 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8W-0002W3-Am
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:26 +0000
Received: by mail-pg1-x541.google.com with SMTP id f25so3993771pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s6UKYk23he3dGgebGJrG3RauZikPx4goXsUxb0kpSkg=;
 b=xZzGVWR8T9WDYKnZD9cQcFnGCxN8nWgyxu2OL5q872CN2Y9744zFo5JuLSgVPhsOBj
 t/CQf4r7XwcKk1lOhy4PojcMHWr1Q9XK4gnBIBG8w3NiHs5EW4/ofIZIUU0SRBsz0QIy
 RjphrkppKOzA1YewEcOFDwkXGIizbxPiX5q0e+vLi8ytNqVsk8UDidD08iLDqqyzdHVu
 JAF8ef5roiSVzR3ORFQE2/no0PrTtVl/PGCm9sXwivrz2n1+8ZO96lTRBGVdxryK42lN
 PgY2Gc9AtCJuOydtc5HEMH3PEkg1gn9buIkCOrsiYCwcOZt8zGziycjhZa3KvhGwc2Hs
 xwaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s6UKYk23he3dGgebGJrG3RauZikPx4goXsUxb0kpSkg=;
 b=IWwlr+KHMgpCBUrElIpkcZJ0kcnCW0oLD4NfLg+P9S2QmHExbKgAMPQBkgoxXV1CzK
 lGn7WsSxzBiEL6SbpN6Zxi+VvOpbL4pTVUgUaGwDDZSLlErvFHgVQqj/ro1RbtNiqbn+
 olzClAqJNwmNTNbKR6MxwWtGawGlfQGD6OrumCgMNl7utq9H0DqkvJIho/hiOEhKmnin
 1RIGAuxtFe+K4VmrsigHRlp0cTIU96efkf+fZsMYWF8MdVnCGo8x0Gqn9LA1cV+tnfF/
 YHGcGpq5XHe6VZiIWvXEBooK8JdVt0FmOPT9U5cNMFe1VcZ6uiHNPA1nUPWtC+fq1wyP
 nQYg==
X-Gm-Message-State: APjAAAVp/g9mAVzsSyPhy1FrbC/8PyCsAItqrwA8BkXqJ5NcZYVgsf/H
 jeqYP+2utNgsEj5wrfO1cQBXYw==
X-Google-Smtp-Source: APXvYqy8HmvtHu/rBwqr8MJMve38YZ4RUeZD18XlVAKT2TfZnLcz8sXDFUEVNnqH2tDQvkcljgWSPg==
X-Received: by 2002:a63:2004:: with SMTP id g4mr8286371pgg.97.1562909423556;
 Thu, 11 Jul 2019 22:30:23 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id v63sm7703899pfv.174.2019.07.11.22.30.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:23 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 31/43] arm64: cputype info for Broadcom Vulcan
Date: Fri, 12 Jul 2019 10:58:19 +0530
Message-Id: <91c8c76418c3af9daeab48c623e05eeb70f20491.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223024_541187_7D922088 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

From: Jayachandran C <jchandra@broadcom.com>

commit 9eb8a2cdf65ce47c3aa68f1297c84d8bcf5a7b3a upstream.

Add Broadcom Vulcan implementor ID and part ID in cputype.h. This is
to document the values.

Signed-off-by: Jayachandran C <jchandra@broadcom.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/cputype.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
index 2a1f44646048..c6976dd6c32a 100644
--- a/arch/arm64/include/asm/cputype.h
+++ b/arch/arm64/include/asm/cputype.h
@@ -73,6 +73,7 @@
 #define ARM_CPU_IMP_ARM			0x41
 #define ARM_CPU_IMP_APM			0x50
 #define ARM_CPU_IMP_CAVIUM		0x43
+#define ARM_CPU_IMP_BRCM		0x42
 
 #define ARM_CPU_PART_AEM_V8		0xD0F
 #define ARM_CPU_PART_FOUNDATION		0xD00
@@ -87,6 +88,8 @@
 
 #define CAVIUM_CPU_PART_THUNDERX	0x0A1
 
+#define BRCM_CPU_PART_VULCAN		0x516
+
 #define MIDR_CORTEX_A55 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A55)
 #define MIDR_CORTEX_A72 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A72)
 #define MIDR_CORTEX_A73 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A73)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
