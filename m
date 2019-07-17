Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCA46B6D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 08:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuAm6uYUlhUburefCLDwltr2KvBzc3ez1X6YD28BFxM=; b=S9PMTXxXdTndcX
	riz6A+7riVvtVi1MuKdsKrsrwxrTdRTFJHJbgmYSxQ9Zr+zerWyU2NIFk397qWqeZrkTk3FX8r9H7
	mcdFFsrmUdsMNfWmpMO3fes36I5aPqHd4tg7s1Y0zYjq2Kusx+oL3oUW2Usb0+8meb+a1cXUcm4EC
	04D7o0gqlOow9nhyX+Q2f+ov7orNthLDx4vW1K4ahtwsVhWHt4iACJH+lE7wb/Q6bMd9C20vV+cxI
	8NjYOONQKxg/+BhiehmlZYXZv494RtwM5KeVoVbZ4VbRU/cuhApZpUAmZxBJCe6Vy19JM4L6dIcQh
	p9uDVsZ1p1QL/rcMDN/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hndeW-0004uD-GS; Wed, 17 Jul 2019 06:43:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hndeG-0004tZ-2I
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 06:42:45 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE5092173B;
 Wed, 17 Jul 2019 06:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563345763;
 bh=gdDuhx3XH8+TSHfY6ArJLp5Y6SaNs0xxYcyAMFH/vBs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cSCitkGDSY4+BuSrf+dmfLSE7mRzd9XYhEbtmGyeE0CftZrcflTe6SHbBzEyQk72f
 NuMkjdmBKJstGxN9dX4ZgNL/GtiAuPDZJE3+7xsH913J0sP6ZpKAsZxXQjCwGM3p8T
 bmMWqKwSQKuvGPaIHoAwJBsgqAP0XIZPbEQFWzbQ=
Date: Wed, 17 Jul 2019 14:42:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v5 13/15] ARM: dts: imx6sll: correct sdma compatible
Message-ID: <20190717064226.GB3738@dragon>
References: <20190610081753.11422-1-yibin.gong@nxp.com>
 <20190610081753.11422-14-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610081753.11422-14-yibin.gong@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_234244_123436_C401FEC9 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, s.hauer@pengutronix.de,
 will.deacon@arm.com, linux-imx@nxp.com, linux-spi@vger.kernel.org,
 vkoul@kernel.org, robh+dt@kernel.org, broonie@kernel.org,
 kernel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 04:17:51PM +0800, yibin.gong@nxp.com wrote:
> From: Robin Gong <yibin.gong@nxp.com>
> 
> Correct sdma compatible since ecspi errata ERR009165 has been fixed
> on i.mx6sll as i.mx6ul.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
