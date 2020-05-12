Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B341CE9A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 02:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOn9ItW4U0qxPLWsW0OT30NMOaCyiJJzsoo1EToVpEw=; b=lqLoWkflwNc1CX
	+fALg5yU9m33NYfoPUKNBLgkJ4lKJa8OSr0t10fg+RxanCuO52lQNg/Bm4sfO1tPPFiOwGhoegNzb
	YmLgTolzSrvRMWyNqC7aTnAE/hQz45bkst1F0k4NLYuztJf8O4/M6GmC3Dl6bRXTF/PC1+nfwagWS
	x/+eDJQ8NDRIGVgYgf9r1Lawl3ZknHxInkOGkNu8TML1gWLd+47TXnpSOg5I9TsTKEK2xaag3VH4P
	3V6ls5tquwoozGqcbMkiNCT/4f4liLD5owIOSSyz1dBgvnEgLsDPnCgEVE2CyPSGsuFk3MVslFZsg
	MlUfKO/7ycsJgT9OVneA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYIkd-0002Rr-1m; Tue, 12 May 2020 00:26:27 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYIkV-0002Py-IM
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 00:26:21 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 9795A634C87;
 Tue, 12 May 2020 03:25:18 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jYIjW-0001lF-GJ; Tue, 12 May 2020 03:25:18 +0300
Date: Tue, 12 May 2020 03:25:18 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v8 2/3] media: ov8856: Add devicetree support
Message-ID: <20200512002518.GX867@valkosipuli.retiisi.org.uk>
References: <20200511110350.11565-1-robert.foss@linaro.org>
 <20200511110350.11565-3-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511110350.11565-3-robert.foss@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_172619_784382_9AF44A3C 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-kernel@vger.kernel.org,
 Ben Kao <ben.kao@intel.com>, Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Mon, May 11, 2020 at 01:03:49PM +0200, Robert Foss wrote:
> Add match table, enable ov8856_probe() to support
> both ACPI and DT modes.
> 
> ACPI and DT modes are primarily distinguished from
> by checking for ACPI mode and by having resource like
> be NULL.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>

Applied with this small diff --- please check with checkpatch.pl on the
next time. Thanks!

diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
index 1657e03d9a9d..4ca27675cc5a 100644
--- a/drivers/media/i2c/ov8856.c
+++ b/drivers/media/i2c/ov8856.c
@@ -1226,8 +1226,7 @@ static int ov8856_get_hwcfg(struct ov8856 *ov8856, struct device *dev)
 	if (!fwnode)
 		return -ENXIO;
 
-	ret = fwnode_property_read_u32(fwnode, "clock-frequency",
-		&xvclk_rate);
+	ret = fwnode_property_read_u32(fwnode, "clock-frequency", &xvclk_rate);
 	if (ret)
 		return ret;
 
@@ -1244,10 +1243,11 @@ static int ov8856_get_hwcfg(struct ov8856 *ov8856, struct device *dev)
 	}
 
 	if (xvclk_rate != OV8856_XVCLK_19_2)
-		dev_warn(dev, "external clock rate %d is unsupported", xvclk_rate);
+		dev_warn(dev, "external clock rate %u is unsupported",
+			 xvclk_rate);
 
 	ov8856->reset_gpio = devm_gpiod_get_optional(dev, "reset",
-		GPIOD_OUT_LOW);
+						     GPIOD_OUT_LOW);
 	if (IS_ERR(ov8856->reset_gpio))
 		return PTR_ERR(ov8856->reset_gpio);
 
-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
