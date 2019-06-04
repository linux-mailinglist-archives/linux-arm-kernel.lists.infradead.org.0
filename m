Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79B034C9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+oqZJ7QjaEWuj7T/46e81ZceAZ0JVg0v0Tlje4/mbU=; b=VfraZP1RdTA5ji
	9YYPhDTj4Sr2l3gcVfyY8tVRLWuqpQW8voiuRxSD5QsjO0f+fkPBR7ezFwYYnSqtCwxFimhdoW0hj
	iHUy4TES1SQEb87pf31klZaM0mjD7xgk8gT5/9gbw/8uO49OLjzxJbWGYWZWRAy6LN/c+0Wm7JBhw
	Hogj72CdEvADHyHqH/XGxstJrNrbufsTjCUPPpQW76HzjlmSZsmdTEzC3uj050WNYuqUc+CqkDf4p
	mkVVozyN7AsDvJcRbD/D4pTr1yceQJ3JtsVszrWg26OBS4F7AKvryj+iu5EsCFRGSrOXYxP9wLRtZ
	uwXkp5aHjQDpDmDGDzaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBjQ-0008WT-Gj; Tue, 04 Jun 2019 15:52:12 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBj1-0008AM-Je
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:51:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id c6so617761wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 08:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z+OhEzHhvUeJebIEatFExcxGd1KsR5MutbeuVcAmdiM=;
 b=IZoG5iQfhwH3WPZ7yI+hJljmBqEI9xfgXEgkUxl7gTycgWFGden7jqMKmTnTQvh+u2
 yMHOBvLA3h8oxxpysF/UgPQrSmeRxjSvx92v/YzblfFF4jRFuyXJHzWATLk/jsv5+O86
 bg4pNSi0dbnzBb070ToI5yPLMbPr4tMH25bK24rnfsfCLA5c7RxSSgq7n0WbXHVziroz
 WlQKYvRbvKpLvYjznY9TJsVjmwIJEdHMRhh5hY10oaM2+YSdXMvGsgkwJpjQc8N2JVXv
 WpNhN+W3C5O+JjEjhoumaTjIB9W7BNEjercK1MWRCXUW7m1uWOiTpP1AK268hRL2IK1b
 /hfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z+OhEzHhvUeJebIEatFExcxGd1KsR5MutbeuVcAmdiM=;
 b=SbvXktFABLWfZA5En/YR0JdCphaf6LR4pwOGhRd/qOZEoMrKZIG93WDFWISKHKgR+a
 hi2HfCk4ZhUEBw/JUtxVe5lA5Pdry6PtCdm37QFjuHWLRnzyGCmMdzzf/i2Rzlim7fo4
 Ezx4qLyXn3XNFXmUNxCYgL1kZceK1fVNJyibZMqJwp17zT4C3EvHJBwfkjYBnL0BM+mB
 Hf+7M+UbM9aG5iLw9n2+H+fUaesGavF7zKPKfVcDidhLSxkE4VR2ZShhq8XKAmDPDMEw
 cn4pnkPZ92ya3pBtvxTLgxjFoj0kRlwYobCM60sSzbOOY2DRX+qXp4S3qFAJ7D4AMBvd
 tOlQ==
X-Gm-Message-State: APjAAAVgNXvCsdFA/VKVPz+nthqpSxbzaAzkmXSBdMBd5bbLbnCNekki
 7ASBhojmBUnMooZ1VFfv0ic=
X-Google-Smtp-Source: APXvYqzipgasfebfDR/ejdqGH7KrYRMV/DH+W6zwO2QcBQ3VZMp4cnJ2vJlkoz7iUX8LbNQ0GZifUg==
X-Received: by 2002:a1c:a848:: with SMTP id r69mr17095918wme.12.1559663506048; 
 Tue, 04 Jun 2019 08:51:46 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id d18sm3512155wrn.26.2019.06.04.08.51.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 08:51:45 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 3/3] soc/tegra: pmc: Add comments clarifying wake events
Date: Tue,  4 Jun 2019 17:51:35 +0200
Message-Id: <20190604155135.25390-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190604155135.25390-1-thierry.reding@gmail.com>
References: <20190604155135.25390-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_085147_641383_44329B25 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Bitan Biswas <bbiswas@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Add some comments to clarify the purpose of the wake event support
implemented in the PMC driver.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/pmc.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 6e66b5e293be..af8f63a844cd 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -241,6 +241,11 @@ struct tegra_pmc_soc {
 	const char * const *reset_levels;
 	unsigned int num_reset_levels;
 
+	/*
+	 * These describe events that can wake the system from sleep (i.e.
+	 * LP0 or SC7). Wakeup from other sleep states (such as LP1 or LP2)
+	 * are dealt with in the LIC.
+	 */
 	const struct tegra_wake_event *wake_events;
 	unsigned int num_wake_events;
 };
@@ -1906,6 +1911,11 @@ static int tegra_pmc_irq_alloc(struct irq_domain *domain, unsigned int virq,
 		}
 	}
 
+	/*
+	 * For interrupts that don't have associated wake events, assign a
+	 * dummy hardware IRQ number. This is used in the ->irq_set_type()
+	 * and ->irq_set_wake() callbacks to return early for these IRQs.
+	 */
 	if (i == soc->num_wake_events)
 		err = irq_domain_set_hwirq_and_chip(domain, virq, ULONG_MAX,
 						    &pmc->irq, pmc);
@@ -1924,6 +1934,7 @@ static int tegra_pmc_irq_set_wake(struct irq_data *data, unsigned int on)
 	unsigned int offset, bit;
 	u32 value;
 
+	/* nothing to do if there's no associated wake event */
 	if (WARN_ON(data->hwirq == ULONG_MAX))
 		return 0;
 
@@ -1954,6 +1965,7 @@ static int tegra_pmc_irq_set_type(struct irq_data *data, unsigned int type)
 	struct tegra_pmc *pmc = irq_data_get_irq_chip_data(data);
 	u32 value;
 
+	/* nothing to do if there's no associated wake event */
 	if (data->hwirq == ULONG_MAX)
 		return 0;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
