Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6B91949FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 22:11:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBKf90vvH1ggxXC4qenS7x2rtmhkFX9HOgzaOVveta4=; b=a0djJuzOK9Q6rH
	acK36sqamoaItABMs/pmRqCgDxJrWSK3H07NuAQxAggPsVIZ16Yx/NirQW4cGGZ2vs6ikj3Nr/4rN
	vlDor1DR60kppGZ+37t9FAgN5nmtcQ8Qo7qrrurdWbB+dzQ7ak1mHshtWBPgCU4NkSrtS1H0ZjjYz
	RzGSMXU9ZDOwkozL1WtyPCv2PIQ4TEBFfpljI5BWnJAxwd3Q1WrAsFvmgs6VE2rbWCmPTFze6giLC
	Ft9xpiApFrFVBJU6ooqxpsF1ucSTHQ+/EBRIEF4htSvOOEdrbwKtgq5lFomUsywOrGDgg7i3e3zbi
	RWdxn6SvNnNY8Kg/vjlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHZmR-0001QI-UR; Thu, 26 Mar 2020 21:11:11 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHZlX-0000lg-U9
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 21:10:17 +0000
Received: from localhost (p54B3331F.dip0.t-ipconnect.de [84.179.51.31])
 by pokefinder.org (Postfix) with ESMTPSA id 3626F2C1F8B;
 Thu, 26 Mar 2020 22:10:15 +0100 (CET)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH 1/1] ARM: mach-s3c64xx: convert to use i2c_new_client_device()
Date: Thu, 26 Mar 2020 22:10:14 +0100
Message-Id: <20200326211014.13591-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326211014.13591-1-wsa+renesas@sang-engineering.com>
References: <20200326211014.13591-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_141016_143995_9C9387E4 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move away from the deprecated API and remove printing a stale 'ret'
value.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/mach-s3c64xx/mach-crag6410-module.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-s3c64xx/mach-crag6410-module.c b/arch/arm/mach-s3c64xx/mach-crag6410-module.c
index 937d0a83f8fd..34f1baa10c54 100644
--- a/arch/arm/mach-s3c64xx/mach-crag6410-module.c
+++ b/arch/arm/mach-s3c64xx/mach-crag6410-module.c
@@ -405,10 +405,9 @@ static int wlf_gf_module_probe(struct i2c_client *i2c,
 			 gf_mods[i].name, rev + 1);
 
 		for (j = 0; j < gf_mods[i].num_i2c_devs; j++) {
-			if (!i2c_new_device(i2c->adapter,
-					    &(gf_mods[i].i2c_devs[j])))
-				dev_err(&i2c->dev,
-					"Failed to register dev: %d\n", ret);
+			if (IS_ERR(i2c_new_client_device(i2c->adapter,
+							 &(gf_mods[i].i2c_devs[j]))))
+				dev_err(&i2c->dev, "Failed to register\n");
 		}
 
 		spi_register_board_info(gf_mods[i].spi_devs,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
