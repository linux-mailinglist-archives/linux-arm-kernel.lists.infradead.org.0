Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE277EFDA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 13:49:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AIpfEyXO5ornJrXK5FDXe35UJXIzMLoe2ZGmdSDHwrw=; b=aGaIdibwal1+Ex
	aUByLAaS0ql5f+3YxXidl/X5Wh3IyeSj5GZ+YaZLBf8Qh2zLBdJuwosiv6lQAFfcwg48L9DPM57cK
	uPpFsbQRln8E4tppkvDftCF838L89P4pzHDW5HAuiJkJCwNhqtbhvi5sqH7UCZfo2JKe2oT9c2LBi
	HIMI2PFR+SP2JSAER/IQgk8ZxHu4DIFHgvnvebrd0u9M3vvxg2x9q+WZXE8cgduMNkVqqcO9Btm4/
	fqDXiz+67O4su0D99UrRnsXhF0QdLvrHnH5/e7RiD6nOJRDhtaDFFFkLukxhBGtC7saEoi0Q2zvvz
	mQCjdzS0PLtfN07p9Yyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyHF-000578-Gn; Tue, 05 Nov 2019 12:49:41 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyH7-000538-JH
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 12:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YF0SPqtJlZ9yO+HjEI8KHZXAGRkZZ0lJis6FsY1blfY=; b=odaFo7CtTrXVALVT+A9AmK2rw
 ab2bAvH1DMgSuC3Uj8rz+KMiDbgwqwRRZ9855XdWSypUMRyUVfGhCanvuESRTPFjWKey2GvQJBsWw
 forbrOvTwgMOlo1Il91xPnPW9wNmeIEaOAyzFgHP75ryeqJkQu37Y+UjvBee+KrRovfbQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iRyGx-0006Zf-EF; Tue, 05 Nov 2019 12:49:23 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 982D5274301E; Tue,  5 Nov 2019 12:49:22 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH] gpio: xgs-iproc: Fix section mismatch on device tree match
 table
Date: Tue,  5 Nov 2019 12:49:15 +0000
Message-Id: <20191105124915.34100-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_044933_643991_1C3971B9 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The table of devicetree identifiers is annotated as __initconst
indicating that it can be discarded after kernel boot but it is
referenced from the driver struct which has no init annotation leading
to a linker warning:

WARNING: vmlinux.o(.data+0x82d58): Section mismatch in reference from the variable bcm_iproc_gpio_driver to the variable .init.rodata:bcm_iproc_gpio_of_match
The variable bcm_iproc_gpio_driver references
the variable __initconst bcm_iproc_gpio_of_match

Since drivers can be probed after init the lack of annotation on the
driver struct is correct so remove the annotation from the match table.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/gpio/gpio-xgs-iproc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-xgs-iproc.c b/drivers/gpio/gpio-xgs-iproc.c
index a3fdd95cc9e6..bb183f584d92 100644
--- a/drivers/gpio/gpio-xgs-iproc.c
+++ b/drivers/gpio/gpio-xgs-iproc.c
@@ -299,7 +299,7 @@ static int __exit iproc_gpio_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct of_device_id bcm_iproc_gpio_of_match[] __initconst = {
+static const struct of_device_id bcm_iproc_gpio_of_match[] = {
 	{ .compatible = "brcm,iproc-gpio-cca" },
 	{}
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
