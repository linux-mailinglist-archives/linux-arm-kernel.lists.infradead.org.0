Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A3A15D35
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eelW2Ert+ym9W57rPGyLEc4lghLbfBHI8ASHLK8peNM=; b=A6IYQDyT1oWTWYT4F1o5yeFDUK
	1fGrfX819lSZ5I18oPcYf8ngMJPlRCh6MCvYwAy9FHHHO5jfyh/AFz455aaPHp2Md7I3XNVDFm8k6
	oxxA3rO4jCUHQkHeT1i8NxeQ60BPNqqr4NMaa1GWZFmeQ/o3WbytVup+d7K7zVYtVVBL8CxHAw0g5
	9uyxXCwfLAGz302Gf4OZYgxJIHN71Y3Rbk5epbRuOGkvH/DMeGYbCtm6oPX8qnTR61afuL8hJ1jZN
	PSd6H5eCYISFpO97U8fhTefr76rDvkgIWLmEf9js/RAmf1WtUHPT7i6X9ZVUPFX/rB91uaNiiQug8
	T6xzcQbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtJg-00074e-Gv; Tue, 07 May 2019 06:11:04 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtJ6-0006RJ-I3
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:10:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id 85so7734514pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 23:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=Cnx84NxIhSp4uZgqi6VSWZYaVNVqt10XSPlG8JL56aM=;
 b=zcT6IdJyApB7KuMxuSWwG5peXYnsSHChNqw51B358ycUWDId/NngGMOqGHnT3h3bSm
 qChmgQ9pGa5Yu+EMHMNgnlyKYIB+8jttgce0QhMdtSj38lOgaDPhUawls09xh0d5XiU9
 XcUQsGp7Ng6At2b8JIe5cM9Fi4JL9LcN1RY7mpjCslKb9GSOd5Mhf/HsE8HqngQ8riLP
 Tn/Gs+4flfKLlVDKesVK3VuGQZKXSUi+yaLrRL2c29XWNjnhW/3qUQ/1SZeyFjforxBc
 bUG3zRsnRVBy6oLxJo+88AKeAdIeoUpkW0hyt61HMVCFbY41ZhTb9Ur818qX/RjkvnlV
 3E3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=Cnx84NxIhSp4uZgqi6VSWZYaVNVqt10XSPlG8JL56aM=;
 b=Jyv18XDbD6OzorPPt6dk0QuJEie9IPP48TQW1Ncwqhq0W8smctXwDKIa8DVUq0bH5V
 dtcxIWZYPN1Lfe58euXKs6GJGnganAQLk7xTorSCSFywWkCPeyo0dCAZ+8OTg5iF6zrB
 Mjh06gsLgZ8kbJvdOh51HeRA+38mRjurR2GyN7QxlvLLQqC8p6RWISBa/H3ires+Cq6x
 PzgFLSlRockv6bFSPrGbbHvFa8BKUlt1q8XhLnqtN+QtJ0jl7cM+0/9K8PjmJxWtH5cb
 u/sRN80F1ScDx6WgO2jfJiwTQ9QlHpmYC8zsR76SoAmMBq27jR9QsFxljdEoFBOK5Dt3
 6RdQ==
X-Gm-Message-State: APjAAAWy0N8aEpulO5+OPpj0UQNWIZSkh2aexXNGvNvmdzPsS0pepcuC
 +gLQUYLXBHrZrpkgpJkHJCsr8g==
X-Google-Smtp-Source: APXvYqzkqrYcV0QI2O93YtbQlxdQBJiQcmO6JQgG6k1Oorppv4hJ97iFy40k5ajwk08mkc41nQffKg==
X-Received: by 2002:a65:534b:: with SMTP id w11mr37576307pgr.210.1557209427968; 
 Mon, 06 May 2019 23:10:27 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id e184sm30786325pfc.102.2019.05.06.23.10.22
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 23:10:27 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH 4/8] dmaengine: dma-jz4780: Let the core do the device node
 validation
Date: Tue,  7 May 2019 14:09:41 +0800
Message-Id: <0b8b0597623608bee186c573511be127ae5939c0.1557206859.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_231028_932329_12B5166F 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Let the DMA engine core do the device node validation instead of drivers.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/dma/dma-jz4780.c |    7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/dma/dma-jz4780.c b/drivers/dma/dma-jz4780.c
index 9ce0a38..7e1d381 100644
--- a/drivers/dma/dma-jz4780.c
+++ b/drivers/dma/dma-jz4780.c
@@ -160,7 +160,6 @@ struct jz4780_dma_dev {
 };
 
 struct jz4780_dma_filter_data {
-	struct device_node *of_node;
 	uint32_t transfer_type;
 	int channel;
 };
@@ -765,8 +764,6 @@ static bool jz4780_dma_filter_fn(struct dma_chan *chan, void *param)
 	struct jz4780_dma_dev *jzdma = jz4780_dma_chan_parent(jzchan);
 	struct jz4780_dma_filter_data *data = param;
 
-	if (jzdma->dma_device.dev->of_node != data->of_node)
-		return false;
 
 	if (data->channel > -1) {
 		if (data->channel != jzchan->id)
@@ -790,7 +787,6 @@ static struct dma_chan *jz4780_of_dma_xlate(struct of_phandle_args *dma_spec,
 	if (dma_spec->args_count != 2)
 		return NULL;
 
-	data.of_node = ofdma->of_node;
 	data.transfer_type = dma_spec->args[0];
 	data.channel = dma_spec->args[1];
 
@@ -815,7 +811,8 @@ static struct dma_chan *jz4780_of_dma_xlate(struct of_phandle_args *dma_spec,
 		return dma_get_slave_channel(
 			&jzdma->chan[data.channel].vchan.chan);
 	} else {
-		return dma_request_channel(mask, jz4780_dma_filter_fn, &data);
+		return __dma_request_channel(&mask, jz4780_dma_filter_fn, &data,
+					     ofdma->of_node);
 	}
 }
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
