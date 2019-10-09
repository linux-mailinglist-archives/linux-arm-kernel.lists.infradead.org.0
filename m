Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B67D0948
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0Qn+dgQ0il5pLdXNdPy/DhpRBI1+1/SPQH29+UgbrA4=; b=Pco
	ibacXayi9WgbFzh78umrV/dhNjjAOpfQNxDW/1xSn0n+uyVztyc+jCLEUJD2qVBoZ3gSbEVraLZUZ
	acINeB1XW63g86yntwghMwDt2h3GV9/ZXEc6u/LPAjLgL/tWvsOJMjBz9fAKU1M4YHDtM29ausWSA
	8ciUSy6l7oDkOP6waUfRLhyfmNjJ4FUUQcsrqIi5x7jsAMN9ewTxT/zH8BAYsnXYfVmejvVv2yKPV
	Divtv0x9NruzB3VSFac9OHiKFiNmbQ9DO5UqGsUchQFdLtXTyMjjeG7opRC3tqToK+CzcCSygPcxD
	F3TMGJSUqIzObfzFRjGtKEFv7/RFbIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI72m-00016C-P9; Wed, 09 Oct 2019 08:10:00 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI72U-00013j-St
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:09:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3BB581A03A6;
 Wed,  9 Oct 2019 10:09:41 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 33CAF1A0397;
 Wed,  9 Oct 2019 10:09:37 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id F3603402E4;
 Wed,  9 Oct 2019 16:09:31 +0800 (SGT)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: jassisinghbrar@gmail.com, o.rempel@pengutronix.de, daniel.baluta@nxp.com,
 aisheng.dong@nxp.com
Subject: [PATCH v6 0/4] mailbox: imx: bug fix and add support for imx v1 mu
Date: Wed,  9 Oct 2019 16:07:17 +0800
Message-Id: <1570608441-29651-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010943_081072_903B8B66 
X-CRM114-Status: UNSURE (   6.74  )
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change logs:
v5 --> v6:
  - Add the Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>.

v4 --> v5:
  - Include Daniel's patch-set into this one.

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

Daniel Baluta (2):
  mailbox: imx: Fix Tx doorbell shutdown path
  mailbox: imx: Clear the right interrupts at shutdown

Richard Zhu (2):
  dt-bindings: mailbox: imx-mu: add imx7ulp MU support
  mailbox: imx: add support for imx v1 mu


Daniel Baluta (2):
  mailbox: imx: Fix Tx doorbell shutdown path
  mailbox: imx: Clear the right interrupts at shutdown

Richard Zhu (2):
  dt-bindings: mailbox: imx-mu: add imx7ulp MU support
  mailbox: imx: add support for imx v1 mu

 .../devicetree/bindings/mailbox/fsl,mu.txt         |  2 +
 drivers/mailbox/imx-mailbox.c                      | 74 ++++++++++++++++------
 2 files changed, 56 insertions(+), 20 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
