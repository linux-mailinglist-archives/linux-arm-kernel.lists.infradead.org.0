Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1198ED36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GjyPcWSPYcj1hQuvtfaYpgC6XUFkULEQ3Ep+9WHyBU=; b=dUKjXYHmjjqFuJ
	MMaKgEu4ZRsdkl2wEO/O25hDPxZwIeCs26iRdIbOa7n4cg5uk4nrGCLHKycfKomTHgaNXlhMCDWqE
	Cb0tj999wAfnDpefZ7SgaKft2Dw1AuTZoOZQL0dJKkC5S9QTYgtZRZ+6nACgG/0TRDoPT8ILB8q7a
	N3H58YwmFCk/HfKiv95svAe8xR5JzwARGVPzCjnOAq/8BYfLoFHLhq6s96weILiJdyN+xxvihvlmx
	Pe7YYcu57f12b1GsibnHUqoYNnJtw1ci8Int4IQdKXOmM7EMaHCR4tmzvcEVX6SUElF3bnd3z6OBI
	t9dqtvIX8eukI/w7zf9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyG43-0002pB-11; Thu, 15 Aug 2019 13:45:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyG3k-0002md-GM; Thu, 15 Aug 2019 13:44:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D6F2206C1;
 Thu, 15 Aug 2019 13:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565876696;
 bh=xHL7U8LXby2GE5m/PlxhS+xac8sl0iPOcUeQV/Pjz8E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PC8WAXp92zjaBty293YVJecMMUweIDE44Ugt7uH6Ok00/bCvU/kaX/egbrfVo8Y2G
 TqmCpDRcVrh9mwsSxAK7qiKnJos1VQeqo+G79BDcXQvLGfRXaM51eImoxPckfn/E28
 ayIZtg3YeTpUm6x8H+7AC3z8TQ5SScTNPBO6leqc=
Date: Thu, 15 Aug 2019 15:44:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v6 5/8] clk: mediatek: Add MT6765 clock support
Message-ID: <20190815134453.GB3372@kroah.com>
References: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
 <1562924653-10056-6-git-send-email-macpaul.lin@mediatek.com>
 <20190815002721.A71C72083B@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815002721.A71C72083B@mail.kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_064456_562019_882AB588 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 wsd_upstream@mediatek.com, Marc Zyngier <marc.zyngier@arm.com>,
 Sean Wang <sean.wang@mediatek.com>, Loda Chou <loda.chou@mediatek.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Mars Cheng <mars.cheng@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 linux-serial@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Owen Chen <owen.chen@mediatek.com>,
 CC Hwang <cc.hwang@mediatek.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 05:27:20PM -0700, Stephen Boyd wrote:
> Quoting Macpaul Lin (2019-07-12 02:43:41)
> > diff --git a/drivers/clk/mediatek/clk-mt6765-audio.c b/drivers/clk/mediatek/clk-mt6765-audio.c
> > new file mode 100644
> > index 000000000000..41f19343dfb9
> > --- /dev/null
> > +++ b/drivers/clk/mediatek/clk-mt6765-audio.c
> > @@ -0,0 +1,109 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) 2018 MediaTek Inc.
> > + * Author: Owen Chen <owen.chen@mediatek.com>
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2 as
> > + * published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> 
> Please use SPDX tags.

To be specific, _only_ the SPDX tag.  There is an SPDX tag on this file,
and the others, it's just that the license text is no longer needed with
that.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
