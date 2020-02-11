Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1226158A4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 08:25:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=flTJ1+grHUGIlSRdDgwzHWS7AnO4dz6jVIrBb1Nh3ck=; b=jq8OFICVH8YSfT
	qAb+w+qaYLGkm96CyUazx/lA0Bf0MyigFFcmg3wJX73nD0B/vrIPkMgymNOvEhTCH1xFaWda9BuH7
	KsJ6mcsY8EmkiDTIdAiRgxraMhJM1jefTmWbquBXQGeKPdonXwk1pp/pCKCerGrcGqEQ8qg4Bhp3M
	QbPWy3y5ygjhNuNQkn5E6LdWLzF2vpk4Qxj4DTxHQO+8/d9HUCYLWM6quDFCRvI+lBxv1KHQ+ah6M
	NFQfIstmkaARp2M5Hbggeg+RubW4xc+IN4txH+BUzE6A5VVqcVoQNiPe6x0ERx/04JwUIt+DBw0HC
	TJ6Sb2W8tDMe9GhoAB8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Pus-0007xk-Ri; Tue, 11 Feb 2020 07:25:06 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Puf-0007x9-TN
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 07:24:56 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01B7OntF041310;
 Tue, 11 Feb 2020 01:24:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581405889;
 bh=t1zdbUy3wKpxVvWbk6TLsJ4+AsPZpXT7Lus31I/HQg8=;
 h=From:To:CC:Subject:Date;
 b=FQMHv87RWk0WDhxvUR0HWabGYDugs4YTBqqd0rv4njnv3N/mlv0V7EUy6abckCTbv
 cycWkmrz/sA3lddxTOcpy4kKXpCaCSZSGVzukceGM05dKpryyB7RqWdBTlport/qp8
 tb7NOEGiRJhVv/hf6xy95mbn0o5u7CPQ95BVia/k=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01B7OnI7050682
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Feb 2020 01:24:49 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 11
 Feb 2020 01:24:48 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 11 Feb 2020 01:24:48 -0600
Received: from uda0131933.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01B7OjYI129498;
 Tue, 11 Feb 2020 01:24:46 -0600
From: Lokesh Vutla <lokeshvutla@ti.com>
To: <viresh.kumar@linaro.org>, <linux-pm@vger.kernel.org>
Subject: [PATCH] cpufreq: ti-cpufreq: Add support for OPP_PLUS
Date: Tue, 11 Feb 2020 12:53:55 +0530
Message-ID: <20200211072355.5476-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_232454_027345_1FCB05D6 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tero Kristo <t-kristo@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Dave Gerlach <d-gerlach@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DRA762 SoC introduces OPP_PLUS which runs at 1.8GHz. Add
support for this OPP in ti-cpufreq driver.

Acked-by: Dave Gerlach <d-gerlach@ti.com>
Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 drivers/cpufreq/ti-cpufreq.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/cpufreq/ti-cpufreq.c b/drivers/cpufreq/ti-cpufreq.c
index 557cb513bf7f..ab0de27539ad 100644
--- a/drivers/cpufreq/ti-cpufreq.c
+++ b/drivers/cpufreq/ti-cpufreq.c
@@ -25,11 +25,14 @@
 
 #define DRA7_EFUSE_HAS_OD_MPU_OPP		11
 #define DRA7_EFUSE_HAS_HIGH_MPU_OPP		15
+#define DRA76_EFUSE_HAS_PLUS_MPU_OPP		18
 #define DRA7_EFUSE_HAS_ALL_MPU_OPP		23
+#define DRA76_EFUSE_HAS_ALL_MPU_OPP		24
 
 #define DRA7_EFUSE_NOM_MPU_OPP			BIT(0)
 #define DRA7_EFUSE_OD_MPU_OPP			BIT(1)
 #define DRA7_EFUSE_HIGH_MPU_OPP			BIT(2)
+#define DRA76_EFUSE_PLUS_MPU_OPP		BIT(3)
 
 #define OMAP3_CONTROL_DEVICE_STATUS		0x4800244C
 #define OMAP3_CONTROL_IDCODE			0x4830A204
@@ -80,6 +83,10 @@ static unsigned long dra7_efuse_xlate(struct ti_cpufreq_data *opp_data,
 	 */
 
 	switch (efuse) {
+	case DRA76_EFUSE_HAS_PLUS_MPU_OPP:
+	case DRA76_EFUSE_HAS_ALL_MPU_OPP:
+		calculated_efuse |= DRA76_EFUSE_PLUS_MPU_OPP;
+		/* Fall through */
 	case DRA7_EFUSE_HAS_ALL_MPU_OPP:
 	case DRA7_EFUSE_HAS_HIGH_MPU_OPP:
 		calculated_efuse |= DRA7_EFUSE_HIGH_MPU_OPP;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
