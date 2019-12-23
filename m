Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09057129263
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 08:44:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r49xrvUEBhCsWBFE8y1EgecVlFCMrZdwPF3NGS5Nu+A=; b=h3A1wo9sua4ttW
	cA1xCj9XPJlb8umtHbKi5cBdpeH37+Eb6nS4WBZhfNhqUxGCDPmJIUaGUBBbyclq+F2vEBoDpJaA+
	CqDifOvr0YJcis1RSVx2BKFDE3dTjgcT7O73SO8eUCysgA0PZLp1DOPVEMQiFcfXJU9W5yApDCz2b
	Xa/tSXG+4XSTUMgqqNeNLOuYdab/mPPJkEWwDTV0bwXtAM9KylOvwmINUC61EeSmSYfuE4Q3QJcpv
	7NLAQfG/7+UsRY5L06VFs9cNwqLkr1YstsoYmDEw7WZ2x7r0tXndKJt114qWrsKLukV92m45ksS8h
	XGQfKlW/PmQclelR/DUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijIOR-0003KB-MN; Mon, 23 Dec 2019 07:44:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijIO5-00037p-1T
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 07:44:22 +0000
Received: from localhost (unknown [223.226.34.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFE69206CB;
 Mon, 23 Dec 2019 07:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577087060;
 bh=kPjCbh8YQ/u75m8hPE0XtPPZuQwgrrgX09NSbRjpULM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pXYGleqb4/QEzRZqF/huE45xNvJmLOKREZlYSZ+aNic4dNL1jLcXFqgot/posh1Zv
 NKq8kWk5HP6J5eoGaChiOJ/gx+oSKHBH71DYpU3LFubDPW/cu9I6eR26EoT9Nfl8Y1
 nJH7mi9E6qKFD3fWDhbNAtoFvZKAg+69j5PPaslk=
Date: Mon, 23 Dec 2019 13:14:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 09/14] dmaengine: ti: omap-dma: Configure global priority
 register directly
Message-ID: <20191223074416.GY2536@vkoul-mobl>
References: <20191217001925.44558-1-tony@atomide.com>
 <20191217001925.44558-10-tony@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217001925.44558-10-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_234421_212228_FC7B8A9E 
X-CRM114-Status: UNSURE (   6.92  )
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
> We can move the global priority register configuration to the dmaengine
> driver and configure it based on the of_device_id match data.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
