Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91984855BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 00:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJj6/+4ZPSAscM7XwWKVZ24nmpasZNXfkkTSP8UV3kc=; b=nZ5Uv39XjODT7k
	7qmLaH4EGC8m66lxxn8+S2kKBJvT7Mo6DopDmycKAfK7+zc3GfrXWRzfLVGzpaK/4ndvlqRI2v7Cg
	11gujDOJtdOXBv2dtzBbV7H1mnEa7ctpWWKQy41tfa7c9X/yekfKWOOULcm9rwK6XT9xqdAFJo2Os
	agFiaO5NSVSvrT/1nrAYOdjrGv23zrSuBkCXUR+8lsOdzPnXvvexrwytaKnEXodh5qKgd0HDcjmEa
	b0WUrNvdEPoawZ4lqaMsB9CyAsXVkuCLuij+fPdnc9LnnkORWNOQ9v3FWvO0wJLQ3wshsIAPP1hSo
	R4lije9Z76nQGkgoXTjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvUNM-0005lf-IL; Wed, 07 Aug 2019 22:25:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvUNA-0005lJ-Bh
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 22:25:33 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A4B79214C6;
 Wed,  7 Aug 2019 22:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565216731;
 bh=7DN7jQLFmk0JqhPULilD+Tp18e5zp+WZCZbei5vkoz8=;
 h=In-Reply-To:References:From:Cc:To:Subject:Date:From;
 b=tJSapUW1WcpXXWvfFttc/q7bxqeDSm5QApEJYgP8XBpUrq0Qb83eFk/5ZAKDxGQiu
 waJiFIkk9eRKyuaQZGk6v8sAZOBnryqFEzsOs/VQ/iJeXIygzr9WxCZwkH50YQi4G6
 y2fDFQoa5Vrzbl6iWoQFO1nbXqNGbVzmnw1YiRHM=
MIME-Version: 1.0
In-Reply-To: <20190804163445.6862-1-nishkadg.linux@gmail.com>
References: <20190804163445.6862-1-nishkadg.linux@gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mturquette@baylibre.com
Subject: Re: [PATCH] clk: versatile: Add of_node_put() in cm_osc_setup()
User-Agent: alot/0.8.1
Date: Wed, 07 Aug 2019 15:25:30 -0700
Message-Id: <20190807222531.A4B79214C6@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_152532_421946_45A25328 
X-CRM114-Status: UNSURE (   7.10  )
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nishka Dasgupta (2019-08-04 09:34:44)
> In function cm_osc_setup, variable parent takes the value returned by
> of_get_parent, which gets a node but does not put it. If parent is not
> put before it goes out of scope, it may cause a memory leak.
> Hence put parent before the function terminates.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
