Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6948913F4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 03:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdaESCgIegDMddv+fsFlW+4ybOLX2RTUp5+YTcFh1pM=; b=dwph4RZbLMjSy9
	ZC+JiOKwwd00uUiFOFoL5GQioi/1VFRFb1y22gvd5LYsD3+nY66VmpTGkAF31lAy7xLCJXQbMIwf9
	0PDLrt1MfBRpgENuaruR873ReYL0u9HNdYgke9ETw/eP64J/zTdgW8NjX8Ukgj9ch1uiw3lS8I4dR
	9iSzKDbhURgMFxqlLxLYcFvVZtv+lSdR076L+Z+YK4yfZ9vWlIGM2m4pCRQbqa3z9LSeHRQolx8Di
	+/IMzFLl+3bmd8ewtaifXaNmVAnTnMFqH/BVCnC7a95gMY41dIFnTtUUyNB7HmeIX2n+GUY2qNl8P
	VwL8L8xIptR8anud+UNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz9ob-0000Ib-1u; Sun, 18 Aug 2019 01:17:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz9o0-0000IF-8a
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 01:16:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B78062173B;
 Sun, 18 Aug 2019 01:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566090983;
 bh=4Z5FMvZ3Dd1AcSMTl6HMiSj36xZqZf8iR0d7FqyfLc0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=EC9HcxgbR/+ucY5Ge17R3C2/NR8Uoj65U9yAWfZbtHaxepIxGj46cwAcmjJsSq7yI
 DrbNq9JCAT03liX4cbdDPG9zmx6Lr6Tbu+/OalIF6GMYPb8kfbOAapwrdAnG9grE4P
 fQBGRfYKr7jkNEZjGmW4D7pI/A7lKkG3QBEjFSUY=
MIME-Version: 1.0
In-Reply-To: <20190817035845.GD14652@Mani-XPS-13-9360>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
 <20190705151440.20844-2-manivannan.sadhasivam@linaro.org>
 <20190808050128.E3DA52186A@mail.kernel.org>
 <20190817033422.GB14652@Mani-XPS-13-9360>
 <20190817034612.6DA7E21721@mail.kernel.org>
 <20190817035845.GD14652@Mani-XPS-13-9360>
Subject: Re: [PATCH 1/5] dt-bindings: clock: Add Bitmain BM1880 SoC clock
 controller binding
From: Stephen Boyd <sboyd@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
User-Agent: alot/0.8.1
Date: Sat, 17 Aug 2019 18:16:22 -0700
Message-Id: <20190818011623.B78062173B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_181624_328332_54EE38CC 
X-CRM114-Status: GOOD (  11.31  )
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

Quoting Manivannan Sadhasivam (2019-08-16 20:58:45)
> On Fri, Aug 16, 2019 at 08:46:11PM -0700, Stephen Boyd wrote:
> > Quoting Manivannan Sadhasivam (2019-08-16 20:34:22)
> > > On Wed, Aug 07, 2019 at 10:01:28PM -0700, Stephen Boyd wrote:
> > > > Quoting Manivannan Sadhasivam (2019-07-05 08:14:36)
> > > > > +It is expected that it is defined using standard clock bindings as "osc".
> > > > > +
> > > > > +Example: 
> > > > > +
> > > > > +        clk: clock-controller@800 {
> > > > > +                compatible = "bitmain,bm1880-clk";
> > > > > +                reg = <0xe8 0x0c>,<0x800 0xb0>;
> > > > 
> > > > It looks weird still. What hardware module is this actually part of?
> > > > Some larger power manager block?
> > > > 
> > > 
> > > These are all part of the sysctrl block (clock + pinctrl + reset) and the
> > > register domains got split between system and pll.
> > > 
> > 
> > And that can't be one node that probes the clk, pinctrl, and reset
> > drivers from C code?
> 
> It is not a MFD for sure. It's just grouping of the register domains together.
> 

Are there datasheets? I'm not saying it's an "MFD", just saying that
it's one hardware IP block delivered by the SoC integrator. It's
already odd that there are two register properties.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
