Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D967A11F80E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 14:53:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wJVwRVcRDi79KCzvuTLxHatLz0keXBTfG8rVt4TOWZw=; b=riA
	aawIaRmD//rhXFGwCgwUab0tZJmG/8PWgu13+zjUT2GgxskNZ0uvorqQMgIXPG9EekkrI+ps9d9zu
	gitGjkx2F2uz/HZ2VGP0/bVPqq4GbRJQVd/MRkNda2stqDgJysXwQviHbfWEP2q7xLFlerD9CDyP7
	JswDBNeBRFOatKUQk1ECCVNAxi0/X6m/3/Re9fCE2g2rzT/Ln2RsgTgeclHKeCqWaOfHKyml3GTJm
	Jx81migUldoNYXvfpx3xV4OJ0inXYDivghzQf2lee73rhi1mX8zL7VcXYbV9mQdFRpPlJBAEiz9Um
	A86V/LiNKSLmVdTZzqI4+35gbTtCHjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igUKt-0006Fj-R0; Sun, 15 Dec 2019 13:53:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igUKl-0006FN-0K; Sun, 15 Dec 2019 13:53:20 +0000
Received: by mail-pg1-x543.google.com with SMTP id z124so2132445pgb.13;
 Sun, 15 Dec 2019 05:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=F+7PYqMmtcZUrcYIJM/i90K58GWESr+2/oVNmo6E2TM=;
 b=GweBf684G0VM3rBai6Cr2ab3OMQJwlkinQuGIWtcWn/srhjrmrA/slPrMrg1+EiBy4
 Rmn1eMVfS5LEKL+G0W4GEAKhAXl3hSOkWhlUAeZDNMQnMp2TsPyXD/Glq/xykBeugbEw
 nvCEi0dqz5FwIAZ4AIV7EAZC00Y+IkUIqXcPYsR/iK4pykrpk0WDli1j7IuxDtUJIppv
 N97Ohd8T4r3+yzzlEBemMbyLbQ19ZM63TA+U+vJqQ1K6yqBsBN1JwIoFfRMshd/GshNK
 RH4/4N1OSuq+5DOolt+LJS5G8K0LmOXdoLjH/BN2kyvaig0H8MBuKZZKrC6j7GUDWHaa
 tEiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=F+7PYqMmtcZUrcYIJM/i90K58GWESr+2/oVNmo6E2TM=;
 b=b72FNQzwX9GQtRLj4tehjMyuY6JVdvDcbQAvOql3Ib8vOhuBCeTxI9J/rdhdZAJi9i
 ui0OKRyRneeF9lMVVctCW0Oz6fdvr9nSJ65ujtRaHDo/quS9dJvIvYONLgroiH7C6hhd
 2USWC0XG+yhY2ROuKSysT3EWwRbMnT61h4K0xqXxGMDVBojV8XBsamYahxYvCLkOiZYs
 eN6rLsbXyiNZO1Kam55Zzv++QzFW15xdmJbdCa49PSILJMf783pOFnO7t0gfYO0RNG4p
 XIdsa+fAs/lEVElhFGqXnp6tX6rCpIHBvFWBIhHegpcl6xXM1oFnAbv9ZoETnns4gBP7
 GbfQ==
X-Gm-Message-State: APjAAAUtC+ETWNS6cIabKtVq2/teHuGJCwdapzC69iAnXu9toL6oeJb/
 30YQn082grmQZmGzYlx/k7Q=
X-Google-Smtp-Source: APXvYqxXJkAsV8yHg1GoZBKuVsSVXvzUxrMPybKz+apkWNWpA09kgmFG+igs8TzNO6i+vyRPtp+h7w==
X-Received: by 2002:aa7:9839:: with SMTP id q25mr11101715pfl.161.1576417998524; 
 Sun, 15 Dec 2019 05:53:18 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id a10sm18291446pfc.35.2019.12.15.05.53.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 05:53:17 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
 heiko@sntech.de
Subject: [PATCH] PM / devfreq: rockchip-dfi: convert to
 devm_platform_ioremap_resource
Date: Sun, 15 Dec 2019 13:53:15 +0000
Message-Id: <20191215135315.30656-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_055319_072385_65EC6E21 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/devfreq/event/rockchip-dfi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 5d1042188727..cc5d4c01af0b 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -177,7 +177,6 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct rockchip_dfi *data;
-	struct resource *res;
 	struct devfreq_event_desc *desc;
 	struct device_node *np = pdev->dev.of_node, *node;
 
@@ -185,8 +184,7 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
 	if (!data)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	data->regs = devm_ioremap_resource(&pdev->dev, res);
+	data->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(data->regs))
 		return PTR_ERR(data->regs);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
