Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9698CCDD5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 04:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tm5LIS1iJNM0pevxZr/q5vyk1dZAqotDHFNV7a/6Im8=; b=KAWQDx0LYe5fV0
	4xbB7SiAPq+BidW/godo2ZOc9xUEUtOBOG/Iuie8fEhkS0KQGpjFoWBAa4XNqOZ22S96AcgIRKyig
	PXNAPhLNE5tE6sUWsfFuTvftYDzEn064U0BZaaNK/1MtrvP2OAwiGLNxI1jsBg8EsSpr+BthfphcS
	HQPgrmnKnU5qsBkt2VSm2qr1jB6kvF49VY9yQS5Ts8wBQ0Pz8amZNSiKqc7170um4nSiIJuz31qtJ
	St7dfaGRKcV6YVrU3o41XVKlOKMiuwFdf06EWb6CYbIBHT0bqzKETJimMZBN/ki8HdWysmD/AdR6p
	WOeU8xWeJnZquZOVPyeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGvwu-0005V0-Mo; Sun, 06 Oct 2019 02:07:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGvwm-0005UO-Ho
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 02:06:57 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A213920830;
 Sun,  6 Oct 2019 02:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570327616;
 bh=BkOO3DsCtE+mbkWqKgQJtpCBISncwFbyatXA9ingBL4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QQq6Axc1bf1JV4NkdkV+PijtIToxK79wlZ6Cu/3txeVkrKlSgXLsyJ6YeqRKxzSLO
 5TaQNHnthkMlutaVCMvffDh9i8XWueMZVCtuvfvdsUGbQHznD/6au6QKUx71MCh700
 uu/g6M0NSRsJP9TYpdu9qQraDbXQnQnn635F/gkQ=
Date: Sun, 6 Oct 2019 10:06:42 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH 0/2] i.MX GPC DMA warning fixes
Message-ID: <20191006020640.GL7150@dragon>
References: <20190906103401.22294-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906103401.22294-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_190656_609333_29DE19EC 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 12:33:59PM +0200, Lucas Stach wrote:
> Hi all,
> 
> those two patches get rid of an annoying boot warning on all i.MX6+
> devices, as the generic OF DMA code tries to forcefully configure the
> DMA capabilities for the virtual GPX power domain devices, which will
> never do any DMA.
> 
> This solution isn't the most elegant, as we are making up a 0 DMA mask
> to silence the warning instead of skipping the DMA configuration
> completely. A previous submission of this change for just the GPC v1 [1]
> was shot down for this reason. But then we haven't made any progress in
> fixing this in a better way, as other systems depend on the forceful
> OF DMA configuration to work correctly. So we are stuck between a rock
> and a hard place here.
> 
> IMHO we should accept the slight uglyness of this solution in order to
> get rid of the warning now, as it is confusing users into thinking their
> kernel configuration or system setup is faulty, while everything is
> perfectly in order.
> 
> Regards,
> Lucas
> 
> [1] https://patchwork.kernel.org/patch/10621589/
> 
> Lucas Stach (2):
>   soc: imx: gpc: set DMA mask for PD platform devices
>   soc: imx: gpcv2: set DMA mask for PD platform devices

Please copy Arnd for comments.

Shawn

> 
>  drivers/soc/imx/gpc.c   | 1 +
>  drivers/soc/imx/gpcv2.c | 1 +
>  2 files changed, 2 insertions(+)
> 
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
