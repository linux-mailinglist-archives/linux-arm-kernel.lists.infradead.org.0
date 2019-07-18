Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D604B6CCBB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 12:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xOOp4HFdAsS9XL0d98LCBA+IWbojxoO7VKGxGWDvbBE=; b=s3IgDnCFwKeaRD
	gQa35JvvGK/FmRlQkFPo0ANhxeqYB4keTvMiit7Mmeyif2AV2u0iy04dxGOl2H2XQ9EzB9n+anVAT
	m+zjePO43BDYScxfj9/gntDx63HwyZTg/UvMDL29uJH1kdEC4NgfyWQMfuFBe4/G/guRZE+ODoPxn
	saECj+BaSpkcWNUBsiPzE6kwEkPtd3rXqRaMnrEb3haK+scpZ0FR/PUrqSI0RocawD8Zd0rzzvk7h
	C7qO45zBsLyZh0UhNQ5yz3XbXyGzjntM4qLTASaLFXE4Qxp//ptxZIh/u33bpWdf1AO5NbZQatqDv
	Gu5haMHp1hN6plJCj0Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho3ba-0006J0-CA; Thu, 18 Jul 2019 10:25:42 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho3bI-0006HO-7k
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 10:25:25 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1E1A41A0047;
 Thu, 18 Jul 2019 12:25:22 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 121221A0009;
 Thu, 18 Jul 2019 12:25:22 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7CCC9205C7;
 Thu, 18 Jul 2019 12:25:21 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 0/3] Add power domain range for MU13 side b / IRQSTR_DSP
Date: Thu, 18 Jul 2019 13:25:16 +0300
Message-Id: <20190718102519.31855-1-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_032524_417210_E03BD8EF 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
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
Cc: aisheng.dong@nxp.com, =kernel@pengutronix.de,
 Daniel Baluta <daniel.baluta@nxp.com>, s.hauer@pengutronix.de,
 ulf.hansson@linaro.org, linux-kernel@vger.kernel.org, paul.olaru@nxp.com,
 linux-imx@nxp.com, festevam@gmail.com, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds power domain range for MU13 side b and irqsteer in
preparation for adding support for DSP <-> AP IPC communication.

Changes since v1:
	- fixed typo in patch 1/3 commit message
	- enhance commit message for patch 2/3 as per Aisheng's comments
	- only add PD range for mu 13 side B
	
Daniel Baluta (3):
  firmware: imx: scu-pd: Rename mu PD range to mu_a
  firmware: imx: scu-pd: Add mu13 b side PD range
  firmware: imx: scu-pd: Add IRQSTR_DSP PD range

 drivers/firmware/imx/scu-pd.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
