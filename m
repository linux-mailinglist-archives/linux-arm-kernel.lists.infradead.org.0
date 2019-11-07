Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAA2F3967
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 21:17:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pD6XNH8CKo2WL/z0yx4MgMulF0NNsD19RJVwPOjAGR8=; b=qf09LDjtsA+vEG
	jjjUxSbnELCLAhrN33KN6tg2JMBVceVxrY1NJ0RVTABlvJx1tkxIJoEXREBIH56XWiUfeIX8JsOHP
	ts+a3PH1jgsSaYapz/QS6WQRv53W0tNfQ2sVUednlKqbOwaLnUbu1uaxVj7eAFAwRSy4WnUp8HxlJ
	5PEMXqDkUZETpqiGlh+AN/25GGQfBa1qA9WyyoI+ZBpzZ7Mhd/WIDZ8fLTqbOJOXVMS0lnG4/BZRU
	/LQIYi5wh6h61htXZHL4Omq2PIJDlkwzgRTWUDLyE6BrOBXo1AiFOyT+q+BmXU+WTWPABhsdV5OCb
	sTXWYjWj1aPN2KbJsO7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSoDp-0006Me-FA; Thu, 07 Nov 2019 20:17:37 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSoDM-00069X-IQ
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 20:17:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id a11so4552892wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 12:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qbI1BAgAkPaImSA31avjQBXyIdfFKUwTp+KLI6AEZH0=;
 b=EC/SX8ooYqTxr5pQUlGH6g2yvyeF1kpJrkFWbvWtgr9gM5Iyl2llrDdEp7D0xc/ckc
 ylpxAJXxfPTRewHYEUFf27rRf6OgKgwfod65R20q3y8PspodxrnnoNVES54RwWuDDEpq
 SsHlynYxsuBNvn0l2/BMHVk1L0kCIEaI31sdizplPtimHczDVHahZ8j/MIxu3T9GpPTn
 M5jVzoulmUi+TraL/W6sI7/MBMMzPtNWYjvL46ILMEWPqXx2zbH0RJBFrbBv+JFvYPqr
 k+PMcl6B7+yLQprGnJqMAS3oiTZ6vHClRRoA7MElF5y2dMfk5TLqZOALfA0c6ZwIhoj/
 jyVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qbI1BAgAkPaImSA31avjQBXyIdfFKUwTp+KLI6AEZH0=;
 b=VBqBxticVG9yvApy+CkvrEXsO/NOe7frgoF9udJPMW0fJpAoET0aqKj4TLVNZJLNwJ
 Q0sWqzVGUuqPNeHI3/xPzmw98CfMNnYG599L41shiBNEgTn985Ii0I2iwJYjnlw8SlsN
 pY1XvpJnJDCDYxmN4zc4zy83VzgrqB7aItSTx6Q3Y8g5moswC2KuK7legERNfZi+aP/V
 LOLhXs9FZ+WHDCIjDphYm3DMdsDxe6kgYFFhfy3DeYkBgLO2UNxcjiybPg8/rowUCBBB
 iGQj4RpdXEFrJ+k9Rvrkr/FpA1lgXPPXGQsdypd+eh1bMPqxlbhYlvO79bOjTEz5SFQW
 2V9w==
X-Gm-Message-State: APjAAAV9lutsmwTiqLZRZitmj6eI8J2Mwyz1KyhxpkajHzlgCLwNU18e
 NM2a+PHB6ZIhX7DtEnPRv/o8mg==
X-Google-Smtp-Source: APXvYqwsnkG5W3lQgjzDjrPN3gpk1F2MAlnJ4iiacsTzP9kRpXXiviPWMQMCMjJN24d9pILn7v49QQ==
X-Received: by 2002:adf:8481:: with SMTP id 1mr5190613wrg.189.1573157827384;
 Thu, 07 Nov 2019 12:17:07 -0800 (PST)
Received: from localhost.localdomain ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id d11sm3215162wrn.28.2019.11.07.12.17.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 12:17:06 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@google.com
Subject: [PATCH 02/10] usb: gadget: udc: lpc32xx: allocate descriptor with
 GFP_ATOMIC
Date: Thu,  7 Nov 2019 20:16:54 +0000
Message-Id: <20191107201702.27023-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107201702.27023-1-lee.jones@linaro.org>
References: <20191107201702.27023-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_121708_605994_FFD0A5FE 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, linux-kernel@vger.kernel.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, James Grant <jamesg@zaltys.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

[ Upstream commit fbc318afadd6e7ae2252d6158cf7d0c5a2132f7d ]

Gadget drivers may queue request in interrupt context. This would lead to
a descriptor allocation in that context. In that case we would hit
BUG_ON(in_interrupt()) in __get_vm_area_node.

Also remove the unnecessary cast.

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>
Tested-by: James Grant <jamesg@zaltys.org>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Felipe Balbi <felipe.balbi@linux.intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Change-Id: Iac6fdb2f664de82dde243dfa15b81e4add2198bf
---
 drivers/usb/gadget/udc/lpc32xx_udc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
index 23d0475a9136..928e0dd2f2d3 100644
--- a/drivers/usb/gadget/udc/lpc32xx_udc.c
+++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
@@ -966,8 +966,7 @@ static struct lpc32xx_usbd_dd_gad *udc_dd_alloc(struct lpc32xx_udc *udc)
 	dma_addr_t			dma;
 	struct lpc32xx_usbd_dd_gad	*dd;
 
-	dd = (struct lpc32xx_usbd_dd_gad *) dma_pool_alloc(
-			udc->dd_cache, (GFP_KERNEL | GFP_DMA), &dma);
+	dd = dma_pool_alloc(udc->dd_cache, GFP_ATOMIC | GFP_DMA, &dma);
 	if (dd)
 		dd->this_dma = dma;
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
