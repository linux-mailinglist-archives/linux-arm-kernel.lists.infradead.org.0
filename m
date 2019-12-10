Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB36119223
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:34:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QCFl/VO/D96Xt0n2Qxrc3LVdhH2stSnVBTzf4Z0xt5k=; b=ksExEEBQ/zzItG
	CKHohoN0qT7YPi7yr9X/V5Usn2oc2VKua6lGQbslsWIVTorGweX6KMLa2fKXRkQr47zxARAyz+VDb
	uJ70+2Ya4wbniTp0pDjX/VSqOVu7e+PlR771Nw5QBYy9RqYYLp6adR3c//Gzh0tHuLNchbtFc5Fur
	oRswobmCrBLQfQJPohwCZze8q5pc1Wu7OlClgQhIq7AW/46+uBx9sQYKvyQhmoqCZIHMjIW7H7p0g
	T8TGGzyTraUXyD3H/nJKDFByeyvAb4w/XJNzsRXChTBQ9a8Tv7mf7hKIJcR7BFsTTIxAWy0e4WbQ4
	owAE57AyTzpHmPlczWNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemD9-0002jo-EI; Tue, 10 Dec 2019 20:34:23 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemD0-0002j2-3T
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:34:15 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M8hlZ-1iafTh1vDF-004kr7; Tue, 10 Dec 2019 21:34:12 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: [PATCH] ARM: mmp: include the correct cputype.h
Date: Tue, 10 Dec 2019 21:34:00 +0100
Message-Id: <20191210203409.2875880-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:TYAVyXZgBYEko4NYVCn4X559DV/JN37TG56E9DTOSjQgKZUotME
 +7SX6MDl243LqHXqdDvEgumQAYCErDA36xAmLWEj8PUEy9hunzEkslRwnZA2MRQu4Ce4ch2
 i8QQfAihBHYBxnm348B+iQdREe+NBDyg3AXlxUQRt1UxEQHRaYV4cOSKTwu4wbyFEKAt/kp
 vWWIx6wXTp+ZXCJIEngNA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3HiHdPJVe7M=:7cSklzDdqM2TTJj0lOR2Ub
 2g5KEPlXreb/mo5YWw7e3DVba9pcj81DkjylhmMqGnz4i35x2eIAm3o/wiB3HnQ0YucEQAqqV
 PgRljNhR+iQv8AYEwnq5r63vcNRM6or9YaVlsW0QCatE+5s5IozH1nX9CPmNEWcN8AkffFrmH
 NiLx601YlWIsRvDdWhjRpErHvQ80OeY1dV98Mv3Fs/ZGxJP/4rD6fVQOBYUMFb7x+J3mo9E5Q
 JVpc9UHwAt41sUhd2TV55lZsyz2+xQPcbjtR+cyBLmi75bhiF6c/6qjIaRRFGRJ/q3i1+9VI2
 PsOWOxdkQooTTJh0SdhkH4/5z/8FqcYp2SSzHnN6yW4PVoYpM8Y4dZ7xVVC5SAHZXNDTsjxXM
 Ra4La6NPVq1fNGyf1VYV7f6FhA59mynJv1DwwTSVGfGlYyVYFxbULfFZUC3qJ6gLpkULO+LYn
 YJ2XcksLuN6cIDwp+ZFIUSPEzP8Q3duijvExGPXSh1sp4v928MHbgtzRrk8I2F7atpp87I1oU
 gKUMfPIRlXLHQsMkPsG2R3c5OFBn7r+NmH+VPK+BU3v2vT695goh/1C69Vk7XrDv6Bl1m3eg1
 sRQMMxgU/O8tq6vwpovXbGoTAjioMKz3GRP2hOXGpN0rl1nJ7tNGZ3BWGwsDuoVYhQdgP+yb+
 9hBS9C3rNAfH7Y87iTmbvzY3gK405RMJIk/NmjGRfOmQ48SZQshU+YN1rW1CVJnx+4gzBzPRm
 YizD6uevSC6aIaZbC+DjiM3i9a7BThnXuy6De6uA3iF7cjlJYgWTlSpF/e4I581SD6aqub1s3
 p+8R7biP43pV2Y7UiAFxkoi5ny8QD6ylcNSo/UJO6OsKsYSFz3mKE3LCtJvFigIeZwUGOdqz7
 BNmP5NPjKu3Bbh9kxTBA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_123414_434088_69936F56 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The file was moved, causing a build error:

In file included from /git/arm-soc/arch/arm/mach-mmp/pxa168.c:28:
arch/arm/mach-mmp/pxa168.h:22:10: fatal error: cputype.h: No such file or directory

Include it from the new location.

Fixes: 32adcaa010fa ("ARM: mmp: move cputype.h to include/linux/soc/")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-mmp/pxa168.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-mmp/pxa168.h b/arch/arm/mach-mmp/pxa168.h
index 6dd17986e360..34f907cd165a 100644
--- a/arch/arm/mach-mmp/pxa168.h
+++ b/arch/arm/mach-mmp/pxa168.h
@@ -17,9 +17,9 @@ extern void pxa168_clear_keypad_wakeup(void);
 #include <linux/platform_data/keypad-pxa27x.h>
 #include <linux/pxa168_eth.h>
 #include <linux/platform_data/mv_usb.h>
+#include <linux/soc/mmp/cputype.h>
 
 #include "devices.h"
-#include "cputype.h"
 
 extern struct mmp_device_desc pxa168_device_uart1;
 extern struct mmp_device_desc pxa168_device_uart2;
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
