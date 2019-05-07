Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6539A15D55
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VZsrjIM/pH2jV8ZB1Db4LD3sNZvmcBR6i5tvahr+aCE=; b=SimOMbzXWvK6x9crabAo3+p5w/
	ghb+PiM0OUIQP2+a8ueWHDx9J7G/HoTADrSWwu4w4vTbapu2UdXXsCAOjI3jQQPhfCxsHftAEuTpv
	YIVC5Ja7gCtW4wbcpnqJxnvWQKHTtR775HezU4qE/Wo24CKNC13dcSkfkpMSl43puKeqPqoXDWsY/
	LyhOeCQ1Q5zar8AzrTEpbw27T0IRxSOxmO6jLNVwKoDYjebe6ssnqP3FU6DcrvT0e+YHwuUyc0t4N
	1O1nPf43ZD/halDNE6p6fIXlXi/irgWoQ1oC+tfjKjH55G8rtmLgcz+A9YFmAuuGnwx9pGCmgbUlA
	zp9+pvwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNta0-0004Im-Uq; Tue, 07 May 2019 06:27:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtZu-0004FC-V9
 for linux-arm-kernel@bombadil.infradead.org; Tue, 07 May 2019 06:27:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kSx/2bQ8k2nUJmyS2liy45fCcO2iYHSDnrOKKw/RGV4=; b=jJueaYvRzXwPuI2BGyelMKGzN
 fUFURnjoQSPqKCDIIUzhfwpmbHlxautAXv2ALpGAHjXrDFk7qzMo+kaT7z7fXVvwIbhH9+Ebthhqz
 7F5SQNyV4AF71ksf2y1+tW8IyXU9p1I8BGjU0h2nmk9PigIkLYgueKG4oyz3EKkMpi0Gia1IDGJkt
 rr0j/3GIti1hv7QD3VxitJwxm8isJZdDmSnC4vMnXMLfl/Fawgoo/IUcHQx3nwoxU3m4MORJF7vVr
 J5waU1YJZb4WCN+gDP2ERKB+qPOgVwH62zXjJc0r4nwxRAYY3PDvXqLv4mJuEipiivDv5gIJnBC8W
 gBCbLHm2Q==;
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtJS-0000UZ-Qv
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:10:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id z26so8077785pfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 23:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=kSx/2bQ8k2nUJmyS2liy45fCcO2iYHSDnrOKKw/RGV4=;
 b=S9Cy/p1GeoEOtS8YQZgB0lYyFi1dHKS/HGpgplRm+Jl+6OwdRLa3AqzF/D5EUzwLum
 6hKH5eF/hHqGo6nqyFFDunpeoF4PfUOZ4/3aiB1lh7Zg+TO0UrCiOOaD7NClpHGZAiY0
 TW96Fv/P4Z05tGlR7xVhb505XEaI4omMP478SFFOL/CUS/3EEQurGtDg+8HfcBpLYr8W
 Sk+/f/aBON9i+QLuBzR1USCQJWELEUjdKzeNLt2a/DSVGTvrqPvpmw3vwNaYio7Muj4g
 1s+6KN1usY/566XMORgT84favpF5luB63k/rnOCSRzVpCQhtbAJPLNl4Coh1vz8pOguZ
 +IIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=kSx/2bQ8k2nUJmyS2liy45fCcO2iYHSDnrOKKw/RGV4=;
 b=MYs3RKU8iiGcBkXUsaOy2OQtChsEdHK+tanXXFp5InWpYEgma2YF+9pyyz1zhYS9hW
 oCYDClXjmKO6ZpELPraVIamKmJQXY3P1g2JQhtrbcvlkVessUHZcaz4VcruAHH/z7l0B
 fLKkWDhs7QP4ALAjG6Y5mR0Zjbrc66gMvVgMc0aUgoTa/8SpI4DJZcIVVjEpS9//pw2c
 Z2gM1C010woPP5HysZeb7RlrY02jlrQGyF8U0593wmoRoUzA/tptHq9eTgqZxWulE9lO
 gdxhc0W77b8/yZb4goaEjNCemCPJXVCkBjNBIFDjgz0Z0P4Rt/P8CvFMzBh6aB26aRWv
 qHgQ==
X-Gm-Message-State: APjAAAUD9wZ6rw5KJmUy6JL1SwWUK7UEsBUno4T6Awh7cDGqhkpFgDVJ
 WkpR8Dpnw4qn8RcE8KC1ZARpGg==
X-Google-Smtp-Source: APXvYqzZDYlq7eyLwOtGEhDSsOmFAWA99COPckp4Min5Ajit5tRyKl66VcQ9loYKdX1dxZ/egVqG6g==
X-Received: by 2002:a63:1706:: with SMTP id x6mr4603838pgl.280.1557209449086; 
 Mon, 06 May 2019 23:10:49 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id e184sm30786325pfc.102.2019.05.06.23.10.43
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 23:10:48 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH 8/8] dmaengine: sh: usb-dmac: Let the core do the device node
 validation
Date: Tue,  7 May 2019 14:09:45 +0800
Message-Id: <6dc4f90df68276e6c21f7e0087b91e95b153f85f.1557206859.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_071050_930233_B97B6630 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/dma/sh/usb-dmac.c |    6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/sh/usb-dmac.c b/drivers/dma/sh/usb-dmac.c
index 59403f6..0afabf3 100644
--- a/drivers/dma/sh/usb-dmac.c
+++ b/drivers/dma/sh/usb-dmac.c
@@ -636,9 +636,6 @@ static bool usb_dmac_chan_filter(struct dma_chan *chan, void *arg)
 	struct usb_dmac_chan *uchan = to_usb_dmac_chan(chan);
 	struct of_phandle_args *dma_spec = arg;
 
-	if (dma_spec->np != chan->device->dev->of_node)
-		return false;
-
 	/* USB-DMAC should be used with fixed usb controller's FIFO */
 	if (uchan->index != dma_spec->args[0])
 		return false;
@@ -659,7 +656,8 @@ static struct dma_chan *usb_dmac_of_xlate(struct of_phandle_args *dma_spec,
 	dma_cap_zero(mask);
 	dma_cap_set(DMA_SLAVE, mask);
 
-	chan = dma_request_channel(mask, usb_dmac_chan_filter, dma_spec);
+	chan = __dma_request_channel(&mask, usb_dmac_chan_filter, dma_spec,
+				     ofdma->of_node);
 	if (!chan)
 		return NULL;
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
