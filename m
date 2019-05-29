Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EF22DAA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6g5mgMs/e3CJHZRPP3s8ruagZ2NIlgUQ3uzjYsOlNbk=; b=sZXxj/jYkEPo+V
	jWL8SpnT0jia6PGSKJTpNfpVZCSGlBVsMH0K6bCUyzwvQFnPgMKhxFtTmZF2L29zIVYZ9vVI+L88c
	rvPzwVKYXabMbFYiqAXUXKgGhuKkxk4C131JQbkzGyEiz98GrudqquugMlgNlIH6djb7obmyphnhK
	LWbpRgH++gauBs9bYLVzLjGUdC9JR+tBztwc0N+HwnPNEN4ZHUU++SXL1GoSMrZwNa7gp3wXrkkqd
	t1uRTYzIb6X51/5wfPYWumOIsFOdOnMvdScRM0wQb+6xdlVSsE0nYoUhAEB1uA516PDTNtZuyP9Jm
	9zTMt6dpXYh1Q6eMyZuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvoc-0001jb-2w; Wed, 29 May 2019 10:28:14 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvnQ-0000R2-6y
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:27:04 +0000
Received: by mail-wr1-x444.google.com with SMTP id f8so1378025wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F4ek3zhf26WPz8SCGgna791YOt0uckHhipVYXfvPpfU=;
 b=n5oxxiJDyt8yneaPCfXwu7Qf4lqKWCndkvzR5bGCkZ9MPGzEORul3krIgIDgl45oGN
 PWUt79YD421ML4vQTauuPSKigORoLW0kbcOgo8l9GQbfaLW6YSzA0/kWc+eJoXPkMYr6
 c17dOtopGGPXF6R/h4HZafeIEVm4xvOQyhScfNEjXEI01dhmeRd8rbgV9DIpnHTDnmqy
 dR3GyA/2sMKBoFxrHKzN42Toj0nG8xEgdldygrVWF2Oo5lhSQQIOul0OXeVe+frc5tFE
 6zuV0vSREi73pASxy66Ys/47ZyrfHBe6QpytHNfzBt/omfnDA3e3VuB0QUASbu0LY3aW
 dSfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F4ek3zhf26WPz8SCGgna791YOt0uckHhipVYXfvPpfU=;
 b=uKIWIBs5DJSdnppBzeNlLSFsRPfOtnXhv0/2RKZhovTgceGvry292HveNSJXRG7ff4
 A8dZnHpGDMe60slsB4oj1AgWHB6gVcvGWAntoy2NkPHZ1evPSlE5gGS8tECUx1j0SjYo
 8fGQJVcXIFZTjJG5EoNoN3P+P7mjdwEvWtcGtSBmM9r7jHiDT/GlbjGJPmzsQ+vE54ur
 wO0LR5XNmZ0Ow4zZvyAwFbCtIVyR1C+oVL40Bp42ONUHqkNm9FzAYEwh4qYjWdpMYEJ5
 9JgE6Mj2o4qnzRU/rp/DNFx4H3YtboAjTOL+ehm2yeNt82iVxm6kkVf03V/MxKciQbMz
 vDdA==
X-Gm-Message-State: APjAAAV1rLRIVvVyqcwNHu7/313XKW6I0d5AWZjDBLM3l27bUAWh2giE
 T4u4/AtlM+wBTg16D8di9XdbamjV
X-Google-Smtp-Source: APXvYqzzqvqYh9R4VEQzQroevdoud8G85S2Hh/csnHhyDgdBiZ+4LqpzQDY8Qqva1KFlLCrzMbuoAQ==
X-Received: by 2002:adf:ef83:: with SMTP id d3mr8922611wro.253.1559125618796; 
 Wed, 29 May 2019 03:26:58 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id r8sm498454wrt.92.2019.05.29.03.26.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 29 May 2019 03:26:58 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 2/2] soc/tegra: pmc: Avoid crash for non-wake IRQs
Date: Wed, 29 May 2019 12:26:54 +0200
Message-Id: <20190529102654.14665-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529102654.14665-1-thierry.reding@gmail.com>
References: <20190529102654.14665-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032701_180331_ED03FBF0 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

For interrupts that are not wakeup sources but that may end up getting
mapped through the PMC as interrupt parent (this can happen for GPIOs),
return early in order to avoid a subsequent crash from an out-of-bounds
access to the register region.

Reported-by: Bitan Biswas <bbiswas@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/pmc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 653fe2c466f6..6e66b5e293be 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -1924,6 +1924,9 @@ static int tegra_pmc_irq_set_wake(struct irq_data *data, unsigned int on)
 	unsigned int offset, bit;
 	u32 value;
 
+	if (WARN_ON(data->hwirq == ULONG_MAX))
+		return 0;
+
 	offset = data->hwirq / 32;
 	bit = data->hwirq % 32;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
