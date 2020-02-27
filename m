Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654B01716F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:19:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BKiVrn9M1PTc7W+fcT6Q9RUu8v1zi5Tmhl/wHwRyExo=; b=Yi3aKP69mXnZgV
	F1dSKuANGQs5eXddKAdCgJgYMiCBjV6Mx/p+dVTUZw5IgNUShvq1rI+wPjJTOsdY5/S35PxYPH65h
	DwQTRHlVN1SfY4WLdcJJ1xGn3ZZr9DDSq0e3fjxsx2Pwf4HDn15qSN3yNpgM38/OU0vKO0vW3tcHW
	IDG0t7yz6ZisnqQtFGXQy5S8TGINM+jHtjvVzxhs85pzAKhkeJGx8OAKWVxwcxIm5cojlzKJoAgKj
	y047DkHGAEBR+FELDsOGRFYXtzHaAIfkICN2ZUuqmD3z6zNLGq5zrNjZnPyyNlaFJDF1Cxijwx7Ae
	uO64fByh95Vs50dvviAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7I8K-00086V-1Q; Thu, 27 Feb 2020 12:19:16 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7I8A-000860-Pa
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:19:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cxRWl4iygWCd5L7NHM7xlXTbfcODNKfUbcRP/HfvzfE=; b=fuVmNTjjLQntSrX2JbWGV40TU2
 u5RGclQIxqtdm1cMNNjbvsaMgBH0eDH3i1fOX8tdEDLOb246JiItTF8G0Pqp2mi7OqDi34e+Aut+W
 x/0UBruZKn+9TlAxhhT+l3bqrsB3UuqfGTyFCCPwFnOtUnDtumrp71OuZhaSWeSAV4RxEFFPAiVTL
 qskasJNfpCahSeh6aFZ+TuU5eZ0ZLMjVkdmUWJenCanvcmnNxVAy2Kz8zQC+hoZPrMUbwvcqyeEk1
 naO7XZBslhafwT60cqczc3qfgJLMIfTrHHryOgYBYDQB8lwk76GkTgWqQ0fHaoUfHjTX/JMwEl0tP
 mnkAWVSg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:58348 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7I7v-0005SJ-Od; Thu, 27 Feb 2020 12:18:51 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7I7v-0004dS-5u; Thu, 27 Feb 2020 12:18:51 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] ARM: dts: imx6qdl-sr-som-ti: indicate powering off wifi is
 safe
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j7I7v-0004dS-5u@rmk-PC.armlinux.org.uk>
Date: Thu, 27 Feb 2020 12:18:51 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_041906_826921_598F30C8 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need to indicate that powering off the TI WiFi is safe, to avoid:

wl18xx_driver wl18xx.2.auto: Unbalanced pm_runtime_enable!
wl1271_sdio mmc0:0001:2: wl12xx_sdio_power_on: failed to get_sync(-13)

which prevents the WiFi being functional.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/boot/dts/imx6qdl-sr-som-ti.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx6qdl-sr-som-ti.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som-ti.dtsi
index 44a97ba93a95..352ac585ca6b 100644
--- a/arch/arm/boot/dts/imx6qdl-sr-som-ti.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sr-som-ti.dtsi
@@ -153,6 +153,7 @@
 	bus-width = <4>;
 	keep-power-in-suspend;
 	mmc-pwrseq = <&pwrseq_ti_wifi>;
+	cap-power-off-card;
 	non-removable;
 	vmmc-supply = <&vcc_3v3>;
 	/* vqmmc-supply = <&nvcc_sd1>; - MMC layer doesn't like it! */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
