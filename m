Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A547710547F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 15:33:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6AhzEgbhdgU/67s3aucj9Sj4Wn/0mLvMgX4dwFQSOo=; b=u5P9nOLMdZyd3M
	pWekoo8uorXR6lQsuLItE2U7eB5sohDUl8rpjU3jid+1/4JtB82GEjJyZl7uBN96U2SeWQy+RJuvY
	U5z15ScWDozRXZkNuBsV0Vuaw/MLS4q/v7d3r/Q5T2g5X4oFWiOp22IrHjyGB5ybyxc39ciWxP96R
	7I/uiuh6UZtIu+Cf/r0Gr0f131bYgJWjKyJbs+JL5mrxKLgKNRkSirseohClJ+rTrMPDMt2oNhnuC
	sQkp1rGwkdAHMC0XH3TwWqIH4Kd6RUpwWfoCyuK1EeM8bASZyguT7Qje8zgCQx0TMntHk8VN7G7p/
	FXB007L8wmnx2Z+5uRzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnWl-00012X-UI; Thu, 21 Nov 2019 14:33:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnWd-00011y-0K
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 14:33:40 +0000
Received: from litschi.hi.pengutronix.de
 ([2001:67c:670:100:feaa:14ff:fe6a:8db5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <m.tretter@pengutronix.de>)
 id 1iXnWH-00030p-Ep; Thu, 21 Nov 2019 15:33:17 +0100
Date: Thu, 21 Nov 2019 15:33:16 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Rajan Vaja <rajan.vaja@xilinx.com>
Subject: Re: [PATCH 4/7] clk: zynqmp: Add support for get max divider
Message-ID: <20191121153316.39e551e5@litschi.hi.pengutronix.de>
In-Reply-To: <1573564580-9006-5-git-send-email-rajan.vaja@xilinx.com>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
 <1573564580-9006-5-git-send-email-rajan.vaja@xilinx.com>
Organization: Pengutronix
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:feaa:14ff:fe6a:8db5
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_063339_045677_2AE7DE80 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, tejas.patel@xilinx.com, gustavo@embeddedor.com,
 sboyd@kernel.org, nava.manne@xilinx.com, mturquette@baylibre.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 jolly.shah@xilinx.com, m.tretter@pengutronix.de, linux-clk@vger.kernel.org,
 dan.carpenter@oracle.com, ravi.patel@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 05:16:17 -0800, Rajan Vaja wrote:
> To achieve best possible rate, maximum limit of divider is required
> while computation. Get maximum supported divisor from firmware. To
> maintain backward compatibility assign maximum possible value(0xFFFF)
> if query for max divisor is not successful.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---
>  drivers/clk/zynqmp/divider.c         | 19 +++++++++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h |  1 +
>  2 files changed, 20 insertions(+)
> 
> diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
> index d8f5b70d..b79cd45 100644
> --- a/drivers/clk/zynqmp/divider.c
> +++ b/drivers/clk/zynqmp/divider.c
> @@ -41,6 +41,7 @@ struct zynqmp_clk_divider {
>  	bool is_frac;
>  	u32 clk_id;
>  	u32 div_type;
> +	u16 max_div;
>  };
>  
>  static inline int zynqmp_divider_get_val(unsigned long parent_rate,
> @@ -195,6 +196,9 @@ struct clk_hw *zynqmp_clk_register_divider(const char *name,
>  	struct clk_hw *hw;
>  	struct clk_init_data init;
>  	int ret;
> +	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
> +	struct zynqmp_pm_query_data qdata = {0};
> +	u32 ret_payload[PAYLOAD_ARG_CNT];
>  
>  	/* allocate the divider */
>  	div = kzalloc(sizeof(*div), GFP_KERNEL);
> @@ -215,6 +219,21 @@ struct clk_hw *zynqmp_clk_register_divider(const char *name,
>  	div->clk_id = clk_id;
>  	div->div_type = nodes->type;
>  
> +	/*
> +	 * To achieve best possible rate, maximum limit of divider is required
> +	 * while computation. Get maximum supported divisor from firmware. To
> +	 * maintain backward compatibility assign maximum possible value(0xFFFF)
> +	 * if query for max divisor is not successful.
> +	 */
> +	qdata.qid = PM_QID_CLOCK_GET_MAX_DIVISOR;
> +	qdata.arg1 = clk_id;
> +	qdata.arg2 = nodes->type;
> +	ret = eemi_ops->query_data(qdata, ret_payload);
> +	if (ret)
> +		div->max_div = U16_MAX;
> +	else
> +		div->max_div = ret_payload[1];

Add a helper function for retrieving the max divisor. The clk_register
function should really not be mixed with code to access the firmware.

Michael

> +
>  	hw = &div->hw;
>  	ret = clk_hw_register(NULL, hw);
>  	if (ret) {
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index f019d1c..f0d4558 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -114,6 +114,7 @@ enum pm_query_id {
>  	PM_QID_CLOCK_GET_PARENTS,
>  	PM_QID_CLOCK_GET_ATTRIBUTES,
>  	PM_QID_CLOCK_GET_NUM_CLOCKS = 12,
> +	PM_QID_CLOCK_GET_MAX_DIVISOR,
>  };
>  
>  enum zynqmp_pm_reset_action {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
