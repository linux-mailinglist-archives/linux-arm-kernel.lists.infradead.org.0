Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9B486C7C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPL2DlgsltPQY7SvCAAunE0ilVznYMivhIwaS0yIwHE=; b=srt01SOrhf5MU5
	UNafArO6W9neEE84+vGavdye39Hkz7XR9aUQWyvyblyToLCq2UNUderrqM8kgoRzvjX6QaQAWqRxT
	HE4kKl2FNmRxsmpMgVzw2454t27CAbalO+F/40vb0vPAMPaF/J4EzUQV13G8m7lCDGh2KtganLDu4
	leLoVbgZG4bKbz2Kl/5XRgXUJXOO8Oy9zcLr/T34VtvAOTDA1/ximllpQoeEVyRAegFtACShyp44l
	Lg1AYODafYaE8hSpa51De35tfrtRHnf48mQEKh9GH9hOiucp9ac/z7lHhVRXC+/Kbs3TZkOhtoGlS
	EU2N4i7zB2uZ8MPIpRVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvq24-00014c-Rh; Thu, 08 Aug 2019 21:33:12 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvq1w-000141-Kg
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:33:05 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M4384-1hvq1D3ixU-0004a5; Thu, 08 Aug 2019 23:32:20 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Tony Lindgren <tony@atomide.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>
Subject: [PATCH 12/22] serial: 8250/omap1: include linux/soc/ti/omap1-soc.h
Date: Thu,  8 Aug 2019 23:22:21 +0200
Message-Id: <20190808212234.2213262-13-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190808212234.2213262-1-arnd@arndb.de>
References: <20190808212234.2213262-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:z2A+z2co/6ENTJV8BzitLCY3ir62bsxJ3qP0RIDtuRKBSxc8W+s
 UPlAmrmnNY1b4pYyNJWHze2+YeUDZ39fPMUaKr0ayGZKiv8kD1wSSTQCecLM54dKe66RFbq
 iCcnWHfAU23Yo48rHq+twDPQTUjVS1dw3p7pkfdu6mpGnBDeMDU9k0KAgVEuXpBMe866k9N
 drVQSjjKIytwnVomi/7ww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ElvUHXaYh/I=:v35+aAwQWvH4rVEJdqF34z
 Dlek5Xw/Ls1nDpiDTzd9kSWiltHCOuAOfCYo6Ckspm4mpx/FRuCQrGJvBCpsCddwWu9pmlkQW
 UsGbYnmzqmoFGAbOGYqIDvMcK9qVPyDHFf9Wgqy4Kqft5lcwMXPqrGnWNqy5gKTytH33pM3Bv
 6tmbXUrgtnxSmewUepzYrKzs+hxLbop8xyqQj+0g51Q2gxKSc6RzW+ieQHkLmJUV4h04tcb3n
 vk2u3PW9tPmmQy2AJrabh+AzXQYAYHQLdwrkgwCOm5fR3lDXeSRPDUNqvjkgdHI7XzNutoXDl
 D6PUZxROQfXfsHkcj7ox8/2h4Lw4qQf69kDfs6G8INQmKuuO4nBfETWtxFIhTzVasS3hUaxND
 +HdpXW7jrvxLJHm6LM5mbGaDO+e47dJHLFVwb1bAxJyeYwgC1l9637Zw7BkooP8sC/KhxZiRO
 l6lS0o7x2Cd8yLYXepmkh+T/g5oDOmgdzHf2WwGNfaMEwuphCk2uLR1vXy7pSU8fo4DFe5bLe
 FXYWoz0UMXAJntMWHir+JpGEw/yltq+BzVklCQ7z8OrDqI4diNLJ5sw6mp3cE3Lb5qqmqYAl1
 CQGlBQVN8GFtqo6FdQifBPOP9L/ZJ9wFxnn3/y/Fsnb97R4DRs3/LTWdSWsTBNcbGIpvhwiQq
 Rfbmx1ZcSeKg5nG43YcotG6uoh1Ewc2BYofFsJ0qzdbPsFS9Yhn1VYIOzHxmSsEmH0ll/yepL
 Mi374DjQA0hby5rAVx4umG/4FluKYVzsWcbrmw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_143304_975241_91AB1D2B 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-serial@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As a preparation for cleaning up the omap1 headers, start
including linux/soc/ti/omap1-soc.h directly so we can
keep calling cpu_is_omap1510().

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/tty/serial/8250/8250.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tty/serial/8250/8250.h b/drivers/tty/serial/8250/8250.h
index 33ad9d6de532..9deee198fae4 100644
--- a/drivers/tty/serial/8250/8250.h
+++ b/drivers/tty/serial/8250/8250.h
@@ -263,6 +263,7 @@ static inline int fintek_8250_probe(struct uart_8250_port *uart) { return 0; }
 #endif
 
 #ifdef CONFIG_ARCH_OMAP1
+#include <linux/soc/ti/omap1-soc.h>
 static inline int is_omap1_8250(struct uart_8250_port *pt)
 {
 	int res;
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
