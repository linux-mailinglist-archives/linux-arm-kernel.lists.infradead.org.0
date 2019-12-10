Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2EC1199AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:49:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iXQoO2Hyk5FYHnlmsYVM8PyS/68tUZeK6h4C6Hc0EhM=; b=oi3SII5+yr2NY4BQ4R8qTsvEEP
	hZq2WVeCkvHUANCu0KIOSuxFucI3X0fxt+v6nCivSbX/DIe1VmWCEkuSQ3Y0njZD0tO2SmdIgx559
	njWBOxBFdqXKbEFPy8Bq0PQczxIIB353Feco1dje55VvshEp4H4bz4Lvs9I58Om6yqRNA1IrWrL93
	W3PPpY1ymhT0Otuj37VlHyG/Rkqf62dUB8tiLTumoExGWaKBRu8Vkb7rAvVj1JTpirsL7ziuDaaA2
	xe39NTAfQh8JddMlcGL1zwbOWzOEmWlrq5zqWKJ7K6t9eKJIO+aB2ijKs7XRWPHZ4BZPhIKaJOT6A
	hbIjD0Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ienOH-0002fS-DQ; Tue, 10 Dec 2019 21:49:57 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienNu-0002We-Lc
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:49:36 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 52F821A05FD;
 Tue, 10 Dec 2019 22:49:32 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 470BB1A0208;
 Tue, 10 Dec 2019 22:49:32 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id ED13120567;
 Tue, 10 Dec 2019 22:49:31 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Anson Huang <Anson.Huang@nxp.com>
Subject: [PATCH 1/2] ARM: imx: Fix boot crash if ocotp is not found
Date: Tue, 10 Dec 2019 23:49:28 +0200
Message-Id: <68b9e3bc9c60c89017648bf3abe150fd0abbde86.1576014367.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1576014367.git.leonard.crestez@nxp.com>
References: <cover.1576014367.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1576014367.git.leonard.crestez@nxp.com>
References: <cover.1576014367.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_134934_844701_0F2DFFCB 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The imx_soc_device_init functions tries to fetch the ocotp regmap in
order to soc serial number. If regmap fetch fails then a message is
printed but regmap_read is called anyway and the system crashes.

Failing to lookup ocotp regmap shouldn't be a fatal boot error so check
that the pointer is valid.

Only side-effect of ocotp lookup failure now is that serial number will
be reported as all-zeros which is acceptable.

Cc: stable@vger.kernel.org
Fixes: 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm/mach-imx/cpu.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index d70b6fc72b35..484bf6cdb363 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -87,11 +87,11 @@ struct device * __init imx_soc_device_init(void)
 {
 	struct soc_device_attribute *soc_dev_attr;
 	const char *ocotp_compat = NULL;
 	struct soc_device *soc_dev;
 	struct device_node *root;
-	struct regmap *ocotp;
+	struct regmap *ocotp = NULL;
 	const char *soc_id;
 	u64 soc_uid = 0;
 	u32 val;
 	int ret;
 
@@ -179,11 +179,13 @@ struct device * __init imx_soc_device_init(void)
 
 	if (ocotp_compat) {
 		ocotp = syscon_regmap_lookup_by_compatible(ocotp_compat);
 		if (IS_ERR(ocotp))
 			pr_err("%s: failed to find %s regmap!\n", __func__, ocotp_compat);
+	}
 
+	if (!IS_ERR_OR_NULL(ocotp)) {
 		if (__mxc_cpu_type == MXC_CPU_IMX7ULP) {
 			regmap_read(ocotp, OCOTP_ULP_UID_4, &val);
 			soc_uid = val & 0xffff;
 			regmap_read(ocotp, OCOTP_ULP_UID_3, &val);
 			soc_uid <<= 16;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
