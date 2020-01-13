Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF96D139B38
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:09:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qyzv03dvWnChOtkrVP2cVzkwMV+NfRIzVlSq1Gh5/Ps=; b=Z5MteYYPuABVKLQ5Gs0AJCEBIa
	wrARRlvqnt+PpHD2VEeSu7ZIlbRa18GVMa2Xvsvle0r7yBOVjN4Fq2Fw89lFMAgvDgccAabI3e1++
	U4Nl4r67vWjGuAiVeHb2E5n881YnjvyfcjNAwfguy5DJmGzQCERtmAvubocdUX2zL15VUCZdER/mP
	F9Zbg+gHVpn8THCW/2cTCcmFGpd0sA+M+7wveHZSdemhnN+OdAKti35jdWOyApnlVD3FwnVUf61bz
	c16D2Gjrou3aXOGYfVnTBCQo7QqLor/UatFl95dAlXQ+MwmNMiqyQ8ZBs2N3Z+hVjwMMVHIO24IYq
	nmIDWgFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6xy-0008Uu-Lp; Mon, 13 Jan 2020 21:09:42 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6wO-00079q-1K
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:08:05 +0000
Received: by mail-pj1-x1041.google.com with SMTP id bg7so4818436pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rOhBlNJi9zrxB4FIvl/Mh1uvf9WxyGooJc5KOiTW4C4=;
 b=fFNRMkJo4sm00mqmdW9+R0XDO7L77nGlx3ahfBF3j67d6gXqpk6gikR9CCTtDn8DKC
 u+4mWuM8BvBCwk8nZOT3HUpw1hg+i6B5j7DtR+3IU1TPGLEUEuC0SMCF6FAYq9ppauwe
 AT9LyA1CG/JU8Q7UvNneRngS6XaoHMtuq8V4qddt9jTwiPsD2h7MxKLKWlGdLBUoDzw7
 gZ+EXEtiYsZeylhK4wtG94imkgkclc8m090Xm5VT2fcgw0hrk1xk0QypqPqyeJ0Oqggn
 53D7Y4fkr1rLJ8rHeUFWaSyDEeY3Heks0+zOS3qgOkjLem+G2NkAbRHnzFjrcBJpr8SY
 gcaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rOhBlNJi9zrxB4FIvl/Mh1uvf9WxyGooJc5KOiTW4C4=;
 b=m+cubahYR6gd1cutU2tGGydvSdGqcL/V8WLF3oVPVfEbPIJxguA1xeVDX0qTeKq1dr
 koq3MsSpMbdWVk7XHFB16/v3lRsOMk4TYP0RATekYxMTe8DCrRgAwls0EkYeb8MnQLbw
 /z15FszZHAcxnHNHIgZ/O+ePbWqjZ9jhEqO/x9ZPkpTTQUYMoiN3iggQJIvDPj2Z1sYE
 N7b+k32JgsYpCDQeP7xvo/fzlYGMhvqVUjebyjt5VyC4rcMoy+rk0ilzj6Oqg1S2rcD1
 0FvGq75TNZzcgF9Yp2f6AAuDPgRTS3Jbz5N1DM83e5H+CaMal4FGR62T+BMBTlzGURKA
 FmaQ==
X-Gm-Message-State: APjAAAULpg76kLf4eTUZP/4nzDCi3iOaREovBzyZSCvPw0nHzISMLspC
 ZN6PMhx18hvMtyMuL1AbF7A=
X-Google-Smtp-Source: APXvYqx2patM7VBVBxwBeswjSO473DoUGIG2YsvJzVZ/PsXS9f3/IqWQa1b6UA762LZuyPV50J8bxw==
X-Received: by 2002:a17:90a:30a4:: with SMTP id
 h33mr24508794pjb.50.1578949683175; 
 Mon, 13 Jan 2020 13:08:03 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s1sm14195827pgv.87.2020.01.13.13.08.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:08:02 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 6/6] mmc: sdhci-brcmstb: Fix incorrect switch to HS mode
Date: Mon, 13 Jan 2020 16:07:06 -0500
Message-Id: <20200113210706.11972-7-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113210706.11972-1-alcooperx@gmail.com>
References: <20200113210706.11972-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_130804_176243_CC3D9A66 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Takao Orito <orito.takao@socionext.com>, Andrew Jeffery <andrew@aj.id.au>,
 YueHaibing <yuehaibing@huawei.com>, Al Cooper <alcooperx@gmail.com>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Faiz Abbas <faiz_abbas@ti.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Sowjanya Komatineni <skomatineni@nvidia.com>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When switching from any MMC speed mode that requires 1.8v
(HS200, HS400 and HS400ES) to High Speed (HS) mode, the system
ends up configured for SDR12 with a 50MHz clock which is an illegal
mode.

This happens because the SDHCI_CTRL_VDD_180 bit in the
SDHCI_HOST_CONTROL2 register is left set and when this bit is
set, the speed mode is controlled by the SDHCI_CTRL_UHS field
in the SDHCI_HOST_CONTROL2 register. The SDHCI_CTRL_UHS field
will end up being set to 0 (SDR12) by sdhci_set_uhs_signaling()
because there is no UHS mode being set.

The fix is to change sdhci_set_uhs_signaling() to set the
SDHCI_CTRL_UHS field to SDR25 (which is the same as HS) for
any switch to HS mode.

This was found on a new eMMC controller that does strict checking
of the speed mode and the corresponding clock rate. It caused the
switch to HS400 mode to fail because part of the sequence to switch
to HS400 requires a switch from HS200 to HS before going to HS400.

This issue was previously fixed by commit c894e33ddc191 ("mmc: sdhci:
Fix incorrect switch to HS mode") and later removed by commit
07bcc411567c ("Revert \"mmc: sdhci: Fix incorrect switch to HS mode\"")
because it caused failures with some SD cards on AM65X systems. The
fix will now be done in a platform specific callback instead of
common sdhci code.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
Suggested-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-brcmstb.c | 31 ++++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
index 2c4b6e7e3d9a..ad01f6451a95 100644
--- a/drivers/mmc/host/sdhci-brcmstb.c
+++ b/drivers/mmc/host/sdhci-brcmstb.c
@@ -65,6 +65,35 @@ static void sdhci_brcmstb_set_clock(struct sdhci_host *host, unsigned int clock)
 	sdhci_enable_clk(host, clk);
 }
 
+static void sdhci_brcmstb_set_uhs_signaling(struct sdhci_host *host,
+					    unsigned int timing)
+{
+	u16 ctrl_2;
+
+	dev_dbg(mmc_dev(host->mmc), "%s: Setting UHS signaling for %d timing\n",
+		__func__, timing);
+	ctrl_2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);
+	/* Select Bus Speed Mode for host */
+	ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
+	if ((timing == MMC_TIMING_MMC_HS200) ||
+	    (timing == MMC_TIMING_UHS_SDR104))
+		ctrl_2 |= SDHCI_CTRL_UHS_SDR104;
+	else if (timing == MMC_TIMING_UHS_SDR12)
+		ctrl_2 |= SDHCI_CTRL_UHS_SDR12;
+	else if (timing == MMC_TIMING_SD_HS ||
+		 timing == MMC_TIMING_MMC_HS ||
+		 timing == MMC_TIMING_UHS_SDR25)
+		ctrl_2 |= SDHCI_CTRL_UHS_SDR25;
+	else if (timing == MMC_TIMING_UHS_SDR50)
+		ctrl_2 |= SDHCI_CTRL_UHS_SDR50;
+	else if ((timing == MMC_TIMING_UHS_DDR50) ||
+		 (timing == MMC_TIMING_MMC_DDR52))
+		ctrl_2 |= SDHCI_CTRL_UHS_DDR50;
+	else if (timing == MMC_TIMING_MMC_HS400)
+		ctrl_2 |= SDHCI_CTRL_HS400; /* Non-standard */
+	sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);
+}
+
 static void sdhci_brcmstb_dumpregs(struct mmc_host *mmc)
 {
 	sdhci_dumpregs(mmc_priv(mmc));
@@ -101,7 +130,7 @@ static struct sdhci_ops sdhci_brcmstb_ops_7216 = {
 	.set_clock = sdhci_brcmstb_set_clock,
 	.set_bus_width = sdhci_set_bus_width,
 	.reset = sdhci_reset,
-	.set_uhs_signaling = sdhci_set_uhs_signaling,
+	.set_uhs_signaling = sdhci_brcmstb_set_uhs_signaling,
 };
 
 static struct brcmstb_match_priv match_priv_7425 = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
