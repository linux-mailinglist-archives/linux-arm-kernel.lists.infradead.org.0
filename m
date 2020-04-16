Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1D41AB522
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 02:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcLtnoJMfu/en6bYQ9rA8kWfyjA5P7up2vEgKDgVL68=; b=svgaFkhV4vQMZO
	+DeQU3w8qfe2L3h/uEEWdm/h6WibTHxTT09c4DWJ8zku8X5K3wBTBYngDgG9ZKNaKaZoc67R+fJsg
	ocv57KbYsZpakSnqVvLOFlMfmuzm8nNaPj4xzJzJzK1cTDmNgKnMDs+Mi9GNs641ZNSmpbSiTNr2G
	vye4Q5W6DoLmXNf8A9ZcW518Vv0+QhcQdhXyezLiZph7imJM2P4wwNAAObsYkuxmmJ0XWiZtvRLmA
	283zc0WNSQAW98oE9rwfVNbz05LKAaxtXwY8R46RZh2tzcs8pBAD55cBUWcn4uhwQyosSSObwcTv6
	bwNvRFdNDFmgOZitnNSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOsro-0001lX-Sf; Thu, 16 Apr 2020 00:58:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOsrf-0001l1-Oh
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 00:58:49 +0000
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C795120936
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 00:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586998726;
 bh=NjTvNrxjlHFScy4ebnKzSnM4jSIs1SlF2paT+ZaYBeI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tdrhhcUfkIKCM0s18mbeSn5SP9h0vWFC+0x6fkNf029GOJlZMaz2gbXoDORxN6UGT
 Xk64ZR1+eHjz/HTPl+uZpf4Fq6rSk56xrWIJTvM4SVpKHaWp4yR/YfgpHAKb1prJeW
 RTN8+ZqrEHL1ytzFowd4LpDpB9ps6wXa3Y8MCfHE=
Received: by mail-qt1-f172.google.com with SMTP id x2so15173639qtr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 17:58:46 -0700 (PDT)
X-Gm-Message-State: AGi0PuaxsYziunRCd53/xqpN65xpX1VbUPBbODFfp6uPRIYapRWSiASC
 3UqAWfj5fTm/p2c7OKCARj5qx0fWga6xZoIF8w==
X-Google-Smtp-Source: APiQypIb8Qh+U7+DzcXL5pISte9uAUnyZWYerl12Hfw9dl6hFAs7Ug63drp+s8XNKQa3pH3auFFQ0DRFz+hVTsEascg=
X-Received: by 2002:ac8:39e5:: with SMTP id v92mr24067936qte.224.1586998725925; 
 Wed, 15 Apr 2020 17:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-3-thierry.reding@gmail.com>
 <20200415162449.GA1842@bogus> <20200415233532.GA211822@ulmo>
In-Reply-To: <20200415233532.GA211822@ulmo>
From: Rob Herring <robh@kernel.org>
Date: Wed, 15 Apr 2020 19:58:33 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK6Ku3woyc+9kxzjN_fih_ygWWnt3EFdVRi6UBd7=2iFw@mail.gmail.com>
Message-ID: <CAL_JsqK6Ku3woyc+9kxzjN_fih_ygWWnt3EFdVRi6UBd7=2iFw@mail.gmail.com>
Subject: Re: [PATCH v6 02/14] of: reserved-memory: Support lookup of regions
 by name
To: Thierry Reding <thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_175847_830589_557A27EF 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra <linux-tegra@vger.kernel.org>,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 6:35 PM Thierry Reding <thierry.reding@gmail.com> wrote:
>
> On Wed, Apr 15, 2020 at 11:24:49AM -0500, Rob Herring wrote:
> > On Thu,  9 Apr 2020 19:52:26 +0200, Thierry Reding wrote:
> > > From: Thierry Reding <treding@nvidia.com>
> > >
> > > Add support for looking up memory regions by name. This looks up the
> > > given name in the newly introduced memory-region-names property and
> > > returns the memory region at the corresponding index in the memory-
> > > region(s) property.
> > >
> > > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > > ---
> > >  drivers/of/of_reserved_mem.c    | 19 +++++++++++++++++++
> > >  include/linux/of_reserved_mem.h | 11 +++++++++++
> > >  2 files changed, 30 insertions(+)
> > >
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
>
> Hi Rob,
>
> thanks for the review. Do you want me to apply this and patch 3/14 to a
> stable branch and send to you as a pull request? That way I could use
> that same branch to resolve the dependency in the Tegra tree for the
> memory controller driver patches.

I think it is fine for you to just take the patches.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
