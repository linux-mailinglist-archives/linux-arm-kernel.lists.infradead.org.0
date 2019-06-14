Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 349D4452BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyQKICsRL4bdEk460xFN5vkT2JDw4zFYDIceE0Gjn6g=; b=cEhLqdrw1vqPIq
	A9k0y3xLphfT7c25dQwSj+ukjHzQKCSF1zN6A4/NvF0kHJotNwj9CL3PDjiwNVlSxO16QUeqrGAuh
	QW1/IO9jwCKIKFQAOW4Kz7h/xdAJx6Rt3Tk441ADcBAGK+3D5DZ7gpzoi+t/11nbR0kMoi6AtrM0f
	YmHd8pwtSTPdNaM0ck0sdEThqwoNYSVU3UrPOP8CQ+wlnmKDRvZi0RClxXe9D01zR1PGzo3/KLOZR
	pBo5GzI1yeiihBehza/uEG2NoSRGI5vrJuW6G7idvSJLo/xi79gD1z0wpe4G+m5bviIWm8LRUGpp3
	xypJgZEC7sWTDDzBeYvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcmd-0001tv-A0; Fri, 14 Jun 2019 03:21:43 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbceG-0000kO-Uo
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:07 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so663009pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s6UKYk23he3dGgebGJrG3RauZikPx4goXsUxb0kpSkg=;
 b=zvCEroJYai18z93zM9pHqfeGsgfcnwFiyoZEI/5uUllBxZqQQE9aZbZ5rkjcYL+mu/
 E2feYxj2JqPTTxe0pVL///P07AZgXGWknqiChAzY9DSg02c5z0e37gc46ggiAbNV5EQh
 jhiHXo/WD6NMAEEJ/cEYyzytTfwHgsg+GQYggeevy4B3ivGcDNcOHmqYLWnigEtNuf37
 p8/UOSxtcBVyPxDzoJM4qsUCLRXsuIkcl1BwrgMRwBaU5RH85Kb7dftoxbBdMV9vrYz6
 XDHhdRGqvpS8q40H9UbOb4VsxaelFTcoDXqvOSBSzkrlUwbBOElF7vEa1sJwqse7SOTd
 Bkog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s6UKYk23he3dGgebGJrG3RauZikPx4goXsUxb0kpSkg=;
 b=Qq2tB/Cnv+Oy7t+Lq7kPOC/guzoqgLQCjFK4yI9hqTCsoX9BV0tzNiHYsCXTP057ia
 /FdW3rufl4XlTg/pJmlmqSFpR7cGVHNezBNXvr+UIT3VgpIX7R9g6BHDJm6v5qGT8sja
 cvyqKSsEkjHNRO19qF0Q0M/e5qzMbq1m883g4oc7VOaN2l5RlFLuNnyRyDuxqfhvQzae
 /DhPvFkZxZDxaMac0/dU/SRWVf9/gueuW4SAvZ6TqpSoGTqgiLiVNwddtyVaTIQIKoYO
 MpCVtBrkXvJz45HssICzTQMZJN1Py6trAq4A3YbJ+wlTCe/XxDvX/xQ6r3HzNgShoctJ
 WriA==
X-Gm-Message-State: APjAAAVF/qB0EgpMlu1p7mPeSxPH2XJDoY5KYsjPMjL90dXav9hfNH6c
 qVoAW2zy5YBCyGBduAjDdh3cn1LVtoQ=
X-Google-Smtp-Source: APXvYqx+ra3YpKQWwoRa5iUExPJzGtThNQBAcoXTZoAe9nxiK6MaSF/dMW2wTNTLFt+Vb+aHjp9b0A==
X-Received: by 2002:aa7:8b17:: with SMTP id f23mr61291788pfd.194.1560481983028; 
 Thu, 13 Jun 2019 20:13:03 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id u11sm996131pfh.130.2019.06.13.20.13.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:02 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 26/45] arm64: cputype info for Broadcom Vulcan
Date: Fri, 14 Jun 2019 08:38:09 +0530
Message-Id: <619a06ea39c6f159f0ca0c629eb3859dff1235d8.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201305_065487_F8231392 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
