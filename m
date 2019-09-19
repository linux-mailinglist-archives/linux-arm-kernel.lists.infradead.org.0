Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5050B8523
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 00:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bvk0X4l2fyCkUJ4SRAOPrFTfQPdV2F2AJOp0Ykm3mB8=; b=A2wbJUjuJZaaTw
	98ieiMbzc6cXiz3RKyy/CzNVQWg4BxXsyiRcNPrz30X0x7L1H1f+E/t9A7pMdxFXijyrN5n0C+ZB0
	o3oOcRGIwkXi9C3Jotpmw6jm3rQ341qT6KrenuHByDqs5biCMK5aW/mPDwDzLe2J99S0qcTDzn1Qo
	w7N/WoE8wGa/k/xCCWubqV/5bVnFsIelnx+bcgAElsx5ILbY9EaduZR0QKTsiFs2iiJXM6TLujEpc
	ouACP+1oF84w0W3aOcSEwVJKWKs6ly7uerNyY6th5xl7iZq3wSsb1N6rXiOM4TBl60aBZ0maZQbXm
	0JJd7/ml+Zct+VVF7KXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB4ka-0000yV-FO; Thu, 19 Sep 2019 22:18:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB4kK-0000xR-Ux
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 22:17:54 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 853A921907;
 Thu, 19 Sep 2019 22:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568931470;
 bh=MqV2wpDomJRKYrDCq3ihcJ863yZKr1gH+8fHVxZCNBE=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=P3fsiJZVHmtqiJdkY+1llOwtbQQ7EKFaNVYdlAiGSgTLv3Yg65XWGVFtjIThaYj2D
 tT3cu1RI5vDhhjBCrSdblPBhae4yl1S2ggg6+I3qPzRgc8A0kw4WFQg8YH1K+ghTe6
 7Tpdo8rM3QvFyqJtE+0xGFBCNXbdnzzhgtEY5TFk=
MIME-Version: 1.0
In-Reply-To: <20190919030912.16957-2-chen.fang@nxp.com>
References: <20190919030912.16957-1-chen.fang@nxp.com>
 <20190919030912.16957-2-chen.fang@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, Fancy Fang <chen.fang@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2] clk: imx7ulp: remove IMX7ULP_CLK_MIPI_PLL clock
User-Agent: alot/0.8.1
Date: Thu, 19 Sep 2019 15:17:49 -0700
Message-Id: <20190919221750.853A921907@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_151753_028650_0482E4C6 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Fancy Fang (2019-09-18 20:10:48)
> diff --git a/include/dt-bindings/clock/imx7ulp-clock.h b/include/dt-bindings/clock/imx7ulp-clock.h
> index 6f66f9005c81..a39b0c40cb41 100644
> --- a/include/dt-bindings/clock/imx7ulp-clock.h
> +++ b/include/dt-bindings/clock/imx7ulp-clock.h
> @@ -49,7 +49,6 @@
>  #define IMX7ULP_CLK_NIC1_DIV           36
>  #define IMX7ULP_CLK_NIC1_BUS_DIV       37
>  #define IMX7ULP_CLK_NIC1_EXT_DIV       38
> -#define IMX7ULP_CLK_MIPI_PLL           39

You can't remove this. Just add a comment like /* unused */ or
something to indicate this shouldn't be used.

>  #define IMX7ULP_CLK_SIRC               40
>  #define IMX7ULP_CLK_SOSC_BUS_CLK       41
>  #define IMX7ULP_CLK_FIRC_BUS_CLK       42
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
