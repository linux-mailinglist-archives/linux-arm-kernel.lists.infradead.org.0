Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F13C48335
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c6GkXTXU0l8QqHmJZUCGRk8XkrmYkXOWZnZSvFC+K+o=; b=M+j0x8rXZFSI28
	SY4PDn5P9n4GwdFxVFoNPJoxouCKdjq5xjcrGsLpZTRFngMX8Ic4gBLYQBX27is7FOCS8giT4b/dE
	mzHQWvmchIiOlRx8H/0wOMn5GE7wDANRrkj6J17P0I6c24vdwvOJV8+R+4mTbEgifObbvvqTdlljR
	SGD5Ar/WV8deptL759R+ffUpB+Osg463EXXSWEZMfggeLij64E5XCRAHVJ+WEb8Drs8+9tj1R5uwa
	TF6hJEKcxN2JIGiy3Zo5ImIYVGC0b0/JO5RrzJ//Ry9AlJj9kddOKfnOdqeDHz1sXRzZ5MBC14mV1
	FKJf3IRtYNGUVyKsDQhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrAp-0007Ut-Fa; Mon, 17 Jun 2019 12:55:47 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrAg-0007UB-Ow
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:55:40 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N3KgE-1ibs0F23KE-010PaW; Mon, 17 Jun 2019 14:55:25 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Walmsley <paul@pwsan.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tony Lindgren <tony@atomide.com>
Subject: [PATCH, for GregKH] ARM: omap1: remove unused variable
Date: Mon, 17 Jun 2019 14:55:02 +0200
Message-Id: <20190617125521.1553103-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:5sZGK4gs2Z6lmbY+AZRULzOzFNndqrsR+LR3N/b8eoORxP0RDRK
 4cwluOKmjFxZCnLo2qjBpxUUor/ZXJ6iEOFu4JpoLJpxM9m4apj+ajihoQh0JF6jBNqRUk6
 6PPyM14TQksrd7+xKxkYUtkmSnkp4rcQ+bNDJB86ByweuvD+ZWfuaaSvro2a99gv7/O6PtM
 yrVhks6FHyXfuGJOb8tkQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vOzSgpnzn8Y=:1UhMFQ7PRhzaTbKtTHzgsT
 5+AiVHzBehXpewrih74danSoQRVN7gVvj2LwcJMjovTHaV/Wyw4ViTKEqbVzd4scs1XsCGzO1
 Uf0MYtPBFdXpjUY7EdnT9n/Sx3X9ZEv8buU8UjwG9r3csAMpb2DG0k+A8Vwe8WtV+JBbW4hKF
 kkQSzdm3YZz5daeUE8MxrYUfJlpl8jXHmlR9FAsDz748cfxqiwvYi7r6d3oGWCa9krHTvldF9
 ifuTXbZZ6/s9zRxzsA0Iw+lbc7b4iW+MWhBp6MF/HOakiWDQvowMgPEK9q6cGqiJmA60GqvJk
 27fGHmd3qp997d5pGrZUgbUtg+9eRe65Pi4CC42FghZ/FqHhAtMjHZz2YdVhUReZ51Ju0jOxW
 iK6OrUR3wNTS0Of90ifwvPRkTzJ3uXQESeImSIeNO+VSFjTJJ3AffNyJfV7moQF4BdCeZn9pb
 hCStqGC+UbBGwjmOi/U1OhkYFluLjG46BwkaFV70Qkk4z8Xe8AyUaKfreqTQweEvBWTN5djKA
 Knz3ZQT13EC/45cg0E+EsVNclYxV0dkG/qNoIe3nZ7SUde5whaJV4E2nZbdFCaOILpylFzyRz
 jtB/qrS5wmw9P6iKCkc6aUzpkp5z1xXHXycv695xZdFIBNC5BkoTM+Xsykg+Io46UGfoQ0oux
 s4vvsz8urhMUWnUF5BGBe7aAfYcI2fUWZc7SkLo1iRfeIgzBA5Vu8dsZ8s421DQ22epTb8HCj
 uwKQnAgsCRwDixLu77x5b2TVETajW7qitnG9hA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_055539_114354_6517CFB6 
X-CRM114-Status: GOOD (  10.48  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The cleanup of the debugfs functions left one variable behind that
should now be removed as well:

arch/arm/mach-omap1/clock.c:1008:6: error: unused variable 'err' [-Werror,-Wunused-variable]

Fixes: d5ddd5a51726 ("arm: omap1: no need to check return value of debugfs_create functions")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-omap1/clock.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-omap1/clock.c b/arch/arm/mach-omap1/clock.c
index 3d7ab2bcf46c..a5a50efc8e17 100644
--- a/arch/arm/mach-omap1/clock.c
+++ b/arch/arm/mach-omap1/clock.c
@@ -1005,7 +1005,6 @@ static void clk_debugfs_register_one(struct clk *c)
 
 static void clk_debugfs_register(struct clk *c)
 {
-	int err;
 	struct clk *pa = c->parent;
 
 	if (pa && !pa->dent)
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
