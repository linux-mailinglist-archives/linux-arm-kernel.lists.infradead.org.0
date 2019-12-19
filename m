Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FA6125A77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 06:14:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qivGvO0odfUItXpbmP/Q8PZ3MbHIzl8aXmkniAMD7g8=; b=fzV772IhI9OcDa
	lXdqewuK7h77ci+uJ+dkjj8KBtTc5z3EcGDfSTkHXxvrxgkRc7bE2jq3w8P3clNB77R9wPXiTD8HX
	g6Fl0pw/chBfk7q7Fsq2INZuYP0YUStWcauXJ3zkC/smQZeUFMH/OrtKG2MJoCoObCApFp3JnOFwn
	edZam0lKRhCjyXBHVsKh2BuC7ezETD5vnbZTEqto/QDHY7o2a6w3qZxLVUqCpYOx1xFQ4auItqIBQ
	K2SCp9evYI9y4+kCQduXIfnwzoIO5kwzfu/rIZF1uYvU70Yw2QsYDAe+pGKDZueUk6UeBv+8lfPrb
	1WydFK6LrrwxPXKrDy8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iho9B-0002fx-L2; Thu, 19 Dec 2019 05:14:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iho91-0002f8-PS
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 05:14:41 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2B842146E;
 Thu, 19 Dec 2019 05:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576732478;
 bh=zutbo+tkyWAeoZo0maixsENGTToLoAmt9MwqGd10Gvk=;
 h=In-Reply-To:References:Cc:Subject:From:To:Date:From;
 b=SvdIWTueB22fAa/EqIDmetplXA/yHVHTxROAlv9nALYp6XEVxf+PZ13hSd6ZP7zUq
 aTg2Gj1IuqzblN2opxfhhQGK69ycvcncMQcLaTtpyasdIk7oDDXmNz1FnV+R7GK84H
 +SADY9DR+IEd06Bjcm6lnOiXp6BUonTRz8RoxwAc=
MIME-Version: 1.0
In-Reply-To: <20191218190454.420358-3-lkundrak@v3.sk>
References: <20191218190454.420358-1-lkundrak@v3.sk>
 <20191218190454.420358-3-lkundrak@v3.sk>
Subject: Re: [PATCH 2/2] clk: mmp2: Fix the order of timer mux parents
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>, Olof Johansson <olof@lixom.net>
User-Agent: alot/0.8.1
Date: Wed, 18 Dec 2019 21:14:37 -0800
Message-Id: <20191219051438.C2B842146E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_211439_850589_7E4F5E1D 
X-CRM114-Status: UNSURE (   6.88  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>, soc@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lubomir Rintel (2019-12-18 11:04:54)
> Determined empirically, no documentation is available.
> 
> The OLPC XO-1.75 laptop used parent 1, that one being VCTCXO/4 (65MHz), but
> thought it's a VCTCXO/2 (130MHz). The mmp2 timer driver, not knowing
> what is going on, ended up just dividing the rate as of
> commit f36797ee4380 ("ARM: mmp/mmp2: dt: enable the clock")'
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---

Any Fixes: tag?

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
