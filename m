Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F081E0EDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 02:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d4SmMIzbMQt1HgxQwzmcBuM/cVSNc9ejB27IaBxq7tA=; b=H1H1nlUhSCPUqDA3gRcSkCEkzm
	ZCUPRCNPvHPbIjmcJeQA2vYcrl/XV8E8rNLbPQwGnJ21VDkdDrVqXZ87VPqa+wuNmCy5IfjhqG6dm
	c5sTEAB7oU9X2Nb/iNg9uWIrjsacxECixElk9roawqwGNy2svdYUZI5K7zRPA8gJkNtL5bWe+Fcml
	CzgSoXghgzxMUI7FByDEElgXB6WpEKbvGwBXGfWVNqII7i37LBoVMyrv8yanon9UUb4agYkwkChYv
	8cqLEATN/DijXGKvZ9e7QOPONNthCJeKlt0Vwvd4k/uO/xZI72l+sA6IE2Q4QwGYpGz/fWHe8aJsm
	7J3UvqnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN4AS-00076L-Cc; Wed, 23 Oct 2019 00:06:24 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN4A3-0006ws-IV
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 00:06:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id i13so3903030wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 17:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gokM4n7dedwvMz3nVQdhJWZwmalfuzEvK8MTROAEiLo=;
 b=nmL2XLde2WB2uLAdxke8rA0HqWKBFJYeHsDDwcWrVgidimSdkjonniTpyTYGI5B6Ao
 finU+ZW9URhPGp5hmx0j+y4i7hYUTDE0eFMI5+F9gmi7J+KwWGfXLhDD/yu0i7LkWi4y
 xZrkLts/zyLMBDvsiwI6i5NXc/p4LVDXrJy1PUm9yB+shjeppAOsamV5PILKZNgb3KuS
 XLF0h1ajOIYYpe+9OKilKd+r1yvVsK/OAEOmDJ8kfpI0MeQya29a//NxYzfHOheqFts4
 nGHsKFpxMYULLljAiWBa5RMtNOjWCBeHjwuef4nK9nF3Mw7S+EX+XxeKfcglZ/0kMiWj
 Uj2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gokM4n7dedwvMz3nVQdhJWZwmalfuzEvK8MTROAEiLo=;
 b=ViiZCkR+63cbe6YKNGH5QDTDPqW9F06UgMR7uAM7FZUHT5UHENqKx66zb2hLLs/agw
 DigmpHhToPThZzy+Y18wb6kRRBlQMbHpUbHfJT2sN+QHY7zpl8cL9I2/goMHPEi3S4zC
 xQYrDQiQXDz6HsD41Btx7UObcPLFVKBh4I8hY9aaW1NDb/UP0fabJp3LjNyqpcE1sOn0
 AyjwM40onFrxgLxNRW6FiqtXQzGVFhkjpgsPCTHg8Bur50E9ERfjosAJPYItvjgpUfzu
 cLAoE+mMAPjbdNEn9hSaWk4iPaIxB7bVlNlIRDoZcfr2MYS+9HDUlUQcVSHvcr0OFvyk
 n2Tg==
X-Gm-Message-State: APjAAAX1T/jVlmyVppIgihGjonLP9qK4V0Bsxbq0a6hvdJUaTtNcyod9
 P/vkBok/9jZDKNvx2AOdT00=
X-Google-Smtp-Source: APXvYqzQiHMeCDDNoaK/Il7oXDsbZlPDZKvFYnqWF6/bPf9fzRds46WyFEcSpn4NOt4+HVP2eMqs/g==
X-Received: by 2002:a7b:cd83:: with SMTP id y3mr5550699wmj.150.1571789157938; 
 Tue, 22 Oct 2019 17:05:57 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v10sm18500272wmg.48.2019.10.22.17.05.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 17:05:57 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH RFC 1/2] dt-bindings: Define interrupt type for SGI interrupts
Date: Tue, 22 Oct 2019 17:05:46 -0700
Message-Id: <20191023000547.7831-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023000547.7831-1-f.fainelli@gmail.com>
References: <20191023000547.7831-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_170559_610554_635AD1E5 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thanu Rangarajan <Thanu.Rangarajan@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <Sudeep.Holla@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for allowing drivers to use SGIs, define a new value for
the first ARM GIC interrupt controller cell to take a new value to
specifically designate a SGI interrupt.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../devicetree/bindings/interrupt-controller/arm,gic.yaml       | 2 +-
 include/dt-bindings/interrupt-controller/arm-gic.h              | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
index 9a47820ef346..2d0bfcbe4933 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
@@ -58,7 +58,7 @@ properties:
     const: 3
     description: |
       The 1st cell is the interrupt type; 0 for SPI interrupts, 1 for PPI
-      interrupts.
+      interrupts and 2 for SGI interrupts.
 
       The 2nd cell contains the interrupt number for the interrupt type.
       SPI interrupts are in the range [0-987].  PPI interrupts are in the
diff --git a/include/dt-bindings/interrupt-controller/arm-gic.h b/include/dt-bindings/interrupt-controller/arm-gic.h
index 35b6f69b7db6..2dcc394b7b6b 100644
--- a/include/dt-bindings/interrupt-controller/arm-gic.h
+++ b/include/dt-bindings/interrupt-controller/arm-gic.h
@@ -12,6 +12,7 @@
 
 #define GIC_SPI 0
 #define GIC_PPI 1
+#define GIC_SGI 2
 
 /*
  * Interrupt specifier cell 2.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
