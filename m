Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3850313BE3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 12:12:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQy9LraqXl12jjupLhEh0Vjxi8iN00omXYTqnMHpdnM=; b=QjakiVYkXfYuo4
	2WLQanpAt4fk8clWY4hYzcq9wOmuDs1T8KbETeXFciH0NyE0QXVyad+OWLFCU1l3ynZ6rt9oP7NgR
	c92SoOuNQRhuo6kSwhaQCqrHlWv8nbA6I1BP24ytxJkFkQm/MMPHLaIoSd/SHhIs3LpQuU2Ap4V0m
	bkPklIuR0hd1MNRzFOnucow6pPIDMWNrHlZ+NB4Xqzzmh74Pi8zE8OUkHBbI/1dLor4C2PlGzgxOX
	lEueur+ldWs+zzFcg0DXVsFNYxEHVgHD2PC6Tbaxu4yMqKauaCum9JgmWuLxjrkSpnNAplel50RYf
	c4yUqxsdVII8Ty68wyRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgbD-0001eN-Hb; Wed, 15 Jan 2020 11:12:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgax-0001dd-RK
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 11:12:24 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 86BF2222C3;
 Wed, 15 Jan 2020 11:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579086739;
 bh=mIK/ag+1db4XNG06hr1nigpUOA3zRCdBgowcA09gjVk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FNAN5eCbDbrgPScaNuiTojnyK4Ho60SU4yw5Lgp90b+YZQ1qRHVo4HblRCAqN4tDD
 oj4s2Otc9+4ZE0fAoy2p4SpeIXuMMnNVzKYbcy9P8L2WhOJms1IFiEmApBeHBquKgv
 Jekn+otN2qyIM++kgvuuDbIAFgoU+C99Cohb/L8A=
Date: Wed, 15 Jan 2020 19:12:07 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH V2 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Message-ID: <20200115111205.GB29329@T480>
References: <1578640411-16991-1-git-send-email-peng.fan@nxp.com>
 <1578640411-16991-3-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB7023981770D458F6D1FB546FEE340@VI1PR04MB7023.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB7023981770D458F6D1FB546FEE340@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_031219_927859_6A01A58E 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 04:49:20PM +0000, Leonard Crestez wrote:
> On 10.01.2020 09:17, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> > 
> > Use imx8m_clk_hw_composite_core to simplify code.
> > 
> > Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >   drivers/clk/imx/clk-imx8mq.c | 19 +++++--------------
> >   1 file changed, 5 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> > index 4c0edca1a6d0..b031183ff427 100644
> > --- a/drivers/clk/imx/clk-imx8mq.c
> > +++ b/drivers/clk/imx/clk-imx8mq.c
> > @@ -403,22 +403,13 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
> >   
> >   	/* CORE */
> >   	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
> > -	hws[IMX8MQ_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base + 0x8080, 24, 3, imx8mq_arm_m4_sels, ARRAY_SIZE(imx8mq_arm_m4_sels));
> > -	hws[IMX8MQ_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base + 0x8100, 24, 3, imx8mq_vpu_sels, ARRAY_SIZE(imx8mq_vpu_sels));
> > -	hws[IMX8MQ_CLK_GPU_CORE_SRC] = imx_clk_hw_mux2("gpu_core_src", base + 0x8180, 24, 3,  imx8mq_gpu_core_sels, ARRAY_SIZE(imx8mq_gpu_core_sels));
> > -	hws[IMX8MQ_CLK_GPU_SHADER_SRC] = imx_clk_hw_mux2("gpu_shader_src", base + 0x8200, 24, 3, imx8mq_gpu_shader_sels,  ARRAY_SIZE(imx8mq_gpu_shader_sels));
> > -
> >   	hws[IMX8MQ_CLK_A53_CG] = imx_clk_hw_gate3_flags("arm_a53_cg", "arm_a53_src", base + 0x8000, 28, CLK_IS_CRITICAL);
> > -	hws[IMX8MQ_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg", "arm_m4_src", base + 0x8080, 28);
> > -	hws[IMX8MQ_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src", base + 0x8100, 28);
> > -	hws[IMX8MQ_CLK_GPU_CORE_CG] = imx_clk_hw_gate3("gpu_core_cg", "gpu_core_src", base + 0x8180, 28);
> > -	hws[IMX8MQ_CLK_GPU_SHADER_CG] = imx_clk_hw_gate3("gpu_shader_cg", "gpu_shader_src", base + 0x8200, 28);
> > -
> >   	hws[IMX8MQ_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
> > -	hws[IMX8MQ_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div", "arm_m4_cg", base + 0x8080, 0, 3);
> > -	hws[IMX8MQ_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div", "vpu_cg", base + 0x8100, 0, 3);
> > -	hws[IMX8MQ_CLK_GPU_CORE_DIV] = imx_clk_hw_divider2("gpu_core_div", "gpu_core_cg", base + 0x8180, 0, 3);
> > -	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = imx_clk_hw_divider2("gpu_shader_div", "gpu_shader_cg", base + 0x8200, 0, 3);
> > +
> > +	hws[IMX8MQ_CLK_M4_DIV] = imx8m_clk_hw_composite_core("arm_m4_div", imx8mq_arm_m4_sels, base + 0x8080);
> > +	hws[IMX8MQ_CLK_VPU_DIV] = imx8m_clk_hw_composite_core("vpu_div", imx8mq_vpu_sels, base + 0x8100);
> > +	hws[IMX8MQ_CLK_GPU_CORE_DIV] = imx8m_clk_hw_composite_core("gpu_core_div", imx8mq_gpu_core_sels, base + 0x8180);
> > +	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = imx8m_clk_hw_composite("gpu_shader_div", imx8mq_gpu_shader_sels, base + 0x8200);
> >   
> >   	/* BUS */
> >   	hws[IMX8MQ_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mq_main_axi_sels, base + 0x8800);
> 
> Collapsing _SRC _CG into _DIV is an useful simplification but it 
> technically breaks DT compatibility rules.
> 
> Inside imx8mq.dtsi there are clock assignments for 
> IMX8MQ_CLK_GPU_CORE_SRC and IMX8MQ_CLK_GPU_SHADER_SRC which no longer 
> exist so those assignments don't take effect.

We do not want to break existing DTBs for this case.  Patches dropped.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
