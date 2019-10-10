Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2321AD32FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ScNNRTS0Rlbb1NavBgKxUaHaO2yLqqi7k0f2Xm1P9Y=; b=Ve29DBG4nOrcK/
	KLZjf0Dst2MyHgDZQS3cdXBEgPblrFgVezisC2b7J9b6p1bdJSfmcqtg1m0Zo+U0X2sAZ6DUOd3iP
	QSZH4XciB6sFPdq/+qx3s4sAm8MkQpuaghW8+QKTqjJ66sNxB7niiAS+PGxr00yv6s+eOTFup12qD
	tgRjxEqFs4ToNaeKKZ0ponvWNOjt5TFt7P/QN1DkgKLxHqnM6hN8LGfA0JEbEJTc/ov/HPaz6D6Tr
	0a6Er+hlZfx8AX9mPxjYkmhscL6Vm43VM+RFVUU4HwhxJPzUyIIoO9UYu+8nfl3xkKjMoaSwLif5S
	dYq/ppV9eg5BpDW/hL9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfS6-00015l-G3; Thu, 10 Oct 2019 20:54:26 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfRo-000106-Hr
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:54:13 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MlbPO-1hrc9U25Ao-00ikbg; Thu, 10 Oct 2019 22:54:06 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 32/36] ARM: s3c: iotiming: make functions static
Date: Thu, 10 Oct 2019 22:30:16 +0200
Message-Id: <20191010203043.1241612-32-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:IDS5D8xeFEIPLv2XemOLk8aPKE5MJCSpKyizbsrVtR1rHKSIuNe
 oynjcyJToRV7HM5CiPyhXXx1gd7MYwJwn56K7cVeMHR79p6X6uWBItLeKxev8cYtU71WSpw
 s/ZlpvkJ2LP0kSX5kpDArRN69d2ka/3HhaHoW27h0UwAaY69tdFbYNi9ER9FMUSzt2oiBpD
 ZKOUguObpd5wwtu3PGgqw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:k/Oy6Jsk1sg=:7GOrKqTzFA7deDNTAELnR/
 6/9HId5aBuVM4PYqRHAYiihb98KdHmGHyJC3v9UNx2WwRo9vm3dUowkB3zmVgHgpg0G52hGIT
 kr6JPlJsZaAhVVgH6P4ugppXKiOaVu34ed+iLLRQGFy8gNrWDulrqyHVEBBMw4oxWubhQOrAV
 RUP32EyglpJqkFFrTgIoDvlR75R2W2RB/3qtCXseHL6ca529w9E8piTNwihaka5Qn+lsk3eAg
 y27IkO9U+YRCG6OSMx5odus0LE6b9BhQi0kMdsZObJ35O/2hA4kJJWa9MFhvXFwbLxCDAgXpH
 iInpkBMP7e4DqP22TOTZPXbqVYPsY1di34or4KmNCaDTKtBnjPHJ3XlFyCv5JIuWgb/f329Ii
 sIfjtK4Y0+2p+/FLXk9c3kb2OU9eCL0kLDzkS0mPp7K6ox5tB21EF4mT2N4mqVt7rtPB2bP3V
 RbnI4hUzk6jO3qZqrcUPq3TNACaVyLeM9lIk63+AxRMBNnFFol3LHJYv881fF+R+6XY8uY/uv
 eZcKJ2M90vyJp0V+s+9hDIqfuT6wxTVMDHZLy/uRcmyF9QumuTIBsutsWCkb6ZkbnLKtSQvsc
 f/NTm29ar52ag5i0D01SRHB6D3alb0oRoqzmO3n0u+G9a03jbA7/qZQrOBiuUWlEw8is71u+h
 kbZmDiBmYRb9zX6mb3zm173iuXLwZykriIrNHWt0XhyZfeToVLBpN7CqGtsTQ4/i7XYWs+KpN
 9RruzEizeSRdMqyD3/rZ92yLN0cH/I0IUlyWOz00pvj0KLUymNuoD123UOvCW2447+pO3jdwL
 vcmRXm5xR0CnDfhFSpnlwP4yupCcSPV6thbk7DG8GZWmb2rU6YOBhW+qFn4sNvdIkZJH2eK9z
 Db4CdlgowBxAJ1/PZXBA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_135408_953857_57BF4592 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linus.walleij@linaro.org, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two functions in this file that are never called from
anywhere else, so they should be static to allow the compiler
to optimize it better and not pollute the global namespace.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/iotiming-s3c2410.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/iotiming-s3c2410.c b/arch/arm/mach-s3c24xx/iotiming-s3c2410.c
index 5b3b16dd0ce8..5d85c259f328 100644
--- a/arch/arm/mach-s3c24xx/iotiming-s3c2410.c
+++ b/arch/arm/mach-s3c24xx/iotiming-s3c2410.c
@@ -129,7 +129,7 @@ static unsigned int calc_0124(unsigned int cyc, unsigned long hclk_tns,
 	return 0;
 }
 
-int calc_tacp(unsigned int cyc, unsigned long hclk, unsigned long *v)
+static int calc_tacp(unsigned int cyc, unsigned long hclk, unsigned long *v)
 {
 	/* Currently no support for Tacp calculations. */
 	return 0;
@@ -288,8 +288,8 @@ static unsigned int get_0124(unsigned long hclk_tns,
  * Given the BANKCON setting in @bt and the current frequency settings
  * in @cfg, update the cycle timing information.
  */
-void s3c2410_iotiming_getbank(struct s3c_cpufreq_config *cfg,
-			      struct s3c2410_iobank_timing *bt)
+static void s3c2410_iotiming_getbank(struct s3c_cpufreq_config *cfg,
+				     struct s3c2410_iobank_timing *bt)
 {
 	unsigned long bankcon = bt->bankcon;
 	unsigned long hclk = cfg->freq.hclk_tns;
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
