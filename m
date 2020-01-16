Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DDB13ED28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUZ/Rv0H7o9V8TS6+l71Mi18nxhmZGTr/nbVs9ZYj7c=; b=SA1uQ04ww0ugQq
	0dvMHlzA9DLpRPdUrpfYYMMMjgWsWH01tBoEvig+ai9VUepCrbuuzS0Os1N3GSDXi0H5mDxIDvUwG
	5/LPUdVdmLwJ4yfse8U3iM9Q1CmQcjX9CwbnukkScxrxDse1L3BHKN/K50BeYmwtMd9E8tcvK51+z
	B0UcLpinL1ms8eXR5uwlWFgTWAMEOAu/09ZbvfBa/uHlM2FvdoBCpCx31oaZa+HyEI0srsjRrayV1
	TWAEn7nox1z0TqG69LIWWBbZ1bAULueeLtO+2viX7g1Z+TxHJDQgkDi6XpvnfkfeAWHmzcPdyIXxq
	ur8nbt3hy53k9EkZthxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9ST-0006L1-3G; Thu, 16 Jan 2020 18:01:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8uJ-0003vR-RG
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:26:28 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53CBC246BC;
 Thu, 16 Jan 2020 17:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195571;
 bh=U0GllvyW/qZsgF/6DHdzP2hLFDdGfz0JdUTJSWqaqSY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Fs7Ph4/L1KtnOT0ns9c0DZ76dPKTrJc45BdHBR9q7z0C626Y2udrTJtDi8fgDz4vA
 3PbNM6Twvyd5pz7qLvDjd/XbezdXaZv+mIjzbwDjRzkqhhwEpgBAl9cYT0rtfjDhSI
 iq9rNo9uQq/0LOPw7QXP/UX8rAI2YPU2g4LoBmwY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 155/371] soc/fsl/qe: Fix an error code in
 qe_pin_request()
Date: Thu, 16 Jan 2020 12:20:27 -0500
Message-Id: <20200116172403.18149-98-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_092611_944029_4042C3F8 
X-CRM114-Status: GOOD (  10.81  )
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
Cc: Sasha Levin <sashal@kernel.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Dan Carpenter <dan.carpenter@oracle.com>,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dan Carpenter <dan.carpenter@oracle.com>

[ Upstream commit 5674a92ca4b7e5a6a19231edd10298d30324cd27 ]

We forgot to set "err" on this error path.

Fixes: 1a2d397a6eb5 ("gpio/powerpc: Eliminate duplication of of_get_named_gpio_flags()")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Li Yang <leoyang.li@nxp.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/soc/fsl/qe/gpio.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/gpio.c b/drivers/soc/fsl/qe/gpio.c
index 3b27075c21a7..5cbc5ce5ac15 100644
--- a/drivers/soc/fsl/qe/gpio.c
+++ b/drivers/soc/fsl/qe/gpio.c
@@ -152,8 +152,10 @@ struct qe_pin *qe_pin_request(struct device_node *np, int index)
 	if (err < 0)
 		goto err0;
 	gc = gpio_to_chip(err);
-	if (WARN_ON(!gc))
+	if (WARN_ON(!gc)) {
+		err = -ENODEV;
 		goto err0;
+	}
 
 	if (!of_device_is_compatible(gc->of_node, "fsl,mpc8323-qe-pario-bank")) {
 		pr_debug("%s: tried to get a non-qe pin\n", __func__);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
