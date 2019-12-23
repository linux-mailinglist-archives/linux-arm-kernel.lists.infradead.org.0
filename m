Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7650512926A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 08:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHftujPEiWmDzBDuLFm+GJmQdWCoyN0VPrDsZmj11ho=; b=qZ3/bxGcaVH3zA
	Q2I0lRsFdENAHIJZI+nS+/Rh1AhPQgSx09TYgfpTLFp4ZYe83oSWUiDBO7aytsLSLWRu6v/Mppm2s
	gMo4M1RT0tDLWy/3HWqw9e3QGf21rk0oBX2o+zw+kMmR1kxG8FukzREsKyGmYacOgj062nC7zF+Km
	W3bUsA4IPBmeES1TYjVc0swoAe8WNXJBgV7tTCg/0WK6I40aykl14SJqEn1xBGl39XoV7p23ci7tJ
	MwaWxdosF9k5/dd9aoJR/5vvRXw4X0jz4VGyVIPhmfAvgRuhsHLdgMV6ozrvOgBItr9pe3v/r8o4d
	jzoE34zsO2P9CN9zuCqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijIQZ-0004un-Is; Mon, 23 Dec 2019 07:46:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijIQN-0004uM-Hf
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 07:46:44 +0000
Received: from localhost (unknown [223.226.34.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D532206CB;
 Mon, 23 Dec 2019 07:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577087203;
 bh=/ZZvuta/S/+fKcCNlswYo7DuCKNxJFaMwh4jCF/2RQw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W58n12nxt2ukx1IertvKkdbIbPdNohojsPFtKdnXG0AYWFCj6ld278zTzbiHHVwOn
 UsaLuI8fAsA3Aoiu53UwKBjtqi9YEnoBPCf0wvsTTW1XVxcvAurz6DAetP+uuSRy9v
 vr543O0ovuNs4dE1A3DhXWV3RQIr3Odnoncb0NDc=
Date: Mon, 23 Dec 2019 13:16:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 10/14] dmaengine: ti: omap-dma: Pass sdma auxdata to
 driver and use it
Message-ID: <20191223074638.GZ2536@vkoul-mobl>
References: <20191217001925.44558-1-tony@atomide.com>
 <20191217001925.44558-11-tony@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217001925.44558-11-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_234643_608387_F0DBF7A9 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Vinod Koul <vinod.koul@intel.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, dmaengine@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16-12-19, 16:19, Tony Lindgren wrote:
> We can now start passing sdma auxdata to the dmaengine driver to start
> removing the platform based sdma init.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
