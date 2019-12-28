Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B1512BE7D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 19:37:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s5HuD7SlW/V3MQyJsfBbnB4SL7s4Aw5GWOOoNtNVhqo=; b=aNlVBMz3tLIUzsYFXF2tQ6Rw4I
	xlgNWWj93HtK8tiogASa/U1KMgJBrp80BFuT+PhkhjUFuPFkPvsPM4wX2dy/YVgH4Zr3UrzN2sASW
	myJe8G01ZHCKZnAQkUqs7feU3PhOp6RvfP4ShbNiKo8XS65pqQaYXk1++/xwQ6IncvOXg/v4UGYJ7
	sAAcCi1+gKcF+WVKSQD8hOvZR6ZPvLZupc9/I4SOYLpf9V/gPEUisGl0dFdgxaHGHrBYfMiNcHvnC
	oOdP8Swsn7Z/9FcY4fFkEWA+zPtf99E4M/SFJVHtM6fBBDibPQLiFu7ZgeTylizqKRBnN07Z0KT9W
	/s/jMk1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilGyF-0006MB-Ok; Sat, 28 Dec 2019 18:37:51 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwH-0004wJ-Hm; Sat, 28 Dec 2019 18:35:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id i6so9475214pfc.1;
 Sat, 28 Dec 2019 10:35:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=y/sE4xh1t2Cj8E77giYRBaNWrpcKyHc3i8dVPSovTK4=;
 b=HggcovvR0ogFzw+dm8PvFlPesZYlhG5KhXgOaKns7flxoEPrBu2JbFjj1rJ6TylBUY
 grdEZJwUdf8Xt8x/KKOFpBrBeOIxlvRIAkzmjrokl6/A1Kum3J51+xwWoZGyZtEnN0M/
 pBWNiO2rVL2Xx7w8NBxv93DExpYLnn02bNA8fy3tGYc6dqqbaD2IQBCzu7pIqqj2z9yP
 ZRgyB7YwrSGb4TzirAWob2TYmGDLSc7FisDS+xCLyDfmK+EyfAvKzSFXJegZnhpYpt0x
 Ghqc2ZFAS9Snl1W4wohZrcH7c7vQ9Mcpq2GI2OByddPXR3b/pAqdlIWJ7vHUFsfgavdk
 P+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=y/sE4xh1t2Cj8E77giYRBaNWrpcKyHc3i8dVPSovTK4=;
 b=VKa87MnicRrbc86QEGrjKLAjhGpVUdFh/jwtKnQxbQikKwqu4K2sRw4pF49KSNDsCF
 pWrCSz1qKxaePCwKNy1Jn2CbiPghVp475bSijn81CNkWuWFph/4OYklPjc0P/dfBTzPU
 mzipHATPW096A+PezhNG75uXjx7iOs+pjZC4NZJcD64MthqfEapwxzOTtK+tbgJEuBDU
 usNDihzG9aXHl5xlT5SssInG1zmf2AcbMIU3iHE95iyYtDfefeskEsNXWFWWwMGE47Kl
 UBNqRu3RVXJbyyCvIRdNRoFJUFB7lBWyvAqb9EbFk5qdzY3h+Ka2/vhplP6i9FV/t/9S
 ojRw==
X-Gm-Message-State: APjAAAWBwzCUZp8qkbZvBVMGCzfnAIDlfxzMHhrh9a/v7Bbn5rTll6tB
 5YmYKyJvdqfyUe0583LSqyQ=
X-Google-Smtp-Source: APXvYqy67ub/4Rasa9TpN7ktqWdCOG7h8UEvzxw+QTUrNSPvo1fREyMoMw31xtaDb43AL7S++RClqQ==
X-Received: by 2002:a63:1b49:: with SMTP id b9mr61252160pgm.258.1577558148388; 
 Sat, 28 Dec 2019 10:35:48 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id t1sm42242427pgq.23.2019.12.28.10.35.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:35:47 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: jassisinghbrar@gmail.com, nsaenzjulienne@suse.de, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, lftan@altera.com,
 matthias.bgg@gmail.com, agross@kernel.org, bjorn.andersson@linaro.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, nios2-dev@lists.rocketboards.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
Subject: [PATCH 06/13] mailbox: hi3660: convert to
 devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 18:35:31 +0000
Message-Id: <20191228183538.26189-6-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228183538.26189-1-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103549_635807_F0947643 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mailbox/hi3660-mailbox.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mailbox/hi3660-mailbox.c b/drivers/mailbox/hi3660-mailbox.c
index 53f4bc2488c5..97e2c4ed807d 100644
--- a/drivers/mailbox/hi3660-mailbox.c
+++ b/drivers/mailbox/hi3660-mailbox.c
@@ -240,7 +240,6 @@ static int hi3660_mbox_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct hi3660_mbox *mbox;
 	struct mbox_chan *chan;
-	struct resource *res;
 	unsigned long ch;
 	int err;
 
@@ -248,8 +247,7 @@ static int hi3660_mbox_probe(struct platform_device *pdev)
 	if (!mbox)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mbox->base = devm_ioremap_resource(dev, res);
+	mbox->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mbox->base))
 		return PTR_ERR(mbox->base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
