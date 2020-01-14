Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA2513AF54
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 17:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NV7KrT0BbMoX8jtLVngfvylNExZTcyQUD3QhGRuJlKs=; b=RhW
	9JmJCpfcN+26LIxxQ4K8hKb+zVbTgMFIjMpT7F0nIfhGmEJgM6gQkhDocFq8+IHmq+5QZIR6y0NrY
	msVOjCyHdJHG65iiG/eh0+s/WHucJLbsisiMg/g71U1ta+7pxyGEHME8wbkn1P/mp31IdWAsHZeMR
	5vvfF8abx0Oucl4SE5Pr4Ryzts6nqFrY6VYqVpIURihh6FQhs17CTOxxJ4+dmDc37+B/yJ8nFrr81
	GWJP1IPRfEHjK6sNnZ2agJjxkgIwp8Y3d4lMp10ia6/1F68P1cxXLenE3fQLLeHobEu44yjS+SaFh
	N+lzswB5xGTRNIA47jGOpGUzJWPNhFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irP3T-0005jY-Un; Tue, 14 Jan 2020 16:28:35 +0000
Received: from outgoing18.flk.host-h.net ([197.242.87.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irP3C-0005i7-KW; Tue, 14 Jan 2020 16:28:23 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam5-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1irP2z-0005f4-Ct; Tue, 14 Jan 2020 18:28:06 +0200
Received: from [130.255.73.16] (helo=v01.28459.vpscontrol.net)
 by www31.flk1.host-h.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1irP2v-0007ID-6N; Tue, 14 Jan 2020 18:28:01 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] clk: rockchip: fix incorrect configuration of rk3228
 aclk_gpu* clocks
Date: Tue, 14 Jan 2020 16:25:02 +0000
Message-Id: <20200114162503.7548-1-justin.swartz@risingedge.co.za>
X-Mailer: git-send-email 2.11.0
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.03)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0YvzwMmgjmY0UwihWARy7g6pSDasLI4SayDByyq9LIhVQj5rfp7t2+1U
 Z1jMPOrlNUTNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0h/RxVysY5Ye6+GGw0VqdJD7ren9RtRNyYim5e3GD8LGfWrcbYvelpuN/Pk
 qhBpvAyWwieZyauFYqHkIbFa+ipFJdVl2Qo16OdG/SgJyrKdw0Znvotuy3L4aSJjqFExmwGwvf6h
 PQx0fYKjNC9VXDo4KyWWo0k/XI0fGv8bNm7IfazUKrTRmPfW13HBdTouyUQiTqTLnMPwSR2klzqa
 C1hRfn6HuUe9L0a5vwf8PHac6dlnibl3vcBqVmvQB4A18acnPwH1VlXOoo++LXPjBzJ/AVXirbLu
 Jjy3NtnGWLbnBGfrUBEXB2fYGLNieGQuoHtJvp0r29Rf3ZjFwL+MhHEWw/0qBlNDp8uABz3dkWV+
 tgmYFaNu+2UDArzT1gq7P+ZTycYLFeAN4+MGwnsp7SkU6CLbyF0Zq4b1/7rjUzETJrWks4pbbQJq
 6gWopI3ep45X19ZysgQ+31LcAX8eoFXAhohfegXGH2GIVQVglJFbK771YV8YbC29CtmpcTqTfSIf
 CWq9oj7OiT8GwpAriB+3/81I3rvR8KJ2fK9jiDYgijyqqY0rATpzHKGfmtNsYTr4SmDZ/bGW8xZC
 RRs6ZD24UhFcZZEpLhnBCwImTQNvxaLyCc35VA7RvW/HGiGqxL09Cymermt8NAa/gGopT3kKfO4C
 gvcKmV0o9jYzsFpuc43pp/LzIs3ornuRuAAdgrkq+6l7ZLNYJcf7Z6PCydDzoYZgInuDxgFOs7AZ
 TwbwMWQbSR6Wmuan/Ls9Qsz9RDDIN7T0mcqBMddGdUDgESur38NrFoXSENXH6UXfnav35JPA4YfM
 6tBkXsqvKY6zoLLTPpuFqUUQz+mM8JAD4ECWNo09vb0YLIRnK477e9Xake5PIWKjIXX7qe2zOXoS
 foyP6zRt50eEqxpBU45i9YX9FCnI0IkSddJcntdBoUG5LGbjO41FyBEqIaDudcVplPE6wCr6GXU1
 lCw88ijyus1sGnWknJqS8gGhNQxpB5P3qu7c1xMljx2PG/R+pKBSKy8hXOgvE1zSS7XUhkYEQYeb
 3jR5NeVaJQBh0uawl0Cg8j+knAzOA9mmoJvkuhKHiekUuskYaI6ERCKp8gXWqnT9kLHhStr5fiGK
 7KncpWELuTEvuGslKTrRIXcXpFg5ivY=
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_082818_673572_D28E7526 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [197.242.87.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org,
 Justin Swartz <justin.swartz@risingedge.co.za>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes prevent the unrecoverable freezes and rcu_sched
stall warnings experienced in each of my attempts to take advantage of
lima.

Replace the COMPOSITE_NOGATE definition of aclk_gpu_pre with a
COMPOSITE that retains the selection of HDMIPHY as the PLL source, but
instead makes uses of the aclk_gpu PLL source gate and parent names
defined by mux_pll_src_4plls_p rather than mux_aclk_gpu_pre_p.

Remove the now unused mux_aclk_gpu_pre_p and the four named but also
unused definitions (cpll_gpu, gpll_gpu, hdmiphy_gpu and usb480m_gpu)
of the aclk_gpu PLL source gate.

Use the correct gate offset for aclk_gpu and aclk_gpu_noc.

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 drivers/clk/rockchip/clk-rk3228.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index d17cfb7a3..d7243c09c 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -156,8 +156,6 @@ PNAME(mux_i2s_out_p)		= { "i2s1_pre", "xin12m" };
 PNAME(mux_i2s2_p)		= { "i2s2_src", "i2s2_frac", "xin12m" };
 PNAME(mux_sclk_spdif_p)		= { "sclk_spdif_src", "spdif_frac", "xin12m" };
 
-PNAME(mux_aclk_gpu_pre_p)	= { "cpll_gpu", "gpll_gpu", "hdmiphy_gpu", "usb480m_gpu" };
-
 PNAME(mux_uart0_p)		= { "uart0_src", "uart0_frac", "xin24m" };
 PNAME(mux_uart1_p)		= { "uart1_src", "uart1_frac", "xin24m" };
 PNAME(mux_uart2_p)		= { "uart2_src", "uart2_frac", "xin24m" };
@@ -468,16 +466,9 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(24), 6, 10, DFLAGS,
 			RK2928_CLKGATE_CON(2), 8, GFLAGS),
 
-	GATE(0, "cpll_gpu", "cpll", 0,
-			RK2928_CLKGATE_CON(3), 13, GFLAGS),
-	GATE(0, "gpll_gpu", "gpll", 0,
-			RK2928_CLKGATE_CON(3), 13, GFLAGS),
-	GATE(0, "hdmiphy_gpu", "hdmiphy", 0,
-			RK2928_CLKGATE_CON(3), 13, GFLAGS),
-	GATE(0, "usb480m_gpu", "usb480m", 0,
+	COMPOSITE(0, "aclk_gpu_pre", mux_pll_src_4plls_p, 0,
+			RK2928_CLKSEL_CON(34), 5, 2, MFLAGS, 0, 5, DFLAGS,
 			RK2928_CLKGATE_CON(3), 13, GFLAGS),
-	COMPOSITE_NOGATE(0, "aclk_gpu_pre", mux_aclk_gpu_pre_p, 0,
-			RK2928_CLKSEL_CON(34), 5, 2, MFLAGS, 0, 5, DFLAGS),
 
 	COMPOSITE(SCLK_SPI0, "sclk_spi0", mux_pll_src_2plls_p, 0,
 			RK2928_CLKSEL_CON(25), 8, 1, MFLAGS, 0, 7, DFLAGS,
@@ -582,8 +573,8 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 	GATE(0, "pclk_peri_noc", "pclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(12), 2, GFLAGS),
 
 	/* PD_GPU */
-	GATE(ACLK_GPU, "aclk_gpu", "aclk_gpu_pre", 0, RK2928_CLKGATE_CON(13), 14, GFLAGS),
-	GATE(0, "aclk_gpu_noc", "aclk_gpu_pre", 0, RK2928_CLKGATE_CON(13), 15, GFLAGS),
+	GATE(ACLK_GPU, "aclk_gpu", "aclk_gpu_pre", 0, RK2928_CLKGATE_CON(7), 14, GFLAGS),
+	GATE(0, "aclk_gpu_noc", "aclk_gpu_pre", 0, RK2928_CLKGATE_CON(7), 15, GFLAGS),
 
 	/* PD_BUS */
 	GATE(0, "sclk_initmem_mbist", "aclk_cpu", 0, RK2928_CLKGATE_CON(8), 1, GFLAGS),
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
