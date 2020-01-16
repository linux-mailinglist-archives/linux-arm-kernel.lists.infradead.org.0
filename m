Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D828613EB8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYyejgwGOEe5F3J4+9CL7Rr/jJqKblG1Y4OyDDdq68A=; b=ZR7SXR+olOY/2S
	hkQ3jAllxi2GJdwyDA7N5Mcj5LL1oj6PLAgA71fyTXFJNmt79hi+BgAy2BAqI317D7BzpNgeTrRgD
	egjaLCkaEWtLisoe7ZR5A4ml+QdVOiKW/OAb8fR9A3bLHBqmGXAOODxCFMlf7E6Ah1wOYMcH6k76W
	+BQQnd+CtwCOaYTJSjvX8Y09itineohiblbL6S/oEHFIuikTs1Nt8z3dvU9m9cGdz2Z7IcRK4mRQI
	jO4O6S8GOr1MqqxqA5pYkP7sLARrKt+cBZ2ZCdtK7yOz88WiBTFLgmtWReaE064f9wvu33wVGRw7N
	OX91fdncvDo20JglDKWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9I8-00016D-HB; Thu, 16 Jan 2020 17:50:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8lr-0002jb-Ag
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:17:31 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D76EC20730;
 Thu, 16 Jan 2020 17:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195046;
 bh=eCsheN5nJfhPWN/zVSO0BJvoRocn6ZHygXATnnbqHTk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cpDI7WqCM3WwGcXzA6HnGt+Rz2xuCmpz33NCOijxGirWt/lnK38fz+Cps93f+wMjh
 1ksDZNxZOoh5HbyfpVKFVwRBrpiVzRJhlvEzIK/q5mz2pHmdc28FfxhYk6WZbXi1Fk
 U0+sTfj60bq/o4iTS2NNtqIFHE+aE/F0UIPw5MOQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 005/371] PCI: iproc: Remove PAXC slot check to
 allow VF support
Date: Thu, 16 Jan 2020 12:11:13 -0500
Message-Id: <20200116171719.16965-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116171719.16965-1-sashal@kernel.org>
References: <20200116171719.16965-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_091727_415114_73EA06C6 
X-CRM114-Status: GOOD (  10.40  )
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Jitendra Bhivare <jitendra.bhivare@broadcom.com>,
 Ray Jui <ray.jui@broadcom.com>, Andy Gospodarek <gospo@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jitendra Bhivare <jitendra.bhivare@broadcom.com>

[ Upstream commit 4da6b4480766e5bc9c4d7bc14bf1d0939a1a5fa7 ]

Fix previous incorrect logic that limits PAXC slot number to zero only.
In order for SRIOV/VF to work, we need to allow the slot number to be
greater than zero.

Fixes: 46560388c476c ("PCI: iproc: Allow multiple devices except on PAXC")
Signed-off-by: Jitendra Bhivare <jitendra.bhivare@broadcom.com>
Signed-off-by: Ray Jui <ray.jui@broadcom.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Andy Gospodarek <gospo@broadcom.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pci/host/pcie-iproc.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/pci/host/pcie-iproc.c b/drivers/pci/host/pcie-iproc.c
index c0ecc9f35667..8f8dac0155d6 100644
--- a/drivers/pci/host/pcie-iproc.c
+++ b/drivers/pci/host/pcie-iproc.c
@@ -573,14 +573,6 @@ static void __iomem *iproc_pcie_map_cfg_bus(struct iproc_pcie *pcie,
 			return (pcie->base + offset);
 	}
 
-	/*
-	 * PAXC is connected to an internally emulated EP within the SoC.  It
-	 * allows only one device.
-	 */
-	if (pcie->ep_is_internal)
-		if (slot > 0)
-			return NULL;
-
 	return iproc_pcie_map_ep_cfg_reg(pcie, busno, slot, fn, where);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
