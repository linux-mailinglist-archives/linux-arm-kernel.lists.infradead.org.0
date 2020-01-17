Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5166F140392
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 06:29:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M48V8QRJeaKu9nvyyoFV1YsonV5zCTHkUJHv240Z4QA=; b=V7xkQhz8Ze5Bc/
	+XCOj/DbbRUXcRiLhFWWHZ+nsik7qYS1JKVf6tKzXEUimzIxLb7FI8WDCzF/QiQG9OvYl9mVKqAnD
	bCPsd4EuSvuiKtsXSEsZUOh2X1BZoUnBjHPdcl8FvHbfQOOq7FO44imRV0x+0f1Xcw/hp2Qyj/gt2
	YgsOQV0L8SXyaEexWo9LjZJJJ5Gve/0yKWkOXj4zPneDDEv1289yGAq47Dcpaey/HxRoEMWUh+Hc+
	mGhBu/K7O7RIhFheotf1rVgtyzwCs1C2c5JIu51h48i4Jv8pQVoLRIqtKqrtxQDsTTZHt1sJp0Z6j
	g5JMXAsAL1gb5sgqr/PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isKCE-0003BG-2g; Fri, 17 Jan 2020 05:29:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isKC3-0003Aw-Ng
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 05:29:17 +0000
Received: from localhost (unknown [122.182.218.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F37342072E;
 Fri, 17 Jan 2020 05:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579238953;
 bh=/clOrGLn8OAp1OI6m5X00wsw+u3Jo3xhtsfAEOlmqMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nldw1FKn8NYMiMI0PeNeTNHGuNAZjOY3u9nlRhXuBzjE3j69A/60TQD3j1xoq6P23
 7Wlj6W/WTPPJoDR4gIKC/1lVunYwMx10NrxFqlT3iSRm7h11X9JptdMf14LSusRiub
 etVheOkx6KhLwn0tT0jbzMvuHDxdr6eX6QZdPwok=
Date: Fri, 17 Jan 2020 10:59:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: santosh.shilimkar@oracle.com, Olof Johansson <olof@lixom.net>
Subject: Re: [GIT_PULL] SOC: TI Keystone Ring Accelerator driver for v5.6
Message-ID: <20200117052907.GT2818@vkoul-mobl>
References: <1579205259-4845-1-git-send-email-santosh.shilimkar@oracle.com>
 <20200117000358.fe7ew4vvnz4yxbzj@localhost>
 <148b6ec3-6a8e-ced8-41b3-3dffd5528ed6@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <148b6ec3-6a8e-ced8-41b3-3dffd5528ed6@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_212915_793397_874D485D 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: arnd@arndb.de, khilman@kernel.org, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, soc@kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Add Peter

On 16-01-20, 21:05, santosh.shilimkar@oracle.com wrote:
> On 1/16/20 4:03 PM, Olof Johansson wrote:
> > Hi,
> > 
> > On Thu, Jan 16, 2020 at 12:07:39PM -0800, Santosh Shilimkar wrote:
> > > Its bit late for pull request, but if possible, please pull it to
> > > soc drivers tree.
> > > 
> > > The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> > > 
> > >    Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> > > 
> > > are available in the git repository at:
> > > 
> > >    git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/drivers_soc_for_5.6
> > > 
> > > for you to fetch changes up to 3277e8aa2504d97e022ecb9777d784ac1a439d36:
> > > 
> > >    soc: ti: k3: add navss ringacc driver (2020-01-15 10:07:27 -0800)
> > > 
> > > ----------------------------------------------------------------
> > > SOC: TI Keystone Ring Accelerator driver
> > > 
> > > The Ring Accelerator (RINGACC or RA) provides hardware acceleration to
> > > enable straightforward passing of work between a producer and a consumer.
> > > There is one RINGACC module per NAVSS on TI AM65x SoCs.
> > 
> > This driver doesn't seem to have exported symbols, and no in-kernel
> > users. So how will it be used?
> > 
> > Usually we ask to hold off until the consuming side/drivers are also ready.
> > 
> The other patches getting merged via Vinod's tree. The combined series
> is split into couple of series. Vinod is going to pull this branch
> and apply rest of the patchset. And then couple of additional consumer
> drivers will get posted.

Yeah the TI driver series has been reviewed and was 'waiting' for
dependency to be resolved before I could apply them
FWIW here is the series under consideration: https://lore.kernel.org/dmaengine/20191223110458.30766-1-peter.ujfalusi@ti.com/

> > Also, is there a reason this is under drivers/soc/ instead of somewhere more
> > suitable in the drivers subsystem? It's not "soc glue code" in the same way as
> > drivers/soc was intended originally.
> > 
> These kind of SOC IP drivers, we put into drivers/soc/ because of lack
> of specific subsystem where they fit in. Navigator was also similar example.
> 
> Regards,
> Santosh

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
