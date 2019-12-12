Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5A311C484
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 05:02:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pkC/8CFgSaJN1spESQmSZkEBu8km8tJJHiONmjOLu58=; b=Lxl4fqK/HwWk4J
	9sEx0h/IsTNvCT6zyfe9IRA9kOHItKtuc6nTlK9Fzvinu3UL/bTnrlBPPxFoJuL7TfOSujfrU3Spt
	WQEu+oadTJ4KdB6+Y4AK3Q32jAzSXLnyGktM9dWUxaivPkPPF+Wr0qdIrx8VNg4hgWIEdgrzsV5wE
	9f48svFt1K+7RHNkbncw2FTsRP3kbPu1K1jixEiXd7vRk4XKUeeJEvYj9L6dW+tn7LKd3Q0ngsfpL
	rT3gQ5cSZEONPlOu3vNwJr81UvMOb5WuLhPopcgRbmassZ23emWjAcxltFZRT5aFzJUnUKPbS5ekB
	zDHNQC4mNDQ/e9gYxMSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFg9-00061Y-0L; Thu, 12 Dec 2019 04:02:17 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFfy-000619-Fm
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 04:02:07 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBC423Dl074522;
 Wed, 11 Dec 2019 22:02:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576123323;
 bh=G0MttXQxcSEe8MG9sVlpbE1rdRM5dXjay7Qfde/9HrI=;
 h=From:To:CC:Subject:Date;
 b=QtDrp3F6LGrLxU/ocoQZcnVMmJz6oG7juchJ3PJr6Sj2MolxZStHrgSX+l6RRZ8AN
 6BosQ6r8RY6oJvQf/ZOCRQPQ2FMPbkd2EnHMNe0V0e8WHn/1qoVCPityluWyBP37Sx
 0738N5GZ6kEp0EYEoJk/rCEhXscKf1ZwkybdC64g=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBC422pd064318
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 11 Dec 2019 22:02:03 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 11
 Dec 2019 22:02:00 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 11 Dec 2019 22:02:00 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBC420xY065191;
 Wed, 11 Dec 2019 22:02:00 -0600
From: Dave Gerlach <d-gerlach@ti.com>
To: Tony Lindgren <tony@atomide.com>, Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH] soc: ti: wkup_m3_ipc: Fix race condition with rproc_boot
Date: Wed, 11 Dec 2019 22:03:14 -0600
Message-ID: <20191212040314.14753-1-d-gerlach@ti.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_200206_587306_D0E60BAA 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suman Anna <s-anna@ti.com>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dave Gerlach <d-gerlach@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
---
 drivers/soc/ti/wkup_m3_ipc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/ti/wkup_m3_ipc.c b/drivers/soc/ti/wkup_m3_ipc.c
index 378369d9364a..e9ece45d7a33 100644
--- a/drivers/soc/ti/wkup_m3_ipc.c
+++ b/drivers/soc/ti/wkup_m3_ipc.c
@@ -419,6 +419,8 @@ static void wkup_m3_rproc_boot_thread(struct wkup_m3_ipc *m3_ipc)
 	ret = rproc_boot(m3_ipc->rproc);
 	if (ret)
 		dev_err(dev, "rproc_boot failed\n");
+	else
+		m3_ipc_state = m3_ipc;
 
 	do_exit(0);
 }
@@ -505,8 +507,6 @@ static int wkup_m3_ipc_probe(struct platform_device *pdev)
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
