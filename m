Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C801921047
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 23:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgtpnrZxi9f32s5pKBB84Y+Ub2nRvvGBd/f4dUKiANo=; b=UyN5VBj8zUjz3h
	HgBrVi6lQeoDRC6tRPvY9bgDI6oveJ+t3rZUWXRXa5kCYrlCd1gQFHle1poePdoWbf7q3UCt+wRxY
	WCF+2NjduPv42C/hceGTvKp8gngDmpqTAoOpPFGMUNYbUcrsePtVSTTUux/H6DL4dM8ysj8ggJaLD
	RMvzobllTYpO/F3cbNz1YqvqVNsmBT3JER/Q5i7mMjTuAsD9ef2w+BGVAnB0OclYDRDE1T93ViUr1
	vqjEYQVf4ObIUxMB6VPL8WZtRf5EDhbaDhgIs6cl/zxU2JpnQdoFuIPciHtHyIPS+xmsOLYtCh5wI
	0s0T7AvHlRRKDrzRuH5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hROHt-0005QJ-Bz; Thu, 16 May 2019 21:51:41 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hROHT-00055Z-Dj
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 21:51:18 +0000
Received: by mail-lj1-x242.google.com with SMTP id h21so4420954ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 14:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fcv3PcDyuwBVIaXE7Jzbkzsqtk1BsDedmSudaZn9+cI=;
 b=RQvFmlmSN4bi5YE0SrKTzQgqA3v136k6zWYl6YGk7Qw+F5ZELyMLUk4ykWoefHzmtG
 c5WfU21UCI0UDq7xuPvZQ62ff3Pb8qPeliUObEP5svuuPqViZbF563vHqwRYsoIFfUs2
 NOtJRq2acrgWBMgdyZDxyxguZhSosgkyu6gsdyRwH51sYla4ReZLuZJMOpBW3dIRltpv
 TkjmesUtbNe6itguuUMX5hmdnl3GGROtX120xFgzYZmOvv37qqeBYp+ENwHTgg/TEkU4
 CWBgmywouNz3pVhPdoiiauWoyK6a4oVp0bqS+8cR0LHbujK5JDCIn6r7CpM7kAQ/hfMJ
 wWcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fcv3PcDyuwBVIaXE7Jzbkzsqtk1BsDedmSudaZn9+cI=;
 b=BX8uxJw2p0hAVJG30z0CSOelWsCVH4+Z4KnKcGOkckA//94oYAbMZ7iy2UVCQ00hFy
 ZEPwcrfK0SiaAaG+viJW+NLEUY3BfvMB031+0iZw8NdE+D2FnCsOG2MuUAjZdKK5nJro
 r4EXpDJgJDuGQiUbfqZYK+0Ka7ms8lbRPiYKY6V89CTktsSeAe07Jmo7HsETk1fVoW1W
 LFDnzeexKWxvSIOeDwedkv7brbPas084mcbtLcbEuxHtRYm44CK8HItSSgYxJvs+fqVv
 Kr5KxmYZXuyxu9scB3NFPGKVfCgUlj2zhu+WjAS/5ndFOurXMo50iyDeLB9PRWF1rcpn
 5Q6g==
X-Gm-Message-State: APjAAAWE2wSSdCHh7qxapl4usv882uXdV1o5SMZyBOi41APcEa0PornD
 SBH9biLeWbWnorB7bfmPo3vFECQxp4skLA==
X-Google-Smtp-Source: APXvYqxqBTn8NWySdAwTb80rjjA6uilTcgxi4zaPkjWcRmVtYa4rggiIG+8KoG90wTh1y5a2pjSOXw==
X-Received: by 2002:a2e:5301:: with SMTP id h1mr18457203ljb.196.1558043473518; 
 Thu, 16 May 2019 14:51:13 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t22sm1088145lje.58.2019.05.16.14.51.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 14:51:12 -0700 (PDT)
Date: Thu, 16 May 2019 14:50:30 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL] i.MX fixes for 5.1, round 3
Message-ID: <20190516215030.bzmsdcu5524lskki@localhost>
References: <20190422031900.GV19962@dragon>
 <AM0PR04MB64349811AD49484EE269E2AEEE300@AM0PR04MB6434.eurprd04.prod.outlook.com>
 <20190507083218.GB22736@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507083218.GB22736@dragon>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_145115_736233_B3E5542C 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 04:32:20PM +0800, Shawn Guo wrote:
> On Mon, May 06, 2019 at 07:10:22PM +0000, Leonard Crestez wrote:
> > On 4/22/19 6:19 AM, Shawn Guo wrote:
> > > The following changes since commit 7aedca875074b33795bc77066b325898b1eb8032:
> > > 
> > >    ARM: dts: imx6q-logicpd: Reduce inrush current on USBH1 (2019-04-11 13:45:03 +0800)
> > > 
> > > are available in the Git repository at:
> > > 
> > >    git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.1-3
> > > 
> > > for you to fetch changes up to c7861adbe37f576931650ad8ef805e0c47564b9a:
> > > 
> > >    ARM: dts: ls1021: Fix SGMII PCS link remaining down after PHY disconnect (2019-04-21 15:51:28 +0800)
> > 
> > I am confused by the path these fixes take to Linus.
> > 
> > The rgmii DT fixes from commit 0672d22a1924 ("ARM: dts: imx: Fix the 
> > AR803X phy-mode") are still not present in v5.1 and netboot fails on a 
> > large number of imx6 sabresd boards which have been stable for quite a 
> > while.
> > 
> > These should have been included from "round 2": 
> > https://www.spinics.net/lists/arm-kernel/msg723998.html
> 
> Unfortunately, we did have both round 2 and 3 miss 5.1 release.
> 
> @Olof, on April 28 you said you merged them.  What happened there?
> 
> I guess the only thing we can do is to merge them into v5.2-rc1 and get
> them back onto v5.1.x stable kernel then.  Most of the patches have
> Fixes tag and thus will be picked by Greg to v5.1.x.  But the one that
> Leonard is talking about doesn't have.  @Fabio, can you please help send
> it to Greg for v5.1.x inclusion?

Yeah, they should be picked up for stable. For the one not labeled with
a Fixes-tag, see Documentation/process/stable-kernel-rules.rst.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
