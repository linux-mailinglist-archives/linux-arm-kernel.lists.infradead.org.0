Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F10ADDA4D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 20:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Luzr4fNKOZEw5qLM/oJXYkuxHcGExDtiuMKNd1dwR1Q=; b=RfMhHtxhfWVFZM
	ACDCtnbAnicWj6LFDXna9M8PgRjDbIoQLNeYDz7+rFQQY+yLc3wvtHojw7p8OlvyFk6ekkKO2cD5A
	hmRXyVc2y2qj83OoFGiPxALF2sjbIdf6ZVecqqTQxx/ZWr8ZS0RucsXXDu9oocghg9D/4xIts0BPS
	JWHb5r/rec5/gYsE5inZgk7j7XgIOaczfMBawSjGNR/k9/GNfsU/3OzuE3g2MIMBDX2bSn3iP1WWA
	KaFNDGmVR0hIV2PwHtPpIWu2xmyBui4P/xAGm9JEH7nnP0JiI9Nl1cmcEfFJfeShy+o/Cu2tfBwv9
	g6go1lTS7+MZdhb9GZpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLtgT-0000dR-R7; Sat, 19 Oct 2019 18:42:37 +0000
Received: from mo6-p04-ob.smtp.rzone.de ([2a01:238:20a:202:5304::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLtfb-00005y-W0
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 18:41:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1571510499;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=m5FFZdsdBCqqg1hmXc2h2EqcsFELI7K5BJyc80+siFs=;
 b=AwQ7ACcRT7tCPFwx9udcalsIkkxP4Un8RS2TG8fiGeCUbQGZl+8dlZoqFo28qFzCCR
 dDoTL8cJv7b29U27T9sNffb2PCcex/YBImzdl+NQdR2TkwU6axfzprR+Hw4dR/LKYbIx
 qD8n689j8r0cflnou/eDy546jkY3ZDlCDwlU64rd+cx4ECrYqd62GXdsJq06QB2AlnoD
 vy2W53JzzqBz2H94f0YhXUtFr6czwSSTdJwcJGRwCOfwKdjwl9lvsc0iJF1FayzqMgQq
 E09j1jOLZPQJAF9DSLdbP18jJhhWCNcsNfFcrzr1I5lbH1CBiKBNwxqZAAPNOUCLNc3s
 vaPw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o12DNOsPj0pAyXkHTz8="
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 44.28.1 DYNA|AUTH)
 with ESMTPSA id R0b2a8v9JIfbFMV
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sat, 19 Oct 2019 20:41:37 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Mike Rapoport <rppt@linux.ibm.com>, David Sterba <dsterba@suse.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Petr Mladek <pmladek@suse.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Yangtao Li <tiny.windzz@gmail.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Stultz <john.stultz@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v2 10/11] net: wireless: ti: wl1251 use new
 SDIO_VENDOR_ID_TI_WL1251 definition
Date: Sat, 19 Oct 2019 20:41:25 +0200
Message-Id: <e6624c904e767924911068c2c169d078eae35839.1571510481.git.hns@goldelico.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1571510481.git.hns@goldelico.com>
References: <cover.1571510481.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_114144_538753_C77BF574 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5304:0:0:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, letux-kernel@openphoenux.org,
 linux-mmc@vger.kernel.org, kernel@pyra-handheld.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, netdev@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SDIO_VENDOR_ID_TI_WL1251 is now defined in mmc/sdio_ids.h separately
from SDIO_VENDOR_ID_TI for wl1271.

Fixes: 884f38607897 ("mmc: core: move some sdio IDs out of quirks file")

Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
Acked-by: Kalle Valo <kvalo@codeaurora.org>
Cc: <stable@vger.kernel.org> # 4.11.0
---
 drivers/net/wireless/ti/wl1251/sdio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ti/wl1251/sdio.c b/drivers/net/wireless/ti/wl1251/sdio.c
index c54a273713ed..42b55f3a50df 100644
--- a/drivers/net/wireless/ti/wl1251/sdio.c
+++ b/drivers/net/wireless/ti/wl1251/sdio.c
@@ -52,7 +52,7 @@ static void wl1251_sdio_interrupt(struct sdio_func *func)
 }
 
 static const struct sdio_device_id wl1251_devices[] = {
-	{ SDIO_DEVICE(SDIO_VENDOR_ID_TI, SDIO_DEVICE_ID_TI_WL1251) },
+	{ SDIO_DEVICE(SDIO_VENDOR_ID_TI_WL1251, SDIO_DEVICE_ID_TI_WL1251) },
 	{}
 };
 MODULE_DEVICE_TABLE(sdio, wl1251_devices);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
