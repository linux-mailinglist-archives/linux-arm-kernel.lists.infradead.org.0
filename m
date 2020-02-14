Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7713815D0A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 04:38:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAZq6EquNkicBqQ548sSXlLYhQfSUTXvQpEvqdawyjk=; b=OwTb0MewvvXR7W
	F4o7QVhCt6izU1rfzQ/4tcIv1Hog2vwPhU4M+PoyLC+Sy8QbKeQYCYDxKciSkVatchlwrkqKi2bxP
	+batfwJI2FYCXlPpXZ4rCSwpvFihDcvIDX47kIStSXbhgpceqqFZMKilnRkFVg6d7GOj2atouma2K
	HV51o92zz95i28U+HQsojaTJm28xugqZMIV9Wd60QxoeeFxvH/KYzSFuP5I61ptCTkLZjBbUli2Bl
	bTsGFYkgXoKvwiVU+Wj1vJDXkoySJFnz+uueKcbHVRkfoXyGZx5S01fHwWU47PmqhaEWKyr65W0CA
	/Id7c672nkA5FC+j6AlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2RoP-0007UN-3y; Fri, 14 Feb 2020 03:38:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2RoG-0007U3-OD
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 03:38:33 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F5CB206ED;
 Fri, 14 Feb 2020 03:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581651512;
 bh=Rg5Rt8jNj529mTf1TnuXEn0bBhlKddB9sYivI+PM5mo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zCtDGbSk9HRyairt+nbcqRD0NKe9eeeiHxpuPFOzIQMR6XuXfvsgOUCZEJwrazkqk
 Pso5aSiVgJpQsvGTTJbfq1V6beXTMV+/RbGesZYI39stszfO9lBACJbK7xRHWo+2dV
 TZjdXsjrtepiy53un+rh9FUv9LBNf/rTnRb5HLtk=
Date: Fri, 14 Feb 2020 11:38:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH v2] ARM: imx: limit errata selection to Cortex-A9 based
 designs
Message-ID: <20200214033824.GQ22842@dragon>
References: <20200205224214.253098-1-stefan@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205224214.253098-1-stefan@agner.ch>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_193832_806489_9B2AD914 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson.Huang@nxp.com, arnd@arndb.de, Stefan Agner <stefan.agner@toradex.com>,
 s.hauer@pengutronix.de, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 11:42:14PM +0100, Stefan Agner wrote:
> From: Stefan Agner <stefan.agner@toradex.com>
> 
> The two erratas 754322 and 775420 are Cortex-A9 specific. The i.MX 6UL
> SoCs include a Cortex-A7 CPU and hence do not need this erratas enabeld.
> This patch moves the errata selection from the family Kconfig symbol to
> the SoC specifc Kconfig symbols where a Cortex-A9 is used.
> 
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
