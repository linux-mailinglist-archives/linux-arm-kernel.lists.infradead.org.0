Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44739A2805
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rukemwmQET2KaFil1sdgskce3ujkgwMbmryCz7phxh4=; b=Y/OEqnI2dknXfN41lXmRcoGqKm
	r1Wc90VnWKqAnN7xTRZlOXXyAm3FdSBx2oRK5ZhJVQHrjTIddb+ZPGzi4jpc2kBmCgZCH/7TMQtT5
	Nlq7Lz8+cXKGf4iQNeCf3Xjdd4BNSvz8tDuqGyXgjEi4bSDg2oMhftT2GQ9psF8JwDccH/Bx9zhmG
	UwzhW/GbFwaIYpTSnQZMDAq2347a+zk06iSDPrjOMEyWMCjYvTbX+wVjlPbsRvz7VJT1NGufhBjlv
	E1H9YVeqVqoUcbJMvWqWDYE+Z/GCzf6xH2aQoBwjEOF80FZdjb7SEigugjptB3d5tmw913AKGPSas
	Wyohb9xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R4p-0007G6-7S; Thu, 29 Aug 2019 20:31:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2L-0003mB-DL
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:54 +0000
Received: by mail-pl1-x644.google.com with SMTP id m9so2115776pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fpVkeA6g4XFAlHVQjTfS3OXnfP+15964icDfpkX9T2M=;
 b=qB8qfpjyZyiyODnQUhsuSzg6b32BMfSO5q2CcqeXQT4zTI7Y2xHTA17sj+EiRUAEpX
 qqv1g39pdH9Is181535GJ7Fhb8Kxw3fB6vgX6ifDJHxraaG9xWtYc+sdWH9wYTSBoobR
 cJ6UYaRH9nT/BvARKUNSEcztPM+YeY+dH/DQfjIQX6O8g3JPhUvDJ4XLmas6OkqbPXOr
 JqabEWfnHneYbMHUeY5CtQqN/cbZwcJT7R4vCW7mZV/kYtXTQt3LTqnFVTuTZ1PwRJBy
 EbuLH4xTmQXq6o97lPiy8whnxJkE7036N7WVnf2a7uZ9E4tNqIBwclQjFaEozlMl9o2s
 DLcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fpVkeA6g4XFAlHVQjTfS3OXnfP+15964icDfpkX9T2M=;
 b=bFOzS1RyZpvV7FGPyTNFUYo7AE85oET50xrcf8uDTIuPJYzeG6OCKEuqQJNBq1mTV7
 GlZIWDF3fhwQTlj7ssOUacij3++I7dvdyJsWAz+r300tfwlszpJYWj8e3mEnPL+7QjqC
 bgyuQarDgqxcFJOIJZpdVAEzP/QxullY4IHcunzZ7ZfAmoyuLeAu7dz9R6mTOix4T/K9
 yP1Teo0fob7yI8ZK0MNR4wJolPWbTZXmYStF1CeLWYu+/yYQ+FSBZoO/w/Uuv5DejY6M
 uMZ8shubdjgk9KbibkJPDDJwPxkcGeYcxyTGsCe1VojmhQUznz9B3IsSO4BrRaT7o06H
 JAvA==
X-Gm-Message-State: APjAAAUeJaM44FIo22KMXRhzL3Wg28LuRzDPt6yauFQsT9YEXOJ3vo8H
 cgt0Ww+ueFfi1QJZkUVp3Bo+mA==
X-Google-Smtp-Source: APXvYqxgX2kW379lZsbjYRleKsGZpijs/0L+E8n9XkLsnmtxMpVehlJaQynEjY84K/AV4+mqSuIr2A==
X-Received: by 2002:a17:902:e613:: with SMTP id
 cm19mr11122508plb.299.1567110532482; 
 Thu, 29 Aug 2019 13:28:52 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:52 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 09/17] coresight: etm4x: Remove superfluous setting of
 os_unlock
Date: Thu, 29 Aug 2019 14:28:34 -0600
Message-Id: <20190829202842.580-10-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132853_472521_2CB9FF96 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

In addition to unlocking the OS lock, etm4_os_unlock will also
set the os_unlock flag. Therefore let's avoid unnecessarily
setting os_unlock flag outside of this function.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
[Fixed capital letter for "remove" in the title]
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 28bcc0e58d7a..7ad15651e069 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1047,10 +1047,8 @@ static int etm4_starting_cpu(unsigned int cpu)
 		return 0;
 
 	spin_lock(&etmdrvdata[cpu]->spinlock);
-	if (!etmdrvdata[cpu]->os_unlock) {
+	if (!etmdrvdata[cpu]->os_unlock)
 		etm4_os_unlock(etmdrvdata[cpu]);
-		etmdrvdata[cpu]->os_unlock = true;
-	}
 
 	if (local_read(&etmdrvdata[cpu]->mode))
 		etm4_enable_hw(etmdrvdata[cpu]);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
