Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7EB7738A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 23:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phoqYUzCZNBHDiVnorAy1yQAKOWz/F+MQP1Ckx2eMk8=; b=o2ru8KIapD+P+f
	EEwx5/SBQ8FO+H2xlWR80m70kFQGADYh5Zc7gztPO/nILvWoZUkGaZ0ILiqhPAZL/mBihhbNB/ugv
	/exNscc7bLolr2h023SrEZQvMlHNUSwA3d6DiZqv72Ny21iF5Ia+i/ks3dnQrbu3rzQa2j2RiFCND
	7xq6d6ouqdfjCIJ7W85hyJRWr9IZGliivD4D0+E6YDK5mp/IxvzHoxGZyt9nTmFG7SEdzQPZhUpER
	FkcmCcA0jQ4QyUHiHkmHHyW6te5YOoqNEU59Xjmh0/fvB+Q77dnLEIG2BrDuXZii1WT2DwIi36bfE
	vBVIgKBRlU+kUn67uHAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr7uI-0008Ob-Ff; Fri, 26 Jul 2019 21:37:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr7tj-0008OE-7Y
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 21:37:08 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A24D21842;
 Fri, 26 Jul 2019 21:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564177026;
 bh=CYH+0u4ay4mcNfJRo5I8rigGJXkfv7dQBLwaCsxvPEk=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=yhsjAxMSDMSRcd819Q/CZPFuMxoGEF/4tt19x3SKqBOiwxa/t67cdVvAWMkQXVXIB
 ubtHL9gbJ+e6DgNUOq2ge2eWivA0wPL/kB1G0Td8dXYvu0HOIZ+rqON2x4NNcvoqps
 18b4Fgh+NLv73D7P6wxTnlfIGUqVViC8I4MPvK7g=
MIME-Version: 1.0
In-Reply-To: <20190723060905.GA15632@dragon>
References: <1562682003-20951-1-git-send-email-abel.vesa@nxp.com>
 <20190723060905.GA15632@dragon>
Subject: Re: [PATCH v2] clk: imx8mm: Switch to platform driver
To: Abel Vesa <abel.vesa@nxp.com>, Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Fri, 26 Jul 2019 14:37:05 -0700
Message-Id: <20190726213706.3A24D21842@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_143707_289874_0027FC12 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Shawn Guo (2019-07-22 23:09:06)
> On Tue, Jul 09, 2019 at 05:20:03PM +0300, Abel Vesa wrote:
> > There is no strong reason for this to use CLK_OF_DECLARE instead
> > of being a platform driver. Plus, this will now be aligned with the
> > other i.MX8M clock drivers which are platform drivers.
> > 
> > In order to make the clock provider a platform driver
> > all the data and code needs to be outside of .init section.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > ---
> > 
> > Changes since v1:
> >  * Switched to platform driver memory mapping API
> >  * Removed extra newline
> >  * Added an explanation of why this change is done
> >    in the commit message
> 
> Hi Stephen,
> 
> Are you fine with this version?
> 

Sure.

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
