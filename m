Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFFE1BA9CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9j3xl/lR4Id+6W+m1IHVL1Rkc5fKgkE7L+d81ZsRwQ=; b=lpb0QJwZSaZcMp
	t9MrpMKiOmoFzzBNSfqObjtC9ZojfG8S/ISNOkEl07t1PSbBTkJARGwI5jP0ZlfQRlwnWXR93Ajg4
	jhAr3U7kDkA60p05gMhx3g7nKX9VK6gSr0VCD6u6My94XM3cSAIrkcnV4M7m1ofAe+S5IpFkRmnAn
	lJdFGvNf9TGoKeWTBywsqBbs1nXbEBhXOr2BrHUXO5SkoXXC08pXi/RYA+D9GbWvU6AeySWIgbh1y
	Pu6iGty8vIcFCl6VTWdOcnMjLsEUlT6NvXpgb9SsGmRo69JBnHKLRGVH+nQOzlXdANMS/ym2alThz
	xhY0q+G5FP175m9alShQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6JV-0000iZ-Ue; Mon, 27 Apr 2020 16:08:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6JI-0000bg-5I
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:08:50 +0000
Received: from localhost (unknown [171.76.79.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBAAE205C9;
 Mon, 27 Apr 2020 16:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588003720;
 bh=Fht19I4+eezxy5GovEcjy5M55vqSuUXkK9sZ7M4yS2M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wsy7jmWO9YhGIFy8m+h/Pj5RwoL2HpGQYSA2W2RNN6F4+zdNlshGddo6y/wM+ZGsm
 jRPfuiim4i5JJbZcWsyBAv+Fdh6HgVvjAkXUxWNtklBjxLKjV/RyEOfHxePjR3Z+Vt
 Bq28GQ86+r0qPVFxAS41PTQ0cdJ4K7m45IosxJm4=
Date: Mon, 27 Apr 2020 21:38:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] dmaengine: qcom_hidma: Simplify error handling path in
 hidma_probe
Message-ID: <20200427160836.GI56386@vkoul-mobl.Dlink>
References: <20200427111043.70218-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427111043.70218-1-christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_090849_010474_D0048073 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 okaya@kernel.org, linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 agross@kernel.org, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27-04-20, 13:10, Christophe JAILLET wrote:
> There is no need to call 'hidma_debug_uninit()' in the error handling
> path. 'hidma_debug_init()' has not been called yet.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
