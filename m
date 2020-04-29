Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EE41BE249
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 17:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7iBNgET2Tr5RJgXeQMgRtwBqu+L/5OozfOiure0KV4=; b=PFiviKMo7b/E3e
	5BXhDrMZ0KxWIMlq/ZupvPFt5QlAvoz2r8WVH5hAlHjfjPALbsqAIjjVlD7nt+EbPk59QdkL7KpHu
	vpa40p4X8VDBFB20/cyZoOXFmESrSCP5fRrpW51Ggtt165jGtLIMU8vB8y+71s/IZWNJbTqgkdCxD
	h3SLa6cDHKz03VBZDVtf8niRNPfxrVao+eczugEg8K0/iNswQfpJGhE3csyY0LMaQxmbkd1xIjLLW
	MJIG5VC+l96DRXO03aKycY+Ro+D6N9NWXHCQeY/jSrjimiKVNW4P1M2TkcEzGNV7e1by6SKO62S/G
	1Gq2Qquv5QlJZkg0Etog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jToNz-0004TY-Rl; Wed, 29 Apr 2020 15:12:31 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jToNm-0004S6-3g
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 15:12:19 +0000
Received: by mail-ot1-x344.google.com with SMTP id i27so1954660ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 08:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5Dw9z3skpovx5U+Kokok0Gl+LhbKi7TC3S8cZHyqEUI=;
 b=dkPv3tWoN9rA8+Bpd+XhqvQdAVTKC5limvdKzHBCx1BarPDm57/tI78fBE7uL+DU13
 O+AdIpD3a43by+BV6dogoQY6jcRVPQzgoHMQ2/ZyLQ89a8AqDasMiHo+R7jnddEjMysW
 weDMB8rrapD3D21eqEKS/uTdXAsIUn3UizXUdAER0MkK+RQUQbyR0rmkcFB3iXfF5JjO
 V4aIZK19mtcUR+rO0sv76y5Tch4CtoYxls2o2TsK222FmVZ4jIxFjdOotGiM8ByBi9XE
 /HIbF/OzTvGtilnlXBZAlg9tzAenf1Iy9nSCfhDsZztkn6+d0LG5oWPsr4xbTHLYq7Ki
 Be1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Dw9z3skpovx5U+Kokok0Gl+LhbKi7TC3S8cZHyqEUI=;
 b=GcaZ8KjTf6WMnXL/46xZiEkmPvEk+VPj84UhpBsknlmr+9FH063LY2nlMceBCFpdCC
 LRQA4uU4I+R7Ip39N7dAVXI13hxPk0rpbdXW1jlbhJfsaqcmB5NcktxR3SNiOdz6e/B8
 UdFwzktu2/7vpAqojPlvjj0seGTunUFGjcstkDXzgTeJouizqjiPfS8oQ6RJPoKNlaj5
 accIb0S/17VBI3TDrW/pn4omCQm1Y+P76lfUORAKf+IZ4DHBBh6BJY8Sy1wdljokw08e
 EgT7dFuGPJIvPnqEdDV/Xn+Y4LTGOduy+BnvnvdqnR5yCySKzLiD1vU7h/4fP3kvv3WJ
 YmCg==
X-Gm-Message-State: AGi0PuZTdUpCC3gILnMnMx6yg5UNOlQ2TKqkw5xYtrXEKH4c8EEOXPm+
 qBA5CwuKh4WFyjKICQbHRwX0AX85lQZmbKT3QLBoPw==
X-Google-Smtp-Source: APiQypKIJWHbxA5JB3lkWleLMMBByUMCEMnUlnt76a3lN0G0WNuQD4Dk7h+dye5tgPuRW+q4nMRv5v6zQwQumku/iX8=
X-Received: by 2002:a9d:7dd8:: with SMTP id k24mr26893979otn.33.1588173135382; 
 Wed, 29 Apr 2020 08:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <1587748215-9587-1-git-send-email-tharvey@gateworks.com>
 <20200429033740.GP32592@dragon>
In-Reply-To: <20200429033740.GP32592@dragon>
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 29 Apr 2020 08:12:04 -0700
Message-ID: <CAJ+vNU23EFFjxC4gATy1d1CU7GQQZ8+p+9eiQkF_r4vhR-p+ng@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: gw552x: add USB OTG support
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_081218_151144_6C70E65C 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 8:37 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Fri, Apr 24, 2020 at 10:10:15AM -0700, Tim Harvey wrote:
> > The GW552x-B board revision adds USB OTG support.
> >
> > Enable the device-tree node and configure the OTG_ID pin.
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > ---
> >  arch/arm/boot/dts/imx6qdl-gw552x.dtsi | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> > index dc646b7..133a1e3 100644
> > --- a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> > @@ -12,8 +12,6 @@
> >               led1 = &led1;
> >               led2 = &led2;
> >               nand = &gpmi;
> > -             usb0 = &usbh1;
> > -             usb1 = &usbotg;
>
> Have some comments about this change in the commit log?
>

Shawn,

I shouldn't have removed those... will submit a v2. Thank you for catching this!

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
