Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76E9158DDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:01:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hB28AJfeLcXVy72jooH++lQ/xgdSX414WE5ipneh49Y=; b=BwZpTCnz3K5vBp
	BktFiGUHn8a15jO2k8GS+4TLSl+5hhilX8JbNSaGWyYDcToA5XAVxLGKwBlaNRPQMIpKETazt5h9S
	8ddImBcRujD7iLuStIe+i2amlqKoqN1D/X6mnmsamnNIXTiO9FQcHZ5kU1bYY2g8nUiBPgnTPW6gD
	uMN3K0rCjH3d3R8K7W2pkzjjCX7yX65Wq8mfwVAwu27ZvnFzuPFykR1ZP5gSbRtAMSg+gVGJFqx42
	7XOU11M9VNN+4Xu/XxYpgGvMeCasfkuuDCyxqbas42/Sy+2R+8gIQT/CxHwPxQljbgoiKasniQrSR
	xglpd4fAJ4GVngXv3RHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UE9-0001AY-E6; Tue, 11 Feb 2020 12:01:17 +0000
Received: from securetransport.cubewerk.de ([188.68.39.254])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1UE2-0001A5-NV
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:01:12 +0000
Received: from DHPWEX01.DH-ELECTRONICS.ORG (unknown [188.192.239.38])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by securetransport.cubewerk.de (Postfix) with ESMTPSA id 8227D5E96D;
 Tue, 11 Feb 2020 13:00:28 +0100 (CET)
Received: from DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.397.3; 
 Tue, 11 Feb 2020 13:00:08 +0100
Received: from Stretch.dh-electronics.org (10.64.6.183) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.397.3
 via Frontend Transport; Tue, 11 Feb 2020 13:00:08 +0100
From: Christoph Niedermaier <cniedermaier@dh-electronics.com>
To: <linux-arm-kernel@lists.infradead.org>, <rjw@rjwysocki.net>
Subject: [PATCH] cpufreq: imx6q: Fixes unwanted cpu overclocking on i.MX6ULL
Date: Tue, 11 Feb 2020 12:58:07 +0100
Message-ID: <20200211115807.57292-1-cniedermaier@dh-electronics.com>
X-Mailer: git-send-email 2.11.0
X-klartext: yes
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_040110_912357_7536541F 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.68.39.254 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>,
 Anson.Huang@nxp.com, viresh.kumar@linaro.org, shawnguo@kernel.org,
 festevam@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

imx6ul_opp_check_speed_grading is called for both i.MX6UL and i.MX6ULL.
Since the i.MX6ULL was introduced to a separate ocotp compatible node
later, it is possible that the i.MX6ULL has also dtbs with
"fsl,imx6ull-ocotp". On a system without nvmem-cell speed grade a
missing check on this node causes a driver fail without considering
the cpu speed grade.

This patch prevents unwanted cpu overclocking on i.MX6ULL with compatible
node "fsl,imx6ull-ocotp" in old dtbs without nvmem-cell speed grade.

Fixes: 2733fb0d0699 ("cpufreq: imx6q: read OCOTP through nvmem for imx6ul/imx6ull")
Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
---
 drivers/cpufreq/imx6q-cpufreq.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/cpufreq/imx6q-cpufreq.c b/drivers/cpufreq/imx6q-cpufreq.c
index 648a09a1778a..1fcbbd53a48a 100644
--- a/drivers/cpufreq/imx6q-cpufreq.c
+++ b/drivers/cpufreq/imx6q-cpufreq.c
@@ -281,6 +281,9 @@ static int imx6ul_opp_check_speed_grading(struct device *dev)
 
 		np = of_find_compatible_node(NULL, NULL, "fsl,imx6ul-ocotp");
 		if (!np)
+			np = of_find_compatible_node(NULL, NULL,
+						     "fsl,imx6ull-ocotp");
+		if (!np)
 			return -ENOENT;
 
 		base = of_iomap(np, 0);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
