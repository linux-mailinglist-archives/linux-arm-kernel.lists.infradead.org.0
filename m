Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF0D8F4BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 21:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7z3YChmKhfkJc/Rx0pxLN1ALcfcjYgk1oy44a7OmIM=; b=XTtoshKr01AQ5u
	Pz0bQkvRLpx8PUJS9B4NvoiWBLLOe0YR4JdBt4WknFDzprlTWSEzBM7yc4y2UL/nUxc/olsSDIdyo
	X+jxgsE7V7lTEH+cMFspiionAdKTaFqZtpzmtgeOuuiShKEPjDUe+k0kublzj+sPIX4zvoFlqvCZf
	CmtV5SXXND+QzdKcLOpRV4g0uKQYW+W7p99k7t04F+pQUBFDrY9MpSKP/vVXQkbZU0JS1KYQA1epH
	prS1Dk8mNFUaF7h0MCZ55JBcrrliLnPkfI4CG5rkt8RkDWqi0GokxvNkLGmkNSdfmFO5p8ux2vElu
	FRB6B9eaA+YLdginMlzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyLYF-0002SF-5k; Thu, 15 Aug 2019 19:36:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyLXy-0002RW-9a
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 19:36:31 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C1EB20656;
 Thu, 15 Aug 2019 19:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565897789;
 bh=EW0TSpgRvmluEEbkBDw/BeuuXW6cPt71WV5w74ebqrg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=dNlzOMvcy/GqjHHKA+gBnz7GlvSplNcldf6dGBVNeqVLShEGKF5uN9e27kiTUr2R5
 pClxyDelehLdhTpVScj3Q2l1kVV6e09YEG2TbPlivD7nkWZjZH1w4VTI28rIsss71Q
 6f4gRhHyznQQ4YDf6zHR2urAhGi2qMrq1Wu6DC+A=
MIME-Version: 1.0
In-Reply-To: <cover.1565715590.git.leonard.crestez@nxp.com>
References: <cover.1565715590.git.leonard.crestez@nxp.com>
Subject: Re: [PATCH 0/4] clk: imx8m: Fix incorrect parents
From: Stephen Boyd <sboyd@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 15 Aug 2019 12:36:28 -0700
Message-Id: <20190815193629.2C1EB20656@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_123630_350168_0933C647 
X-CRM114-Status: UNSURE (   7.36  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-08-13 10:05:27)
> No checks are made to ensure the parents in the _sels arrays actually
> exist and it turns out that several are incorrect.
> 
> I found the errors using a hack to clk core, is there a better way?
> Link: https://github.com/cdleonard/linux/commit/da32c2e76eb373e8a03aec905af2eef28a7997a7

Maybe you can make it into some sort of Kconfig option that's behind a
debug flag. Or you can use the possible parent debugfs files and check
for parents from userspace with some script.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
