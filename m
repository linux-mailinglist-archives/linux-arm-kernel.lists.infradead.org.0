Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72AF119F8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 00:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wiSmqYaHSMihWdyL3YYM5Q7voM6jlLUIJMlIkr8jkiU=; b=CoubVZSo9YXEdj14RE5j15e8f2
	DnKhQud+fm11LuS7db3IWsI9tg2671L+F9c2WalVvQmPqTsO69H2Oxye1+BEKGiGJeH4xp6zMBS6C
	Y72PbhRBY9WRJrg5joGbIq/Wpu4nemRyFGpxiTIHWvocuM/9PRvdbIBtuwXvqR2ZAnPPW6LsmFekD
	ikkjRrpp5Yqdu5WA7WwFUgBp9ABfpxLgjAJb5oPSpHDnfgpH5vRb+k+GVxa6VHKZ3erISs3xyyL/+
	pkZdPfTYqdMs6dx/tIJNcA9k9ZMtJBUrN3I5lGY5m+gqftHlzxb0dCX6TAmhHLglPSfcIfjZToe1V
	4uCe8z9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iep2i-0003E1-NN; Tue, 10 Dec 2019 23:35:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iep2H-000316-8j
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 23:35:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so21997393wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 15:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=G+wCCxELpXTMTODBtQxVzlpdhMD07gWVo3Cm9lJtjRg=;
 b=KyUwBS4pGPDF7wvXMOV4I8Bbg7GmXjcDAQLZx0u8OVKG64bmRKIGHYBBXSJc8Xworg
 hsnIATXlUfKzWMusOYK+x4+C0foj4yr1wsGXOLiY4expytTXmErFF2bUihjVFmYonXCS
 a0ghcSjKfN8sAheTzFtJ2axa3UtGlHelsw6sTqiL2J5e9uJw7UGcJecxsAzRi6+aKolu
 uI2QLs+Qog0RponIvXvV5GRYZ0OU7QAOw3zX7llKtT2S4XeaJ2Ga4IodKo9aT0FoxMeW
 0T7NuSNoLHv0sfBTm82knjIfLB/Y3NY5fpSCTwJN3fKD+wqvkEv8TD/Zi7WQYqpW/TWV
 AOew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=G+wCCxELpXTMTODBtQxVzlpdhMD07gWVo3Cm9lJtjRg=;
 b=oAEeqa5lo0ls39QKwN8X8VLVd7jwW2rgo7q0VyeqAsbiQa2C1HHRNwLS0INW6mBdaF
 XeE6YmOV6NT6PiqeTN+bZYbKTzSj7wCu9GU6Rp0AsCIkzJ8u6er+Vs7YaRHpIjj9o9zN
 +6OBYdJ4mmYBeGpXnEmRLknBcCJZAiuHu9cNd5mfI1LuERm6vXOF4/vwWD14vhArP3f+
 izfskLrc3Jdm38Nrqfo9TDkToZMm6rBBuGKvhJbdGkC3X7qwI2mXoVfaz07gxFO1O8FJ
 rxG/XnddjyLdXhc1z7AZrbi7qyiGFvGyN09/Ceb9SE9G0CpgsFEjIvC5DJK7Wzk2V/ml
 uhzA==
X-Gm-Message-State: APjAAAW+A9arVATPIevsLB1wyl2Mr5GAQE2c0o+648i1j/mJ5BKug6sZ
 f3COVLtddd5ugzM0EwzeAn2TvQC3
X-Google-Smtp-Source: APXvYqwyWZunvJHNmDlzFLYRDzl6HUS6mGqymy/cjcjhWsvhQk9251cWu6yixsBoNAwx5r6W26Vjbg==
X-Received: by 2002:adf:dd4d:: with SMTP id u13mr120700wrm.394.1576020919711; 
 Tue, 10 Dec 2019 15:35:19 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n16sm59478wro.88.2019.12.10.15.35.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 15:35:19 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] soc: bcm: brcmstb: biuctrl: Tune 7260 BIU interface
Date: Tue, 10 Dec 2019 15:30:40 -0800
Message-Id: <20191210233043.15193-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210233043.15193-1-f.fainelli@gmail.com>
References: <20191210233043.15193-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_153521_307486_EE9C5944 
X-CRM114-Status: GOOD (  13.41  )
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

7260A0 and B0 are both supported, and 7260A0 has a small difference in
that it does not support the write-back control register, which is why
we have a different array of registers. Update the comment above
b53_cpubiuctrl_no_wb_regs to denote that difference.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/soc/bcm/brcmstb/biuctrl.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/bcm/brcmstb/biuctrl.c b/drivers/soc/bcm/brcmstb/biuctrl.c
index d326915e0f40..6be975392590 100644
--- a/drivers/soc/bcm/brcmstb/biuctrl.c
+++ b/drivers/soc/bcm/brcmstb/biuctrl.c
@@ -63,7 +63,7 @@ static const int b15_cpubiuctrl_regs[] = {
 	[CPU_WRITEBACK_CTRL_REG] = -1,
 };
 
-/* Odd cases, e.g: 7260 */
+/* Odd cases, e.g: 7260A0 */
 static const int b53_cpubiuctrl_no_wb_regs[] = {
 	[CPU_CREDIT_REG] = 0x0b0,
 	[CPU_MCP_FLOW_REG] = 0x0b4,
@@ -102,6 +102,7 @@ static int __init mcp_write_pairing_set(void)
 }
 
 static const u32 b53_mach_compat[] = {
+	0x7260,
 	0x7268,
 	0x7271,
 	0x7278,
@@ -157,6 +158,7 @@ static void __init mcp_b53_set(void)
 static int __init setup_hifcpubiuctrl_regs(struct device_node *np)
 {
 	struct device_node *cpu_dn;
+	u32 family_id;
 	int ret = 0;
 
 	cpubiuctrl_base = of_iomap(np, 0);
@@ -185,7 +187,8 @@ static int __init setup_hifcpubiuctrl_regs(struct device_node *np)
 	}
 	of_node_put(cpu_dn);
 
-	if (BRCM_ID(brcmstb_get_family_id()) == 0x7260)
+	family_id = brcmstb_get_family_id();
+	if (BRCM_ID(family_id) == 0x7260 && BRCM_REV(family_id) == 0)
 		cpubiuctrl_regs = b53_cpubiuctrl_no_wb_regs;
 out:
 	of_node_put(np);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
