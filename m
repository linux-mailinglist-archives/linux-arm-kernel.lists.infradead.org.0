Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7981A35A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=smkeWPiIL95VVuSL3I8pzltR6C7C3ant44vYHX4qOZo=; b=iFm
	p/feo0L+wlIY7cfHE7q1jRAvCAWX+LyqY4U0GA/fjYGyeSeeY5m2/LTpp0s/GBJfOpFesX3WzMDzv
	XZVHCdxRfnOAOfYxI8vBLIslAxBELlafBbbyZUJQYZc+T9GayxUBgvJdvuXbyigEn3RiaA3OYEypf
	Ds/hEJhMKaHadreEYHMCVXMM75qpSrpRWRZQ3q6vhMyqwFQU0vbLB44Bbpa0KfUv1+Lqfr5NPrjS7
	Es3LZ7mdTRZr6LUH33D9Ql6008NuPixOXDDNen61qt13jaDia1mBgexUnB/dG7hKQdUkCp/w6K+j1
	hfhtl+d3llkMcPAwGe6+4vD3GFhM2DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXxu-000326-Fa; Thu, 09 Apr 2020 14:15:34 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXwg-00023j-57
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:14:19 +0000
Received: by mail-pj1-x1044.google.com with SMTP id q16so1054350pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 07:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=uI5Y7Iz6wEdm5rxqvMay0aecrVsycJlfiKALlRK1TEY=;
 b=DOQ42rXPfTNch2EjG+zaAiC7Z4dYLn+EmfLBr0Br2LYseg2VIUP6RIgbsVqoyNc1Yp
 +RFegdSut8BIZPelJWPF/9PNZzfYSWC3bd9ivsnI8Ma0LjI3MrccBYARLmFSZncP7jEy
 oV2XSnO+AsJGgsZo7+1AdWaanMxTbzfeVEXPfckFTH4/ohQRAqrhEyujmPS72LuFrd+Z
 2fdDnZ79A4AW3ZK7ViAab0wNqsJhNHf1LXRhAm5ibCz+jNJnFGKj8NN6zvGq2prA8gzB
 F80kzViXZwTOuvoAn+kVKU5aa8Iy5ovUw3R4QVTJXbke/nZXT2Fw2F3H3CvdeLnbUd7A
 xVNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uI5Y7Iz6wEdm5rxqvMay0aecrVsycJlfiKALlRK1TEY=;
 b=TD6Vy6Iii6gg6ia3p952jVJnTSD6QnimgwJ7zLsu6v2saTMRBb9rfQt/4vLrxeT/Lt
 C7riEDDtyzBASLBlIooIBgTEYVGTJ0DKv3P1dkZPbMlLTq+CICITUyPw2a7rqXBuqKDw
 +Ti0nRsWg4hqUt3oVhgzNEl/vyGg1nn3GBCv0F0p3JxkUBkpiACf6h7E5cQgswZfIiak
 a95nJMP86xN2rqsxV5CeuUPttXQJXe6AHYMOorbrfIY30JATq+TxopPxXPq0kG74U3fW
 8wasfYdYibVnpqVnaHMuofJJH9qcZb0JuYQupnT04g6+SKZlMMcMYS9LEzpaQObd1Q2M
 4uUQ==
X-Gm-Message-State: AGi0PubDzVLn+sdB8uIQEGMu9zT5hpGflarWGm75WCG7aDb31EcsbL13
 aT7B88CYqLtMm/lxFJT7Lp0=
X-Google-Smtp-Source: APiQypL7mQ0rjhq7MJ8igG0FzbTjMHziSp4qVWjwRDmloGrVOGwRZhiAOXJzZTtsK53nMr4lTDoGKA==
X-Received: by 2002:a17:90a:2489:: with SMTP id
 i9mr11116184pje.183.1586441655752; 
 Thu, 09 Apr 2020 07:14:15 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:700:a20f:d50:b01b:c4e4:35ad])
 by smtp.gmail.com with ESMTPSA id
 j4sm1285354pjy.34.2020.04.09.07.14.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 07:14:14 -0700 (PDT)
From: Aishwarya R <aishwaryarj100@gmail.com>
To: 
Subject: [PATCH] iio: adc: sun4i-gpadc-iio: Use devm_platform_ioremap_resource
Date: Thu,  9 Apr 2020 19:43:30 +0530
Message-Id: <20200409141331.30882-1-aishwaryarj100@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_071418_209851_0488C5AD 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aishwaryarj100[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aishwaryarj100[at]gmail.com]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Yangtao Li <tiny.windzz@gmail.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-iio@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>, aishwaryarj100@gmail.com,
 Jonathan Cameron <jic23@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the helper function that wraps the calls to platform_get_resource()
and devm_ioremap_resource() together.

Signed-off-by: Aishwarya R <aishwaryarj100@gmail.com>
---
 drivers/iio/adc/sun4i-gpadc-iio.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
index 176e1cb4abb1..0f2c1738a90d 100644
--- a/drivers/iio/adc/sun4i-gpadc-iio.c
+++ b/drivers/iio/adc/sun4i-gpadc-iio.c
@@ -496,7 +496,6 @@ static int sun4i_gpadc_probe_dt(struct platform_device *pdev,
 				struct iio_dev *indio_dev)
 {
 	struct sun4i_gpadc_iio *info = iio_priv(indio_dev);
-	struct resource *mem;
 	void __iomem *base;
 	int ret;
 
@@ -508,8 +507,7 @@ static int sun4i_gpadc_probe_dt(struct platform_device *pdev,
 	indio_dev->num_channels = ARRAY_SIZE(sun8i_a33_gpadc_channels);
 	indio_dev->channels = sun8i_a33_gpadc_channels;
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, mem);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
