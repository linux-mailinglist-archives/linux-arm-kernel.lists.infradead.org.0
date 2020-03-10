Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759EE17EF64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:42:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OjwFl837V/yGdGIbUJ+kzd5qahySAF9rY31Q9LpulRE=; b=DGZAOMVlaZsDTP
	fV0ZnUyPE7E+8xq/ipV2/7BNe1LWgVUBA2GGjYMQAG4nGYJXdKUPp4CB4BHTR5rH3kLShbvpdlF1a
	kqXbTSdqN9HgW+1K2xUwio4JDtEvNn6oy89FmXDZG0vk5vSG8D8ZXP+z+DBcM5vayQ/p6XJgbmcSA
	OrBs2zKH4Nr3M5a9a89NtjszWV9XoySBZfmbuyg17MX9ApumXH4nBeGMEvBdafxTWsPpRWQL8Jpu3
	UZ+OpvT2dzN6f6aaVN2Y5g1pYurXtQGmERaO4HG5n9vroTLlYDSDyvHQZ4aok7IqhsRzPZowvL/fi
	I3E/7uIFt7MLgZXMaEUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVmr-0000YV-Iq; Tue, 10 Mar 2020 03:42:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVmk-0000Y4-Kk
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:42:27 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8022224649;
 Tue, 10 Mar 2020 03:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583811746;
 bh=9t6PQTF4yZhBSTuBT59aCA5e/8OFUhyc/DijBpBFCMQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ELC4laBnmWyQWgtZJRyxXX+wvcGYrYptReol9dy2C3ggnAg2cY9PZ1OrFLqsto5O9
 tn20frD/Hqh27tEbDmU+/a+bYw3QDHLxoSQlmL0qZcLO+5zejMPu1kyug5rZmeiFYV
 yiALkYFxuWN8B0V8zbnTLxDUbpJw0kg9IFB65Lfk=
Date: Tue, 10 Mar 2020 11:42:15 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 2/7] clk: imx8: Add SCU and LPCG clocks for I2C in CM40 SS
Message-ID: <20200310034214.GB15729@dragon>
References: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
 <1581909561-12058-3-git-send-email-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581909561-12058-3-git-send-email-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_204226_705285_88A9EA1B 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 fugang.duan@nxp.com, Anson.Huang@nxp.com, devicetree@vger.kernel.org,
 sboyd@kernel.org, daniel.baluta@nxp.com, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 11:19:16AM +0800, Joakim Zhang wrote:
> Add SCU and LPCG clocks for I2C in CM40 SS.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  include/dt-bindings/clock/imx8-clock.h | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)

I think it can be merged into patch #4.

Shawn

> 
> diff --git a/include/dt-bindings/clock/imx8-clock.h b/include/dt-bindings/clock/imx8-clock.h
> index 673a8c662340..84a442be700f 100644
> --- a/include/dt-bindings/clock/imx8-clock.h
> +++ b/include/dt-bindings/clock/imx8-clock.h
> @@ -131,7 +131,12 @@
>  #define IMX_ADMA_PWM_CLK				188
>  #define IMX_ADMA_LCD_CLK				189
>  
> -#define IMX_SCU_CLK_END					190
> +/* CM40 SS */
> +#define IMX_CM40_IPG_CLK				200
> +#define IMX_CM40_I2C_CLK				205
> +
> +#define IMX_SCU_CLK_END					220
> +
>  
>  /* LPCG clocks */
>  
> @@ -290,4 +295,10 @@
>  
>  #define IMX_ADMA_LPCG_CLK_END				45
>  
> +/* CM40 SS LPCG */
> +#define IMX_CM40_LPCG_I2C_IPG_CLK			0
> +#define IMX_CM40_LPCG_I2C_CLK				1
> +
> +#define IMX_CM40_LPCG_CLK_END				2
> +
>  #endif /* __DT_BINDINGS_CLOCK_IMX_H */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
