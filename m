Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EE96C1C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=alaLxJ++DbKUVYJx0gNwpImGZhdhPEtFviW6wkgmu0o=; b=D5oh6U3zY7/J5EGeB537on1J6c
	y73z1QVpPyNhg+O4I6E06aBXWboAA+X8tpoSne3l5F+BI9euY8uUrnAQVwJvcNnoV860l13dk5j7Z
	+slAWmMRljk9e+ksa7tRu/TGOdFKqiB9QBN5H1w3nA3CyYcosaNMLB7l8ILo61dKKV5K7LKc/FkFh
	5Dv5BB716b46PNirGp98VwUMON3f8bAZTfZE0YqoJuYZdC4LkfDeVBTCRJfN01Rp764DazmYkYpRo
	EYgCxhd89beuKiDU5ed7picAhGV0MazAxfvJZYYqYEVFN9TUhbpDgbTmJFM72OUL8o5EaIIO/6yXu
	qo5IxVWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnq1Y-0007VI-IV; Wed, 17 Jul 2019 19:55:36 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx3-0002tL-90; Wed, 17 Jul 2019 19:51:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393044;
 bh=R9brMAk7TYtzYQPh2zNgNq7URsVol2j16aDqED3oRj8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=fOG4rbRjsAk1NsQ2JoRn48422d5imwY/rZvgEetewYNI6hV/wMGFgXlnQ5OYRFgVW
 wZ3of7YWTleKShERN9JY9HmYqJ6hNywEjhjzn4sUs8uGdSB6gPz2egCyIxrIUwX+Ad
 deEaEuF3GqKwYpNbr9tXGkwyTkRFXDKADJA4/Tvg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LlqNY-1iNAlY06Ua-00ZRHT; Wed, 17 Jul 2019 21:50:44 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 07/18] clk: bcm2835: Add BCM2838_CLOCK_EMMC2 support
Date: Wed, 17 Jul 2019 21:50:15 +0200
Message-Id: <1563393026-17118-8-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:wBXTrd+q4tE1UkS/4oFb93izCQy8kYwkLZTmkyTdzGs+hz+TH3d
 Fxc4MBR1loExiXjomd0ZMTEo31jMJl/FmkYLZAuyX/Doj4aCey4Eg7Iph/g61a0Ak23O/R6
 uuK/uhecjgHHdQPuKN74wIGMhKxQ8S/4enIst2HhrOmEyH6Nn3tRX0cpTqlVDvxp5d9+KKw
 uSCl7mIVBwe+mD4AQwBLQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vGIp4TJST88=:arugvaM5LrSwYEzsFAx5Py
 l+1DaLQ659uZ3kSs8VqOS4U3S/CJW24xpb+Qa3wa+N5TRSTSpBc4eZcq3PCIAsRubuUFO6BbV
 3kFNTNHH3ZjqyuirWjBsBhOGn4bg4JcPDRs+DkUMCsO79LtOCerUq6wRiK3G/g+y9u4C6Nlhn
 +YsS6aIo4V1t0gfcuHrpiw27kU+3Kf3pFff2k+TYXANJ9vBR0QfW+UaWOBUNBwoTyqNrn8qxH
 YiDZUYquwFUKldus8pENQSlgvyMKi+/YLAlkHpqXujS5khhx5xN5Y90+poF0tuNPQzP1VMbqL
 k8LWue7g3+1kG3wna1n4C5Chpbn9DyjgUSf79aQ22pmFxejXTMKDXj3gdFbAWhND5SIgipM+D
 UI6Mi/nd0UgR9LQcCNmhVaMAZ3T5/OCYX9NEmv+5LxELOIrGxzCBJ0lXTgtqLwKaDnmqbwY4F
 XoU9DdUjfnKHN2xXeAtCGJyJUF/FrHG2O4kh6MFvr3nx4lLVkVj01fgn6uAEfaYWQoTlXWinH
 3eGBvoDmMQ6fBO9vIrpiVQjFsw97H36uX0qXwTHJ2hX1nGQ0DOM0n/HHewrsbWmrjNdLFaFA9
 Tk4zXnSgJNVIJP1C+BqYUkSaU54cPfqoFrSY5PgXZ17Mu7B6ILhIInU18cKNv1vNBnCc14QOB
 Q64FIHYa3poZrxMBUAf5sWX9I6zs3BR3lo371gT/Z4pBhPsiuvFqR51Irc0aRb1TzZygcb+BQ
 YF/G+10rRmA1bgDcJLvafd6+GCAIAb32DD421mM3Rd4aW6Co3ByoLJe5dXud124qyucChSRVE
 GFmSJrZP1mtpev9frmwORxON2jqkj0CEYUArnrxUS8Z3PscIXhxb35do6fMeyb9JTTgvGcv0a
 4EtZwwjarNhuPxcUHbZJJPHBQn8fTbwoOBQBcc7TmfWKSgGDbLlRktYrkb1YLrBk9Exr+4SMy
 j0JWeKYjE2qUbacyA14CpYcSPMx35Ns+umWnt0k5eBRrWk+l4haUwTIekSNyNueZFOFL0Yf3n
 lBHGZD6TWSoaM2LDHp4CSvDsYZMiGEFsNmvxvfAcoV4d+NjsL6MRp1RVFE6TXx6Z+SJptKn5z
 pa1N4N61rU1pZg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125057_639901_5D178524 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new BCM2838 supports an additional clock for the emmc2 block.
So add a new compatible to register this clock only for BCM2838.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/clk/bcm/clk-bcm2835.c | 33 +++++++++++++++++++++++++++++++--
 1 file changed, 31 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 867ae3c..5fe4695 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -31,7 +31,8 @@
 #include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/module.h>
-#include <linux/of.h>
+#include <linux/of_device.h>
+
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <dt-bindings/clock/bcm2835.h>
@@ -114,6 +115,8 @@
 #define CM_AVEODIV		0x1bc
 #define CM_EMMCCTL		0x1c0
 #define CM_EMMCDIV		0x1c4
+#define CM_EMMC2CTL		0x1d0
+#define CM_EMMC2DIV		0x1d4

 /* General bits for the CM_*CTL regs */
 # define CM_ENABLE			BIT(4)
@@ -1950,6 +1953,15 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 39),

+	/* EMMC2 clock (only available for BCM2838) */
+	[BCM2838_CLOCK_EMMC2]	= REGISTER_PER_CLK(
+		.name = "emmc2",
+		.ctl_reg = CM_EMMC2CTL,
+		.div_reg = CM_EMMC2DIV,
+		.int_bits = 4,
+		.frac_bits = 8,
+		.tcnt_mux = 42),
+
 	/* General purpose (GPIO) clocks */
 	[BCM2835_CLOCK_GP0]	= REGISTER_PER_CLK(
 		.name = "gp0",
@@ -2101,6 +2113,14 @@ static int bcm2835_mark_sdc_parent_critical(struct clk *sdc)
 	return clk_prepare_enable(parent);
 }

+bool bcm2835_has_clk(size_t index) {
+	return index != BCM2838_CLOCK_EMMC2;
+}
+
+bool bcm2838_has_clk(size_t index) {
+	return true;
+}
+
 static int bcm2835_clk_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -2109,9 +2129,14 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
 	struct resource *res;
 	const struct bcm2835_clk_desc *desc;
 	const size_t asize = ARRAY_SIZE(clk_desc_array);
+	bool (*has_clk_func)(size_t);
 	size_t i;
 	int ret;

+	has_clk_func = of_device_get_match_data(&pdev->dev);
+	if (!has_clk_func)
+		return -ENODEV;
+
 	cprman = devm_kzalloc(dev,
 			      struct_size(cprman, onecell.hws, asize),
 			      GFP_KERNEL);
@@ -2146,6 +2171,9 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
 	hws = cprman->onecell.hws;

 	for (i = 0; i < asize; i++) {
+		if (!has_clk_func(i))
+			continue;
+
 		desc = &clk_desc_array[i];
 		if (desc->clk_register && desc->data)
 			hws[i] = desc->clk_register(cprman, desc->data);
@@ -2160,7 +2188,8 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
 }

 static const struct of_device_id bcm2835_clk_of_match[] = {
-	{ .compatible = "brcm,bcm2835-cprman", },
+	{ .compatible = "brcm,bcm2835-cprman", .data = bcm2835_has_clk },
+	{ .compatible = "brcm,bcm2838-cprman", .data = bcm2838_has_clk },
 	{}
 };
 MODULE_DEVICE_TABLE(of, bcm2835_clk_of_match);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
