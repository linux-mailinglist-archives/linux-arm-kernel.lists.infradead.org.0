Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9568620742
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 14:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Tq3bk8Z6/e1VW09Nu7PXEvSiHxH1qanZw3xJ8Uu6XCY=; b=t1b
	W/YzmSXDd3Ci8lyaIkLVQK+J8qikHmWqmlY/SYmT0dMeSeCzRVv/ppUYr+lLmyurTEa7tDYLOvl0e
	ECu47O0GgSIe2RwdoAT/3lEEPfdGUl1J1hmqQfZnhRftEstdwXyWsFRxI+GSFBt7JcMWvtVnHEr9R
	jhOxastEAywe5hmFeIVZLPBIR5M23KbNcYzi9d7J8WdPwUzD+bW6YgpfbaazWfkxEb7dZejMxkGfA
	f8T9rKiBRpab36ZjHSTnT2/i9Q/sh9Icf1rZa2zgV58H9mZQi78ukdlXLvXgSxtiLStG6wpKeXt3P
	Pzrr9AIiGX06yt5u26hmKM0DHiQtpfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRFoy-0001hh-Vq; Thu, 16 May 2019 12:49:17 +0000
Received: from outgoing14.flk.host-h.net ([197.242.87.48])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRFoo-0001gq-Lw; Thu, 16 May 2019 12:49:09 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam4-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hRFoc-0008Ba-7W; Thu, 16 May 2019 14:48:55 +0200
Received: from [130.255.73.16] (helo=v01.28459.vpscontrol.net)
 by www31.flk1.host-h.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hRFoX-000550-Js; Thu, 16 May 2019 14:48:49 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] drivers/clk/rockchip/clk-rk3228.c: add 1.464GHz clock rate
Date: Thu, 16 May 2019 12:44:36 +0000
Message-Id: <20190516124437.4906-1-justin.swartz@risingedge.co.za>
X-Mailer: git-send-email 2.11.0
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear (ClamAV 0.100.3/25451/Thu May 16 09:59:51 2019)
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00896517575494)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0fbJ1LThpDP3PaEa+mzHFASpSDasLI4SayDByyq9LIhVyO1UfNdFVadD
 4Wekg4mMmETNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0h/RxVysY5Ye6+GGw0VqdJD7ren9RtRNyYim5e3GD8LGfWrcbYvelpuN/Pk
 qhBpvAyWwieZyauFYqHkIbFa+ipFJdVl2Qo16OdG/SgJyrKdw0Znvotuy3L4aSJjqFExmwGwvf6h
 PQx0fYKjNC9VXDo4KyWWo0k/XI0fGv8bNm7IfazUKrTRmPfW13HBdTouyUQiTqTLnMPwSR2klzqa
 C1hRfn6HuUe9L0a5vwf8PHac6dlnibl3vcBqVmvQB4A18afqaqkE9y2tELrbSfbpenEpmH6eQvWp
 DWTULXV1jJ5bfceEJeNruLKdflVX7oFNsdF5bKhCA9a8IVosfxGBTbadg2lBMt3xu9nbye2CdJLN
 jSo1M+TSg3TNDI3/M5s9/ot3ko3rrae7IifWc6pL546YUVQwaYLh3di89W/ji5iahyCgJgyv93tC
 61cbiLYl3RCqADG/Ryndzp4OfbK7c6EqHwlqvaI+zok/BsKQK4gft4+8sY8CNaDDoRMm0CGce/fp
 WUXurEbGCiZ0ePvZjCuJdbYb9IXfYGRpVS/0hA4Mwkg/wxsjmSXwdCAtc5U5IMGqr3wBwEeX6Ai5
 5FPRpzhbYqsuNEW45+y/2kiUpWy9c957+6R4kroQiAThpzOdFqFvbdRuq0FZjQOwDKXnhaC6dkwF
 9ybSMhHO+IPM0C985aNe1vwE2plJLdOGZ2rsAWflnmUXwJv1R9bnj+xoJG4VbeMz329ug19D+AX+
 zbkDEwtZIltLJVY6CFz3MnUtwYrRjdK3JtbOY4V5u4SqNrbdxyGLEIoLEuuC4P/fyEEgA3CnflZn
 bjDB2+RGRgaXth2/9YEbMsGSn6owqJN0kS7MUpAEhFoAxikOdx3ALFboD0vMokt+4lO8Qp33tUy6
 u+ztjUSMb/XuWI+kpQSOtXwGn8ttztpqwHsOJJ90zNCwBTwJWw42swm4bO6gacpMpzJ5RNWFoIkg
 vLC7uMZSLKkLPlzqsPnNmrTFfBI+gCHkFgyh9jAE9PwtDurXCCybWAnihjA708Lg3Y2gXyaf+rIt
 vvthbyiMZOAfvJjwL84MO4Vozqbzv/NmqBexmg1oMlu3UCyNNO7qENlLqkRemjF1A1q3g0ZrubFa
 n/xi+AGXOIO97ttnHrPmGyC6rR21+9c=
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_054906_719546_7FAFB83A 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [197.242.87.48 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Add missing 1.464GHz clock rate to rk3228_cpuclk_rates[]

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 drivers/clk/rockchip/clk-rk3228.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index 7af48184b..b85730565 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -109,6 +109,7 @@ static struct rockchip_cpuclk_rate_table rk3228_cpuclk_rates[] __initdata = {
 	RK3228_CPUCLK_RATE(1608000000, 1, 7),
 	RK3228_CPUCLK_RATE(1512000000, 1, 7),
 	RK3228_CPUCLK_RATE(1488000000, 1, 5),
+	RK3228_CPUCLK_RATE(1464000000, 1, 5),
 	RK3228_CPUCLK_RATE(1416000000, 1, 5),
 	RK3228_CPUCLK_RATE(1392000000, 1, 5),
 	RK3228_CPUCLK_RATE(1296000000, 1, 5),
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
