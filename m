Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 943F6CB8CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 13:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mo8T0pXmnQHUr1OxI4Ay7hhw5H3QAlMv6dwMKN6uTic=; b=W4KZ6EkD4bxNxH
	yGpNwdxg1njHHHfXe0gYVN/vuy8vjfRQ09icjmP0MTjIA2i3IzvFeK4iEE9U7xbjYo9lPlb7qisC5
	2e7B26ICyl+iO0psHsPWNvdrj2agUPm+bLUYY3NAu+Ew8HwZBsr7VjjzNsShq1tN/DlDzDPKa9bXG
	BRuz+uHq1P0ogOIeR0xH1YNhDxdwBqOubL1bgvCYcnHGL7HDneipNC0XbMHn0o/ceggZc1hou5kXo
	805mEZpffY5LKMPpjJzSs44bcr+Oe6Dw/bmzg+S5Yc+Fsvr2tMk3jl1OcEMaNUuQbViesq2JrwgZ/
	2uzXYExkggzlP0d9kCCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGLJX-0000UC-3Y; Fri, 04 Oct 2019 10:59:59 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGLJN-0000Th-J6
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:59:51 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 59937634C87;
 Fri,  4 Oct 2019 13:59:04 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1iGLIc-0002PR-Nb; Fri, 04 Oct 2019 13:59:02 +0300
Date: Fri, 4 Oct 2019 13:59:02 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v4 2/2] media: i2c: Add IMX290 CMOS image sensor driver
Message-ID: <20191004105902.GM896@valkosipuli.retiisi.org.uk>
References: <20191003095503.12614-1-manivannan.sadhasivam@linaro.org>
 <20191003095503.12614-3-manivannan.sadhasivam@linaro.org>
 <20191004092336.GL896@valkosipuli.retiisi.org.uk>
 <20191004101902.GA19685@mani>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004101902.GA19685@mani>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_035949_813593_004DDCD6 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

On Fri, Oct 04, 2019 at 03:49:02PM +0530, Manivannan Sadhasivam wrote:
> Hi Sakari,
> 
> On Fri, Oct 04, 2019 at 12:23:36PM +0300, Sakari Ailus wrote:
> > Hi Manivannan,
> > 
> > On Thu, Oct 03, 2019 at 03:25:03PM +0530, Manivannan Sadhasivam wrote:
> > > Add driver for Sony IMX290 CMOS image sensor driver. The driver only
> > > supports I2C interface for programming and MIPI CSI-2 for sensor output.
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > 
> > Could you remove the unneeded ret variable from imx290_power_on() and
> > unneeded goto in the same function?
> >
> 
> yep, sure.
>  
> > The MAINTAINERS entry belongs to the first patch adding new files.
> > 
> 
> You mean the bindings patch? If then, sorry no. Usually the devicetree bindings
> belongs to a separate patch and that is what perferred by Rob. I prefer the
> MAINTAINERS entry in a separate patch but I've seen subsystems maintainers
> asking to squash it with the driver patch. But squashing it with bindings
> patch seems weird to me.

This has been an established practice at least in the media tree. The
MAINTAINERS change is small, and bindings come before the driver. And the
MAINTAINERS change needs to come no later than files are being added, or a
checkpatch.pl warning follows --- which is entirely reasonable. You could
put the MAINTAINERS change to a separate patch, yes, but I personally think
it fits fine with the DT binding patch.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
