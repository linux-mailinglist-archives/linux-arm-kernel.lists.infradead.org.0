Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3524E1CDD14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e9FLzjIlJb+5HvJnXgHIxkiMwQSA7wveTglPrXkMGxk=; b=ZafutBD0sJRprS
	7HToQ5C8L6+LJZ3vAoBubxF7Sq6s0RcnrOnHBFa2+Qsd7cojOeDY9IbgdUkAuEURMl2CSRIibi0Bp
	O+EQ/ih0+St+aqHYY7z6lUtCFVNHu5ZBGgCFQjlImysg/mOZdVzCaIsquDBoZpVyYcMP6O5kcOYHp
	7YtW3yyW4La23X/6F2QrDCTNiT7cxccZ1y9D2tSC2gdqWRwIuAeZ611uEuANvoven6cctZwMfX89a
	8BhTCEV3JvREeH3+mTnz4chFSYwCi9sfpTYw5vjcXVt/xbvEaV3iO09JAJkHLbkCZ7EOUML0WKc4v
	2a+pw7B9g+83ChMDhxVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9NP-0000C6-QK; Mon, 11 May 2020 14:25:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9N1-0008SZ-7E
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:25:28 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2128A20720;
 Mon, 11 May 2020 14:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589207124;
 bh=Mog0uHKNGC4M58mR6XZNypAnj4EbLBN8Kksnmu+paY4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hvmpmyVrRNbi0A3YvOn3ZCPJYU+VTX5gO2746dD3N6Hv4Hlu5VcceNIHCjx3N4t9g
 /rQxL3rh/3DQqjaTbAq/aivalGVLtQEIfXKEPWc7OeJxiMmPAj/45hkdx/0y7E8uHj
 BL29kx1UHt5XgWMjZcffDrSgz3SjeObAqGDbUyDw=
Date: Mon, 11 May 2020 22:25:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V4 0/4] ARM: imx7ulp: support HSRUN mode
Message-ID: <20200511142509.GA26997@dragon>
References: <1586954449-17463-1-git-send-email-peng.fan@nxp.com>
 <DB6PR0402MB27607B567D3FD7731A41E75688A50@DB6PR0402MB2760.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB6PR0402MB27607B567D3FD7731A41E75688A50@DB6PR0402MB2760.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_072527_346352_EB4C96DE 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 06:27:52AM +0000, Peng Fan wrote:
> > Subject: [PATCH V4 0/4] ARM: imx7ulp: support HSRUN mode
> 
> Ping..
> 
> Thanks,
> Peng.
> 
> > 
> > From: Peng Fan <peng.fan@nxp.com>
> > 
> > V4:
> >   Fix dt_bindings check
> >   The same patchset was wrongly posted as V2,
> >   https://patchwork.kernel.org/cover/11485107/
> > 
> > This is a splited part from V2:
> > ARM: imx7ulp: add cpufreq using cpufreq-dt
> > https://patchwork.kernel.org/cover/11390589/
> > Nothing changed
> > 
> > The original V2 patchset is to support i.MX7ULP cpufreq, still waiting the
> > virtual clk being accepted. so to decouple, this patchset only takes the run
> > mode part.
> > 
> > Peng Fan (4):
> >   dt-bindings: fsl: add i.MX7ULP PMC binding doc

Need an ACK from Rob on this new binding.

Shawn

> >   ARM: dts: imx7ulp: add pmc node
> >   ARM: imx: imx7ulp: support HSRUN mode
> >   ARM: imx: cpuidle-imx7ulp: Stop mode disallowed when HSRUN
> > 
> >  .../bindings/arm/freescale/imx7ulp_pmc.yaml        | 32
> > ++++++++++++++++++++++
> >  arch/arm/boot/dts/imx7ulp.dtsi                     | 10 +++++++
> >  arch/arm/mach-imx/common.h                         |  1 +
> >  arch/arm/mach-imx/cpuidle-imx7ulp.c                | 14 ++++++++--
> >  arch/arm/mach-imx/pm-imx7ulp.c                     | 25
> > +++++++++++++++++
> >  5 files changed, 79 insertions(+), 3 deletions(-)  create mode 100644
> > Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> > 
> > --
> > 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
