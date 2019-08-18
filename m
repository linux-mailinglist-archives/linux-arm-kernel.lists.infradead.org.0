Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D9C913F9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 03:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYK32Y8TV+/n8xklLIurI3x8SNSC9unDj6HObufqEiw=; b=f7U6lqVOBP3/uu
	9HbIzLbxh3sBSR3gaXPGnCbtXyupGpsxyzwBl4dVCkA+gV5bI82krUFiSwbrN8pYSpg6c2mmh3fet
	Q8K7VOjd2P2wQYrHlOm/CghVj/eLxVnYzauizx31V2xe631kMYwtlG7un9TB0nz/MwnTJOWc6cU0Y
	FQFjqpoBacx6e2u4ljcEHSDDzSj0+7AY0JYEVkfmtURS40rqgcEYicCIHLzYn10cV3s9Dg4zNRJay
	eA34r5H9hLex7jeFyEoHl4G5rlcKp3rKPaLISkAkhRKpT6Zp7zKke4lx6tiafz1evF5M7tzV3WpsQ
	bSYbA4gfCSM+Lu7846Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz9tk-0001tE-Je; Sun, 18 Aug 2019 01:22:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz9tP-0001sr-LF
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 01:22:01 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EF652077C;
 Sun, 18 Aug 2019 01:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566091319;
 bh=xejrLwa66URdSbHgEWH+VYlZlmVMdEM+Iat9Fp4d62g=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=YNtSfO44v0PazpS7CkN2kGoRs8D5ceC8i+mcj5BdB3R9iAUCdx1C9j7NQGD0NIrKc
 B2hn3vF6u13fvWoHxlo3os7i3BfLCMDm+O3UVl8hW2wUYjnNnlNmaobgWSV3eqPNy8
 P7TroKe4pKbyHpRLa7/hULRqGBAPgP4Uutwh39lU=
MIME-Version: 1.0
In-Reply-To: <20190817035557.GC14652@Mani-XPS-13-9360>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
 <20190705151440.20844-5-manivannan.sadhasivam@linaro.org>
 <20190808051600.4EF7D2186A@mail.kernel.org>
 <20190817035557.GC14652@Mani-XPS-13-9360>
Subject: Re: [PATCH 4/5] clk: Add driver for Bitmain BM1880 SoC clock
 controller
From: Stephen Boyd <sboyd@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
User-Agent: alot/0.8.1
Date: Sat, 17 Aug 2019 18:21:58 -0700
Message-Id: <20190818012159.1EF652077C@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_182159_738132_480E92BA 
X-CRM114-Status: GOOD (  26.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, darren.tsao@bitmain.com, robh+dt@kernel.org,
 haitao.suo@bitmain.com, fisher.cheng@bitmain.com, alec.lin@bitmain.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Manivannan Sadhasivam (2019-08-16 20:55:57)
> Hi Stephen,
> 
> On Wed, Aug 07, 2019 at 10:15:59PM -0700, Stephen Boyd wrote:
> > Quoting Manivannan Sadhasivam (2019-07-05 08:14:39)
> > > diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> > > index fc1e0cf44995..ffc61ed85ade 100644
> > > --- a/drivers/clk/Kconfig
> > > +++ b/drivers/clk/Kconfig
> > > @@ -304,6 +304,12 @@ config COMMON_CLK_FIXED_MMIO
> > >         help
> > >           Support for Memory Mapped IO Fixed clocks
> > >  
> > > +config COMMON_CLK_BM1880
> > > +       bool "Clock driver for Bitmain BM1880 SoC"
> > > +       depends on ARCH_BITMAIN || COMPILE_TEST
> > > +       help
> > > +         This driver supports the clocks on Bitmain BM1880 SoC.
> > 
> > Can you add this config somewhere else besides the end? Preferably
> > close to alphabetically in this file.
> > 
> 
> Okay. I got confused by the fact that Makefile is sorted but not the
> Kconfig.

Ok. I'll make a reminder to sort the Kconfig after -rc1 next time.

> 
> > > +
> > >  source "drivers/clk/actions/Kconfig"
> > >  source "drivers/clk/analogbits/Kconfig"
> > >  source "drivers/clk/bcm/Kconfig"
> > > diff --git a/drivers/clk/clk-bm1880.c b/drivers/clk/clk-bm1880.c
> > > new file mode 100644
> > > index 000000000000..26cdb75bb936
> > > --- /dev/null
> > > +++ b/drivers/clk/clk-bm1880.c
[....]
> > > +
> > > +struct clk *bm1880_clk_register_pll(const struct bm1880_pll_clock *pll_clk,
> > > +                                   void __iomem *sys_base)
> > > +{
> > > +       struct bm1880_pll_hw_clock *pll_hw;
> > > +       struct clk_init_data init;
> > > +       struct clk_hw *hw;
> > > +       int err;
> > > +
> > > +       pll_hw = kzalloc(sizeof(*pll_hw), GFP_KERNEL);
> > > +       if (!pll_hw)
> > > +               return ERR_PTR(-ENOMEM);
> > > +
> > > +       init.name = pll_clk->name;
> > > +       init.ops = &bm1880_pll_ops;
> > > +       init.flags = pll_clk->flags;
> > > +       init.parent_names = &pll_clk->parent;
> > 
> > Can you use the new way of specifying parents instead of using strings
> > for everything?
> > 
> 
> Sure, will do it for clocks which doesn't use helper APIs.
> 
> > > +       init.num_parents = 1;
> > > +
> > > +       pll_hw->hw.init = &init;
> > > +       pll_hw->pll.reg = pll_clk->reg;
> > > +       pll_hw->base = sys_base;
> > > +
> > > +       hw = &pll_hw->hw;
> > > +       err = clk_hw_register(NULL, hw);
> > > +
> > > +       if (err) {
> > > +               kfree(pll_hw);
> > > +               return ERR_PTR(err);
> > > +       }
> > > +
> > > +       return hw->clk;
> > 
> > Can this return the clk_hw pointer instead?
> > 
> 
> What is the benefit? I see that only hw:init is going to be NULL in future.

Eventually we will remove ->clk from struct clk_hw and then this will
break. It also clearly makes this driver a clk provider driver and not a
clk consumer.

> So, I'll keep it as it is.

Please no!

> > > +               bm1880_clk_unregister_pll(data->clk_data.clks[clks[i].id]);
> > > +
> > > +       return PTR_ERR(clk);
> > > +}
> > > +
> > > +int bm1880_clk_register_mux(const struct bm1880_mux_clock *clks,
> > > +                           int num_clks, struct bm1880_clock_data *data)
> > > +{
> > > +       struct clk *clk;
> > > +       void __iomem *sys_base = data->sys_base;
> > > +       int i;
> > > +
> > > +       for (i = 0; i < num_clks; i++) {
> > > +               clk = clk_register_mux(NULL, clks[i].name,
> > 
> > Can you use the clk_hw based APIs for generic type clks?
> > 
> 
> IMO using helper APIs greatly reduce code size and makes the driver
> look more clean. So I prefer to use the helpers wherever applicable.
> When you plan to deprecate those, I'll switch over to plain clk_hw APIs.

We have clk_hw_register_mux(). Please use it. The clk based registration
APIs are deprecated.

> > > +       kfree(clk_data);
> > > +}
> > > +
> > > +CLK_OF_DECLARE_DRIVER(bm1880_clk, "bitmain,bm1880-clk", bm1880_clk_init);
> > 
> > Is there a reason why it can't be a platform driver?
> > 
> 
> Hmm, I looked into the majority of drivers which live under `driver/clk/`.
> Most of them are using CLK_OF_DECLARE_DRIVER, so I thought that only drivers
> which have a separate directory are preferred by the maintainers to use
> platform driver way.
> 
> Anyway, I can switch over to platform driver and that's what I prefer.
> 

Yes please use a platform driver unless it doesn't work for some reason.
Even then, use a platform driver and CLK_OF_DECLARE_DRIVER() in
conjunction to register the early clks from the OF_DECLARED section and
then adopt the rest to the proper device driver later on. This way we
gain the benefits of driver core.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
