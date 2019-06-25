Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3255558ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 22:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u008gnlUiwdnWiUQP1tInWGvvytmUpEWP9akKP7nruA=; b=t4KRJC42xNcSIW
	P9POxcJVXQblbCITS4bPrszPv/c6q97bQQ3oQl1ySUGNyAco+5jCRBJf89E6K1wiinJR09ooL6ogr
	LT44JdDY5SnQYMTHaXLles7Q//F0ThalhlnUCGQJCq9eyfIpD2QqMmU5POh7pFYIjS9fdL7L9rOK0
	gNGTy+QHRoVx82lMbRQr3NI7GZqO4h/YGAehnKYkh+PBslcltgb35A4WVMoQD4gEorkLCnxlAAiiZ
	X9/4kLyA3bZOI8deWkYuJJWAoI7Y6tbxCxGQsz0hW/BZIczuDx2UBGYYfQ+pSyFnWo1MN1r1HHO03
	PLxZ88fmG1UjWtph7oJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfs8y-0004yS-2W; Tue, 25 Jun 2019 20:34:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfs8k-0004xr-90
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 20:34:07 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1C8D2085A;
 Tue, 25 Jun 2019 20:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561494845;
 bh=+odojV7RIvLw+rGgocmzwcB4oB9O4JdBqQ7XZ0k3jzw=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=2fNmV/krctjiKcMlEwlYu8UyPBCN20aTw8Zj9aE2+1v5IP2zjHCAkMUzb5wzRouD6
 YKTOgedCjZdqc/VpzlKtowDTCU32AaZGu3zmO7PSmLbs0lgTTpsqegCXCGGAP6Nibb
 CRKHxsyauZ/hWd7nJRBkmfRptGKDPP9cke/j7zO0=
MIME-Version: 1.0
In-Reply-To: <20190624153615.GA20480@dragon>
References: <20190624153615.GA20480@dragon>
To: Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [GIT PULL] i.MX clock changes for 5.3
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 13:34:05 -0700
Message-Id: <20190625203405.D1C8D2085A@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_133406_341412_13983815 
X-CRM114-Status: UNSURE (   8.48  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Shawn Guo (2019-06-24 08:36:35)
> Hi Stephen,
> 
> Here is i.MX clock driver changes I queued for 5.3.  Please keep commit
> 53c6a2ec018b ("clk: imx8m: Add GIC clock") stable, as I pulled it into
> i.MX DT tree as dependency.  Thanks!
> 
> Shawn
> 
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-5.3
> 
> for you to fetch changes up to 15c64ff7625513c551e2b50c1ae28f729b61c5d3:
> 
>   clk: imx8mq: Keep uart clocks on during system boot (2019-06-24 09:43:40 +0800)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
