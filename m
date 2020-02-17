Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0327160BEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:52:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifBVsGmlrjK6Rl0HztUNUKuzndgDkzCy4aiTLxSQIdY=; b=i8E6sOHqK7GDuo
	578kbFL/GC/1N1h1syineqiaIjL6CycJTXcBc5vF97BR6Te6ibU3iWN+V62nRzJ8yUjyji7Myzs3q
	4aRAMlvsgxCHm84NlGaMqedfQWq6qBeKQtPljLf3nqYsCwp4yxrYf4ah54vZ4U6P7ZY145vM6t26P
	y4/l9eu87R8VRGiEllBe9MujpQGsW1xLQ4hXGc0kzHq90yHLOVyv8BVmuZRIvEeZHziSNyhnMhVB2
	YU4badKX4Dp2F+hL2s5GVe4rsRyD8rqGp3OtWXZmqYc0MVOqosF6drq/YPwbh08HOBaD14lul5aYN
	RYkdFXLxXWk6BTXdNJHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bCi-00006l-HU; Mon, 17 Feb 2020 07:52:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bCZ-00006B-DN
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:52:24 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E00BE2064C;
 Mon, 17 Feb 2020 07:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581925942;
 bh=WkTrSJpzAK3eiaSApQ9z6T6eUIIFo891pxQZAK31cBY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VcpjNiN2GgZYOCVS48zBx/z1afRs4VsiAcjYT/+MFfF1vstYBh6FJzghxoWOs0vBN
 GuohSp2aqk6a/FTZuXyGIi6lan16aZv86HePDpEDVdUzESEj+IH5+4NP/3z1RzL/A4
 tLaez1DV3cWF43bgLYpSKfrwHClwlEAKcQ4jVbIM=
Date: Mon, 17 Feb 2020 15:52:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Subject: Re: [PATCH] ARM: imx: build v7_cpu_resume() unconditionally
Message-ID: <20200217075216.GL7973@dragon>
References: <20200116141849.73955-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116141849.73955-1-r.czerwinski@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_235223_469206_6D0E0B35 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 03:18:49PM +0100, Rouven Czerwinski wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> This function is not only needed by the platform suspend code, but is also
> reused as the CPU resume function when the ARM cores can be powered down
> completely in deep idle, which is the case on i.MX6SX and i.MX6UL(L).
> 
> Providing the static inline stub whenever CONFIG_SUSPEND is disabled means
> that those platforms will hang on resume from cpuidle if suspend is disabled.
> 
> So there are two problems:
> 
>   - The static inline stub masks the linker error
>   - The function is not available where needed
> 
> Fix both by just building the function unconditionally, when
> CONFIG_SOC_IMX6 is enabled. The actual code is three instructions long,
> so it's arguably ok to just leave it in for all i.MX6 kernel configurations.
> 
> Fixes: 05136f0897b5 ("ARM: imx: support arm power off in cpuidle for i.mx6sx")
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
