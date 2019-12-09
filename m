Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0D51168C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:59:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a5Qw+t5nr3ku+jgUBwUoFdHFNeHc5fQRzSE75iLdMfU=; b=szxdYCnoARD4/i
	eYrnX0ImcECVQofd/028o7w+AsHqp78ISuWG3gvSAaVPfWfyNEma5T5J/+X/FmuJ1p6d9T9puU4xF
	+T3M/6Lxk61jZy+50+VS3kaN0qCro9EBOTzL2cncgCboZCB8BlQHwvyEnEeL1f0iaIhRzYiBYKZAK
	hzdGNGJJ73QVf08w4hnQW7H1pIEpf5j2Yax23Ki0Qn3vvHu26qF4ct6Mi6b7BR1kagsyMVXwF4mt7
	SrPya92sKlFGqOYaAD1rmJurwqXEd626rxXKbL+RSY3tobqy+U40T3gzvoXi7vJKj7jHKcv1V1zjm
	5ZrAEgp0/u+7vgsx5J1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEsc-000809-0W; Mon, 09 Dec 2019 08:58:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEsP-0007zL-3J
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 08:58:46 +0000
Received: by mail-pg1-x543.google.com with SMTP id b137so6777401pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 00:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J5879LZ/Pi63QwYbKH9FG7q4Bl0Ds4fjn/Pvg7Od1Ec=;
 b=RZaX0ioqUEqw0QfmHP6faFSw/t94WFmFghK9AEN6Yv+N/+UKM772AHLpfMdRLslZCz
 A1LJv9UNjP5cXmhnRr/SWM/veawKnW1O+iElSUa5ANIA9akzRPw9A9t+sr4xuTp1CnLW
 2QueHSGHz/xh0Mpg5C31KZN2D/Uyu1LKQGTzO5S1a+AUG1Ky+qPl3uhZrOB1i+QBEEfV
 hSI2mvJvTb1hQga8wCfn6zUhQpldlomq2PprONFxrzqDnyb58T+3YlJ0Rk+HInqAqvor
 QkjLVHbIAEPN5qD75BlwVNmISorFFWMfXJvZfx0Tm0GEN5OmLmpcdGrqnt/LAq1VDAqb
 isTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J5879LZ/Pi63QwYbKH9FG7q4Bl0Ds4fjn/Pvg7Od1Ec=;
 b=HgsC9mpUUAsD/4xec55mI9xFUaU5YdfRTEcGlt/0aNVGSC4OmZFe1LN4gKp7gssmPF
 mfywqhUIsXlVAVv/iQ+88eC6AaBVaj5BNECnIp35Qy+ICVj+EESkqmhezLirvVwXeoCG
 fCM1ugiEzONzeLfWAe6yzNo5fLQSdmYRFPS5u+qWleKeokAEtT+eskAYo7C3B4PXsSEe
 PegeUneh2ISJqJUBltdg71BiGeCrLjGOQVep+lhUvEBrIrF9fE/h9DeIebdL7UCzWGUg
 QtkOlgJYLy8bCYkWhOrWIHjhvFHpFGed+VbNit+ZC+0SWbkt0cR+xrHiDMJ8DqYsbaDG
 8ynQ==
X-Gm-Message-State: APjAAAV5CRClGhk2M28h8NmeGuQt6qE+A5/mPYd9x6vxvcONqQ+w5lyf
 4WG+mmlI8FGrl/GgVED6s6tYrT71FEg=
X-Google-Smtp-Source: APXvYqyOgxCtG+slALBSZvCRJBZ2STsFf/PiiOls9fa04H+mWGLjYNLpGc90OOQE5vNvxiYdGKoleQ==
X-Received: by 2002:a63:cc02:: with SMTP id x2mr17928600pgf.114.1575881923958; 
 Mon, 09 Dec 2019 00:58:43 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id f24sm11681569pjp.12.2019.12.09.00.58.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 00:58:43 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
Date: Mon,  9 Dec 2019 16:58:28 +0800
Message-Id: <20191209085828.16183-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_005845_144868_85FCF547 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All drivers in imx call v4l2_async_notifier_cleanup() after unregistering
the notifier except this driver.
This should be a miss and we need to add the call to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 99166afca071..2bfa85bb84e7 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -1105,6 +1105,7 @@ static int mipi_csis_remove(struct platform_device *pdev)
 	mipi_csis_debugfs_exit(state);
 	v4l2_async_unregister_subdev(&state->mipi_sd);
 	v4l2_async_notifier_unregister(&state->subdev_notifier);
+	v4l2_async_notifier_cleanup(&state->subdev_notifier);
 
 	pm_runtime_disable(&pdev->dev);
 	mipi_csis_pm_suspend(&pdev->dev, true);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
