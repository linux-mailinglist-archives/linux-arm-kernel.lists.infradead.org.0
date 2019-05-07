Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30BE15D29
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ryl7D3TbvW/jeVN3Bb8EAG6LqH/msT96WQvNlxkYoRE=; b=Ee+msIL98TuZqhxrmNEtBmtu60
	vklbPk7Y+Ld4F/od9ZBxA7kZn5ZveZTupTAbdCU8EhNX5BhpjMPsObW4gsOzcfiM63M07UIlUUbmq
	PKdgXPjimn/5CwYdn4OMbRlefhqy0VUpBfoZWekbBE12DKpq3j3q2H+EnV0iVvtNEVl/1IuSRfDLn
	RbtB1b8dJV06V1Kvi/+IHRxzp7jobpcyGYHRQdJGE2JtcONsfl9a4KANm2Z1apmgDcCirGHJvOTGA
	mz+rFeFr8V667LuOTnjptMdkyNJHxAxecsgWRg3FA7tyuWpT0IqFa4KOgbUaDlEgyfxBQeWLfdf8d
	0G1nLoOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtJM-0006Zh-9n; Tue, 07 May 2019 06:10:44 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtIw-0006Bt-4D
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:10:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id t87so7502053pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 23:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=fegqHJdxTxrNP4emVZDAfoflYxMDA5HIYSCVsGvvNyk=;
 b=gpuzGeOzJL+S9gtU42ApMv5X8chVRN0hkaUIvi7zD8VoJwnOqdqmXq7dtEBURIpA7j
 G/9Ev+cBM6PV3Go/z0mD8a8YNo5qNaDn0y4C4vJmag/YvzNjrhKByuxYlaoJr0TbQ5eo
 2nfWjzDy/wFJLus92xSxL6b1c35GEBUadXry11rD/4luRTR0OTnpL1BvwojJFoJbTZ3q
 qWa5bLbGM9gj9Fx9aaKvHXZ3P3VInHnxnX37d6LK/Ysm/eB1ph8aMLSOBxn6e7x3Zz1j
 uw+pixeKEBnvOiks2g0sUhhj+flFxFWtez0II53gaB23VlKlK7kIVnWRfR8jUkae/ejN
 WMYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=fegqHJdxTxrNP4emVZDAfoflYxMDA5HIYSCVsGvvNyk=;
 b=OvW7rWoHHF95X99c6b3Y+nlrwEw0qUHckrGcwO+4b3o0aXpDtDVH+KVRKc0q7u8a4c
 XfebJmozwNngrajDf+9h9TswniPuS+BRs9cIMyWSgojQov+AgFqv0Y+SpMcrqwsXmqVk
 a4Qy2aUKrYKUFhejx6NIXjd0ZDxKbFyMTHsES4hDKKMMH7kGyZt/9UtcIcEDpvzbAE7U
 tyIRA3ZGkX9YA4nDo4APUR+QQIvz1GUOX88taIC6S7HA/qkBvy5yV9aGrPfb3S9Nv9V1
 pTb9isOxLsUhh86nzUd2l8sm4RcNA4eIsAX46Ra7Mf7MnkZ+SDwH/V1RfH6HAmXJod3k
 FXDw==
X-Gm-Message-State: APjAAAVJI6tBbRDuZFt64lOx/grrpqpqbyN3S91+xbCMt2GO4zpIy2gN
 xfFD3+XD9OAx99QSuFWnpclmGg==
X-Google-Smtp-Source: APXvYqzTNghUUH/vAVAHLtApBnwfwTv9iOi8rSX6GEZxoSO4Ljp5Aibele+BPHXO5ocKnwntiyTY2w==
X-Received: by 2002:a65:5184:: with SMTP id h4mr37881601pgq.109.1557209417270; 
 Mon, 06 May 2019 23:10:17 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id e184sm30786325pfc.102.2019.05.06.23.10.12
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 23:10:16 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH 2/8] soc: tegra: fuse: Change to the correct
 __dma_request_channel() prototype
Date: Tue,  7 May 2019 14:09:39 +0800
Message-Id: <1ddb1abe8722154dd546d265d5c4536480a24a87.1557206859.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_231018_181370_5916CB2E 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jroedel@suse.de, vincent.guittot@linaro.org, Zubair.Kakakhel@imgtec.com,
 baolin.wang@linaro.org, dmaengine@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 wsa+renesas@sang-engineering.com, thierry.reding@gmail.com, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-tegra@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since we've introduced one device node parameter for __dma_request_channel(),
thus change to the correct function prototype.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/soc/tegra/fuse/fuse-tegra20.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/tegra/fuse/fuse-tegra20.c b/drivers/soc/tegra/fuse/fuse-tegra20.c
index 49ff017..e2571b6 100644
--- a/drivers/soc/tegra/fuse/fuse-tegra20.c
+++ b/drivers/soc/tegra/fuse/fuse-tegra20.c
@@ -110,7 +110,7 @@ static int tegra20_fuse_probe(struct tegra_fuse *fuse)
 	dma_cap_zero(mask);
 	dma_cap_set(DMA_SLAVE, mask);
 
-	fuse->apbdma.chan = __dma_request_channel(&mask, dma_filter, NULL);
+	fuse->apbdma.chan = __dma_request_channel(&mask, dma_filter, NULL, NULL);
 	if (!fuse->apbdma.chan)
 		return -EPROBE_DEFER;
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
