Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 307EA10EAF9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:41:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pm531k0VtI2JwubKoX1HQKcslD/xygKLg+T+ExNAXAI=; b=CxYwRS7DWF1doj
	nTZ3ycFerAUe44hfXKYcbk0O0Gj9+kzREiPMboM8H3wYS0tdiRwOxouYuh9SjFtXmkWDLQCc8TWvS
	XTczmCvDX/0L5BxToJ3PJNfBV2qfbhvUICWfMFG4SgwB3jBopwS4EXnyRv5mPwKzQ1OfzMG3NjEms
	Ax1YNbXQLUrIdLb+K8oY9y+Hy/Qvei1wyMluEzqKwqaPekKbzxe1UoFXZt0jq41EM6arUFU689QNd
	NAcCLkjk1G6ZYw+fF/aFWvFfqO0+FAAMv6cVgoZWsevfvXrmNYslcWNsudSGAC4La9xSkE93JX67h
	G7A97/lK3lvDNIP0tCsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iblxI-00058S-7Z; Mon, 02 Dec 2019 13:41:36 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblx7-00053d-P2
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:41:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1575294081; x=1577886081;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8Ywufm8RU+0xOhYr5T5lulicdk5+6gM3bDqDT+VhHg4=;
 b=BEYW1k7yVdkoVTwG8vLGUJXY0+jRZs1ZwcuAuAlpyDUqF2X7fMpUnEnTSOKZ1VYF
 H6xTwIp5StXBZlWEH0tp4Ouxi6m++r2N7ZsPt84z+IilKccb7mOssYOmj+ynWTeq
 aTCYRmrPvsaJebmOLXW1xEDxgoyHX8XFj0dpnfu8dCE=;
X-AuditID: c39127d2-e0fff7000000408f-ac-5de514800f1c
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 35.3E.16527.08415ED5;
 Mon,  2 Dec 2019 14:41:20 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019120214411992-25353 ;
 Mon, 2 Dec 2019 14:41:19 +0100 
From: Jan Remmet <j.remmet@phytec.de>
To: s.hauer@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RESEND][PATCH] clk: imx6q: disable non functional divider
Date: Mon, 2 Dec 2019 14:41:19 +0100
Message-Id: <20191202134119.194625-1-j.remmet@phytec.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <1573818017-31949-1-git-send-email-j.remmet@phytec.de>
References: <1573818017-31949-1-git-send-email-j.remmet@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 02.12.2019 14:41:20,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.12.2019 14:41:20
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprALMWRmVeSWpSXmKPExsWyRoCBS7dB5GmswdnVlhabHl9jtfi7fROL
 xYst4g7MHptWdbJ5bF5S79H/1yCAOYrLJiU1J7MstUjfLoErY9PV9IJHAhUz515naWC8ydfF
 yMkhIWAicX/9NCYQW0hgK6PE9O3eXYxcQPZZRon5J16ygSTYBFQlDv6+xwhiiwiESuw98R2s
 QVjAWWLH/58sIDaLgIrE6cYF7F2MHBy8AhYSPXs1QUwJAXmJw4eyQCo4gapvrt7OCrHKSWJh
 dxc7iM0rIChxcuYTFpC1EgJXGCUmvtnIAnGbkMTpxWeZQWxmAW2JZQtfM09g5J+FpGcWktQC
 RqZVjEK5mcnZqUWZ2XoFGZUlqcl6KambGIGhdnii+qUdjH1zPA4xMnEwHmKU4GBWEuG9rvQw
 Vog3JbGyKrUoP76oNCe1+BCjNAeLkjjvBt6SMCGB9MSS1OzU1ILUIpgsEwenVAOj0FbXlM8r
 z+/OVdk99c+6j5PlhJPnJn7+UbWvbsmcd2+D/qx8c3+LwwJV5kv3uwWrbvTX/ZmiumRLWGHO
 Xb7PnKXOLstnnGWR6+vjsxS0Wtay6l3a/wNcCw+enNY91c5awKd6uyNH3OqoF7c87spNclJS
 cI2L8txhEXiJvfPso4behnWfliVxK7EUZyQaajEXFScCAB46GgUjAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_054126_046653_3267B461 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
