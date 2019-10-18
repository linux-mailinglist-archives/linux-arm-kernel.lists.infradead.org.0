Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA99DCA5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qKNqAaJtUQumhcUg7/hVLkmfydDvPiesVJ9E0ZvzjNE=; b=g12tz9nkTieeWP
	wcf5/l9ND5n88I4drDIBXLKO2QOpIjQ8yW8LMcxIlxFwI8D/Ud/wLXUWPHbHuRLdPN65jtsf43BgW
	msN4UDjrSPu1JPRiK6DmK7guOp7XjEsFk9F6MyIaXQAH7gR3Tfz+oJKR6sr969P20rHlm9idPTZPf
	y7EtL+/qNrNwvd+aTg3PS9u6htEBbJqWI+z/9kX8IRLfScdf06UHD1vq+0vGs39O3je1iwaeKJ4c8
	HnmjINUjq6fly7AJ0r3+Ye09v4e4rle95k3oZdoSy8tIMZCYrwrqKlPJRUyiDINRvTpStEY1K7u38
	U8az2MIn/fi4wulPTTZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUoN-0007TT-97; Fri, 18 Oct 2019 16:09:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUn4-0006Nl-1H
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:07:49 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1iLUmx-0002BR-RU; Fri, 18 Oct 2019 18:07:39 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1iLUmw-0004AF-4q; Fri, 18 Oct 2019 18:07:38 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 devicetree@vger.kernel.org
Subject: [PATCH 0/5] arm64: zynqmp: add firmware device tree node
Date: Fri, 18 Oct 2019 18:07:30 +0200
Message-Id: <20191018160735.15658-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_090746_097860_813B499B 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Michael Tretter <m.tretter@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this patch series adds the device tree node for the ZynqMP PMU firmware and
the subnodes for the pcap fpga loader and the efuses to the ZynqMP device
tree. While the bindings have been mainlined, the actual device tree nodes
were never added to mainline, but were left in the Xilinx downstream
repository [0].

I cherry-picked the patches from the downstream repo and slightly adjusted
them to the mainlined device tree bindings to be able to actually use the
devices with the mainline kernel and device tree.

Michael

[0] https://github.com/Xilinx/linux-xlnx

Durga Challa (1):
  arm64: zynqmp: Add data cells to access efuse

Nava kishore Manne (3):
  arm64: zynqmp: Add support for zynqmp fpga manager
  arm64: zynqmp: Label whole PL part as fpga_full region
  arm64: zynqmp: Add support for zynqmp nvmem firmware driver

Rajan Vaja (1):
  arm64: zynqmp: Add firmware DT node

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 77 ++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
