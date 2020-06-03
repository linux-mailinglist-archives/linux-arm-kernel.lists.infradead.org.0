Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0FD1ED6F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 21:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y3IYnUID6euWawbhLXN1o9mXmafDD9QYzrrLcC6F3Tk=; b=kdo
	oa9QRYjgFFROnQzqZh/waHVgCvf9eZN+kPGs6g37Irsf1h0yVxvbe14tlGJNTt/3w1vJnEcL+bkoP
	NEKewW3lnTAZeZz96P59GS4u6jyFa+JEVFdCr6dqO+QMRvY028NHNV7pmWmkkoAWQupurAfnzQlqB
	4l6R/T1i0OGr1QAhKXsQziL9Im41nLPljePQ8EBPwskWXQriRYMuAKbBqleTCiyJ+73q3AzzGQ8Dg
	Zzz7OkINC9euPad5jwFEESOJyDI+KPUaSqyK4FmvDKS8J4hkIbc7Xu25WXDQy7CqJHOb6S4MfHALq
	udfyBjFBKKdUwF3Mjd6R0+9tiNP8xQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgZCE-0002ZT-Ah; Wed, 03 Jun 2020 19:37:06 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgZC6-0002Yg-KZ
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 19:36:59 +0000
Received: by mail-il1-x144.google.com with SMTP id v11so3745363ilh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 12:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=dIAMuCC/A5PYohN0KXICQjv0ipT40UQi12lhKqfFpJg=;
 b=EhDZIgQUvtrVrX2ZzQDg0eOdeeEkvuoFE2dur2qomJ21YzFSR0zSu+QXLEie+QcWcI
 pqtiRkz0H+cuDyQ7YndIF05da+Uys1LWhKYpHa1/BAQkpxvAUQYuqXR2QNg4ST5lkWjU
 9eTM1MGOQQps6R7rkQUn9PJ8RWxhNIUrSXrAvF1Y54VrRe/WxXMjTUA6/eEklUBoJY79
 tDBNgLnsoaVHFh3lWGZIWv1e+ktDp52tXFkcBjGINC6k3FMwLIO9srj7HwNBAG7A44wx
 kZvMrd/1VaWheADlWPfTFeNq/dy3U19Gi2bSjlTSury3yuen+OXHF6ZOmYfpc8FkI66X
 iFOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dIAMuCC/A5PYohN0KXICQjv0ipT40UQi12lhKqfFpJg=;
 b=N6TCw/QoXAvN0Wv3PEY0rNprIcAmjGfcLyWLxFMxsUKx8Z6Wdw019WjctAh0tDTisA
 o3nvRBYW6DQQ0Osj+b2QQbOI4mUEpzROaTXbRIaEUAbnPTm1RWxCM4J2YSRnbpdCeDsg
 aJgvnDfwNGweKFEd41YDl9GlyWQFtFrUTwqM0ZMSiD3UyQYBfMyoGzEHP7jtS1uTDMMr
 SRkhTBlYFGHnLQOkdImlCh48EGI3raTE+/MR894dHgmM2wjO8W/UPYbF9zSJapKJkyAo
 uEk/YFXzMiCuYHhSXSX3yL/csT8ntqhwjZwAQ5sI87/osyE3s7M7cunT7BwVRXNShTYN
 KFRw==
X-Gm-Message-State: AOAM533GEBYS3rodX1cgPlfRFxRCxuHd6Kc4AaQAFSZjnA4sc5Lr4bDo
 OjL45QWSPvB0gRop1yUgdhc=
X-Google-Smtp-Source: ABdhPJyXUGwqgUh5G3Ykal7smWbXFaRo45kJz9GNEN8Kg5jD5/5LxA9AaMhMWGkRoSpvtuiq4hihOA==
X-Received: by 2002:a92:9e5a:: with SMTP id q87mr1083431ili.84.1591213016646; 
 Wed, 03 Jun 2020 12:36:56 -0700 (PDT)
Received: from cs-u-kase.dtc.umn.edu (cs-u-kase.cs.umn.edu. [160.94.64.2])
 by smtp.googlemail.com with ESMTPSA id s71sm256585ilc.32.2020.06.03.12.36.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 12:36:55 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dmaengine: stm32-dmamux: fix pm_runtime_get_sync fialure cases
Date: Wed,  3 Jun 2020 14:36:48 -0500
Message-Id: <20200603193648.19190-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_123658_690910_57887097 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [navid.emamdoost[at]gmail.com]
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
Cc: Navid Emamdoost <navid.emamdoost@gmail.com>, emamd001@umn.edu, kjlu@umn.edu,
 wu000273@umn.edu, smccaman@umn.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Calling pm_runtime_get_sync increments the counter even in case of
failure, causing incorrect ref count. Call pm_runtime_put_sync if
pm_runtime_get_sync fails.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/dma/stm32-dmamux.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/stm32-dmamux.c b/drivers/dma/stm32-dmamux.c
index 12f7637e13a1..ab250d7eed29 100644
--- a/drivers/dma/stm32-dmamux.c
+++ b/drivers/dma/stm32-dmamux.c
@@ -140,6 +140,7 @@ static void *stm32_dmamux_route_allocate(struct of_phandle_args *dma_spec,
 	ret = pm_runtime_get_sync(&pdev->dev);
 	if (ret < 0) {
 		spin_unlock_irqrestore(&dmamux->lock, flags);
+		pm_runtime_put_sync(&pdev->dev);
 		goto error;
 	}
 	spin_unlock_irqrestore(&dmamux->lock, flags);
@@ -340,8 +341,10 @@ static int stm32_dmamux_suspend(struct device *dev)
 	int i, ret;
 
 	ret = pm_runtime_get_sync(dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_sync(dev);
 		return ret;
+	}
 
 	for (i = 0; i < stm32_dmamux->dma_requests; i++)
 		stm32_dmamux->ccr[i] = stm32_dmamux_read(stm32_dmamux->iomem,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
