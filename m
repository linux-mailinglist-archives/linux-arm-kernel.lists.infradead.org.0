Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1810DA8734
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 20:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znItON8ur0BZjPlvB3h4J/bPS25gGYfJFlFMzTmpHII=; b=NArCT7NWvkn7er
	rtfG+YDnhW7Gu+joV9+XxEDcsu0RDWDD4DHE1Brc2iC+x2UvBlDZ90gnQWj34D+bqnx7dlavRd5A+
	8NTOoKM0hmlnRB0eaa5X1SWWPNHYm4/TCSOv5cZGNpS75QdfUiYoJj/AN0f4LJ3NNE+Jq2FP7vLyG
	ByjJbce8WW9sgemX3NEtYbHVZ/XvW9KarBCnTFOYUCTMwA3jj45iS0IuKyb6iQe5Nlse4KBBpXMt5
	Qn+otQJrOFVdN0BxAmwF4JbOk7Bf+syQVekW1StykPP5T+yAYzO4yPp5XLejxFAhmAaXcUQkq8LUq
	n1ljxowaLt1Ee/B/Dytw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ZmV-0000g6-Cj; Wed, 04 Sep 2019 18:13:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ZmK-0000fV-9m
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 18:13:13 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFD1F208E4;
 Wed,  4 Sep 2019 18:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567620791;
 bh=3jHminz3YdT9MdadS5kKTfIqy3pQoGEAUZ8tniXD4rg=;
 h=In-Reply-To:References:Cc:Subject:To:From:Date:From;
 b=tqLtGOc0E3SNT83XMp9Lg1zsznc2P+WpNwm5rt3a2bxqqH3OpbnHbmVPEUVjkEjz3
 JkvEgelijBohZ/unci0YvEilG9IUjAW5hJXL4yOXZjnneFZmsyGNakp+EH0Ckih3D4
 j9bCKqTFh5bPSc4qttV6Z0VYExFpq2HJAprbd7IU=
MIME-Version: 1.0
In-Reply-To: <20190825115505.GA20454@X250>
References: <20190825115505.GA20454@X250>
Subject: Re: [GIT PULL] i.MX clock changes for 5.4
To: Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Wed, 04 Sep 2019 11:13:10 -0700
Message-Id: <20190904181311.BFD1F208E4@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_111312_375036_84DC1F31 
X-CRM114-Status: UNSURE (   9.43  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Shawn Guo (2019-08-25 04:55:06)
> Hi Stephen,
> 
> This is the i.MX clock changes I collected for 5.4.  Please help pull,
> and keep commit 6ad7cb7122ce ("clk: imx8: Add DSP related clocks")
> stable, as I pulled it into my DT branch as dependency.  Thanks!
> 
> Shawn
> 
> 
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
> 
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/clk-imx-5.4
> 
> for you to fetch changes up to 760e548e7f885d89bf2dfab4838df9379edd19fc:
> 
>   clk: imx: imx8mn: fix audio pll setting (2019-08-24 21:04:27 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
