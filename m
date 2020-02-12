Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4C315A374
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 09:40:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6eyxpp9QgeUCFG4UY7qzFnq6PGT0fLM3A02lV1SoK0=; b=ghg7gxVu5vSnL6
	Aj+pSE2kaXtg0GXP4uDp38Dch83Q/Y4ZkMEavjMtaiKXUQx5JvkfGrAMK3XDQfVu+rw692JKmqS13
	9my44xsuHQ3BTuAWEr+RVOXGZiMWkPWU0IQ+RLL92XUgoq33H3fkjQczEr1R8ZzmXxTIOKdj1V6On
	6kSw+9KKQxrnpQi+pb5Cyag/7rkvI5McqtXx5Ud1/iHvg9pNk5UXAmnoupMbiopqFgWnTyMHmOukO
	WYiuDqpcRDjxxze/e0bTAO/OGLTied9mQo50tlNKQiV+48/odiOqbSskC/bvbLoX3iWz9K4q0yDih
	reoEIqsn1alBCxaI0bCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1nZB-0006DP-1n; Wed, 12 Feb 2020 08:40:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1nYy-0005W9-3C
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 08:40:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so1121624wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 00:40:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vlGsrurND/ABJQemtdqIOhR0buTYuD6gWRyYKODN9Xk=;
 b=NKQ8YuiPPz9uuqFcO4gqQlpy0FIsB00vju+5ElEyGiLsREmxv4Jo0jIew6PG4ycqk+
 czj+eYDQUsi/kK6LtoxCJYRrpaNptaf8vhLIUWTh8ctATPy5DayO8eVAz6jqOz4nXPMk
 3psY2+K8n4v3pEpXY66d7wMVgx7TE2Gy9W60ajwfbWTOkuDTzsv+lfP7qNmrCx5SQqvv
 FKET5k/88hDeYjqa+NPiX716k+qae0OUGNZjoxGITKkoEW8rgUzyNOOKaAWonnLNUei3
 00QtZuMW6d60b9nO1J0XsegienKIjeT22Ke4PCaET7ESyrcLW1m/VYLxfZwyPZtr9fZk
 F2fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=vlGsrurND/ABJQemtdqIOhR0buTYuD6gWRyYKODN9Xk=;
 b=YWEv/Qsxofwt1854NgohqBVPrUxbV7htThTN/ED89j5ukqDWEosMZebB+sAg+mR5L8
 OcEmC1lXpvCWy5ffvR3Xu3H9kHeaiOI8Em/Lpf/cJzx3z6BDblCy8ziCijxV8vMI1LhT
 6ALPQUbS85oEDMp722Oku8/b37NRpRAqMu5D5f6kwwptgUx3Yi9laNBaMTLX0LQvDT5C
 9JiDsNDcMLMP69iCbxSO8HobWUy9C0kfy1byeN1K1ym+NNJZjr5zlxLs/tDuFcm3wlBe
 HhcKVXEmKRiq9iHO9nff3VHXVi4jx+HS0ALvsu32QTNieiycfotKjGJgyJEstnpBOdpT
 KW2A==
X-Gm-Message-State: APjAAAWuIbgLoh6yfp7oyI1SwiAeUqN4xa27AZjX0ZPsxzYFBH3j/4EJ
 ilVrqRSg/rrtkcdgq5WbhQ9/mw==
X-Google-Smtp-Source: APXvYqwd4NGHpkAia9MPc9TqBch3g3lddR5bKtlF0IABbXo2wYaC1n9u3QQSEPORyd4SI6qM5hPp1g==
X-Received: by 2002:a5d:55d2:: with SMTP id i18mr13399003wrw.287.1581496802074; 
 Wed, 12 Feb 2020 00:40:02 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id r6sm8849640wrq.92.2020.02.12.00.40.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 00:40:01 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com
Subject: [PATCH 1/3] irqchip: xilinx: Fill error code when irq domain
 registration fails
Date: Wed, 12 Feb 2020 09:39:56 +0100
Message-Id: <08b652db487686d816d71b3447a3b9f612d0fab4.1581496793.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <cover.1581496793.git.michal.simek@xilinx.com>
References: <cover.1581496793.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_004004_154133_43A42906 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no ret filled in case of irq_domain_add_linear() failure.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Reviewed-by: Stefan Asserhall <stefan.asserhall@xilinx.com>
---

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
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
