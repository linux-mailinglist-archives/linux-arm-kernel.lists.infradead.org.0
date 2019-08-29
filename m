Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0E6A299A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qH0vaX0VgB3B8zSYHUlwxenzTS1lOtFsRNmxBBaJHJk=; b=J4XblCfWJ91RXL
	adP9Z9GieKD2CFW+1RgxT2jIycxkLEjlQRh97NWEES6CMRP0PCGeqyFmB6GooqtqvhkCjvO8TRcES
	/xjlafIHpOA9Losq/1GKHEPtYX6E1RHcPs1OAFR1VjQCsP1FTg3F2/m9t6A05qWVr0y+fIB2lySXr
	hr1KdSME3IKvP09Woq0br3mVWSvMEXnPZUbBOYzqpdyE4nP1Y5u4Sycqv6IsyCYk66823uoDD3Ekr
	lj8/A8zzDeyspIa+KP5yU0RbjDKZMQWDqEVqZzA29xJRXL0hdrknIY54QROyP9QvfnUFBZ9fKKHVo
	Ed+3cQ8+8xQj3yDyDxDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Sla-0005TU-9q; Thu, 29 Aug 2019 22:19:42 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SlC-0005Gm-GT
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:19:19 +0000
Received: by mail-ed1-x544.google.com with SMTP id t50so5773569edd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VNjUP90KurMD9/uJH4oScsWAEfGbvaidcWJA5f95CqQ=;
 b=oRIUbZfFbDwGoeJw9Jd45gao5NUkp59Nnmio+2nZTD8zotsl+Iogct9ye7fsoOPO1I
 wqXxLwTC4Ke2n/muYmK7FcagIQzwrl71Yybji4GWVK2iCqwKYRQzEstsQAmcw+ChYI6V
 hceEDfUhTp1e3N7qAWwHmv1Uo7qabvXGBAcWUA9XCd8NkkTtXc8ZnWZv/DHxxnT5pDrv
 YZxzXdTy91xdJtNSsCnIeN9+ne9nnGEeQUWScg0iv7tb53HUJwy5Htyhsxjn+AmF0KFC
 /mrIqC6o+IYKd95pb3JuzlavgHMShiItBkPXEJrIdLBOu8Yl2qpigEKqpY+KojnqP4XU
 Ua2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VNjUP90KurMD9/uJH4oScsWAEfGbvaidcWJA5f95CqQ=;
 b=G5RDugvpSasDdE51OxEwmjx0g1yv79jkEgyWibDwf0nDZwl9cQpzXnbAQfJX2375OZ
 8/95hF9+Zl1w2tXKpO5YykCDOIMnG5NbCenUXEmUvBYqQ28JHNzQotWv5zMefj7aywzD
 Fagr25CsmmO2DLIdJ1RB5ODMFeETq8ANR7oSTWywVSRS0ZioPp8xFrd1Y9jlWyYesg//
 3G+zHYJZ97YE7cgFY38tF0AQDOrm6EfPBNppxz3BN84i+sKAJ/43/oGQs1B4cJ7kAOP8
 sY+rbrNPwXqlh5U6I2wCpBakl+oEzI/VFhHDQAISEdMdVSvWMRVeEFNWDwt7fGrS4Jjd
 4DGw==
X-Gm-Message-State: APjAAAUeLvOFMh9xwL+sUBWcRnhDYG3a+RcdtjgsSnGgJ/K5E+xJus6n
 n/yHnrdh3v+ujfiSMN4Aknc=
X-Google-Smtp-Source: APXvYqy+GwqVf9tzEp92CGoDtVDnq9MLCVLT8c0gDboF3zfO88SpaLUknILjwH6tPEv6REpbIEhAiQ==
X-Received: by 2002:a17:906:a3c4:: with SMTP id
 ca4mr10291373ejb.5.1567117157037; 
 Thu, 29 Aug 2019 15:19:17 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id o26sm545677ejb.58.2019.08.29.15.19.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 15:19:15 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 1/7] soc/tegra: fuse: Restore base on sysfs failure
Date: Fri, 30 Aug 2019 00:19:05 +0200
Message-Id: <20190829221911.24876-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829221911.24876-1-thierry.reding@gmail.com>
References: <20190829221911.24876-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_151918_548768_9F13A6D0 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Nagarjuna Kristam <nkristam@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Make sure to also restore the register base address on sysfs
registration failure.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/fuse/fuse-tegra.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/tegra/fuse/fuse-tegra.c b/drivers/soc/tegra/fuse/fuse-tegra.c
index 3eb44e65b326..6617a4bd11bb 100644
--- a/drivers/soc/tegra/fuse/fuse-tegra.c
+++ b/drivers/soc/tegra/fuse/fuse-tegra.c
@@ -146,20 +146,24 @@ static int tegra_fuse_probe(struct platform_device *pdev)
 
 	if (fuse->soc->probe) {
 		err = fuse->soc->probe(fuse);
-		if (err < 0) {
-			fuse->base = base;
-			return err;
-		}
+		if (err < 0)
+			goto restore;
 	}
 
 	if (tegra_fuse_create_sysfs(&pdev->dev, fuse->soc->info->size,
-				    fuse->soc->info))
-		return -ENODEV;
+				    fuse->soc->info)) {
+		err = -ENODEV;
+		goto restore;
+	}
 
 	/* release the early I/O memory mapping */
 	iounmap(base);
 
 	return 0;
+
+restore:
+	fuse->base = base;
+	return err;
 }
 
 static struct platform_driver tegra_fuse_driver = {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
