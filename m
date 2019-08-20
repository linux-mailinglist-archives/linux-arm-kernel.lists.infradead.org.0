Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0680B95F3B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 14:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=lXVNE0sQ0dwikzPcZTwfogzNm8YSX80sgPFfhNxYe60=; b=Eq5
	+n0jwdVL+eOx2yBv0hR631c00cWKhbMgTpqyoUyne312w+xtdYfRFMAkgtprozKlWgJM/2D2e5HjX
	fdn61P8vkP+F6sI7SaP8JES3+cWjlR3B5zVEQsyxyx2OTj/hNDN/OQOyPaWWAARD4zMKrAVy9Zaqj
	560LXTvilmHwMzzS8hGvdfpIrfDgsURlJO+tsCzsDjK++fLoB650zNTbhUeqq9B7JYTI5R5JHL6hc
	G5OGdDMN3XqI+LlTJkoNAjZttzV5cIYtqbGphTtZNErvDcSUjwbxJ24TvxFsm2uVx/7yY72tPdKdp
	GiG7NnkoGnohQWOcTaiEUVoRAtcDYZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03fk-0008I3-EJ; Tue, 20 Aug 2019 12:55:36 +0000
Received: from mail-wr1-f98.google.com ([209.85.221.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i03fB-0006qP-Ue
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 12:55:03 +0000
Received: by mail-wr1-f98.google.com with SMTP id u16so12292543wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 05:55:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=RKXbUzu1kRheoPwSAkue89bMPLcxfeHfz/VAPnv9H28=;
 b=A+XScPYtgBsBARcr92Y6FKJynbJWSPMsroy4PLQMoshW2ecSbFK+0AQ9KWl3OM1qvH
 kLBSys3VDqosmbd0LvvjlEIqJR5J1p9+oejQbx96df1YN6Us2Dh4w5G5h5PheFGj8Hdo
 u4Zn9oNcu6cwBXICtSyVDRbuIf1rUobI0pGs83sYLXoMx4Qw+dCWO0O3eSF387TURjAG
 2EQRnyFxS9DaaYGwWZWBLbwkfZxasfk+rF8pqM+wRmFUVCCrcY7JFHeQQyY7lI2J78/B
 6fgU3a0t47sZrzCuH1NsEjwhHab8HiK1tMiOJykUs3Yp5ezmvlmhAvv9Q8r9mQ4gEmBz
 J+Mg==
X-Gm-Message-State: APjAAAWelNU7ORzrr6eRfpq0trrxNcSbhWfIXJ8X+BJdtqr5YJJbcnHv
 ymr6RjkcC5QLs1P5Nhr/bVGzq03GfEzziETSuJ+svjHx+ENytjpiJfvqyqXMbIdR8A==
X-Google-Smtp-Source: APXvYqzr6d7Jo1fLhXXIs7tv09nFOW/0aRO+946vXqOAFs7NCqricpsmUlH1EaGfhsDssInmBHVS9iBuZQqg
X-Received: by 2002:adf:cd11:: with SMTP id w17mr35742727wrm.297.1566305700607; 
 Tue, 20 Aug 2019 05:55:00 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id o11sm305378wrx.68.2019.08.20.05.55.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 05:55:00 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i03fA-0002Dq-Af; Tue, 20 Aug 2019 12:55:00 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id B15E9274314C; Tue, 20 Aug 2019 13:54:59 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Axel Lin <axel.lin@ingics.com>
Subject: Applied "spi: zynq-qspi: Fix missing spi_unregister_controller when
 unload module" to the spi tree
In-Reply-To: <20190818095113.2397-1-axel.lin@ingics.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820125459.B15E9274314C@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 13:54:59 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_055502_084364_FCA6B458 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.98 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Brown <broonie@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: zynq-qspi: Fix missing spi_unregister_controller when unload module

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 8eb2fd00f65a96143ed1535bdbf4ca4e129d30d1 Mon Sep 17 00:00:00 2001
From: Axel Lin <axel.lin@ingics.com>
Date: Sun, 18 Aug 2019 17:51:13 +0800
Subject: [PATCH] spi: zynq-qspi: Fix missing spi_unregister_controller when
 unload module

Use devm_spi_register_controller to fix missing spi_unregister_controller
when unload module.

Signed-off-by: Axel Lin <axel.lin@ingics.com>
Acked-by: Michal Simek <michal.simek@xilinx.com>
Link: https://lore.kernel.org/r/20190818095113.2397-1-axel.lin@ingics.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-zynq-qspi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index c6bee67decb5..d812a215ae5c 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -695,7 +695,7 @@ static int zynq_qspi_probe(struct platform_device *pdev)
 	ctlr->setup = zynq_qspi_setup_op;
 	ctlr->max_speed_hz = clk_get_rate(xqspi->refclk) / 2;
 	ctlr->dev.of_node = np;
-	ret = spi_register_controller(ctlr);
+	ret = devm_spi_register_controller(&pdev->dev, ctlr);
 	if (ret) {
 		dev_err(&pdev->dev, "spi_register_master failed\n");
 		goto clk_dis_all;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
