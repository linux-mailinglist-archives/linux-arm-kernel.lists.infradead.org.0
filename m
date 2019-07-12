Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D1D66692
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omxFKkPj3yeX66G+BQ9myurZnQJtPMEODMip6b24S9U=; b=qiXv9ydfUrR7LI
	NULBvFcI6fsPRpNF3VBZsGPEaWwgEynh7co7JzGrZ/OUYiXx5opNPXbAsH6Yi1CD5b6hepGpDiJZS
	KE/JhW7No2Xc1xg6pX2KzPcjJFtb/78VypP4YoZ0gpm2VCOloFUubx/q4/dknaPTMubMJ93Wjb53f
	dZV7UHtdCTDPiN8a0udyNkeeP2CPXwqSb3C6o8PIDKGO6Ws/rwMDEiK7R5/6Iv27g1Rs97AiYVvpa
	W+ZyABOyUQqQ7QWJP93OGT31sqa9nWXwVyUuiM0uLP52Qf4pxJG+vCrpTpsPRvoayH58d1cwHr9Su
	BlZW4nixI2mMtSPed5YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloN0-0004s0-RD; Fri, 12 Jul 2019 05:45:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8i-0002em-SN
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so3994021pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FDb8snX7fHtHRXPBtLwcic7/q7BlhqslXapsBvvT9m4=;
 b=eiibal9GFko1a+tgQN3krnXtrWdBZuqF3op4VIu+Wf3BT3yWBoqbTx9WQb/SIzb2Pv
 nU+5d2riU9FFB7ZObi6T0/FmOiVAW5aGYEmZjvrkkPJ2g6yeqttaBIBexfwHx+XltErC
 Y3DQoi4yokam/JVK9tv8g0c/tsQBw2y1zMoB/JHCIAUoY1gZtZBgHuw03VTQnbdwe9kP
 Pt6+p3ZXg8pzKllRVC4QKdzpBSOhLptnFhC4kPw4VLGxf9zD3HLpNXMD2tlXjktOiBhV
 WavqlMtulcslGCSBKhXOA08M969cG9OWXlkrqjc6vZeeITO1cX9t1Zu5KT2rCDtkxCAx
 U0cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FDb8snX7fHtHRXPBtLwcic7/q7BlhqslXapsBvvT9m4=;
 b=Q6L3ABwc8c5bnJPy/pIVZ9Bh9opaxNIAoXg9cv5Qd8IE6JRaXpRc/XOPEXl5HgV1fA
 bHpxYXFswuPzb5yU0aHeSITQMGPAQhnKKgs1qs4o6rYyTWLm/Ky9JrjTYnzqxZuVkAJe
 ++nq68keSl0qJwmx7aJBVMrRqvrXX9kvFBNIJKyR1MMqsgiI4W9qd/O7vO10JBCwwaoZ
 D0L3D49VYjYAciDCnbLA84OspBZE2iRIWMVk9sS4jRohjbP90I2rgqwMi7LbDiJr2Ehs
 jVIvXDEo7YK1uqd2QzmtWeZWoHuKEgoImK248IP9d5R+WXKWo0yY16xwhqSWgDw+0WI/
 gLhA==
X-Gm-Message-State: APjAAAU9376Ri8KfBopvGSnovuojTLhoSsn3nqTOQRlvG36s+x/j9CRw
 Lth2p1xLdi9FfEZgbs3oA0TJ2A==
X-Google-Smtp-Source: APXvYqyVf+gr+WKeb4pE+MswfAdJZHG+738tsKvri0lovTW3p6PsP27qAGYoMO8DaGXARfDH0ncu6A==
X-Received: by 2002:a63:d04e:: with SMTP id s14mr8225037pgi.189.1562909435104; 
 Thu, 11 Jul 2019 22:30:35 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 143sm12297066pgc.6.2019.07.11.22.30.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:34 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 35/43] arm/arm64: KVM: Advertise SMCCC v1.1
Date: Fri, 12 Jul 2019 10:58:23 +0530
Message-Id: <7c5975b0d2850d2b728f4688a3fedfed6bcbe75c.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223037_172491_EDF6E488 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

From: Marc Zyngier <marc.zyngier@arm.com>

commit 09e6be12effdb33bf7210c8867bbd213b66a499e upstream.

The new SMC Calling Convention (v1.1) allows for a reduced overhead
when calling into the firmware, and provides a new feature discovery
mechanism.

Make it visible to KVM guests.

Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ Viresh: Picked only arm-smccc.h changes ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 include/linux/arm-smccc.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 611d10580340..da9f3916f9a9 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -60,6 +60,19 @@
 #define ARM_SMCCC_OWNER_TRUSTED_OS	50
 #define ARM_SMCCC_OWNER_TRUSTED_OS_END	63
 
+#define ARM_SMCCC_VERSION_1_0		0x10000
+#define ARM_SMCCC_VERSION_1_1		0x10001
+
+#define ARM_SMCCC_VERSION_FUNC_ID					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 0)
+
+#define ARM_SMCCC_ARCH_FEATURES_FUNC_ID					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 1)
+
 #ifndef __ASSEMBLY__
 
 /**
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
