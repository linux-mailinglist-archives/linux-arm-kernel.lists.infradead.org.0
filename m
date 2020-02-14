Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC3515D0AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 04:40:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZf06nWdoC5sjvHGia6HVDERmxVN5lL4fjTE1zacq1A=; b=kR4GqRGCgb1qHo
	lFqZyw5sgggL1FAjVcUJQD+4Coac005lKVcvVgexDSH2wmS1U7dKdFBLgdLLKSz8/mX6n4vFdFb6D
	HXo5E/plCHDnLeiRqgK8R6yanfyYv1koMVK56vvXIzyW1wSQi40lIUkY/F1HG4+HZE/cu3qr05zAd
	FzhbtKu+sFYmpxISsJT+sMbIGBX6L79xJ0mv1JnUxmmlwpsCbKXsh+UxACTdASTu/+9GzGxIM+gUg
	Emp1+ViSZv+3B47o4RJ7cjyaNVFlL1IFzVBaOgRiWPuXHSD2x39KYIXyROxphcywSZdrudPnRauwe
	DZtX0EcCmyHzY074ClDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Rq0-0000fJ-Ke; Fri, 14 Feb 2020 03:40:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Rpn-0000Le-Rb
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 03:40:09 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1877D206ED;
 Fri, 14 Feb 2020 03:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581651607;
 bh=I0SXNiBQ/dripHcfy1hs98Y2yp5mekzCc8CsjZHMorE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wsBFkoUyopb2IzuOGEMS+azX9KztOzdQ1MH2po6DGegBegDhUCpGl01XzC2Fn0wJI
 JtEhGZuV27oje32ofd3z8Xe4Tqsyu/eYjFSrqrI+N6Jzirw/lSjtAmjUAlS04Vyxlt
 4nhdVGKlvPZYd+11f9gG9JDmo2la7hNvwX+qUhkg=
Date: Fri, 14 Feb 2020 11:40:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yangbo Lu <yangbo.lu@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1088a: support eMMC HS200 speed mode for
 RDB board
Message-ID: <20200214034001.GR22842@dragon>
References: <20200204040928.32320-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204040928.32320-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_194007_954839_0C0D82DF 
X-CRM114-Status: UNSURE (   9.41  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 12:09:28PM +0800, Yangbo Lu wrote:
> This patch is to add eMMC HS200 speed mode support on ls1088ardb
> whose controller and peripheral circut support such capability.
> And clocks dts property is needed for driver to get peripheral
> clock value used for this speed mode.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
