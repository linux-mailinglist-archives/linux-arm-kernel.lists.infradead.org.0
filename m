Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB6A3293A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 09:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJ992v6ncdQVBMOSoeo2j7FpHWc9FLKGUcpZlawAwDc=; b=fnNT2kxV7I3i3k
	vhgZhazb7w4/84y0LxTyYy8ntHwO3p9BnUD0HRA+0E5MgrXXn7Fk52Csdk4ahqJGKHYO+3T7pQGkE
	PdWXL9/50hhcuLwWAUcAZOzm+GP77mSvAzLrG6bM9gOwPqWO+iD84TglH8+tzCpToq0lOeNuN1IZG
	QKldmbWvFmgf0GGNHsBw3DjFG6Zw6/4IHH9mXzpIR/GS9fSLZSQoSniXjJRypMvLVYxx3M5G2mGOX
	qKD8V8HnXaIsLVnsAMi3TitC3XaZ6nEDRvZYt4NBftYWDM6uUF4bsBSmgtWPt0tBH0ALYxSPNvI43
	w/RFn3TbHw6g9Ea4lT/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhGz-0006xi-3q; Mon, 03 Jun 2019 07:20:49 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhGs-0006xM-Nb
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 07:20:44 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cf4ca480000>; Mon, 03 Jun 2019 00:20:40 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 03 Jun 2019 00:20:41 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 03 Jun 2019 00:20:41 -0700
Received: from tbergstrom-lnx.Nvidia.com (10.124.1.5) by HQMAIL108.nvidia.com
 (172.18.146.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 3 Jun 2019 07:20:40 +0000
Received: by tbergstrom-lnx.Nvidia.com (Postfix, from userid 1000)
 id 6EC0840FC6; Mon,  3 Jun 2019 10:20:38 +0300 (EEST)
Date: Mon, 3 Jun 2019 10:20:38 +0300
From: Peter De Schrijver <pdeschrijver@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 2/2] soc/tegra: pmc: Avoid crash for non-wake IRQs
Message-ID: <20190603072038.GB29894@pdeschrijver-desktop.Nvidia.com>
References: <20190529102654.14665-1-thierry.reding@gmail.com>
 <20190529102654.14665-2-thierry.reding@gmail.com>
 <27ffbfe6-1c88-63a1-aee1-7fe6ce252e54@nvidia.com>
 <20190531102858.GA21355@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531102858.GA21355@ulmo>
X-NVConfidentiality: public
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL108.nvidia.com (172.18.146.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559546440; bh=sIpzwEPaUIrtt8uotF4sQsXYS/qLmh8439n7BlRbcEU=;
 h=X-PGP-Universal:Date:From:To:CC:Subject:Message-ID:References:
 MIME-Version:Content-Type:Content-Disposition:In-Reply-To:
 X-NVConfidentiality:User-Agent:X-Originating-IP:X-ClientProxiedBy;
 b=o9/yoKCyUguYwntL/2Pt8BRjIY2CqPTUsnDMrLr/mPB/elEbiogXIrWMc3w9f2QmU
 6ojFgO8eNxNJXyxzx0Q1XIrApRqPBcLhluoMwqa/lJAsnANFiK0481/lOYFLjd8GE7
 j0TOevo4swx2aT2NmmKp73x67g/R+imkVrDRSjMcAE/Wds0UuA2qBMPl+icAjUMC9E
 M6r6I1Y5dzm2Af+f/vou0QRSxGZXUAtlbjpM9AqAUuoISQtOeDCfig3Ve0ZTz52otT
 AJGwdTH59llElTHWlgdwjxQMPCQFL8T7BrzVP13sfzllSttkUzXfr8ts0InU51g+P1
 3FR54c1C7JoBQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_002042_781831_65DEC5F0 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Bitan Biswas <bbiswas@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 12:28:58PM +0200, Thierry Reding wrote:
> On Fri, May 31, 2019 at 10:32:40AM +0100, Jon Hunter wrote:
> > 
> > 
> > On 29/05/2019 11:26, Thierry Reding wrote:
> > > From: Thierry Reding <treding@nvidia.com>
> > > 
> > > For interrupts that are not wakeup sources but that may end up getting
> > > mapped through the PMC as interrupt parent (this can happen for GPIOs),
> > > return early in order to avoid a subsequent crash from an out-of-bounds
> > > access to the register region.
> > 
> > Maybe worth clarifying here what you mean by 'not wakeup sources'
> > because the Tegra GPIO driver does have a set_wake() API to enable
> > wakeup at the LIC IIRC. So maybe GPIOs that are not wakeup sources for
> > what level of suspend?
> 
> Wakeup sources in the context of PMC is always LP0 wakeup sources. At
> that point I don't think LIC is enabled anymore. So LIC is to wake up
> from LP1 (and perhaps LP2), while PMC wakeup sources need to be
> configured in order to wake up from LP0.
> 
> Adding Peter to confirm, I think he's more familiar with the power
> states on earlier chips than I am.

Yes. LIC is in a domain which is off during SC7 so it can't trigger a
wakeup.

Peter.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
