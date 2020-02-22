Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E5A169056
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 17:26:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mPe5gxgBNx9jKJIopXoEwnlJbx5Smce5c3gzbf1sDr4=; b=NgqYHdvdkRUMb/MKwVQCbsw1sj
	auWiq7wnjNAL/KG9xyvrNiVjMZy/3SYsAXqELWeLtePyIi2MLNw1nVSUfMgxQZ3KH2ViTI6pYij1x
	V6WKNOrr8sRCDkV/iphe7oHNvcEmrfnZ2dU69IMyMROSSOPayxHdiUXcvYhZ6STZsrwZl8wIe2qPD
	20axl/4wW939XW97gH6rpfCNLO5Ok0k6ZTDzt52e9M7dDZ7WSNHwyd75UAEP/w6glafMRY94WuUR5
	K0RoXCV/v5CJUWI0n2OqDlzDY+/rHSvWgLo+Xw1WZtrtP94/mxmVI7/xhJISDfL8VnxwifrGSlMx9
	sDfwqO3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Xbo-0001jV-E6; Sat, 22 Feb 2020 16:26:28 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Xal-0000oO-2l
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 16:25:24 +0000
Received: by mail-pj1-x1041.google.com with SMTP id d5so2119423pjz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 08:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gg7bS1nflOAaxyupRzfc5VSU36LQb9MIJVDzdfFhX04=;
 b=R8Zns9UfFCLkk51MpnD30Zt7kTfhnWJpFVg858FZmvU0SYaspwl+hj5Dxmf5F7KdtD
 JczjkiLhNwc7OEFMuPNntrvRuDR2bN3B/ojiXZIyhC8X7rCs9cwpxZW+yrCQMtzyoOck
 Rhr9fF1Y/yrtEdcNZz3R8bAEOiooSfmj7GWb2LqUX3jEiKpf3B2T1bPfuY0xEtvy/71e
 /eRpU73u+8zxiqOln+O1XpGxRiP4u3ilob3CVnzvNXJoKFZMrdSZ0VIQq+9/1tfFY9zE
 HDXFIGXM2PO47j3ow9xSshARQrJjsqQ05SKzLMziSVIkKeT1+YzyRhbGx/X+EufB195z
 Mzkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gg7bS1nflOAaxyupRzfc5VSU36LQb9MIJVDzdfFhX04=;
 b=XApz6tC0sZesVBy6r/JfMbxftXqkXh+T/v/qmmJjOTYjxsIy/7LaGHu8Ub65RkW+Sj
 AiZK9vnXN6dN2FcmGjnzPtqLTjEiem+KpvC/nd7fnp/6s0u+OteGeeI7pCBACYHqe49U
 ervTvZjADWjftrTwzgfX9cakVPM9Cd1mw5tb4dckHpDCMOhCUEj4jNOEcpDMKPtzC3LR
 Ce8JmMzimRHabuNnknM/EqEcZ35/gEyPhMgy84HIuMWw6gq0G4QZw9H42Cv1wzOp9fLW
 qPwXdz2ybFn4Yw2ys+A6TiVsz+Pqs2yHy1Ah/3ZMkQZP/tcAkdQsB/Dlq58z/8Xdqqyd
 dZCg==
X-Gm-Message-State: APjAAAXMl1ZW8yAE5xZ/5T0ajckT2V0M4eBnspYgC3I8nNrOBOkk7Hws
 rTNTHsZa7cNqxHT8roJdP0sb
X-Google-Smtp-Source: APXvYqyya8y7D5YQFJCiWMM9h4XXO/EBmT5VgPITYvRx6kw0b7p7kv+JpJQey18UWknHAr5CfF29wA==
X-Received: by 2002:a17:90a:cf07:: with SMTP id
 h7mr9838281pju.66.1582388722406; 
 Sat, 22 Feb 2020 08:25:22 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:801:b38c:89e8:305c:23c4:b77f])
 by smtp.gmail.com with ESMTPSA id q17sm6851296pfg.123.2020.02.22.08.25.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 08:25:21 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: matthias.bgg@gmail.com,
	robh+dt@kernel.org
Subject: [PATCH 4/4] arm64: dts: mediatek: Switch to SPDX license identifier
 for MT6797 SoC
Date: Sat, 22 Feb 2020 21:54:44 +0530
Message-Id: <20200222162444.11590-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
References: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_082523_175691_F79262BE 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 adamboardman@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to SPDX license identifier for MT6797 SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt6797.dtsi | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6797.dtsi b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
index 22f093960d27..c1295bf7080c 100644
--- a/arch/arm64/boot/dts/mediatek/mt6797.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
@@ -1,14 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2017 MediaTek Inc.
  * Author: Mars.C <mars.cheng@mediatek.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <dt-bindings/clock/mt6797-clk.h>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
