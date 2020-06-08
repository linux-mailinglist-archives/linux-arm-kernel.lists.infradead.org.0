Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BBF1F18AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 14:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9D009GZnU1eLLcXgnQTAm1750Wzxm+gk2HRpidIx2Cw=; b=T+/
	ke5c8CaoPiFi6TIKNMSs6B0qt36nYKWraLiJlUViecOnywsDqjLqN6htVEvQbxawFjupf+CxmBAR3
	G025aH7StJckxAcfaqamr7rOI+56HqzI/bPROLy5+ktQ+bejdVHyvPnQFJMggBxrOWHj70ALXZzG6
	LTNM7lghSjEgTiAcWa2aamyWP5Lbm4aEIq1SEVRS0ElsWtAGCHHj3jFmFmOFgsX3WRHWxGXQYD3Cr
	ipjkS/owaGAcJgFmt99FSRhX0j8l23W5K08ck0pw8DYs3kEtnq39dHAR9gp/hPDAt/BfSk/WYrbJ6
	CtlMeuxSUzpJJwZ9zkflnoyV+HbtfIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiGn3-0004C4-FA; Mon, 08 Jun 2020 12:22:09 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiGmx-0004Ba-Bq
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 12:22:04 +0000
Received: by mail-pg1-x542.google.com with SMTP id o8so8666401pgm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 05:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HDxho5qgH/ZNs1hwouSLFAzSS6Ya6IXAFD99ObdyT2U=;
 b=SW8D7gsAlHDtxyd8A/lLyC0s9kXr1vPCLo4wGsWfQOgnAw2y0SomQpam6DVE20cx4G
 pGClR37CIUCmo0HVoo1Aupipewj1E4JYe7uPjhf3wf6fgT9ugod8M3qShjyNg665Aqxl
 xbwTktjbLIN5qbaoyRF4G5HfXrfDfVa19TZWErDO2pWWY8CY4AyUBlfePgjUH0HYOpji
 hzcxlbSeQsmcZjRZ86qZAqeowtgrZYtWX8nHpl7AiN34tIeYpWfCFOu5tWbqWMGASZhK
 dBPuJoDmiANdj2K/F4d4Rk/x4Scw5qBUEm9MyRdXwiLQnZejrRv80JPIjlZuslxF1k5o
 AVWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HDxho5qgH/ZNs1hwouSLFAzSS6Ya6IXAFD99ObdyT2U=;
 b=LdTgfhFidXQHL25fZS3+gIEIrTkLxd/d/1B+2KbamKRZcb+ZxgLBJqQt08rfmaBsXP
 +WqDuSkL6fHU8tWeNPPLSDcn+Z4u6qwMXLPXlD+MWrZ/0MKA4Ta2nkvCQxmpr4ek7Fxk
 3mUSXJujGEJpyog11XDMM9RImDus6BF7VxsWh/3BqfoMl/rYzNdCwtq0/+tAu2ynxrxE
 uXfiqXZ+5p8B3kv8HPipNOHMfNPQysRt438H03BMZ4AXYMM/eM0Ms260MO4+mmDWfyF9
 cIF+mLprQqOpwR/3crw5qDQpDvqSXjIILD0d9x3yqSCPkYVN3qmKr9Bqw4fa02tM+ZCO
 F+PQ==
X-Gm-Message-State: AOAM533v90NBGNZHX8fGVah1kgPODSxvg1b/coRo9YuGivhgMQ6pFTaU
 kv/VfNTKR9IBs8ZEV54iFsQ=
X-Google-Smtp-Source: ABdhPJwMhWCzEK/UeGQzspWpga1Pqrnmfx1UaWD/aQi3RYJ9+jsb3BBeRs5aBHPb3r/reQoTC/L+5Q==
X-Received: by 2002:a62:36c5:: with SMTP id d188mr3677066pfa.120.1591618920957; 
 Mon, 08 Jun 2020 05:22:00 -0700 (PDT)
Received: from localhost.localdomain ([45.135.186.34])
 by smtp.gmail.com with ESMTPSA id g29sm6975584pfr.47.2020.06.08.05.21.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 05:22:00 -0700 (PDT)
From: Baolin Wang <baolin.wang7@gmail.com>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org
Subject: [PATCH] hwspinlock: sirf: Remove the redundant 'of_match_ptr'
Date: Mon,  8 Jun 2020 20:20:28 +0800
Message-Id: <250d35cb489c3c4c066f7ce256d27f36712a1979.1591618255.git.baolin.wang7@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_052203_423397_080E31E7 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [baolin.wang7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [baolin.wang7[at]gmail.com]
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
Cc: baolin.wang7@gmail.com, baohua@kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the the redundant 'of_match_ptr' macro to fix below warning
when the CONFIG_OF is not selected.

All warnings:
drivers/hwspinlock/sirf_hwspinlock.c:87:34: warning: unused variable
'sirf_hwpinlock_ids' [-Wunused-const-variable]

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Baolin Wang <baolin.wang7@gmail.com>
---
 drivers/hwspinlock/sirf_hwspinlock.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwspinlock/sirf_hwspinlock.c b/drivers/hwspinlock/sirf_hwspinlock.c
index 823d3c4f621e..a3f77120bad7 100644
--- a/drivers/hwspinlock/sirf_hwspinlock.c
+++ b/drivers/hwspinlock/sirf_hwspinlock.c
@@ -94,7 +94,7 @@ static struct platform_driver sirf_hwspinlock_driver = {
 	.probe = sirf_hwspinlock_probe,
 	.driver = {
 		.name = "atlas7_hwspinlock",
-		.of_match_table = of_match_ptr(sirf_hwpinlock_ids),
+		.of_match_table = sirf_hwpinlock_ids,
 	},
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
