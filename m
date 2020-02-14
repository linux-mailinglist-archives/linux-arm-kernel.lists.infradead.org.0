Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A8F15CFF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 03:26:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4+BDVazmGa5hzD/rBG0U6azPVICLHODXTZGf/uWABo=; b=oNAe0cabL9UT72
	yxe6+y8WZaGnUIb8OCr940lqSHA4DIDnKSwUJSuSz7wbbBuLUHDUdH1TZeLHfkVU7L9n7AmG5PuFm
	Fqgs4eBMF9vfto0HlH81cq4Vb80G7zoO87e0/Bvyf4YnCHdQIMesG2priJlmXRxV1vfhNIt08nX2z
	hh1JK4eASPZQvpUcoKMeRyk+ExYCXVsFgapuyNkbvdFIeATrdvJ6bz/BILad8qPpD3wWy6zaHsPtc
	tHiKWNFnWac4RtcutSstZQZSneROBcZx2A64rXBCSaCz/i7974oQNoAcxmxVs7oGCKLlTLi3TLopq
	gmq/RA0QNs4D+n8p1uog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Qgw-0006KA-Ep; Fri, 14 Feb 2020 02:26:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Qgp-0006Jk-Bn
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 02:26:48 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 304D4217F4;
 Fri, 14 Feb 2020 02:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581647207;
 bh=yIG8YbHlXs2X9DuIszimg7LRq/KcMvgte5im0+DRV58=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jFEWGyBGndHKGVyMlG+NYfh8iM5F4wxcv6wXmo6orAg8DTEyK2PHkIWt5HZ1bw0H7
 0CeW1GZqf3mZRv23rSUsdt5VmmXBBLyTlcfvLysutvPDscWURUm813++G5kGXMW+qm
 1h/4qUl0/OKe5onN8PU3ZILSAj4J61yMHlJjDWq4=
Date: Fri, 14 Feb 2020 10:26:42 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx7ulp-evk: disable usbotg1 overcurrent
 function
Message-ID: <20200214022641.GE22842@dragon>
References: <1579747904-32614-1-git-send-email-peter.chen@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579747904-32614-1-git-send-email-peter.chen@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_182647_423442_3ED3F2F0 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 10:51:44AM +0800, Peter Chen wrote:
> At imx7ulp evk, all USBOTG1 OC (Over Current) function pins are
> used by others, and the USB driver doesn't support OC function
> through the GPIO, so we disable the OC function for this board
> as well as delete the pinctrl for it.
> 
> Reviewed-by: Jun Li <jun.li@nxp.com>
> Acked-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Peter Chen <peter.chen@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
