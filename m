Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7339065D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 19:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgEDjH3AUnHJh+jIK0MOQQRqMOTVP5LD6YQzrvIXKTo=; b=Mel56+BmGCztAt
	sXzU8xR5yUsBL3HCOPokBy2Eofi4Sqz4vIJ/4KiD01I8xP8pLqjmnb0FGkzpTJpWZaYlF8gBOqLd/
	UEun7oYPphsCBZwKRZKGXMMOMMwrgXWNI2+QvRS9WWSwbmlOY0vZ9yfYMg4YAZSkSWUS3uNivt72z
	7nQdkVO0WZZVpCtBDy5euImWmsdLi5q8iUQtEKSUAj3oIAuza2oNsUpFCQGFYIyqlxEt6HKdn++bz
	iYfU2vN/4QCCfdYdT7GE6+YtURihTyPw0pz3vlvG4yrvyHev0vgji/8T96K9YvdChthaNed3Grlp4
	7tqZnj9+63HaDu+t/LRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyfc2-0007ne-AL; Fri, 16 Aug 2019 17:02:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyfbq-0007nM-Se
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 17:01:52 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E6772077C;
 Fri, 16 Aug 2019 17:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565974910;
 bh=kRQdySEFfbNhYV8BmidHDQ/rtgeMqFr1JW9v/ifI7XE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=uuNsX+znuy1DGYakmALpmy1BjPJyfebQMKl5cBSg1KfNGFTK4JURmOCy6NOGLk/Pa
 6skHQhX+mLXaBjvLbzf7UA+lXmkjY0gzheppmOmslj5fbi0UwBo1UPOW7B3EnXL9ak
 0AQLcfUjw1WUbRc4bq6cyYukdgAcQj91AePbHmAE=
MIME-Version: 1.0
In-Reply-To: <20190816155806.22869-2-joel@jms.id.au>
References: <20190816155806.22869-1-joel@jms.id.au>
 <20190816155806.22869-2-joel@jms.id.au>
Subject: Re: [PATCH 1/2] clk: aspeed: Move structures to header
From: Stephen Boyd <sboyd@kernel.org>
To: Joel Stanley <joel@jms.id.au>, Michael Turquette <mturquette@baylibre.com>
User-Agent: alot/0.8.1
Date: Fri, 16 Aug 2019 10:01:49 -0700
Message-Id: <20190816170150.4E6772077C@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_100150_957344_2BED0AF7 
X-CRM114-Status: UNSURE (   8.71  )
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
Cc: Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Joel Stanley (2019-08-16 08:58:05)
> diff --git a/drivers/clk/clk-aspeed.h b/drivers/clk/clk-aspeed.h
> new file mode 100644
> index 000000000000..92d384367c25
> --- /dev/null
> +++ b/drivers/clk/clk-aspeed.h
> @@ -0,0 +1,74 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * Structures used by ASPEED clock drivers
> + *
> + * Copyright 2019 IBM Corp.
> + */

Please include reset.h (or whatever defines reset_controller_dev),
clk-provider.h, kernel.h (for container_of and types), and forward
declare struct regmap and clk_div_table here.

> +
> +/**
> + * struct aspeed_gate_data - Aspeed gated clocks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
