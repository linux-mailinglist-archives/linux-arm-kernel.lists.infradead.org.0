Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8079A8D277
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFDxZ8Wzzm8b3cDOUE2mZ9b14NAU5cvbg5zrenZqAaw=; b=WYNPFRwR4k3lQ+
	6hT6YDYNoW70V06ZCiY/6tCnucDbmdVT0ebcvANn0dRrwczDoQyR74LbzeLIWje91ApMv5v8FSA0S
	MhbXU1ILiZMPcMjxLqq0ot62ZJOQ/BivMz216tJjOiYWVrDJAJub9xz0v9j0qL9Rwsob+Fy4AoQu7
	NqK24ZMNkkLEWxxly0zGMvqWT9rtAilYN84U5kpvh7jzHAvNpOlM9m9gHCzg13syWFBKduo/Hy8cC
	0cu5IewgzkjzA1OeL0FBtddHrSUiFVQZ+NUQBj4ls0NK3OoZZZ1ASayPux8UTV+wBXLLDNMkTne7X
	XO9n0jqOoYL8RS3vO8xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrjo-00075s-7e; Wed, 14 Aug 2019 11:46:44 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrjZ-000758-Kj
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:46:31 +0000
Received: by mail-lj1-x243.google.com with SMTP id l14so14557484lje.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 04:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HVIUs4ZIQVm7b7SR1n38pcFhXz6C3M2CIhWpAxdt8LQ=;
 b=OV6v4RpJEGTSaeN9WjacjemHo7ZUtwknpaHLLy+MEre+zyB39wCwfeJtTg+FZ8IZ+B
 OcJGOV/93rJokdOIQwig6ROI8s46ddhjgNFjuNQIRHDFv0ccHr12uxB9mmYTVVx67gy1
 s8hLywCYXHwDkDbFXcF0V4TeSFIfT3tVWiVJTVB7XNHhkoelxy83LEM1tJcaxshNsR7G
 nbvYUYuPB2OPUjvHesf9PtA8fp6EqjxvwKx+GijgH5csPsIWsi1CddxxpdnawisyZMAF
 G1GvqKTt8QXGUkeS0wAZzBsBRXx6kryesDbVbLTprqrHNM3bOGm2jgMnuynRAAZzCWXS
 SI9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HVIUs4ZIQVm7b7SR1n38pcFhXz6C3M2CIhWpAxdt8LQ=;
 b=BzNQeaxy9grpdixhA2LYtrFnI0QeupmOCZ5cuS8GIb6/YS9AtNYnpnAD/7DxPX6VgA
 PPZLp7olSW4RmYx0IZTAoYGZDu4tK0JAzCYbHKpeuYNIIoJCl795XmiRScKtxEoB6nla
 /Xz3T5Ww5Od2Z2Wwbm0F5VuLwUagvhVUI4YhC/Abk8m9KMNJvVDmdEq1r7TpSZrBy0JD
 CL6+4ioM4ONVJOIKNX4HEYw0V3S56i/zIzNQ7lSD/GKUdT/Ew+nSFYc2BuzjPrpEhfyL
 qHBDgh/ByXECgdzmbIYtQSI4Cuf0YjvzqH9GVY7gxsHMs9STSGKznM+KUSpD/9U4xxEh
 a3Ww==
X-Gm-Message-State: APjAAAV/Vu3qVBFMt/vfz93G2OMBrhwrou2WhILwgagvIFD+oAu5neeS
 Ob8inM7My/KXKpliDrSP5UsbQirXbh/rHsz2YsIX6g==
X-Google-Smtp-Source: APXvYqx8H8wf2cUfndKRitBxUVt4PunZZn7bV5z50HzDJV5mvhAjxp+vVMjixTxwiL4xvtZ+Nynqmt1s1BQ2RX367ts=
X-Received: by 2002:a2e:b4e6:: with SMTP id s6mr11087965ljm.169.1565783187372; 
 Wed, 14 Aug 2019 04:46:27 -0700 (PDT)
MIME-Version: 1.0
References: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
 <1565779731-1300-7-git-send-email-robert.chiras@nxp.com>
In-Reply-To: <1565779731-1300-7-git-send-email-robert.chiras@nxp.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 14 Aug 2019 12:44:34 +0100
Message-ID: <CAPj87rMFG=RGmfVnawbE7qX4zU7vdYxLJB__K4E3B8jcJ764KQ@mail.gmail.com>
Subject: Re: [PATCH v2 06/15] drm/mxsfb: Update mxsfb with additional pixel
 formats
To: Robert Chiras <robert.chiras@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_044629_817831_884A6BD3 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>, Mark Rutland <mark.rutland@arm.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 dri-devel <dri-devel@lists.freedesktop.org>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Wed, 14 Aug 2019 at 11:49, Robert Chiras <robert.chiras@nxp.com> wrote:
> +       case DRM_FORMAT_BGR565: /* BG16 */
> +               if (mxsfb->devdata->ipversion < 4)
> +                       goto err;
> +               writel(CTRL2_ODD_LINE_PATTERN(CTRL2_LINE_PATTERN_BGR) |
> +                       CTRL2_EVEN_LINE_PATTERN(CTRL2_LINE_PATTERN_BGR),
> +                       mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
> +               /* Fall through */
> +       case DRM_FORMAT_RGB565: /* RG16 */
> +               ctrl |= CTRL_SET_WORD_LENGTH(0);
> +               ctrl &= ~CTRL_DF16;
> +               ctrl1 |= CTRL1_SET_BYTE_PACKAGING(0xf);
> +               break;

For non-BGR formats, do you need to write RGB line-pattern back to the
CTRL2 register? Otherwise, if you start with BGR565 then switch back
to RGB565, presumably CTRL2 would still be programmed for BGR so you
would display inverted channels.

Same goes for all the other BGR/RGB format pairs below.

Cheers,
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
