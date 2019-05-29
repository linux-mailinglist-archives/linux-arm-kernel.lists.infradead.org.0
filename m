Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C47C2E97A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 01:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37VR6tur4h5YVjmAlBysgo5kcqDA5HpIcq8/8yxkj2E=; b=GlBrxGlohhPP6G
	ycmedFiZ3X6fK74K2obeTYnakNuMTwQUIkGkjiaH0f9ExVoq5CMMxR1o91x7YCiKXO0Scvs7tGFF0
	TTJBg3B5s5NKAYkOVGw0tB4P55J/fktHP2egqrQa6w82krWc6/aJBtZFp1yJ/Vecd73CRISkDFyoi
	85J9Bz1rX4yjpEmpQM+3/PGu/nq/NOI7yWN75l1PZ3aIBodCvLgsYY4FvDDw0pK/lDHTFl/WG5EvI
	cv6uk+rU44NyFzpEyou8ew1ulJKBzVzl8WNJvnuuUn7JAJG14WTmoHwvW2qxpmzM0KJRu7urnE8DC
	f7HO9px9ZwQRamp9q/bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW86w-0002Vf-H2; Wed, 29 May 2019 23:35:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW86p-0002V6-HY
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 23:35:52 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7F6F2435D;
 Wed, 29 May 2019 23:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559172947;
 bh=aHRGWmrf5rXnGBiMo5ak6Pc0Hv90kyBqNX7HV998xic=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=jaP6SePRwzRnxN+ij5bLWVtNYpu/iF9tyV5WGHmrc8Q5SzcUP2k2bI/+uvhOKqeaT
 hJUM0s/lPFbJHfEiJ7AhNx7ktcnq+WFF8qVegWcHmNX9L3ZpK49i93+RAHpYAXwoLo
 ivyZqOm4nh2trqHx4QCtEtnTzdy3P1IDNhF3B9+M=
MIME-Version: 1.0
In-Reply-To: <20190523132235.GZ9261@dragon>
References: <20190522014832.29485-1-peng.fan@nxp.com>
 <20190523132235.GZ9261@dragon>
To: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx: imx8mm: correct audio_pll2_clk to audio_pll2_out
User-Agent: alot/0.8.1
Date: Wed, 29 May 2019 16:35:46 -0700
Message-Id: <20190529233547.B7F6F2435D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_163551_600701_1B80504F 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Shawn Guo (2019-05-23 06:22:36)
> On Wed, May 22, 2019 at 01:34:46AM +0000, Peng Fan wrote:
> > There is no audio_pll2_clk registered, it should be audio_pll2_out.
> > 
> > Cc: <stable@vger.kernel.org>
> > Fixes: ba5625c3e27 ("clk: imx: Add clock driver support for imx8mm")
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> 
> Stephen,
> 
> I leave this to you, since it's a fix.
> 

Is it a critical fix? Or is it an annoyance that can wait in -next until
the next merge window?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
