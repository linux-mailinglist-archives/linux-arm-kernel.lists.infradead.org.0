Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0124837F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5LXSiO+mH8wjddKORU50Un9RWC3JBUPNt+990x8RCCs=; b=R11Rhg39/BCWgn
	SnZV8XthbixZqNwnmmEXeOvhHyKj68Tt5LrGkCkut44OojzJxjParn4TX3D6h6ykgxfnCiwAONpur
	sg7MePf1BmGX8II7vk0yrOCrQL8habJ6LQcwUJeWyp7ME5FnqUZj7HkCVyUWEcetPU3q3ikOPQtow
	U4DPH8gSfTAqnfYysnUKgV13Qhgfj9RY1ybfEOnS+06NLB4WaJX5CECIbYsrjK/yasHOYAVwo0scc
	2EYLKVPZWuTqdth6E1+T2AfZkMglivBEBQOHOTf+wJkywHDNvh/uxhWaypEqc6caxWdfUlkdVylEV
	RDP9NhFocZ7dSrKzsRJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrMU-0006Y2-1b; Mon, 17 Jun 2019 13:07:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrMH-0006XJ-8e
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:07:38 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 25B9720861;
 Mon, 17 Jun 2019 13:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560776856;
 bh=YEze8d0ugX/o37Qat8tEvyzluGQMF4GPJRGRLiubo7A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T8IcNFQif6dtxeAQFZKGxX3KZE+HknYXD1IUtwMVufd9JJqg7lIVaSVTEjJir+Rab
 SuMnirjeUS+oQBFYUxHnUQhxHi58+DwOwEdO1D9ysmVnAOAziOQszhXuyYVHA9lUZ+
 rMqfHFhPYT1DTT3aoqSd64zw4agHKe7c7Ldjsw8Y=
Date: Mon, 17 Jun 2019 15:07:34 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH, for GregKH] ARM: omap1: remove unused variable
Message-ID: <20190617130734.GA15784@kroah.com>
References: <20190617125521.1553103-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617125521.1553103-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_060737_318857_3F338E61 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Paul Walmsley <paul@pwsan.com>, Kevin Hilman <khilman@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 02:55:02PM +0200, Arnd Bergmann wrote:
> The cleanup of the debugfs functions left one variable behind that
> should now be removed as well:
> 
> arch/arm/mach-omap1/clock.c:1008:6: error: unused variable 'err' [-Werror,-Wunused-variable]
> 
> Fixes: d5ddd5a51726 ("arm: omap1: no need to check return value of debugfs_create functions")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-omap1/clock.c | 1 -
>  1 file changed, 1 deletion(-)

Oops, sorry about that, odd that 0-day never reported it :(

I'll go queue this up now, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
