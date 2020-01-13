Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAC8139489
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:14:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWSB1WafzVZYQ8rDOSjtX+t4QO164sBuOcrHae+WoYs=; b=UzHoz1WHbYknUg
	Ano2QKle4mOO7hvF1S0t3HHyUCG9Kti39iFSmaWglt44NUJWDlTap1OTBfyxPC86Yafnmy1E03cTa
	xXQxzgNmSSNED8LIYGQkCwFavR9o2ZwKsdMLcnLaI/ZEexMkYs+UcMVzb/8KtwSssppODuGmDC2fU
	+EGsn/0pYPPL51hZYWHfKmoYcayBfs0pnebwQCj0QX5fhx3UmR7qyl7zp2IrqQKKBfnuPglr5e5Xi
	aerfTmURmh0lSiTv8bq7EH7KdtrPNvwG47z7MslrTHg0ETIu0aRSKIott51x4AYsJ4BGTUr/YYy4t
	4mvSOh4HENZHfVNiBXzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1Pp-0003Wx-E4; Mon, 13 Jan 2020 15:14:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1Pe-0003V1-Me
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:13:57 +0000
Received: from cakuba (unknown [172.58.35.234])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E949207E0;
 Mon, 13 Jan 2020 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578928434;
 bh=k37G7crg/rnM1OPMgaFjdTDn+Y4irTU6HvEVxVieUjM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=2hwwdBpUxEHlF/MjAnrClMUvpSXE0hViNfyJbeItXwrJg/UYJfNs7k4g0NTGgL4qg
 oB47bgNla0FdArsPtX9RFkZtKktMmYBl6EAK5tKv6DMGQWLM3whpFWy2ndFngr58H1
 e/SiSW/FESxRge2qm/qM6l5ZH530SABcPO51G5uQ=
Date: Mon, 13 Jan 2020 07:12:51 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next v2 2/8] net: stmmac: tc: Add support for ETF
 Scheduler using TBS
Message-ID: <20200113071251.1d9d51f6@cakuba>
In-Reply-To: <4a4290706a9166d67d2d455dfa9d5f259699a036.1578920366.git.Jose.Abreu@synopsys.com>
References: <cover.1578920366.git.Jose.Abreu@synopsys.com>
 <4a4290706a9166d67d2d455dfa9d5f259699a036.1578920366.git.Jose.Abreu@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_071355_617529_65B22BC5 
X-CRM114-Status: UNSURE (   7.18  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Jan 2020 14:02:37 +0100, Jose Abreu wrote:
> +static int tc_setup_etf(struct stmmac_priv *priv,
> +			struct tc_etf_qopt_offload *qopt)
> +{
> +

There's a couple places I spotted where continuation lines are not
aligned to the opening parenthesis, and here we have a spurious blank
line. Please run this through checkpatch --strict, I see quite a few
legit errors there.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
