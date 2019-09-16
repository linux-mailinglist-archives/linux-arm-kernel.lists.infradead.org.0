Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D52B3E15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tlb7BK4S8pT7yQQbFPzQPHLNnJmHRijdCQoU1yd+pJw=; b=LD9Zkaue5PrkYIxQ9jFSsb4Kcb
	fVhbwO+F5Xlm6EnX+FwM30EM1fnRaulkjOlo/i2T++kU2rbOj5SDDPtUmfFCjo7MRo1O1Q14ILted
	ZH9EpwwH6ozOWR3/xh5Grp/hXoL2Y0zwtNmVH9WEHF2eKjQ100BbB6e1DDawmiHVHEqF3g94C28lW
	2nSjIZeGRAQUUVAEDUilLbfDam2uXu2fEcvTWO9XVMKz7ipWP383WyLNidpFQbHz8wPkKpYkf28XV
	nkJf6Mkrr1rRhHlG9HTHdGM7mttc+jG33fsrTSetlEOOr5STaj3F78XZhsZThFWyV4QfJMfhZOO9M
	TkVHtjxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tFI-0008HC-62; Mon, 16 Sep 2019 15:48:56 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tDH-00070Z-3Q
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 15:46:52 +0000
Received: by mail-pf1-x442.google.com with SMTP id 205so147395pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 08:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kTpWa1DIkfpJvRELBVr27cwiqR/tR9AaU9awO2MhQyc=;
 b=pRk3HU+zY6iiNHWJaHFXTtj+RSJ3rHyjAV2n8js3njp8O5MkK7jE+zN8qt+CkzCACP
 BQbioqI6GUv+RYYuXQkrIVsWwHXEW2N5Hp5SApwqEgKB83jINZhsFiePeMXul8W8U/Uw
 tzHfLSTFnr5Uz8o5aX1TDUhZLcOqgCCv3FccW4j0Z8JI4ZdOCZUdcWkFTyV3yEZlfIiI
 kV2xJK8vU7oL0Gs01cvD8pyTO2csDQzm0/e/vI2EvkRiWm6MFjZzwDJdh/v73bOKi0Xu
 PlXJitUH+4KYVTLTdkjzcZyv8rMPYCeKLcNV+gD9HjodqeFZ22yTcO+qDFRr47c9pkj2
 V0Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kTpWa1DIkfpJvRELBVr27cwiqR/tR9AaU9awO2MhQyc=;
 b=smQCO8EvhX2YehWF26wK851pmLHCbtobK1FOFtXboZ8uH8GK6EIP6F1hTAU3Vov8bV
 w/JSj0qu8hQhEuIMsvrgOmMoHDnWy8ghorXO71PzD2S18pVy+yCiy+1s2GmvJrce6RVH
 8PgYEbjwYzYVKGrulQD0JWRs3FzKbvkLpnkFpWVoqdTVdvdJhTDz0+DzlBbB/hJdNGx4
 0zHr0ImPyZ/3gDZGPU+minRG8PheCAS76TxCXs/YbBg2Dz1LPMOmM5+pRBGwpLXDSpdS
 c7NiJ4c2WT+VkHxZjoWG7WmJmW2uOptFYWAvppziNGHTpIkd8Goku/k8AnDFKVDhgMUe
 CC4Q==
X-Gm-Message-State: APjAAAVNP5lZLu426qnMu040feJRVRVUNaFRR9MZxwrtXi/6jJw1wXCx
 bkcuY1N1fOxWI5DsSVS+CIaE
X-Google-Smtp-Source: APXvYqxbBmmF8P2GlngR6dKtgNi/1ipJpKhOIJola5eIKUtLrYoCvcmNvA3pymXBDbwkMD3NVZMTeg==
X-Received: by 2002:aa7:96a9:: with SMTP id g9mr6542447pfk.16.1568648810185;
 Mon, 16 Sep 2019 08:46:50 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 s5sm36227670pfe.52.2019.09.16.08.46.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 08:46:49 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v4 6/7] MAINTAINERS: Add entry for Actions Semi SD/MMC driver
 and binding
Date: Mon, 16 Sep 2019 21:15:45 +0530
Message-Id: <20190916154546.24982-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_084651_442639_542B0EC7 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for Actions Semi SD/MMC driver with its binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c31e6492b601..d13138330b97 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1375,6 +1375,7 @@ F:	drivers/clk/actions/
 F:	drivers/clocksource/timer-owl*
 F:	drivers/dma/owl-dma.c
 F:	drivers/i2c/busses/i2c-owl.c
+F:	drivers/mmc/host/owl-mmc.c
 F:	drivers/pinctrl/actions/*
 F:	drivers/soc/actions/
 F:	include/dt-bindings/power/owl-*
@@ -1383,6 +1384,7 @@ F:	Documentation/devicetree/bindings/arm/actions.yaml
 F:	Documentation/devicetree/bindings/clock/actions,owl-cmu.txt
 F:	Documentation/devicetree/bindings/dma/owl-dma.txt
 F:	Documentation/devicetree/bindings/i2c/i2c-owl.txt
+F:	Documentation/devicetree/bindings/mmc/owl-mmc.yaml
 F:	Documentation/devicetree/bindings/pinctrl/actions,s900-pinctrl.txt
 F:	Documentation/devicetree/bindings/power/actions,owl-sps.txt
 F:	Documentation/devicetree/bindings/timer/actions,owl-timer.txt
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
