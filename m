Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6261624A2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7vX1k/hgLDe7cEFUAuT+xYzCAfStFifCdRavaBTyw5k=; b=BOsBNtYdK+/Gpy
	wFYgDmoPMHiBTNOtCLgW/L7t28/nw6UsTYF5apXjVQkvF2ZIc+DmFwtvGqpeID8pGhmq2fSyBhA2z
	rjJd2zkUAg/LYXbh2R8TKBx4QUWev97XdjiGqhvQRYs2Rjv1y+30X40R21A8k3auTbE6M6mGxQnvt
	mT1KOTnihLDkJUpqlAhpqRK+qqOnZ1kipkO0RbuQ12rk923+9sxFBnWYuZwD/vVMbPqgq6HOeel5T
	B0SEfBXl7aE2j7Ajlo/DxTO2dWwTHt4BA63ugRtuKL9Md5qnZUS7Or/tMjHhCpERZK+jrhC7/CXWW
	B/6w1xR4I/3Zmf89alAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT02O-0001lT-2l; Tue, 21 May 2019 08:22:20 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT01p-0001DM-Rx
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:21:48 +0000
Received: from localhost (p54B334E1.dip0.t-ipconnect.de [84.179.52.225])
 by pokefinder.org (Postfix) with ESMTPSA id 532892C54BC;
 Tue, 21 May 2019 10:21:44 +0200 (CEST)
From: Wolfram Sang <wsa@the-dreams.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/8] arm: add I2C DT binding docs to various platforms
Date: Tue, 21 May 2019 10:21:29 +0200
Message-Id: <20190521082137.2889-1-wsa@the-dreams.de>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_012146_059625_0D3755C2 
X-CRM114-Status: UNSURE (   5.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-i2c@vger.kernel.org, Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some I2C drivers entries in MAINTAINERS miss their DT bindings docs.
This series fixes that. Because these drivers are all embedded in their
platform entries, I suggest the respective maintainers pick them up via
their tree. If you prefer that I take them via I2C, let me know.

Wolfram Sang (8):
  MAINTAINERS: add I2C DT bindings to Zynq platform
  MAINTAINERS: add I2C DT bindings to DaVinci platform
  MAINTAINERS: add I2C DT bindings to LPC platforms
  MAINTAINERS: add I2C DT bindings to Nomadik/U300 platforms
  MAINTAINERS: add I2C DT bindings to Rockchip platform
  MAINTAINERS: add I2C DT bindings to STI architecture
  MAINTAINERS: add I2C DT bindings to Versatile platform
  MAINTAINERS: add I2C DT bindings to vt8500 architecture

 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
