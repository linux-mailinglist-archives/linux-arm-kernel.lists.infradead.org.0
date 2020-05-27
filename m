Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E93B1E346A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DpgigB4kzq4j3tYgPp1b2APBHyjt1xnSiBIVbN5IlRM=; b=kEbRxoQqJ443L6
	aYhkEpoNAHXBu39vidHuFIULYxizGdOKisKS/S6xTU/vK2LkiLnv1Qk0gG7cdoOIUY7A8p/ZeX/Yc
	vk4ALOESQMH9PRGis9mnrfD1RRHCPULqStnREhpC+aX96bAPjw3JQVpZppZ8QdWV4abA4L2MTrShI
	jTpjW7qTU4k7O/zsLvvDg6exnWXW0cuW1IgBI3hosRsFaVSHLYh1nc/KQWZratZpXwO46cEqUMZ0G
	posSD393wnMobLHvVQfThzTJUptWpoktqK50naqy6z1fv4UArkGrYQlwxzuweUN4FiqJzxWwAWWrc
	2tl88OWTcV2UBg2NWl+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkYX-00052Y-HM; Wed, 27 May 2020 01:08:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkYM-00051x-5I
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:08:19 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77F922088E;
 Wed, 27 May 2020 01:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590541697;
 bh=gEQCahnR2XMMiWuyGv9OLa98c7dUNuD50Z8vXWxnv1s=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Pr3AovO/66JVsQ6pMOFxy3X3OQ2+GE39lheSQKMxSP/jIN6snMAwzNKg1bDAhZUJp
 tLPe/YEGL7n54na79S06oG9hjY3SBm7bQ3zYo7eV1aIu0A6W1ukXZIFA5x9vAH+Vol
 5CCJvEAtXiKHfrON8DlLGdYlwrplmm/iuOeptsNE=
MIME-Version: 1.0
In-Reply-To: <1584048699-24186-3-git-send-email-jolly.shah@xilinx.com>
References: <1584048699-24186-1-git-send-email-jolly.shah@xilinx.com>
 <1584048699-24186-3-git-send-email-jolly.shah@xilinx.com>
Subject: Re: [PATCH v2 2/2] drivers: clk: zynqmp: Update fraction clock check
 from custom type flags
From: Stephen Boyd <sboyd@kernel.org>
To: Jolly Shah <jolly.shah@xilinx.com>, arm@kernel.org,
 linux-clk@vger.kernel.org, michal.simek@xilinx.com, mturquette@baylibre.com,
 olof@lixom.net
Date: Tue, 26 May 2020 18:08:16 -0700
Message-ID: <159054169658.88029.371843532116000844@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_180818_233043_264024A3 
X-CRM114-Status: UNSURE (   8.62  )
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com,
 Jolly Shah <jolly.shah@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jolly Shah (2020-03-12 14:31:39)
> From: Tejas Patel <tejas.patel@xilinx.com>
> 
> Older firmware version sets BIT(13) in clkflag to mark a
> divider as fractional divider. Updated firmware version sets BIT(4)
> in type flags to mark a divider as fractional divider since
> BIT(13) is defined as CLK_DUTY_CYCLE_PARENT in the common clk
> framework flags.
> 
> To support both old and new firmware version, consider BIT(13) from
> clkflag and BIT(4) from type_flag to check if divider is fractional
> or not.
> 
> To maintain compatibility BIT(13) of clkflag in firmware will not be
> used in future for any purpose and will be marked as unused.

Why are we mixing the firmware flags with the ccf flags? They shouldn't
be the same. The firmware should have its own 'flag numberspace' that is
distinct from the common clk framework's 'flag numberspace'. Please fix
the code.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
