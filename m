Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F8310DAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+C1CgaJ0edMl43ihmMDMTug5PG0xoAUlmw878juDGM=; b=H5eISWhTYgaxvE
	fvVEbPUOIqxTS9aIqy/CN2//N32K95Elrv6VDZKb/F2248loPiv+THPp9MyBxrC9tpIN6a4aPPphd
	rMYxnHr4AaHeivFmYoieUX+/IM/YNj9DPV+qO27TpeLPVVyhIJnADwwVfS0nsJicWeTfGPSrCSfSZ
	TCfjIrRa4WKV72HNiSbKtx+VruJtMirfb2rxjp+gIlRm89Ek3xbIsto1PlYEjuCAU90oJUzl+lPo7
	bE9g09+HMZEuYH4kG8CA9+7M+ETf+oMlYVGqVkYUucHOAeioGScTzOAQiCyyyu9B+BbNd5Bpzt73o
	KDRd8owWexFkt/x3WE4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvRY-0001jO-GY; Wed, 01 May 2019 20:03:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvRS-0001iy-3J
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:02:59 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF5BB208C3;
 Wed,  1 May 2019 20:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556740977;
 bh=WyLNsbwD+oeUrv6JDi3xRKqWSoLZ3j0YRXf5VWJh1xA=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=HL+4BsS8I2j6a525JYI/skzyfDzfFD6m7eeTH/UVv4hKrp918bOhnmUtfR9rAC7Xf
 Hge4eknzj82wbPGG5iHM8VbZILfLoJWagT/Pm9yUnd2y7Gz6zuRuanOeEClEI8b0n7
 +CmTg+uDh3hCQByKaUkunxg8Pzn83tqwd2xEkwAA=
MIME-Version: 1.0
In-Reply-To: <20190501070707.GA5619@nishad>
References: <20190501070707.GA5619@nishad>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: actions: Use the correct style for SPDX License
 Identifier
To: Andreas Färber <afaerber@suse.de>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Nishad Kamdar <nishadkamdar@gmail.com>
Message-ID: <155674097693.168659.16500258534708901697@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Wed, 01 May 2019 13:02:56 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_130258_152781_CED53C3F 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org, Uwe Kleine-König <u.kleine-koenig@pengutronix.de>, Joe Perches <joe@perches.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nishad Kamdar (2019-05-01 00:07:11)
> This patch corrects the SPDX License Identifier style
> in header files related to Clock Drivers for Actions Semi Socs.
> For C header files Documentation/process/license-rules.rst
> mandates C-like comments (opposed to C source files where
> C++ style should be used)
> 
> Changes made by using a script provided by Joe Perches here:
> https://lkml.org/lkml/2019/2/7/46
> 
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
