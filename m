Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3259EC98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQNRT0qjux2wFAiIZ7Da1LlokUmvWyRSp/Y5UzoFZdc=; b=rat/ny3uUh4+DK
	kr42rVGRPjrj3SXtHYnOpDIw7i+uDLGYcMSeDsd7IAf/VFXWtbqR6ScSfdUx+aWXoB7w/mp7zFm3a
	a2VArQlsCHVWU6trgts6Wi8ZDJl0UBVeNwuRzK8u/hK9YZ2zyTumB9tlfwgEEFSCes9R0fuEj4UNU
	KR6axSExRtybkJZqwTw+YVSb27hJw2BD8wWDVJdO4ICn0dlQxsmwNEpm6k+iH1nlPdxD60vlILUpz
	gsHLvltcp115kYS0UR5dHDfWEArbAZtk9ymj9rK4zMiQiCFwl4oj9iy7G+pAX2nyTmCBtbudvY8UT
	aFMeL+iKDOiEWFKudVxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dNm-0002Sr-CP; Tue, 27 Aug 2019 15:27:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dNK-0002By-J2
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:27:15 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3579F2189D;
 Tue, 27 Aug 2019 15:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566919633;
 bh=AJKvwqBr6mozlxtlezGPJQUV6OujUSZL1Cer+98rI6Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hZnLJ7pfQYlVubJTRKq+qugP0+bHY56tV6ilNjrYeEpLDNsOGUtEzfRQS6RlrK8hf
 LLKvEpFfTkDtXYhfijba8x7kmSi17g9TJ6UWGe/D2uBsfw89veAmO23uYMKX4tVqpv
 Y6JvxkbqCjyOZqFat4tZDwJx4YEhAXJ7DCjhwvac=
Date: Tue, 27 Aug 2019 16:27:10 +0100
From: Will Deacon <will@kernel.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH] fdt: Update CRC check for rng-seed
Message-ID: <20190827152709.anbofdzplnh5r5eq@willie-the-truck>
References: <20190827103353.109218-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827103353.109218-1-hsinyi@chromium.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_082714_677567_A630E3AB 
X-CRM114-Status: GOOD (  10.73  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 06:33:53PM +0800, Hsin-Yi Wang wrote:
> Commit 428826f5358c ("fdt: add support for rng-seed") moves of_fdt_crc32
> from early_init_dt_verify() to early_init_dt_scan() since
> early_init_dt_scan_chosen() may modify fdt to erase rng-seed.
> 
> However, arm and some other arch won't call early_init_dt_scan(), they
> call early_init_dt_verify() then early_init_dt_scan_nodes().
> 
> Restore of_fdt_crc32 to early_init_dt_verify() then update it in
> early_init_dt_scan_chosen() if fdt if updated.
> 
> Fixes: 428826f5358c ("fdt: add support for rng-seed")
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  drivers/of/fdt.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Thanks, I'll queue this up with the tags from Geert.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
