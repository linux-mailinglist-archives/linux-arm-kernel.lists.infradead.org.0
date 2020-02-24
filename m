Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB14016A5B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:05:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+c8Pz03PZF81LD1DMBqDNzWtrKV0hHPHB3gXPUPupQ=; b=mWBMBoOiZCJDfY
	fVMVvNxGnK6jwZeTAyM+ZrfIWaQHqNaLJ7AZqk29wZcG8Gu9yDDkk7XZTbvg3wuV6YU+ZcYYfO0bl
	yoKDYYtlvzXVYQ7zgFGwFa4K3KopYDHMDCyrN2R/BVxEmaN0A3jpUedZMOZeGuw+i9xtLwfvtMN91
	8hecXXwUfgZ2MSOf5fP943k3Z4FNaP/3eST923k36RG3lkTctZVmuj9eIyDl69bpN5coyImaN3oBC
	vuWyPBQDUnQVmPRBgTB4GjXdoCzpzMn0xBzMl9EInpBGBllsNx2XIG4y1epnHKOv86q8Wd6uiVeIu
	ehIzCqCETQkVYOmgWLvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CUO-0002bI-Cb; Mon, 24 Feb 2020 12:05:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CUF-0002aF-8n
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:05:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id z3so10091755wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 04:05:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T9r6peNg0GxGj8w89WCtwmOuzXrMVBPuq1CL8I6A2Ko=;
 b=G/sk+6TupatTQhbUWm14NNhPLJMvPbcsOYmuLGICcspebLWuUa5zHSfDJb98+0j/Xj
 GjnDlJTFVWHE5lpGZTxwj1LTYflqZmNjZa/2abHUuprbkvR3Kf/YuC3TT6KMMrvqVe3v
 eonMeLn6m1j0bdcuKUZw2zrSP7hKGzmKiW4fpEzC71bhou/GooLON6y3GP4pZFXpjcwT
 h7FpDkbgNa2IyszxqLiUOXv4ZowjhZ4Kwtx4eFhbuFbteilC1c5dAa62jhJQrm27B/6N
 qvmLFUkaWkuCJ56CGOLj2EqUeZZwsYhoDFVn38u258xpT72SgLU5MEnDIYf9Ht4Gk3LF
 yhnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=T9r6peNg0GxGj8w89WCtwmOuzXrMVBPuq1CL8I6A2Ko=;
 b=kK+/g7eHLlghSgZIA4Bezu32NV9ZfcRMMZ03NVgVdiOt1b9bfLfxhUKbCzpczUzMtZ
 QJrQ4jSdbEi/lfRTOfLwBiaTpPGWsThdNwMGU/KiIMvp+ZLqFQrv2B3j75BhdXqd9fkw
 m14mGuFC+QpJS8f94C66TwpmZhkwMDx0c1PM/4Vi8YXj5Ji6hKMY2Ss7wwiquHjSzoUn
 3L8iY1p1YMPvhDnqV4HQgW7/pLLGB5Gm+/b9tiNQbGybvOmKLAtXiU+di6jG/k5Q6i6r
 1xHh+aD8YbzpjuD9HsENEdAaVH3rPWTbG+u31Vxx1OoeXU6TkuCwT0Bm+ILUfBrA2chk
 3BSw==
X-Gm-Message-State: APjAAAVDc5LuCHXnKuf/3NZhca0j+KapO9lM1KflEm91lkvKS3/9Uxw4
 H0b364mZID3bfgK8fCYdI4mkfdgqvefmig==
X-Google-Smtp-Source: APXvYqyoGJfFaOtQ+ttvleKU+L6BzGECPvMdJcQz2foegA1t4YK39tfOEWb8fgTDcza1P3CZ1d05Fw==
X-Received: by 2002:adf:e542:: with SMTP id z2mr942344wrm.150.1582545921835;
 Mon, 24 Feb 2020 04:05:21 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id x11sm17525429wmg.46.2020.02.24.04.05.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Feb 2020 04:05:21 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, maz@kernel.org
Subject: [PATCH v2 1/2] irqchip: xilinx: Fill error code when irq domain
 registration fails
Date: Mon, 24 Feb 2020 13:05:13 +0100
Message-Id: <968acd4ba3a053554b17da93aaa1cead3c00c5f3.1582545908.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1582545908.git.michal.simek@xilinx.com>
References: <cover.1582545908.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_040523_305397_D60BCB9A 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Asserhall <stefan.asserhall@xilinx.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no ret filled in case of irq_domain_add_linear() failure.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Reviewed-by: Stefan Asserhall <stefan.asserhall@xilinx.com>
---

Changes in v2: None

 drivers/irqchip/irq-xilinx-intc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/irqchip/irq-xilinx-intc.c b/drivers/irqchip/irq-xilinx-intc.c
index 51f461d2934f..cf1bb470d7b5 100644
--- a/drivers/irqchip/irq-xilinx-intc.c
+++ b/drivers/irqchip/irq-xilinx-intc.c
@@ -230,6 +230,7 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
 						  &xintc_irq_domain_ops, irqc);
 	if (!irqc->root_domain) {
 		pr_err("irq-xilinx: Unable to create IRQ domain\n");
+		ret = -EINVAL;
 		goto error;
 	}
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
