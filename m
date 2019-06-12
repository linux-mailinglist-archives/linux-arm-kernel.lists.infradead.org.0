Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35978427CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4/ATsdPb1+/vjLuY7Q83+O9Zp9EleHeyBED9sqTJclw=; b=OmF
	BYlhvbz5onm+5MT2UCuT4wX0riqDAFpBkUuFZ9tazEFKXttYub8KHcErHlNinHBoswRZF9z+ieXdN
	+8DmicAXCPFfo0Nt0bH49rihk4xsO+rFx0bycaHKvoN6QLhCt0yMkY9sAwv2pDs0Jpkf0AxBzHd1W
	7vVxBLv604+vJdpOZDR35tiTLVl30jCFyUH0EB36J1EIEThn3Y+8t4o3bsFPecQC/6fFp8J/DjVAH
	ORS7bLYbsfp5xhZE7Bd9i8jJJ2TG17aPw9Ey5nGzRK3abvSI8CrEeCecC1fqy/+fbiOrqPKKXkY61
	nxXzwfTAxzoFwmPKy/VSXXgvjjulk7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3SW-0000YX-GE; Wed, 12 Jun 2019 13:38:36 +0000
Received: from outgoing2.flk.host-h.net ([188.40.0.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3SL-0000Wz-Qp; Wed, 12 Jun 2019 13:38:28 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam3-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hb3SA-0002cQ-MP; Wed, 12 Jun 2019 15:38:15 +0200
Received: from [130.255.73.16] (helo=v01.28459.vpscontrol.net)
 by www31.flk1.host-h.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hb3S9-0008Fs-BR; Wed, 12 Jun 2019 15:38:13 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] clk: rockchip: select hdmiphy clock source for rk3228
Date: Wed, 12 Jun 2019 13:33:43 +0000
Message-Id: <20190612133343.28309-1-justin.swartz@risingedge.co.za>
X-Mailer: git-send-email 2.11.0
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear (ClamAV 0.100.3/25478/Wed Jun 12 10:14:54 2019)
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00816725645638)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0Q9DGisTdy29Heef28Cu3sipSDasLI4SayDByyq9LIhVhdOhMLyqSpQF
 5/Hc0ZQ9uUTNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0h/RxVysY5Ye6+GGw0VqdJD7ren9RtRNyYim5e3GD8LGfWrcbYvelpuN/Pk
 qhBpvAyWwieZyauFYqHkIbFa+ipFJdVl2Qo16OdG/SgJyrKdw0Znvotuy3L4aSJjqFExmwGwvf6h
 PQx0fYKjNC9VXDo4KyWWo0k/XI0fGv8bNm7IfazUKrTRmPfW13HBdTouyUQiTqTLnMPwSR2klzqa
 C1hRfn6HuUe9L0a5vwf8PHac6dlnibl3vcBqVmvQB4A18af9beWOg5a9y6QIDD3Rzcr8mH6eQvWp
 DWTULXV1jJ5bfceEJeNruLKdflVX7oFNsdHVhnpudkCyIg6Nob+f0OfCg2lBMt3xu9nbye2CdJLN
 jSo1M+TSg3TNDI3/M5s9/ot3ko3rrae7IifWc6pL546YUVQwaYLh3di89W/ji5iahyCgJgyv93tC
 61cbiLYl3RCqADG/Ryndzp4OfbK7c6EqHwlqvaI+zok/BsKQK4gft4+8sY8CNaDDoRMm0CGce/fp
 WUXurEbGCiZ0ePvZjCuJdbYb9IXfYGRpVS/0hA4Mwkg/wxsjmSXwdCAtc5U5IMGqr3wBwEeX6Ai5
 5FPRpzhbYqsuNEW45+y/2kiUpWy9c957+6R4kroQiAThpzOdFqFvbdRuq0FZjQOwDKXnhaC6dkwF
 9ybSMhHO+IPM0C985aNe1vwE2plJLdOGZ2rsAWflnmUXwJv1R9bnj+xoJG4VhUotTJ0/e5GmrorL
 FK/ZMFLi1pbAdLCagrvjp/Q1JFXRjdK3JtbOY4V5u4SqNrbdxyGLEIoLEuuC4P/fyEEgA3CnflZn
 bjDB2+RGRgaXth2/9YEbMsGSn6owqJN0kS7MUpAEhFoAxikOdx3ALFboD0vMokt+4lO8Qp33tUy6
 u+yjs2RdT0IB6AsIr4ufP+vb+wzRyy9zrSTy9lnigQ7EuDwJWw42swm4bO6gacpMpzJ5RNWFoIkg
 vLC7uMZSLKkLPlzqsPnNmrTFfBI+gCHkFgyh9jAE9PwtDurXCCybWAnihjA708Lg3Y2gXyaf+rIt
 vvthbyiMZOAfvJjwL84MO4Vozqbzv/NmqBexmg1oMlu3UCyNNO7qENlLqkRemjF1A1q3g0ZrubFa
 n/xi+AGXOIO97ttnHrPmGyC6rR21+9c=
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_063825_871461_D935FDD4 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.40.0.84 listed in list.dnswl.org]
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

Unless explictly configured by a bootloader, the hdmiphy clock parent
defaults to the xin24m clock source. This configuration does not yield
any HDMI video output, so let hdmiphy_phy (the HDMI PHY output clock)
be the parent instead.

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 drivers/clk/rockchip/clk-rk3228.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index 1c5267d134ee..00a195e6c014 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -699,6 +699,9 @@ static void __init rk3228_clk_init(struct device_node *np)
 		return;
 	}
 
+	/* Let hdmiphy_phy be the parent of the hdmiphy clock. */
+	writel_relaxed(HIWORD_UPDATE(0, 1, 13), reg_base + RK2928_MISC_CON);
+
 	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip clk init failed\n", __func__);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
