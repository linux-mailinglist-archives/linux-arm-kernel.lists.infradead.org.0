Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581B6153B56
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 23:48:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XT1SHd+I28nLmaplc7knJJZiqWnCRii2S9ehMYOIf6Y=; b=aOm0+CeVRlF11k
	M6puo30fwmb/nDN+0L0PSNdwV7EFsCWbJUHJZvjP1YP3KJpm+ycbD2mO797cLnQ+moLs6nicJPhpb
	6yb5VNO8Qk3zu9chena3ZSkVv5uP6+UWZp4JGl/ZAbVqoYW41cwawsZpv2Yy7sE55syjjEsbdNaSm
	xI0gamwj1uHotmuOMZhiuD8SdJd454MkxVYgVka8SWMVOFSD76TNa0XleyeDnsRfEdFCy+2yi6L/+
	GeOVJfn0RbVDV7ZurfvXX4OI1Z7LcUMhIh5hVzH8Wwn1pd2oF12+U4Suh128AYfn4IesY0wh3uqPG
	uwCZbulkl0HyMwqTmgoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izTTV-0004gQ-Gn; Wed, 05 Feb 2020 22:48:49 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izTTO-0004fg-5A
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 22:48:43 +0000
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id E20FD5C406B;
 Wed,  5 Feb 2020 23:48:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1580942919;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=tBtu8B42mNFXo0ApOnr9YHTy4lOe3v9EM8sVU3KDriA=;
 b=aClxP9hOfUae4u21PzuVsB8WUA5RhBSd/UM7Hdz/J/PN726NUE724SUfRo3AA5aAZwuBFB
 jOLf+ZLjSGCoSjOX9EpAxTp5ACzwciMrYTQRhJ7MexzyPhJ0LDB3R7FoNAYU3qh1X2ytKv
 lssJthU0irgBNngOpDmgM9c3KOxmClo=
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Subject: [PATCH] arm: make kexec depend on MMU
Date: Wed,  5 Feb 2020 23:43:44 +0100
Message-Id: <5b595d37283f043df78259221f2b7d18e0cb0ce5.1580942558.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_144842_345367_3EDACB06 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michal Hocko <mhocko@suse.com>, arnd@arndb.de, linus.walleij@linaro.org,
 nsekhar@ti.com, linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 bgolaszewski@baylibre.com, benjamin.gaignard@linaro.org,
 mchehab+samsung@kernel.org, armlinux@m.disordat.com, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Michal Hocko <mhocko@suse.com>

arm nommu config with KEXEC enabled doesn't compile
arch/arm/kernel/setup.c: In function 'reserve_crashkernel':
arch/arm/kernel/setup.c:1005:25: error: 'SECTION_SIZE' undeclared (first
use in this function)
             crash_size, SECTION_SIZE);

since 61603016e212 ("ARM: kexec: fix crashkernel= handling") which is
over one year without anybody noticing. I have only noticed beause of
my testing nommu config which somehow gained CONFIG_KEXEC without
an intention. This suggests that nobody is actually using KEXEC
on nommu ARM configs. It is even a question whether kexec works with
nommu.

Make KEXEC depend on MMU to make this clear. If somebody wants to enable
there will be probably more things to take care.

Signed-off-by: Michal Hocko <mhocko@suse.com>
Reviewed-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 96dab76da3b3..59ce8943151f 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1906,6 +1906,7 @@ config KEXEC
 	bool "Kexec system call (EXPERIMENTAL)"
 	depends on (!SMP || PM_SLEEP_SMP)
 	depends on !CPU_V7M
+	depends on MMU
 	select KEXEC_CORE
 	help
 	  kexec is a system call that implements the ability to shutdown your
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
