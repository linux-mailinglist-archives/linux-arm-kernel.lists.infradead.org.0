Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1768F452C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ddm/VvqKy6OF2hh+Nqhy31swCPBVG4AcUesrwG18PUM=; b=FLr/clgxEo5Su5
	uTJ5c9pZEfSC7ueI5dxJwjqdhA2cKwiAacn0t3G4rhd41hR0Vb5JHlDFcJkGivYqaZ3l5QyE/kRbw
	2GK7CpH1p99KIA3SAhWX9mCyUWvfU5qLjMzcEiI80RLwI3YGKRswYOuOx+viQBuHYgF6C/AJL/4hP
	rPhFTiNFjljIJFbnm6bcuSbk5k4qjgMmvQD5HqbBzo3EmM4f18Yiyc6VwkulvA5vRRaWuV5hSiOhC
	EoDbNQPQn5J0mJg4A3vdgLucLWx9giSmI1yF3cP73hyrpWxmcMT86WnEfMoMRIpGq+cncT6LpYCk+
	tTj0aO+1Zn2AEOKHo8gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcn1-0002Fj-0b; Fri, 14 Jun 2019 03:22:07 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbceI-0000mO-Qw
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id b7so374407pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sBbWRB3LgLlv2c3U4FxHDhn97v+yXFInuDLMYZ1aFeE=;
 b=yCjy6+SN414F35JKkNjFkyRAIf7YsFvNN+Kz/Mi8AgDN22LOTkEocDlKSGJU+7VWoT
 rd7H6Kwo6rDofcCHG0iiog2QNhUUG793KzKoX2APLWphCziQ9Z0/xaLtnBnUYuMK7Z3A
 YetcuPTD3IMuzeKAl2gn5/DadaRWJl5utXEgxSmdTugAcYNH3N9NfiJ/JOqN1fumuopz
 cSs5wtE9I3gwI3CwTLfm8welw4DW0VNoCNIc3JfQ6880amhcfnmyEuyQYBPf651aQbcO
 554KdaFth8cW5dCOUl05t7MeAl6hsjFFLJvqfZsKX4U3BqTDiEFM/mrfOuo9c+OoANQn
 NYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sBbWRB3LgLlv2c3U4FxHDhn97v+yXFInuDLMYZ1aFeE=;
 b=STjX3e4P8G4QWyV28nUQbqyqu5vS4RfxyLdJuU7BL9I6rsO+qyq3fLILdqK85U2g95
 u7V6mh0v7wcgdB92kIPBGpaO6Zq3k+/onKjiIpEwpGx6jAMDADXvE1xmjww60muyyGQ0
 L0B6cgcZUoXruPVTaQiZxC3yUaWX0saNDpY2+q6+e8rPHfk6flUy52yHsiM3+XTz6JwP
 ZSM8a65P8L26C+WwSWPkbqrxYYgJVxIeOcAN6e50gW/fT4tIOXhZvEjZT1/gdGceAeva
 yVXPlE50GcltbQti0I4CPWEOKvOMj4tibjWp9W0vNut44UA+8lPiHvfJS9VjyJg85u7O
 zhyg==
X-Gm-Message-State: APjAAAXqrQzEMd7Iv66J7Vhx6NlwSYY2SX6X5p1RTaIoyGBT9szSo9Jr
 aAZkOBXxif7fgAmTd03WlCcn3iNFntc=
X-Google-Smtp-Source: APXvYqz8IKb1jUFIGu4BsXINQ7hYd13qL7tcvHzLmwIW0Blq8lVI06hDyZgfCOfPA73tJ87WnHnC8A==
X-Received: by 2002:a17:902:121:: with SMTP id
 30mr87000779plb.314.1560481985859; 
 Thu, 13 Jun 2019 20:13:05 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id o26sm1106132pgv.47.2019.06.13.20.13.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:05 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 27/45] arm64: cputype: Add MIDR values for Cavium
 ThunderX2 CPUs
Date: Fri, 14 Jun 2019 08:38:10 +0530
Message-Id: <92556442f96e9f150663637c363eb892731327b1.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201306_923303_93BC9C1D 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
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
