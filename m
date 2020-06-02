Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 757681EC5B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 01:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xu1aQYbQzS2mXjkNZqREd9GlXVNF3TCnjA4ZvGZnUQE=; b=emebvBrYYSDHEQ
	fKZXC5NJhdkfxIUw3QNX+i0hzJpoef4Y3MAZipsDSxa90mPeyCx+JmrHhgH1bBw2wwjQ7VNdRLP4B
	USJS8nxKnCJBx5DsdphvwywQu8RuWFySbqFzuJ+psvmghtJUvw0JF9RsZ8UHwNVB3FzJp1XwuRohL
	R1IM9+NFODtNPf0dcZ5kJqqmBdoJgpb5bPZtdFyx4IVjffOoi8134/fM2HQVL+/h5XI6SPxDy+rbR
	LMAEHUTWZ4i9Y6AWXQGXAYbwY67y3Bg43btCvk3MswiyNJRjNNGT0jvHiNtVn75DeSq6wXOdGk9GO
	rZiN6E3cP3gjNa/K/QaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgGLH-0005Y4-R1; Tue, 02 Jun 2020 23:29:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgGLA-0005Wq-TT; Tue, 02 Jun 2020 23:29:06 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B9A4F2A4;
 Wed,  3 Jun 2020 01:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1591140535;
 bh=lXkvj1T0Wpo9a3y6ncv9G8LcEGUh4n2+D7BDgxV7xmQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O+jYNNIuc7Edhz9qSOLPWtjOOspHJR6sOJ1VTxt8mWv7PTUD4KHv7Bi52BjyGkW/r
 SPcKr1108TkGVpYbGcMD7VIXIU62iM61DoNwRVoD/AdEqW+0hQ9RoWYbslQsQwt1yr
 +GtD4Yiq4fY+j0DmdUIkbriof9U9ZSvbUBZh1Hwg=
Date: Wed, 3 Jun 2020 02:28:40 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH 1/7] drm/rockchip: prepare common code for cdns and rk
 dpi/dp driver
Message-ID: <20200602232840.GP6547@pendragon.ideasonboard.com>
References: <cover.1590982881.git.Sandor.yu@nxp.com>
 <d3d707cf37e7928a839071242c752779061cc094.1590982881.git.Sandor.yu@nxp.com>
 <CACvgo52NeUSQV5p8+4DkCjpkv12cs8fCkQqy4MFn8pVaorVaHg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvgo52NeUSQV5p8+4DkCjpkv12cs8fCkQqy4MFn8pVaorVaHg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_162905_099555_C216FD5B 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, sandor.yu@nxp.com,
 Neil Armstrong <narmstrong@baylibre.com>, Sandy Huang <hjc@rock-chips.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>, dkos@cadence.com,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 02:55:52PM +0100, Emil Velikov wrote:
> On Mon, 1 Jun 2020 at 07:29, <sandor.yu@nxp.com> wrote:
> >
> > From: Sandor Yu <Sandor.yu@nxp.com>
> >
> > - Extracted common fields from cdn_dp_device to a new cdns_mhdp_device
> >   structure which will be used by two separate drivers later on.
> > - Moved some datatypes (audio_format, audio_info, vic_pxl_encoding_format,
> >   video_info) from cdn-dp-core.c to cdn-dp-reg.h.
> > - Changed prefixes from cdn_dp to cdns_mhdp
> >     cdn -> cdns to match the other Cadence's drivers
> >     dp -> mhdp to distinguish it from a "just a DP" as the IP underneath
> >       this registers map can be a HDMI (which is internally different,
> >       but the interface for commands, events is pretty much the same).
> > - Modified cdn-dp-core.c to use the new driver structure and new function
> >   names.
> > - writel and readl are replaced by cdns_mhdp_bus_write and
> >   cdns_mhdp_bus_read.
> >
> The high-level idea is great - split, refactor and reuse the existing drivers.
> 
> Although looking at the patches themselves - they seems to be doing
> multiple things at once.
> As indicated by the extensive list in the commit log.
> 
> I would suggest splitting those up a bit, roughly in line of the
> itemisation as per the commit message.
> 
> Here is one hand wavy way to chunk this patch:
>  1) use put_unalligned*
>  2) 'use local variable dev' style of changes (as seem in cdn_dp_clk_enable)
>  3) add writel/readl wrappers
>  4) hookup struct cdns_mhdp_device, keep dp->mhdp detail internal.
> The cdn-dp-reg.h function names/signatures will stay the same.
>  5) finalize the helpers - use mhdp directly, rename

I second this, otherwise review is very hard.

> Examples:
> 4)
>  static int cdn_dp_mailbox_read(struct cdn_dp_device *dp)
>  {
> +"  struct cdns_mhdp_device *mhdp = dp->mhdp;
>    int val, ret;
> 
> -  ret = readx_poll_timeout(readl, dp->regs + MAILBOX_EMPTY_ADDR,
> +  ret = readx_poll_timeout(readl, mhdp->regs_base + MAILBOX_EMPTY_ADDR,
> ...
>    return fancy_readl(dp, MAILBOX0_RD_DATA) & 0xff;
>  }
> 
> 5)
> -static int cdn_dp_mailbox_read(struct cdn_dp_device *dp)
> +static int mhdp_mailbox_read(struct cdns_mhdp_device *mhdp)
>  {
> -  struct cdns_mhdp_device *mhdp = dp->mhdp;
>    int val, ret;
> ...
> -  return fancy_readl(dp, MAILBOX0_RD_DATA) & 0xff;
> +  return cdns_mhdp_bus_read(mhdp, MAILBOX0_RD_DATA) & 0xff;
>  }

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
