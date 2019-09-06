Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2699ABBCA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=elblQIlsa9ax4gyj1jJFxa94nsouQA1gnn4PHwGRWB4=; b=MqSkF203zbDmr6
	yecSwEjEjA/sJ1Ab7AldPQWsV9f+8wAXINTaIP+2UWFwachO0vsOgd30FVoHyGdDrOm92Z+I0L24v
	fg84Ez+cXQ6BoUb0Arr66ZUDlAHBt/Wkp7NXV+nPMsc1prFgaPPoUhi7GHt1aLPPlsX/lELLZ+D39
	MaM4r205omag+OkDLbve0WsQt1dJ4k2pLndSCylVpCIVc7edX3mnyn+YfwINFEveqkmetCseQN66f
	GLK+40vx2APHuELa8ikQhqXHtbuMI7yvl/tGlj3NH2vSNlwRNAP0xsIGlw3WCgG4Ct/95O2HjCL7b
	I2dLYyzG8qIIRZ6gKYhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Fqt-0006pq-Ds; Fri, 06 Sep 2019 15:08:43 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Fqh-0006on-FX
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:08:32 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1i6FqZ-0001Eg-V9; Fri, 06 Sep 2019 15:08:24 +0000
From: Colin King <colin.king@canonical.com>
To: Rui Miguel Silva <rmfrfs@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] media: imx7-mipi-csis: make array 'registers' static const,
 makes object smaller
Date: Fri,  6 Sep 2019 16:08:23 +0100
Message-Id: <20190906150823.30859-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_080831_658229_E4984440 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

Don't populate the array 'registers' on the stack but instead make it
static const. Makes the object code smaller by 10 bytes.

Before:
   text	   data	    bss	    dec	    hex	filename
  20138	   5196	    128	  25462	   6376	staging/media/imx/imx7-mipi-csis.o

After:
   text	   data	    bss	    dec	    hex	filename
  20032	   5292	    128	  25452	   636c	staging/media/imx/imx7-mipi-csis.o

(gcc version 9.2.1, amd64)

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 73d8354e618c..f8a97b7e2535 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -293,7 +293,7 @@ static int mipi_csis_dump_regs(struct csi_state *state)
 	struct device *dev = &state->pdev->dev;
 	unsigned int i;
 	u32 cfg;
-	struct {
+	static const struct {
 		u32 offset;
 		const char * const name;
 	} registers[] = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
