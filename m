Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF661F237E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cA5/v61YeeVFNa5UkTLkPeoDM+8THegJgTad9t2721k=; b=QS3hUv/MvFnEKQ
	PHkybgYfxUNQdon7WHqS4kPWb13Ebb/Pe1SoNFvi7+EGlLraOW7nXIymb5Ew5tJ0A8pN1ngfdAq3k
	fiqeWWueUP4IB2jQib9FGabfVU2BKOLXKv+687ss2POpDAZ781oJnrreaxWxds7NUTrR6tt8FBPhl
	0mGaU32lsbhPa8Q/TJyTlIVsyjhaKR2vHyZLDy/ikH2H2xW/oz+mKk/9IpBySKW0+5mUCpG/X9X20
	ROPXiy9M8ELe0VxZHCYJjfG5vpUEKmS341jaVNquXHbazDcdStIz3VPc3IwMzh5/uPy2L/tdPR/SB
	tuJ+RLRBMrfGUwh8vxuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQzF-0008EE-Hn; Mon, 08 Jun 2020 23:15:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQtc-0000r5-0T
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:09:38 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9FFD3208B8;
 Mon,  8 Jun 2020 23:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657775;
 bh=lo+IN4r4Bg9TSjj4yw/aqNpns9X/UoYTuCNNSVl6eSU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=w0DptA3knK0uweaUxcJFmOXSek+JBokg3HeUXUOHpH5fUrn2EvjLo8v7PvJEPZsAx
 Hc5bGn7wQem0CEy9Mr5sAOsywZEykcnz/3QI3Q5f3WwihxoUtUs1L+HMb3lrzksupO
 vOe0+Qe73xeFCOzmAm8reN2zO5pV/534SiAuWotM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 158/274] media: sun8i: Fix an error handling path
 in 'deinterlace_runtime_resume()'
Date: Mon,  8 Jun 2020 19:04:11 -0400
Message-Id: <20200608230607.3361041-158-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_160936_085208_49054C4D 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

[ Upstream commit 62eedb356188376acd0368384a9b294d5180c00b ]

It is spurious to call 'clk_disable_unprepare()' when
'clk_prepare_enable()' has not been called yet.
Re-order the error handling path to avoid it.

Fixes: a4260ea49547 ("media: sun4i: Add H3 deinterlace driver")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Acked-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
[hverkuil-cisco@xs4all.nl: err_exlusive_rate -> err_exclusive_rate]
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/sunxi/sun8i-di/sun8i-di.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c b/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c
index d78f6593ddd1..ba5d07886607 100644
--- a/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c
+++ b/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c
@@ -941,7 +941,7 @@ static int deinterlace_runtime_resume(struct device *device)
 	if (ret) {
 		dev_err(dev->dev, "Failed to enable bus clock\n");
 
-		goto err_exlusive_rate;
+		goto err_exclusive_rate;
 	}
 
 	ret = clk_prepare_enable(dev->mod_clk);
@@ -969,14 +969,14 @@ static int deinterlace_runtime_resume(struct device *device)
 
 	return 0;
 
-err_exlusive_rate:
-	clk_rate_exclusive_put(dev->mod_clk);
 err_ram_clk:
 	clk_disable_unprepare(dev->ram_clk);
 err_mod_clk:
 	clk_disable_unprepare(dev->mod_clk);
 err_bus_clk:
 	clk_disable_unprepare(dev->bus_clk);
+err_exclusive_rate:
+	clk_rate_exclusive_put(dev->mod_clk);
 
 	return ret;
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
