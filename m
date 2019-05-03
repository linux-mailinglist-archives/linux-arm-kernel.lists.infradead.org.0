Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A3312AE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 11:45:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEnW9jNQe3zbIh/Hxb0G2qBrJi8erNeasZd0n5y7xwc=; b=B1RAjud8zYRj7D
	OR9+IyWhUQJDUYL8919sCp5gx2oHo1hPJjQd77QpzW6nl2hbm36dP5d0kBk7OGHczKN65s6UR2p7d
	1AMo0hwLK4UmUXkp0O3CQZVu/+OF+msQz/vWJUpend4Bsu0/R8zTXEK+sRFzC4igSsDVMDZJumSGi
	epX8eOyoNfFBltni1vOsyRg9pwD3Ur90IjybX+kzBVth4E37p/vyFioNk6+dPGGu2ZYwhSVTg3eNd
	YsVH5McE3s3PJ2Va4Jr92HUWTSt+Fc2/jXk2Tc7SOnqxTylQxLJyuq++urFOVu+0vo+m4fXh7Iwms
	PstaQFwUc9YQt/FhnUiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMUkg-0001GF-Hf; Fri, 03 May 2019 09:45:10 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUkF-0000wd-W3
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 09:44:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2FA2415AD;
 Fri,  3 May 2019 02:44:43 -0700 (PDT)
Received: from queper01-lin.cambridge.arm.com (queper01-lin.cambridge.arm.com
 [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 654F03F557;
 Fri,  3 May 2019 02:44:40 -0700 (PDT)
From: Quentin Perret <quentin.perret@arm.com>
To: edubezval@gmail.com, rui.zhang@intel.com, javi.merino@kernel.org,
 viresh.kumar@linaro.org, amit.kachhap@gmail.com, rjw@rjwysocki.net,
 will.deacon@arm.com, catalin.marinas@arm.com
Subject: [PATCH v3 2/3] PM / EM: Expose perf domain struct
Date: Fri,  3 May 2019 10:44:08 +0100
Message-Id: <20190503094409.3499-3-quentin.perret@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503094409.3499-1-quentin.perret@arm.com>
References: <20190503094409.3499-1-quentin.perret@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_024444_243808_3C35C68B 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pm@vger.kernel.org, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, quentin.perret@arm.com, mka@chromium.org,
 ionela.voinescu@arm.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the current state, the perf_domain struct is fully defined only when
CONFIG_ENERGY_MODEL=y. Since we need to write code that compiles both
with or without that option in the thermal framework, make sure to
actually define the struct regardless of the config option. That allows
to avoid using stubbed accessor functions all the time in code paths
that use the EM.

Signed-off-by: Quentin Perret <quentin.perret@arm.com>
---
 include/linux/energy_model.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/include/linux/energy_model.h b/include/linux/energy_model.h
index aa027f7bcb3e..fb32b86a467d 100644
--- a/include/linux/energy_model.h
+++ b/include/linux/energy_model.h
@@ -9,7 +9,6 @@
 #include <linux/sched/topology.h>
 #include <linux/types.h>
 
-#ifdef CONFIG_ENERGY_MODEL
 /**
  * em_cap_state - Capacity state of a performance domain
  * @frequency:	The CPU frequency in KHz, for consistency with CPUFreq
@@ -40,6 +39,7 @@ struct em_perf_domain {
 	unsigned long cpus[0];
 };
 
+#ifdef CONFIG_ENERGY_MODEL
 #define EM_CPU_MAX_POWER 0xFFFF
 
 struct em_data_callback {
@@ -160,7 +160,6 @@ static inline int em_pd_nr_cap_states(struct em_perf_domain *pd)
 }
 
 #else
-struct em_perf_domain {};
 struct em_data_callback {};
 #define EM_DATA_CB(_active_power_cb) { }
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
