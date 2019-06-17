Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A17348049
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EuJUrmHJO5T8/1mZXt5hb9gTrfwcv/BK33PJVFqYojk=; b=F9RGg4NQGoGlzz
	lCDbQp+2rRM9Q27LQXMkM0kRb5jlC1ZXn5C4xhqXL5+goAQeX5V76Gp7W1f7AZmW2Xf53uU1c7+6u
	18IvyognT7/jRD/HCY4qHoFA6T0msOvgmYa38nlB+bu2xuRHuRrGLZ2+Vx6R1t/t3KkAljM7sGRIO
	56e6RVjs7vEOI05P4Moq4Le9sh9lGeLzqvlameaemMxLwUuteGC9DacEhoTQWYzjdBNc3K1aIhMQy
	MGJ1akUFwLpGT2Zg4ogsKlB5kZGdBzEAu3N/PK5kU4pm2+dBM/5Wodxy5/rlrVy6KHU8ODtGxEovn
	CK7OcURZyRGKHoSek5CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpYm-0003c8-Ow; Mon, 17 Jun 2019 11:12:24 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpYU-0003Wv-Ad
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:12:07 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N32y5-1idHyv43rh-013RP4; Mon, 17 Jun 2019 13:12:01 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] clk: imx6q: fix section mismatch warning
Date: Mon, 17 Jun 2019 13:11:35 +0200
Message-Id: <20190617111159.2124152-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:luZvn4Kw4EBR3RZaXipNa456cw8n9WOMC2IEWpCkVsAMKIG9gyf
 Th7DcL93IXtSxW5GN6oGVvRO4qNociCYcoTyC6k9h91t+wCGdSDVEnnK99TtMYieeczzjce
 TtDhTLgMfYl53zOD+f9PVhF6IwrEPIgWIxTCcOP4Zf5dIvjTSMHxmkpBZda2gbOuYSf2paE
 RKvO5Om4GSzeijIMxk+HQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:M3B5Knar0Ik=:A+6jFaGJ6IonTlxDIyFvi7
 gEa4cgrbowRmLVoa0iMQU1P1GYnSiU2VRShQMF1ULKS4MZtmzGY7IBMo1dJd9Y1M8qxsaYjrQ
 wVyx/F2362nHnaj3rKglLoq+Prt92d5dd/D4Nqur0Sz1+s/gVrRN8hz0jYOxGOKWhMkmC9jNv
 ZZ9lS7KTgc8/wdABoPeaTI+7eVeA2+VvqJJQsrTZOMm2cDhB7BgvwItmUsAAZy6jWI/XHFaZE
 VJ7FABvEEU9hwK9AKqUOGA0QpSjJ1WlF53J+7B3x1u2ZoNdsbwqouAAQJqljGIiuTIVlvBipk
 ZNir5dVDGvprYRQVzLlyinh78mFDamwd4fOnyKniEmhKAjfonrt/6RQFPXF6oaHOMsp0DMlv1
 21z12ITap2G/izeQTekeLukhqf64x4w65h0jz8Ry3Cc0SceHMDOO9TYgtH39WqroVrY/3eo0p
 3xHZ7CGdjNtqoPS0WK/ibk13QYv6iKX/cK7Hx/ywGB2OoUHDC9ivgXAxf8WI7dGwpEfhaccgO
 i91HiWGI9UQvTD5MFAt1nNt/VBSsgc1j0zW6E2wVRXup1iLl8hbUpzu+s4/+4I+e5GacGAOI7
 R8W+FofVhOq/qOAuX1BfoSGgytorucDElYDjEZQOyQB2y832ZANXRJNiuIqCzktWVv8Udzk3v
 CkREuhO7uCqcdV8yXdfkI5yYj1iBg+qu4Dc1mGc6aW+vBD/eM/CEwATLznPECjp3Gy83CPe4p
 qQnrLatlgY5nAhzrlKagqWXzTjU/xlpv4pbriw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_041206_742106_E47A96DF 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The imx6q_obtain_fixed_clk_hw lacks an __init marker, which
leads to this otherwise harmless warning:

WARNING: vmlinux.o(.text+0x495358): Section mismatch in reference from the function imx6q_obtain_fixed_clk_hw() to the function .init.text:imx_obtain_fixed_clock_hw()
The function imx6q_obtain_fixed_clk_hw() references
the function __init imx_obtain_fixed_clock_hw().
This is often because imx6q_obtain_fixed_clk_hw lacks a __init
annotation or the annotation of imx_obtain_fixed_clock_hw is wrong.

Fixes: 992b703b5b38 ("clk: imx6q: Switch to clk_hw based API")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/clk/imx/clk-imx6q.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6q.c b/drivers/clk/imx/clk-imx6q.c
index 2caa71e91119..a875d0bc12ee 100644
--- a/drivers/clk/imx/clk-imx6q.c
+++ b/drivers/clk/imx/clk-imx6q.c
@@ -418,8 +418,9 @@ static void disable_anatop_clocks(void __iomem *anatop_base)
 	writel_relaxed(reg, anatop_base + CCM_ANALOG_PLL_VIDEO);
 }
 
-static struct clk_hw *imx6q_obtain_fixed_clk_hw(struct device_node *np,
-						const char *name, unsigned long rate)
+static struct clk_hw * __init imx6q_obtain_fixed_clk_hw(struct device_node *np,
+							const char *name,
+							unsigned long rate)
 {
 	struct clk *clk = of_clk_get_by_name(np, name);
 	struct clk_hw *hw;
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
