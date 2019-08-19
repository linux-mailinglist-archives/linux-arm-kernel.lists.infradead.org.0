Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E6392090
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j63auhFP0EURJb353kog1Yom/Mc2SerFLvH4rCAx85o=; b=C4YaxYGu/ACJyB
	2bg5L9EzaRl6qg9ZVfagPyQe5u+pUXhEF2YqtxWi0Qc327XgtNuY/IwlEcwBlXfFweHHg+jeofqPU
	rKafUjQIJeIQDJ1NDW0acrX89LPBdVpfafVNyhmRgwd1OtVCB5m2HyoWE0iUnWGA6uWMyYfKYVNcF
	5boSxx2Jz0nn4tKMBfD8/o1N5k6WcIUCO1oJ7KxOOh1GJ6W6yls5g54Me7cfSlVCEcgx0qOk/RSKb
	Me4jPfIFhsVPpOgQsuBu6M2y/NMoJKJSSjhcxz+RLNs7ODCJQjYpfhD9ECZixwy8FxlIrTS5uacQe
	KQ28Inp3XWrMAswcoXBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzeAn-0006kj-15; Mon, 19 Aug 2019 09:41:57 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeAZ-0006kI-1H
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:41:44 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hzeAU-0001Tc-8R; Mon, 19 Aug 2019 09:41:38 +0000
From: Colin King <colin.king@canonical.com>
To: Derek Kiernan <derek.kiernan@xilinx.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH][next] misc: xilinx_sdfec: fix spelling mistake: "Schdule" ->
 "Schedule"
Date: Mon, 19 Aug 2019 10:41:37 +0100
Message-Id: <20190819094137.390-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_024143_213025_DE322CE2 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake in a dev_dbg message, fix it.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/misc/xilinx_sdfec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 912e939dec62..b25c58ee618c 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -553,7 +553,7 @@ static int xsdfec_reg2_write(struct xsdfec_dev *xsdfec, u32 nlayers, u32 nmqc,
 		 XSDFEC_REG2_NO_FINAL_PARITY_MASK);
 	if (max_schedule &
 	    ~(XSDFEC_REG2_MAX_SCHEDULE_MASK >> XSDFEC_REG2_MAX_SCHEDULE_LSB))
-		dev_dbg(xsdfec->dev, "Max Schdule exceeds 2 bits");
+		dev_dbg(xsdfec->dev, "Max Schedule exceeds 2 bits");
 	max_schedule = ((max_schedule << XSDFEC_REG2_MAX_SCHEDULE_LSB) &
 			XSDFEC_REG2_MAX_SCHEDULE_MASK);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
