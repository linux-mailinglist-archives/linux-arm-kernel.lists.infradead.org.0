Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF6E173430
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 10:36:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLOEMbZvVyXsf6X3wZlNRcwxIToFgADtVh1djgFIkAo=; b=BeEUgM2O0U8VNi
	DQqQDj7Lqa8E29AR/xNV3NtzBcSQP3pLL4XO+QqJuHO5DI+en0gGY+3ddPn84ANYMvpycpqmxulgT
	eF6oZe81WiB4LRbHi0lvKk4iooDD3DsfSppdJCtxyq/bOwGIiKIqJd+ipwKF0ZCixXG4YNIkEuRlg
	oX8ReS5P6Wq9uxTwURQTEwktNAifHnlIXkC+7mKActhf5Gw3ldtmXQWPTQB9aHpBHZPu2npTM5jUa
	OWyd86QqrUiBwquJaBJFbHdg3KpveoQ9Fn+sxbTO/F2h+15gfggQA7RBVauFbbUw/CGZsFokT4HnM
	dLLhUOhx2nqb2sKBSQcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7c4X-0000Pb-3x; Fri, 28 Feb 2020 09:36:41 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7c4K-0000NJ-IG
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 09:36:30 +0000
Received: by mail-wr1-x42a.google.com with SMTP id x7so2207940wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 01:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gPAGlkcQCf/Lm8yRgf2pxUcWg+Lei3LJ/oeCwqIf2XI=;
 b=EhG0ADsLPbPrgMAUt6aaWTKjj+tB1tSOzmQhcyapn2EcxnlwwZOEcIdu+F5SNSrNhM
 AmzjWwkWd/eL10qYcDD5BU/eX0NAQJ9dRJeVOvtukwoHyBp9FL4GhkG1GwTI6PT5mdP1
 yHuWvMbc1nt6rMm322IrAYOoHDkZanu600NurmUxaybZeZ37SEmMP9T4c19tBaomgf2B
 7QG5PP3cNnT4Hmu0dL1mSD6EJEuVjj5Ox4cMCF/eC1tCGy79WVsy2fiqAGoaPlcbzIqx
 RzJ0xS9dtgp8a7khGX3iaswev4kYEdnLr4K9dpK53pjxb9BpI/wTxrFDn9gO2GNUTiTP
 Wljg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gPAGlkcQCf/Lm8yRgf2pxUcWg+Lei3LJ/oeCwqIf2XI=;
 b=M8YLbeCUjVpDtMOJN0Q2UpsKa0yndPgmOP1iWVPz21fFwlmgRZNIIxSyi7kUsJjyoE
 yLVQ6U5fraVLfiUVQXJeCRm/L0mf0fPSToDZd5F64XqxuZYfGOAChQbRhHIOw1TYo8WO
 8rfnaVxV8e0wx/o2DqSMNrmJ0ydalWv2Swc91/ZdbEimRA83AEzm0HJVzwI65W85xvB+
 qNjm1fD/iZ0X5mcst015e8m0uWKkSl/KGGqDqom6grwjJndjUZAFozIhtUHFhi6feJpl
 W7KCG+dw1IxpzY2FGLZMf9/Y25H6P/uIXwMKly0DAnOUmNbfE3ec50uCDIjTN0/sKofZ
 IdsQ==
X-Gm-Message-State: APjAAAV3KqFGdJMyxVqIupkvGV4HupHIWspFYNHxjGHNTE7+atm7Pu0R
 71bW8ZVs+vj1uSTsQSTJgV7iN33pkV6prg==
X-Google-Smtp-Source: APXvYqyHR5qGmd+zCJ6OKsvXf4wTw71OXAIBT3QCYzmU4xUr3hIBivc2F1fI3/Zp7Mf8w9iCyu7tRA==
X-Received: by 2002:a5d:53d2:: with SMTP id a18mr3900719wrw.49.1582882582728; 
 Fri, 28 Feb 2020 01:36:22 -0800 (PST)
Received: from localhost (dslb-002-207-138-002.002.207.pools.vodafone-ip.de.
 [2.207.138.2])
 by smtp.gmail.com with ESMTPSA id z14sm8420219wrg.76.2020.02.28.01.36.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Feb 2020 01:36:21 -0800 (PST)
Date: Fri, 28 Feb 2020 10:14:29 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: RFC: imx8qm: imx-scu-clk: probe of clk failed
Message-ID: <20200228091429.GE16310@optiplex>
References: <20200227125743.GC16310@optiplex> <20200227153110.GD16310@optiplex>
 <DB3PR0402MB3916849150B4778E117B6F86F5E80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916849150B4778E117B6F86F5E80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_013628_656304_20E986F9 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oliver.graute[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/02/20, Anson Huang wrote:
> Hi, Oliver
> 
> > Subject: Re: RFC: imx8qm: imx-scu-clk: probe of clk failed
> > 
> > On 27/02/20, Oliver Graute wrote:
> > > Hello Aisheng,
> > > Hello Anson,
> > >
> > > I get the following imx-scu errors when using Linux version
> > > 5.6.0-rc1-next-20200214 with scfw Build 3353, Commit 494c97f3
> > >
> > > It seems that important clocks are off somehow and that lpspi isn't
> > > working because of that. What is the best way to debug such issues?
> > >
> > > [    1.103799] imx-scu scu: NXP i.MX SCU Initialized
> > > [    1.111383] a35_clk: failed to get clock rate -22
> > 
> > After some deeper digging I saw that the reason for "a35_clk: failed" is an
> > IMX_SC_ERR_PARM = 3. Because he trys to get the resource SC_R_A35 which
> > is only available on imx8qxp and not on imx8qm. No clue why he try that
> > instead of SC_R_A53.
> 
> You are running on i.MX8QM board, right? Is it because the A35/A53/A72 clocks
> are registered on same clock driver, so that clock core will calculate their rate during
> clock tree setup? But even A35 clock get rate failed on i.MX8QM, I don't see it will
> impact lpspi.

yes I'am using a i.MX8QM based board. Which clocks are needed to get
lpspi working on imx8qm?
> 
> i.MX8QM is already supported on our internal v5.4 tree, there are some
> changes in clk-scu.c, I pasted some code piece as below, maybe you can
> compare the difference and have a try?

ok I use your proposed code now. A struct clk_scu_pi_ops is missing for
me here. Also I added this:

--- a/include/dt-bindings/clock/imx8-clock.h
+++ b/include/dt-bindings/clock/imx8-clock.h
@@ -131,7 +131,9 @@
 #define IMX_ADMA_PWM_CLK                               188
 #define IMX_ADMA_LCD_CLK                               189

-#define IMX_SCU_CLK_END                                        190
+#define IMX_A53_CLK                                    190
+#define IMX_A72_CLK                                    191
+#define IMX_SCU_CLK_END                                        192

--- a/drivers/clk/imx/clk-imx8qxp.c
+++ b/drivers/clk/imx/clk-imx8qxp.c
@@ -60,6 +68,8 @@ static int imx8qxp_clk_probe(struct platform_device *pdev)

        /* ARM core */
        clks[IMX_A35_CLK]               = imx_clk_scu("a35_clk", IMX_SC_R_A35, IMX_SC_PM_CLK_CPU, clk_cells);
+       clks[IMX_A53_CLK]               = imx_clk_scu("a53_clk", IMX_SC_R_A53, IMX_SC_PM_CLK_CPU, clk_cells);
+       clks[IMX_A72_CLK]               = imx_clk_scu("a72_clk", IMX_SC_R_A72, IMX_SC_PM_CLK_CPU, clk_cells);


Is it correct to use the imx8qxp clock probing here?

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
