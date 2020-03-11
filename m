Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC011813FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:07:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlCDaz9PZqeBGlhTPB4ZeZOquD7eRyQBIzsR39rHp+M=; b=FsBzTXnVOb+ZUg
	c4v/Tgjx56UtGbU3zqBP6CZ00a95SPEDISbJ3XUwdutYM2mtS7GVMYibE5mGveqD+FgQfUHqZoZzX
	el6ySW0lck5Wz6vwQWNkDLcylbQSHG1zh/IVVU4IxX2I5YVYqUNKf5jNv8u9J8UUM9SkpNJz7f+hN
	0YseGk90uROQgy7lvWNyOTecZzXjCjLGLFGC+YpzNER16t3nUKjjVQYTFzG1fb6i5qcIUlnomRsgs
	eVHSFWRL5PrRDudE9OeHvizRWmJRqT2elqz+bag6u7X2N90QKI6tZIBcydi1yZjFc9EEM2KMtXlLO
	V3QdOFzTvs6TQj00xt5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxKP-0004iu-Lf; Wed, 11 Mar 2020 09:07:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxKG-0004hb-VT
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 09:06:54 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BBDE2192A;
 Wed, 11 Mar 2020 09:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583917612;
 bh=bl70ZTDTBge6jnrLfGymPXU8SZtUF9eRxaWa5J+K1hc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aNw2LHdEFw/xpNtVwu2diZ3DRw+K+MH0wUGaGW/1+kXqIiJdFyOFWYI0OSfjRWrn4
 vifhKaDjZQLTumfVGM1bpw1aX1cX0RjsO0y51ws7FEH7Gu2kKgDcjROJ6oRdOFpx2M
 504YdyX1JF09LzSjpbqvzLlFrbzOv+SAWxGDa2MA=
Date: Wed, 11 Mar 2020 17:06:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] drivers: soc: Fix COMPILE_TEST for IMX SCU
Message-ID: <20200311090646.GJ29269@dragon>
References: <20200306113119.56577-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306113119.56577-1-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_020653_037967_BB22C90A 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 11:31:19AM +0000, Vincenzo Frascino wrote:
> IMX SCU SoCs support COMPILE_TEST that allows to compile the driver on a
> different platform for development purposes.
> These SoCs depend on a firmware interface that is not built on COMPILE_TEST
> mode. This results in triggering the following errors at compile time (on
> arm64):
> 
> aarch64-none-linux-gnu-ld:
> drivers/soc/imx/soc-imx-scu.o: in function `imx_scu_soc_probe':
> soc-imx-scu.c:(.text+0x24): undefined reference to `imx_scu_get_handle'
> aarch64-none-linux-gnu-ld:
> soc-imx-scu.c:(.text+0xac): undefined reference to `imx_scu_call_rpc'
> aarch64-none-linux-gnu-ld:
> soc-imx-scu.c:(.text+0xd8): undefined reference to `imx_scu_call_rpc'
> linux/Makefile:1078: recipe for target 'vmlinux' failed
> make[1]: *** [vmlinux] Error 1
> Makefile:180: recipe for target 'sub-make' failed
> make: *** [sub-make] Error 2
> 
> Enable the relevant compilation units in the Makefile when the config option
> is selected to address the issue.
> 
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Thanks for the patch.  But we already queued Peng's version [1].

Shawn

[1] https://www.spinics.net/lists/arm-kernel/msg787548.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
