Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73547CEA5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 19:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7rvDr6cX0Xr6tb8HZI4isSTTaroni38KL7EvODSExYs=; b=mah1gi7CPQCjqV
	alMtb8Fz8+swt+EiRoZLk7C8nG72f3ZqlxX43B9gOoQx/Hb1onrNWG0MnGA+ejmn5Z14371HBZ6lW
	RY8oBR2Te4v4jQ4noGEHRJzevFkF7WREY5/SHcBNi9cFmWlc3B4BPCp+0kH2z6s626bZm5JhKwZVL
	lwZjaWvb0hUAWqVz6rdXfost6D+7AdZMF+UEOr5wRvFiuO8nSpjlNnJkQkgsu3DpZT1yODOPKTkWo
	iczzahPMxh8u1WMlqQMqhNmPyC/b6molC2xQKsbMBwmVajVhLzvHE+xuGpCnhUcl0NctaMWe2pkyv
	h5H6UwBHz4c/uH96O32g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWb0-0007dF-9Z; Mon, 07 Oct 2019 17:14:54 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWas-0007cJ-33
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 17:14:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mm080KtOnLyBqIfHx4O7fkQurN0T478z2w4kEpoDaVc=; b=l9ndA5OiI6LWjL6S22yf+FBvXn
 hRASRP6kwn3i28/ygtaLOOUtX9K2r7nPWhh0RSWMUS/jQ4iTKiZfigt2U9vBZH+t03HNcNVqX8SMm
 hWxp3ZFoWYQZZLrRRLKKs2OX3PCGxtnAcxMEmHiNhD53x7wlvrorKR6qR7gKK6mAEmyo=;
Received: from p200300ccff0a88001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff0a:8800:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iHWac-0001u4-JD; Mon, 07 Oct 2019 19:14:33 +0200
Date: Mon, 7 Oct 2019 19:14:28 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Sebastian Reichel <sre@kernel.org>
Subject: Re: [PATCH] drm: panels: fix spi aliases of former omap panels
Message-ID: <20191007191428.016ddcd4@aktux>
In-Reply-To: <20191007170446.yotb24s6jhe6nx3r@earth.universe>
References: <20191007164130.31534-1-andreas@kemnade.info>
 <20191007170446.yotb24s6jhe6nx3r@earth.universe>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_101446_435737_BF4E558C 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-OMAP <linux-omap@vger.kernel.org>, airlied@linux.ie,
 omi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Tony Lindgren <tony@atomide.com>, thierry.reding@gmail.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, daniel@ffwll.ch,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 sam@ravnborg.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 19:04:46 +0200
Sebastian Reichel <sre@kernel.org> wrote:

> Hi,
> 
> On Mon, Oct 07, 2019 at 06:41:30PM +0200, Andreas Kemnade wrote:
> > When the panels were moved from omap/displays/ to panel/
> > omapdss prefix was stripped, which cause spi modalias
> > to not contain the vendor-prefix anymore.
> > 
> > so we had e.g. in former times:
> > compatible=omapdss,tpo,td028ttec1 -> modalias=spi:tpo,td028ttec1
> > now:
> > compatible=tpo,td028ttec1 -> modalias=spi:td028ttec1
> > 
> > This is consistent with other drivers. Tested the td028ttec.c
> > only, but the pattern looks the same for the other ones.
> > 
> > Fixes: 45f16c82db7e8 ("drm/omap: displays: Remove unused panel drivers")
> > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > ---  
> 
> Patch looks good to me, but you have one false positive.
> 
> > [...]
> >
> > diff --git a/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c b/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
> > index 46cd9a2501298..838d39a263f53 100644
> > --- a/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
> > +++ b/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
> > @@ -204,7 +204,7 @@ static int ls037v7dw01_remove(struct platform_device *pdev)
> >  }
> >  
> >  static const struct of_device_id ls037v7dw01_of_match[] = {
> > -	{ .compatible = "sharp,ls037v7dw01", },
> > +	{ .compatible = "ls037v7dw01", },
> >  	{ /* sentinel */ },
> >  };
> >    
> 
> The DT compatible should have a vendor prefix.
> 

oops, sorry, but I it seems that Laurent already has submitted a fix.

Regards,
Andreas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
