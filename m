Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B281F13E36A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQ6H0WNmnP2TMa5ENVDeDap66tlPnQnbrUjpSryJ6bM=; b=qzVoE46eMyU9E0
	MrZ0CGKZ4yusg1wpXQPZeW3VXBj55X2les+K+K2usXSeJsSpaadWFp1f/bdYmnbPHndyY0SopfdcN
	D67dC5UMrb2LVGkIdBbqfEtZNNnE06c5UAUtjassg+LqX8cjTYTdIgVz95L4uHVnwxg8j9eogTgY+
	A0IsCuZjW+0Xap4lUlAxo6l3iyN1MP41hGHFjes0zl4HHxfwP6C22jhyZWPcQcCTosNU1pZAAnBCr
	skRdyESZwF6bXimafGOxVjEgJeT+5gjW23eT2WuJUjgI8DljYyHSdH3kGNQo+f2+iEA/54VPrYlQY
	gNP6gmiAst2tjWslVp+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8Wq-0001lX-24; Thu, 16 Jan 2020 17:01:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Qy-0003dv-Re
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:55:56 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6AA70205F4;
 Thu, 16 Jan 2020 16:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193752;
 bh=iTZ3/mJbUdvgbPjh50KeuMkSDpA6gvzu10MlVUhBkFU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fY9OI06C20zNRd6kpxMKAzgl4ydmIe71Hd05zn80cwe1PczRrN03cFV7bSu8uFlz/
 T1SIfPnPYyglFFLxuY47Hq4E3LP9A4eOOPOMrvZRu4102RcMu2rtL0T9lGfrd2Hixl
 npwFyfOVagYsYciLNZjR/ciXRXDnWZaiBVxFEpLY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 041/671] drm/sun4i: hdmi: Fix double flag
 assignation
Date: Thu, 16 Jan 2020 11:44:32 -0500
Message-Id: <20200116165502.8838-41-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165502.8838-1-sashal@kernel.org>
References: <20200116165502.8838-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085552_919288_9849DB44 
X-CRM114-Status: GOOD (  11.89  )
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
Cc: Sasha Levin <sashal@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 Giulio Benetti <giulio.benetti@micronovasrl.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

[ Upstream commit 1e0ff648940e603cab6c52cf3723017d30d78f30 ]

The is_double flag is a boolean currently assigned to the value of the d
variable, that is either 1 or 2. It means that this is_double variable is
always set to true, even though the initial intent was to have it set to
true when d is 2.

Fix this.

Fixes: 9c5681011a0c ("drm/sun4i: Add HDMI support")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Reviewed-by: Giulio Benetti <giulio.benetti@micronovasrl.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20181021163446.29135-2-maxime.ripard@bootlin.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c
index 3ecffa52c814..a74adec6c5dc 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c
@@ -52,7 +52,7 @@ static unsigned long sun4i_tmds_calc_divider(unsigned long rate,
 			    (rate - tmp_rate) < (rate - best_rate)) {
 				best_rate = tmp_rate;
 				best_m = m;
-				is_double = d;
+				is_double = (d == 2) ? true : false;
 			}
 		}
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
