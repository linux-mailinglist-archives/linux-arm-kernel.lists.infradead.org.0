Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB68DDF1D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 17:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCyK1thuPTGZ4SBewgbTpwo3d/48SXs6WTlWVXQZ5rk=; b=kYmDUvio6JlRaR
	1pV+UYnUbQlu9ylgf2OU+yksvLbkiFwYOvfxDuSBxeEcqsDMo2LJncmhtdzdTINObQIqjYKEQBPSL
	vx0DvSYqdOVa4ue1GsYD4TVeHm8Jqb/ol5eXBFwMo/TcaJO8oYttQsYKyRfPgxe3JFxv8hUXOgsPb
	w56l8hBu1DGpi1KlgzpuhAF7dBo5yB4ZTlSg0ISNUHTLWQdmwZKmWAZQESJf0dpXCtmq6b2Gw6wfv
	ysevZ1vpZjsMfImDZagOk5LWdBg+OwtlOvAGCwOKuL0vzGyAhG1RIaIg/XK1M5y6nAKXMLsqiKzyE
	46shaMgAGoH6nkstdVRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMD5M-00074D-Nr; Sun, 20 Oct 2019 15:25:36 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMD56-0006bV-92
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 15:25:22 +0000
Received: by mail-pg1-x541.google.com with SMTP id c8so1282034pgb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 08:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NBfjxYubJ59D/157QVxzzDd+Z5iARJKY6CyS8CKa+Lc=;
 b=XZPmteksE3hLU4oNvizyCCh69lNf1Ak9phmFzknbCrO9tGNAVcawtBHCIkBKIPn/8d
 kyV0gxlbA5NI84BffBrpg3TxeyzHwS7ybdU4XjdMOMoMaQvclj9uglkKSv6m4dwbzXo/
 yFnaS70ybYT+ZIrJNrU1KzZN7l0DL6ZGSHWST3Ht7ssFmtL7vnv5lxpdLLjXh90Pvksc
 +k7m/NhIu/ZNg6+oMS6OOUdz9lq1VqKYmZjWbZB0W2USSq6RS3Jbnx0XOky80fv27/CP
 ynHxwqKz5bmeNEKVMwQsuvhuhPvSaXyLsMk88EA5tIZkKGCtsb8GKYvF605ylUlnB+xE
 x+fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NBfjxYubJ59D/157QVxzzDd+Z5iARJKY6CyS8CKa+Lc=;
 b=qG90Bx6EY+hffsDBCSF2a1SOWxoPfw4EnLPuup1A9skBTh/q4AQTeJxwLJKgkhZkwY
 vZZ3+MYaAO3IeFbWSlqFkbt1xR6uvLQCt1W8PzrRu0X6mhUtX7bndluiPSHpcIeRoBfJ
 qP8z8PcMw0djhAEapjhiKZS1pY8aPsgxmwSkg0iXr3we/3msweQJigIpZ0zttxebrDbN
 WutSnIK6JrvGkVeWPLmRbMo1YV4G9I5jPb6+r3/ZSdxqJznMaxoIBTbFlbzFYH/ANucc
 CmcVTlOFTZJW9a+F05dIJr0LLgKq/+KVvOAS64Y3H/skzfq1MVRZgpZxQAWeBc/ItKNn
 4J3w==
X-Gm-Message-State: APjAAAVdYQdWHAsuTVXF8ZuZcVNxlYpZQ+yJzSE6yRepBSWfK7Uvvvw9
 CSS2s26yzXZiWwmpAsk/HXVu
X-Google-Smtp-Source: APXvYqzn2zHeoS9mfLh+SLsNoxqkvHMBkXDFSX9LUf7w66QcMRwgw+rIC91NXR0dc1Dclgf0dGrAgQ==
X-Received: by 2002:a63:6b06:: with SMTP id g6mr20793670pgc.104.1571585118966; 
 Sun, 20 Oct 2019 08:25:18 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:619e:9471:81c6:faf1:b3a2:6750])
 by smtp.gmail.com with ESMTPSA id i10sm11545767pgb.79.2019.10.20.08.25.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 20 Oct 2019 08:25:17 -0700 (PDT)
Date: Sun, 20 Oct 2019 20:55:10 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v5 2/8] clk: Warn if clk_init_data is not zero initialized
Message-ID: <20191020152510.GA12864@Mani-XPS-13-9360>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
 <20190916161447.32715-3-manivannan.sadhasivam@linaro.org>
 <20190917203854.8CF702054F@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917203854.8CF702054F@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_082520_363980_1C45EE23 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Stephen,

On Tue, Sep 17, 2019 at 01:38:53PM -0700, Stephen Boyd wrote:
> Quoting Manivannan Sadhasivam (2019-09-16 09:14:41)
> > The new implementation for determining parent map uses multiple ways
> > to pass parent info. The order in which it gets processed depends on
> > the first available member. Hence, it is necessary to zero init the
> > clk_init_data struct so that the expected member gets processed correctly.
> > So, add a warning if multiple clk_init_data members are available during
> > clk registration.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/clk/clk.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> > index c0990703ce54..7d6d6984c979 100644
> > --- a/drivers/clk/clk.c
> > +++ b/drivers/clk/clk.c
> > @@ -3497,6 +3497,14 @@ static int clk_core_populate_parent_map(struct clk_core *core)
> >         if (!num_parents)
> >                 return 0;
> >  
> > +       /*
> > +        * Check for non-zero initialized clk_init_data struct. This is
> > +        * required because, we only require one of the (parent_names/
> > +        * parent_data/parent_hws) to be set at a time. Otherwise, the
> > +        * current code would use first available member.
> > +        */
> > +       WARN_ON((parent_names && parent_data) || (parent_names && parent_hws));
> > +
> 
> This will warn for many drivers because they set clk_init_data on the
> stack and assign parent_names but let junk from the stack be assigned to
> parent_data.

Yes, I agree.

> The code uses parent_names first and then looks for
> parent_data or parent_hws because of this fact of life that we've never
> required clk_init_data to be initialized to all zero.
> 

Do you want me to just drop this patch or have any idea to make it better?

Thanks,
Mani

> >         /*
> >          * Avoid unnecessary string look-ups of clk_core's possible parents by
> >          * having a cache of names/clk_hw pointers to clk_core pointers.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
