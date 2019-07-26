Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EC6760FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 10:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWtsWTSvghZKLHfyn4zhPmJIMN0G92Q6bmZcjeJH+5E=; b=g4gyik67KEmhgI
	Iyq088R9tvFkZ9b22qmEFFqk4HWAvAQQDguc9pe+5MyTEwtE2ECPzk9+QBNWUqUvYLyjKiOg9oIVh
	uTmaI8pkaS25I7OA7M5HP0BrG4JfsiNUJ7RtaMUR1kGi3ACOrjnYQywfmqqCK5vFK6NdemjL8oR88
	uuaByBbjevr06CwkiTYq/OlIMvAEottNIQbG4mILLZvPfprE3kDB2Gss6ukHSoiKrvr5jSm6jkDQA
	WGXangJLhU3NvhqLOiOguWrjKMXyY6SWfVJv5zQNWWCuBxl3ZO23ycCBPlJAOSO6ILx0HTVd5wFN2
	tAIPyJ1oqSLHA4pHMpvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvjz-0002rq-7o; Fri, 26 Jul 2019 08:38:15 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvji-0002r0-2t
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 08:37:59 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id ADF472009B1;
 Fri, 26 Jul 2019 10:37:53 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A04642002AD;
 Fri, 26 Jul 2019 10:37:53 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 822B1205E8;
 Fri, 26 Jul 2019 10:37:53 +0200 (CEST)
Date: Fri, 26 Jul 2019 11:37:52 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH] clk: imx: Remove unused function statement
Message-ID: <20190726083752.qjhzbqvsuyzcqtcg@fsr-ub1664-175>
References: <20190724062435.28074-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724062435.28074-1-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_013758_268935_591EF681 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: aisheng.dong@nxp.com, ping.bai@nxp.com, sboyd@kernel.org,
 shawnguo@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-07-24 14:24:35, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> imx_register_uart_clocks_hws() function is NOT implemented
> at all, remove it.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index 9995f2a..f7a389a 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -10,7 +10,6 @@ extern spinlock_t imx_ccm_lock;
>  void imx_check_clocks(struct clk *clks[], unsigned int count);
>  void imx_check_clk_hws(struct clk_hw *clks[], unsigned int count);
>  void imx_register_uart_clocks(struct clk ** const clks[]);
> -void imx_register_uart_clocks_hws(struct clk_hw ** const hws[]);
>  void imx_mmdc_mask_handshake(void __iomem *ccm_base, unsigned int chn);
>  void imx_unregister_clocks(struct clk *clks[], unsigned int count);
>  
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
