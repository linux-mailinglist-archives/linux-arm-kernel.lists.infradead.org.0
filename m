Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A50319CB4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 22:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tt/HNmTIdH+6r45ZdiGObEzHuFlSI925qzkUUd8gESc=; b=b5WLHtKYf2azZw
	4rV4imTGo5JYhYc67qE4z6lhxCvkYq4qFTuXghfpe7hS3g7CADX4xtJ21PseeeDVpXcnTWrLFzyAS
	CYTfLlo5FQJHuwICqaeAOyF89bIRiut1OPVYY1Q1ZgEKbZeh5mgve7PiQgk9rXt4oc8j9L1EqFrVE
	g1v7ap8wIcq6B7AxxX73aTt8WuM/r4oY/ktHw81xY4Rpsy2pCKOmzEbb6Ojrzu+RRKCKHikxMcfqB
	0mEgjIByAO5BqQHEjxZhNauJ3Zq/8JgHGtMUVeftHhLBT1vsdSVlcHICqN7hYWCIZ+ERtheWxOU8R
	aPws1099y2tSLq9QmOhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK6ag-0001TL-0d; Thu, 02 Apr 2020 20:37:30 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK6aQ-0001RZ-MX
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 20:37:17 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id E926723060;
 Thu,  2 Apr 2020 22:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1585859829;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=O32DELDjRU5+PMHK61TCvsZ+IJXO1DNHAkIMR41h4Oo=;
 b=nmnmU8mUF4seol8TRRYjB/GzYpAELUq0RsNPY7L6Y1/tLiSk+yt3vye6y5OtaRIqKQjZrp
 e6YLzlx2Q6L2SZEyldQG0fKNUNu8TjNMs/X35UHV4Ekz+Bhd89WQG6UQyXDrU+OkFEGUzU
 9Amj78TVB3hj4nKbmm8cpUF+Eh4q3zA=
From: Michael Walle <michael@walle.cc>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 02/16] mfd: mfd-core: Don't overwrite the dma_mask of the
 child device
Date: Thu,  2 Apr 2020 22:36:42 +0200
Message-Id: <20200402203656.27047-3-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402203656.27047-1-michael@walle.cc>
References: <20200402203656.27047-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: E926723060
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[25]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM(-0.00)[-0.164]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 FREEMAIL_CC(0.00)[linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org,walle.cc,arm.com];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_133714_933156_DC917EB7 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
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
Cc: Marc Zyngier <maz@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Li Yang <leoyang.li@nxp.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Mark Brown <broonie@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit cdfee5623290 ("driver core: initialize a default DMA mask for
platform device") initialize the DMA of a platform device. But if the
parent doesn't have a dma_mask set, for example if it's an I2C device,
the dma_mask of the child platform device will be set to zero again.
Which leads to many "DMA mask not set" warnings, if the MFD cell has the
of_compatible property set.

[    1.877937] sl28cpld-pwm sl28cpld-pwm: DMA mask not set
[    1.883282] sl28cpld-pwm sl28cpld-pwm.0: DMA mask not set
[    1.888795] sl28cpld-gpio sl28cpld-gpio: DMA mask not set

Thus don't overwrite the dma_mask of the children. Instead set the
dma_mask of the platform device.

Signed-off-by: Michael Walle <michael@walle.cc>
Suggested-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/mfd/mfd-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index f5a73af60dd4..e735565969b3 100644
--- a/drivers/mfd/mfd-core.c
+++ b/drivers/mfd/mfd-core.c
@@ -138,7 +138,7 @@ static int mfd_add_device(struct device *parent, int id,
 
 	pdev->dev.parent = parent;
 	pdev->dev.type = &mfd_dev_type;
-	pdev->dev.dma_mask = parent->dma_mask;
+	pdev->platform_dma_mask = parent->dma_mask ? *parent->dma_mask : 0;
 	pdev->dev.dma_parms = parent->dma_parms;
 	pdev->dev.coherent_dma_mask = parent->coherent_dma_mask;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
