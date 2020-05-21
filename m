Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDE51DD658
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 20:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvVf4Kc+z+CSojWI2GSltzRLE9F0jgC2SJlCox06rP0=; b=MNmNK2WjY3B6po
	xkR59l83+w/V9OIW299dvEyeXVd9gwXLZGjJ7SORDfRj0WwRH8O05i1Y4vjDI4dlClJRhfsJIEiPW
	IT+WeyduYLU/f4wbJ8tRr6APuFAPgkb3oYSQH7hZqnttzbyzb3ZV232ZqYGRwKEmYySOG49OtmCBq
	0Umwz6PmcEOeyg/U7LZP8DA5ywlTqIg6wSQADOZkPvGT3VslG7pq/Xug2NH2yigmrhAnjW0d6cG2u
	tFrmrF/NtSnYSfOUeLEKFdlnZ7xo3CAhEcLsarTaaPGhzqPwNpT5OIZbeno4j3PKdEuhSdYkEC3Ni
	WYAzB6gXgLazHIV1setQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqJR-0002tU-MJ; Thu, 21 May 2020 18:53:01 +0000
Received: from smtp05.smtpout.orange.fr ([80.12.242.127]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqJ1-0002jN-H2
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 18:52:37 +0000
Received: from belgarion.home ([86.210.245.36]) by mwinf5d28 with ME
 id hWsG220030nqnCN03WsXKi; Thu, 21 May 2020 20:52:32 +0200
X-ME-Helo: belgarion.home
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Thu, 21 May 2020 20:52:32 +0200
X-ME-IP: 86.210.245.36
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 soc@kernel.org
Subject: [PATCH v3 3/3] ASoC: pxa: remove Compulab pxa2xx boards
Date: Thu, 21 May 2020 20:51:39 +0200
Message-Id: <20200521185140.27276-3-robert.jarzmik@free.fr>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521185140.27276-1-robert.jarzmik@free.fr>
References: <20200521185140.27276-1-robert.jarzmik@free.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_115235_853927_3C51B17F 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.127 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.127 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robert.jarzmik[at]free.fr]
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
Cc: Arnd Bergmann <arnd@arndb.de>, alsa-devel@alsa-project.org,
 Mike Rapoport <rppt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As these boards have been removed from the pxa tree, amend accordingly
the sound subsystem.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
Acked-by: Mike Rapoport <rppt@kernel.org>
Acked-by: Arnd Bergmann <arnd@arndb.de>
---
 sound/soc/pxa/Kconfig | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/sound/soc/pxa/Kconfig b/sound/soc/pxa/Kconfig
index d4c0f580a565..fb2d5ab02b0d 100644
--- a/sound/soc/pxa/Kconfig
+++ b/sound/soc/pxa/Kconfig
@@ -128,9 +128,8 @@ config SND_PXA2XX_SOC_E800
 	  Toshiba e800 PDA
 
 config SND_PXA2XX_SOC_EM_X270
-	tristate "SoC Audio support for CompuLab EM-x270, eXeda and CM-X300"
-	depends on SND_PXA2XX_SOC && (MACH_EM_X270 || MACH_EXEDA || \
-			MACH_CM_X300)
+	tristate "SoC Audio support for CompuLab CM-X300"
+	depends on SND_PXA2XX_SOC && MACH_CM_X300
 	depends on AC97_BUS=n
 	select REGMAP
 	select AC97_BUS_NEW
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
