Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C68F1B21AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7NNf78um+OVkwEZkIHZD4/ZAEKKvKi/klgdvEE5LkFU=; b=GdmaPOs6eETzBgP3Ap9zpsfPV9
	S/5yklcZsMx7j6IcuRXcpewLMnZHKIGEV7tQzxQ5atRx/NOGXY39jwE2PrYJhf3Q2S6YpqOu8alZR
	g8La9uOSzIYTjUMRXYAUXQPNU3+DtypocAwKlGl8yqghdI+iPhT9ScEABHtT3fA2yaANSEuNelcZn
	uUpty7W/v6A4Id1O55HilsUlXj18BTLE5J/1urjBWH0OPK1Ec41i+NNLDscr5IYYsXz37nbe71B09
	1NvmmiPERARqgQ12pflYjCIxvka0vZJoqbJscgglCfW6U8LdQBIOGN28gAQg26I0TvmQCAqHqFtr1
	mQKRE2vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQoJ6-0000Nm-O1; Tue, 21 Apr 2020 08:31:04 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQoId-0000AA-Sf
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:30:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A3046ACAE;
 Tue, 21 Apr 2020 08:30:33 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-pm@vger.kernel.org, andy.tang@nxp.com, sboyd@kernel.org,
 linux-clk@vger.kernel.org, rjw@rjwysocki.net, shawnguo@kernel.org,
 leoyang.li@nxp.com
Subject: [PATCH v2 2/2] clk: qoriq: add cpufreq platform device
Date: Tue, 21 Apr 2020 10:30:00 +0200
Message-Id: <20200421083000.16740-2-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200421083000.16740-1-ykaukab@suse.de>
References: <20200421083000.16740-1-ykaukab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_013036_110876_E8CAE299 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mian Yousaf Kaukab <ykaukab@suse.de>, viresh.kumar@linaro.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a platform device for qoirq-cpufreq driver for the compatible
clockgen blocks.

Reviewed-by: Yuantian Tang <andy.tang@nxp.com>
Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
v2:
 +Rafael, Stephen, linux-clk
 Add Reviewed-by and Acked-by tags

 drivers/clk/clk-qoriq.c | 30 +++++++++++++++++++++++++++---
 1 file changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/clk-qoriq.c b/drivers/clk/clk-qoriq.c
index d5946f7486d6..374afcab89af 100644
--- a/drivers/clk/clk-qoriq.c
+++ b/drivers/clk/clk-qoriq.c
@@ -95,6 +95,7 @@ struct clockgen {
 };
 
 static struct clockgen clockgen;
+static bool add_cpufreq_dev __initdata;
 
 static void cg_out(struct clockgen *cg, u32 val, u32 __iomem *reg)
 {
@@ -1019,7 +1020,7 @@ static void __init create_muxes(struct clockgen *cg)
 	}
 }
 
-static void __init clockgen_init(struct device_node *np);
+static void __init _clockgen_init(struct device_node *np, bool legacy);
 
 /*
  * Legacy nodes may get probed before the parent clockgen node.
@@ -1030,7 +1031,7 @@ static void __init clockgen_init(struct device_node *np);
 static void __init legacy_init_clockgen(struct device_node *np)
 {
 	if (!clockgen.node)
-		clockgen_init(of_get_parent(np));
+		_clockgen_init(of_get_parent(np), true);
 }
 
 /* Legacy node */
@@ -1447,7 +1448,7 @@ static bool __init has_erratum_a4510(void)
 }
 #endif
 
-static void __init clockgen_init(struct device_node *np)
+static void __init _clockgen_init(struct device_node *np, bool legacy)
 {
 	int i, ret;
 	bool is_old_ls1021a = false;
@@ -1516,12 +1517,35 @@ static void __init clockgen_init(struct device_node *np)
 		       __func__, np, ret);
 	}
 
+	/* Don't create cpufreq device for legacy clockgen blocks */
+	add_cpufreq_dev = !legacy;
+
 	return;
 err:
 	iounmap(clockgen.regs);
 	clockgen.regs = NULL;
 }
 
+static void __init clockgen_init(struct device_node *np)
+{
+	_clockgen_init(np, false);
+}
+
+static int __init clockgen_cpufreq_init(void)
+{
+	struct platform_device *pdev;
+
+	if (add_cpufreq_dev) {
+		pdev = platform_device_register_simple("qoriq-cpufreq", -1,
+				NULL, 0);
+		if (IS_ERR(pdev))
+			pr_err("Couldn't register qoriq-cpufreq err=%ld\n",
+				PTR_ERR(pdev));
+	}
+	return 0;
+}
+device_initcall(clockgen_cpufreq_init);
+
 CLK_OF_DECLARE(qoriq_clockgen_1, "fsl,qoriq-clockgen-1.0", clockgen_init);
 CLK_OF_DECLARE(qoriq_clockgen_2, "fsl,qoriq-clockgen-2.0", clockgen_init);
 CLK_OF_DECLARE(qoriq_clockgen_b4420, "fsl,b4420-clockgen", clockgen_init);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
