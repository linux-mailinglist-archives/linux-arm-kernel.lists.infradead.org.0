Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A99418DD58
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 02:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLmHpANQEvKESVKmb1nXr1EJxys0gcUDrxttV+GWG6A=; b=uYZqOwXz2E6wg7
	VtLLKs6JCKJ2WPOa3Jssrl4jUEl0l7kRwyhKhI8ls3N7yh4OgBmi5a1Wgz0R7iUrc8MHvmtUlEs3N
	sCkdkAdUsAHINdaJ0DugOXDpI/eHce9kNQTaLPyoA7ACKTrj1/mASpkRPxXA6TKfQ+GrwNPCvaWsS
	AwdTfTTs2U62UNKLyQkUv0rd2cgWSH4hK0GWs9UtXQDpS1oFLy6M4GdQXzM9RvEfuQpWCxryK18XT
	2gJA8eJ1eOtth9G5OgINPTON5AZCOQEg7RYD5gvB5NMvjtGm2PiAtUpt1N/HCROyQDUSCb4jTdzUn
	Vnfw+LOL4+b7S8MuiilQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFStg-0007tD-N2; Sat, 21 Mar 2020 01:25:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFSsW-0005wR-57
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 01:24:45 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 615C820732;
 Sat, 21 Mar 2020 01:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584753883;
 bh=a7oq14gh90f9G9cupQDvc9EWm1m9yJ4iZFLErXizOcA=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=TGEI4V2Sr9IwJ2vBZpVZGIAwljW2QxC17vCA1WzaVme3mY5AjgPfyfixpvTQgspyz
 omNWEhBVFBT8YfXNrFYmYw5dg8JcsPjOXCDyoOJWEa4mvy8dpxHs3kTTWYfruumyqT
 J7JYlBIh/rvdFNpNScrVbkMGiM0orrW9U07q7WGI=
MIME-Version: 1.0
In-Reply-To: <20200309194254.29009-5-lkundrak@v3.sk>
References: <20200309194254.29009-1-lkundrak@v3.sk>
 <20200309194254.29009-5-lkundrak@v3.sk>
Subject: Re: [PATCH v2 04/17] clk: mmp2: Add support for PLL clock sources
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Date: Fri, 20 Mar 2020 18:24:42 -0700
Message-ID: <158475388263.125146.11372517982520346232@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_182444_352119_B60DDA61 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lubomir Rintel (2020-03-09 12:42:41)
> The clk-of-mmp2 driver pretends that the clock outputs from the PLLs are
> constant, but in fact they are configurable.
> 
> Add logic for obtaining the actual clock rates on MMP2 as well as MMP3.
> There is no documentation for either SoC, but the "systemsetting" drivers
> from Marvell GPL code dump provide some clue as far as MPMU registers on
> MMP2 [1] and MMP3 [2] go.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp3-dell-ariel.git/tree/drivers/char/mmp2_systemsetting.c
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp3-dell-ariel.git/tree/drivers/char/mmp3_systemsetting.c
> 
> A separate commit will adjust the clk-of-mmp2 driver.
> 
> Tested on a MMP3-based Dell Wyse 3020 as well as MMP2-based OLPC
> XO-1.75 laptop.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
