Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C38162760
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:49:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zhJszDeGPyKnnm0V5hQvb/QKJaunlwZCclwBobH5e+o=; b=X+W
	KTCJWy3hScUSPnqjQqYkV9m1cXLjHxhtqv50ZGbHsWMAMtBspCC2VmRy8K7QLWSGvywCDOmNxhC0n
	ayHUiETxmcz52SvQLe/ALhl9B+NPHixmj8nY/EjoaIXkkpZx8PGxFuRIuWF7gCgiIxC6PZGOX+4b9
	7qX/g059V3bCnYJ+LppkUiHXGY3dc3bmWQOraC0BQhil1NAwdZIgWQdTtQqpSo1yIU/1K7+EfePVe
	pI8tluIESKsSSyQb36NzvqMlfE167nV/V9hMmA5ghh82IM20o2aBkPcrIIG7QqEgYt0hFDz9Fwk7s
	YvkZ7NVzw89nuWArXMSI9eiDijZlkYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j43Fb-0004x6-H2; Tue, 18 Feb 2020 13:49:23 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43FQ-0004w5-Ks
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:49:14 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 05:49:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="268760941"
Received: from unknown (HELO srivasta-NUC7i7BNH.iind.intel.com)
 ([10.223.163.113])
 by fmsmga002.fm.intel.com with ESMTP; 18 Feb 2020 05:49:07 -0800
From: Shobhit Srivastava <shobhit.srivastava@intel.com>
To: daniel@zonque.org, haojian.zhuang@gmail.com, robert.jarzmik@free.fr,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/1] Enable SSP controller for CS toggle
Date: Tue, 18 Feb 2020 19:19:05 +0530
Message-Id: <20200218134906.25458-1-shobhit.srivastava@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_054912_734876_81EF99C0 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: furquan@google.com, rajatja@google.com, evgreen@google.com,
 andriy.shevchenko@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


SPI CS assert may not always be accompanied by data. There are cases
where we want to assert CS, wait and then deassert CS. There is no
clocking or reading required. On Intel CNL LPSS controller, it was
observed that the above flow is broken after an S0ix cycle. There
is no issue after S3 flow.
https://patchwork.kernel.org/patch/11377019/ is an attempt to fix
this and it does fix the issue. However we are unsure if that is
the actual rootcause for the issue. As per the LPSS spec, to
propagate the retained CS to output,  SPI controller needs to be
enabled. The below patch tries to do the same and it fixes the issue.
The reason why there is no issue after S3 flow is because during
resume, BIOS re-initializes and enables SPI before doing kernel hand-off.
To test this issue we are probing the SPI_CS line on CRO. This is
because, even though the mmio writes to CS_CONTROL register sticks,
it doesnt toggle the CS line. Physically probing is the best way
to identify the fix.


Shobhit Srivastava (1):
  spi: pxa2xx: Enable SSP controller for CS toggle

 drivers/spi/spi-pxa2xx.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
