Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D953BF4648
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:41:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qex4HFI9+o01cWarKm62r0Z7VtbgFhncvxL3go/03k=; b=MHUhPyB3cv0EqC
	kb0wYEbAMAh23PvWn6eT3a7L/hFP73gjbjrujajJ17yAeGkpUmu/ctRuwqp9MIXtkEiOtW2/L9NfM
	IFA7iMV7OiDU0Mg5hd4f/4VUHL9LYOY4eDKSA55mSMDEnmz5F1kh6ytPDzXmqQtkf9EU7wl4VxpuN
	05ZAJ2TuLHvZjeAFqw1BurQbLVKPRVTBsAPsNIwa4rDttC6+3n3AAHK7yjzehTCQxI8HLtp4/TMWF
	EKzBI7UQODqLWCl0t0uiiqARj1x//RGZYpZ3V4TsJZ9bb0UOJj8Y4EGE8VZkKoI5Um8g0jcTdf2oB
	gG6bo3sRhdjT4wbt1y1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2e0-0001vx-48; Fri, 08 Nov 2019 11:41:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2dU-0001eg-Mh
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 11:41:06 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F69721D7F;
 Fri,  8 Nov 2019 11:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573213264;
 bh=V7Y1dJQO8mOAP60zX3u5fffB0gbGPVIIu4AGNz9dDsk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aEjY9uqpXOQ3PG/YiNqBhuDM7gWuOKBWjnvzE4sbT+NBi6FO6FRUTAmEV13tNCRsI
 d1vAZJNzadTAURT8eufNSBz8uoga5LyI8CZdUnBH77mmPYopSICTlmaAmTKDu6bZgt
 IqWjvDw1TTfM9OqgiW2Yw8/kCIVQXOum7XGxaJaU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 128/205] dmaengine: at_xdmac: remove a stray
 bottom half unlock
Date: Fri,  8 Nov 2019 06:36:35 -0500
Message-Id: <20191108113752.12502-128-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108113752.12502-1-sashal@kernel.org>
References: <20191108113752.12502-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_034104_769083_D4FAB260 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, dmaengine@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dan Carpenter <dan.carpenter@oracle.com>

[ Upstream commit 0b515abb6b7eb08e90bdfc01fc8fbdd112c15d81 ]

We switched this code from spin_lock_bh() to vanilla spin_lock() but
there was one stray spin_unlock_bh() that was overlooked.  This
patch converts it to spin_unlock() as well.

Fixes: d8570d018f69 ("dmaengine: at_xdmac: move spin_lock_bh to spin_lock in tasklet")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/at_xdmac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/at_xdmac.c b/drivers/dma/at_xdmac.c
index db5b8fe1dd4ab..7db66f974041e 100644
--- a/drivers/dma/at_xdmac.c
+++ b/drivers/dma/at_xdmac.c
@@ -1608,7 +1608,7 @@ static void at_xdmac_tasklet(unsigned long data)
 		dev_vdbg(chan2dev(&atchan->chan), "%s: desc 0x%p\n", __func__, desc);
 		if (!desc->active_xfer) {
 			dev_err(chan2dev(&atchan->chan), "Xfer not active: exiting");
-			spin_unlock_bh(&atchan->lock);
+			spin_unlock(&atchan->lock);
 			return;
 		}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
