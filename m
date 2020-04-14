Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 519551A8C20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNcR8YNn8r9m64eirLjrAWiZ9vZr6Vyvc5b6NEvVrw8=; b=f5+iPGm+VaA0RU
	Oy4JTLRveoEB4yKcIuvc1E5JcIlVfNfagEDbLUB3c6zbB3qqa+dLY3pUnrqzfW5y06PQfhGM4b458
	yL1tPj01dWRYQCVGBnV+MrhiYRnkYakaGsqP2hFw0kfnr2Y7+6wxDy78IZsmzUJfUTlsyzahQbBQT
	UGRA0Bh9jPlk9koNLGMVUHvNLZIc12SJJvXSa01dho7RuHzvmcWafW12VN3M4cAqtMPwIgOJ+00lC
	8M9fGOIF5B9WFeuu3Qm8sf2kvDCkxXG4YkKFq816oBLYwl+4LjVI7XVxDYeadxSWRZcc7M7TwAiPm
	jQC+s4d+ima5P/szD7xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jORzA-0001Pa-9C; Tue, 14 Apr 2020 20:16:44 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jORy0-0008QT-NX; Tue, 14 Apr 2020 20:15:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id k1so8824348wrx.4;
 Tue, 14 Apr 2020 13:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f8em9AvrfAEpxaMHqaLgGhBy4pxjXY2ZYYbHJqjrLMg=;
 b=p7rlS3alBsKhovayyBNnkQ0iz2zy0XG2rkJ8Jqk9nlveJ9HaG5AQMr6F8A7ikQRJIb
 elQxE+v8thegARaELzvq1uMiWFN+0ukpQixd/GB/8F5SozMEKMScpIypGPBQCyL749i6
 nLuQ0dxqpf8ssW6No4SomInpszp5Y3nQOkm+6snZbYd1sUN4r7vo8jFqOSYFq68L7Tv5
 BTP5XCM9woJjxuHxcV0NJBem3XLLthExt3XdzggJuZLy/LnyK5Tl7Vwh7ZQyXgqd9Shi
 mxeNUBAr4mpcrES+UoX/2C0xTZodFUn1LSJDXNEzOgUm8hHk62UtBcQdflxbe6gbdoO2
 I7eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f8em9AvrfAEpxaMHqaLgGhBy4pxjXY2ZYYbHJqjrLMg=;
 b=adZrPpo0dIkTCOlX9AMXaTz3Hr2TuOdrptgS++URWWdv1qwOs0xzqFxFxC3K3g5918
 YOinm+vNubhOX5S9JFC/IWGsCi7MKTRfFkS90o9AeXxVRvzL0oHPDtsZjHQJ+2qvuSTc
 uv/nolk5WLzh2ClQb/YdJAg2Jg8wzkDNQanJvHZHglJmFfE3Gi4risn5iC50mwK4sTCU
 x3cTx0qwPPMCQ4q02eBTOP2CAt2wKQnen66v7XVVGMKJzfKkwRfGTxoCZbbhLVZTED8X
 4BBSFr15+d4mmVVPf9tZH18oYEONg7wZ4D89vxoRriCniZ+mFjtfcK/75k900yOkCBqS
 fKSg==
X-Gm-Message-State: AGi0PuaFGSEgEKrRN7L2M2FKVFPCjtTOhEzed8n8yehM9LR31uIpmdjG
 0iemtITvMWE0VEpo9Nppxys=
X-Google-Smtp-Source: APiQypLSLEwSPL5qqaWeTy+hFwnxC3rU6QWDzoXHJjL6U8WkB7JbZKQC72Kvwv6oiWG7P8TN4G5xyg==
X-Received: by 2002:a5d:438c:: with SMTP id i12mr13368428wrq.14.1586895331421; 
 Tue, 14 Apr 2020 13:15:31 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13717DF00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3717:df00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id u17sm22537467wra.63.2020.04.14.13.15.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 13:15:30 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, khilman@baylibre.com, narmstrong@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH RFC v1 4/4] soc: amlogic: meson-ee-pwrc: add support for the
 Meson GX SoCs
Date: Tue, 14 Apr 2020 22:14:57 +0200
Message-Id: <20200414201457.229131-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414201457.229131-1-martin.blumenstingl@googlemail.com>
References: <20200414201457.229131-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_131532_811055_1B10E4AC 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the Meson GX SoCs to the meson-ee-pwrc driver.

The power domains on the GX SoCs are very similar to G12A. The only
known differences so far are:
- The GX SoCs do not have the HHI_VPU_MEM_PD_REG2 register (for the
  VPU power-domain)
- The GX SoCs have an additional reset line called "dvin"

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/soc/amlogic/meson-ee-pwrc.c | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/amlogic/meson-ee-pwrc.c b/drivers/soc/amlogic/meson-ee-pwrc.c
index b30868da456a..c8fbdc8f5c1d 100644
--- a/drivers/soc/amlogic/meson-ee-pwrc.c
+++ b/drivers/soc/amlogic/meson-ee-pwrc.c
@@ -16,6 +16,7 @@
 #include <linux/clk.h>
 #include <dt-bindings/power/meson8-power.h>
 #include <dt-bindings/power/meson-g12a-power.h>
+#include <dt-bindings/power/meson-gxbb-power.h>
 #include <dt-bindings/power/meson-sm1-power.h>
 
 /* AO Offsets */
@@ -73,7 +74,7 @@ struct meson_ee_pwrc_domain_data {
 
 /* TOP Power Domains */
 
-static struct meson_ee_pwrc_top_domain g12a_pwrc_vpu = {
+static struct meson_ee_pwrc_top_domain gxbb_pwrc_vpu = {
 	.sleep_reg = AO_RTI_GEN_PWR_SLEEP0,
 	.sleep_mask = BIT(8),
 	.iso_reg = AO_RTI_GEN_PWR_SLEEP0,
@@ -138,6 +139,12 @@ static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_vpu[] = {
 	VPU_HHI_MEMPD(HHI_MEM_PD_REG0),
 };
 
+static struct meson_ee_pwrc_mem_domain gxbb_pwrc_mem_vpu[] = {
+	VPU_MEMPD(HHI_VPU_MEM_PD_REG0),
+	VPU_MEMPD(HHI_VPU_MEM_PD_REG1),
+	VPU_HHI_MEMPD(HHI_MEM_PD_REG0),
+};
+
 static struct meson_ee_pwrc_mem_domain meson8_pwrc_mem_eth[] = {
 	{ HHI_MEM_PD_REG0, GENMASK(3, 2) },
 };
@@ -223,11 +230,17 @@ static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_audio[] = {
 static bool pwrc_ee_get_power(struct meson_ee_pwrc_domain *pwrc_domain);
 
 static struct meson_ee_pwrc_domain_desc g12a_pwrc_domains[] = {
-	[PWRC_G12A_VPU_ID]  = VPU_PD("VPU", &g12a_pwrc_vpu, g12a_pwrc_mem_vpu,
+	[PWRC_G12A_VPU_ID]  = VPU_PD("VPU", &gxbb_pwrc_vpu, g12a_pwrc_mem_vpu,
 				     pwrc_ee_get_power, 11, 2),
 	[PWRC_G12A_ETH_ID] = MEM_PD("ETH", meson8_pwrc_mem_eth),
 };
 
+static struct meson_ee_pwrc_domain_desc gxbb_pwrc_domains[] = {
+	[PWRC_GXBB_VPU_ID]  = VPU_PD("VPU", &gxbb_pwrc_vpu, gxbb_pwrc_mem_vpu,
+				     pwrc_ee_get_power, 12, 2),
+	[PWRC_GXBB_ETH_ID] = MEM_PD("ETH", meson8_pwrc_mem_eth),
+};
+
 static struct meson_ee_pwrc_domain_desc meson8_pwrc_domains[] = {
 	[PWRC_MESON8_VPU_ID]  = VPU_PD("VPU", &meson8_pwrc_vpu,
 				       meson8_pwrc_mem_vpu, pwrc_ee_get_power,
@@ -514,6 +527,11 @@ static struct meson_ee_pwrc_domain_data meson_ee_g12a_pwrc_data = {
 	.domains = g12a_pwrc_domains,
 };
 
+static struct meson_ee_pwrc_domain_data meson_ee_gxbb_pwrc_data = {
+	.count = ARRAY_SIZE(gxbb_pwrc_domains),
+	.domains = gxbb_pwrc_domains,
+};
+
 static struct meson_ee_pwrc_domain_data meson_ee_m8_pwrc_data = {
 	.count = ARRAY_SIZE(meson8_pwrc_domains),
 	.domains = meson8_pwrc_domains,
@@ -542,6 +560,10 @@ static const struct of_device_id meson_ee_pwrc_match_table[] = {
 		.compatible = "amlogic,meson8m2-pwrc",
 		.data = &meson_ee_m8b_pwrc_data,
 	},
+	{
+		.compatible = "amlogic,meson-gxbb-pwrc",
+		.data = &meson_ee_gxbb_pwrc_data,
+	},
 	{
 		.compatible = "amlogic,meson-g12a-pwrc",
 		.data = &meson_ee_g12a_pwrc_data,
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
