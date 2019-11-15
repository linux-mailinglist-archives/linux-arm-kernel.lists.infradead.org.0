Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDDFFDC6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 12:40:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r37DzPZ6seEdD3qSzaL6Iw+wpRgDIzW3WK3obeylZUU=; b=gYpWnnSOTs6rcx
	Rdid+1P113HShrRAjchnFxDC2MNpLRHtU5duXZ8Q6zqivSSyAyCdKT2IrwSW7g04AVWOaKLUxmOCY
	jxPx/7b8zamvEx4Tn2NY/kstUwkMEAmQHgjScJGyN4vbiHnfE8PXMtHGhfE1k9EQyx1wZ5k8KhJ8D
	65Ev9zDkhi9oMMJnK0lRoxXW092ue8wMOzNAbmWGyyg7E1nbHjqnIDv+ZUkR6awFXuPJ1jqHsq3eP
	afciGSiv6mzt2SiLgJhG+FeNXxpLR2ZCkItYswDlpek7uqEJGUkg3E/JkSDCqlV9VE8X978BNVGMj
	9D6zZOtKtQ3c6q9mmlwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZxo-0000AO-A2; Fri, 15 Nov 2019 11:40:32 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZxg-00009r-KD
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 11:40:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1573818018; x=1576410018;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KakJHbAo+JUOyaQrEeQg+Mxh5KhO275Wzk2RBgpf2KU=;
 b=WlHou91HM5wi7qShUqALkhhRwNaTq5XvwZxRxLW8C//T+1kGMsRVG82dHUsdk7ql
 LYWt09qeTOifniAzKBOacBMZ4w8LqO9GSO4vrsas/K5Mn0oAifQlxEtm8MBh0ZxU
 fIu3r+vRyO8UQhrZ0G/wSe5HL1FvfgWFqkTqComFESM=;
X-AuditID: c39127d2-df9ff7000000408f-2a-5dce8ea29cd4
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id A3.66.16527.2AE8ECD5;
 Fri, 15 Nov 2019 12:40:18 +0100 (CET)
Received: from lws-weitzel2.phytec.de ([172.16.20.165])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019111512401824-73483 ;
 Fri, 15 Nov 2019 12:40:18 +0100 
From: Jan Remmet <j.remmet@phytec.de>
To: s.hauer@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] clk: imx6q: disable non functional divider
Date: Fri, 15 Nov 2019 12:40:17 +0100
Message-Id: <1573818017-31949-1-git-send-email-j.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 15.11.2019 12:40:18,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 15.11.2019 12:40:18, Serialize complete at 15.11.2019 12:40:18
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNJMWRmVeSWpSXmKPExsWyRoCBS3dR37lYg5NXuSw2Pb7GavF3+yYW
 ixdbxB2YPTat6mTz2Lyk3qP/r0EAcxSXTUpqTmZZapG+XQJXxqlp5xgLjvFVTDn4hqmB8QpP
 FyMnh4SAicTEg+/Zuxi5OIQEtjJKfLlyghnCucQoMfn4EVaQKjYBVYmDv+8xgtgiAqESe098
 ZwKxhQWsJaa/WwxWwwJUc2TVWiCbg4NXwEli9XJWiAVyEjfPdYLNlBBoZJL4uHURC0RCSOL0
 4rPMExi5FzAyrGIUys1Mzk4tyszWK8ioLElN1ktJ3cQI9PDhieqXdjD2zfE4xMjEwXiIUYKD
 WUmEd8rbM7FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeTfwloQJCaQnlqRmp6YWpBbBZJk4OKUa
 GPniP6hve58VY/XxRY7m5yl8y+fJa0+zcd50vOtnAsvayKshtR/3bI8zK4truxv7+7pdk2d7
 1Zs3Sv7f9Tc9VV+152h8ySr2rRsS+xeKBZZ1X4iIWlvx34VpE/eCJJ6LLoKbLK5V8nxa/JxX
 5nfhXC5BF+/OQ3ZRjzac/7WDs9eK0f7ln9JiCyWW4oxEQy3mouJEACS0niveAQAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_034024_980257_8B9851E6 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The /2 divider between pll4_audio_div and pll4_post_div is not working
on imx6q. The frequency is not halved as reported by the clock tree
and measured on clko.
In the technical reference manual the divider was removed in revision 4.
It's also not listed in the imx6qp manual.

imx6dl manual mentions a divider for PLL4 and the according register
description. So keep the divider here.

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
 drivers/clk/imx/clk-imx6q.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx6q.c b/drivers/clk/imx/clk-imx6q.c
index 60f2de851f39..ba33c79158de 100644
--- a/drivers/clk/imx/clk-imx6q.c
+++ b/drivers/clk/imx/clk-imx6q.c
@@ -598,7 +598,10 @@ static void __init imx6q_clocks_init(struct device_node *ccm_node)
 	}
 
 	hws[IMX6QDL_CLK_PLL4_POST_DIV] = clk_hw_register_divider_table(NULL, "pll4_post_div", "pll4_audio", CLK_SET_RATE_PARENT, base + 0x70, 19, 2, 0, post_div_table, &imx_ccm_lock);
-	hws[IMX6QDL_CLK_PLL4_AUDIO_DIV] = clk_hw_register_divider(NULL, "pll4_audio_div", "pll4_post_div", CLK_SET_RATE_PARENT, base + 0x170, 15, 1, 0, &imx_ccm_lock);
+	if (clk_on_imx6q() || clk_on_imx6qp())
+		hws[IMX6QDL_CLK_PLL4_AUDIO_DIV] = imx_clk_hw_fixed_factor("pll4_audio_div", "pll4_post_div", 1, 1);
+	else
+		hws[IMX6QDL_CLK_PLL4_AUDIO_DIV] = clk_hw_register_divider(NULL, "pll4_audio_div", "pll4_post_div", CLK_SET_RATE_PARENT, base + 0x170, 15, 1, 0, &imx_ccm_lock);
 	hws[IMX6QDL_CLK_PLL5_POST_DIV] = clk_hw_register_divider_table(NULL, "pll5_post_div", "pll5_video", CLK_SET_RATE_PARENT, base + 0xa0, 19, 2, 0, post_div_table, &imx_ccm_lock);
 	hws[IMX6QDL_CLK_PLL5_VIDEO_DIV] = clk_hw_register_divider_table(NULL, "pll5_video_div", "pll5_post_div", CLK_SET_RATE_PARENT, base + 0x170, 30, 2, 0, video_div_table, &imx_ccm_lock);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
