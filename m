Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8E31D3628
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fl8kachJ4g4aaUa7Sya1P+JqTi0YUzM1QRybcMXLT8A=; b=UknXmxjv3O91dPq/R0yCjwH/Sr
	Icoe0BBbFdPEIDyuJgMjczJH0cYT/cEu0ROoU7X2hYSeSudOqQyVbt5h/F5d9KIFh3cw/DOZL2IEL
	fPy7Q81wV8PBIGonQMRAcALRtE7qZl/oPvXOkIkImgi89qxC4tZkGHoOgp8L7zc/iDZ1OiwhN80EE
	TLFnZyDbQlRANHPjkZBYTbvi+H/6tbWRvYooFoxCeX6cCfXg8ncrbYsfrc7j0UkFMbYi0tNMHqgmw
	yadTERrkq6nPTQbzQ/EIdEt5j8bXHrFZZpZwQcp8WcCW1g5PVCZ0jeJTmb2MeQTbUPsS3loZ7kxBj
	T9RA7JCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGTv-00050W-Or; Thu, 14 May 2020 16:13:11 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGSh-0004A7-D3; Thu, 14 May 2020 16:11:56 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ms17so12650793pjb.0;
 Thu, 14 May 2020 09:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5xFCp8lZ8d3/LVRg1uj5rGVixKp+9QOEo4qBkaPPqRQ=;
 b=H1ctdj6xjeSjG2aV+fBkoXX35PD+cWMRd8QYRNRzxan+pZScVvZ2yvNPuhW2JimRat
 gtuAElvAUvYbNWnkFxiunSQ2jd9wMrkUC/r4KgSDUAUtS2QVpXOuFn7XT7WYY67Krgzw
 DsR9GgwQm11fER+ocWf8ayOO+eSmTRw6p/dVUMeTgJog+tEoM4b27CtsUXkCwyp+HDE1
 wumUpNFjt0LwEFDqCUM59G7+w0yExmoqLAAVthonjrQ9EqfmuGINuW5kDOJzU7Bpdt9P
 3k3nPVuYX3TogxNLSCbpu/C9MHcxdaOSjxQXuJQ4hExLt5UiHS0yFztic8OXLM3KsVZQ
 a60w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5xFCp8lZ8d3/LVRg1uj5rGVixKp+9QOEo4qBkaPPqRQ=;
 b=FbfmPGruK5WDR3hu9CCNpyrRkG+C/Shi0zJgmusH13fRAv10sNLfjyhOb/f8iv0HvJ
 8PUJeqwlH/5ZglfQGHvTJzN6t/Slev7+JUWznZTFb+/U0ZXbKZE07gLaxdaj+0OtaEPl
 hCoVybrpSAZNc2rnF3q9LdjF9/Am6scIEDamMR8oMbfmxqQ2pqdIw6AbnmBKIQPkfkLc
 FGrotlVzCdVuk5pnul2vN/iKwOupZeC2+kNxTViGId5yosvUUZyZVhXmtmJ0mKvobB/k
 tMAOUxRVdQHCU6fOc/VCQLjcPHWkECM42KBBm3g0KOAi0oToB33ieZrF6zS5tugIZNe2
 Zeow==
X-Gm-Message-State: AOAM533VclW5AncGzhvdzdtlhRJWgwWd9fYvxynJXpREtw28/EO5D1Bo
 0TLkXxUcwaUeGxoXuV6RRIc=
X-Google-Smtp-Source: ABdhPJxrNnN/vOxz7Eqo+/5EE7A+H1/lzOpU7gIl78xVsMMAcKcrRgCSLl0S6hV/ldxU2jQSQ/n8LA==
X-Received: by 2002:a17:902:ba86:: with SMTP id
 k6mr4803965pls.212.1589472714578; 
 Thu, 14 May 2020 09:11:54 -0700 (PDT)
Received: from localhost.localdomain ([106.215.24.137])
 by smtp.gmail.com with ESMTPSA id t5sm2331755pgp.80.2020.05.14.09.11.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 May 2020 09:11:53 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 sboyd@kernel.org
Subject: [PATCH v1 3/9] clk: actions: Add MMC clock-register reset bits
Date: Thu, 14 May 2020 21:40:51 +0530
Message-Id: <1589472657-3930-4-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_091155_469832_41A708A6 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-actions@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds reset bits needed for MMC clock registers present
on Actions S700 SoC.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes from RFC:
	* No change.
---
 drivers/clk/actions/owl-s700.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/actions/owl-s700.c b/drivers/clk/actions/owl-s700.c
index a2f34d13fb54..cd60eca7727d 100644
--- a/drivers/clk/actions/owl-s700.c
+++ b/drivers/clk/actions/owl-s700.c
@@ -577,6 +577,9 @@ static const struct owl_reset_map s700_resets[] = {
 	[RESET_DSI]	= { CMU_DEVRST0, BIT(2) },
 	[RESET_CSI]	= { CMU_DEVRST0, BIT(13) },
 	[RESET_SI]	= { CMU_DEVRST0, BIT(14) },
+	[RESET_SD0]     = { CMU_DEVRST0, BIT(22) },
+	[RESET_SD1]     = { CMU_DEVRST0, BIT(23) },
+	[RESET_SD2]     = { CMU_DEVRST0, BIT(24) },
 	[RESET_I2C0]	= { CMU_DEVRST1, BIT(0) },
 	[RESET_I2C1]	= { CMU_DEVRST1, BIT(1) },
 	[RESET_I2C2]	= { CMU_DEVRST1, BIT(2) },
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
