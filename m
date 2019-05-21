Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B91257AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 20:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=897cxatflVwOxDS7h5iI4Ng7J08tf0aM3LLHnwUbeyg=; b=U6bhKxTri3dgHD
	Qkg2CGDYrkNAGJG5dl6ANKSyT8QtA8Aac75XNJ+WurYJap/dchtkL3+JtVd2Slk+aX0loWBo0quZg
	lboMEGfsBcz1f1+TmX50zEXVn+UJ0Ho6RsBuoxrKQeraLood0XszboAc9x4z6nLb2tzLXCTedLC7C
	iMfkdQj/YgwDSOuEN2mnLoO56Z8sdP2RRUWbBjrA9y+idc7SNJ1jtZN7vJ3jsRCmEW1+HVvWF8C/I
	kPEQMjdiZH5E/KZTJ3yhe3QbEXie64ngkzTVEZcixKhu2tTNYKf/qxXQTk1oPWFF8Qn0JPnqKcght
	VeB0JYzQM/rZHLavkImQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT9jK-0006T7-UP; Tue, 21 May 2019 18:43:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT9jD-0006Sp-Ri
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 18:43:12 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B4A020862;
 Tue, 21 May 2019 18:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558464191;
 bh=L96gEwhzXS8dH76O3LoMeL1+YYnNfRATLa7ZW46Bgpw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=rSOf6TJR+EkwkNLjOUJe0ei0k40QHpSAzC8q98LT1tfx5vNIzZzEB8CTXEtbSw4gA
 yH96MX+btZpGrqyqsT3TQo/3RevmwXX4mQAiFnsF7IDCQSbWGm++YUC2rXW3c2HWYW
 t+psVXKLJCCNY/JLTFfMLmUjpKCFIqeWjAiLarfY=
MIME-Version: 1.0
In-Reply-To: <20190520021702.3531-1-peng.fan@nxp.com>
References: <20190520021702.3531-1-peng.fan@nxp.com>
Subject: Re: [PATCH V3] clk: imx: imx8mm: fix int pll clk gate
From: Stephen Boyd <sboyd@kernel.org>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>
User-Agent: alot/0.8.1
Date: Tue, 21 May 2019 11:43:10 -0700
Message-Id: <20190521184311.6B4A020862@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_114311_911456_BB9E6653 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Peng Fan (2019-05-19 19:03:19)
> To Frac pll, the gate shift is 13, however to Int PLL the gate shift
> is 11.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: ba5625c3e27 ("clk: imx: Add clock driver support for imx8mm")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Reviewed-by: Jacky Bai <ping.bai@nxp.com>
> ---

Applied to clk-fixes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
