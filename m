Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD032245BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xF7h3W+h4MrOY4CHvXjobBK3AXgmFwiQt0tBsaaS+/0=; b=HCPKLaLJMYdHmc
	BYbS28uY+ORRAfcENhxffScnkYDrtSZf9av14VYy5k0Itqu39zaPr4PE9lTD0GIuIXkVV6sA3FBYG
	VSBt192iRaGjs9IXRz2oSuwML3ZSR+x2uRwH/m/LevNmyIBXJgB3tT3t+rtNLVOGdv9VzF877JpB+
	LBeoPC3bwrjOj6KhOFabp1/HwYY/5SyqR0PJ6PAmFtjQmxlqIrsecg4OIga6U42OvtGnaw7/d2LVR
	U58PUhTPCZFSOPbUeL23aTGDzcO+MUj2whS3z+u062Ng1dPfpudwECgG2iq46JUDThndcq8ZkxoHX
	NC4+Nj96MrMOE0k+yzgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStsh-0003AF-D6; Tue, 21 May 2019 01:47:55 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStsY-00039j-VS
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:47:48 +0000
Received: by mail-lj1-x244.google.com with SMTP id z1so14295776ljb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IIahErT+Xk52W8xom0sRAAntlUCIVUf6X8wGeA51Sfk=;
 b=Lf8oyCWonlw6cjqbrkxZXxOzAoJDjt9ZR1YIRMMK7vzHFz7YIZje9Nn5KpD0FLQRsP
 0ArI3hLwZus/IqfD/qO8BSqhdeXbcRrh64/CvKtnoQO4Ssqosgs45eLn+7quHlxAA97k
 YEAAP/ExjRgEllJJ5fa/1hUNxqtmv7DTrZlMIdxpbo8Hb8/ouD/UPdvuv5uXmlJ+5GL6
 BKn8HlNp+MZn/Xeq8GigMYfm/9HjVDcjjajpXfX2Rq90fdZLVlWOixLM/3xymIk+Qf56
 vVzZtZ/BGlGcz5T3heYTukJYntkNHoSMIYiW04Qc0WF17pPIv9mJuVNH+kPYbBtMQ2kX
 g0Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IIahErT+Xk52W8xom0sRAAntlUCIVUf6X8wGeA51Sfk=;
 b=F5aH6mAZNNnqGWA5aVXsAgYItx2H72/lyttN4wtOMg7YYDxJve1Tn6EYrOg17pKMM4
 LTldpcWwFGxiub/dlkm7CzR64AtsgbYSpBIpMTI6kqcteVRe9AhUGvIHu5hVd81cgOBp
 gftFiZWHsq3X0qC4Y/ee6zNbJeOpDATxtSc3ObKeKLN4fHcuFxpij0v0B0532HjzPXAb
 4W2A+hvMjF/BO19hedpJ7ec7tRMcW7q2Ab+pd94UfGaths3wy6KvT34mnM2bKM4LuUVI
 5FwgpDFavaz9FKNsPR1byk5I36ffO6CVk4KYIFPZlNIIYYohT+rCumqmoJX//t8A4+jl
 XEVg==
X-Gm-Message-State: APjAAAU3/M7USpD1hG5BvlEP3bJb7kgSud2Qvi4iRawwbAFzlPV32Uy1
 V0e8IFbS0gFSchK+usOS/i+YpMidaUU=
X-Google-Smtp-Source: APXvYqyJCNe4oCxFM+jrKqSRPAXMZokuRm+DYI5CgZ+BBqxNBuW1wo3JcxZy+uZpJO7oCqV4WDH3RA==
X-Received: by 2002:a2e:a0d1:: with SMTP id f17mr2074482ljm.117.1558403264750; 
 Mon, 20 May 2019 18:47:44 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id i74sm4415508lfg.78.2019.05.20.18.47.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:47:43 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] ARM: dts: integrator: specify AFS partition
Date: Tue, 21 May 2019 03:45:34 +0200
Message-Id: <20190521014537.19238-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_184747_030293_6005AC35 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This activates the code for AFS partition parsing on
the Integrator.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/integrator.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/integrator.dtsi b/arch/arm/boot/dts/integrator.dtsi
index 1612a869a4f7..602f74d2c758 100644
--- a/arch/arm/boot/dts/integrator.dtsi
+++ b/arch/arm/boot/dts/integrator.dtsi
@@ -62,6 +62,9 @@
 		compatible = "arm,versatile-flash", "cfi-flash";
 		reg = <0x24000000 0x02000000>;
 		bank-width = <4>;
+		partitions {
+			compatible = "arm,arm-firmware-suite";
+		};
 	};
 
 	fpga {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
