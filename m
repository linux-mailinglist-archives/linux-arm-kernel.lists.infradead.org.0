Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A357ED60
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 09:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HjWW4KrLpF1JpdqWITydLTSVn7VEGWNsfKZzccyr2Uk=; b=uZN
	8/HZkwu5Jso2eDVs4+mzNPbOzw/9ZkbN8F4TrOGtnsd8oXR3ZDOLbjjERqdl1Kmub2emcWB6W738g
	7Ca27ukPFgk9CNtkMgR8Xnf0oXaH4nehfo/sMkT7afOXe6rLSHTqkep0V1PTvFvFByxQSzFAqP5cP
	H6TWsRTVj+1lyriLFUN6XqF/cD1wmroJnNGp7oeT7tuTxJ1HLu7wOsRF3zmh99iulX53XNfCNzePT
	uxFjXiiwDQMfVb/BsfhVMJnO4XTt2JcA9qDxcM/67UHg33cprVTa20nldvzA1BdXysM5LfRE6J5A9
	o8dZyRgEptVK49N8EdD3i91X7Pyl2xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htRvQ-00020g-Ln; Fri, 02 Aug 2019 07:24:28 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htRvE-0001zU-8x
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 07:24:17 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 77FFF2000B4;
 Fri,  2 Aug 2019 09:24:14 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 805ED200097;
 Fri,  2 Aug 2019 09:24:10 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5525E402C9;
 Fri,  2 Aug 2019 15:24:05 +0800 (SGT)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: jassisinghbrar@gmail.com,
	o.rempel@pengutronix.de,
	aisheng.dong@nxp.com
Subject: [PATCH v4 0/2] mailbox: imx: add support for imx v1 mu
Date: Fri,  2 Aug 2019 15:01:38 +0800
Message-Id: <1564729300-30374-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_002416_456504_98E9FAA3 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change logs:

v3 --> v4:
  - Change "version1.0" to "version 1.0" in the commit log.
  - Update the devicetree binding document to support the imx7ulp mu.
  - Rebase the patch refer to the following bug-fixs patch-set issued
  by Daniel Baluta <daniel.baluta@gmail.com>.
  "https://patchwork.kernel.org/patch/11069479/"

v2 --> v3:
  - Format the patch-set refer to Oleksij's guidance.
  - Init the register array by a simple way recommended by Oleksij.
  - Add Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de> tag.

v1 --> v2:
  - Use to have the register layout linked on probe, suggested by
  Oleksij Rempel <o.rempel@pengutronix.de>.
  - Add Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com> tag.

Richard Zhu (2):
  dt-bindings: mailbox: imx-mu: add imx7ulp MU support
  mailbox: imx: add support for imx v1 mu

 .../devicetree/bindings/mailbox/fsl,mu.txt         |  2 +
 drivers/mailbox/imx-mailbox.c                      | 55 +++++++++++++++-------
 2 files changed, 40 insertions(+), 17 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
