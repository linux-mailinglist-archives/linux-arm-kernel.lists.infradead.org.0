Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8390A34161
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Et7TSJcZC0UI0AwyekQju3EBNfLEzz9WgaVhmAUndqQ=; b=Mo9TgUh+YETcC24UDpCS+mXfp8
	O8Qt8gbQeA7+1Urnz7jC7A9I84Hs6fXiyc9wnTZ3bZ46PSqDVW0FYT6lRtX+lhrlyoZyvi7SYTiqL
	wdbnvq2i6KoPe0TyRqxqYAtYUJ3kr4ba+u2Ps8T5/Suikgww/+c1iwMHSgbwNrXh4gm6/X+JrrFDk
	virQKHcM5mVIBLjT0hFEkspJsul7gVQazXWKVNwWCMeGjBuwisN4hYvToZSKcL8xmmF/8ThfMipqm
	UrMr48e/k3OkjG7BZZRvzAu4GXUyZh0YJqA76Vf6CEuXaDgpWLHR0yS5jVUfwF7dMJUlzQL+K2wqC
	2K/d92tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4b8-0000PI-Sd; Tue, 04 Jun 2019 08:15:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4ar-0000GO-Kg
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:14:57 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so1996217pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=tvMJ5s9gExvOA7lMPut++cP3zHcPvryLWLVuc4mHs3M=;
 b=KvCoOxV2rRHo0LP8pHEGJKzTvkI2+KlTgGiFKUOXH1jmu0LkQFTIONu+GiJg50suqZ
 JdNVybOqlsfUGfx1mhiI2TS+zH2KLWFXdBS3LLxm8xLhFU3eGNeI6zNvWmmqeWjytp5Y
 42gcvY0eJ1ul3Rn/5joOnaJZP7ozr6Y7K59xNy9vWZpUXARufZCxqXgNfpJzx/8WS7H3
 NwWpPhg4ROVRzKll5FlPSOfHhuB26wbtju1fX9bkRpOkQgecgke3eOQmCZZnsJ0x/XOM
 SUjWi2fXYc2UWco7WrnJfyA9cyRnPH5v8KnKBromZG8cE2HtOS758i5ajacD+nXKM/QQ
 6zSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=tvMJ5s9gExvOA7lMPut++cP3zHcPvryLWLVuc4mHs3M=;
 b=YbLRpzfNBp5zb4qr5N69QOonmd3dupsjhdbSETvKmnVkZ0422/AMif8fTsLkuIMM24
 fr8wP1h+ztEyyGQdIoGQmqi1Mpo0dgsP3wV5FoVOtUmbxKVk/I7GaZHm5rRVZwPURzOv
 ZrswaSQqlv5cwuA1sxq1LoPBY1p/GpCdrjl9twzrOC/7LTl5FTkVUWtB43NnOzx76Hv0
 QfB+faMapWmlnBYycma6O7ZkLYf18T5UG1Z2Q70pEPD8uS2FjZ027yDgDzEiZ/Q0zOCC
 uJ5ePC1U/+MBLSnqtba3cHTbAPbYeRmH7DJctMh9KUu784LdPcLA/l/rT7s0DQDdHvh9
 kxsA==
X-Gm-Message-State: APjAAAX6+HaJeWA8iX4vqxlryJ8FUe53oZxfuHTxxmcYkOgzrUxs2fBf
 kaZ/iNKzKTzJOM44GDR8lDKRSg==
X-Google-Smtp-Source: APXvYqz3oaHjaeADX6D9WBKXX/1VIU65dXOf477C7GTyXt8pCwH2Xc5XpXXOxK2eShfdWLpu+lZGhQ==
X-Received: by 2002:aa7:8ece:: with SMTP id b14mr27207253pfr.244.1559636093172; 
 Tue, 04 Jun 2019 01:14:53 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id j4sm14818804pgc.56.2019.06.04.01.14.48
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 04 Jun 2019 01:14:52 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH v2 1/9] mmc: sdhci-sprd: Check the enable clock's return value
 correctly
Date: Tue,  4 Jun 2019 16:14:21 +0800
Message-Id: <9c76f06c8ba1762c9706f2c20878bf39d46370dc.1559635435.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_011454_142607_2DAA5BDF 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, baolin.wang@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Missed to check the enable clock's return value, fix it.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-sprd.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
index 9a822e2..e741491 100644
--- a/drivers/mmc/host/sdhci-sprd.c
+++ b/drivers/mmc/host/sdhci-sprd.c
@@ -368,7 +368,7 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
 	if (ret)
 		goto pltfm_free;
 
-	clk_prepare_enable(sprd_host->clk_enable);
+	ret = clk_prepare_enable(sprd_host->clk_enable);
 	if (ret)
 		goto clk_disable;
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
