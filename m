Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CCD13E2D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:58:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQYkfWvn1dQNdpQl+mad3iFl38fnf4j+dzds8dSg634=; b=rQQnd1orWs8IIi
	BOS9cIZAMbmVSu32E4IB3RYb1lBaoDlKS5NfRBwONm+2eYCgLwNy61ym/sbq+wqrFUF+vSdqegDUC
	f/taweKBfRUI07+ZQygYTh8+0U+jR44W+mutAn4b4mEnEcwz9r97NFr+WceltSJ+vHeQHmr4OChfY
	MiFhdMaqDfD6ceFecYvtBy80q6/3rBt7Xu3SxRoCtFLwPH8sfv5A6wUWH/5G8fSJcnfQHamcfVqs5
	OdwpoCVqLsw+sUHjxiuB6LjqE5smQep2NgVgeeoWBBQF07FXBwoOR6ROaYtWlrOmoTFtnfkz4e1oU
	GjrjIQCn0E/BjyjPbn5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8TX-0005tq-Od; Thu, 16 Jan 2020 16:58:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8PM-0000pY-7j
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:54:16 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E86812176D;
 Thu, 16 Jan 2020 16:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193651;
 bh=OzFODw4fgcmPhpz8E8cgdKYNHhUMu9ketHJs8OPWZQA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=b7ifsK/NcQq8eYKGbGo/0xDU7rp/wLTiVeRLW/B0Ofg6KoujqKPNzFGY/3z9vSM3R
 eR6gxRXOEin3hNHlb95Ykf3xySSkexWancXvfpJQ3j8nF4W4YDYCUKbmAOKskOrlR7
 5CoKFzUR1aQn+Sq8EMvlY+Zik2MpPySEY1txYZso=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 181/205] ath9k: use iowrite32 over __raw_writel
Date: Thu, 16 Jan 2020 11:42:36 -0500
Message-Id: <20200116164300.6705-181-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085412_397058_80DAFABA 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Christian Lamparter <chunkeey@gmail.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christian Lamparter <chunkeey@gmail.com>

[ Upstream commit 22d0d5ae7a089967e9295a06694aa3e8a812b15e ]

This patch changes the ath9k_pci_owl_loader to use the
same iowrite32 memory accessor that ath9k_pci is using
to communicate with the PCI(e) chip.

This will fix endian issues that came up during testing
with loaned AVM Fritz!Box 7360 (Lantiq MIPS SoCs + AR9287).

Fixes: 5a4f2040fd07 ("ath9k: add loader for AR92XX (and older) pci(e)")
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c b/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c
index 159490f5a111..60731e07f681 100644
--- a/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c
+++ b/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c
@@ -84,7 +84,7 @@ static int ath9k_pci_fixup(struct pci_dev *pdev, const u16 *cal_data,
 			val = swahb32(val);
 		}
 
-		__raw_writel(val, mem + reg);
+		iowrite32(val, mem + reg);
 		usleep_range(100, 120);
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
