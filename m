Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4187613575E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gp+01/s0nPpY8WihksZGNKO5RQ2ezMqDI27ikdZXgv8=; b=JV2/7pJQNPU0Xw
	2mtVIDlsH5lTxIKGrlmu/kj168ZZOjLu0mAmV7B6bSdhDErKybC1vG3qEGA8oGXjRi5hTSoJpANk/
	xINwXvGQuIdNvoiEU34wnIUdjXoutqSkZvGvHlibNcApHbU/28ZruRYQE3V/VAY7IXa9NCm6wVe2u
	4SVwQGXAYTv95pFegmR4wiz2vLA9IZ7z1LgvCt/9sABtfxD7dc+ZLXO1eu/kywcCkGzUcpjNZlPGK
	cyT3hZS9zhbji0ojNsWP9qRPAjJ7JNz0OwMD5tGaW232OEjIbjDTbaCs1LNlm1o4NTCnFggqI6k6o
	70Cn4MHpvbiYmmHm/9Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVNA-0007q0-Np; Thu, 09 Jan 2020 10:49:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVN3-0007p7-R8
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:48:59 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7688D2067D;
 Thu,  9 Jan 2020 10:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578566936;
 bh=5kjb4RoCfMIaDZCVnC/sXJA7vuX0Fa/Imd5LZVK+Nn4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G9wUrSCV2mkeS2OiIkXfip54plZvxVLGk2MZmBPamu9qbuk+vo3JJstzZhZC/geNM
 RE2SE78G4pCdk4k+JJIQPEFGnl+N1G+G9p8n1dAjPO6V0przfF4sVN7Nn8kiye6r73
 HIhSZALp6BYOdxRh6VBT1h+fL85B99xe+zHbalkI=
Date: Thu, 9 Jan 2020 18:48:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: imx: only select ARM_ERRATA_814220 for ARMv7-A
Message-ID: <20200109104847.GS4456@T480>
References: <20200107215157.1450319-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107215157.1450319-1-arnd@arndb.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_024857_897635_7992C90B 
X-CRM114-Status: GOOD (  10.12  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 10:51:39PM +0100, Arnd Bergmann wrote:
> i.MX7D is supported for either the v7-A or the v7-M cores,
> but the latter causes a warning:
> 
> WARNING: unmet direct dependencies detected for ARM_ERRATA_814220
>   Depends on [n]: CPU_V7 [=n]
>   Selected by [y]:
>   - SOC_IMX7D [=y] && ARCH_MXC [=y] && (ARCH_MULTI_V7 [=n] || ARM_SINGLE_ARMV7M [=y])
> 
> Make the select statement conditional.
> 
> Fixes: 4562fa4c86c9 ("ARM: imx: Enable ARM_ERRATA_814220 for i.MX6UL and i.MX7D")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
