Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C36A1D28E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 09:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vNUskFFaVjK74ZCzv+HXlB2MbIrtj+M35HizMFBMT/s=; b=A53Bam+RbXmMte
	rbV8B64+Fkhw8VBepd4Jj6qxtwKLIifbKT6EK3RZ9jMfM83DAN5h7XJAmt3p515UFLW96eH02pOa7
	vj6nx4EkAhBxqai3I9WkdrNO3D59zWsZ4w7dsz39eRA8TDcsPgC5S+lQDyuuL47VXUQulx5ZGHAsm
	3JdN1mFTyC2/NaIGL7p1gNiJch2ao8r7+bBtC4onKlQAQwPi0s2YYLYOC3Ld9usg6t9Vp9XBzdoMX
	pICi/gdOUJ+mvuW+Db5SGA1Nx2/IezNi3TkMN+GJXW6MWKuoVjeZbxWm8feYScOJzQm0gOrDDu0iV
	+s672XRir2AlOX2D2yHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8Qu-00022G-Al; Thu, 14 May 2020 07:37:32 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8Qm-00021n-9H
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 07:37:25 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04E7bKZV054213;
 Thu, 14 May 2020 02:37:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589441841;
 bh=QGXAZUOwvDino56G8IWDdQ/NYT0jQ6NRH5b71pGNvrc=;
 h=From:To:CC:Subject:Date;
 b=cpS3n/GTSD1sKVTClUxFGXySVg4Fa/sMcsnTMldfYMfIpCPT2mDjZeB2SAYmLxHl0
 8DhFnfb66dYVlVkapr8lZ6Zudp+4OOQPnR7mNidJHU+brlDVLmCkJsJYF3l0CM+Nxp
 UN13c9NS5lN8KTC2YICC/UmU/BCX7xd9l4EW4W3I=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04E7bKIH002543
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 14 May 2020 02:37:20 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 02:37:20 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 02:37:20 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04E7bIm6009731;
 Thu, 14 May 2020 02:37:19 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 1/1] soc: ti: omap-prm: use atomic iopoll instead of sleeping
 one
Date: Thu, 14 May 2020 10:37:18 +0300
Message-ID: <20200514073718.17690-1-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_003724_408077_2E7950C5 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tony@atomide.com, linux-omap@vger.kernel.org, s-anna@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The reset handling APIs for omap-prm can be invoked PM runtime which
runs in atomic context. For this to work properly, switch to atomic
iopoll version instead of the current which can sleep. Otherwise,
this throws a "BUG: scheduling while atomic" warning. Issue is seen
rather easily when CONFIG_PREEMPT is enabled.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/soc/ti/omap_prm.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index 96c6f777519c..c9b3f9ebf0bb 100644
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -256,10 +256,10 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 		goto exit;
 
 	/* wait for the status to be set */
-	ret = readl_relaxed_poll_timeout(reset->prm->base +
-					 reset->prm->data->rstst,
-					 v, v & BIT(st_bit), 1,
-					 OMAP_RESET_MAX_WAIT);
+	ret = readl_relaxed_poll_timeout_atomic(reset->prm->base +
+						 reset->prm->data->rstst,
+						 v, v & BIT(st_bit), 1,
+						 OMAP_RESET_MAX_WAIT);
 	if (ret)
 		pr_err("%s: timedout waiting for %s:%lu\n", __func__,
 		       reset->prm->data->name, id);
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
