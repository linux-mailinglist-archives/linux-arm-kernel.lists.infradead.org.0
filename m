Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A366EEC013
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:54:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CPRQWehOo7K2j0reRC+OwhjlQLe19pNCcsdboC12liQ=; b=r+vOugAjMLdHYr
	0BXLSKAVZS1vQGwplrvpSXcG1m0B3JMqKApOpwsBvDNYPxUYcJWYHFqo80XMa1feo8moCwhEDMKFx
	v1CPuy2l17Kp8dbeSeE9pQSA51RlsJLqYozgroKHe+tvj63puzJLux7OeZTumxTuhfIKMdRuOTxcC
	iKAXPtYtimy2nZ9tjCnHbS1qQlmVq5tybXTlKT9Yaco9cXg0yGlzQFjsyVBt7Q5fwX2VuT8B3UiFN
	HrdM8gQwMVBs3OnnHkS+yQpM8Mkfx4BQdOpLsf/5fsBUITkGbDv8PJAlftpKScpwAUOkRJSwX/qPj
	sSqzkPe0t8UUdCU2J9hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQShX-0003VU-E2; Fri, 01 Nov 2019 08:54:35 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQShO-0003V4-7W
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:54:27 +0000
Received: by mail-qk1-x741.google.com with SMTP id e2so9974822qkn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 01:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wGP9J7Unwih+h2svnZAKyto9DsfRZgk3cs18H/3/VKI=;
 b=Hhde+YtTRa4P10hNi8eW6fIn9ZPCI7zdbRMXu/Pv9jiTSPmYPwH0CMpmEk7mvLanwU
 zVKInR8T/tKQxa3LUVMcekQNkQCDs//bhgcVRopYT38uUp4uTx7c31vWXoE1c5XqNVXD
 ddlLpKNDk3l9HiALPbPp2S7dnAUUp2p2t3HxQwCUOwcpPN1JWJUCequg0cbE27jh/ife
 Th0xXeRjvLMSM5RyY0c8iB59m5HGzNoPmpXzEyehsL47JGD7KyW1A6eCamh9ZjqwijYZ
 jlTegt5KXzXbb+HmNFGKFntumtnzDVsN/w9QxdP54UYNFHfyVC19jwQATPBbKhdFA+Cw
 ipeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wGP9J7Unwih+h2svnZAKyto9DsfRZgk3cs18H/3/VKI=;
 b=lFyrm+xTbqJbZl0aop2yEIrel/lGqkBL2cEtm56pt201OYZR8Tn8zcrzpnlDiynWYE
 ZixBNzjUYbP03A42lVsuLaIbDwPxSc1fbAAH+wt12UV8Ndd2AnPK3GgaO+R2rH+YF7Yr
 Ko/7TQ270lg+EHCdKTtg4O4BHEQOAVaE7tqSGCb//DBda8cvX0M5AwldlQtzTFgW58iT
 4HP9UvQ4H/RWytQatO4HOaSWDpYPgJN+Cv1w4mZ2r+U/h0ck+45nbBo1plDYJVEznp7z
 k8dtseUnPom7c2uzdL98F/P7oCTI5eKN9plKqALvQwp+otJJlpmzK2pwUqSVDfblorJJ
 ne8g==
X-Gm-Message-State: APjAAAXeXr7O71BH/slLFho30/ydgUrwWrBh79yet36epzFZafvVyLdT
 QMUSJgI55QdStpZbMGU+E78=
X-Google-Smtp-Source: APXvYqyRx02Fmb67ruhdAATYmn3SZi11O9XARzhsfqe9U/x8dRlGlKndbYo0PY2bteYobTzH8UiXVg==
X-Received: by 2002:a37:a50a:: with SMTP id o10mr2150208qke.115.1572598464774; 
 Fri, 01 Nov 2019 01:54:24 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id f24sm737571qkh.81.2019.11.01.01.54.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 01:54:24 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] i2c: imx-lpi2c: add clk_disable_unprepare calls
Date: Fri,  1 Nov 2019 16:54:04 +0800
Message-Id: <20191101085404.10339-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_015426_298251_03953716 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver forgets to call clk_disable_unprepare when probe fails
and remove.
Add the two calls to fix the problem.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/i2c/busses/i2c-imx-lpi2c.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/i2c/busses/i2c-imx-lpi2c.c b/drivers/i2c/busses/i2c-imx-lpi2c.c
index c92b56485fa6..72eba477d04b 100644
--- a/drivers/i2c/busses/i2c-imx-lpi2c.c
+++ b/drivers/i2c/busses/i2c-imx-lpi2c.c
@@ -621,6 +621,7 @@ static int lpi2c_imx_probe(struct platform_device *pdev)
 	pm_runtime_put(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
+	clk_disable_unprepare(lpi2c_imx->clk);
 
 	return ret;
 }
@@ -630,6 +631,7 @@ static int lpi2c_imx_remove(struct platform_device *pdev)
 	struct lpi2c_imx_struct *lpi2c_imx = platform_get_drvdata(pdev);
 
 	i2c_del_adapter(&lpi2c_imx->adapter);
+	clk_disable_unprepare(lpi2c_imx->clk);
 
 	pm_runtime_disable(&pdev->dev);
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
