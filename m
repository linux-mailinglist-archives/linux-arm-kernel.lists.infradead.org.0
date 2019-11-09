Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B79F5C57
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 01:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+dk+FOoo2eVKZ0QFw1x6X4eYlhPJ+pdnoeg9+RKp+E=; b=b8WcyV8DKDqjpa
	KSEdhqNGCU3bILJSz71t6BQZWRxgXG1yILS7LAZ68qLqa7Qc4IX8EaDJebuW1m264jLvup7qszeKj
	MhHz54SKeiNC4x3N7sekRIcQDfzMcGjZpDziBfoPVGjsZyFCyoQsgUW3Y3YguGVolWuj/SSQOLis/
	mrQKrsgVmhRIYcEiThAK8MpN/tRvRCcd2Ef1IdlrECM8jXiUwzrnCuxwKKL9mwufskvt0e6T/TeBH
	UTx7pASWxegaWcM9VIcf+jN9AU/XkyD7cBwP2kvRreJXxILpDXJdVlXY1ej15oPmwUqmRA9u+ZNbT
	MoeCJxPjuvQktGdGfVhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTEms-0006DI-7w; Sat, 09 Nov 2019 00:39:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTEmi-00069O-1q
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 00:39:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD2502084D;
 Sat,  9 Nov 2019 00:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573259962;
 bh=a4IHuZ61Ijn02rgp1IVvNjlu4o9WcpWH0qgKMKOhXEs=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=F+QVh3FPu2f6iuZdfwfen7v/CoZqm37zXzLStBKSRV46FSCwCO6wf8KtP4g/c3Ik2
 9vFJtd8UhMVNg5ZwXUZkWUS1UX40mLJdRkYrhZs+83BwnWYPkskIsC/U+0T26iHmYw
 xclolNxKAcwP9hbjblTV1/xFhlpMrYv2JqedjsJc=
MIME-Version: 1.0
In-Reply-To: <20191016125919.1773898-3-thierry.reding@gmail.com>
References: <20191016125919.1773898-1-thierry.reding@gmail.com>
 <20191016125919.1773898-3-thierry.reding@gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 2/5] clk: tegra: Move SOR0 implementation to Tegra124
User-Agent: alot/0.8.1
Date: Fri, 08 Nov 2019 16:39:22 -0800
Message-Id: <20191109003922.CD2502084D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_163924_114427_28440FCD 
X-CRM114-Status: UNSURE (   7.48  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Peter De Schrijver <pdeschrijver@nvidia.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Thierry Reding (2019-10-16 05:59:16)
> From: Thierry Reding <treding@nvidia.com>
> 
> The SOR0 clock on Tegra210 is very different from the SOR0 clock found
> on Tegra124. Move the Tegra124 implementation to the Tegra124 driver so
> that a custom implementation can be provided on Tegra210 without
> clashing with the existing clock.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
