Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1236B5F4FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=s9z8JCOCLEuxdmK2rjFAIBKuNqMiBfOqgyq7Qy8vbTg=; b=Kfs
	bZBZzuHA6rhUyeLad5Fl23JVT0goZ98VidY6eFApHd57a8IZTbCp4FyL66h7i8ycQ4Ua19u6YRwSl
	lRCbREmXH90fn+s0CSkh2PWr9Ou7AeygV/RfzRC1AlOcjliljVayCGTczWiEToeTb02I30068PVjm
	XMeKnzHJuZH5te7pI10nbVzY4JInsKJtqP5sNlQW4owmWxZdQomh/Ywuoj5/Uhsft+eFQuJXLmcgi
	kwXBiNVux1a5wHdA7ODB+oi9tpVDHvslRK6vf7RDgVoFh3E70485g0eLHXQWeuWHM8Z9zTJWFhZEY
	BG+L8+7e9o8A9pT4s1qG/wggKxgi5Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixV8-0001Aj-Nx; Thu, 04 Jul 2019 08:53:58 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixUl-00019d-GW
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:53:36 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D35CA1A0564;
 Thu,  4 Jul 2019 10:53:33 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C67321A0145;
 Thu,  4 Jul 2019 10:53:33 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D5BDC205D9;
 Thu,  4 Jul 2019 10:53:32 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Will Deacon <will@kernel.org>,
 Frank Li <Frank.li@nxp.com>
Subject: [PATCH 0/3] Enable imx ddr perfmon on imx8m
Date: Thu,  4 Jul 2019 11:53:19 +0300
Message-Id: <cover.1562230183.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_015335_689168_E1244F7B 
X-CRM114-Status: UNSURE (   5.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, devicetree@vger.kernel.org,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Driver was upstreamed for imx8qxp and it seems to work on imx8mq/imx8mm
without changes.

Add soc-specific compat strings in case we find minor differences later.

Leonard Crestez (3):
  perf/imx_ddr: Add MODULE_DEVICE_TABLE
  arm64: dts: imx8m: Add ddr-pmu nodes
  arm64: defconfig: Build imx8 ddr pmu as module

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 7 +++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 7 +++++++
 arch/arm64/configs/defconfig              | 1 +
 drivers/perf/fsl_imx8_ddr_perf.c          | 1 +
 4 files changed, 16 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
