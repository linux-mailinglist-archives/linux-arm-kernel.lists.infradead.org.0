Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863C68119D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 07:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QUoRp3FfCN68KZH+0M89Yw+RNU1ffx/Jngh53LCxZ7o=; b=XDW
	SmVHUmiMpZ22H+bUzYkKmyLURZNSgGBAyIBE7J/VcBzuciAfcO8WEB4KadnK8F9Idf++0ss7TNrcU
	guLKFLaML68+3k5UeNl+7tuxxqeJzghHafUXyRFnRMahBMHq6ceIf72uZ1uspZAUoY/oMTM6xB5U0
	8mbrTrhCVl+gBfZWbOgAluM48W4xExIeB+LJJBsLghgMde2bOmqu54Va8hEsXZLkauUmQ2h2XJIvC
	KKZcZPYXVQLNnJKxAvD8WMDtIUWHDIQmwx6Vb/WPwrA8FomvsA482uX9gaCzy/nIPkFnTPFTHYr1s
	10tN4wDbhjfPuKKdqaCYePfNGR6kQ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huVbF-0004j4-0E; Mon, 05 Aug 2019 05:32:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huVb4-0004bL-4v
 for linux-arm-kernel@bombadil.infradead.org; Mon, 05 Aug 2019 05:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7LiaLOzx+foi3jcc6PNulV/WbO8HwuDd7q1csY3vws4=; b=Lu7/7cfzFdn/FAbNOK/dXEB1i
 +Oupjosw6Hi7Tzuq2KsfqZ2Ay4XfgCNjJ6HiDzlmJhjac1adz5eJTvqklPnyzzMMzc3N/2qBejzfT
 WT+kf5+0cmX861ILceRCr9CYLToav1DIzYEaAx9CddDpa705v3toBMcyq6q0K/jrj+NqBvS9pY1G4
 RcrlAqaQf+21VhqiKU9+kgZkTT6f6ruBbrIEu37ozT/jMDiv16//yoN5rLT4dUM6TF3o+I22aX9kJ
 ms5szb9T24FZQC+rSSrtQsKdMhSiKDASqySQPNuiADsIpnyZj4HkuUaGWGL/qXF7/EFF+RZvBOoDV
 2Zanmev/g==;
Received: from inva021.nxp.com ([92.121.34.21])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huVLA-000518-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 05:15:27 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C26DE2004A3;
 Mon,  5 Aug 2019 07:15:06 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5EFB920045E;
 Mon,  5 Aug 2019 07:15:02 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A5B94402DD;
 Mon,  5 Aug 2019 13:14:56 +0800 (SGT)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: jassisinghbrar@gmail.com, o.rempel@pengutronix.de, daniel.baluta@nxp.com,
 aisheng.dong@nxp.com
Subject: [PATCH v5 0/4] mailbox: imx: bug fix and add support for imx v1 mu
Date: Mon,  5 Aug 2019 12:52:18 +0800
Message-Id: <1564980742-19124-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_061525_021247_9DE04818 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change logs:
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

 .../devicetree/bindings/mailbox/fsl,mu.txt         |  2 +
 drivers/mailbox/imx-mailbox.c                      | 74 ++++++++++++++++------
 2 files changed, 56 insertions(+), 20 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
