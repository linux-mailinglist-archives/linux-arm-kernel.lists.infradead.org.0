Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394051DFFC6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 17:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	Subject:To:From:Date:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m4Y2j0NMYzSyv5DLE7qsrZyfFhe6WFC3A4rT/1rwezs=; b=WlPA/ytjiiRw30
	+zlbEM7PAGzn7fe2dSOordw8BTkudtJB759COorathNE2dRCNOa+Les5zNR92oTAECYjKx+yVUlEH
	lvpQ/X0Wa/wFrbpqFbYZGsvkhTx8Q72u1Xnvys0k0pJkEyYMKsuXAIWVsr2tab6km3gSyaEB2MHoj
	NyVdO8+/1iSAwbw6rMw8EIGhNzDyG1wGhIcEvQrb8IvmO0igWDpI0kOxBHpKl6OMu5UDpOZrv9v8D
	+lJsXGq3Fb98roMMFxWg4ZLRrMdKnOIFRT2/yIbCxhAXBQtCGfnjpVUNodoX9wDDx79lsp8ILWwIe
	GkDG2C8qIcB8PUYfFeiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcsOQ-000844-RL; Sun, 24 May 2020 15:18:26 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcsOH-00083j-2p
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 15:18:18 +0000
IronPort-SDR: zRKjHQ8XKlO1U6dhfuZQakjt1AQik9P9QjOla0VZhUlFwti1whFL07AuVWTagFfdN/Y1mutq+i
 lEOy80ystxSw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2020 08:18:16 -0700
IronPort-SDR: 55p0uaVU8zp8FdpyS1Tc5hnir+3iOlBiwRCkREGI/qWk/d8olkEQjwqIgTCGaBJ9Yvw1mh6Ezo
 Fim550wn/qCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,430,1583222400"; d="scan'208";a="290631205"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
 by fmsmga004.fm.intel.com with ESMTP; 24 May 2020 08:18:15 -0700
Date: Sun, 24 May 2020 23:17:06 +0800
From: kbuild test robot <lkp@intel.com>
To: Marc Zyngier <maz@kernel.org>
Subject: [arm-platforms:pci/xilinx 3/3] checkpatch: ERROR: space required
 before the open parenthesis '('
Message-ID: <20200524151706.GB17853@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Heirloom mailx 12.5 6/20/10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_081817_134945_31B3C3D0 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Reply-To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git pci/xilinx
head:   8b5d158374e59edf26e61c512eeb00ca7c9d891d
commit: 8b5d158374e59edf26e61c512eeb00ca7c9d891d [3/3] PCI: xilinx-cpm: Revamp irq handling
reproduce:
        scripts/checkpatch.pl 0001-PCI-xilinx-cpm-Revamp-irq-handling.patch

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

# many are suggestions rather than must-fix

ERROR: space required before the open parenthesis '('
#456: drivers/pci/controller/pcie-xilinx-cpm.c:342:
+	switch(d->hwirq) {

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
