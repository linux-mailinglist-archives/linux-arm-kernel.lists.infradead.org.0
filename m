Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2646C1C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EeIJ8CIkUG44KK8KDQ0tHBbRjqzjGmg2ZQRISkhtXXs=; b=G2TmvaL74xMGJYQvQJm5NJVfDg
	Qrt5McG7+BGKK4xWz4nVnS41RJ0XiIIUD0b+MzEhqGmUBgEh59asU9CqLExzvWuR37znbOPOUPIZL
	AUKe8CxTpH2HzfPzST48o8bxhaX2Jk9gPdyMuhSGTv4C0G6U3JvwOPi1FjFV820XhTjga0kn9HpFC
	q3j6JUF1Kj6yfN1Mvg7mUJdxstaZ6euCFiIjh/U2Pn6jg5RXQpbv8pilmNYDT84VjQTBqtl70JTO6
	b4Q86mnuMzDAKJHGrB/16jFgDn1u+sdxP3kGXDNbPojLfmMwAU8DQWV6h2DZMOhAoXc6KpnGHABXK
	PvUI4hjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnq0E-00057X-Be; Wed, 17 Jul 2019 19:54:14 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx3-0002tP-92; Wed, 17 Jul 2019 19:51:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393044;
 bh=+RVfDoyStk3kA2tIa1p3ImtA9muC7UvcFiwkFCkx9MI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=gobR3O+o20TnTmuaz6GF4MaVHmMtQ/p27fwVl6KtgJDln3NigqdDxWTmTfABDQHmA
 x3oww3NpqoOTCg4PQu9wYWVlScrxEWsNM1nl7Jx9oUxGJ+R0fEwjwOg9EVEfSujo6m
 sLzbxQkdA2Z3ovHgq0XwbzbmdWa+O+3gizVp4eAw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LbR3e-1iBaBy2o3u-00kxsL; Wed, 17 Jul 2019 21:50:44 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 08/18] dt-bindings: sdhci-iproc: Add brcm,bcm2838-emmc2
Date: Wed, 17 Jul 2019 21:50:16 +0200
Message-Id: <1563393026-17118-9-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:XdWI3pNA7FHmjLxJynsiwapxSHzTrtJ1/rbJJRXfgEdpnZTTpG6
 keJL+y67QtNpN1Ulj8ieaPCYS0z7er1w955IaZRssVD7isnmrfUyjhmkI6xIMEXtci0JJJ2
 fTxQFkwrE8biKgPNQjkNwgQby1PGjrfCpiodahufZe9fgmJgG44r19aX/g6CCzX+k1AkhIi
 yloiAqxcPFodkFsH+fmHQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1N/SEaInjWs=:W/IiBA8/W/kf+3YLx2a54y
 Tc2kv0vYFEfi2eNsmt9RJqixBILA58kzhaCt9ZpUJDy3Iq5V///n0657HfF7JvSIrMNlIqD2Q
 8h1bijapQ4gXi9t+DzmnaizI1RxxoyPv+dzVm9e1cgMKym16STUUmnipt8tpPBJCLuYdnGzYk
 Yv7CxMKNRPyUSqIKd2MYX0K4RvucFZIrCjfT/QEDAycS5TOihYcbFJc3P7mPrjPc/Tn1AlJcn
 fAnvSBL2ZJbqZViZFR/qhw05mmHZlZjpGdyILOh8/rHlOsqWX9e5r58StyY9WEZC7bAexget7
 vTJb/LIUO7K7x64EGIrfmNWvBTXBLhQqM9CtnYXKny4caD6q5rRdZMsi70O4KdLb9FwMTxSEn
 TZ3164j/w82JwN4hLBiG10flrF6A/4yP/FcCok/PEFRfdiV3mhGogQqG2RggmwVOrcscxoWvg
 XXtRYgio3Km0pzNaTji4Hlpwmm5JtfrKhjgYvKuvft/20R0yaKWCeSHQnZ5SsDmgW9JO3IYRz
 PSF2JF+z+MiVogLcnsM4afY8QCAUQSvVn/x43W+dbVouRmL6pE0RFgwjBOsgOVAcdm/PsMCSA
 st4LInIJF2AKTvncca55S4WmirHDlFpMHcQ2PDpo5zPjyUCm4U4kRpMnwq0RSoNTZduwdthKk
 8S1p1qISjfRQ7RZK9X0NFOvjK4Ayb8ptA0i3EgXJ2HHyoHYQTuGj7D/H/HFX0kHr7itEaMUrH
 /xWlGew7PizhUCcrLAEfPwbxNrQEshabIsFtAGPkwBMHke6yyZkck1noAFCf75y5jq0LKmFB/
 whqnHlzg0qmoyDJEDVZQVtoQ1zp3CtQCw42ZvJaSssM651EkH5rOQvRnNjalXgCU7py0hK/XR
 VxcJ8GCIJjkFfalOxlmZaIeCuNEpt5H43dd/hpVqRVu8Rv91UlSY1dnhxy+R0eIshI/f858Bd
 XyUfpIoSNVMM8PlYNH2Fp7i6tKFdEpsyBhsxTUr+NSF00U5t5Goc7KSEpTfoMESSDF33O2rHH
 JZdbkcG0L9lzubzTWxIgrgHkelLf290QJKORXTn2bML5tsTPJetrWMa4GGhsbMXq4cjKAPmJY
 nPUP2dJJRlOuEk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125057_626902_9FBB273B 
X-CRM114-Status: GOOD (  12.27  )
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

Add a new compatible for the additional emmc2 controller
on BCM2838 and clearify usage.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt b/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt
index fa90d25..18bf610 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt
+++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt
@@ -6,10 +6,12 @@ by mmc.txt and the properties that represent the IPROC SDHCI controller.
 Required properties:
 - compatible : Should be one of the following
 	       "brcm,bcm2835-sdhci"
+	       "brcm,bcm2838-emmc2"
 	       "brcm,sdhci-iproc-cygnus"
 	       "brcm,sdhci-iproc"

-Use brcm2835-sdhci for Rasperry PI.
+Use brcm2835-sdhci for the eMMC controller on the BCM2835 (Raspberry Pi) and
+bcm2838-emmc2 for the additional eMMC2 controller on BCM2838.

 Use sdhci-iproc-cygnus for Broadcom SDHCI Controllers
 restricted to 32bit host accesses to SDHCI registers.
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
