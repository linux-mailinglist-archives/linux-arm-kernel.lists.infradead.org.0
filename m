Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4277026A0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 20:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OpoDfplKriUe6AE+RIXzCLl3XKN3tbeRIEcEqycUgfI=; b=kn2pCdLTT7lyl+BBMYaDQnoVW4
	5+Ms4l1SQpayQR9m2fEp6mF3txnTkHpN+z7DXzZZ1NkoDoqCQkJHcQKsQjeJMmS8CtFQAlj+7t9uW
	eiY+djsCGDkzI9rFL1xmrsgHXY8fqLNEP5MJD7i4xv21gZrIQkcVfNIUC66CxVDu58hA6ZW2tr3m+
	IuhqjEyFxL0LXEIu4/rfm73+4Te//RW+xWeCkjSNl37iV2lU5NQm9N5uekOBmSTtYRHF3bwFvd79q
	bG2FkFkjmtK4OHlRXVn0STuQcOnZoRI46gPaByOyfQvM5TSVbP2+FAyM4cK6IltLSZ3AdSVDIjC54
	4RDpVyog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTWGD-0004nP-5Y; Wed, 22 May 2019 18:46:45 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTWFl-0004Pa-H4
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 18:46:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id c13so1773582pgt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 11:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=u3rxD76Si1rreVR/ufwhff8U17kCLgf43o2tpv6BK14=;
 b=Nqqa9Cyrpeh6/rKfGS52PannNQ5CJ86HqxGN4VGXXouuktUkuyTFhAQ6pjbZ9s2Ker
 ckTJwFiT7Q4N2PBW31Lk1v4jOBz/1XAxKSNHyXL3kGTV6TLKEv/agmE42pS0tuPWTtnt
 4pGrJC/o5Em4xDYr9Z+gzhty60rZrbSA1tf/o7NqxEUihijsBI4MWjKQ5AQ0DfMddaXr
 /I3pbKzF52t1SiQHVcyBcF96RtikInCpmTHu0dOlMinHtJWQaZDIBfA9dBzVgdInwKy5
 IySN4jdnGgoADxuRxsA4VH4N0XEePcfCzES7GBD2rIN2hsN4HiEloxS04HhAo0M3S9yH
 UBmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=u3rxD76Si1rreVR/ufwhff8U17kCLgf43o2tpv6BK14=;
 b=RUbCbOJ+eA7FbEKeVp51w1KP2TJdNLjEOKmJZn5w9i8WRciCUGqALC/NT1NoV3XaaV
 zTCYROuTSDlpfcLdUIdK6iFraB3nfH2DeItUrM8Ow3BCfVwG+9xnx5SOx2EOh2mPijy5
 e0icLjDPxk4y2mO1Icn+5IzFFh/D0/iSENqBAK1ObzSyjxZzsSLrsnMCjvvCLlqpqsWg
 EsHgZjRjCy+TBux5OUrlo2lk+gTeRUj/NLr4YZdIyIdgrfZ6g2r3IfFVxrOfFXlp1HYn
 Kz1OUFVTU0x+fhE1M8bKypEuxJ7rGxG5kENXr9j0soRA6ubO9xVi8OIv9K3AHXkeWrTy
 mJkA==
X-Gm-Message-State: APjAAAWrDsqJLMg4cmQIkxjG00b7sjvwuYOxUEJuJ4X9Lc7vR5RPdYqv
 f2DDwvcxZPiARl9Uv2m41QUtLn++
X-Google-Smtp-Source: APXvYqwKvokex+zSA7Iaqc1vU0fduwM0j0rwO79QSTq0RtlnOfTyM7BZiW0XMI1F5kwKPmiWG9Vtyg==
X-Received: by 2002:a63:ec02:: with SMTP id j2mr67524982pgh.340.1558550776195; 
 Wed, 22 May 2019 11:46:16 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 25sm2439585pfp.76.2019.05.22.11.46.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 11:46:15 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] cpufreq: brcmstb-avs-cpufreq: Fix types for
 voltage/frequency
Date: Wed, 22 May 2019 11:45:47 -0700
Message-Id: <20190522184547.31791-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190522184547.31791-1-f.fainelli@gmail.com>
References: <20190522184547.31791-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_114617_637330_36CDEADA 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>,
 "open list:BROADCOM STB AVS CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "maintainer:BROADCOM STB AVS CPUFREQ DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Brian Norris <computersforpeace@gmail.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

What we read back from the register is going to be capped at 32-bits,
and cpufreq_freq_table.frequency is an unsigned int. Avoid any possible
value truncation by using the appropriate return value.

Fixes: de322e085995 ("cpufreq: brcmstb-avs-cpufreq: AVS CPUfreq driver for Broadcom STB SoCs")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/cpufreq/brcmstb-avs-cpufreq.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index 6ed53ca8aa98..77b0e5d0fb13 100644
--- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
+++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
@@ -384,12 +384,12 @@ static int brcm_avs_set_pstate(struct private_data *priv, unsigned int pstate)
 	return __issue_avs_command(priv, AVS_CMD_SET_PSTATE, true, args);
 }
 
-static unsigned long brcm_avs_get_voltage(void __iomem *base)
+static u32 brcm_avs_get_voltage(void __iomem *base)
 {
 	return readl(base + AVS_MBOX_VOLTAGE1);
 }
 
-static unsigned long brcm_avs_get_frequency(void __iomem *base)
+static u32 brcm_avs_get_frequency(void __iomem *base)
 {
 	return readl(base + AVS_MBOX_FREQUENCY) * 1000;	/* in kHz */
 }
@@ -653,14 +653,14 @@ static ssize_t show_brcm_avs_voltage(struct cpufreq_policy *policy, char *buf)
 {
 	struct private_data *priv = policy->driver_data;
 
-	return sprintf(buf, "0x%08lx\n", brcm_avs_get_voltage(priv->base));
+	return sprintf(buf, "0x%08x\n", brcm_avs_get_voltage(priv->base));
 }
 
 static ssize_t show_brcm_avs_frequency(struct cpufreq_policy *policy, char *buf)
 {
 	struct private_data *priv = policy->driver_data;
 
-	return sprintf(buf, "0x%08lx\n", brcm_avs_get_frequency(priv->base));
+	return sprintf(buf, "0x%08x\n", brcm_avs_get_frequency(priv->base));
 }
 
 cpufreq_freq_attr_ro(brcm_avs_pstate);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
