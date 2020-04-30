Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006441BF86D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 14:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aSDivNkBZMiiSIbqBw8m/JIg4jGiuPZ68JkndZKFDJs=; b=XwYepUlWNrJzAX
	AGYbLRkgaKwH0I8BmNY7gOm1z0T0bhhAg1B0hZ7gPHF9rwJWcxTjoAO+SLxCF4oRI2L7ixZ7R3Ohx
	aKptdpr56Az78aWKfmeEfgZRNgT3zoqQrTl32d5W+/z6t4LL61GOb5NN8U7CmClW52NJHfi0yTfCu
	jTCgcQwkPjAKxvMgvxAYa1LF2rB2aQIa75MxecEXufJq8g5XMWccrO5PF1iB8Ifbp3ISUQkLyHzWp
	pNJvfHe3WV2mV9JtACpIwYeOSvq/cGVCkwSv06c5EYQ2YZnppnN+dVmKFBOVWTuuYkJQCkptD38l4
	KV++cFXVkx2IaULntwLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU8aJ-0000FG-28; Thu, 30 Apr 2020 12:46:35 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU8Zv-0008Uw-CF
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 12:46:16 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 by skedge04.snt-world.com (Postfix) with ESMTP id 7A03567A7D8;
 Thu, 30 Apr 2020 14:46:04 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 30 Apr
 2020 14:46:03 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.007; Thu, 30 Apr 2020 14:46:03 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Adam Ford <aford173@gmail.com>, Anson Huang <Anson.Huang@nxp.com>,
 Christian Gmeiner <christian.gmeiner@gmail.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Fabio Estevam <festevam@gmail.com>, Schrempf Frieder
 <frieder.schrempf@kontron.de>, Leonard Crestez <leonard.crestez@nxp.com>, "Li
 Jun" <jun.li@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, NXP Linux Team
 <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Russell King <linux+etnaviv@armlinux.org.uk>,
 "Sascha Hauer" <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>
Subject: [RFC PATCH 0/4] Add support for i.MX8MM GPUs through Etnaviv
Thread-Topic: [RFC PATCH 0/4] Add support for i.MX8MM GPUs through Etnaviv
Thread-Index: AQHWHu1P24EsvLcp2k6XxTQQ1PmCiA==
Date: Thu, 30 Apr 2020 12:46:03 +0000
Message-ID: <20200430124602.14463-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 7A03567A7D8.AE648
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aford173@gmail.com, anson.huang@nxp.com,
 christian.gmeiner@gmail.com, daniel.baluta@nxp.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, festevam@gmail.com, jun.li@nxp.com,
 kernel@pengutronix.de, l.stach@pengutronix.de,
 leonard.crestez@nxp.com, linux+etnaviv@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, peng.fan@nxp.com,
 s.hauer@pengutronix.de, shawnguo@kernel.org, shengjiu.wang@nxp.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_054611_796025_4C6F6335 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [91.208.41.69 listed in wl.mailspike.net]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

This series contains patches to enable GPU support for the i.MX8MM.
There is currently no upstream support for the display subsystem of
the i.MX8MM, but I have a 5.4-based tree with some ported drivers for
LCDIF, DSIM bridge, etc. (see [1]) which I used to test the GPU with
glmark2.

I'm posting this as an RFC for now, as I'm not feeling confident of
all of the changes. Especially patch 1 seems a bit like a hack. Maybe
someone can help me understand the underlying problem and/or come up
with a better fix.

[1] https://git.kontron-electronics.de/linux/linux/-/commits/v5.4-ktn

Frieder Schrempf (4):
  drm/etnaviv: Prevent IRQ triggering at probe time on i.MX8MM
  drm/etnaviv: Fix error path in etnaviv_gpu_clk_enable()
  drm/etnaviv: Change order of enabling clocks to fix boot on i.MX8MM
  arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core using Etnaviv

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 36 ++++++++++++
 drivers/gpu/drm/etnaviv/etnaviv_gpu.c     | 68 ++++++++++++++---------
 2 files changed, 79 insertions(+), 25 deletions(-)

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
