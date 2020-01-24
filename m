Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C16A148884
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:29:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfCuqrwdvJB9+mwCfovQXi1+j5uYvcmLoJhqof6465c=; b=Sa+h3kNglu7Xn+
	iOazXdmyii3VicAfxaezU2F4/w9/s9UqtgIFCXYOeInQVF/YZE8+mLu2PMHWaNx66QjBvJGnEs5bI
	zCAgKk8BRiEJKibRk8Tc+CA2BzrdtImFbqzEUBQg3KWRDg0osO9uf1kctccQHx62HDwy5O0rNyfBm
	KhLiBb5btZvKvS5aem2YTrWbLaJSud7Sn5tBRb+g+rRNklwiKULK0fV62MDibAWXHiclWm+f2mjjb
	3N4FRzoQZn+b04KoGvZMAG0ZkrQ2vnXMwJKzoKjxLLUMD2/l+t6P0vn8TrB4rz6YyLUd3y/VNOc+W
	pJCgj/EaR3XR9J8ojGbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzxn-0004ti-Tl; Fri, 24 Jan 2020 14:29:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuzpu-00048i-IO
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:21:29 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B4FF622464;
 Fri, 24 Jan 2020 14:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875685;
 bh=v12CYClJrDn14XHZyzfkg2sk9lCjmDtjUyfsGmz6Wgw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HW+bVt2hMZKBFT+rbwSrvDLMyOAoXSvpwtDnkgaMe6I5PifGLmJ8RGAgncp9iY8Ab
 keUSUNMbstf29FH+AlkjrtLqQ91MYMFt6BK+4wmkmwERCuPXVuihAwdbQL8j7iU7Zg
 zkOBcHcM2djSXoITvcBRbiJPk/HKtFLoMYiY6Bmw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 05/32] soc: ti: wkup_m3_ipc: Fix race condition
 with rproc_boot
Date: Fri, 24 Jan 2020 09:20:52 -0500
Message-Id: <20200124142119.30484-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124142119.30484-1-sashal@kernel.org>
References: <20200124142119.30484-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_062126_721968_D341186E 
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
index 369aef5e7228e..651827c6ee6f9 100644
--- a/drivers/soc/ti/wkup_m3_ipc.c
+++ b/drivers/soc/ti/wkup_m3_ipc.c
@@ -375,6 +375,8 @@ static void wkup_m3_rproc_boot_thread(struct wkup_m3_ipc *m3_ipc)
 	ret = rproc_boot(m3_ipc->rproc);
 	if (ret)
 		dev_err(dev, "rproc_boot failed\n");
+	else
+		m3_ipc_state = m3_ipc;
 
 	do_exit(0);
 }
@@ -461,8 +463,6 @@ static int wkup_m3_ipc_probe(struct platform_device *pdev)
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
