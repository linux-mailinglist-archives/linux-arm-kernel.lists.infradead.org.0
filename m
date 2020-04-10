Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5101A487A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 18:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/su+2IfDZ3bIX7wlmBP5vMPEQuDCi6Sx66RGj1sTxxs=; b=ihRcdNqIuYfrmK
	yQnfO+9vtPRZQn0OPRA0oNg9cZUgyRZuMp2950U6mgwHGgKVWUTksMpzdlvsYIUYkOYvhSrFSWndD
	zseII/tVEfyqKHMGu9nY4gwYQI5D4m8xm464NrjQhDtPtewUMfg5IUrqdtJAxnkKP+sVZYDHj1nEt
	X5OSmuLp4gh6NV+ItsBMYbPLOFSf1P2ugbs353rx6cjZS6lamRr0R5oEH/6F4/r9d/A3TVfBvHbzt
	dV276mUHVv8ZaYpNdKUhY8l2REIimaVzIE8ytCoMWYoAG3pwUYyrJStzChktyRDyTMD1370l4Ntgx
	lxHX5D1zjv6PrIgAFPTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwWC-0004il-Hv; Fri, 10 Apr 2020 16:28:36 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwVN-0003z0-1t
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 16:27:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586536065; x=1618072065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=kx75iRvDXLZZ7RnWClLIBFKi8jslmQjHPxpu6/ocCjE=;
 b=ZVOgnKstygCD+nIS0RVol/7VW0wq/KrfLli4y1oM+dnVZwnmDnEIexHE
 vnf6GoV5aovcD0lR6yaxD3ansTndGnMnOftAcIal9rxdTFjnKYgUmmjsR
 ubrUlsGTZFFz5ZcU7ftjPqo+m68KZ4FZVx2LufS74FehhIWZCoUHvVpC1
 ZKR1FMJW739MM14zYSl/9txvnheHHWugeGOQswguKKj7nJ3ajxvvJDpli
 ehgPkydzuoI/F2OuQuDwY8rN7l6/AH0SURokWTpiiFAO3siVLyUkxixib
 uEUNkdRDuppU8SzCDQFs6yn4V44jnaIQbsLHYQBCZ8Zd2H8MHyLmQcCOe A==;
IronPort-SDR: jqiqMXLojVGL5cI4ia8zCf/yYim18pgHzQB/iiiFP2Y5KUHJ84XGClzAUxjq23sTjVdt5UaPxe
 F4jwGqvsb7njT0873SD0AfZdC/ALOyFB+iQo9XQLmgmbfcFq2aqN3V2x9eQl/fMo17yCN3m4X7
 SXl8ChBoC9+EObz4hq5cf0igY7Tx9RGp4fivzichSqeCdRhcB7RULRFn25hLDmW+HKOO5y039N
 EovJV4YYeqM9PlF1cTE6Ft67pQnXf7XyJGvy1bpky1WCrtf/uZi8V37wa9o1tH/Lk476VzgQ2Y
 5cM=
X-IronPort-AV: E=Sophos;i="5.72,367,1580799600"; d="scan'208";a="71870918"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Apr 2020 09:27:37 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Apr 2020 09:27:48 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Apr 2020 09:27:28 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <tglx@linutronix.de>,
 <jason@lakedaemon.net>, <maz@kernel.org>
Subject: [PATCH 2/5] rtc: at91sam9: enable driver for sam9x60
Date: Fri, 10 Apr 2020 19:26:56 +0300
Message-ID: <1586536019-12348-3-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_092745_181931_8B6DAB59 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable driver for SAM9X60.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/rtc/rtc-at91sam9.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rtc/rtc-at91sam9.c b/drivers/rtc/rtc-at91sam9.c
index e39e89867d29..cb0a8f4a73a4 100644
--- a/drivers/rtc/rtc-at91sam9.c
+++ b/drivers/rtc/rtc-at91sam9.c
@@ -525,6 +525,7 @@ static SIMPLE_DEV_PM_OPS(at91_rtc_pm_ops, at91_rtc_suspend, at91_rtc_resume);
 
 static const struct of_device_id at91_rtc_dt_ids[] = {
 	{ .compatible = "atmel,at91sam9260-rtt" },
+	{ .compatible = "microchip,sam9x60-rtt" },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, at91_rtc_dt_ids);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
