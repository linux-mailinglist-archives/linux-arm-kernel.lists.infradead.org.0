Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D2D119F96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 00:36:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WDDBQ5YTXDe8biv3lrOsRacREz2TWcz1PyhKQnrBehA=; b=XCoomztNO/KCi09XscSfknHrLu
	x9QbYk7pflFqQgP13GSIRqeaHj2B4Lt+UeQneD22deWaqGQbtjyj/csZDqIqhiE+q1cdRBZJNDFk9
	Wj7u+LsQWshc3wHOA17Kafwd4+vT1eDvGNY3zGO7rD/Bfi1PvnqvP7dg5Jqpvbw6ng6RFmy698THs
	7zBl0g1mPMGSc8fr0HKG+VE4veJhTu6nh5xe+jltMI1+CgZYmjnsbqeUS1aNNSyMDum9xn9RZGhTF
	GUQFwkaEFYP2NwFsiVXV2SMp6FBLuZiCieOLiI5vBgpARGYwV0nG2/ZvaofmNxaJ2d4+C8d5znN+6
	8/YpeE9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iep3H-0003mr-HI; Tue, 10 Dec 2019 23:36:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iep2L-00033t-1a
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 23:35:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id z3so22054972wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 15:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0AbeKPvputP0xfRxnZJSwgiY+uW70IA/d2ji/wViVTY=;
 b=Zh+f0RshI4RE2pJIb0dWo5JI2bI2b2fH2FCW8o8Jon4Efb4BPKHxohC5VFUN3YJMtn
 u+EAUGXIW+j4U4lNYtKn4yMkaG+mB/YK7beB6COSfoS1HeS/+DJb6uaDuJm7LOkl7067
 tCmuOpB6QnUIZMFbvq1p1oYzvw20u01vOcRUDqtsFKSYURoAfB+lQz9CRpDcFhIxJVBT
 vP3MYgYT+Z63v0+LCSLrqPxG5woVPdSfC25IgTTgbO1gtrljhMaoMKGvOVU2IzP17A0D
 vaixSLO5cOwSDuxO/rb0CiJYa8G6RBwyA/1nAUV3gMEAQu7HMuBQ7FN9hfgR8J+txshk
 PqIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0AbeKPvputP0xfRxnZJSwgiY+uW70IA/d2ji/wViVTY=;
 b=D1urQsHgSBJuVUNUqPqygmmknUIQMEHBw49/8WDmANTs4zOl+1tP6JzaE68BJ92dw2
 AbbdPnijhvX88Mr9wcJ7GsYz0dEclg4w4rZyPIbN+otpyN6JgG+5qzyRQiZcLQ6ELET/
 TH9mJFsy71cDH52foDCGex1Yfh/nYDg/b0RJj8LegTI0alvsGBpLOe+pAWUdAJU0JN/h
 +K8v3SazEhp6lcY4e6pZHPYVMEaDrLF6N4CQq1EIXJCRYNRk9wHrHrs/3WJHltnoUIIE
 np+adrLylITUrjuQuCW84SaoFCMYVjZebpXxWKdYdeg7l+Xm5qTDF90HuIza2ouA1tmU
 1CfQ==
X-Gm-Message-State: APjAAAVsbm2GTb64quMq8jEFpFrLYoW+um0QkJ/WhBSvCoD4NGEFy6Ky
 5w4FaVINmz55Lhez1TGvCFrMwfvn
X-Google-Smtp-Source: APXvYqyKbyikos4S3uOhLBceay26ubCp5ltWoiUqgKrmVRP4FNig87kIVi6vDTVlQkNOKMn1nBZ/4g==
X-Received: by 2002:a5d:6b88:: with SMTP id n8mr133901wrx.288.1576020923297;
 Tue, 10 Dec 2019 15:35:23 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n16sm59478wro.88.2019.12.10.15.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 15:35:22 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] soc: bcm: brcmstb: biuctrl: Update layout for A72 on 7211
Date: Tue, 10 Dec 2019 15:30:42 -0800
Message-Id: <20191210233043.15193-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210233043.15193-1-f.fainelli@gmail.com>
References: <20191210233043.15193-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_153525_172428_5C4A4AD0 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BIUCTRL layout is a little different on 7211 which is equipped with
a Cortex-A72, account for those register offset differences. We will
match 7211 specifically in a subsequent commit.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/soc/bcm/brcmstb/biuctrl.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/soc/bcm/brcmstb/biuctrl.c b/drivers/soc/bcm/brcmstb/biuctrl.c
index 978cf52be664..d766577bc5d4 100644
--- a/drivers/soc/bcm/brcmstb/biuctrl.c
+++ b/drivers/soc/bcm/brcmstb/biuctrl.c
@@ -76,6 +76,12 @@ static const int b53_cpubiuctrl_regs[] = {
 	[CPU_WRITEBACK_CTRL_REG] = 0x22c,
 };
 
+static const int a72_cpubiuctrl_regs[] = {
+	[CPU_CREDIT_REG] = 0x18,
+	[CPU_MCP_FLOW_REG] = 0x1c,
+	[CPU_WRITEBACK_CTRL_REG] = 0x20,
+};
+
 #define NUM_CPU_BIUCTRL_REGS	3
 
 static int __init mcp_write_pairing_set(void)
@@ -183,6 +189,8 @@ static int __init setup_hifcpubiuctrl_regs(struct device_node *np)
 		cpubiuctrl_regs = b15_cpubiuctrl_regs;
 	else if (of_device_is_compatible(cpu_dn, "brcm,brahma-b53"))
 		cpubiuctrl_regs = b53_cpubiuctrl_regs;
+	else if (of_device_is_compatible(cpu_dn, "arm,cortex-a72"))
+		cpubiuctrl_regs = a72_cpubiuctrl_regs;
 	else {
 		pr_err("unsupported CPU\n");
 		ret = -EINVAL;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
