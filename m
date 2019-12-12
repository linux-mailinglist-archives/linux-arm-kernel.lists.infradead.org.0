Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D24D911D9CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 00:13:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FUf5MOUQbSrmupjyaSmd10Jdzj+aCdNfmYWI7n5u0i4=; b=XA2
	uLwULzLgS3lsoJv15wclwdeBhDZInBKb0meBbQSdUpfw+yI1ZO4eYLKCf66i3awD+Pi21GGn0WB49
	qbMDA1kjvs17z0bTHqmSUCgpBXr0sNjfEAnXrxrubF+LnS/brgl6aKDLAeo3fyU6DQh5qD0Cl3IUC
	ntrqlZ5vFr/+JjWobE9fQJbO587JzS+VsQ/oUXUj+d0fyvpPydeTmwxMZD+tqu5eugFryQF5NvaU+
	9TYJsEoyg80EugVOtCdsegLopUGHIsWVe50wXUXq8BMZAa5fAFzCURdvs5dkVnQkSDiXziqOSO2tK
	jBXNZW+S/GAU9PHh+ThVHnsajXoTddw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifXdm-0006Bz-3e; Thu, 12 Dec 2019 23:13:02 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifXdd-0006BQ-CU; Thu, 12 Dec 2019 23:12:54 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 1801D30C047;
 Thu, 12 Dec 2019 15:08:10 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 1801D30C047
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1576192090;
 bh=GUHozoaDgbqjfROjXkEJw092rtDS8++6YoSJnSbvtOs=;
 h=From:To:Cc:Subject:Date:From;
 b=TJm/Ng73wQ9MRMHSQu23Rs6/CAol/PxhHn5hDL8FSzsi1yUrQ1ZWsQx8DAQKxH5H2
 hBcjJuA6zXvysnTtThtBA3iGZkLigoAS3Lx+LNkZTmtlzVySXXaiQ3fbq4bBIKW0OT
 8Vk3JDA/NF5tR/StYpnvUvkOw/YmzBcqWOFzVoJ0=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id E6F7C140069;
 Thu, 12 Dec 2019 15:12:43 -0800 (PST)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-spi@vger.kernel.org
Subject: [PATCH] spi: bcm2835: don't print error on clk_get() DEFER
Date: Thu, 12 Dec 2019 18:12:13 -0500
Message-Id: <20191212231213.29061-1-jquinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_151253_445355_E967525C 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <scott.branden@broadcom.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Jim Quinlan <james.quinlan@broadcom.com>,
 Ray Jui <ray.jui@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Otherwise one may get multiple error messages for normal
operation of a clock provider.

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
---
 drivers/spi/spi-bcm2835.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index fb61a620effc..6c9addc9f276 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -1305,7 +1305,8 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 	bs->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(bs->clk)) {
 		err = PTR_ERR(bs->clk);
-		dev_err(&pdev->dev, "could not get clk: %d\n", err);
+		if (err != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "could not get clk: %d\n", err);
 		goto out_controller_put;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
