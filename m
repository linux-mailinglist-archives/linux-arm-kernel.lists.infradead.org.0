Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8771328F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyTODaRA5SucrGWj5PVztvJG9yVd4KJu74PwplzR150=; b=Ni/sd79zCVgGGo
	kMtPqh85095hWzYeiambyjCv04vMMw/Oybko4Lu35wzob6KfSUFxaxv9eTTsT1QDp8uiP3fky+mB+
	ALdlVVYm7PYaviH+VwERQUoe5sVDXFCFILVTTHx63WnU8vinqIuYp4lnGeTcPYDQuSXWWY36L1mRm
	xx5nwGu+xGepLwGXELOQBYQc7FwkpjIOJwXqQBj2UAg77fSZ0p4CS/nF4t7FQ9ryj6KL4dMfI9aGR
	fUm2ZpzqZhJWys0c5WPBeh9L7d/TymKN80X2f7twXkgn3UMlug1c/0dNuR8R1+Nr4hMlTiEpF42qe
	tc4SwIEJlJKZzTpmIrFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbS9-0008T4-5k; Fri, 03 May 2019 16:54:29 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbRW-0007oF-FL
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:53:54 +0000
Received: by mail-ed1-x543.google.com with SMTP id p26so6781100edr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 09:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mUKYBeA7ET4vqRjNG0ORQtRPuOUTlJyWQvyqzvY85GQ=;
 b=fjjOJqX13hBff9Pqz1CdnYNSRkHFArX6JK/QHx/MbdIwnPsL3cFu7dh6ib0/hkvPWF
 ZrywTea+gG7fU0a6omm3QPMTUWR7zg4QKk1O8GimzjoZA/lgsmQhLW0s5CLYXT0dOhyc
 NOhV6foDGpVmokomgWx3q84ukwFNvflJzIG1SgH4l2M5jsqhk9eFMzswQQlBYUaUd1vq
 4XadtmK8QEOYue77vUGemQMLg5x2cjsoN6NgzAg9G4Cx3C3gTnKuOslpbG2V0OmvtEMy
 126mg14Es2tV9KSoMI/qb/hN3i9vaPe6IrjDuTnSgV07vL87HfQh7oXnZWi2WctufTqb
 RzAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mUKYBeA7ET4vqRjNG0ORQtRPuOUTlJyWQvyqzvY85GQ=;
 b=btnpLpo7fJvZ6nHJcqDLaaDz6rc72I4xrNnJKMZsCgizmrA5TuCmmcEeKKG0RjHknO
 7/Z4c4OIZe/Skg3ivn18t+JheSWXJQU+j9p9x4+cElYsigc/1btlM/i9mjbk4AaJmYR4
 uUmRidSnd8+wRo2v1UuiYQK7CXd8czddVFgs9LFonER42r7e7oOe8zJemHxlVqUiP29/
 J4a74W942Sp0cLl9yFrvBygczehwAV7naMJr4Pvzcv8aaBjIaJ1xlxB4UfgeeSAhw3U2
 w0M9anhuBjf0FEUXe/SLM3KfIDWIbq3mtsaS9jCKI2JIYZFAjM1+MLeBdjpmMxZzA+oh
 Y5pg==
X-Gm-Message-State: APjAAAUULHxJeyE5xNGv70UwMQoExx88s6aLaMaISD5dig3wU/XJrb80
 83LLqJ42GekctTejMK4WiOCUBA==
X-Google-Smtp-Source: APXvYqwso79I8sOgF9/Uyfyz8CiLS4rqN8+jOS+SSo7I58jQARx2l3BNArsuUtX417LEgsFJvAIpsA==
X-Received: by 2002:aa7:d8d1:: with SMTP id k17mr9786195eds.250.1556902428639; 
 Fri, 03 May 2019 09:53:48 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id j55sm707038ede.27.2019.05.03.09.53.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:53:48 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: gregkh@linuxfoundation.org, l.stach@pengutronix.de, peng.fan@nxp.com,
 shawnguo@kernel.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com
Subject: [PATCH v6 3/5] nvmem: imx-ocotp: Change TIMING calculation to u-boot
 algorithm
Date: Fri,  3 May 2019 17:53:40 +0100
Message-Id: <20190503165342.30139-4-pure.logic@nexus-software.ie>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503165342.30139-1-pure.logic@nexus-software.ie>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_095350_626671_BD76BD55 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 anson.huang@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, Bryan O'Donoghue <pure.logic@nexus-software.ie>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The RELAX field of the OCOTP block is turning out as a zero on i.MX8MM.
This messes up the subsequent re-load of the fuse shadow registers.

After some discussion with people @ NXP its clear we have missed a trick
here in Linux.

The OCOTP fuse programming time has a physical minimum 'burn time' that is
not related to the ipg_clk.

We need to define the RELAX, STROBE_READ and STROBE_PROG fields in terms of
desired timings to allow for the burn-in to safely complete. Right now only
the RELAX field is calculated in terms of an absolute time and we are
ending up with a value of zero.

This patch inherits the u-boot timings for the OCOTP_TIMING calculation on
the i.MX6 and i.MX8. Those timings are known to work and critically specify
values such as STROBE_PROG as a minimum timing.

Fixes: 0642bac7da42 ("nvmem: imx-ocotp: add write support")

Signed-off-by: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Suggested-by: Leonard Crestez <leonard.crestez@nxp.com>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/nvmem/imx-ocotp.c | 36 ++++++++++++++++++++++++++++++++----
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 85a7d0da3abb..2c5009691dd6 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -50,7 +50,9 @@
 #define IMX_OCOTP_BM_CTRL_ERROR		0x00000200
 #define IMX_OCOTP_BM_CTRL_REL_SHADOWS	0x00000400
 
-#define DEF_RELAX			20	/* > 16.5ns */
+#define TIMING_STROBE_PROG_US		10	/* Min time to blow a fuse */
+#define TIMING_STROBE_READ_NS		37	/* Min time before read */
+#define TIMING_RELAX_NS			17
 #define DEF_FSOURCE			1001	/* > 1000 ns */
 #define DEF_STROBE_PROG			10000	/* IPG clocks */
 #define IMX_OCOTP_WR_UNLOCK		0x3E770000
@@ -182,12 +184,38 @@ static void imx_ocotp_set_imx6_timing(struct ocotp_priv *priv)
 	 * fields with timing values to match the current frequency of the
 	 * ipg_clk. OTP writes will work at maximum bus frequencies as long
 	 * as the HW_OCOTP_TIMING parameters are set correctly.
+	 *
+	 * Note: there are minimum timings required to ensure an OTP fuse burns
+	 * correctly that are independent of the ipg_clk. Those values are not
+	 * formally documented anywhere however, working from the minimum
+	 * timings given in u-boot we can say:
+	 *
+	 * - Minimum STROBE_PROG time is 10 microseconds. Intuitively 10
+	 *   microseconds feels about right as representative of a minimum time
+	 *   to physically burn out a fuse.
+	 *
+	 * - Minimum STROBE_READ i.e. the time to wait post OTP fuse burn before
+	 *   performing another read is 37 nanoseconds
+	 *
+	 * - Minimum RELAX timing is 17 nanoseconds. This final RELAX minimum
+	 *   timing is not entirely clear the documentation says "This
+	 *   count value specifies the time to add to all default timing
+	 *   parameters other than the Tpgm and Trd. It is given in number
+	 *   of ipg_clk periods." where Tpgm and Trd refer to STROBE_PROG
+	 *   and STROBE_READ respectively. What the other timing parameters
+	 *   are though, is not specified. Experience shows a zero RELAX
+	 *   value will mess up a re-load of the shadow registers post OTP
+	 *   burn.
 	 */
 	clk_rate = clk_get_rate(priv->clk);
 
-	relax = clk_rate / (1000000000 / DEF_RELAX) - 1;
-	strobe_prog = clk_rate / (1000000000 / 10000) + 2 * (DEF_RELAX + 1) - 1;
-	strobe_read = clk_rate / (1000000000 / 40) + 2 * (DEF_RELAX + 1) - 1;
+	relax = DIV_ROUND_UP(clk_rate * TIMING_RELAX_NS, 1000000000) - 1;
+	strobe_read = DIV_ROUND_UP(clk_rate * TIMING_STROBE_READ_NS,
+				   1000000000);
+	strobe_read += 2 * (relax + 1) - 1;
+	strobe_prog = DIV_ROUND_CLOSEST(clk_rate * TIMING_STROBE_PROG_US,
+					1000000);
+	strobe_prog += 2 * (relax + 1) - 1;
 
 	timing = readl(priv->base + IMX_OCOTP_ADDR_TIMING) & 0x0FC00000;
 	timing |= strobe_prog & 0x00000FFF;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
