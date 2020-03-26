Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AB3193D66
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 11:57:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtTRK5lgoPxaUY8s6F40qeu59h8iEdw7DgvvBTS2Cgo=; b=X42Gs7qlBXMUT2
	Jz6VQLbMAO1bx7wAa4p8moRp6ApT5cE50KmEf/T4lrS9DZyZUXbJXCsVM4A4LRwCrwr8B0v+nfIDK
	uqVdrPnQmGgLH1dqJFoZ3Fc9i3CEW2+Medp8/MV13LGXMlWr9Cat5gbRfdFDV+UPrnOrQM4j9c7En
	bhuBn36SWIxnlOWi6q6BPtf+XuUDFyqaEzVPzcKYhm5HV3Dbck+0E7KessHDJwUqSxK/E1Z+aDRYx
	iUqR/ntCYOVBhmbGWjJmzrOoIpCqTpOdAxIYTxv3uuAhVO5uBUhA6jZxYjXJyUgJSiBVJ6C42LviJ
	fGty+lTNyUprG2ihUDdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQC9-0003Se-P0; Thu, 26 Mar 2020 10:57:05 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQBh-0003J3-Sy
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 10:56:39 +0000
Received: by mail-lj1-x243.google.com with SMTP id g27so5850540ljn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 03:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TuuxQjjiHA1MwNowGgc6IZfr8zLQ9maUJaFARjpxln4=;
 b=hV+MlhyXKY0QLDls81FMrAiwg7WjsXZvFNFQpl2GZ/rfzLdj3av/7+1J0ptLNp+gzl
 QbmKraoSSQviudWxJnYf0uzene7qz/a1lthvBy9lXmwaFz8FGa0P63JCqCUgMPg8TOvw
 sie5B0tgIFW8DTK6G2OSw9IULaAYxRDsqQau3ubnC1FLHieQEEsTQtpeBPvkA10fE1A1
 tNICUqoXP4fOY1uGOw2Nf2rscKjTfD0CEkyNQZrAiCOQUOtOKWd/Zu8Xk/JLwZbdXrDU
 voFxWswR7S7twoZlfFLmDIzPJnPoGOCcEScswPEsOoF3SSexlMpcx2Zq96b5SBtiCJOb
 wnNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TuuxQjjiHA1MwNowGgc6IZfr8zLQ9maUJaFARjpxln4=;
 b=Jkz0Tgz0JkScFc2DBzy61lacKI6upF3S2vc+UzfhSfKSa7GD/Sfo8Tb4I2gsa3EMAr
 EqMj6GORyx+WDT5SmDC8hisKoyObc1vb4pbO0WJUGVx6E4DRfY2SN+oGMdXblpM5STO6
 XM5HJiarddz74oWGCul9bZ4m3NeBq7VC3rk0LYS1uel+8DNVKm3GmKNVRaBmvVc1aYqR
 CnTZGvnJTYTAPtBE/9vNdzflM4QN8w2vozi8g9mSk1e862jAJZn43lCUtvtZVVkMb3NK
 tli8ORErLE7zPGx6W++a9aRdYUmxb5NUeoPx/pI1h4QLu72DlurffTYIII00hhXN9Rgk
 Z4bg==
X-Gm-Message-State: ANhLgQ1EkfIr/AHKXaQ7+vF3ndpfQT/4/8yn4LeeZ0KpMf/WY0fOrU42
 oo1oj+/9N+r7i9Uy0Q9J93NrqQ==
X-Google-Smtp-Source: APiQypIh0oKPTy0rPtj3JtcsUXTdtYTXgTC+JrTuULTRNCFGhf6dAq2avCL1mE/6d8eDRPImbNdr2A==
X-Received: by 2002:a2e:9013:: with SMTP id h19mr4933294ljg.101.1585220196103; 
 Thu, 26 Mar 2020 03:56:36 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id z17sm1214653ljm.19.2020.03.26.03.56.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 03:56:35 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: Add some constraints for PSCI nodes
Date: Thu, 26 Mar 2020 11:56:25 +0100
Message-Id: <20200326105626.6369-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326105626.6369-1-ulf.hansson@linaro.org>
References: <20200326105626.6369-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_035637_932281_2CD72F3D 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no point allowing anything else but "psci" for the corresponding
nodename of the PSCI node, so let's make this an explicit requirement.

Moreover, let's also prevent additional properties, which also allows a
better verification of the "patternProperties" bindings for subnodes.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 Documentation/devicetree/bindings/arm/psci.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 5e66934455bb..9247b58c26fc 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -32,6 +32,9 @@ description: |+
     http://infocenter.arm.com/help/topic/com.arm.doc.den0022c/DEN0022C_Power_State_Coordination_Interface.pdf
 
 properties:
+  $nodename:
+    const: psci
+
   compatible:
     oneOf:
       - description:
@@ -141,6 +144,8 @@ allOf:
         - cpu_off
         - cpu_on
 
+additionalProperties: false
+
 examples:
   - |+
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
