Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5261488AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:30:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUwOik/MhU0PJevCU2znmvOaR08r0bl0IA4ebF7qH0s=; b=cVKZi9ssIJG25q
	hgvhFXcJgRl+I3+baWo3ix70313YEaOb/k7TVBCslzGghcRosxFzqfLtpWXPGbwFSSAMp3y/iUDha
	Q2joYAl/bPBaa77fqEx/NuymAM28FWGHbOlVtON0YkP0W1C5YMS/49jCvCdrTGhgtsdL/Hi31XXIr
	TlFNKder2IhqDcvFu369Aym4pKyYguFEv1OYcJy4c2XQx5eqZCuSXt92DT8gwsx+cQ0RnOJVXwCrQ
	7mLJU6sCWRbJ1OSYlZABq4D/2cHyx8vRZyYYuTQJwSB84U9teCKw1UdJfJt48OCkMSUmXTK4t97qo
	8WZPYU5Uy0/OOH7SBcKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzyv-0007Dk-Ag; Fri, 24 Jan 2020 14:30:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuzqW-0004gD-N8
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:22:07 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01A7524673;
 Fri, 24 Jan 2020 14:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875723;
 bh=l6cloJhamHOBRbigpyNLbKO8rrDSvstEKce5/7sOMOc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=z38zTaHl9FJtyGRSKUPiNElLf8FiWARhGO0XY4H2DrxTNS1NAuylGK49/3nMQ9DF9
 K/1bWH0s7b8OrdK6YD5g6nlQH/kvknFE98cpC9E+Bxtl3xPeiSCDacHfRs1GH5+fsD
 gBTw52PSXcvQ7U+Pi0IqG05sJ76I4N/dmSlzMdGQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 04/18] soc: ti: wkup_m3_ipc: Fix race condition
 with rproc_boot
Date: Fri, 24 Jan 2020 09:21:43 -0500
Message-Id: <20200124142157.30931-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124142157.30931-1-sashal@kernel.org>
References: <20200124142157.30931-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_062204_822720_6BD97B2F 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Dave Gerlach <d-gerlach@ti.com>,
 Tony Lindgren <tony@atomide.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Gerlach <d-gerlach@ti.com>

[ Upstream commit 03729cfa0d543bc996bf959e762ec999afc8f3d2 ]

Any user of wkup_m3_ipc calls wkup_m3_ipc_get to get a handle and this
checks the value of the static variable m3_ipc_state to see if the
wkup_m3 is ready. Currently this is populated during probe before
rproc_boot has been called, meaning there is a window of time that
wkup_m3_ipc_get can return a valid handle but the wkup_m3 itself is not
ready, leading to invalid IPC calls to the wkup_m3 and system
instability.

To avoid this, move the population of the m3_ipc_state variable until
after rproc_boot has succeeded to guarantee a valid and usable handle
is always returned.

Reported-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
Acked-by: Santosh Shilimkar <ssantosh@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/soc/ti/wkup_m3_ipc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/ti/wkup_m3_ipc.c b/drivers/soc/ti/wkup_m3_ipc.c
index 5bb376009d98b..fc33bfdc957cc 100644
--- a/drivers/soc/ti/wkup_m3_ipc.c
+++ b/drivers/soc/ti/wkup_m3_ipc.c
@@ -377,6 +377,8 @@ static void wkup_m3_rproc_boot_thread(struct wkup_m3_ipc *m3_ipc)
 	ret = rproc_boot(m3_ipc->rproc);
 	if (ret)
 		dev_err(dev, "rproc_boot failed\n");
+	else
+		m3_ipc_state = m3_ipc;
 
 	do_exit(0);
 }
@@ -463,8 +465,6 @@ static int wkup_m3_ipc_probe(struct platform_device *pdev)
 		goto err_put_rproc;
 	}
 
-	m3_ipc_state = m3_ipc;
-
 	return 0;
 
 err_put_rproc:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
