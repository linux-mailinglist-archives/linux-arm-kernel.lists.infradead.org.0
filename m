Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F246666A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRo2mbnO7e+3/A6KcGW/h5g7JjqN03BUaJGAAvbC3EM=; b=B1Dwht9DvjHC/I
	WckyB4ZQk+IXobYbRmU1Ftvb5tVXvSuAacCPq2lfNLswr/HKSgTpU5D0gSKbBctWxoLVcelbp0a/V
	HUNRQf1eJeIkUJSjCoG38N226BQRxCHHBVlKFKCvDlw1GJFGQOCx7AnMKXsMlpxHtj0tE5VfXsOHl
	0eHlhY9woADcB50tQ9mYJMgPYDe2+UWr/Dcpe6sj5KXGUtSG9ifqCNUEePmaMyT2dGoy9vr8vPhLV
	gWoIkETZBiqhPVNiXnj8gv+KDefmKGJwvElqxeGu3TDJKAX98rfVW4Jekg5S12sGfpDxU37I5wR2J
	9hJrwPNsz0hG+pfDCKMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloGg-0008B5-Rk; Fri, 12 Jul 2019 05:38:51 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo81-0000uW-LY
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id r1so3774068pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L+Gdnz2jFF65J3PIUhAk0AHlnEqUM/+ROCtumKJNSeI=;
 b=O28H3hJbcm//HM+U/MWBuTNk2PRepOPX88YnoORFVdxZm09Mikdw3xD5PNVZAZcyJe
 SbkalfujGuflSOEKDuz9pC45lyZQhzbUFb7eZBEv5TnP6mQk8SvYOnFZ0TAHg6XgjTO1
 M4vVkB+MqXqFKCP5J1/py2/4yb93120qicinbyThs1y/CAvkwHcoXZ4UWNASDaZYbr/o
 KYF1Zg1rmYn7w1Sp2W48nAkF5hIm0uUEOTg57A/O2D8Nr6d+6wXJNmGb5uKfNpzD01Ii
 iBwFDSQSY7S7s5vf8Mcz0jnUo5cUdJL1ne7hbWENSdlHLL+vqy0eyBtxP15jn46Jl6RI
 A0Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L+Gdnz2jFF65J3PIUhAk0AHlnEqUM/+ROCtumKJNSeI=;
 b=R//qEons1CmB078vwBEnSUdDhhBvfIvG5DlPZBYb2mH4xnPtMlLfZTsBeMdVr6sflz
 1pig/D+aVNjTxudiVdTK7mlv0CEzbjCxnFnpb/2j7XLSwPoMESogymq61+ekY+rcaX1h
 v6HpOVnjDThgq6MU8l3wn0ONyUK+whxoRiRD6QKt0kQBwTJk3yM1UoTvUXsopDOJw20v
 QUxoHRK2V/5WzVnyo0yKArBMY3o/JqzuVzwHs6hPCqC9SWkY2Vis1TE7+Er+JjDJPdcq
 cMnAxNAW77yphP7fFGd18Y0Z/oBT8xqYaw1f7PTnDNtjsiDqI3IrK8YXS4j+q06PFtN7
 M0/A==
X-Gm-Message-State: APjAAAUPQ3ofEeJA3KwbC/esEt0PWU/LxmmFn3+82EMAge8hjarWa3G0
 jl2d/r8FJgrxM41V0X+hQPR6lA==
X-Google-Smtp-Source: APXvYqySDIdYWy9WVN9dq7htvm9SEf0NK8A2MgefQ4Dnsk3qNx5H8fF5U/DWEkK+xekUp77hGNQSSA==
X-Received: by 2002:a17:90a:fe5:: with SMTP id 92mr9537112pjz.35.1562909392738; 
 Thu, 11 Jul 2019 22:29:52 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id p20sm11193369pgj.47.2019.07.11.22.29.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:52 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 20/43] arm64: cpufeature: Pass capability structure to
 ->enable callback
Date: Fri, 12 Jul 2019 10:58:08 +0530
Message-Id: <a0fc0ca67b4069d37addb44fc7aabe3f4f7d53e5.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222953_785070_3DA2D30D 
X-CRM114-Status: GOOD (  12.30  )
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

From: Will Deacon <will.deacon@arm.com>

commit 0a0d111d40fd1dc588cc590fab6b55d86ddc71d3 upstream.

In order to invoke the CPU capability ->matches callback from the ->enable
callback for applying local-CPU workarounds, we need a handle on the
capability structure.

This patch passes a pointer to the capability structure to the ->enable
callback.

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Use &caps[i] instead as caps isn't incremented ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/cpufeature.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index c74df3ca000e..474b34243521 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -832,7 +832,7 @@ void enable_cpu_capabilities(const struct arm64_cpu_capabilities *caps)
 			 * uses an IPI, giving us a PSTATE that disappears when
 			 * we return.
 			 */
-			stop_machine(caps[i].enable, NULL, cpu_online_mask);
+			stop_machine(caps[i].enable, (void *)&caps[i], cpu_online_mask);
 }
 
 #ifdef CONFIG_HOTPLUG_CPU
@@ -881,7 +881,7 @@ static void verify_local_cpu_capabilities(void)
 			cpu_die_early();
 		}
 		if (caps[i].enable)
-			caps[i].enable(NULL);
+			caps[i].enable((void *)&caps[i]);
 	}
 
 	for (i = 0, caps = arm64_hwcaps; caps[i].matches; i++) {
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
