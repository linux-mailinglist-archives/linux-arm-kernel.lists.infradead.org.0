Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 456EC11F6D5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 08:49:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lOHOud9UbtIa18U9P4miiR8GPmJTWy+IvL7VTp0JEpg=; b=amc684TWRZ7baN
	PVnV6gm/TRTEyn5dnDwNVTFok41kPlfwGrvd20IX3mmuhBCKGqppmzNQX/SZaywhPaMad6Blcq0PT
	dppNZiXMnuSfuLxzn8bn7k2+1D5ets8p1lESm5Yx/MLhJ6Ky0zxdtYOvO7lzn12rvmqPmk/ZbjU72
	fGeHwAEedfpvjKLGlkTwm1V8DU5nSkpqcn6g1FhsXIAslWBOWfU1KmMtX3G+bK7Zrr8CqVwrZhQdw
	vssFyWhgVZrBtPhLRjE2n7w95xDpKIiSh7Bb3BwxqWOYdh9l3Fa2rrfwu93p1eUEHgHkfZMXbIiQC
	4iWbBpDofSQbWkb08qrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igOek-0005xF-5Q; Sun, 15 Dec 2019 07:49:34 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igOeW-0005sx-S5; Sun, 15 Dec 2019 07:49:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576396158;
 s=strato-dkim-0002; d=goldelico.com;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=LpDKj822zUyMoXRXIUjh14hwRFU++ehi8QyZ3hnuTeM=;
 b=jdYMFIPbN3l3Hq8eWDzekqWHMpi9qSfM4GEjU6YAK+OBu/9a7hIQH8Euv3QIKHA0tQ
 qO4GXe7SkKAtY8Bk3LWDqKXYn63UNg2ML6ZVgdlWFh8+BH5VFE1qvMNFd8oq7ATyFTVc
 t9BmJDXrZK5vuw+e38KIlZYks2hKhexipSkd1GY0ygJ4k+TIb8+qBJ9gib+1wvQhV8Hj
 C60smMu6G4gfpur21U6AbKcegKLAdyg9fmS7YAoa/NZZ+GCA2KjD4T+alM9wf7f/ICJb
 VIj4ssdj4HkXeNejOV7p6d1wpoQom32vah8j9O+8gDrzcJag9WvNzVFHbZ9m8gja6vem
 ipkQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1OAA2UNf2M7Nk1c1UM="
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 46.0.7 DYNA|AUTH)
 with ESMTPSA id i03ca8vBF7n2D4c
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Sun, 15 Dec 2019 08:49:02 +0100 (CET)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3] ARM: bcm: Add missing sentinel to bcm2711_compat[]
Date: Sun, 15 Dec 2019 08:49:02 +0100
Message-Id: <b8f2060dacd4c4f27e0e1791cb12462ce740927d.1576396141.git.hns@goldelico.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_234921_057476_56D7AEF3 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:8 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: letux-kernel@openphoenux.org, Tony Lindgren <tony@atomide.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, linux@armlinux.org.uk,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rpi-kernel@lists.infradead.org, kernel@pyra-handheld.com,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

commit 781fa0a95424 ("ARM: bcm: Add support for BCM2711 SoC")

breaks boot of many other platforms (e.g. OMAP or i.MX6) if
CONFIG_ARCH_BCM2835 is enabled in addition to some multiplatform
config (e.g. omap2plus_defconfig). The symptom is that the OMAP
based board does not show any activity beyond "Starting Kernel ..."
even with earlycon.

Reverting the mentioned commit makes it work again.

The real fix is to add the missing NULL sentinel to the
bcm2711_compat[] variable-length array.

Fixes: 781fa0a95424 ("ARM: bcm: Add support for BCM2711 SoC")
Acked-by: Stefan Wahren <wahrenst@gmx.net>
Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 arch/arm/mach-bcm/bcm2711.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-bcm/bcm2711.c b/arch/arm/mach-bcm/bcm2711.c
index dbe296798647..fa0300d8c79d 100644
--- a/arch/arm/mach-bcm/bcm2711.c
+++ b/arch/arm/mach-bcm/bcm2711.c
@@ -13,6 +13,7 @@ static const char * const bcm2711_compat[] = {
 #ifdef CONFIG_ARCH_MULTI_V7
 	"brcm,bcm2711",
 #endif
+	NULL
 };
 
 DT_MACHINE_START(BCM2711, "BCM2711")
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
