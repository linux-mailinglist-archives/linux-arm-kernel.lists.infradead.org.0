Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD8F1A0DA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 14:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJ7/87fXsGl2aZDMu41to6qNPW0tCqyFII1GmxOcxuI=; b=Xm0so+EavzEJ+p
	L7B69Pnys5NrQKcKaqAYCRvMBpM6VVJC9XJPtgg/vWccMBRUHdYq1L3wZ0lHJWEez1o3fmCLCgURa
	7dtPOsHNj/7TTSWNl6/yN+JI/QpFeOb2WoHpFLwfQSgV2Oh0EpIGOsLTgKDT2tfaWGOtSdfDvKf6K
	QubJiOxol7Q1BPfZMpJKM0XK9DVgiFGztsSEImOnSjCyLdKJKtPBeOtRZZTUa++OePp1oyOQF6kFO
	DtrN0enyQUFuYHMbAFLM6lr6TC1kv0tCV3gIq+132ROVf1bpX+KtxsId9ZPdgXAfddy4Uj6kBvqyT
	RHhTr80QmrHo4BFqSnsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnN5-0007t9-Kg; Tue, 07 Apr 2020 12:30:27 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnMI-0007gN-0h
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 12:29:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586262577; x=1617798577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=RRSV6rYP6IiNnoNhQap/FmU0DmkdgZjsIA231yL8M+Y=;
 b=vJPB6SKlTYrdvXd73CaZOt1ID1UVFxU5tIOGo3MzBBosiYuIwBk8oMSq
 YIQShkx/Nfnk+HXq+hPbv+Qe6R8I9UyriE75W+cv35Q4f3Z3jOOGXTJna
 Qcu31/R/dXa1TZ31lS+iyutTRiJwDSeXCh8OR1e0oLi5msMzmoL/7mTJN
 8CU4WAR45KCg97YOK74FNQcohGX0yOJL0FuVMLFPpB8AuqXSsdjKz5j8S
 Il7mfwpwB0/ABSjObZCafq6sQadcfTeCCKJgm8cefY6n5ahifhc6NTtqI
 Ufz8qvy1+NlfYeOgU/5HJpeunhUPiOBI17+WsPhGFhZCqiGots+V4whfm A==;
IronPort-SDR: mUWa5jbx10NY5DqQQ9TYyHOl/G1UJsCCuhwjyfqQ82Q7NIxvXssrUX/12MpNsAZ6JzMd9qZ8WG
 G0D6MP2oywTTgTT0GKE39ec18Qm4q45GSWCbLwf2eFMSkOJqpmQ4mn5stUZgtQIiwJyDmJ6g58
 YysAtzTFnuPNYfuU/U/JRVAuaMHHDdkzM0M3tYzy4QdshqPJhGl/INpBtiMcnTlQr+K8KHb6Qi
 2lxa9l8JJCK911Dk6RKOV2oAQdXzXxSC7DEV0jaR/RWw+6TcNsr8SNfyM5EvR9icSjmdQ1MkT0
 ne0=
X-IronPort-AV: E=Sophos;i="5.72,354,1580799600"; d="scan'208";a="75013414"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Apr 2020 05:29:37 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Apr 2020 05:29:48 -0700
Received: from cristi-P53.amer.actel.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 7 Apr 2020 05:29:34 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/7] usb: gadget: udc: atmel: add compatible for SAM9X60's PMC
Date: Tue, 7 Apr 2020 15:28:47 +0300
Message-ID: <20200407122852.19422-3-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407122852.19422-1-cristian.birsan@microchip.com>
References: <20200407122852.19422-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_052938_066207_A7AAC353 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

Add compatible for SAM9X60's PMC.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
[cristian.birsan@microchip.com Add sentinel at the end of the array]
Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index 32e5b44d9fbd..c50902b91a96 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -2056,6 +2056,8 @@ static const struct of_device_id atmel_pmc_dt_ids[] = {
 	{ .compatible = "atmel,at91sam9g45-pmc" },
 	{ .compatible = "atmel,at91sam9rl-pmc" },
 	{ .compatible = "atmel,at91sam9x5-pmc" },
+	{ .compatible = "microchip,sam9x60-pmc" },
+	{ /* sentinel */ }
 };
 
 static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
