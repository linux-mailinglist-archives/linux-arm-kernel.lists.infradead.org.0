Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 574B41ACFBF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8G8Vxdwp5sgqsDgKqTFCkwO4nN5lCXIk+QX9q/h560=; b=EEbZu1XzbfDK5j
	PCP2Yh4ctDSw1ORYc96zBChOX9MQW/0qA+VRt+pvkAGIdC/hDItz1fmI3x5GUqCzKjdJ2O99TjCIa
	OwH8PqHjbqUh1bO4IUXl+eaGKvCw+jcjDSa6pYYzz6tyiXF9QBEYCCoiA/zXCHGvLTC3ytf/9TvAJ
	N2CzSDfVk0xBCEGvb7R442sS3uvBghJc6+xDTj2PIsYUHdJihfSm2TNpXLpsJejt2ZilYmxmflwpl
	wF233euVJydWuK1lO/WzrAWKorVEQcsvDazAnE38qROEHKytcGGQdBqRaCGSwxiGJ9y+L1m9StzaS
	IRMKSW0WcHOKKNBhP74Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP9Oc-0004HI-FR; Thu, 16 Apr 2020 18:37:54 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP9OA-0003wr-6J; Thu, 16 Apr 2020 18:37:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so6024768wrc.8;
 Thu, 16 Apr 2020 11:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C1S/+OwOPtKiEhvj9DA7M//jhqBwvQtvgsSI6UOLquM=;
 b=CQHi/unsUcvoUVzVaipedhpVjjLOdaIJ3t70EcTJiXiU3W6QWnpO4BzU9qC5wzdMS7
 NI3dBKWOPwn9LymU0i6VlQP4CQ2Q0k65AXXqCNRRR+lqoOhB8CXOAxt/4T3rvSFhruBZ
 JkMYrl8tbZBbfv+kb7tRnlMvmSMKmuNYVAgyMbLd2DvER+TvRsPJYIum1xuMZEvsc6Iq
 JX+6bTEPpwn/TWF2kB0OYFjqxnNESTZPJ+Ir5MOPavHDjVGSaYCl+VAvunsF2YdstMQJ
 65GYJyvoYhmYlSJ6jMMrWr4b4NB8guNA0rJatuQAVt2clPvB5BVvHxBCJzsWBm0cDd9F
 PLcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C1S/+OwOPtKiEhvj9DA7M//jhqBwvQtvgsSI6UOLquM=;
 b=JwibJ+R4H1iis/bk7YXPBJUWXhGMz2BGnEfhJ3XgSw3ZInLJHlwl2qF/e6lVJeNFQl
 Cf9ACq/hwyU/ZibywQtKRNA+3e/L1rMkY9V+3W6A5ikQgTUvpOqr43KPQzN35900IwVl
 nOfhiYw/yIJVXrEW1KyTeXwqOnFX36hzLCTuUZsdqdbo/zA5c412HRkB5j17kUv8jHXt
 N9PgotS1uWSSMzwmJHEXxN7UTSPkFLQMTu/FgjS04gUivLfCCobKdAOCWn3UnzkfhRuw
 RYUJ6GK2JR7ptttIphdrwbwvUz1Gsz4+Sxc834wYyQbLVMSq6VIsKRWMxMQv3+ADdOwg
 C0Kw==
X-Gm-Message-State: AGi0PuYX73j3Tig+bVxbIjO4PZIwx2Q5+UYbfAxRg9gwRM+JhFMPBl05
 R/F6cpJDaA7AG6pCJ7xflHI=
X-Google-Smtp-Source: APiQypLrrWMR3D00/qDY9fDZ7v+GzkuuMpcELcn5wFZA6k15OY1Sa+zbngp6IolofbZP344OubtZ3w==
X-Received: by 2002:a5d:4485:: with SMTP id j5mr11941530wrq.427.1587062244619; 
 Thu, 16 Apr 2020 11:37:24 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id v131sm4626434wmb.19.2020.04.16.11.37.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 11:37:24 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH v2 2/2] mmc: meson-mx-sdio: remove the broken ->card_busy() op
Date: Thu, 16 Apr 2020 20:35:13 +0200
Message-Id: <20200416183513.993763-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200416183513.993763-1-martin.blumenstingl@googlemail.com>
References: <20200416183513.993763-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_113726_230002_68B155D9 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The recent commit 0d84c3e6a5b2 ("mmc: core: Convert to
mmc_poll_for_busy() for erase/trim/discard") makes use of the
->card_busy() op for SD cards. This uncovered that the ->card_busy() op
in the Meson SDIO driver was never working right:
while polling the busy status with ->card_busy()
meson_mx_mmc_card_busy() reads only one of the two MESON_MX_SDIO_IRQC
register values 0x1f001f10 or 0x1f003f10. This translates to "three out
of four DAT lines are HIGH" and "all four DAT lines are HIGH", which
is interpreted as "the card is busy".

It turns out that no situation can be observed where all four DAT lines
are LOW, meaning the card is not busy anymore. Upon further research the
3.10 vendor driver for this controller does not implement the
->card_busy() op.

Remove the ->card_busy() op from the meson-mx-sdio driver since it is
not working. At the time of writing this patch it is not clear what's
needed to make the ->card_busy() implementation work with this specific
controller hardware. For all use-cases which have previously worked the
MMC_CAP_WAIT_WHILE_BUSY flag is now taking over, even if we don't have
a ->card_busy() op anymore.

Fixes: ed80a13bb4c4c9 ("mmc: meson-mx-sdio: Add a driver for the Amlogic Meson8 and Meson8b SoCs")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/mmc/host/meson-mx-sdio.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/mmc/host/meson-mx-sdio.c b/drivers/mmc/host/meson-mx-sdio.c
index fe02130237a8..2e58743d83bb 100644
--- a/drivers/mmc/host/meson-mx-sdio.c
+++ b/drivers/mmc/host/meson-mx-sdio.c
@@ -357,14 +357,6 @@ static void meson_mx_mmc_request(struct mmc_host *mmc, struct mmc_request *mrq)
 		meson_mx_mmc_start_cmd(mmc, mrq->cmd);
 }
 
-static int meson_mx_mmc_card_busy(struct mmc_host *mmc)
-{
-	struct meson_mx_mmc_host *host = mmc_priv(mmc);
-	u32 irqc = readl(host->base + MESON_MX_SDIO_IRQC);
-
-	return !!(irqc & MESON_MX_SDIO_IRQC_FORCE_DATA_DAT_MASK);
-}
-
 static void meson_mx_mmc_read_response(struct mmc_host *mmc,
 				       struct mmc_command *cmd)
 {
@@ -506,7 +498,6 @@ static void meson_mx_mmc_timeout(struct timer_list *t)
 static struct mmc_host_ops meson_mx_mmc_ops = {
 	.request		= meson_mx_mmc_request,
 	.set_ios		= meson_mx_mmc_set_ios,
-	.card_busy		= meson_mx_mmc_card_busy,
 	.get_cd			= mmc_gpio_get_cd,
 	.get_ro			= mmc_gpio_get_ro,
 };
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
