Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FE770BE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 23:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Zt5jhCcEYJqL7GHQvcRE/thJI4aHlA70tEsP+tar3k=; b=jOfON/OWl9tyx+
	+GQXyzx7bOWE+1drUS0x6Hy5h4dPM7s4rKvzw5EPsS/of6W8ROOOEVAhDSwIffMN7+xg3oUQcKdTk
	2TahN6N4HrjEiHXr47QmDqDUPmks5fyZ4LVsH+AxufT7q5JjBrYlVvMeEsTYKdGPGGAa4q04rZg0b
	4p3aVHflCkUGK3xyS6vPKjKgXRM5tZRdLzU+9miNZ7sdEgYXLPAE9UHRO2tomzzOXDY7PbSWdYCNJ
	glRXOFLLS+Tp26C84yf0YOjqlMs9UNQ2nb+b5Qx1MaF+yi2ECnkMAKJJ2Fcq71hbsGyh3XEHynrsb
	ZxllpQotwQg+Te7J11lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpg6s-0001lC-30; Mon, 22 Jul 2019 21:44:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpg6d-0001k3-Pk; Mon, 22 Jul 2019 21:44:29 +0000
Received: from 084035110054.static.ipv4.infopact.nl ([84.35.110.54]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hpg6V-0001tM-PU; Mon, 22 Jul 2019 23:44:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
Date: Mon, 22 Jul 2019 23:44:18 +0200
Message-ID: <19079299.fd1ZiCyHlL@phil>
In-Reply-To: <20190722213519.910D321900@mail.kernel.org>
References: <20190627222220.89175-1-nhuck@google.com>
 <20190722213519.910D321900@mail.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_144427_984035_8CCFCCCD 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: clang-built-linux@googlegroups.com, mturquette@baylibre.com,
 zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 Nathan Huckleberry <nhuck@google.com>, linux-rockchip@lists.infradead.org,
 andy.yan@rock-chips.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

Am Montag, 22. Juli 2019, 23:35:18 CEST schrieb Stephen Boyd:
> Quoting Nathan Huckleberry (2019-06-27 15:22:20)
> > Clang produces the following warning
> > 
> > drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> > 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> > PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
> > 
> > Looks like this variable was never used. Deleting it to remove the
> > warning.
> > 
> > Cc: clang-built-linux@googlegroups.com
> > Link: https://github.com/ClangBuiltLinux/linux/issues/524
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > ---
> >  drivers/clk/rockchip/clk-rv1108.c | 1 -
> >  1 file changed, 1 deletion(-)
> 
> Heiko, can you pick this up? Looks like v5.4 material.

yep ... I'm planning to do that :-)

Heiko


> > diff --git a/drivers/clk/rockchip/clk-rv1108.c b/drivers/clk/rockchip/clk-rv1108.c
> > index 96cc6af5632c..5947d3192866 100644
> > --- a/drivers/clk/rockchip/clk-rv1108.c
> > +++ b/drivers/clk/rockchip/clk-rv1108.c
> > @@ -122,7 +122,6 @@ PNAME(mux_usb480m_pre_p)    = { "usbphy", "xin24m" };
> >  PNAME(mux_hdmiphy_phy_p)       = { "hdmiphy", "xin24m" };
> >  PNAME(mux_dclk_hdmiphy_pre_p)  = { "dclk_hdmiphy_src_gpll", "dclk_hdmiphy_src_dpll" };
> >  PNAME(mux_pll_src_4plls_p)     = { "dpll", "gpll", "hdmiphy", "usb480m" };
> > -PNAME(mux_pll_src_3plls_p)     = { "apll", "gpll", "dpll" };
> >  PNAME(mux_pll_src_2plls_p)     = { "dpll", "gpll" };
> >  PNAME(mux_pll_src_apll_gpll_p) = { "apll", "gpll" };
> >  PNAME(mux_aclk_peri_src_p)     = { "aclk_peri_src_gpll", "aclk_peri_src_dpll" };





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
