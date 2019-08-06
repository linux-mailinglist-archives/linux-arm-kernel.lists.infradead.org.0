Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8269F82ACB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 07:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGeY04WiuRxQB+3G27GQcrg2VDpGqddMAg3RMAhNvgA=; b=UN6rn+OZZTFoGT
	Zh0UwGsHkJ6Vexf3pGrNgLNpF/NdlnIIpqS5vQpxCfU9AmZXH7itxZv02RQEoF8LvfdihsCyELi3L
	k6sv04sqC2Qi3vPI0HHdnMQDxYhcnNDT+wiosTkFBB0RQZuMb3AA6WvqTRoz3k4WKUxVB5xzhsh7f
	+FnIdGqHlqPc3PYcNw4KyvaEvF1LwEOdjYYmf9I9TBlRZhFX5M32Fvw68Xi6XsdD4Zd4LZkjCKsiT
	ArN1hKwS8RUK3SoD4ujIkJNo6ODp2P2mGZm/3Fhpk1JoK83PhEbzsYi88o5z6FjUQTbitWGWWFvSb
	Qjy/FcHMCH5perkllmkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hurqx-0002Pl-Px; Tue, 06 Aug 2019 05:17:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurqj-0002HU-Cp
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 05:17:30 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88A982147A;
 Tue,  6 Aug 2019 05:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565068649;
 bh=mIX7WQg12oxFi0EYT0MjTjIjoQDsLIyCeV8XnPtZB5s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JE2EwKSk0DmNy5DMoqIM86yzYzj1gpF+ja1+ZC2r5FbLY/r4b4EQLZSBdQr3YPlFE
 H9rNQR9nJeiLgiQ2Xu26ZW5GTjLcLLYcz/5AlkWtJz0QYlMSjxoCsVO+r1XzyF00qe
 2iZrvWVG/YRMZjO26D7MV+3+TfRH0rOpw0anFJIo=
Date: Tue, 6 Aug 2019 07:17:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Luis Araneda <luaraneda@gmail.com>
Subject: Re: [PATCH 1/2] ARM: zynq: support smp in thumb mode
Message-ID: <20190806051726.GD8525@kroah.com>
References: <20190806030718.29048-1-luaraneda@gmail.com>
 <20190806030718.29048-2-luaraneda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806030718.29048-2-luaraneda@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_221729_475845_DBFA687B 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, stable@vger.kernel.org, michal.simek@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 11:07:17PM -0400, Luis Araneda wrote:
> Add .arm directive to headsmp.S to ensure that the
> CPU starts in 32-bit ARM mode and the correct code
> size is copied on smp bring-up
> 
> Additionally, start secondary CPUs on secondary_startup_arm
> to automatically switch from ARM to thumb on a thumb kernel
> 
> Suggested-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Luis Araneda <luaraneda@gmail.com>
> ---
>  arch/arm/mach-zynq/headsmp.S | 2 ++
>  arch/arm/mach-zynq/platsmp.c | 2 +-
>  2 files changed, 3 insertions(+), 1 deletion(-)

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
