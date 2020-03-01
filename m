Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52256174D4E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 13:23:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gm9R6pcPaWiKXzZLemaBBI84BpodRryXcpqwBaFMPYo=; b=o8i
	NXpYYR21JF+OqCDr6smPYnlZBj4GaVXjCE/k7koO+j4R8BqulkzfyVuAGT8xytyH5/Urr0xSkgiWq
	RpXFNn1FkeM/Ilg2OOGyFdVcexw6d05h8/a8+SkGgmwslcPMZTWhOB631KoweYSqs2oqWIuRyukZ+
	O7dSPpKGolyUHlH6Ycw9uWmEQQgrwtlWn4cAQyVMLlkqsmWieYPtm/Z7NV9TeD4z0dnJxv7jLDPDS
	vef+wcvVj4/g52RjNXUoXSCaINzColAFPKivinSg/ErUQl2rESI5VsdZzXLMQHTRZjWjn/xA6ExSw
	SBGgmT9hksmffnCDmHa9vR1yg6+X5Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8NdH-0007DB-EM; Sun, 01 Mar 2020 12:23:43 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Ncw-000744-9h
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 12:23:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id y1so3069835plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 04:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ewaZEUklPCqTGahCa9RshiNF9Igtxf0iAmKwAeMUoo8=;
 b=VkkolzdblZoL+viE7Lu2cuU7bztOqRr1iGoo4D48IN8NrWYfkEl/pAxiQxuGz/B49J
 5s3K7COXyP3Y6xRI2x1K3vfQrvEwGEHji9Bt+dzefPRWm3Dil/UIGv+5RW3LhY7asQQc
 mwyVmnGF0QLPwKhOcfpBosekIfgt8vmWZAaIJq9O03es3q6N9EjFBxSgtm6TL5aybj3f
 wYr35PN/yU2DaGMrM08+nreSgL6CoB1BANeDIK5hF8KREJJ7iGkITQaeUjG8DxiYg/LH
 ADgpGrLf49QBnkTm+KzXfKZqF2Qp1RaMpkqEN7gGiF/od7cWV0Mb2OMe35RxVhD71D6M
 WPug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ewaZEUklPCqTGahCa9RshiNF9Igtxf0iAmKwAeMUoo8=;
 b=dI23mpgfG7EY4QUHm3AWYpzr0OylKboO8GXenm+WQXS7LAyTfTMa/iTpVUlSe2ytRp
 QYYCDRawZkljf4PIOMTv8wGuIFZzMXL1J5+hM+Hv6UrXafYSPtRhzcFmQxPrgq2vEir/
 SKe3p0WjAvScy+i4UTgdmIzPv4+FmwBWl5pc5xT24qohH5s4OMeXfuawNtplFo2UPIXc
 /w61qRkYXlUaqliJkJTRIvTxWi0bOmE3psn/B/sVJVyoUetFxAwz8pMVWC9QUQO8qPYl
 jOTrVPIg6rY+glTi9hDxv/iHY+r+WlOHipZoxSJ8NfGRq4I0YV4ItcX8oG8qxxOqiRVI
 ZGWw==
X-Gm-Message-State: APjAAAWmidNBodpWXaBWbPG1vvXGOJcunEG2VSPR5OlgkYF0vPJuACak
 HrFpYWaHvdOTOcw6FiouqmI=
X-Google-Smtp-Source: APXvYqydsSedEMUYW+topsgYcenMqVp/QVRnBO4ynDxScEYQ1+a4GyUt2RwiOz/ifl1Tybko7hwsOQ==
X-Received: by 2002:a17:90a:858c:: with SMTP id
 m12mr14473757pjn.127.1583065401367; 
 Sun, 01 Mar 2020 04:23:21 -0800 (PST)
Received: from localhost.localdomain ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id c184sm17352878pfa.39.2020.03.01.04.23.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 04:23:20 -0800 (PST)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] ARM: spear: replace setup_irq() by request_irq()
Date: Sun,  1 Mar 2020 17:53:15 +0530
Message-Id: <20200301122315.4240-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_042322_367420_D0ACBDCE 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: afzal mohammed <afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

request_irq() is preferred over setup_irq(). Invocations of setup_irq()
occur after memory allocators are ready.

Per tglx[1], setup_irq() existed in olden days when allocators were not
ready by the time early interrupts were initialized.

Hence replace setup_irq() by request_irq().

[1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos

Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
---
Hi sub-arch maintainers,

If the patch is okay, please take it thr' your tree.

Regards
afzal

v3:
 * Split out from series, also split out from ARM patch to subarch level
	as Thomas suggested to take it thr' respective maintainers
 * Modify string displayed in case of error as suggested by Thomas
 * Re-arrange code as required to improve readability
 * Remove irrelevant parts from commit message & improve
 
v2:
 * Replace pr_err("request_irq() on %s failed" by
           pr_err("%s: request_irq() failed"
 * Commit message massage

 arch/arm/mach-spear/time.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-spear/time.c b/arch/arm/mach-spear/time.c
index 289e036c9c30..d1fdb6066f7b 100644
--- a/arch/arm/mach-spear/time.c
+++ b/arch/arm/mach-spear/time.c
@@ -181,12 +181,6 @@ static irqreturn_t spear_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction spear_timer_irq = {
-	.name = "timer",
-	.flags = IRQF_TIMER,
-	.handler = spear_timer_interrupt
-};
-
 static void __init spear_clockevent_init(int irq)
 {
 	u32 tick_rate;
@@ -201,7 +195,8 @@ static void __init spear_clockevent_init(int irq)
 
 	clockevents_config_and_register(&clkevt, tick_rate, 3, 0xfff0);
 
-	setup_irq(irq, &spear_timer_irq);
+	if (request_irq(irq, spear_timer_interrupt, IRQF_TIMER, "timer", NULL))
+		pr_err("Failed to request irq %d (timer)\n", irq);
 }
 
 static const struct of_device_id timer_of_match[] __initconst = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
