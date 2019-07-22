Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233ED6F985
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1aP4jfYTqfLm5z8gAlVqKf1m8g+cp7GoU9++ogLsxxk=; b=RGR
	huTC3ambF09aMhyVdL0BhwKoic3L4k26wbKIqssDbJujDqovaI6/wifEBCDlPuVv2NH8gbfRQqagM
	SYe5GbSFNBK7WFwreV7J5OI/uijeax0YZIurdUNS6tBn0G96HoeEWHBhgUcfhyiOWAaZ5mjCllq7I
	BiQKDW1KiBnSJdqtdE0bxayVaEpqoQoGIoIe5S54dcXbvndL1ohWkkXmVPLRNPQhkS17ihsAa6rkl
	0lL8Hx7osykIVyWY/CTRq63QC3RbrREXXer4xlS514kBhGVa6uyjMGamFH9bnTpGfwkXnQLy72HjK
	5jqb9qMFLXtGcBnBffypSSxI/BYrdKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRkL-0002UC-0P; Mon, 22 Jul 2019 06:24:29 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRjm-0002HH-6v; Mon, 22 Jul 2019 06:23:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563776616;
 bh=C/BKlEwyumlArmwD/E6wgYAWdwQ1Y8+GdUItO4AwDB8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=OF7ORH1kF6/Jm6qRQVl13FGHOStoa4RCDp0c8+GTv9hJDPuD8BCHtSoWiB18kGngM
 gRvPEOfcQOuwo7lRhSSLb0qsOV6ylGZtc1PJ1jeMBjudXmLmkB61zhXboD6sOVJEkF
 vr9Zg/OVlPCx1pPMG4yMBMtulAET3WX3VdCAStlA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.98]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LlGoc-1iOE3F3Eco-00b2gg; Mon, 22
 Jul 2019 08:23:35 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 10/18] mmc: sdhci-iproc: Add support for emmc2 of the BCM2711
Date: Mon, 22 Jul 2019 08:23:23 +0200
Message-Id: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:GxIuRAwNwjQ8P41WK7RQ/jyBcX+5REqGD0yM69ZZYhZQaHNsw7q
 EaToozX93r4CKrb3WTg2CUJz3UBqmlifhGylbY5Im3SzMrQn5BTJhL01pFO5RAfv0gmFJKm
 9rX7TpJnETIl1e6XJv2U11q4XdPjsOG18MPswiTv8InzARGumCVTtFlWubXLSlRv+NZr26M
 6Vv17Byc488qhwM0Qk5lA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+GtNzptVxGY=:YCCTEBW68gIi4LhAv/5Nwm
 cvvvKUl6h7apzwQMmuZPq2cNyteRgKStyl4yDNYwViCjPdrLYJvBtx3x6BybQiLXec8FAjaAb
 hwkzHG7UM8WnmGlmSxl0WM+qEcr4KJjwbaaJrNqP0L4lp/oPot3JwwJamZnnAVVoUUWEdySpf
 WAi1XgrtigWzI/XfOC3QABckJ9XBU2vqXRvNWJ1IB+sEM1sSq7tvJ9r+WdQVCCuADSQPbBzVL
 uuJf0spiug++kcSKm4fm6lJpdzVAZloCAqVKSNKFu2hcJVYib6L9d1rUceaFJ6LkfxbVzT/Up
 7E8wCjevp7gyvtAmWXv4YR735Pk5yYAYVilbKCnscU5AsonRGYFzWPMiV/mKcfq5hfXBIVDuU
 6aQjSsg8d4RuofIUaMcvJVI+s2O2E0pvntoHd4zocqQ1jz230i58llR1EbpMQzy4YrXTgoWFr
 Itl3cojCb0jh2DE8CkKOb9aokTLUAa4/HZO3hO7PAtMf+Vrr4S46zwHqb24dwD6P7BqF2oG5I
 8bpMi4ahGUBktmRYxk0YMY91+svrQTTJk1CBi0A56mJJiGahxmwb8zcdRCPxmA2l6NF9Sa7Yt
 sQ1R4Hbr+Hq0eCpAKCVQ3WVrLcQyFvDI8+zSS/rONT1EoW9fbPAs8qhVtTCelJsEz1CC1oPyi
 ZClEoeIU3KLITsj4F4PLa2V6MgS7LjhmvRFCabBAbG5ypDzRc76q2r/DicZzHnnrbdPEBFdDP
 r/kid2S9o2DDnT6ZniIan9oyGGBh7hII1yGSrOXWFrAcyEWOe8WU5gWcFPzvaI107wQZwS7VN
 zzhnzNYSkqs1pQuHD8I3hC+A6qRvhwgpp2QuUY8tf+6ve3QWfiQT3Tr5vdMHN6mkmMsPJWGRN
 xJWP3etEuRD8Ai/K5OxkHWRpDA8WVhKo7hwNbvN9r16s692Q5dARQkaapYFwlEMmXKkA6Gz7u
 /fnxYeH7dTTvGEWtTJFWR+zzBSsCvvFS42U0snB1KswFlPKzMVVn1B3XHgdIW/HnktbAokwW/
 vSRjL4XBseqsrNRrR7YNCjRDhsSwVBAd2e8ZL3uq3TYvZx/IGCI26PG/T9iWykMWQHssW1OF/
 gJsK9rtyl0BsQU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_232354_587962_7790CF45 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The additional emmc2 interface of the BCM2711 is an improved version
of the old emmc controller, which is able to provide DDR50 mode on the
Raspberry Pi 4. Except 32 bit only register access no other quirks are
known yet.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/mmc/host/sdhci-iproc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
index 2feb4ef..2b9cdcd 100644
--- a/drivers/mmc/host/sdhci-iproc.c
+++ b/drivers/mmc/host/sdhci-iproc.c
@@ -261,8 +261,17 @@ static const struct sdhci_iproc_data bcm2835_data = {
 	.mmc_caps = 0x00000000,
 };

+static const struct sdhci_pltfm_data sdhci_bcm2711_pltfm_data = {
+	.ops = &sdhci_iproc_32only_ops,
+};
+
+static const struct sdhci_iproc_data bcm2711_data = {
+	.pdata = &sdhci_bcm2711_pltfm_data,
+};
+
 static const struct of_device_id sdhci_iproc_of_match[] = {
 	{ .compatible = "brcm,bcm2835-sdhci", .data = &bcm2835_data },
+	{ .compatible = "brcm,bcm2711-emmc2", .data = &bcm2711_data },
 	{ .compatible = "brcm,sdhci-iproc-cygnus", .data = &iproc_cygnus_data},
 	{ .compatible = "brcm,sdhci-iproc", .data = &iproc_data },
 	{ }
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
