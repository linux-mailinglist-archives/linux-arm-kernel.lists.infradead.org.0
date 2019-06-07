Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A277E38242
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 02:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqtrpRIJ8behY2lpv3x13Vi4JTtHSrBJJdtcw/A56P4=; b=JYS2DR+Exq8J5l
	XwRR5meRoq0RJ6XgEe8KSQlx4YQ+1jPzmQNytpDiblrfFDLa8/mn8zratKLUJO6Dcb5E9yd8GtELm
	8sSaUDKox/pQmDvu/9D2zXnvuE6Wx2PPsyMFqJAId1P02QRd8Faj+peT6g+J798x/2NQlcMkYFObk
	4x0sSUZ8Go3I/Ve06upbiVbYjFI4SdDEwVRi10Wl+P6Y7Q+gbkBZpK8UuY0t87rTn4v58iKmSNDsF
	TzuWIPUhrfV0D3lfjgQ786ULHviYWiJGhTkLXmq0NGYWBEY7GpN+1yecy+2EaTy0KQVqdJCsigmKO
	r036cKkCqzfPycjsFP9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ2x8-0001Z2-37; Fri, 07 Jun 2019 00:41:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ2wu-0001YV-Cl
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 00:41:41 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7BF4B20840;
 Fri,  7 Jun 2019 00:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559868099;
 bh=1vBgXQP1RrooBCqpqPpJd49Z0ROP6YAncbyQUWEg38E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RfblBthgc+Z0mKHDGUh/hG3I+ddM9slbmysMntqXwK6uHew8pK3P9uBfAR0C26rH2
 M3d22k7XkDog1lnm5AXAxFprI+6GH3qWBi4S9dAiA/VAxP+VGocEdVL1hEOzxfsYNj
 B1jaIre4e8lxXu3jQaal2HsJ5+xikw6yp7BWGe2c=
Date: Fri, 7 Jun 2019 08:41:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RESEND v2 00/18] clk: imx: Switch the imx6 and imx7 to clk_hw
 based API
Message-ID: <20190607004117.GZ29853@dragon>
References: <1559132773-12884-1-git-send-email-abel.vesa@nxp.com>
 <20190606182940.F0D8C20872@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606182940.F0D8C20872@mail.kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_174140_449580_B6C50754 
X-CRM114-Status: GOOD (  10.10  )
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
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 11:29:40AM -0700, Stephen Boyd wrote:
> Quoting Abel Vesa (2019-05-29 05:26:38)
> > Resend for the following:
> > 
> > https://lkml.org/lkml/2019/5/2/170
> 
> What's left after this series to convert over to clk_hw based APIs? I'm
> happy to see this merge as long as we eventually delete the clk based
> versions of the code in the imx driver so that we can complete the task.
> 
> I took a look over everything and nothing stuck out, so:
> 
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> 
> for the series.

I just applied the series to my for-next branch, so that it can be
pulled into linux-next for testing.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
