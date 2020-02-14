Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9AD15D032
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 03:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcfhyvVgUxoM+WGC08LvLbKcsRFc2kZRad8YfmfdQYI=; b=G5fmlNb3JCaf2Q
	L/tqS37ZjydVR1Jk8pqwMXfauPpOfZ0MR9lNJc2jrqKNlR+vWZ/4/gmFTOtfQrMFqFDUlg+pb/ubQ
	s4WSWV4it38R9Qg2bnKjQ8SpDQORB/IPUJqIWFMF6nkYcW/xeyUvy/W0PSff2d/MrZw6BpyFOWmhQ
	7HOWTRvZRiiJ8iMJwIWfWdn7aNA22cf6wh0VzVWJAXeGw7ac5miJjA88qfYFc7n3ak9sA7ZnsVbsP
	/MRAfG3QzKFMnUayU6qXM+HGclFocRAhUcCHSD8Oadkd/GDPP9MQeWI/AzwyDj5p2jeGZpqz4nNMS
	3qQQn/cWGdsdtXfz6ZOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2R3g-0007UJ-0k; Fri, 14 Feb 2020 02:50:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2R3X-0007Ty-LK
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 02:50:17 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D98FB20873;
 Fri, 14 Feb 2020 02:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581648615;
 bh=cQz7WMswfnptwR1SES46bBvWnXS2aGplada74E0ndYY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zh/nJnbIegiJ91mRCijJH3FWiDC8+voZl7dA7qAwsXopCpgBcbbJk27akiEvitc+W
 DdfSBFinysn6NBKrwbPpPiR4AUi6AfxN74Kqdw0uFwYc/dLr1FaqMG5QWdY8scZaPC
 298JTfXdHPScaPeivsRJU8xQ5Y+MAiQRqXDaOYR4=
Date: Fri, 14 Feb 2020 10:50:07 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V4 0/4] clk: imx: imx8m: introduce
 imx8m_clk_hw_composite_core
Message-ID: <20200214025006.GI22842@dragon>
References: <1580189015-5744-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580189015-5744-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_185016_125835_5FA515D3 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 05:28:32AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> V4:
>  Per Leonard's comments, added new definitions and  _SRC/CG/DIV are
>  alias to the new definition.
>  Did boot test on i.MX8MQ/M/N-EVK
> 
> V3:
>  Add CLK_SET_RATE_NO_REPARENT and CLK_OPS_PARENT_ENABLE for core
>  Avoid break DT for i.MX8MQ
> 
> V2:
>  Rename imx8m_clk_hw_core_composite to imx8m_clk_hw_composite_core
>  Add Abel's tag
> 
> To i.MX8M family, there are different types of clock slices,
> bus/core/ip and etc. Currently, the imx8m_clk_hw_composite
> api could only handle bus and ip clock slice, it could
> not handle core slice. The difference is core slice not have
> pre divider and the width of post divider is 3 bits.
> 
> To simplify code and reuse imx8m_clk_hw_composite, introduce a
> flag IMX_COMPOSITE_CORE to differentiate the slices.
> 
> With this new helper, we could simplify i.MX8M SoC clk drivers.
> 
> 
> Peng Fan (4):
>   clk: imx: composite-8m: add imx8m_clk_hw_composite_core
>   clk: imx: imx8mq: use imx8m_clk_hw_composite_core
>   clk: imx: imx8mm: use imx8m_clk_hw_composite_core
>   clk: imx: imx8mn: use imx8m_clk_hw_composite_core

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
