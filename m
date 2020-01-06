Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF8A130C5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 04:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:Subject:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KM7/jJWdATIkOGVYrVkeHSISF1BrXSDPN6WIRO54dlE=; b=FJlpSIHew3Md9S
	LfB2ZIt/mBNuIfOz04lqPXUteLvh7MRclkkRY89mTKKvCBE/oFRJsX6eT8NBM2KYIWm//ns6Xob/A
	E9n01ODAwn/opOgkrm4+QjBEOnN0fF9U4oGK1YwbzyCl4mVwhg5nphDo493CW2hBKo2HP+uciIJge
	dcqq3mtsCGvcIu3emz8XUyx2W3It54fQvN6UDldpSuZj5RfztSQyIGrlS7dVCOmkpy9wy5gX8L92l
	Dpe3sWoqTqXzSpZX/QD4AAFAHtDy99PkOay1mshLYC7XW1byIgAJZ0UW18GNRu6qe72neJ3K5DfTR
	PUHx5n1L6OFD6x5scQLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIjb-0007gc-3Q; Mon, 06 Jan 2020 03:07:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIjR-0007fo-8Y
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 03:07:06 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D68E121582;
 Mon,  6 Jan 2020 03:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578280025;
 bh=ZlRvRlZSzyljxNPxVSZPQBWg+toDUmAzRRGF5W83VpM=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=CFyziydh0/bM1WTts1DaxVKN5pLgKG8nwPt2XsTULjYGRx0nr3Ec1ydvUc2lv3p5P
 m+FiiZVciTwKgpZ1cadTWuQSXSQhkIcQckaQwzhAxBPPVGvkvQcIcDD3vHGeVWH9cA
 hWvlcd9Rf0Pi+yAGPya/PBSrl8Jq7jkb7FcgN2JU=
MIME-Version: 1.0
In-Reply-To: <1575977088-16781-1-git-send-email-eugen.hristev@microchip.com>
References: <1575977088-16781-1-git-send-email-eugen.hristev@microchip.com>
To: Eugen.Hristev@microchip.com, alexandre.belloni@bootlin.com,
 mturquette@baylibre.com
Subject: Re: [PATCH] clk: at91: sam9x60: fix programmable clock prescaler
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 19:07:04 -0800
Message-Id: <20200106030704.D68E121582@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_190705_322241_F2B7FBDD 
X-CRM114-Status: UNSURE (   7.15  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, Eugen.Hristev@microchip.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Eugen.Hristev@microchip.com (2019-12-10 03:25:19)
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The prescaler works as parent rate divided by (PRES + 1) (is_pres_direct == 1)
> It does not work in the way of parent rate shifted to the right by (PRES + 1),
> which means division by 2^(PRES + 1) (is_pres_direct == 0)
> Thus is_pres_direct must be enabled for this SoC, to make the right computation.
> This field was added in
> commit 45b06682113b ("clk: at91: fix programmable clock for sama5d2")
> SAM9X60 has the same field as SAMA5D2 in the PCK
> 
> Fixes: 01e2113de9a5 ("clk: at91: add sam9x60 pmc driver")
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
