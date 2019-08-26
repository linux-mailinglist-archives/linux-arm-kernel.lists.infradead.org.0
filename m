Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B949D583
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 20:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7gdQYPcEPVZlCtOYwT6gK+KbvDtrooVTJUe4m+mpPQ=; b=B7ICkm/ZeqyFOt
	jue5ZT1KxvHTU0votKlKfe+xi8W5D3mgvoH4rJxJVkiCU7qtX55EAkkFa4n1kzqRQSUx5if2Ig53F
	s32SRbKdhLoPzxjhzs0amUwQoxWQ3lRrV/NuM4MCx2YrXwfCGCCEHnKJSx/IqdZt7t0vJQDXkpWua
	+ejmurfvrcgpAYKnHJkRKyzmzwYhQYR22i8QHwF490Ztf8HxvoNX6Ag99GAdkUdCEM4OTJMTIPYTT
	N7Yebep84ciMWNMt7G2IhMjXg/Uga+pld63UFxk3Scg880sP5Vug3EFME7tZl8UKhd+F8fl4QlSUl
	DaQTmf8HEV49SFjsAuug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2JQk-0004wy-FK; Mon, 26 Aug 2019 18:09:27 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JQ5-0004jH-Gu
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 18:08:46 +0000
Received: by mail-io1-xd42.google.com with SMTP id t3so39430760ioj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 11:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3xah1lt3wlvEGCrDzsIKSHmElIRBV0MEzfEYCJTIRls=;
 b=bdQxsuUWSvNpsg0AIG13yaf3RhMlQzVC7EwbV348reACqNAzHdsJrHuxOo886AFHM6
 BAdMIcvJ7+d1LwlNyHYnQtmFCMfYzjDcfqLw+A1IWJe8l+z3Z3jtGGZTnEDVtlaE0pyh
 LYkP4vRYvhARifbGhDrmehnv5FgIhTdO0ZlPCsogbihy8z6GL+0uWLpVsLQb3CRuKvJN
 zQLI6glxaQEMdTv0ChHmh7NRpQOF0ddiM/9tL0Vt9RF+vzpOnEL+rt/+IjbMuqO3BF6N
 LKgEeyo4SlDaqEpZSwhI4+T67dXuW9xcUp7n6btaElxSG2m9ixUuyPUEKOEUi695r2XF
 poOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3xah1lt3wlvEGCrDzsIKSHmElIRBV0MEzfEYCJTIRls=;
 b=rmRNY3CBH7huz0HXSSa876zSNRE+LUfM6z611dVJlheqHxkiBBMDg0xdSdyOuWFtd9
 Gv5f9fFvTW5FLRq0hfIG8y1PK+CHT2k3xwJbxecvEe46DHsbByAU2BUBFMM2Z0nXxhfK
 bpsIXPTu2vbDtcuSK30EjO+ogB+uCwKx2EmyiZKVh5cKlH/Jj5iBzj4nOvkYogDZkv7K
 Tmjs3vF8zw+Kfx0vmHhiDqsK7RYIjD527A2duBWd/fOXN2xZPb52nbqoPkK6n84nDyKG
 AwugZ9LWPnwb+mSeodXKS5vOg4fr8j9ciZjIX4UdRkki2TpfkgEhFxsIlp22GyWuybbK
 vTvw==
X-Gm-Message-State: APjAAAVeiFjP8T7LlA3lfOci9Ee4jG4gJ1dJSQ/fh6f5ip8eOf7zu8GV
 iX8p4DiwuNehC2+lpFievv80uikY6JFuTD1uH0hu2NxND70=
X-Google-Smtp-Source: APXvYqzY1l2S7dZb4q9PB6apMM06+uMptYaLxj2TPY4bAk6d/GzS5TYysGR1ZfRCTmGF0Wyx6Qt6C8fvkwK/idYfNfc=
X-Received: by 2002:a5e:a802:: with SMTP id c2mr17047667ioa.263.1566842924484; 
 Mon, 26 Aug 2019 11:08:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190731180131.8597-1-andrew.smirnov@gmail.com>
 <VI1PR04MB7023AE3910B261877892EEABEEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <20190824183108.GA14936@X250>
In-Reply-To: <20190824183108.GA14936@X250>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 26 Aug 2019 11:08:33 -0700
Message-ID: <CAHQ1cqGMXEEpXC=sihO-h6oZ3XQc6+W4TpqBZA_1EW6GCiQMWw@mail.gmail.com>
Subject: Re: [PATCH] ARM: imx: Drop imx_anatop_init()
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_110845_694760_D08F9E40 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peter Chen <peter.chen@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 11:31 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Thu, Aug 22, 2019 at 05:33:13PM +0000, Leonard Crestez wrote:
> > On 31.07.2019 21:01, Andrey Smirnov wrote:
> > > With commit b5bbe2235361 ("usb: phy: mxs: Disable external charger
> > > detect in mxs_phy_hw_init()") in tree all of the necessary charger
> > > setup is done by the USB PHY driver which covers all of the affected
> > > i.MX6 SoCs.
> > >
> > > NOTE: Imx_anatop_init() was also called for i.MX7D, but looking at its
> > > datasheet it appears to have a different USB PHY IP block, so
> > > executing i.MX6 charger disable configuration seems unnecessary.
> > >
> > > -void __init imx_anatop_init(void)
> > > -{
> > > -   anatop = syscon_regmap_lookup_by_compatible("fsl,imx6q-anatop");
> > > -   if (IS_ERR(anatop)) {
> > > -           pr_err("%s: failed to find imx6q-anatop regmap!\n", __func__);
> > > -           return;
> > > -   }
> >
> > This patch breaks suspend on imx6 in linux-next because the "anatop"
> > regmap is no longer initialized. This was found via bisect but
> > no_console_suspend prints a helpful stack anyway:
> >
> > (regmap_read) from [<c01226e4>] (imx_anatop_enable_weak2p5+0x28/0x70)
> > (imx_anatop_enable_weak2p5) from [<c0122744>]
> > (imx_anatop_pre_suspend+0x18/0x64)
> > (imx_anatop_pre_suspend) from [<c0124434>] (imx6q_pm_enter+0x60/0x16c)
> > (imx6q_pm_enter) from [<c018c8a4>] (suspend_devices_and_enter+0x7d4/0xcbc)
> > (suspend_devices_and_enter) from [<c018d544>] (pm_suspend+0x7b8/0x904)
> > (pm_suspend) from [<c018b1b4>] (state_store+0x68/0xc8)
>
> I dropped it from my branch for now.  Thanks for reporting!
>

OK, it sounds like I can submit a v2 that only removes
imx_anatop_usb_chrg_detect_disable() and keeps imx_anatop_init()
intact.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
