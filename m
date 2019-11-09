Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF22F5C7F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 01:45:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUVDyDtfUDLkTgXkcwBJ8HfGkZE6I6OVx+Xkhv4C16A=; b=S/L8L4VuhDp3hB
	+bylOZgtgcOXRgkC0g1baaI0m81veAGIYGQ9FceIxLLTK1+vZTrSxt9XkbHVhQp/8pJaCrV9ypXp2
	vlnlQW7pSNXNkl1oTAd5hPoa8a5PzxQ3OBpw1fRjwcShcSVk5Rqho/o+GI4n/tSxDaz1oucZWfnLU
	wqATkZCatEmVmK4NGRTDw832012jVZhIJBI9nWIpf2hbuYUk8qy4BtmutWmCwzpkZDyoPXcpOno4v
	91eIr6jIMWzEOV1awDbCeDjE7ERwf2KM4Y0hDiz+5+a2+RQNZLUBrsZXz7J3NE7BSKghqHyFS1a8Z
	Y7xlcywvVUB/mdxA8+Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTEnj-00085y-RB; Sat, 09 Nov 2019 00:40:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTEmy-0006QI-CB
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 00:39:41 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9406021019;
 Sat,  9 Nov 2019 00:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573259978;
 bh=PkbmG8SyLOdrqjgY6Pqa++Dmk9EPJSwTtjnzeuigXVg=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=b7ZRTTqNUV8Yq5Xx020oNTXoBk1mJQLz+Fuz3eKuV9MPKRX9xLoAKFJfp70F6H1II
 3g5q6RJGPlaAaN3Ds4JqQqNwCah9/QCuVy4PDXtmOp5GQWT4LuS8GMhBkF0SxoXNGd
 YdBFFOgTVuA2LVT5m4R5oFfUctMP3bV3/pgjMEhY=
MIME-Version: 1.0
In-Reply-To: <20191016125919.1773898-5-thierry.reding@gmail.com>
References: <20191016125919.1773898-1-thierry.reding@gmail.com>
 <20191016125919.1773898-5-thierry.reding@gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 4/5] clk: tegra: Reimplement SOR clock on Tegra124
User-Agent: alot/0.8.1
Date: Fri, 08 Nov 2019 16:39:37 -0800
Message-Id: <20191109003938.9406021019@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_163940_556048_597F0EC7 
X-CRM114-Status: UNSURE (   6.62  )
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

Quoting Thierry Reding (2019-10-16 05:59:18)
> From: Thierry Reding <treding@nvidia.com>
> 
> In order to allow the display driver to deal uniformly with all SOR
> generations, implement the SOR clocks in a way that is compatible with
> Tegra186 and later.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
