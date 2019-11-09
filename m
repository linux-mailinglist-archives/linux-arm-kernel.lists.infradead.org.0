Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7628F5C58
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 01:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KT9Qvo9LV3CJwHHxsT0C4v0Hds1Esa8TkSL5imBLeE=; b=a2seXKBlqf2Pv9
	rRGORWV0LH48n5kUKJq1Cn6q8zryYR7CY15qtQBR5VkZVhiCGQ67QIwzh4oQEOSDGD2Eq7Paw3JpS
	pUTwlLZYeG5EpmajKZWrefe7LEUW5ZRqO6bN7UM4Iz5JFxyFA402/aE32XzUHJbcBPbjLUYCDMqh2
	dyQ0W9ho5KOmd8vuTW8YPhzFsYJaExfBdynP2SncKmMG0ZWkvsJ4NgzGEpPpP2c3syPMn0Wr7Wx0X
	dn3yGWlLZ6I2i7tLMZH/b1i/0ZUtD3jklNp9Mnavrmq6lrESJuAFM5/gJNuz8Gtgl+AdW3vCpNAIf
	LW2xorcQ4lT82B/3gf2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTEnX-0006c5-6y; Sat, 09 Nov 2019 00:40:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTEms-0006LG-J9
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 00:39:35 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EABF2084D;
 Sat,  9 Nov 2019 00:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573259974;
 bh=IrKF+ln8hSNqEeML5+58gfJzl6ywn/EAJy+eDVYBJMY=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=zWssj97jnd7ZTYrSaaBsd8O8C13EHv7wxk95MvWXmDuc7XsS+begRZVzYdB0qcoBs
 3nzQXgBKpJE6RRTUItFqr4/SYheDgezUlKTOANqpQGyHEKA/EG0ENuJ5sLuI9xSIoa
 b37Z7W6nXUbRqeO5avGgKI2d7gV0mrNorz7+UTgo=
MIME-Version: 1.0
In-Reply-To: <20191016125919.1773898-4-thierry.reding@gmail.com>
References: <20191016125919.1773898-1-thierry.reding@gmail.com>
 <20191016125919.1773898-4-thierry.reding@gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 3/5] clk: tegra: Rename sor0_lvds to sor0_out
User-Agent: alot/0.8.1
Date: Fri, 08 Nov 2019 16:39:33 -0800
Message-Id: <20191109003934.1EABF2084D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_163934_656994_4BF0B7D2 
X-CRM114-Status: UNSURE (   5.72  )
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

Quoting Thierry Reding (2019-10-16 05:59:17)
> From: Thierry Reding <treding@nvidia.com>
> 
> This makes Tegra124 and Tegra210 consistent with subsequent Tegra
> generations.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
