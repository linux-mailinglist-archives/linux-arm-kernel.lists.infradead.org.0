Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260BA90C86
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 05:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qrdzqtCIo4I/9DVOoYDvCepEwfluAio8NMxnzrYjtEE=; b=sYeU/wOzCG1hPt
	/2GDq19rzw+JRm+s/PchmRVKDzOUtxesivowTAH3MFOiT2nFnpnothxcFm45e7V92Eak9RFuqMj0A
	4atxVlfpEN73PnK/W6TozV5Z+dk2jpgPhwY18NCVavEMGtBhiZc58tttuMecdrnevdoPvu9U/CD8q
	zEnNLcrNCoJAaXbcFgNd5UL1ygpHOlClkhnuizuaDoy4kfV5uQCLdo9RyxdakEHheMKTvRGD97hYv
	05abm8yaaVSR0Fp9tDsvUE8EGIsTEmArfbI8FObB3ZRNeg13UTVXjaLp45JrSp/5TtQHesIeay8Lj
	8y8GxXdI7/4lYsDHjUzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hypfe-0007Pp-Lj; Sat, 17 Aug 2019 03:46:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hypfQ-0007PW-Qp
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 03:46:13 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DA7E21721;
 Sat, 17 Aug 2019 03:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566013572;
 bh=Ceb8jDe4ZN3E1BKGFRkTVG7X9cSBE7uIXb55UYz9P6A=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Tqozy/nZkkQ+GMDOJjYHBa/24QsMLHgpIYmpe3LiCwmEXw1zqncAgO+gPp0+TLwzv
 ehFP029agWLq9gcTwZmZ4bn3KhL6A7503G/GvgyuorMvJQexTtdCZw6PznaMPqREI2
 FumXZbiqz7ovopHiMVC6X9GOAOul+sF00e4UZUtw=
MIME-Version: 1.0
In-Reply-To: <20190817033422.GB14652@Mani-XPS-13-9360>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
 <20190705151440.20844-2-manivannan.sadhasivam@linaro.org>
 <20190808050128.E3DA52186A@mail.kernel.org>
 <20190817033422.GB14652@Mani-XPS-13-9360>
Subject: Re: [PATCH 1/5] dt-bindings: clock: Add Bitmain BM1880 SoC clock
 controller binding
From: Stephen Boyd <sboyd@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
User-Agent: alot/0.8.1
Date: Fri, 16 Aug 2019 20:46:11 -0700
Message-Id: <20190817034612.6DA7E21721@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_204612_891833_D13583E2 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
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

Quoting Manivannan Sadhasivam (2019-08-16 20:34:22)
> On Wed, Aug 07, 2019 at 10:01:28PM -0700, Stephen Boyd wrote:
> > Quoting Manivannan Sadhasivam (2019-07-05 08:14:36)
> > > +It is expected that it is defined using standard clock bindings as "osc".
> > > +
> > > +Example: 
> > > +
> > > +        clk: clock-controller@800 {
> > > +                compatible = "bitmain,bm1880-clk";
> > > +                reg = <0xe8 0x0c>,<0x800 0xb0>;
> > 
> > It looks weird still. What hardware module is this actually part of?
> > Some larger power manager block?
> > 
> 
> These are all part of the sysctrl block (clock + pinctrl + reset) and the
> register domains got split between system and pll.
> 

And that can't be one node that probes the clk, pinctrl, and reset
drivers from C code?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
