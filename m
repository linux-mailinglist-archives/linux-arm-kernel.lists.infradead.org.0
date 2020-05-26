Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C76FA1E321A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 00:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwlYJDK+S576l2pTETWaCazaEslBJpGsEDhPYM143Jw=; b=scYLr/9NxiPhUa
	CitEGWTtXtPrASLWM0Hp2ZYYOZl+4DfWuNwj0V8PDfE3obN7hqd6MHNGhbKo2uzRXWILLMO4r1ryG
	acEtMt5jouTkaovuPiKtrH2nCX2W9wpEmbMTBfbcKkDoQZdXf+YeTeBZ0ftosgLMIbri6T/3Z54fc
	J5hjBWXcCGNpWI5A5fO3ep6aSVDGaXoZwQc5opIii9kny+J+P+fZ3P9fNugDZOrsYCH3OqYEfiX2Z
	QKT2Qjk1WaizPTK1qBVFIJHM3Js3L2pxuBWAzNTYNRSrLNsjI/OiVqAwKdSZPRLUu+SXiwKEAWisk
	wygHsPinpTefOngB51eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdho4-0003VF-R6; Tue, 26 May 2020 22:12:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdhnv-0003Ut-7a
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 22:12:12 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE72D208DB;
 Tue, 26 May 2020 22:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590531130;
 bh=JoouspmZnmYXmq8ZJTLOqrG3PM7FdXVCM07Jq5uMqXY=;
 h=In-Reply-To:References:Subject:From:List-Id:Cc:To:Date:From;
 b=JVAesrbxHIH/syQgqCInaZ3YuvWneFQeaZjK7S38JFnXcE6b6KbBKCrOdkhBKpHVZ
 qe6pFf4LTOCdLKgQ4sCSvL8ISrZrz0r/dhDcf187XVgLLY5Ngd7AIW+XfPknZN9LS0
 nXsyxjnr9vjBPuecg1dVJiyQ1p7cNGIk+b+2mrYg=
MIME-Version: 1.0
In-Reply-To: <20200526114054.GA2935745@ulmo>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
 <20200515145311.1580134-8-thierry.reding@gmail.com>
 <CAK8P3a0kqjt8UNxe2ruRDOJNedOcqWxP-i5y2uW6YsaMNJgejg@mail.gmail.com>
 <20200526114054.GA2935745@ulmo>
Subject: Re: [GIT PULL 07/11] memory: tegra: Changes for v5.8-rc1
From: Stephen Boyd <sboyd@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>, Thierry Reding <thierry.reding@gmail.com>
Date: Tue, 26 May 2020 15:12:10 -0700
Message-ID: <159053113019.88029.6264653349405850933@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_151211_289676_99E0ADB9 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>,
 TEGRA ARCHITECTURE SUPPORT <linux-tegra@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Thierry Reding (2020-05-26 04:40:54)
> On Mon, May 25, 2020 at 11:52:30PM +0200, Arnd Bergmann wrote:
> 
> > Waiting for clarification before I can pull this.
> 
> Given the above, might be best to hold off on this for a bit until the
> clock branch was pulled by Mike or Stephen.
> 

I pulled the clk branch into clk-next now.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
