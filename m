Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F60C1F1606
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=930PvOKaUg+NBaLd0teaKQn0We9Bd9tI8JytIJWA+aY=; b=jguLCDjMmCtcOz
	DsNEHzExMV3sfoym3Q/EG+u1dAxxiZzYzQa/6b2hbYqDWIiO/rpmezmEBUXguc4z5Lxfh4dmYbvAa
	n9YjKWh52vfvn/IW9IQ4qMBhrCMpEZZk9IgByai5fpLwZYc/u9XejZ1tugqT8g2BMf8j/TD8v0Ioj
	sJPR+aHfl4v4nloyodkuaMWk8PGFrLyuApmyJ351Dc7C46FK8f1vfdG1ohZ+7JUXBNKnPFb9XQn8g
	OaKCAMwQNAy6r5YzgInDDpO2tOFxj9zF3CjmmCG1Tr13vsY4aIGZHX4ACXldkA1NNh3eARCy7wbD9
	WFcDbDokvaX4/BM4l5Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiEYp-0004AL-HP; Mon, 08 Jun 2020 09:59:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiEYj-00049l-Em; Mon, 08 Jun 2020 09:59:14 +0000
Received: from ziggy.de (unknown [213.195.114.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BC73206A4;
 Mon,  8 Jun 2020 09:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591610352;
 bh=mpib/uOnrT5XNPMRVyQcZfC0SPaq1PdztMejF8onGS8=;
 h=From:To:Cc:Subject:Date:From;
 b=rZi/A6jCZMIjJfYqktvREvy0XGdUuO1WvzOfmb49shmRBv0ZTWhwxh6rkPHaTcrjJ
 UFQXK3GIpEI1IjsOyW0iFj38TzA4NhA6PlMdKUpFPcDNtv5+AM/VmsGdfUwY+Rp28s
 62Az6rBqrd2VhE+JjiBl3HoYUxvob58ENUjJoHs4=
From: matthias.bgg@kernel.org
To: lee.jones@linaro.org,
	gene.chen.richtek@gmail.com
Subject: [PATCH] mfd: mt6360: Add name field to the driver
Date: Mon,  8 Jun 2020 11:58:58 +0200
Message-Id: <20200608095859.24393-1-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_025913_514522_22B49F13 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Matthias Brugger <mbrugger@suse.com>, kernel test robot <lkp@intel.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

The driver does not have a name, this will lead to a NULL pointer
deref when we try to register the driver to a bus.

Fixes: 7edd363421da ("mfd: Add support for PMIC MT6360")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Matthias Brugger <mbrugger@suse.com>
---
 drivers/mfd/mt6360-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/mt6360-core.c b/drivers/mfd/mt6360-core.c
index db8cdf5272c1..dc2987dab649 100644
--- a/drivers/mfd/mt6360-core.c
+++ b/drivers/mfd/mt6360-core.c
@@ -412,6 +412,7 @@ MODULE_DEVICE_TABLE(of, mt6360_pmu_of_id);
 
 static struct i2c_driver mt6360_pmu_driver = {
 	.driver = {
+		.name = "MT6360",
 		.pm = &mt6360_pmu_pm_ops,
 		.of_match_table = of_match_ptr(mt6360_pmu_of_id),
 	},
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
