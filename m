Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1054B1ED631
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 20:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Z08QR/TI/OFW9m9S8zOOr/+Itq7/egn/Of4QAbQSdag=; b=fLz
	K448dKtXxA8JHEl2nT8lKb8oqoh75QqwHfFBM+IPCRWzRcVVXcIIWKL39fWnN82TnwkhkDT4lnpw8
	tkJe1gj0PHzhLd+lzogOoPpfXoKnfcgAXXJRtn2LCIfCX97iQQX6T8iqJ8V+bNVtfIVv6Jh9/Zvar
	0hqLG33PUJqU6RkM6JbFVgoDJenW7XOQSlDfz9meR86XaYtgnc5w4vG1NzEnDhuG0Q4p+t3jIk2et
	u5v9oTlHyNbJ46ZLJkNJzmxg4mQqMdChIvgI0YccFFOBN2AEo8dCv9Cqo62n8ScYKGYjlGmYPpqDJ
	c2XJCMFCstkwUNK9ivd7kAj1vwG0ODA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgYDh-0002kD-Rt; Wed, 03 Jun 2020 18:34:33 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgYDW-0002j8-Os
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 18:34:24 +0000
Received: by mail-io1-xd43.google.com with SMTP id c8so3421232iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 11:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=57Tbh/vNYp8Z2Y2yrLwm25NVhHK8l73BmbXVjFnRkLw=;
 b=pUvnbtJgLEQazQZOyd1+rITOwOP5uHA0kod+Y19gDu0JQk7PiZgblEN2KHt/kVaor+
 Xj/rstoCyFcgqvklm8OxJjacZwMeHrWMswXjC2r4F+N0yvvBVwpcaORzBFAcimZhooOj
 uARgG/e0hWj3VjUmyygmuOYpIZZD6ho4pdcy1owLNMG4+LbeRfjIEhaV1AQqbz7KTTgF
 6PmA/7JMKGcU97C5Myle0WSO4sStNv7+9OIoTbp8lt4wH1PDR36cNVy87NVlnNnniQfZ
 GMaKgxDeHjx/HqBuyrXIUFEz6KrG4lieMtIyfGLmAxXjyXLgSOJbA3i3hYrIrbATAZgW
 qkng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=57Tbh/vNYp8Z2Y2yrLwm25NVhHK8l73BmbXVjFnRkLw=;
 b=bkXp7i6ESZzrQV9wQHLOS7eOvp8AjRxhhdRSgAirDIhJOhMzMyVIAFpQpANqyPUnJ5
 HWUa+/yfuFq8IdFJ02lqWslD9f1UbYlXdJdsDqefzKdf975x2PvnbpRUtwMCcG+ZvmXK
 RMmsrn++UFXimuWlQIxUnyiS9qM+7V8MSWLaQOW7uWK9G3Zg8kkzaGFvi96HrbIlkEKP
 f0V7bsa/aAgE0VikNmVbFrAm3DqDBuGwo+gbKI39wD/AoCDnuwiuwPyDAOmw6aEJbSnp
 Qb8/XzQKlWyrgQletJlq5QpdZUjUYyjwlwLwQW6qhq+YOBo3FjQt7uUzoZybsiEIfYiK
 zdEQ==
X-Gm-Message-State: AOAM5330I9FBAHcvFHM4I87AoC8VlOppocaKHVxpoSgiwKbznT6UHgS9
 7fNX2Tr5WVVun51ilqXrg6Y=
X-Google-Smtp-Source: ABdhPJxLIWC1I4Cme7nGbQTtDsJkrK6nxiGSfd+zgYibWXQbzGeLUy/MDQWIW9M67LGwWq1uEyshDQ==
X-Received: by 2002:a5e:8305:: with SMTP id x5mr953041iom.47.1591209262037;
 Wed, 03 Jun 2020 11:34:22 -0700 (PDT)
Received: from cs-u-kase.dtc.umn.edu (cs-u-kase.cs.umn.edu. [160.94.64.2])
 by smtp.googlemail.com with ESMTPSA id y2sm158589ilg.69.2020.06.03.11.34.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 11:34:21 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Dan Williams <dan.j.williams@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] engine: stm32-dma: call pm_runtime_put if pm_runtime_get_sync
 fails
Date: Wed,  3 Jun 2020 13:34:10 -0500
Message-Id: <20200603183410.76764-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_113422_842125_ABC737A4 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
failure, causing incorrect ref count. Call pm_runtime_put if
pm_runtime_get_sync fails.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/dma/stm32-dma.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/stm32-dma.c b/drivers/dma/stm32-dma.c
index 0ddbaa4b4f0b..0aab86bd97fe 100644
--- a/drivers/dma/stm32-dma.c
+++ b/drivers/dma/stm32-dma.c
@@ -1169,8 +1169,10 @@ static int stm32_dma_alloc_chan_resources(struct dma_chan *c)
 	chan->config_init = false;
 
 	ret = pm_runtime_get_sync(dmadev->ddev.dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put(dmadev->ddev.dev);
 		return ret;
+	}
 
 	ret = stm32_dma_disable_chan(chan);
 	if (ret < 0)
@@ -1439,8 +1441,10 @@ static int stm32_dma_suspend(struct device *dev)
 	int id, ret, scr;
 
 	ret = pm_runtime_get_sync(dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_sync(dev);
 		return ret;
+	}
 
 	for (id = 0; id < STM32_DMA_MAX_CHANNELS; id++) {
 		scr = stm32_dma_read(dmadev, STM32_DMA_SCR(id));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
